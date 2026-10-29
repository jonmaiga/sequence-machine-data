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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A188400: Number of (6*n) X 6 binary arrays with rows in nonincreasing order, n ones in every column and no more than 2 ones in any row.

The programs for A188400, there is no canonical definition to state claims against.
-/

/-! ## A188400.P14349911345196826171

`A188403(eq[4, A025581(n)])`
-/

namespace A188400.P14349911345196826171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188400.P14349911345196826171

/-! ## A188400.P10087865485750848299

`A188403(eq[16, A130321(n)])`
-/

namespace A188400.P10087865485750848299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188400.P10087865485750848299

/-! ## A188400.P2149072853172732946

`A188403(A167614(n+4)-8)`
-/

namespace A188400.P2149072853172732946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A167614 (n + 4) - 8).toNat

end

end A188400.P2149072853172732946

/-! ## A188400.P5779379988900743671

`A188403(eq[5, A004736(n+1)])`
-/

namespace A188400.P5779379988900743671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188400.P5779379988900743671

/-! ## A188400.P17373354861617498392

`A188403(Δ[Δ[A022815(n+1)]])`
-/

namespace A188400.P17373354861617498392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (f1 (n + 1) - f1 n).toNat

end

end A188400.P17373354861617498392

/-!
# A188401: Number of (7*n) X 7 binary arrays with rows in nonincreasing order, n ones in every column and no more than 2 ones in any row.

The programs for A188401, there is no canonical definition to state claims against.
-/

/-! ## A188401.P7527122605514402921

`A188403(eq[5, A025581(n)])`
-/

namespace A188401.P7527122605514402921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188401.P7527122605514402921

/-! ## A188401.P2948752630123742613

`A188403(eq[6, A195663(n)])`
-/

namespace A188401.P2948752630123742613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188401.P2948752630123742613

/-! ## A188401.P3586137712949516323

`A188403(eq[32, A130321(n)])`
-/

namespace A188401.P3586137712949516323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188401.P3586137712949516323

/-! ## A188401.P5870912672271777767

`A188403(Δ[A023551(n+1)])`
-/

namespace A188401.P5870912672271777767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (f1 (n + 1) - f1 n).toNat

end

end A188401.P5870912672271777767

/-! ## A188401.P1826515673023817329

`A188403(eq[6, A004736(n+1)])`
-/

namespace A188401.P1826515673023817329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188401.P1826515673023817329

/-!
# A188402: Number of (8*n) X 8 binary arrays with rows in nonincreasing order, n ones in every column and no more than 2 ones in any row.

The programs for A188402, there is no canonical definition to state claims against.
-/

/-! ## A188402.P6147179864263827573

`A188403(eq[6, A025581(n)])`
-/

namespace A188402.P6147179864263827573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188402.P6147179864263827573

/-! ## A188402.P8417469335066018050

`A188403(eq[7, A193739(n)])`
-/

namespace A188402.P8417469335066018050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188402.P8417469335066018050

/-! ## A188402.P17307299540956757302

`A188403(eq[13, A099375(n)])`
-/

namespace A188402.P17307299540956757302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188402.P17307299540956757302

/-! ## A188402.P11945170892008895487

`A188403(eq[8, sqrt(A130321(n))])`
-/

namespace A188402.P11945170892008895487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130321 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A188402.P11945170892008895487

/-! ## A188402.P5033849726016461456

`A188403(eq[6, A144257(n+1)])`
-/

namespace A188402.P5033849726016461456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188402.P5033849726016461456

/-!
# A188404: Number of (3*n) X n binary arrays with rows in nonincreasing order, 3 ones in every column and no more than 3 ones in any row.

The programs for A188404, there is no canonical definition to state claims against.
-/

/-! ## A188404.P8656402810816213597

`A188403(∑[n+2]+4)`
-/

namespace A188404.P8656402810816213597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188404.P8656402810816213597

/-! ## A188404.P9567891824162491760

`A188403(A167614(n+1))+A011738(n)`
-/

namespace A188404.P9567891824162491760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A167614 (n + 1)).toNat + A011738 n

end

end A188404.P9567891824162491760

/-! ## A188404.P9444458982950058406

`A188403(A167614(n+1))+A185037(n)`
-/

namespace A188404.P9444458982950058406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A167614 (n + 1)).toNat + A185037 n

end

end A188404.P9444458982950058406

/-! ## A188404.P16788323561455958069

`gcd(A000038(n), A188403(A167614(n+1)))`
-/

namespace A188404.P16788323561455958069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A188403 (A167614 (n + 1)).toNat)

end

end A188404.P16788323561455958069

/-! ## A188404.P12254609514445733991

`lcm(A033999(n), A188403(A167614(n+1)))`
-/

namespace A188404.P12254609514445733991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A188403 (A167614 (n + 1)).toNat)

end

end A188404.P12254609514445733991

/-!
# A188405: Number of (4*n) X n binary arrays with rows in nonincreasing order, 4 ones in every column and no more than 2 ones in any row.

The programs for A188405, there is no canonical definition to state claims against.
-/

/-! ## A188405.P9635495813509200869

`A188403(A340266(n+1)+2)`
-/

namespace A188405.P9635495813509200869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A340266 (n + 1) + 2).toNat

end

end A188405.P9635495813509200869

/-! ## A188405.P12033553554056301759

`A188403(A167614(n+1)+floor(atan(n+1)))`
-/

namespace A188405.P12033553554056301759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A167614 (n + 1) + ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

end

end A188405.P12033553554056301759

/-! ## A188405.P15275348282341160215

`A188403(A167614(n+1)+A057427(n))`
-/

namespace A188405.P15275348282341160215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A167614 (n + 1) + A057427 n).toNat

end

end A188405.P15275348282341160215

/-! ## A188405.P5865925861055834648

`A188403(A167614(n+1)-A057428(n))`
-/

namespace A188405.P5865925861055834648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A167614 (n + 1) - A057428 n).toNat

end

end A188405.P5865925861055834648

/-! ## A188405.P16584425813019836914

`A188403(A167614(n+1)+A057428(n)²)`
-/

namespace A188405.P16584425813019836914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188403 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A188405.P16584425813019836914

/-!
# A188406: Number of (5*n) X n binary arrays with rows in nonincreasing order, 5 ones in every column and no more than 2 ones in any row.

The programs for A188406, there is no canonical definition to state claims against.
-/

/-! ## A188406.P10011101499040767583

`A362284(a(n-1)+5)` with `a(0)=1, a(1)=1`
-/

namespace A188406.P10011101499040767583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A362284 (a (n - 1) + 5).toNat

end

end A188406.P10011101499040767583

/-!
# A188407: Number of (6*n) X n binary arrays with rows in nonincreasing order, 6 ones in every column and no more than 2 ones in any row.

The programs for A188407, there is no canonical definition to state claims against.
-/

/-! ## A188407.P283276704014789973

`A355086(n)+A214656(A355086(n))`
-/

namespace A188407.P283276704014789973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355086 n + A214656 (A355086 n).toNat

end

end A188407.P283276704014789973

/-!
# A188408: Number of (7*n) X n binary arrays with rows in nonincreasing order, 7 ones in every column and no more than 2 ones in any row.

The programs for A188408, there is no canonical definition to state claims against.
-/

/-! ## A188408.P12777960053056005113

`A286420(A181444(n)-A286399(n))`
-/

namespace A188408.P12777960053056005113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286420 (A181444 n - A286399 n).toNat

end

end A188408.P12777960053056005113

/-!
# A188410: Number of (n^2)Xn binary arrays with rows in nonincreasing order, n ones in every column and no more than 3 ones in any row.

The programs for A188410, there is no canonical definition to state claims against.
-/

/-! ## A188410.P4254505264039447857

`A188416(∑[4*n]+1)`
-/

namespace A188410.P4254505264039447857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A188410.P4254505264039447857

/-! ## A188410.P6339086522617570219

`record[A188416(∑[A266981(n)])]`
-/

namespace A188410.P6339086522617570219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188410.P6339086522617570219

/-!
# A188411: Number of (4*n)X4 binary arrays with rows in nonincreasing order, n ones in every column and no more than 3 ones in any row.

The programs for A188411, the canonical program `A188411.P17226948916941820622` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188411 has offset 1).

The definition of A188411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188411.P17226948916941820622

`Δ[A175707(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188411

/-- `Δ[A175707(n)]` -/
def P17226948916941820622.Spec : Prop :=
  ∀ n, P17226948916941820622.a n = A188411 (n + 1)

theorem P17226948916941820622.correct : P17226948916941820622.Spec := by
  intro n
  simp only [A188411, Nat.add_sub_cancel]

end A188411

/-! ## A188411.P13381104338332506972

`A175707(n+1)-A175707(n)`
-/

namespace A188411.P13381104338332506972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175707 (n + 1) - A175707 n

end

end A188411.P13381104338332506972

namespace A188411

/-- `A175707(n+1)-A175707(n)` -/
def P13381104338332506972.Spec : Prop :=
  ∀ n, P13381104338332506972.a n = A188411 (n + 1)

theorem P13381104338332506972.correct : P13381104338332506972.Spec := by
  intro n
  simp only [A188411, Nat.add_sub_cancel, A188411.P13381104338332506972.a, A188411.P17226948916941820622.f1, A188411.P17226948916941820622.a, SequenceMachineLib.memo_apply]

end A188411

/-! ## A188411.P1196370358773718940

`Δ[A188392(∑[n+3])]`
-/

namespace A188411.P1196370358773718940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188411.P1196370358773718940

namespace A188411

/-- `Δ[A188392(∑[n+3])]` -/
def P1196370358773718940.Spec : Prop :=
  ∀ n, P1196370358773718940.a n = A188411 (n + 1)

end A188411

/-! ## A188411.P591561175073249943

`abs(Δ[A188392(A141214(n))])`
-/

namespace A188411.P591561175073249943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188392 (A141214 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A188411.P591561175073249943

namespace A188411

/-- `abs(Δ[A188392(A141214(n))])` -/
def P591561175073249943.Spec : Prop :=
  ∀ n, P591561175073249943.a n = A188411 (n + 1)

end A188411

/-! ## A188411.P18415908642153005107

`A188416(∑[n+4]+3)`
-/

namespace A188411.P18415908642153005107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A188411.P18415908642153005107

namespace A188411

/-- `A188416(∑[n+4]+3)` -/
def P18415908642153005107.Spec : Prop :=
  ∀ n, P18415908642153005107.a n = A188411 (n + 1)

end A188411

/-!
# A188412: Number of (5*n)X5 binary arrays with rows in nonincreasing order, n ones in every column and no more than 3 ones in any row.

The programs for A188412, there is no canonical definition to state claims against.
-/

/-! ## A188412.P14967720435109281216

`A188416(∑[n+5]+6)`
-/

namespace A188412.P14967720435109281216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A188412.P14967720435109281216

/-! ## A188412.P4029089606254182868

`A302907(n+1)+A188416(Δ[A264443(n)])`
-/

namespace A188412.P4029089606254182868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302907 (n + 1) + A188416 (f1 (n + 1) - f1 n).toNat

end

end A188412.P4029089606254182868

/-! ## A188412.P15759177540661295811

`A188416(A046691(n+3))+A000007(n+1)`
-/

namespace A188412.P15759177540661295811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A188412.P15759177540661295811

/-!
# A188413: Number of (6*n) X 6 binary arrays with rows in nonincreasing order, n ones in every column and no more than 3 ones in any row.

The programs for A188413, there is no canonical definition to state claims against.
-/

/-! ## A188413.P12224878292326606358

`A188416(A052905(n+3))`
-/

namespace A188413.P12224878292326606358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A052905 (n + 3)).toNat

end

end A188413.P12224878292326606358

/-! ## A188413.P6534463964398036103

`A188416(A056119(n)+16)`
-/

namespace A188413.P6534463964398036103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A056119 n + 16).toNat

end

end A188413.P6534463964398036103

/-! ## A188413.P1189494074387801866

`A188416(eq[3, A219347(n)])`
-/

namespace A188413.P1189494074387801866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188413.P1189494074387801866

/-!
# A188414: Number of (7*n)X7 binary arrays with rows in nonincreasing order, n ones in every column and no more than 3 ones in any row.

The programs for A188414, there is no canonical definition to state claims against.
-/

/-! ## A188414.P5917582163448616424

`A188416(A055999(n+4))`
-/

namespace A188414.P5917582163448616424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A055999 (n + 4)).toNat

end

end A188414.P5917582163448616424

/-! ## A188414.P3723264536343987819

`A188416(eq[4, A219347(n)])`
-/

namespace A188414.P3723264536343987819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188414.P3723264536343987819

/-!
# A188415: Number of (8*n)X8 binary arrays with rows in nonincreasing order, n ones in every column and no more than 3 ones in any row.

The programs for A188415, there is no canonical definition to state claims against.
-/

/-! ## A188415.P16089671822248725778

`A188416(eq[5, A219347(n)])`
-/

namespace A188415.P16089671822248725778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188415.P16089671822248725778

/-!
# A188416: T(n,k)=Number of (n*k)Xk binary arrays with rows in nonincreasing order, n ones in every column and no more than 3 ones in any row.

The programs for A188416, there is no canonical definition to state claims against.
-/

/-! ## A188416.P12698570535113587225

`A331995(A349934(n+1))`
-/

namespace A188416.P12698570535113587225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A349934 (n + 1)).toNat

end

end A188416.P12698570535113587225

/-!
# A188417: Number of (2*n)Xn binary arrays with rows in nonincreasing order, 2 ones in every column and no more than 3 ones in any row.

The programs for A188417, there is no canonical definition to state claims against.
-/

/-! ## A188417.P2165938769850996674

`A188416(∑[n+1]+2)`
-/

namespace A188417.P2165938769850996674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188417.P2165938769850996674

/-! ## A188417.P17959817513241135514

`record[A104041(n)*A188416(n+3)]`
-/

namespace A188417.P17959817513241135514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104041 n * A188416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188417.P17959817513241135514

/-! ## A188417.P7828545473737971937

`record[gcd(A048994(n), A188416(n+2))]`
-/

namespace A188417.P7828545473737971937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048994 n) (A188416 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188417.P7828545473737971937

/-! ## A188417.P7221455360364004807

`record[gcd(A109502(n+1), A188416(n+1))]`
-/

namespace A188417.P7221455360364004807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109502 (n + 1)) (A188416 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188417.P7221455360364004807

/-! ## A188417.P6434181386805381771

`A188416(A133263(n+1))+A011738(n)`
-/

namespace A188417.P6434181386805381771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A133263 (n + 1)).toNat + A011738 n

end

end A188417.P6434181386805381771

/-!
# A188418: Number of (3*n)Xn binary arrays with rows in nonincreasing order, 3 ones in every column and no more than 3 ones in any row.

The programs for A188418, there is no canonical definition to state claims against.
-/

/-! ## A188418.P17070464832276528700

`A188416(∑[n+2]+4)`
-/

namespace A188418.P17070464832276528700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188418.P17070464832276528700

/-! ## A188418.P10553753685922551590

`lcm((-1)^n, A188416(A167614(n+1)))`
-/

namespace A188418.P10553753685922551590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A188416 (A167614 (n + 1)).toNat)

end

end A188418.P10553753685922551590

/-! ## A188418.P4455932807438417667

`A188416(A167614(n+1))+A025438(n)`
-/

namespace A188418.P4455932807438417667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A167614 (n + 1)).toNat + A025438 n

end

end A188418.P4455932807438417667

/-! ## A188418.P17413583237894200008

`A188416(A167614(n+1))+A025466(n)`
-/

namespace A188418.P17413583237894200008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A167614 (n + 1)).toNat + A025466 n

end

end A188418.P17413583237894200008

/-!
# A188419: Number of (4*n) X n binary arrays with rows in nonincreasing order, four 1's in every column and no more than three 1's in any row.

The programs for A188419, there is no canonical definition to state claims against.
-/

/-! ## A188419.P5477526071607283955

`A188416(∑[n+3]+7)`
-/

namespace A188419.P5477526071607283955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A188419.P5477526071607283955

/-! ## A188419.P11986990674409389710

`A188416(A052905(n)+9)+A165110(n)`
-/

namespace A188419.P11986990674409389710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A052905 n + 9).toNat + A165110 n

end

end A188419.P11986990674409389710

/-! ## A188419.P12387527664240630342

`A243829(n)+A188416(A055999(n)+10)`
-/

namespace A188419.P12387527664240630342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243829 n + A188416 (A055999 n + 10).toNat

end

end A188419.P12387527664240630342

/-! ## A188419.P9267950377190982287

`A285709(n+1)+A188416(A052905(n)+9)`
-/

namespace A188419.P9267950377190982287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285709 (n + 1) + A188416 (A052905 n + 9).toNat

end

end A188419.P9267950377190982287

/-! ## A188419.P4629989651776658526

`A188416(A055999(n)+10)+A000007(n+4)`
-/

namespace A188419.P4629989651776658526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A055999 n + 10).toNat + A000007 (n + 4)

end

end A188419.P4629989651776658526

/-!
# A188420: Number of (5*n)Xn binary arrays with rows in nonincreasing order, 5 ones in every column and no more than 3 ones in any row.

The programs for A188420, there is no canonical definition to state claims against.
-/

/-! ## A188420.P11877902333630424621

`A188416(A167499(n+3))`
-/

namespace A188420.P11877902333630424621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A167499 (n + 3)).toNat

end

end A188420.P11877902333630424621

/-! ## A188420.P5921834372578939429

`A188416(A155212(n)+13)`
-/

namespace A188420.P5921834372578939429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A155212 n + 13).toNat

end

end A188420.P5921834372578939429

/-! ## A188420.P15190644633943282577

`A188416(A056000(n)+15)`
-/

namespace A188420.P15190644633943282577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A056000 n + 15).toNat

end

end A188420.P15190644633943282577

/-! ## A188420.P2539985222063681840

`A188416(eq[7, A066657(n)])`
-/

namespace A188420.P2539985222063681840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188420.P2539985222063681840

/-!
# A188421: Number of (6*n)Xn binary arrays with rows in nonincreasing order, 6 ones in every column and no more than 3 ones in any row.

The programs for A188421, there is no canonical definition to state claims against.
-/

/-! ## A188421.P5457593535880875310

`A188416(A166136(n+4))`
-/

namespace A188421.P5457593535880875310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A166136 (n + 4)).toNat

end

end A188421.P5457593535880875310

/-! ## A188421.P14970372954166014287

`A188416(A056115(n)+21)`
-/

namespace A188421.P14970372954166014287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A056115 n + 21).toNat

end

end A188421.P14970372954166014287

/-! ## A188421.P7571751746170415897

`A188416(A167499(n+4)+1)`
-/

namespace A188421.P7571751746170415897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A167499 (n + 4) + 1).toNat

end

end A188421.P7571751746170415897

/-!
# A188422: Number of (7*n)Xn binary arrays with rows in nonincreasing order, 7 ones in every column and no more than 3 ones in any row.

The programs for A188422, there is no canonical definition to state claims against.
-/

/-! ## A188422.P9134328112403091856

`A188416(eq[11, A066657(n)])`
-/

namespace A188422.P9134328112403091856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188422.P9134328112403091856

/-! ## A188422.P17430618278903257864

`A188416(A167499(n+5)+2)`
-/

namespace A188422.P17430618278903257864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (A167499 (n + 5) + 2).toNat

end

end A188422.P17430618278903257864

/-!
# A188423: Number of (8*n)Xn binary arrays with rows in nonincreasing order, 8 ones in every column and no more than 3 ones in any row.

The programs for A188423, there is no canonical definition to state claims against.
-/

/-! ## A188423.P13711946405616285641

`A188416(eq[13, A066657(n)])`
-/

namespace A188423.P13711946405616285641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188416 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188423.P13711946405616285641

/-!
# A188424: Number of primes of the form k^2 + k + 2n - 1 for k = 0..2n-1.

The programs for A188424, there is no canonical definition to state claims against.
-/

/-! ## A188424.P14472592764529908895

`A302826(record[n*n%2]+2)`
-/

namespace A188424.P14472592764529908895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2)

end

end A188424.P14472592764529908895

/-! ## A188424.P6543134946810875067

`A302826(n-(1-n)%(n+1)+2)`
-/

namespace A188424.P6543134946810875067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ) + 2).toNat

end

end A188424.P6543134946810875067

/-! ## A188424.P10200435620882857102

`A302826(A004280(n+2))`
-/

namespace A188424.P10200435620882857102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (A004280 (n + 2)).toNat

end

end A188424.P10200435620882857102

/-! ## A188424.P7491759650450508130

`A302826(A028310(2*n)+1)`
-/

namespace A188424.P7491759650450508130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (A028310 (2 * n) + 1).toNat

end

end A188424.P7491759650450508130

/-! ## A188424.P15289195546891467018

`A302826(A028310(n)+1+n)`
-/

namespace A188424.P15289195546891467018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (A028310 n + 1 + (n : ℤ)).toNat

end

end A188424.P15289195546891467018

/-! ## A188424.P16600432644399537322

`A302826(record[n*(1-A302826(n+3))]+2)`
-/

namespace A188424.P16600432644399537322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A302826 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A188424.P16600432644399537322

/-! ## A188424.P6065467003119318950

`A302826(record[(A000096(n)+n)%(n+1)]+2)`
-/

namespace A188424.P6065467003119318950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A188424.P6065467003119318950

/-! ## A188424.P1430887107109935544

`A302826(record[(A302826(n+3)+n)%(n+1)]+2)`
-/

namespace A188424.P1430887107109935544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302826 (n + 3) + (n : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302826 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A188424.P1430887107109935544

/-!
# A188425: Position of 2^n in A051037 (5-smooth numbers).

The programs for A188425, there is no canonical definition to state claims against.
-/

/-! ## A188425.P5484781171923324393

`eq[2, gcd(30, A108651(n))]`
-/

namespace A188425.P5484781171923324393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 30 (A108651 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188425.P5484781171923324393

/-! ## A188425.P10408985347643809459

`record[A103517(n)/A112764(n+1)]`
-/

namespace A188425.P10408985347643809459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103517 n : ℚ) / (A112764 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188425.P10408985347643809459

/-! ## A188425.P7244019796857314357

`eq[A034444(A034444(n+1)), A112764(n+1)]+1`
-/

namespace A188425.P7244019796857314357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A034444 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188425.P7244019796857314357

/-! ## A188425.P903823860167253709

`A379005(2^n)`
-/

namespace A188425.P903823860167253709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379005 (2 ^ n)

end

end A188425.P903823860167253709

/-! ## A188425.P8026620702212763613

`record[A379005(A306846(n))]`
-/

namespace A188425.P8026620702212763613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379005 (A306846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188425.P8026620702212763613

/-!
# A188426: Position of 3^n in A051037 (5-smooth numbers).

The programs for A188426, there is no canonical definition to state claims against.
-/

/-! ## A188426.P15686590270113985707

`eq[1, gcd(10, A051037(n+1))]+1`
-/

namespace A188426.P15686590270113985707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A051037 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188426.P15686590270113985707

/-! ## A188426.P11494304244131648663

`eq[A112759(n+1), A112761(n+1)]+1`
-/

namespace A188426.P11494304244131648663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112761 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188426.P11494304244131648663

/-! ## A188426.P14577716548868143623

`A379005(3^n)`
-/

namespace A188426.P14577716548868143623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379005 (3 ^ n)

end

end A188426.P14577716548868143623

/-! ## A188426.P14119130324441207722

`A267253(A251750(2*n+1))+∑[∑[n]+n]`
-/

namespace A188426.P14119130324441207722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267253 (A251750 (2 * n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A188426.P14119130324441207722

/-! ## A188426.P14704872145864647778

`A379005(A000244(n))%A000244(n+1)`
-/

namespace A188426.P14704872145864647778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379005 (A000244 n).toNat) (A000244 (n + 1))

end

end A188426.P14704872145864647778

/-!
# A188427: Position of 5^n in A051037 (5-smooth numbers).

The programs for A188427, there is no canonical definition to state claims against.
-/

/-! ## A188427.P1706849450414771657

`eq[1, gcd(6, A051037(n+1))]+1`
-/

namespace A188427.P1706849450414771657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A051037 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188427.P1706849450414771657

/-! ## A188427.P8634425800121637677

`eq[A112759(n+1), A112762(n+1)]+1`
-/

namespace A188427.P8634425800121637677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112762 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A188427.P8634425800121637677

/-! ## A188427.P12726846726621200561

`A008617(A094792(2*n+1)-A151672(n))`
-/

namespace A188427.P12726846726621200561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A094792 (2 * n + 1) - A151672 n).toNat

end

end A188427.P12726846726621200561

/-! ## A188427.P7508494283780924992

`A008617(A200567(n+1)+A000578(2*(n+1)))`
-/

namespace A188427.P7508494283780924992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A200567 (n + 1) + A000578 (2 * (n + 1))).toNat

end

end A188427.P7508494283780924992

/-! ## A188427.P12405803981760466839

`A008617(A029952(n+2)+A000578(2*(n+1)))`
-/

namespace A188427.P12405803981760466839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A029952 (n + 2) + A000578 (2 * (n + 1))).toNat

end

end A188427.P12405803981760466839

/-!
# A188428: Number of strings of length n on three symbols containing all permutations of those three symbols as substrings (factors), divided by six.

The programs for A188428, there is no canonical definition to state claims against.
-/

/-! ## A188428.P7516577594254517507

`A089865(C(n, 8))`
-/

namespace A188428.P7516577594254517507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089865 (Nat.choose n 8)

end

end A188428.P7516577594254517507

/-! ## A188428.P15347415750683873571

`A003984(C(n, 8)²)`
-/

namespace A188428.P15347415750683873571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (Nat.choose n 8 ^ 2)

end

end A188428.P15347415750683873571

/-! ## A188428.P6387856552186344403

`A025581(C(n, 8)²)`
-/

namespace A188428.P6387856552186344403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose n 8 ^ 2)

end

end A188428.P6387856552186344403

/-! ## A188428.P11826827599660981657

`A329456(∑[C(n, 8)])`
-/

namespace A188428.P11826827599660981657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329456 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188428.P11826827599660981657

/-! ## A188428.P10389334250269390771

`A265521(C(n+1, 9))`
-/

namespace A188428.P10389334250269390771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265521 (Nat.choose (n + 1) 9)

end

end A188428.P10389334250269390771

/-!
# A188430: a(n) is the maximum of the largest elements of all n-full sets, or 0 if no such set exists.

The programs for A188430, the canonical program `A188430.P823242551921699133` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188430 has offset 1).

The definition of A188430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188430.P823242551921699133

`ogf((1-x+x^2-x^3-2x^4+5x^5+x^6-7x^7-x^8+8x^9+x^10-3x^11-x^13-2x^15+3x^17-x^21)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188430

/-- `ogf((1-x+x^2-x^3-2x^4+5x^5+x^6-7x^7-x^8+8x^9+x^10-3x^11-x^13-2x^15+3x^17-x^21)/(1-x-x^2+x^3))` -/
def P823242551921699133.Spec : Prop :=
  ∀ n, P823242551921699133.a n = A188430 (n + 1)

theorem P823242551921699133.correct : P823242551921699133.Spec := by
  intro n
  simp only [A188430, Nat.add_sub_cancel]

end A188430

/-! ## A188430.P9738481059369455511

`A188429(n+1)+A185284(3*n+1)`
-/

namespace A188430.P9738481059369455511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (n + 1) + A185284 (3 * n + 1)

end

end A188430.P9738481059369455511

namespace A188430

/-- `A188429(n+1)+A185284(3*n+1)` -/
def P9738481059369455511.Spec : Prop :=
  ∀ n, P9738481059369455511.a n = A188430 (n + 1)

end A188430

/-! ## A188430.P11850955821956382427

`A188429(lt[A059777(n), A163511(n)])`
-/

namespace A188430.P11850955821956382427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A188430.P11850955821956382427

namespace A188430

/-- `A188429(lt[A059777(n), A163511(n)])` -/
def P11850955821956382427.Spec : Prop :=
  ∀ n, P11850955821956382427.a n = A188430 (n + 1)

end A188430

/-! ## A188430.P11656022684735852551

`A188429(lt[A223504(n+1), A028611(n)])`
-/

namespace A188430.P11656022684735852551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A188430.P11656022684735852551

namespace A188430

/-- `A188429(lt[A223504(n+1), A028611(n)])` -/
def P11656022684735852551.Spec : Prop :=
  ∀ n, P11656022684735852551.a n = A188430 (n + 1)

end A188430

/-! ## A188430.P349538526590901085

`A188429(n+1)+A026921(A157221(n))`
-/

namespace A188430.P349538526590901085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188429 (n + 1) + A026921 (A157221 n).toNat

end

end A188430.P349538526590901085

namespace A188430

/-- `A188429(n+1)+A026921(A157221(n))` -/
def P349538526590901085.Spec : Prop :=
  ∀ n, P349538526590901085.a n = A188430 (n + 1)

end A188430

/-!
# A188431: The number of n-full sets, F(n).

The programs for A188431, there is no canonical definition to state claims against.
-/

/-! ## A188431.P5609053847074022893

`Δ[A326020(n)-Δ[A326020(n)]]`
-/

namespace A188431.P5609053847074022893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326020 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188431.P5609053847074022893

/-! ## A188431.P2009935403365625335

`A326021(n+1)-Δ[A326021(n+1)]`
-/

namespace A188431.P2009935403365625335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (n + 1) - (f1 (n + 1) - f1 n)

end

end A188431.P2009935403365625335

/-! ## A188431.P4872096509921034538

`A326021(n+1)+A326021(n+1)-A326021(n+2)`
-/

namespace A188431.P4872096509921034538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (n + 1) + (A326021 (n + 1) - A326021 (n + 2))

end

end A188431.P4872096509921034538

/-! ## A188431.P15173783195082583722

`A000009(n)-A365831(n)`
-/

namespace A188431.P15173783195082583722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A365831 n

end

end A188431.P15173783195082583722

/-! ## A188431.P5219014726771701578

`∑[A087897(n)]-A365831(n)`
-/

namespace A188431.P5219014726771701578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A365831 n

end

end A188431.P5219014726771701578

/-! ## A188431.P7589688893007460431

`A364916(A000217(n))-A365831(n)`
-/

namespace A188431.P7589688893007460431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A000217 n).toNat - A365831 n

end

end A188431.P7589688893007460431

/-!
# A188432: Fixed point of the morphism 0->001, 1->01.

The programs for A188432, the canonical program `A188432.P16977430927504118558` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188432 has offset 1).

The definition of A188432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188432.P15923019855842038998

`Δ[floor(n/ϕ²)]`
-/

namespace A188432.P15923019855842038998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188432.P15923019855842038998

namespace A188432

/-- `Δ[floor(n/ϕ²)]` -/
def P15923019855842038998.Spec : Prop :=
  ∀ n, P15923019855842038998.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P6969317291044380214

`Δ[ceil(ϕ*n)]%2`
-/

namespace A188432.P6969317291044380214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A188432.P6969317291044380214

namespace A188432

/-- `Δ[ceil(ϕ*n)]%2` -/
def P6969317291044380214.Spec : Prop :=
  ∀ n, P6969317291044380214.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P7058788721464067691

`and(1, Δ[ceil(ϕ*n)])`
-/

namespace A188432.P7058788721464067691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A188432.P7058788721464067691

namespace A188432

/-- `and(1, Δ[ceil(ϕ*n)])` -/
def P7058788721464067691.Spec : Prop :=
  ∀ n, P7058788721464067691.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P15819238537301946395

`xor(1, Δ[ceil(n/ϕ)])`
-/

namespace A188432.P15819238537301946395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A188432.P15819238537301946395

namespace A188432

/-- `xor(1, Δ[ceil(n/ϕ)])` -/
def P15819238537301946395.Spec : Prop :=
  ∀ n, P15819238537301946395.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P1217318047628527646

`2-Δ[ceil(ϕ*n)]!`
-/

namespace A188432.P1217318047628527646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A188432.P1217318047628527646

namespace A188432

/-- `2-Δ[ceil(ϕ*n)]!` -/
def P1217318047628527646.Spec : Prop :=
  ∀ n, P1217318047628527646.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P4581497827401542421

`val(Δ[ceil(n*ϕ²)], 2)`
-/

namespace A188432.P4581497827401542421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A188432.P4581497827401542421

namespace A188432

/-- `val(Δ[ceil(n*ϕ²)], 2)` -/
def P4581497827401542421.Spec : Prop :=
  ∀ n, (P4581497827401542421.a n : ℤ) = A188432 (n + 1)

end A188432

/-! ## A188432.P7024017682745701090

`1-dr(Δ[ceil(n/ϕ)])`
-/

namespace A188432.P7024017682745701090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n) : ℤ)

end

end A188432.P7024017682745701090

namespace A188432

/-- `1-dr(Δ[ceil(n/ϕ)])` -/
def P7024017682745701090.Spec : Prop :=
  ∀ n, P7024017682745701090.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P15321152739026590792

`C(2, Δ[ceil(n*ϕ²)])`
-/

namespace A188432.P15321152739026590792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (f1 (n + 1) - f1 n).toNat

end

end A188432.P15321152739026590792

namespace A188432

/-- `C(2, Δ[ceil(n*ϕ²)])` -/
def P15321152739026590792.Spec : Prop :=
  ∀ n, (P15321152739026590792.a n : ℤ) = A188432 (n + 1)

end A188432

/-! ## A188432.P16977430927504118558

`1-Δ[n+1-a(a(n-1))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188432

/-- `1-Δ[n+1-a(a(n-1))]` -/
def P16977430927504118558.Spec : Prop :=
  ∀ n, P16977430927504118558.a n = A188432 (n + 1)

theorem P16977430927504118558.correct : P16977430927504118558.Spec := by
  intro n
  simp only [A188432, Nat.add_sub_cancel]

end A188432

/-! ## A188432.P10904448679186222147

`1-A114986(n)`
-/

namespace A188432.P10904448679186222147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A114986 n

end

end A188432.P10904448679186222147

namespace A188432

/-- `1-A114986(n)` -/
def P10904448679186222147.Spec : Prop :=
  ∀ n, P10904448679186222147.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P14409355634032337439

`char[∑[A282162(n)]]`
-/

namespace A188432.P14409355634032337439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188432.P14409355634032337439

namespace A188432

/-- `char[∑[A282162(n)]]` -/
def P14409355634032337439.Spec : Prop :=
  ∀ n, (P14409355634032337439.a n : ℤ) = A188432 (n + 1)

end A188432

/-! ## A188432.P10515134375973231850

`char[Δ[A088207(n)]]`
-/

namespace A188432.P10515134375973231850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088207 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188432.P10515134375973231850

namespace A188432

/-- `char[Δ[A088207(n)]]` -/
def P10515134375973231850.Spec : Prop :=
  ∀ n, (P10515134375973231850.a n : ℤ) = A188432 (n + 1)

end A188432

/-! ## A188432.P11975232280955141235

`char[comp[A066096(n)]]`
-/

namespace A188432.P11975232280955141235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188432.P11975232280955141235

namespace A188432

/-- `char[comp[A066096(n)]]` -/
def P11975232280955141235.Spec : Prop :=
  ∀ n, (P11975232280955141235.a n : ℤ) = A188432 (n + 1)

end A188432

/-! ## A188432.P112026045139559100

`2-Δ[A004956(n)]`
-/

namespace A188432.P112026045139559100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A188432.P112026045139559100

namespace A188432

/-- `2-Δ[A004956(n)]` -/
def P112026045139559100.Spec : Prop :=
  ∀ n, P112026045139559100.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P1170791026057944216

`3-Δ[A004957(n)]`
-/

namespace A188432.P1170791026057944216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A188432.P1170791026057944216

namespace A188432

/-- `3-Δ[A004957(n)]` -/
def P1170791026057944216.Spec : Prop :=
  ∀ n, P1170791026057944216.a n = A188432 (n + 1)

end A188432

/-! ## A188432.P9466495920734719168

`char[A001950(n+1)]`
-/

namespace A188432.P9466495920734719168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188432.P9466495920734719168

namespace A188432

/-- `char[A001950(n+1)]` -/
def P9466495920734719168.Spec : Prop :=
  ∀ n, (P9466495920734719168.a n : ℤ) = A188432 (n + 1)

end A188432

/-! ## A188432.P17800487783983070912

`char[A307295(2*n)]`
-/

namespace A188432.P17800487783983070912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307295 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188432.P17800487783983070912

namespace A188432

/-- `char[A307295(2*n)]` -/
def P17800487783983070912.Spec : Prop :=
  ∀ n, (P17800487783983070912.a n : ℤ) = A188432 (n + 1)

end A188432

/-! ## A188432.P1320764630598034215

`3-A076662(n+1)`
-/

namespace A188432.P1320764630598034215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A076662 (n + 1)

end

end A188432.P1320764630598034215

namespace A188432

/-- `3-A076662(n+1)` -/
def P1320764630598034215.Spec : Prop :=
  ∀ n, P1320764630598034215.a n = A188432 (n + 1)

theorem P1320764630598034215.correct : P1320764630598034215.Spec := by
  intro n
  simp only [A188432, Nat.add_sub_cancel, A188432.P1320764630598034215.a, A188432.P16977430927504118558.f1, A188432.P16977430927504118558.a, A076662, A076662.P5818485262052889704.f1, A076662.P5818485262052889704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188432

/-!
# A188433: a(n) = [2r]-[nr]-[2r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

The programs for A188433, the canonical program `A188433.P1155547441168829669` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188433 has offset 1).

The definition of A188433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188433.P16687751378339787748

`char[ceil(∑[ϕ^(n%2)])-1]`
-/

namespace A188433.P16687751378339787748
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188433.P16687751378339787748

namespace A188433

/-- `char[ceil(∑[ϕ^(n%2)])-1]` -/
def P16687751378339787748.Spec : Prop :=
  ∀ n, (P16687751378339787748.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P7092089378301353374

`a(Δ[floor(floor(n/ϕ)/ϕ²)])` with `a(0)=1, a(1)=0`
-/

namespace A188433.P7092089378301353374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℝ) / Real.goldenRatio⌋ : ℝ) / Real.goldenRatio ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A188433.P7092089378301353374

namespace A188433

/-- `a(Δ[floor(floor(n/ϕ)/ϕ²)])` -/
def P7092089378301353374.Spec : Prop :=
  ∀ n, (P7092089378301353374.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P14202270715849361542

`1-char[2*floor(ϕ*n)+n+1]`
-/

namespace A188433.P14202270715849361542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.goldenRatio * (n : ℝ)⌋ + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188433.P14202270715849361542

namespace A188433

/-- `1-char[2*floor(ϕ*n)+n+1]` -/
def P14202270715849361542.Spec : Prop :=
  ∀ n, P14202270715849361542.a n = A188433 (n + 1)

end A188433

/-! ## A188433.P12986225246017380243

`C(comp[floor(ϕ*n+n+2)], floor((n+1)/ϕ+n))`
-/

namespace A188433.P12986225246017380243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ) + (n + 2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ⌊(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌋.toNat

end

end A188433.P12986225246017380243

namespace A188433

/-- `C(comp[floor(ϕ*n+n+2)], floor((n+1)/ϕ+n))` -/
def P12986225246017380243.Spec : Prop :=
  ∀ n, (P12986225246017380243.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P7454452780033619147

`Δ[A060142(n)]%2`
-/

namespace A188433.P7454452780033619147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A188433.P7454452780033619147

namespace A188433

/-- `Δ[A060142(n)]%2` -/
def P7454452780033619147.Spec : Prop :=
  ∀ n, P7454452780033619147.a n = A188433 (n + 1)

end A188433

/-! ## A188433.P18406938309464654443

`and(1, Δ[A280873(n)])`
-/

namespace A188433.P18406938309464654443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A188433.P18406938309464654443

namespace A188433

/-- `and(1, Δ[A280873(n)])` -/
def P18406938309464654443.Spec : Prop :=
  ∀ n, P18406938309464654443.a n = A188433 (n + 1)

end A188433

/-! ## A188433.P17966425385373015261

`A219609(n+1)%2`
-/

namespace A188433.P17966425385373015261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219609 (n + 1)) 2

end

end A188433.P17966425385373015261

namespace A188433

/-- `A219609(n+1)%2` -/
def P17966425385373015261.Spec : Prop :=
  ∀ n, P17966425385373015261.a n = A188433 (n + 1)

end A188433

/-! ## A188433.P9857105344150103542

`char[A188435(n+1)-1]`
-/

namespace A188433.P9857105344150103542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188433.P9857105344150103542

namespace A188433

/-- `char[A188435(n+1)-1]` -/
def P9857105344150103542.Spec : Prop :=
  ∀ n, (P9857105344150103542.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P12870262298137540425

`A005713((2*n)%(n+2))`
-/

namespace A188433.P12870262298137540425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (2 * n % (n + 2))

end

end A188433.P12870262298137540425

namespace A188433

/-- `A005713((2*n)%(n+2))` -/
def P12870262298137540425.Spec : Prop :=
  ∀ n, P12870262298137540425.a n = A188433 (n + 1)

end A188433

/-! ## A188433.P7770534351156472283

`char[char[A187485(n+1)]+n]`
-/

namespace A188433.P7770534351156472283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188433.P7770534351156472283

namespace A188433

/-- `char[char[A187485(n+1)]+n]` -/
def P7770534351156472283.Spec : Prop :=
  ∀ n, (P7770534351156472283.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P9136591963614797675

`char[char[A327175(n+1)]+n]`
-/

namespace A188433.P9136591963614797675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327175 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188433.P9136591963614797675

namespace A188433

/-- `char[char[A327175(n+1)]+n]` -/
def P9136591963614797675.Spec : Prop :=
  ∀ n, (P9136591963614797675.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P15204731514326325493

`char[gcd(3, A096270(n)-1)+n-1]`
-/

namespace A188433.P15204731514326325493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A096270 n - 1) : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188433.P15204731514326325493

namespace A188433

/-- `char[gcd(3, A096270(n)-1)+n-1]` -/
def P15204731514326325493.Spec : Prop :=
  ∀ n, (P15204731514326325493.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P14202338282779144729

`char[comp[2*comp[A001950(n+1)]+1+n]]`
-/

namespace A188433.P14202338282779144729
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188433.P14202338282779144729

namespace A188433

/-- `char[comp[2*comp[A001950(n+1)]+1+n]]` -/
def P14202338282779144729.Spec : Prop :=
  ∀ n, (P14202338282779144729.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P18404954773343402527

`char[comp[A007066(A026351(n))]]`
-/

namespace A188433.P18404954773343402527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (A026351 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188433.P18404954773343402527

namespace A188433

/-- `char[comp[A007066(A026351(n))]]` -/
def P18404954773343402527.Spec : Prop :=
  ∀ n, (P18404954773343402527.a n : ℤ) = A188433 (n + 1)

end A188433

/-! ## A188433.P1155547441168829669

`A039982(A356749(n)²+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A188433

/-- `A039982(A356749(n)²+1)` -/
def P1155547441168829669.Spec : Prop :=
  ∀ n, P1155547441168829669.a n = A188433 (n + 1)

theorem P1155547441168829669.correct : P1155547441168829669.Spec := by
  intro n
  simp only [A188433, Nat.add_sub_cancel]

end A188433

/-! ## A188433.P8937811243404971128

`A114986(A189479(n+1)+n)`
-/

namespace A188433.P8937811243404971128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 (A189479 (n + 1) + (n : ℤ)).toNat

end

end A188433.P8937811243404971128

namespace A188433

/-- `A114986(A189479(n+1)+n)` -/
def P8937811243404971128.Spec : Prop :=
  ∀ n, P8937811243404971128.a n = A188433 (n + 1)

end A188433

/-! ## A188433.P13866239296633298278

`A287523(A189662(n+1)-n)`
-/

namespace A188433.P13866239296633298278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (A189662 (n + 1) - (n : ℤ)).toNat

end

end A188433.P13866239296633298278

namespace A188433

/-- `A287523(A189662(n+1)-n)` -/
def P13866239296633298278.Spec : Prop :=
  ∀ n, P13866239296633298278.a n = A188433 (n + 1)

end A188433

/-!
# A188434: Positions of 0 in A188433; complement of A188435.

The programs for A188434, the canonical program `A188434.P14872401721499474557` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188434 has offset 1).

The definition of A188434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188434.P10767582090779435279

`ceil(ϕ*comp[ceil(ϕ*n)])`
-/

namespace A188434.P10767582090779435279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ)⌉

end

end A188434.P10767582090779435279

namespace A188434

/-- `ceil(ϕ*comp[ceil(ϕ*n)])` -/
def P10767582090779435279.Spec : Prop :=
  ∀ n, P10767582090779435279.a n = A188434 (n + 1)

end A188434

/-! ## A188434.P7206341931940393285

`A047924(n)-1`
-/

namespace A188434.P7206341931940393285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n - 1

end

end A188434.P7206341931940393285

namespace A188434

/-- `A047924(n)-1` -/
def P7206341931940393285.Spec : Prop :=
  ∀ n, P7206341931940393285.a n = A188434 (n + 1)

end A188434

/-! ## A188434.P14561628057452095427

`A276885(n+1)+1`
-/

namespace A188434.P14561628057452095427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 1) + 1

end

end A188434.P14561628057452095427

namespace A188434

/-- `A276885(n+1)+1` -/
def P14561628057452095427.Spec : Prop :=
  ∀ n, P14561628057452095427.a n = A188434 (n + 1)

theorem P14561628057452095427.correct : P14561628057452095427.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel, A188434.P14561628057452095427.a, A188434.P14872401721499474557.a, A130568, A130568.P15557830323958427983.a, A276885, A276885.P994545349588383328.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188434

/-! ## A188434.P14872401721499474557

`A130568(n)+1+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188434

/-- `A130568(n)+1+n` -/
def P14872401721499474557.Spec : Prop :=
  ∀ n, P14872401721499474557.a n = A188434 (n + 1)

theorem P14872401721499474557.correct : P14872401721499474557.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel]

end A188434

/-! ## A188434.P10533338770016330451

`2*A026351(n)+n`
-/

namespace A188434.P10533338770016330451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026351 n + (n : ℤ)

end

end A188434.P10533338770016330451

namespace A188434

/-- `2*A026351(n)+n` -/
def P10533338770016330451.Spec : Prop :=
  ∀ n, P10533338770016330451.a n = A188434 (n + 1)

theorem P10533338770016330451.correct : P10533338770016330451.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel, A188434.P10533338770016330451.a, A188434.P14872401721499474557.a, A026351, A026351.P16838321733923579855.a, A130568, A130568.P15557830323958427983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188434

/-! ## A188434.P5063339433486665137

`2*A026352(n)-n`
-/

namespace A188434.P5063339433486665137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026352 n - (n : ℤ)

end

end A188434.P5063339433486665137

namespace A188434

/-- `2*A026352(n)-n` -/
def P5063339433486665137.Spec : Prop :=
  ∀ n, P5063339433486665137.a n = A188434 (n + 1)

theorem P5063339433486665137.correct : P5063339433486665137.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel, A188434.P5063339433486665137.a, A188434.P14872401721499474557.a, A026352, A026352.P12148226438592254033.a, A130568, A130568.P15557830323958427983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188434

/-! ## A188434.P91360783166303671

`A284621(n+1)+1-n`
-/

namespace A188434.P91360783166303671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (n + 1) + (1 - (n : ℤ))

end

end A188434.P91360783166303671

namespace A188434

/-- `A284621(n+1)+1-n` -/
def P91360783166303671.Spec : Prop :=
  ∀ n, P91360783166303671.a n = A188434 (n + 1)

end A188434

/-! ## A188434.P12048808558397632828

`A288709(n+1)-(n+1)`
-/

namespace A188434.P12048808558397632828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288709 (n + 1) - (n + 1 : ℤ)

end

end A188434.P12048808558397632828

namespace A188434

/-- `A288709(n+1)-(n+1)` -/
def P12048808558397632828.Spec : Prop :=
  ∀ n, P12048808558397632828.a n = A188434 (n + 1)

end A188434

/-! ## A188434.P5459901386355341027

`A285682(n+1)-2*n`
-/

namespace A188434.P5459901386355341027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285682 (n + 1) - (2 * n : ℤ)

end

end A188434.P5459901386355341027

namespace A188434

/-- `A285682(n+1)-2*n` -/
def P5459901386355341027.Spec : Prop :=
  ∀ n, P5459901386355341027.a n = A188434 (n + 1)

end A188434

/-! ## A188434.P7204979071569991063

`(A188026(n+1)-n)/4`
-/

namespace A188434.P7204979071569991063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188026 (n + 1) - (n : ℤ) : ℚ) / 4

end

end A188434.P7204979071569991063

namespace A188434

/-- `(A188026(n+1)-n)/4` -/
def P7204979071569991063.Spec : Prop :=
  ∀ n, P7204979071569991063.a n = (A188434 (n + 1) : ℚ)

end A188434

/-! ## A188434.P15458975509119622561

`A026352(n)+A026351(n)`
-/

namespace A188434.P15458975509119622561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n + A026351 n

end

end A188434.P15458975509119622561

namespace A188434

/-- `A026352(n)+A026351(n)` -/
def P15458975509119622561.Spec : Prop :=
  ∀ n, P15458975509119622561.a n = A188434 (n + 1)

theorem P15458975509119622561.correct : P15458975509119622561.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel, A188434.P15458975509119622561.a, A188434.P14872401721499474557.a, A026351, A026351.P16838321733923579855.a, A026352, A026352.P12148226438592254033.a, A130568, A130568.P15557830323958427983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188434

/-! ## A188434.P9144550688554636020

`A066096(n)+A026356(n+1)`
-/

namespace A188434.P9144550688554636020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + A026356 (n + 1)

end

end A188434.P9144550688554636020

namespace A188434

/-- `A066096(n)+A026356(n+1)` -/
def P9144550688554636020.Spec : Prop :=
  ∀ n, P9144550688554636020.a n = A188434 (n + 1)

theorem P9144550688554636020.correct : P9144550688554636020.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel, A188434.P9144550688554636020.a, A188434.P14872401721499474557.a, A026356, A026356.P17089898806673007120.a, A066096, A066096.P2651506377198414293.a, A130568, A130568.P15557830323958427983.a, A026351, A026351.P16838321733923579855.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188434

/-! ## A188434.P16474021978863024800

`A284624(n+1)+A060143(n)`
-/

namespace A188434.P16474021978863024800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284624 (n + 1) + A060143 n

end

end A188434.P16474021978863024800

namespace A188434

/-- `A284624(n+1)+A060143(n)` -/
def P16474021978863024800.Spec : Prop :=
  ∀ n, P16474021978863024800.a n = A188434 (n + 1)

theorem P16474021978863024800.correct : P16474021978863024800.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel, A188434.P16474021978863024800.a, A188434.P14872401721499474557.a, A060143, A060143.P4349736368293734599.a, A130568, A130568.P15557830323958427983.a, A284624, A284624.P10333445182018701270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188434

/-! ## A188434.P1115086425259996447

`A188012(n+1)-A026352(n)`
-/

namespace A188434.P1115086425259996447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188012 (n + 1) - A026352 n

end

end A188434.P1115086425259996447

namespace A188434

/-- `A188012(n+1)-A026352(n)` -/
def P1115086425259996447.Spec : Prop :=
  ∀ n, P1115086425259996447.a n = A188434 (n + 1)

theorem P1115086425259996447.correct : P1115086425259996447.Spec := by
  intro n
  simp only [A188434, Nat.add_sub_cancel, A188434.P1115086425259996447.a, A188434.P14872401721499474557.a, A026352, A026352.P12148226438592254033.a, A130568, A130568.P15557830323958427983.a, A188012, A188012.P704335326196897509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188434

/-! ## A188434.P14754839457178550601

`∪[A048575(n), A101868(n+1)]`
-/

namespace A188434.P14754839457178550601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188434.P14754839457178550601

namespace A188434

/-- `∪[A048575(n), A101868(n+1)]` -/
def P14754839457178550601.Spec : Prop :=
  ∀ n, (P14754839457178550601.a n : ℤ) = A188434 (n + 1)

end A188434

/-! ## A188434.P1686151730769449698

`∪[A101868(n+1), A109119(n)]`
-/

namespace A188434.P1686151730769449698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188434.P1686151730769449698

namespace A188434

/-- `∪[A101868(n+1), A109119(n)]` -/
def P1686151730769449698.Spec : Prop :=
  ∀ n, (P1686151730769449698.a n : ℤ) = A188434 (n + 1)

end A188434

/-! ## A188434.P9602574521499177522

`A188026(n+1)%A188012(n+1)`
-/

namespace A188434.P9602574521499177522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188026 (n + 1)) (A188012 (n + 1))

end

end A188434.P9602574521499177522

namespace A188434

/-- `A188026(n+1)%A188012(n+1)` -/
def P9602574521499177522.Spec : Prop :=
  ∀ n, P9602574521499177522.a n = A188434 (n + 1)

end A188434

/-! ## A188434.P11099442372020116598

`A188471(n+1)%A188012(n+1)`
-/

namespace A188434.P11099442372020116598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188471 (n + 1)) (A188012 (n + 1))

end

end A188434.P11099442372020116598

namespace A188434

/-- `A188471(n+1)%A188012(n+1)` -/
def P11099442372020116598.Spec : Prop :=
  ∀ n, P11099442372020116598.a n = A188434 (n + 1)

end A188434

/-!
# A188435: Positions of 1 in A188433; complement of A188434.

The programs for A188435, the canonical program `A188435.P2824334305626450135` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188435 has offset 1).

The definition of A188435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188435.P1910742172445491732

`ceil(∑[ϕ^(n%2)])`
-/

namespace A188435.P1910742172445491732
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188435.P1910742172445491732

namespace A188435

/-- `ceil(∑[ϕ^(n%2)])` -/
def P1910742172445491732.Spec : Prop :=
  ∀ n, P1910742172445491732.a n = A188435 (n + 1)

end A188435

/-! ## A188435.P15634910754435008285

`ceil(∑[ϕ^and(1, n)])`
-/

namespace A188435.P15634910754435008285
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188435.P15634910754435008285

namespace A188435

/-- `ceil(∑[ϕ^and(1, n)])` -/
def P15634910754435008285.Spec : Prop :=
  ∀ n, P15634910754435008285.a n = A188435 (n + 1)

end A188435

/-! ## A188435.P1368436570355763963

`ceil(∑[ϕ/a(n-1)])` with `a(0)=1`
-/

namespace A188435.P1368436570355763963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188435.P1368436570355763963

namespace A188435

/-- `ceil(∑[ϕ/a(n-1)])` -/
def P1368436570355763963.Spec : Prop :=
  ∀ n, P1368436570355763963.a n = A188435 (n + 1)

end A188435

/-! ## A188435.P10478186415227877292

`ceil(∑[ϕ^Δ[floor(n/2)]])`
-/

namespace A188435.P10478186415227877292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A188435.P10478186415227877292

namespace A188435

/-- `ceil(∑[ϕ^Δ[floor(n/2)]])` -/
def P10478186415227877292.Spec : Prop :=
  ∀ n, P10478186415227877292.a n = A188435 (n + 1)

end A188435

/-! ## A188435.P8474733473306465648

`comp[A276885(n+1)]+1`
-/

namespace A188435.P8474733473306465648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188435.P8474733473306465648

namespace A188435

/-- `comp[A276885(n+1)]+1` -/
def P8474733473306465648.Spec : Prop :=
  ∀ n, (P8474733473306465648.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P4144318146591579491

`comp[A047924(n)-2]+1`
-/

namespace A188435.P4144318146591579491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188435.P4144318146591579491

namespace A188435

/-- `comp[A047924(n)-2]+1` -/
def P4144318146591579491.Spec : Prop :=
  ∀ n, (P4144318146591579491.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P2824334305626450135

`A363057(n)+a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188435

/-- `A363057(n)+a(n-1)` -/
def P2824334305626450135.Spec : Prop :=
  ∀ n, P2824334305626450135.a n = A188435 (n + 1)

theorem P2824334305626450135.correct : P2824334305626450135.Spec := by
  intro n
  simp only [A188435, Nat.add_sub_cancel]

end A188435

/-! ## A188435.P11674734113268627768

`comp[A188434(n+1)-1]+1`
-/

namespace A188435.P11674734113268627768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188435.P11674734113268627768

namespace A188435

/-- `comp[A188434(n+1)-1]+1` -/
def P11674734113268627768.Spec : Prop :=
  ∀ n, (P11674734113268627768.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P4705628415894424345

`comp[A007066(A026351(n))]+1`
-/

namespace A188435.P4705628415894424345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (A026351 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188435.P4705628415894424345

namespace A188435

/-- `comp[A007066(A026351(n))]+1` -/
def P4705628415894424345.Spec : Prop :=
  ∀ n, (P4705628415894424345.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P7761792062977398372

`∪[A007066(n+1), A026352(n)]`
-/

namespace A188435.P7761792062977398372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188435.P7761792062977398372

namespace A188435

/-- `∪[A007066(n+1), A026352(n)]` -/
def P7761792062977398372.Spec : Prop :=
  ∀ n, (P7761792062977398372.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P7305666703286946145

`∪[A026356(n+2), A026352(n)]`
-/

namespace A188435.P7305666703286946145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188435.P7305666703286946145

namespace A188435

/-- `∪[A026356(n+2), A026352(n)]` -/
def P7305666703286946145.Spec : Prop :=
  ∀ n, (P7305666703286946145.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P9725938559371415591

`comp[A004956(comp[A004956(n+1)])]`
-/

namespace A188435.P9725938559371415591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188435.P9725938559371415591

namespace A188435

/-- `comp[A004956(comp[A004956(n+1)])]` -/
def P9725938559371415591.Spec : Prop :=
  ∀ n, (P9725938559371415591.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P10229135947715349177

`comp[A002251(comp[A026351(n+1)])]`
-/

namespace A188435.P10229135947715349177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188435.P10229135947715349177

namespace A188435

/-- `comp[A002251(comp[A026351(n+1)])]` -/
def P10229135947715349177.Spec : Prop :=
  ∀ n, (P10229135947715349177.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P17573182257470449951

`∪[A022413(n)-n, A026352(n)]`
-/

namespace A188435.P17573182257470449951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022413 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188435.P17573182257470449951

namespace A188435

/-- `∪[A022413(n)-n, A026352(n)]` -/
def P17573182257470449951.Spec : Prop :=
  ∀ n, (P17573182257470449951.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P6151847954178330795

`A188473(n+1)-A188016(n+1)`
-/

namespace A188435.P6151847954178330795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1) - A188016 (n + 1)

end

end A188435.P6151847954178330795

namespace A188435

/-- `A188473(n+1)-A188016(n+1)` -/
def P6151847954178330795.Spec : Prop :=
  ∀ n, P6151847954178330795.a n = A188435 (n + 1)

theorem P6151847954178330795.correct : P6151847954178330795.Spec := by
  intro n
  simp only [A188435, Nat.add_sub_cancel, A188435.P6151847954178330795.a, A188435.P2824334305626450135.a, A188016, A188016.P8834039496715161497.a, A188473, A188473.P2410951327315252382.a, A363057, A363057.P493503618799946074.a, A001468, A001468.P12360075344960480253.a, A110654, A110654.P360289776162656549.a, A142150, A142150.P17187063318547882225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188435

/-! ## A188435.P1463100114691150982

`A188030(n+1)%A188016(n+1)`
-/

namespace A188435.P1463100114691150982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188030 (n + 1)) (A188016 (n + 1))

end

end A188435.P1463100114691150982

namespace A188435

/-- `A188030(n+1)%A188016(n+1)` -/
def P1463100114691150982.Spec : Prop :=
  ∀ n, P1463100114691150982.a n = A188435 (n + 1)

end A188435

/-! ## A188435.P3407563933173998605

`∪[A000201(n+1), A007066(n+1)]`
-/

namespace A188435.P3407563933173998605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188435.P3407563933173998605

namespace A188435

/-- `∪[A000201(n+1), A007066(n+1)]` -/
def P3407563933173998605.Spec : Prop :=
  ∀ n, (P3407563933173998605.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P8954835659788404429

`∪[A005652(n+1), A007066(n+1)]`
-/

namespace A188435.P8954835659788404429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188435.P8954835659788404429

namespace A188435

/-- `∪[A005652(n+1), A007066(n+1)]` -/
def P8954835659788404429.Spec : Prop :=
  ∀ n, (P8954835659788404429.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P7238770163423222498

`∪[A007066(n+1), A187952(n+1)]`
-/

namespace A188435.P7238770163423222498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188435.P7238770163423222498

namespace A188435

/-- `∪[A007066(n+1), A187952(n+1)]` -/
def P7238770163423222498.Spec : Prop :=
  ∀ n, (P7238770163423222498.a n : ℤ) = A188435 (n + 1)

end A188435

/-! ## A188435.P16530199697335175002

`∪[A007066(n+1), A187953(n+1)]`
-/

namespace A188435.P16530199697335175002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188435.P16530199697335175002

namespace A188435

/-- `∪[A007066(n+1), A187953(n+1)]` -/
def P16530199697335175002.Spec : Prop :=
  ∀ n, (P16530199697335175002.a n : ℤ) = A188435 (n + 1)

end A188435

/-!
# A188436: [3r]-[nr]-[3r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

The programs for A188436, the canonical program `A188436.P14332046805831665438` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188436 has offset 1).

The definition of A188436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188436.P9692094682947000630

`Δ[floor(n/ϕ²)]*char[ceil(n*ϕ²)+1]`
-/

namespace A188436.P9692094682947000630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A188436.P9692094682947000630

namespace A188436

/-- `Δ[floor(n/ϕ²)]*char[ceil(n*ϕ²)+1]` -/
def P9692094682947000630.Spec : Prop :=
  ∀ n, P9692094682947000630.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P6208539542912166652

`char[A035337(n)+4]`
-/

namespace A188436.P6208539542912166652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P6208539542912166652

namespace A188436

/-- `char[A035337(n)+4]` -/
def P6208539542912166652.Spec : Prop :=
  ∀ n, (P6208539542912166652.a n : ℤ) = A188436 (n + 1)

end A188436

/-! ## A188436.P14332046805831665438

`val(A110006(n+1), 4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A188436

/-- `val(A110006(n+1), 4)` -/
def P14332046805831665438.Spec : Prop :=
  ∀ n, (P14332046805831665438.a n : ℤ) = A188436 (n + 1)

theorem P14332046805831665438.correct : P14332046805831665438.Spec := by
  intro n
  simp only [A188436, Nat.add_sub_cancel]

end A188436

/-! ## A188436.P13016895904329771390

`char[A101864(n+1)+2]`
-/

namespace A188436.P13016895904329771390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101864 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P13016895904329771390

namespace A188436

/-- `char[A101864(n+1)+2]` -/
def P13016895904329771390.Spec : Prop :=
  ∀ n, (P13016895904329771390.a n : ℤ) = A188436 (n + 1)

end A188436

/-! ## A188436.P18203330163442527566

`char[A188438(n+1)-1]`
-/

namespace A188436.P18203330163442527566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188438 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P18203330163442527566

namespace A188436

/-- `char[A188438(n+1)-1]` -/
def P18203330163442527566.Spec : Prop :=
  ∀ n, (P18203330163442527566.a n : ℤ) = A188436 (n + 1)

end A188436

/-! ## A188436.P11791179593326605946

`char[A134860(n+1)+3]`
-/

namespace A188436.P11791179593326605946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P11791179593326605946

namespace A188436

/-- `char[A134860(n+1)+3]` -/
def P11791179593326605946.Spec : Prop :=
  ∀ n, (P11791179593326605946.a n : ℤ) = A188436 (n + 1)

end A188436

/-! ## A188436.P9255131651837177104

`char[A188261(2*(n+1))+2]`
-/

namespace A188436.P9255131651837177104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188261 (2 * (n + 1)) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P9255131651837177104

namespace A188436

/-- `char[A188261(2*(n+1))+2]` -/
def P9255131651837177104.Spec : Prop :=
  ∀ n, (P9255131651837177104.a n : ℤ) = A188436 (n + 1)

end A188436

/-! ## A188436.P3468440947629075630

`char[A188473(2*(n+1))-1]`
-/

namespace A188436.P3468440947629075630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (2 * (n + 1)) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P3468440947629075630

namespace A188436

/-- `char[A188473(2*(n+1))-1]` -/
def P3468440947629075630.Spec : Prop :=
  ∀ n, (P3468440947629075630.a n : ℤ) = A188436 (n + 1)

end A188436

/-! ## A188436.P15234699514686155261

`A188009(∑[A005614(n)])`
-/

namespace A188436.P15234699514686155261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188436.P15234699514686155261

namespace A188436

/-- `A188009(∑[A005614(n)])` -/
def P15234699514686155261.Spec : Prop :=
  ∀ n, P15234699514686155261.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P6365025250101025808

`A188009(A005206(n+1))`
-/

namespace A188436.P6365025250101025808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A005206 (n + 1)).toNat

end

end A188436.P6365025250101025808

namespace A188436

/-- `A188009(A005206(n+1))` -/
def P6365025250101025808.Spec : Prop :=
  ∀ n, P6365025250101025808.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P14721451330823888907

`A188009(A135414(n+1))`
-/

namespace A188436.P14721451330823888907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188009 (A135414 (n + 1)).toNat

end

end A188436.P14721451330823888907

namespace A188436

/-- `A188009(A135414(n+1))` -/
def P14721451330823888907.Spec : Prop :=
  ∀ n, P14721451330823888907.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P4043269748915206751

`A123070(n)-A005206(n)`
-/

namespace A188436.P4043269748915206751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 n - A005206 n

end

end A188436.P4043269748915206751

namespace A188436

/-- `A123070(n)-A005206(n)` -/
def P4043269748915206751.Spec : Prop :=
  ∀ n, P4043269748915206751.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P13625992517845059760

`A381579(n)%A014675(n)`
-/

namespace A188436.P13625992517845059760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381579 n) (A014675 n)

end

end A188436.P13625992517845059760

namespace A188436

/-- `A381579(n)%A014675(n)` -/
def P13625992517845059760.Spec : Prop :=
  ∀ n, P13625992517845059760.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P11532450570672579725

`and(A005614(n), A381579(n))`
-/

namespace A188436.P11532450570672579725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005614 n) (A381579 n)

end

end A188436.P11532450570672579725

namespace A188436

/-- `and(A005614(n), A381579(n))` -/
def P11532450570672579725.Spec : Prop :=
  ∀ n, P11532450570672579725.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P465012876357960495

`and(A327174(n), A381579(n))`
-/

namespace A188436.P465012876357960495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327174 n) (A381579 n)

end

end A188436.P465012876357960495

namespace A188436

/-- `and(A327174(n), A381579(n))` -/
def P465012876357960495.Spec : Prop :=
  ∀ n, P465012876357960495.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P12771281884011504110

`and(A339824(n), A381579(n))`
-/

namespace A188436.P12771281884011504110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A339824 n) (A381579 n)

end

end A188436.P12771281884011504110

namespace A188436

/-- `and(A339824(n), A381579(n))` -/
def P12771281884011504110.Spec : Prop :=
  ∀ n, P12771281884011504110.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P8915194710942726229

`char[A004957(A004957(n))-1]`
-/

namespace A188436.P8915194710942726229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A004957 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P8915194710942726229

namespace A188436

/-- `char[A004957(A004957(n))-1]` -/
def P8915194710942726229.Spec : Prop :=
  ∀ n, (P8915194710942726229.a n : ℤ) = A188436 (n + 1)

end A188436

/-! ## A188436.P8490417071490438422

`A123070(n)-A060143(n+1)`
-/

namespace A188436.P8490417071490438422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 n - A060143 (n + 1)

end

end A188436.P8490417071490438422

namespace A188436

/-- `A123070(n)-A060143(n+1)` -/
def P8490417071490438422.Spec : Prop :=
  ∀ n, P8490417071490438422.a n = A188436 (n + 1)

end A188436

/-! ## A188436.P13367791704197315253

`char[A001950(∑[A076662(n+1)])]`
-/

namespace A188436.P13367791704197315253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076662 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188436.P13367791704197315253

namespace A188436

/-- `char[A001950(∑[A076662(n+1)])]` -/
def P13367791704197315253.Spec : Prop :=
  ∀ n, (P13367791704197315253.a n : ℤ) = A188436 (n + 1)

end A188436

/-!
# A188437: Positions of 0 in A188436; complement of A188438.

The programs for A188437, the canonical program `A188437.P11220334441447564748` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188437 has offset 1).

The definition of A188437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188437.P1527164938248521316

`comp[A004957(A004957(n))]`
-/

namespace A188437.P1527164938248521316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A004957 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188437.P1527164938248521316

namespace A188437

/-- `comp[A004957(A004957(n))]` -/
def P1527164938248521316.Spec : Prop :=
  ∀ n, (P1527164938248521316.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P11220334441447564748

`A005206(A188015(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A188437

/-- `A005206(A188015(n+1))` -/
def P11220334441447564748.Spec : Prop :=
  ∀ n, P11220334441447564748.a n = A188437 (n + 1)

theorem P11220334441447564748.correct : P11220334441447564748.Spec := by
  intro n
  simp only [A188437, Nat.add_sub_cancel]

end A188437

/-! ## A188437.P11121296777125222722

`∪[A026351(n), A047924(n)]`
-/

namespace A188437.P11121296777125222722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P11121296777125222722

namespace A188437

/-- `∪[A026351(n), A047924(n)]` -/
def P11121296777125222722.Spec : Prop :=
  ∀ n, (P11121296777125222722.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P4435209583342808572

`∪[A003233(n+1), A047924(n)]`
-/

namespace A188437.P4435209583342808572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P4435209583342808572

namespace A188437

/-- `∪[A003233(n+1), A047924(n)]` -/
def P4435209583342808572.Spec : Prop :=
  ∀ n, (P4435209583342808572.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P5199437776951997314

`∪[A000051(n), A188013(n+1)]`
-/

namespace A188437.P5199437776951997314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P5199437776951997314

namespace A188437

/-- `∪[A000051(n), A188013(n+1)]` -/
def P5199437776951997314.Spec : Prop :=
  ∀ n, (P5199437776951997314.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P16291710180574393613

`∪[A000648(n), A188013(n+1)]`
-/

namespace A188437.P16291710180574393613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P16291710180574393613

namespace A188437

/-- `∪[A000648(n), A188013(n+1)]` -/
def P16291710180574393613.Spec : Prop :=
  ∀ n, (P16291710180574393613.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P11273446595992545980

`∪[A000716(n), A188013(n+1)]`
-/

namespace A188437.P11273446595992545980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P11273446595992545980

namespace A188437

/-- `∪[A000716(n), A188013(n+1)]` -/
def P11273446595992545980.Spec : Prop :=
  ∀ n, (P11273446595992545980.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P11016612903026690448

`∪[A000998(n), A188013(n+1)]`
-/

namespace A188437.P11016612903026690448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P11016612903026690448

namespace A188437

/-- `∪[A000998(n), A188013(n+1)]` -/
def P11016612903026690448.Spec : Prop :=
  ∀ n, (P11016612903026690448.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P8691086181113867046

`∪[A001317(n), A188013(n+1)]`
-/

namespace A188437.P8691086181113867046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P8691086181113867046

namespace A188437

/-- `∪[A001317(n), A188013(n+1)]` -/
def P8691086181113867046.Spec : Prop :=
  ∀ n, (P8691086181113867046.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P2462153528635560996

`∪[A001550(n), A188013(n+1)]`
-/

namespace A188437.P2462153528635560996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P2462153528635560996

namespace A188437

/-- `∪[A001550(n), A188013(n+1)]` -/
def P2462153528635560996.Spec : Prop :=
  ∀ n, (P2462153528635560996.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P14624141865025337998

`comp[A007066(A007066(n+1))-1]`
-/

namespace A188437.P14624141865025337998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (A007066 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188437.P14624141865025337998

namespace A188437

/-- `comp[A007066(A007066(n+1))-1]` -/
def P14624141865025337998.Spec : Prop :=
  ∀ n, (P14624141865025337998.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P9407532840527086626

`∪[A188218(n+1), A026351(n)+2]`
-/

namespace A188437.P9407532840527086626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P9407532840527086626

namespace A188437

/-- `∪[A188218(n+1), A026351(n)+2]` -/
def P9407532840527086626.Spec : Prop :=
  ∀ n, (P9407532840527086626.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P3786378661800266821

`comp[A003623(n+2)*A114986(n+1)]`
-/

namespace A188437.P3786378661800266821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 2) * A114986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188437.P3786378661800266821

namespace A188437

/-- `comp[A003623(n+2)*A114986(n+1)]` -/
def P3786378661800266821.Spec : Prop :=
  ∀ n, (P3786378661800266821.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P8316277223008756394

`∪[A188468(n+1)-1, A188468(n+1)]`
-/

namespace A188437.P8316277223008756394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188437.P8316277223008756394

namespace A188437

/-- `∪[A188468(n+1)-1, A188468(n+1)]` -/
def P8316277223008756394.Spec : Prop :=
  ∀ n, (P8316277223008756394.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P5533128690199629465

`lt[A188436(n+1), 1]+1`
-/

namespace A188437.P5533128690199629465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188436 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A188437.P5533128690199629465

namespace A188437

/-- `lt[A188436(n+1), 1]+1` -/
def P5533128690199629465.Spec : Prop :=
  ∀ n, (P5533128690199629465.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P17481859956336828185

`eq[A188432(n+1), A188467(n+1)]`
-/

namespace A188437.P17481859956336828185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188437.P17481859956336828185

namespace A188437

/-- `eq[A188432(n+1), A188467(n+1)]` -/
def P17481859956336828185.Spec : Prop :=
  ∀ n, (P17481859956336828185.a n : ℤ) = A188437 (n + 1)

end A188437

/-! ## A188437.P18047756752092770393

`eq[A188470(A001950(n+2)), A188470(n+2)]`
-/

namespace A188437.P18047756752092770393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (A001950 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188437.P18047756752092770393

namespace A188437

/-- `eq[A188470(A001950(n+2)), A188470(n+2)]` -/
def P18047756752092770393.Spec : Prop :=
  ∀ n, (P18047756752092770393.a n : ℤ) = A188437 (n + 1)

end A188437

/-!
# A188438: Positions of 1 in A188436; complement of A188437.

The programs for A188438, the canonical program `A188438.P14117179169218268139` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188438 has offset 1).

The definition of A188438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188438.P14117179169218268139

`A188012(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188438

/-- `A188012(n+2)` -/
def P14117179169218268139.Spec : Prop :=
  ∀ n, P14117179169218268139.a n = A188438 (n + 1)

theorem P14117179169218268139.correct : P14117179169218268139.Spec := by
  intro n
  simp only [A188438, Nat.add_sub_cancel]

end A188438

/-! ## A188438.P16778845123332424081

`∑[Δ[ceil(ϕ*n)]²+4]`
-/

namespace A188438.P16778845123332424081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188438.P16778845123332424081

namespace A188438

/-- `∑[Δ[ceil(ϕ*n)]²+4]` -/
def P16778845123332424081.Spec : Prop :=
  ∀ n, P16778845123332424081.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P15796068502204995470

`∑[xor(5, Δ[floor(ϕ*n)])]+n+4`
-/

namespace A188438.P15796068502204995470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ) + 4

end

end A188438.P15796068502204995470

namespace A188438

/-- `∑[xor(5, Δ[floor(ϕ*n)])]+n+4` -/
def P15796068502204995470.Spec : Prop :=
  ∀ n, P15796068502204995470.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P320647458660428615

`A035337(n)+5`
-/

namespace A188438.P320647458660428615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n + 5

end

end A188438.P320647458660428615

namespace A188438

/-- `A035337(n)+5` -/
def P320647458660428615.Spec : Prop :=
  ∀ n, P320647458660428615.a n = A188438 (n + 1)

theorem P320647458660428615.correct : P320647458660428615.Spec := by
  intro n
  simp only [A188438, Nat.add_sub_cancel, A188438.P320647458660428615.a, A188438.P14117179169218268139.a, A035337, A035337.P15658283184296275475.a, A188012, A188012.P704335326196897509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188438

/-! ## A188438.P3066606225523817614

`A134860(n+1)+4`
-/

namespace A188438.P3066606225523817614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134860 (n + 1) + 4

end

end A188438.P3066606225523817614

namespace A188438

/-- `A134860(n+1)+4` -/
def P3066606225523817614.Spec : Prop :=
  ∀ n, P3066606225523817614.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P1045630379704581692

`A134861(n+1)+6`
-/

namespace A188438.P1045630379704581692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134861 (n + 1) + 6

end

end A188438.P1045630379704581692

namespace A188438

/-- `A134861(n+1)+6` -/
def P1045630379704581692.Spec : Prop :=
  ∀ n, P1045630379704581692.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P6818989849057809640

`A151915(n+1)+7`
-/

namespace A188438.P6818989849057809640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151915 (n + 1) + 7

end

end A188438.P6818989849057809640

namespace A188438

/-- `A151915(n+1)+7` -/
def P6818989849057809640.Spec : Prop :=
  ∀ n, P6818989849057809640.a n = A188438 (n + 1)

theorem P6818989849057809640.correct : P6818989849057809640.Spec := by
  intro n
  simp only [A188438, Nat.add_sub_cancel, A188438.P6818989849057809640.a, A188438.P14117179169218268139.a, A151915, A151915.P9233811335574019184.a, A188012, A188012.P704335326196897509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188438

/-! ## A188438.P5122352835300887806

`A342089(n+1)+3+n`
-/

namespace A188438.P5122352835300887806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342089 (n + 1) + 3 + (n : ℤ)

end

end A188438.P5122352835300887806

namespace A188438

/-- `A342089(n+1)+3+n` -/
def P5122352835300887806.Spec : Prop :=
  ∀ n, P5122352835300887806.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P16074374292523570023

`A190509(n+1)+4+n`
-/

namespace A188438.P16074374292523570023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190509 (n + 1) + 4 + (n : ℤ)

end

end A188438.P16074374292523570023

namespace A188438

/-- `A190509(n+1)+4+n` -/
def P16074374292523570023.Spec : Prop :=
  ∀ n, P16074374292523570023.a n = A188438 (n + 1)

theorem P16074374292523570023.correct : P16074374292523570023.Spec := by
  intro n
  simp only [A188438, Nat.add_sub_cancel, A188438.P16074374292523570023.a, A188438.P14117179169218268139.a, A188012, A188012.P704335326196897509.a, A190509, A190509.P7971340745216951110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188438

/-! ## A188438.P4569930935099826633

`A285683(n+1)+3*(n+1)`
-/

namespace A188438.P4569930935099826633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285683 (n + 1) + (3 * (n + 1) : ℤ)

end

end A188438.P4569930935099826633

namespace A188438

/-- `A285683(n+1)+3*(n+1)` -/
def P4569930935099826633.Spec : Prop :=
  ∀ n, P4569930935099826633.a n = A188438 (n + 1)

theorem P4569930935099826633.correct : P4569930935099826633.Spec := by
  intro n
  simp only [A188438, Nat.add_sub_cancel, A188438.P4569930935099826633.a, A188438.P14117179169218268139.a, A188012, A188012.P704335326196897509.a, A285683, A285683.P17113377719585639889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188438

/-! ## A188438.P11503323922155296501

`3*A004957(n+1)-(n+1)`
-/

namespace A188438.P11503323922155296501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004957 (n + 1) - (n + 1 : ℤ)

end

end A188438.P11503323922155296501

namespace A188438

/-- `3*A004957(n+1)-(n+1)` -/
def P11503323922155296501.Spec : Prop :=
  ∀ n, P11503323922155296501.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P9715717830617520908

`A284396(n+1)+2*n+3`
-/

namespace A188438.P9715717830617520908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284396 (n + 1) + (2 * n + 3 : ℤ)

end

end A188438.P9715717830617520908

namespace A188438

/-- `A284396(n+1)+2*n+3` -/
def P9715717830617520908.Spec : Prop :=
  ∀ n, P9715717830617520908.a n = A188438 (n + 1)

theorem P9715717830617520908.correct : P9715717830617520908.Spec := by
  intro n
  simp only [A188438, Nat.add_sub_cancel, A188438.P9715717830617520908.a, A188438.P14117179169218268139.a, A188012, A188012.P704335326196897509.a, A284396, A284396.P12542191544531326745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188438

/-! ## A188438.P11091780561698134413

`3*A001950(n+1)-(n-2)`
-/

namespace A188438.P11091780561698134413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001950 (n + 1) - ((n : ℤ) - 2)

end

end A188438.P11091780561698134413

namespace A188438

/-- `3*A001950(n+1)-(n-2)` -/
def P11091780561698134413.Spec : Prop :=
  ∀ n, P11091780561698134413.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P1812185859148820188

`3*∑[A000040(Δ[ceil(ϕ*n)])]-(n+1)`
-/

namespace A188438.P1812185859148820188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n + 1 : ℤ)

end

end A188438.P1812185859148820188

namespace A188438

/-- `3*∑[A000040(Δ[ceil(ϕ*n)])]-(n+1)` -/
def P1812185859148820188.Spec : Prop :=
  ∀ n, P1812185859148820188.a n = A188438 (n + 1)

end A188438

/-! ## A188438.P3637348744321509614

`A190509(n+1)+A020705(n)`
-/

namespace A188438.P3637348744321509614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190509 (n + 1) + A020705 n

end

end A188438.P3637348744321509614

namespace A188438

/-- `A190509(n+1)+A020705(n)` -/
def P3637348744321509614.Spec : Prop :=
  ∀ n, P3637348744321509614.a n = A188438 (n + 1)

theorem P3637348744321509614.correct : P3637348744321509614.Spec := by
  intro n
  simp only [A188438, Nat.add_sub_cancel, A188438.P3637348744321509614.a, A188438.P14117179169218268139.a, A020705, A020705.P1213730512334166827.a, A188012, A188012.P704335326196897509.a, A190509, A190509.P7971340745216951110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A188438

/-! ## A188438.P471790160381732554

`∪[A003249(n+1), A047925(n)]`
-/

namespace A188438.P471790160381732554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047925 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188438.P471790160381732554

namespace A188438

/-- `∪[A003249(n+1), A047925(n)]` -/
def P471790160381732554.Spec : Prop :=
  ∀ n, (P471790160381732554.a n : ℤ) = A188438 (n + 1)

end A188438

/-! ## A188438.P11566675048247428884

`∪[A188026(n+1), A047925(n)]`
-/

namespace A188438.P11566675048247428884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047925 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188438.P11566675048247428884

namespace A188438

/-- `∪[A188026(n+1), A047925(n)]` -/
def P11566675048247428884.Spec : Prop :=
  ∀ n, (P11566675048247428884.a n : ℤ) = A188438 (n + 1)

end A188438

/-! ## A188438.P6691298773756609740

`∪[A190456(n+1), A047925(n)]`
-/

namespace A188438.P6691298773756609740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047925 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188438.P6691298773756609740

namespace A188438

/-- `∪[A190456(n+1), A047925(n)]` -/
def P6691298773756609740.Spec : Prop :=
  ∀ n, (P6691298773756609740.a n : ℤ) = A188438 (n + 1)

end A188438

/-! ## A188438.P15012023464763054283

`∪[A302253(n+1), A047925(n)]`
-/

namespace A188438.P15012023464763054283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047925 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188438.P15012023464763054283

namespace A188438

/-- `∪[A302253(n+1), A047925(n)]` -/
def P15012023464763054283.Spec : Prop :=
  ∀ n, (P15012023464763054283.a n : ℤ) = A188438 (n + 1)

end A188438

/-! ## A188438.P2253610775472467303

`A101870(n+1)-A101868(n+1)`
-/

namespace A188438.P2253610775472467303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (n + 1) - A101868 (n + 1)

end

end A188438.P2253610775472467303

namespace A188438

/-- `A101870(n+1)-A101868(n+1)` -/
def P2253610775472467303.Spec : Prop :=
  ∀ n, P2253610775472467303.a n = A188438 (n + 1)

end A188438

/-!
# A188439: Irregular triangle of odd primitive abundant numbers (A006038) in which row n has numbers with n distinct prime factors.

The programs for A188439, there is no canonical definition to state claims against.
-/

/-! ## A188439.P12260913431247917003

`A316116(A157100(n))`
-/

namespace A188439.P12260913431247917003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316116 (A157100 n).toNat

end

end A188439.P12260913431247917003

/-!
# A188440: Triangle T(n,k) read by rows: number of size-k antisymmetric subsets of {1,2,...,n}.

The programs for A188440, the canonical program `A188440.P17541006003015622244` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188440 has offset 0).

The definition of A188440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188440.P8759395031233920148

`A013609(n-∑[A037213(n)])`
-/

namespace A188440.P8759395031233920148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188440.P8759395031233920148

namespace A188440

/-- `A013609(n-∑[A037213(n)])` -/
def P8759395031233920148.Spec : Prop :=
  ∀ n, P8759395031233920148.a n = A188440 n

end A188440

/-! ## A188440.P17541006003015622244

`A013609((A196199(n)+n)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188440

/-- `A013609((A196199(n)+n)/2)` -/
def P17541006003015622244.Spec : Prop :=
  ∀ n, P17541006003015622244.a n = A188440 n

theorem P17541006003015622244.correct : P17541006003015622244.Spec := by
  intro n
  simp only [A188440]

end A188440

/-! ## A188440.P10662962233873203976

`A013609(n-A000217(A000196(n)))`
-/

namespace A188440.P10662962233873203976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 ((n : ℤ) - A000217 (A000196 n).toNat).toNat

end

end A188440.P10662962233873203976

namespace A188440

/-- `A013609(n-A000217(A000196(n)))` -/
def P10662962233873203976.Spec : Prop :=
  ∀ n, P10662962233873203976.a n = A188440 n

end A188440

/-! ## A188440.P10101087153526715208

`A013609(A255527(n+1)-A232091(n))`
-/

namespace A188440.P10101087153526715208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A255527 (n + 1) - A232091 n).toNat

end

end A188440.P10101087153526715208

namespace A188440

/-- `A013609(A255527(n+1)-A232091(n))` -/
def P10101087153526715208.Spec : Prop :=
  ∀ n, P10101087153526715208.a n = A188440 n

end A188440

/-! ## A188440.P12937331769537607333

`A128099(n)/A011973(n)*A152198(n)`
-/

namespace A188440.P12937331769537607333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128099 n : ℚ) / (A011973 n : ℚ) * (A152198 n : ℚ)

end

end A188440.P12937331769537607333

namespace A188440

/-- `A128099(n)/A011973(n)*A152198(n)` -/
def P12937331769537607333.Spec : Prop :=
  ∀ n, P12937331769537607333.a n = (A188440 n : ℚ)

end A188440

/-! ## A188440.P3457990392199376719

`A013609(A004526(A196199(n)+n))`
-/

namespace A188440.P3457990392199376719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A004526 (A196199 n + (n : ℤ)).toNat).toNat

end

end A188440.P3457990392199376719

namespace A188440

/-- `A013609(A004526(A196199(n)+n))` -/
def P3457990392199376719.Spec : Prop :=
  ∀ n, P3457990392199376719.a n = A188440 n

end A188440

/-! ## A188440.P14631092117604456229

`A157751(A091018(n))`
-/

namespace A188440.P14631092117604456229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157751 (A091018 n).toNat

end

end A188440.P14631092117604456229

namespace A188440

/-- `A157751(A091018(n))` -/
def P14631092117604456229.Spec : Prop :=
  ∀ n, P14631092117604456229.a n = A188440 n

end A188440

/-! ## A188440.P8515381964422439204

`gcd(A059344(n), A274496(n))`
-/

namespace A188440.P8515381964422439204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059344 n) (A274496 n)

end

end A188440.P8515381964422439204

namespace A188440

/-- `gcd(A059344(n), A274496(n))` -/
def P8515381964422439204.Spec : Prop :=
  ∀ n, (P8515381964422439204.a n : ℤ) = A188440 n

end A188440

/-!
# A188441: Partial sums of binomial(2n,n)*binomial(3n,n) (A006480).

The programs for A188441, there is no canonical definition to state claims against.
-/

/-! ## A188441.P3616523227262592413

`∑[C(2*n, n)*C(3*n, n)]`
-/

namespace A188441.P3616523227262592413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) n * Nat.choose (3 * n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P3616523227262592413

/-! ## A188441.P3676468420608508035

`a(n-1)+C(3*n, n)*C(2*n, n)` with `a(0)=1`
-/

namespace A188441.P3676468420608508035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (3 * n) n * Nat.choose (2 * n) n

end

end A188441.P3676468420608508035

/-! ## A188441.P9337016401787629000

`∑[A006480(n)]`
-/

namespace A188441.P9337016401787629000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P9337016401787629000

/-! ## A188441.P16635679719411968501

`∑[A022916(3*n)]`
-/

namespace A188441.P16635679719411968501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022916 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P16635679719411968501

/-! ## A188441.P667019891834699475

`∑[record[abs(A245086(n))]]`
-/

namespace A188441.P667019891834699475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245086 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P667019891834699475

/-! ## A188441.P3140394240070421545

`∑[abs(A245086(2*n))]`
-/

namespace A188441.P3140394240070421545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245086 (2 * n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P3140394240070421545

/-! ## A188441.P9955828651756240244

`∑[(n+1)*A007004(n)]`
-/

namespace A188441.P9955828651756240244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P9955828651756240244

/-! ## A188441.P16343780263852587753

`∑[∑[n+1]*A324151(n)]`
-/

namespace A188441.P16343780263852587753
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A324151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P16343780263852587753

/-! ## A188441.P16050603449827227095

`A338075(n)+a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A188441.P16050603449827227095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A338075 n + a (n - 2)

end

end A188441.P16050603449827227095

/-! ## A188441.P4978790757649456312

`∑[C(2*n, n)*A005809(n)]`
-/

namespace A188441.P4978790757649456312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A005809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188441.P4978790757649456312

/-!
# A188442: Expansion of -(sqrt(-3*x^2-2*x+1)-x-1)/(2*sqrt(-3*x^2-2*x+1)+2*x).

The programs for A188442, there is no canonical definition to state claims against.
-/

/-! ## A188442.P9458750015198159105

`A219314(round(sqrt(n²+1))-1)+A219314(n)`
-/

namespace A188442.P9458750015198159105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219314 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat + A219314 n

end

end A188442.P9458750015198159105

/-! ## A188442.P9857714902927903296

`A308547(A000244(n))-A138766(n+1)`
-/

namespace A188442.P9857714902927903296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308547 (A000244 n).toNat - A138766 (n + 1)

end

end A188442.P9857714902927903296

/-! ## A188442.P6747743171940003594

`A153883(A014267(n))`
-/

namespace A188442.P6747743171940003594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A014267 n).toNat

end

end A188442.P6747743171940003594

/-! ## A188442.P3859494794875131525

`A153883(A318799(n))`
-/

namespace A188442.P3859494794875131525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A318799 n).toNat

end

end A188442.P3859494794875131525

/-!
# A188444: Expansion of (1+x)*(1+x+x^2)*(1-x+x^2-4*x+x^4-x^5+x^6)/(1+x^4)^3.

The programs for A188444, the canonical program `A188444.P7926289700034162482` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188444 has offset 0).

The definition of A188444 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188444.P7926289700034162482

`ogf((1+x+x^2-3x^3-6x^4-6x^5-3x^6+x^7+x^8+x^9)/(1+3x^4+3x^8+x^12))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188444

/-- `ogf((1+x+x^2-3x^3-6x^4-6x^5-3x^6+x^7+x^8+x^9)/(1+3x^4+3x^8+x^12))` -/
def P7926289700034162482.Spec : Prop :=
  ∀ n, P7926289700034162482.a n = A188444 n

theorem P7926289700034162482.correct : P7926289700034162482.Spec := by
  intro n
  simp only [A188444]

end A188444

/-!
# A188445: T(n,k) is the number of (n*k) X k binary arrays with nonzero rows in decreasing order and n ones in every column.

The programs for A188445, there is no canonical definition to state claims against.
-/

/-! ## A188445.P8610467244167319617

`A318361(A182944(n+1))`
-/

namespace A188445.P8610467244167319617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (A182944 (n + 1)).toNat

end

end A188445.P8610467244167319617

/-! ## A188445.P9956328723558897560

`A318361(A037126(n+1)^A004736(n+1))`
-/

namespace A188445.P9956328723558897560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A004736 (n + 1) : ℤ))).toNat

end

end A188445.P9956328723558897560

/-! ## A188445.P14006075879261098202

`A318361(A037126(n+1)^(A025581(n)+1))`
-/

namespace A188445.P14006075879261098202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (SequenceMachineLib.roundAway ((A037126 (n + 1) : ℚ) ^ (A025581 n + 1 : ℤ))).toNat

end

end A188445.P14006075879261098202

/-! ## A188445.P13484309516762791462

`floor(A306202(A349934(n+1))/A080504(n+1))`
-/

namespace A188445.P13484309516762791462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A306202 (A349934 (n + 1)).toNat : ℚ) / (A080504 (n + 1) : ℚ)⌋

end

end A188445.P13484309516762791462

/-!
# A188446: Number of (4*n) X n binary arrays with nonzero rows in decreasing order and 4 ones in every column.

The programs for A188446, there is no canonical definition to state claims against.
-/

/-! ## A188446.P12125018101065907305

`A188445(A167614(n+1)+A158388(n))`
-/

namespace A188446.P12125018101065907305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A167614 (n + 1) + A158388 n).toNat

end

end A188446.P12125018101065907305

/-! ## A188446.P10855723227255619232

`A188445(A145018(n+3)%A215609(n))`
-/

namespace A188446.P10855723227255619232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (Int.tmod (A145018 (n + 3)) (A215609 n)).toNat

end

end A188446.P10855723227255619232

/-! ## A188446.P15345004678702179701

`A188445(A340266(n+1)+A036452(n+1))`
-/

namespace A188446.P15345004678702179701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A340266 (n + 1) + A036452 (n + 1)).toNat

end

end A188446.P15345004678702179701

/-! ## A188446.P10071060290468371062

`A188445(A167614(n+1)-A153881(n+1))`
-/

namespace A188446.P10071060290468371062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A167614 (n + 1) - A153881 (n + 1)).toNat

end

end A188446.P10071060290468371062

/-!
# A188447: Number of (5*n) X n binary arrays with nonzero rows in decreasing order and 5 ones in every column.

The programs for A188447, there is no canonical definition to state claims against.
-/

/-! ## A188447.P1415924202700994190

`A188445(A167499(n+2)%A055589(n+2))`
-/

namespace A188447.P1415924202700994190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (Int.tmod (A167499 (n + 2)) (A055589 (n + 2))).toNat

end

end A188447.P1415924202700994190

/-! ## A188447.P7858845556539824739

`A188445(A024629(n)+A093694(n)-A096541(n))`
-/

namespace A188447.P7858845556539824739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188445 (A024629 n + (A093694 n - A096541 n)).toNat

end

end A188447.P7858845556539824739

/-!
# A188450: Number of (2*n)Xn binary arrays with nonzero rows in decreasing order, no more than 3 ones in any row and exactly 2 ones in every column.

The programs for A188450, there is no canonical definition to state claims against.
-/

/-! ## A188450.P1273633363952690036

`A188449(∑[n+1]+2)`
-/

namespace A188450.P1273633363952690036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188450.P1273633363952690036

/-! ## A188450.P4016232154162091633

`record[A188449(n+3)/A215065(n)]`
-/

namespace A188450.P4016232154162091633
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188449 (n + 3) : ℚ) / (A215065 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188450.P4016232154162091633

/-!
# A188451: Number of (3*n)Xn binary arrays with nonzero rows in decreasing order, no more than 3 ones in any row and exactly 3 ones in every column.

The programs for A188451, there is no canonical definition to state claims against.
-/

/-! ## A188451.P4815199312139474557

`A188449(∑[n+2]+4)`
-/

namespace A188451.P4815199312139474557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A188451.P4815199312139474557

/-! ## A188451.P3554348546679613322

`A188449(A167614(n+1))+A025469(n)`
-/

namespace A188451.P3554348546679613322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A167614 (n + 1)).toNat + A025469 n

end

end A188451.P3554348546679613322

/-! ## A188451.P5246474242652113318

`A188449(A167614(n+1))+A059995(n)`
-/

namespace A188451.P5246474242652113318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A167614 (n + 1)).toNat + A059995 n

end

end A188451.P5246474242652113318

/-! ## A188451.P4377092647913317241

`A188449(A167614(n+1))+A105519(n)`
-/

namespace A188451.P4377092647913317241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A167614 (n + 1)).toNat + A105519 n

end

end A188451.P4377092647913317241

/-! ## A188451.P4330741437508557568

`A188449(A167614(n+1))+A185246(n)`
-/

namespace A188451.P4330741437508557568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A167614 (n + 1)).toNat + A185246 n

end

end A188451.P4330741437508557568

/-!
# A188452: Number of (4*n)Xn binary arrays with nonzero rows in decreasing order, no more than 3 ones in any row and exactly 4 ones in every column.

The programs for A188452, there is no canonical definition to state claims against.
-/

/-! ## A188452.P6549470992888751366

`A188449(A141214(n)+7)`
-/

namespace A188452.P6549470992888751366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A141214 n + 7).toNat

end

end A188452.P6549470992888751366

/-! ## A188452.P13012924265856076792

`A188449(A052905(n)+9)`
-/

namespace A188452.P13012924265856076792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A052905 n + 9).toNat

end

end A188452.P13012924265856076792

/-! ## A188452.P9466159589251622369

`A188449(A055999(n)+10)`
-/

namespace A188452.P9466159589251622369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A055999 n + 10).toNat

end

end A188452.P9466159589251622369

/-! ## A188452.P7642604786234311239

`A188449(eq[5, A066657(n)])`
-/

namespace A188452.P7642604786234311239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188452.P7642604786234311239

/-! ## A188452.P13226944706273420302

`A188449(Δ[A008778(n)]+6)`
-/

namespace A188452.P13226944706273420302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (f1 (n + 1) - f1 n + 6).toNat

end

end A188452.P13226944706273420302

/-!
# A188453: Number of (5*n)Xn binary arrays with nonzero rows in decreasing order, no more than 3 ones in any row and exactly 5 ones in every column.

The programs for A188453, there is no canonical definition to state claims against.
-/

/-! ## A188453.P11500475327689484263

`A188449(A167499(n+3))`
-/

namespace A188453.P11500475327689484263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A167499 (n + 3)).toNat

end

end A188453.P11500475327689484263

/-! ## A188453.P18025711533602452525

`A188449(A155212(n)+13)`
-/

namespace A188453.P18025711533602452525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A155212 n + 13).toNat

end

end A188453.P18025711533602452525

/-! ## A188453.P9224788701310406683

`A188449(A056000(n)+15)`
-/

namespace A188453.P9224788701310406683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (A056000 n + 15).toNat

end

end A188453.P9224788701310406683

/-! ## A188453.P14139501531064934697

`A188449(eq[7, A066657(n)])`
-/

namespace A188453.P14139501531064934697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188449 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A188453.P14139501531064934697

/-!
# A188454: Numbers n whose decimal digits are distinct and no digit divides n.

The programs for A188454, there is no canonical definition to state claims against.
-/

/-! ## A188454.P11040836735977409215

`∩[A010784(n+1), A038772(n+1)]`
-/

namespace A188454.P11040836735977409215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188454.P11040836735977409215

/-! ## A188454.P1823940274084254942

`record[A137564(A038772(n+1))]`
-/

namespace A188454.P1823940274084254942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A038772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188454.P1823940274084254942

/-! ## A188454.P12175001662159802087

`filter[A038772(n+1), A178788(#)]`
-/

namespace A188454.P12175001662159802087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A188454.P12175001662159802087

/-! ## A188454.P7300423156352012956

`lt[A038769(A028310(n)), A178788(n)]`
-/

namespace A188454.P7300423156352012956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038769 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188454.P7300423156352012956

/-!
# A188455: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1 + 2^n*x)^(2*n+1).

The programs for A188455, there is no canonical definition to state claims against.
-/

/-! ## A188455.P619625077434708858

`or(4, A108974(a(n-1)+2))` with `a(0)=1, a(1)=1`
-/

namespace A188455.P619625077434708858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 4 (A108974 (a (n - 1) + 2).toNat)

end

end A188455.P619625077434708858

/-!
# A188456: G.f.: 1 = Sum_{n>=0} a(n)*x^n*(1 - 2^n*x)^(n+1).

The programs for A188456, there is no canonical definition to state claims against.
-/

/-! ## A188456.P10354621676583435126

`A179472(n+1)/2^n`
-/

namespace A188456.P10354621676583435126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179472 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A188456.P10354621676583435126

/-!
# A188457: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1 + 3^n*x)^(n+1).

The programs for A188457, there is no canonical definition to state claims against.
-/

/-! ## A188457.P3558866886829727786

`A339768(∑[n+3])`
-/

namespace A188457.P3558866886829727786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339768 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188457.P3558866886829727786

/-! ## A188457.P8311392975054003412

`or(1, A339768(A141214(n)))`
-/

namespace A188457.P8311392975054003412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A339768 (A141214 n).toNat)

end

end A188457.P8311392975054003412

/-! ## A188457.P9769239533763549214

`gcd(A000038(n), A339768(A141214(n)))`
-/

namespace A188457.P9769239533763549214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A339768 (A141214 n).toNat)

end

end A188457.P9769239533763549214

/-! ## A188457.P14625137744774818465

`lcm(A033999(n), A339768(A141214(n)))`
-/

namespace A188457.P14625137744774818465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A339768 (A141214 n).toNat)

end

end A188457.P14625137744774818465

/-! ## A188457.P575879727247033763

`A033999(6*n+2)*A339768(A141214(n))`
-/

namespace A188457.P575879727247033763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (6 * n + 2) * A339768 (A141214 n).toNat

end

end A188457.P575879727247033763

/-!
# A188458: Expansion of e.g.f. exp(x)/cosh(2*x).

The programs for A188458, there is no canonical definition to state claims against.
-/

/-! ## A188458.P1011962490338875426

`(-1)^n*A212435(n)`
-/

namespace A188458.P1011962490338875426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A212435 n

end

end A188458.P1011962490338875426

/-! ## A188458.P1954506504260420753

`(xor(2, n)-n+1)%2*A001586(n)`
-/

namespace A188458.P1954506504260420753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.xor 2 n : ℤ) - (n : ℤ) + 1) 2 * A001586 n

end

end A188458.P1954506504260420753

/-! ## A188458.P5761150241355789321

`A001586(n)*A057077(n)`
-/

namespace A188458.P5761150241355789321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A057077 n

end

end A188458.P5761150241355789321

/-! ## A188458.P10432790875626794256

`abs(A212435(n))*A057077(n)`
-/

namespace A188458.P10432790875626794256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A212435 n| * A057077 n

end

end A188458.P10432790875626794256

/-! ## A188458.P5368184232241510281

`A212435(n)/A057077(2*n)`
-/

namespace A188458.P5368184232241510281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212435 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A188458.P5368184232241510281

/-! ## A188458.P2716792553351130366

`A001586(n)*A033999(A000096(n))`
-/

namespace A188458.P2716792553351130366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A033999 (A000096 n).toNat

end

end A188458.P2716792553351130366

/-! ## A188458.P6215673963897722976

`A001586(n)*A033999(A004526(n))`
-/

namespace A188458.P6215673963897722976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001586 n * A033999 (A004526 n).toNat

end

end A188458.P6215673963897722976

/-! ## A188458.P8197128307212520050

`A001586(n)/A057077(A004442(n))`
-/

namespace A188458.P8197128307212520050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001586 n : ℚ) / (A057077 (A004442 n).toNat : ℚ)

end

end A188458.P8197128307212520050

/-! ## A188458.P883828663632533529

`A001586(n)/A057077(A028310(n))`
-/

namespace A188458.P883828663632533529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001586 n : ℚ) / (A057077 (A028310 n).toNat : ℚ)

end

end A188458.P883828663632533529

/-! ## A188458.P15223051211404010716

`A001586(n)/A057077(A109613(n))`
-/

namespace A188458.P15223051211404010716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001586 n : ℚ) / (A057077 (A109613 n).toNat : ℚ)

end

end A188458.P15223051211404010716

/-!
# A188459: Numbers k such that 4*k^2 + 4*k + 653 is a prime.

The programs for A188459, there is no canonical definition to state claims against.
-/

/-! ## A188459.P395784444217763008

`comp[A241267(n+1)]`
-/

namespace A188459.P395784444217763008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A188459.P395784444217763008

/-! ## A188459.P1363257088743936036

`lt[A328620(A357643(n)), A000005(2*n+5)]`
-/

namespace A188459.P1363257088743936036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A357643 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188459.P1363257088743936036

/-! ## A188459.P16779305772910243323

`A057605(n+3)-A001227(A060329(3*(n+1)))`
-/

namespace A188459.P16779305772910243323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057605 (n + 3) - A001227 (A060329 (3 * (n + 1))).toNat

end

end A188459.P16779305772910243323

/-! ## A188459.P5531700656920310490

`lt[A258445(A191736(n+1)), A336852(2*n+5)]`
-/

namespace A188459.P5531700656920310490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258445 (A191736 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336852 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A188459.P5531700656920310490

/-! ## A188459.P12770635592777837203

`lt[Δ[A005846(2*(n+2))], A003327(2*n+5)]`
-/

namespace A188459.P12770635592777837203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003327 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A188459.P12770635592777837203

/-!
# A188460: Diagonal sums of number triangle A119308.

The programs for A188460, the canonical program `A188460.P13322945824442626242` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188460 has offset 0).

The definition of A188460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188460.P8466221564833624978

`∑[A097779(n+3)]`
-/

namespace A188460.P8466221564833624978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097779 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188460.P8466221564833624978

namespace A188460

/-- `∑[A097779(n+3)]` -/
def P8466221564833624978.Spec : Prop :=
  ∀ n, P8466221564833624978.a n = A188460 n

end A188460

/-! ## A188460.P13322945824442626242

`A089735(n+1)-A292460(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A188460

/-- `A089735(n+1)-A292460(n)` -/
def P13322945824442626242.Spec : Prop :=
  ∀ n, P13322945824442626242.a n = A188460 n

theorem P13322945824442626242.correct : P13322945824442626242.Spec := by
  intro n
  simp only [A188460]

end A188460

/-! ## A188460.P17960746159430923374

`A089735(n+1)-A004148(n+1)`
-/

namespace A188460.P17960746159430923374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089735 (n + 1) - A004148 (n + 1)

end

end A188460.P17960746159430923374

namespace A188460

/-- `A089735(n+1)-A004148(n+1)` -/
def P17960746159430923374.Spec : Prop :=
  ∀ n, P17960746159430923374.a n = A188460 n

end A188460

/-! ## A188460.P15809754026310602142

`A166297(n+2)+A004148(n+1)`
-/

namespace A188460.P15809754026310602142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166297 (n + 2) + A004148 (n + 1)

end

end A188460.P15809754026310602142

namespace A188460

/-- `A166297(n+2)+A004148(n+1)` -/
def P15809754026310602142.Spec : Prop :=
  ∀ n, P15809754026310602142.a n = A188460 n

end A188460

/-! ## A188460.P6653314328011374468

`A089735(n)-(A292460(n)-Δ[A089735(n)])`
-/

namespace A188460.P6653314328011374468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089735 n - (A292460 n - (f1 (n + 1) - f1 n))

end

end A188460.P6653314328011374468

namespace A188460

/-- `A089735(n)-(A292460(n)-Δ[A089735(n)])` -/
def P6653314328011374468.Spec : Prop :=
  ∀ n, P6653314328011374468.a n = A188460 n

theorem P6653314328011374468.correct : P6653314328011374468.Spec := by
  intro n
  simp only [A188460, Nat.add_sub_cancel, A188460.P6653314328011374468.f1, A188460.P6653314328011374468.a, A188460.P13322945824442626242.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188460

/-! ## A188460.P6438222683299236329

`Δ[A292460(n+1)]`
-/

namespace A188460.P6438222683299236329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188460.P6438222683299236329

namespace A188460

/-- `Δ[A292460(n+1)]` -/
def P6438222683299236329.Spec : Prop :=
  ∀ n, P6438222683299236329.a n = A188460 n

theorem P6438222683299236329.correct : P6438222683299236329.Spec := by
  intro n
  simp only [A188460, Nat.add_sub_cancel, A188460.P6438222683299236329.f1, A188460.P6438222683299236329.a, A188460.P13322945824442626242.a, A089735, A089735.P2514923300977859866.a, A292460, A292460.P18157025187125229937.a, A004148, A004148.P7741593686067908301.f1, A004148.P7741593686067908301.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188460

/-! ## A188460.P7739856413505495631

`Δ[A004148(n+2)]`
-/

namespace A188460.P7739856413505495631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188460.P7739856413505495631

namespace A188460

/-- `Δ[A004148(n+2)]` -/
def P7739856413505495631.Spec : Prop :=
  ∀ n, P7739856413505495631.a n = A188460 n

theorem P7739856413505495631.correct : P7739856413505495631.Spec := by
  intro n
  simp only [A188460, Nat.add_sub_cancel, A188460.P7739856413505495631.f1, A188460.P7739856413505495631.a, A188460.P13322945824442626242.a, A004148, A004148.P7741593686067908301.f1, A004148.P7741593686067908301.a, A089735, A089735.P2514923300977859866.a, A292460, A292460.P18157025187125229937.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188460

/-! ## A188460.P8955683283548229584

`Δ[A203019(n+4)]`
-/

namespace A188460.P8955683283548229584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188460.P8955683283548229584

namespace A188460

/-- `Δ[A203019(n+4)]` -/
def P8955683283548229584.Spec : Prop :=
  ∀ n, P8955683283548229584.a n = A188460 n

end A188460

/-! ## A188460.P5860529580547227731

`Δ[abs(A292461(n+4))]`
-/

namespace A188460.P5860529580547227731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292461 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188460.P5860529580547227731

namespace A188460

/-- `Δ[abs(A292461(n+4))]` -/
def P5860529580547227731.Spec : Prop :=
  ∀ n, P5860529580547227731.a n = A188460 n

end A188460

/-! ## A188460.P6212618086166291748

`record[Δ[A203019(Δ[n²]-n)]]`
-/

namespace A188460.P6212618086166291748
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188460.P6212618086166291748

namespace A188460

/-- `record[Δ[A203019(Δ[n²]-n)]]` -/
def P6212618086166291748.Spec : Prop :=
  ∀ n, P6212618086166291748.a n = A188460 n

end A188460

/-! ## A188460.P12147499660941392244

`A093128(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A188460.P12147499660941392244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093128 (n + 1) - a (n - 1)

end

end A188460.P12147499660941392244

namespace A188460

/-- `A093128(n+1)-a(n-1)` -/
def P12147499660941392244.Spec : Prop :=
  ∀ n, P12147499660941392244.a n = A188460 n

end A188460

/-! ## A188460.P17499414234431700745

`A292460(n+2)-A292460(n+1)`
-/

namespace A188460.P17499414234431700745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 (n + 2) - A292460 (n + 1)

end

end A188460.P17499414234431700745

namespace A188460

/-- `A292460(n+2)-A292460(n+1)` -/
def P17499414234431700745.Spec : Prop :=
  ∀ n, P17499414234431700745.a n = A188460 n

theorem P17499414234431700745.correct : P17499414234431700745.Spec := by
  intro n
  simp only [A188460, Nat.add_sub_cancel, A188460.P17499414234431700745.a, A188460.P13322945824442626242.a, A089735, A089735.P2514923300977859866.a, A292460, A292460.P18157025187125229937.a, A004148, A004148.P7741593686067908301.f1, A004148.P7741593686067908301.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188460

/-! ## A188460.P11960371621097002069

`A004148(n+3)-A004148(n+2)`
-/

namespace A188460.P11960371621097002069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 (n + 3) - A004148 (n + 2)

end

end A188460.P11960371621097002069

namespace A188460

/-- `A004148(n+3)-A004148(n+2)` -/
def P11960371621097002069.Spec : Prop :=
  ∀ n, P11960371621097002069.a n = A188460 n

theorem P11960371621097002069.correct : P11960371621097002069.Spec := by
  intro n
  simp only [A188460, Nat.add_sub_cancel, A188460.P11960371621097002069.a, A188460.P13322945824442626242.a, A004148, A004148.P7741593686067908301.f1, A004148.P7741593686067908301.a, A089735, A089735.P2514923300977859866.a, A292460, A292460.P18157025187125229937.a, A001006, A001006.P11199602840237397285.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A188460

/-!
# A188461: A Deutsch-Fibonacci triangle.

The programs for A188461, there is no canonical definition to state claims against.
-/

/-! ## A188461.P9568585062961315678

`A262689((A188474(n)-A225413(n))²)`
-/

namespace A188461.P9568585062961315678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((A188474 n - A225413 n) ^ 2).toNat

end

end A188461.P9568585062961315678

/-! ## A188461.P15947792234884451317

`A262689((A188474(n)-A225413(n))^2)`
-/

namespace A188461.P15947792234884451317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((A188474 n - A225413 n) ^ 2).toNat

end

end A188461.P15947792234884451317

/-! ## A188461.P18349930430939058013

`A000038(A106182(n))+A188474(n)-A225413(n)`
-/

namespace A188461.P18349930430939058013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A106182 n).toNat + (A188474 n - A225413 n)

end

end A188461.P18349930430939058013

/-! ## A188461.P5221645264419147922

`(A188474(n)-A225413(n))%A008746(A007318(n))`
-/

namespace A188461.P5221645264419147922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188474 n - A225413 n) (A008746 (A007318 n).toNat)

end

end A188461.P5221645264419147922

/-! ## A188461.P12036561748027649393

`A118759(A188474(n)-A225413(n))`
-/

namespace A188461.P12036561748027649393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A188474 n - A225413 n).toNat

end

end A188461.P12036561748027649393

/-!
# A188462: Least number of 5th powers needed to represent n.

The programs for A188462, there is no canonical definition to state claims against.
-/

/-! ## A188462.P7973495736433501200

`(a(n-1)+1)%A088193(A088195(n+1))` with `a(0)=1`
-/

namespace A188462.P7973495736433501200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A088193 (A088195 (n + 1)).toNat)

end

end A188462.P7973495736433501200

/-! ## A188462.P15552454320603080644

`(a(n-1)+1)%A032525(A151690(n))` with `a(0)=1`
-/

namespace A188462.P15552454320603080644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A032525 (A151690 n).toNat)

end

end A188462.P15552454320603080644

/-! ## A188462.P9996727796272312815

`∑[2-A291168(xor(n, n+1))]`
-/

namespace A188462.P9996727796272312815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A291168 (Nat.xor n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188462.P9996727796272312815

/-! ## A188462.P15539945749723894392

`∑[A135936(Δ[A197433(n)])]`
-/

namespace A188462.P15539945749723894392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197433 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135936 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188462.P15539945749723894392

/-! ## A188462.P11959726061602769145

`∑[2-A291168(A038712(n+1))]`
-/

namespace A188462.P11959726061602769145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A291168 (A038712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188462.P11959726061602769145

/-! ## A188462.P10932912462121710492

`∑[A124389(A066060(n+1))]%43`
-/

namespace A188462.P10932912462121710492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124389 (A066060 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 43

end

end A188462.P10932912462121710492

/-! ## A188462.P6240227383261869503

`∑[A050313(A000045(2^∑{e}[n+1, #-1]))]`
-/

namespace A188462.P6240227383261869503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050313 (A000045 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188462.P6240227383261869503

/-!
# A188464: Diagonal sums of triangle A188463.

The programs for A188464, there is no canonical definition to state claims against.
-/

/-! ## A188464.P14562861513034343401

`Δ[A086581(n+1)]`
-/

namespace A188464.P14562861513034343401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188464.P14562861513034343401

/-! ## A188464.P15524999483663361204

`∑[A273900(n+2)]`
-/

namespace A188464.P15524999483663361204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273900 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188464.P15524999483663361204

/-! ## A188464.P2503898921573981284

`Δ[A082582(n+2)]`
-/

namespace A188464.P2503898921573981284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188464.P2503898921573981284

/-! ## A188464.P4435391023223144671

`Δ[A025242(n+3)]`
-/

namespace A188464.P4435391023223144671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188464.P4435391023223144671

/-! ## A188464.P1066138124338376012

`A086581(n+2)-A086581(n+1)`
-/

namespace A188464.P1066138124338376012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 (n + 2) - A086581 (n + 1)

end

end A188464.P1066138124338376012

/-! ## A188464.P14743289566932419211

`A082582(n+3)-A082582(n+2)`
-/

namespace A188464.P14743289566932419211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 3) - A082582 (n + 2)

end

end A188464.P14743289566932419211

/-! ## A188464.P4274346900534086671

`A025242(n+4)-A025242(n+3)`
-/

namespace A188464.P4274346900534086671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 4) - A025242 (n + 3)

end

end A188464.P4274346900534086671

/-! ## A188464.P9603837487652245997

`Δ[Δ[A105633(n)]]`
-/

namespace A188464.P9603837487652245997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188464.P9603837487652245997

/-! ## A188464.P15706216488384991319

`A273343(n+3)-(A273898(n+2)+A273343(n+2))`
-/

namespace A188464.P15706216488384991319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273343 (n + 3) - (A273898 (n + 2) + A273343 (n + 2))

end

end A188464.P15706216488384991319

/-! ## A188464.P12102443579623025445

`A276068(n+3)-(A276068(n+2)+A276068(n+2))`
-/

namespace A188464.P12102443579623025445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276068 (n + 3) - (A276068 (n + 2) + A276068 (n + 2))

end

end A188464.P12102443579623025445

/-! ## A188464.P6874348646329265596

`A277973(n+1)+A273720(n+2)-A278135(n+2)`
-/

namespace A188464.P6874348646329265596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277973 (n + 1) + (A273720 (n + 2) - A278135 (n + 2))

end

end A188464.P6874348646329265596

/-! ## A188464.P15353291940556413218

`A047085(n+3)-A047087(n+3)`
-/

namespace A188464.P15353291940556413218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047085 (n + 3) - A047087 (n + 3)

end

end A188464.P15353291940556413218

/-! ## A188464.P16103951221593919463

`Δ[A098978(A087811(n+2))]`
-/

namespace A188464.P16103951221593919463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188464.P16103951221593919463

/-! ## A188464.P13925154984491737589

`Δ[record[A273342(n+2)]]`
-/

namespace A188464.P13925154984491737589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188464.P13925154984491737589

/-! ## A188464.P15886129068214151574

`Δ[record[A273899(n+3)]]`
-/

namespace A188464.P15886129068214151574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273899 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188464.P15886129068214151574

/-! ## A188464.P3447174393688562373

`record[A274488(n+2)]`
-/

namespace A188464.P3447174393688562373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274488 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188464.P3447174393688562373

/-! ## A188464.P7265902069263216830

`A274488(∑[n+1]+2)`
-/

namespace A188464.P7265902069263216830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274488 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A188464.P7265902069263216830

/-!
# A188465: Primes p such that p^2 divides 2^(2^(p-1)-1) - 1.

The programs for A188465, there is no canonical definition to state claims against.
-/

/-! ## A188465.P986834459962619559

`∩[A014663(n+1), A374841(n+1)]`
-/

namespace A188465.P986834459962619559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014663 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188465.P986834459962619559

/-! ## A188465.P3636578700810031637

`∩[A216747(n+1), A374841(n+1)]`
-/

namespace A188465.P3636578700810031637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188465.P3636578700810031637

/-!
# A188466: Numbers n such that lambda(n) = lambda(n + lambda(n)).

The programs for A188466, there is no canonical definition to state claims against.
-/

/-! ## A188466.P17960126936831401888

`A074465(A000079(n))*A277127(A185165(n+1))`
-/

namespace A188466.P17960126936831401888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074465 (A000079 n).toNat * A277127 (A185165 (n + 1)).toNat

end

end A188466.P17960126936831401888

/-! ## A188466.P4510331043370413320

`A277127(A185165(n+1))^A056926(A051873(n))`
-/

namespace A188466.P4510331043370413320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277127 (A185165 (n + 1)).toNat : ℚ) ^ (A056926 (A051873 n).toNat : ℤ)

end

end A188466.P4510331043370413320

/-! ## A188466.P15292105551584975223

`A277127(A185165(n+1)%A346694(3*n+1))`
-/

namespace A188466.P15292105551584975223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277127 (Int.tmod (A185165 (n + 1)) (A346694 (3 * n + 1))).toNat

end

end A188466.P15292105551584975223

/-!
# A188467: [4r]-[nr]-[4r-nr], where r=(1+sqrt(5))/2 and [.]=floor.

The programs for A188467, the canonical program `A188467.P12427925613613652829` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188467 has offset 1).

The definition of A188467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188467.P7374683197206731928

`A110007(n+1)%2`
-/

namespace A188467.P7374683197206731928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110007 (n + 1)) 2

end

end A188467.P7374683197206731928

namespace A188467

/-- `A110007(n+1)%2` -/
def P7374683197206731928.Spec : Prop :=
  ∀ n, P7374683197206731928.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P1887488100645162105

`char[A188469(n+1)-1]`
-/

namespace A188467.P1887488100645162105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188467.P1887488100645162105

namespace A188467

/-- `char[A188469(n+1)-1]` -/
def P1887488100645162105.Spec : Prop :=
  ∀ n, (P1887488100645162105.a n : ℤ) = A188467 (n + 1)

end A188467

/-! ## A188467.P12427925613613652829

`A267871(n)-A188014(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A188467

/-- `A267871(n)-A188014(n+1)` -/
def P12427925613613652829.Spec : Prop :=
  ∀ n, P12427925613613652829.a n = A188467 (n + 1)

theorem P12427925613613652829.correct : P12427925613613652829.Spec := by
  intro n
  simp only [A188467, Nat.add_sub_cancel]

end A188467

/-! ## A188467.P8347965013917462664

`and(A001535(n), A110007(n+1))`
-/

namespace A188467.P8347965013917462664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A110007 (n + 1))

end

end A188467.P8347965013917462664

namespace A188467

/-- `and(A001535(n), A110007(n+1))` -/
def P8347965013917462664.Spec : Prop :=
  ∀ n, P8347965013917462664.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P149209801816672883

`and(A001546(n), A110007(n+1))`
-/

namespace A188467.P149209801816672883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001546 n) (A110007 (n + 1))

end

end A188467.P149209801816672883

namespace A188467

/-- `and(A001546(n), A110007(n+1))` -/
def P149209801816672883.Spec : Prop :=
  ∀ n, P149209801816672883.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P7692900803087223038

`and(A001846(n), A110007(n+1))`
-/

namespace A188467.P7692900803087223038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001846 n) (A110007 (n + 1))

end

end A188467.P7692900803087223038

namespace A188467

/-- `and(A001846(n), A110007(n+1))` -/
def P7692900803087223038.Spec : Prop :=
  ∀ n, P7692900803087223038.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P1624454931314844341

`and(A004768(n), A110007(n+1))`
-/

namespace A188467.P1624454931314844341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004768 n) (A110007 (n + 1))

end

end A188467.P1624454931314844341

namespace A188467

/-- `and(A004768(n), A110007(n+1))` -/
def P1624454931314844341.Spec : Prop :=
  ∀ n, P1624454931314844341.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P2683592053611925714

`and(A005614(n), A110007(n+1))`
-/

namespace A188467.P2683592053611925714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005614 n) (A110007 (n + 1))

end

end A188467.P2683592053611925714

namespace A188467

/-- `and(A005614(n), A110007(n+1))` -/
def P2683592053611925714.Spec : Prop :=
  ∀ n, P2683592053611925714.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P3865024149871730470

`and(A007204(n), A110007(n+1))`
-/

namespace A188467.P3865024149871730470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007204 n) (A110007 (n + 1))

end

end A188467.P3865024149871730470

namespace A188467

/-- `and(A007204(n), A110007(n+1))` -/
def P3865024149871730470.Spec : Prop :=
  ∀ n, P3865024149871730470.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P8944364886276412879

`and(A008349(n), A110007(n+1))`
-/

namespace A188467.P8944364886276412879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A110007 (n + 1))

end

end A188467.P8944364886276412879

namespace A188467

/-- `and(A008349(n), A110007(n+1))` -/
def P8944364886276412879.Spec : Prop :=
  ∀ n, P8944364886276412879.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P1696304649157039547

`and(A008362(n), A110007(n+1))`
-/

namespace A188467.P1696304649157039547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A110007 (n + 1))

end

end A188467.P1696304649157039547

namespace A188467

/-- `and(A008362(n), A110007(n+1))` -/
def P1696304649157039547.Spec : Prop :=
  ∀ n, P1696304649157039547.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P6151264095480774047

`and(A008417(n), A110007(n+1))`
-/

namespace A188467.P6151264095480774047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A110007 (n + 1))

end

end A188467.P6151264095480774047

namespace A188467

/-- `and(A008417(n), A110007(n+1))` -/
def P6151264095480774047.Spec : Prop :=
  ∀ n, P6151264095480774047.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P11264765330764493977

`and(A008514(n), A110007(n+1))`
-/

namespace A188467.P11264765330764493977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A110007 (n + 1))

end

end A188467.P11264765330764493977

namespace A188467

/-- `and(A008514(n), A110007(n+1))` -/
def P11264765330764493977.Spec : Prop :=
  ∀ n, P11264765330764493977.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P13459147157877981231

`and(A008516(n), A110007(n+1))`
-/

namespace A188467.P13459147157877981231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008516 n) (A110007 (n + 1))

end

end A188467.P13459147157877981231

namespace A188467

/-- `and(A008516(n), A110007(n+1))` -/
def P13459147157877981231.Spec : Prop :=
  ∀ n, P13459147157877981231.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P16410858766703333393

`and(A010690(n), A110007(n+1))`
-/

namespace A188467.P16410858766703333393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010690 n) (A110007 (n + 1))

end

end A188467.P16410858766703333393

namespace A188467

/-- `and(A010690(n), A110007(n+1))` -/
def P16410858766703333393.Spec : Prop :=
  ∀ n, P16410858766703333393.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P1983011662553264987

`and(A014736(n), A110007(n+1))`
-/

namespace A188467.P1983011662553264987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014736 n) (A110007 (n + 1))

end

end A188467.P1983011662553264987

namespace A188467

/-- `and(A014736(n), A110007(n+1))` -/
def P1983011662553264987.Spec : Prop :=
  ∀ n, P1983011662553264987.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P51677669249847058

`and(A014769(n), A110007(n+1))`
-/

namespace A188467.P51677669249847058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014769 n) (A110007 (n + 1))

end

end A188467.P51677669249847058

namespace A188467

/-- `and(A014769(n), A110007(n+1))` -/
def P51677669249847058.Spec : Prop :=
  ∀ n, P51677669249847058.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P18195519207047153669

`and(A014793(n), A110007(n+1))`
-/

namespace A188467.P18195519207047153669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014793 n) (A110007 (n + 1))

end

end A188467.P18195519207047153669

namespace A188467

/-- `and(A014793(n), A110007(n+1))` -/
def P18195519207047153669.Spec : Prop :=
  ∀ n, P18195519207047153669.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P10652435970071253393

`and(A014795(n), A110007(n+1))`
-/

namespace A188467.P10652435970071253393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014795 n) (A110007 (n + 1))

end

end A188467.P10652435970071253393

namespace A188467

/-- `and(A014795(n), A110007(n+1))` -/
def P10652435970071253393.Spec : Prop :=
  ∀ n, P10652435970071253393.a n = A188467 (n + 1)

end A188467

/-! ## A188467.P4753482425741747639

`and(A014797(n), A110007(n+1))`
-/

namespace A188467.P4753482425741747639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014797 n) (A110007 (n + 1))

end

end A188467.P4753482425741747639

namespace A188467

/-- `and(A014797(n), A110007(n+1))` -/
def P4753482425741747639.Spec : Prop :=
  ∀ n, P4753482425741747639.a n = A188467 (n + 1)

end A188467

/-!
# A188468: Positions of 0 in A188467.

The programs for A188468, the canonical program `A188468.P7650154338437049291` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188468 has offset 1).

The definition of A188468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188468.P11161569959043981788

`ceil(ϕ*floor(∑[ϕ/a(n-1)]))` with `a(0)=1, a(1)=1`
-/

namespace A188468.P11161569959043981788
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℝ)⌉

end

end A188468.P11161569959043981788

namespace A188468

/-- `ceil(ϕ*floor(∑[ϕ/a(n-1)]))` -/
def P11161569959043981788.Spec : Prop :=
  ∀ n, P11161569959043981788.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P3215283220439883026

`ceil(ϕ*A188010(n+1))`
-/

namespace A188468.P3215283220439883026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A188010 (n + 1) : ℝ)⌉

end

end A188468.P3215283220439883026

namespace A188468

/-- `ceil(ϕ*A188010(n+1))` -/
def P3215283220439883026.Spec : Prop :=
  ∀ n, P3215283220439883026.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P16903043688004844003

`∪[A188016(n+1), A006415(n)]`
-/

namespace A188468.P16903043688004844003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188468.P16903043688004844003

namespace A188468

/-- `∪[A188016(n+1), A006415(n)]` -/
def P16903043688004844003.Spec : Prop :=
  ∀ n, (P16903043688004844003.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P8245637933650291188

`∪[A018910(n), A188016(n+1)]`
-/

namespace A188468.P8245637933650291188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188468.P8245637933650291188

namespace A188468

/-- `∪[A018910(n), A188016(n+1)]` -/
def P8245637933650291188.Spec : Prop :=
  ∀ n, (P8245637933650291188.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P13166204961740767692

`∪[A020732(n), A188016(n+1)]`
-/

namespace A188468.P13166204961740767692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188468.P13166204961740767692

namespace A188468

/-- `∪[A020732(n), A188016(n+1)]` -/
def P13166204961740767692.Spec : Prop :=
  ∀ n, (P13166204961740767692.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P10966537080145303581

`A188018(n+1)-A188010(n+1)`
-/

namespace A188468.P10966537080145303581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1) - A188010 (n + 1)

end

end A188468.P10966537080145303581

namespace A188468

/-- `A188018(n+1)-A188010(n+1)` -/
def P10966537080145303581.Spec : Prop :=
  ∀ n, P10966537080145303581.a n = A188468 (n + 1)

theorem P10966537080145303581.correct : P10966537080145303581.Spec := by
  intro n
  simp only [A188468, Nat.add_sub_cancel, A188468.P10966537080145303581.a, A188468.P7650154338437049291.a, A004526, A004526.P10084182425416171735.a, A052938, A052938.P15385682642359846143.a, A130568, A130568.P15557830323958427983.a, A188010, A188010.P5856067489415805661.f1, A188010.P5856067489415805661.a, A188018, A188018.P1779164048503098880.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188468

/-! ## A188468.P8035868070991773470

`2*A188010(n+1)-A004526(n)`
-/

namespace A188468.P8035868070991773470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A188010 (n + 1) - A004526 n

end

end A188468.P8035868070991773470

namespace A188468

/-- `2*A188010(n+1)-A004526(n)` -/
def P8035868070991773470.Spec : Prop :=
  ∀ n, P8035868070991773470.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P8004350504597635280

`∪[A188434(n+1)+2, A188434(n+1)]`
-/

namespace A188468.P8004350504597635280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188468.P8004350504597635280

namespace A188468

/-- `∪[A188434(n+1)+2, A188434(n+1)]` -/
def P8004350504597635280.Spec : Prop :=
  ∀ n, (P8004350504597635280.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P7650154338437049291

`A130568(A004526(n))+A052938(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188468

/-- `A130568(A004526(n))+A052938(n)` -/
def P7650154338437049291.Spec : Prop :=
  ∀ n, P7650154338437049291.a n = A188468 (n + 1)

theorem P7650154338437049291.correct : P7650154338437049291.Spec := by
  intro n
  simp only [A188468, Nat.add_sub_cancel]

end A188468

/-! ## A188468.P9292151058760244723

`A047924(A004526(n))-A033999(n)`
-/

namespace A188468.P9292151058760244723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 (A004526 n).toNat - A033999 n

end

end A188468.P9292151058760244723

namespace A188468

/-- `A047924(A004526(n))-A033999(n)` -/
def P9292151058760244723.Spec : Prop :=
  ∀ n, P9292151058760244723.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P2333686324164285274

`A004956(A188010(n+1))`
-/

namespace A188468.P2333686324164285274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A188010 (n + 1)).toNat

end

end A188468.P2333686324164285274

namespace A188468

/-- `A004956(A188010(n+1))` -/
def P2333686324164285274.Spec : Prop :=
  ∀ n, P2333686324164285274.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P1145840817544325001

`A189662(A188010(n+1)+1)-1`
-/

namespace A188468.P1145840817544325001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189662 (A188010 (n + 1) + 1).toNat - 1

end

end A188468.P1145840817544325001

namespace A188468

/-- `A189662(A188010(n+1)+1)-1` -/
def P1145840817544325001.Spec : Prop :=
  ∀ n, P1145840817544325001.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P14053875428647134560

`A058065(A188010(n+1)+1)-1`
-/

namespace A188468.P14053875428647134560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 (A188010 (n + 1) + 1).toNat - 1

end

end A188468.P14053875428647134560

namespace A188468

/-- `A058065(A188010(n+1)+1)-1` -/
def P14053875428647134560.Spec : Prop :=
  ∀ n, P14053875428647134560.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P8471880599892595312

`A005206(A188018(n+1))`
-/

namespace A188468.P8471880599892595312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A188018 (n + 1)).toNat

end

end A188468.P8471880599892595312

namespace A188468

/-- `A005206(A188018(n+1))` -/
def P8471880599892595312.Spec : Prop :=
  ∀ n, P8471880599892595312.a n = A188468 (n + 1)

end A188468

/-! ## A188468.P6675319669167204631

`eq[0, A188467(n+1)]+1`
-/

namespace A188468.P6675319669167204631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188468.P6675319669167204631

namespace A188468

/-- `eq[0, A188467(n+1)]+1` -/
def P6675319669167204631.Spec : Prop :=
  ∀ n, (P6675319669167204631.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P10981484635479245279

`eq[0, A188467(A000007(n)+n)]`
-/

namespace A188468.P10981484635479245279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A188468.P10981484635479245279

namespace A188468

/-- `eq[0, A188467(A000007(n)+n)]` -/
def P10981484635479245279.Spec : Prop :=
  ∀ n, (P10981484635479245279.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P1689815480403708456

`eq[Δ[A188470(n+1)], A114986(n)]`
-/

namespace A188468.P1689815480403708456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A188468.P1689815480403708456

namespace A188468

/-- `eq[Δ[A188470(n+1)], A114986(n)]` -/
def P1689815480403708456.Spec : Prop :=
  ∀ n, (P1689815480403708456.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P13498649900810865102

`eq[A188432(n+1), A188470(n+1)]`
-/

namespace A188468.P13498649900810865102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A188468.P13498649900810865102

namespace A188468

/-- `eq[A188432(n+1), A188470(n+1)]` -/
def P13498649900810865102.Spec : Prop :=
  ∀ n, (P13498649900810865102.a n : ℤ) = A188468 (n + 1)

end A188468

/-! ## A188468.P7171134072576400573

`eq[char[A001950(n+1)], A188470(n+1)]`
-/

namespace A188468.P7171134072576400573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A188468.P7171134072576400573

namespace A188468

/-- `eq[char[A001950(n+1)], A188470(n+1)]` -/
def P7171134072576400573.Spec : Prop :=
  ∀ n, (P7171134072576400573.a n : ℤ) = A188468 (n + 1)

end A188468

/-!
# A188469: Positions of 1 in A188467; complement of A188468.

The programs for A188469, the canonical program `A188469.P6655427290535897228` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188469 has offset 1).

The definition of A188469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188469.P6655427290535897228

`floor(ϕ*A188013(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188469

/-- `floor(ϕ*A188013(n+1))` -/
def P6655427290535897228.Spec : Prop :=
  ∀ n, P6655427290535897228.a n = A188469 (n + 1)

theorem P6655427290535897228.correct : P6655427290535897228.Spec := by
  intro n
  simp only [A188469, Nat.add_sub_cancel]

end A188469

/-! ## A188469.P6101428977372359419

`floor(A188025(n+1)/ϕ)`
-/

namespace A188469.P6101428977372359419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188025 (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A188469.P6101428977372359419

namespace A188469

/-- `floor(A188025(n+1)/ϕ)` -/
def P6101428977372359419.Spec : Prop :=
  ∀ n, P6101428977372359419.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P6497024865916167859

`comp[A188468(n+1)-1]+1`
-/

namespace A188469.P6497024865916167859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A188469.P6497024865916167859

namespace A188469

/-- `comp[A188468(n+1)-1]+1` -/
def P6497024865916167859.Spec : Prop :=
  ∀ n, (P6497024865916167859.a n : ℤ) = A188469 (n + 1)

end A188469

/-! ## A188469.P7214198722392189442

`A188025(n+1)-A188013(n+1)`
-/

namespace A188469.P7214198722392189442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188025 (n + 1) - A188013 (n + 1)

end

end A188469.P7214198722392189442

namespace A188469

/-- `A188025(n+1)-A188013(n+1)` -/
def P7214198722392189442.Spec : Prop :=
  ∀ n, P7214198722392189442.a n = A188469 (n + 1)

theorem P7214198722392189442.correct : P7214198722392189442.Spec := by
  intro n
  simp only [A188469, Nat.add_sub_cancel, A188469.P7214198722392189442.a, A188469.P6655427290535897228.a, A188013, A188013.P5416462943945789149.f1, A188013.P5416462943945789149.a, A188025, A188025.P8051068989946620211.a, A285679, A285679.P13198403238930620714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188469

/-! ## A188469.P10457350955195392632

`∪[A007066(n+1)+2, A026352(n)]`
-/

namespace A188469.P10457350955195392632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188469.P10457350955195392632

namespace A188469

/-- `∪[A007066(n+1)+2, A026352(n)]` -/
def P10457350955195392632.Spec : Prop :=
  ∀ n, (P10457350955195392632.a n : ℤ) = A188469 (n + 1)

end A188469

/-! ## A188469.P979347621936661791

`∪[A005652(n+1), A007066(n+1)+2]`
-/

namespace A188469.P979347621936661791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188469.P979347621936661791

namespace A188469

/-- `∪[A005652(n+1), A007066(n+1)+2]` -/
def P979347621936661791.Spec : Prop :=
  ∀ n, (P979347621936661791.a n : ℤ) = A188469 (n + 1)

end A188469

/-! ## A188469.P9508474258244816894

`∪[A007066(n+1)+2, A187952(n+1)]`
-/

namespace A188469.P9508474258244816894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188469.P9508474258244816894

namespace A188469

/-- `∪[A007066(n+1)+2, A187952(n+1)]` -/
def P9508474258244816894.Spec : Prop :=
  ∀ n, (P9508474258244816894.a n : ℤ) = A188469 (n + 1)

end A188469

/-! ## A188469.P10730975336914427174

`∪[A188473(n+1)-2, A188473(n+1)]`
-/

namespace A188469.P10730975336914427174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188469.P10730975336914427174

namespace A188469

/-- `∪[A188473(n+1)-2, A188473(n+1)]` -/
def P10730975336914427174.Spec : Prop :=
  ∀ n, (P10730975336914427174.a n : ℤ) = A188469 (n + 1)

end A188469

/-! ## A188469.P14495317747607755823

`A188015(A326178(n+1))`
-/

namespace A188469.P14495317747607755823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188015 (A326178 (n + 1)).toNat

end

end A188469.P14495317747607755823

namespace A188469

/-- `A188015(A326178(n+1))` -/
def P14495317747607755823.Spec : Prop :=
  ∀ n, P14495317747607755823.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P9714731850112396371

`A000201(A188013(n+1))`
-/

namespace A188469.P9714731850112396371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A188013 (n + 1)).toNat

end

end A188469.P9714731850112396371

namespace A188469

/-- `A000201(A188013(n+1))` -/
def P9714731850112396371.Spec : Prop :=
  ∀ n, P9714731850112396371.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P7480681835263662211

`record[A000201(n+1)*A188011(n+1)]`
-/

namespace A188469.P7480681835263662211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) * A188011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188469.P7480681835263662211

namespace A188469

/-- `record[A000201(n+1)*A188011(n+1)]` -/
def P7480681835263662211.Spec : Prop :=
  ∀ n, P7480681835263662211.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P3341095811883227732

`A026351(∪[A188218(n+1), A026351(n)])-1`
-/

namespace A188469.P3341095811883227732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) - 1

end

end A188469.P3341095811883227732

namespace A188469

/-- `A026351(∪[A188218(n+1), A026351(n)])-1` -/
def P3341095811883227732.Spec : Prop :=
  ∀ n, P3341095811883227732.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P13313415713633537556

`A000201(eq[A114986(n), A188014(n+1)])`
-/

namespace A188469.P13313415713633537556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114986 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A188469.P13313415713633537556

namespace A188469

/-- `A000201(eq[A114986(n), A188014(n+1)])` -/
def P13313415713633537556.Spec : Prop :=
  ∀ n, P13313415713633537556.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P17508749169404661417

`eq[1, A188467(n+1)]+1`
-/

namespace A188469.P17508749169404661417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A188469.P17508749169404661417

namespace A188469

/-- `eq[1, A188467(n+1)]+1` -/
def P17508749169404661417.Spec : Prop :=
  ∀ n, (P17508749169404661417.a n : ℤ) = A188469 (n + 1)

end A188469

/-! ## A188469.P1236803434387029639

`filter[A000201(n+1), A188467(#)]`
-/

namespace A188469.P1236803434387029639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A188469.P1236803434387029639

namespace A188469

/-- `filter[A000201(n+1), A188467(#)]` -/
def P1236803434387029639.Spec : Prop :=
  ∀ n, P1236803434387029639.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P13818807880475232418

`filter[A001961(n+1), A188467(#)]`
-/

namespace A188469.P13818807880475232418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A188469.P13818807880475232418

namespace A188469

/-- `filter[A001961(n+1), A188467(#)]` -/
def P13818807880475232418.Spec : Prop :=
  ∀ n, P13818807880475232418.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P8814172601730155402

`filter[A001965(n+1), A188467(#)]`
-/

namespace A188469.P8814172601730155402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A188469.P8814172601730155402

namespace A188469

/-- `filter[A001965(n+1), A188467(#)]` -/
def P8814172601730155402.Spec : Prop :=
  ∀ n, P8814172601730155402.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P3569580005363903472

`filter[A066096(n+1), A188467(#)]`
-/

namespace A188469.P3569580005363903472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A188469.P3569580005363903472

namespace A188469

/-- `filter[A066096(n+1), A188467(#)]` -/
def P3569580005363903472.Spec : Prop :=
  ∀ n, P3569580005363903472.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P10861572328971202494

`filter[A187945(n+1), A188467(#)]`
-/

namespace A188469.P10861572328971202494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A188469.P10861572328971202494

namespace A188469

/-- `filter[A187945(n+1), A188467(#)]` -/
def P10861572328971202494.Spec : Prop :=
  ∀ n, P10861572328971202494.a n = A188469 (n + 1)

end A188469

/-! ## A188469.P17646417363362869734

`filter[A187953(n+1), A188467(#)]`
-/

namespace A188469.P17646417363362869734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A188469.P17646417363362869734

namespace A188469

/-- `filter[A187953(n+1), A188467(#)]` -/
def P17646417363362869734.Spec : Prop :=
  ∀ n, P17646417363362869734.a n = A188469 (n + 1)

end A188469

/-!
# A188470: a(n) = [5r]-[nr]-[5r-nr], where r=(1+sqrt(5))/2 and []=floor.

The programs for A188470, the canonical program `A188470.P15419413521546564423` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188470 has offset 1).

The definition of A188470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188470.P6519068347532472111

`A188011(floor(n/ϕ)+1)`
-/

namespace A188470.P6519068347532472111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (⌊(n : ℝ) / Real.goldenRatio⌋ + 1).toNat

end

end A188470.P6519068347532472111

namespace A188470

/-- `A188011(floor(n/ϕ)+1)` -/
def P6519068347532472111.Spec : Prop :=
  ∀ n, P6519068347532472111.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P167211786462432409

`char[comp[A026356(2*floor(ϕ*n)+2+n)]]`
-/

namespace A188470.P167211786462432409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (2 * ⌊Real.goldenRatio * (n : ℝ)⌋ + 2 + (n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A188470.P167211786462432409

namespace A188470

/-- `char[comp[A026356(2*floor(ϕ*n)+2+n)]]` -/
def P167211786462432409.Spec : Prop :=
  ∀ n, (P167211786462432409.a n : ℤ) = A188470 (n + 1)

end A188470

/-! ## A188470.P8499869034253776122

`A075897(A356385(n+1))`
-/

namespace A188470.P8499869034253776122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075897 (A356385 (n + 1)).toNat

end

end A188470.P8499869034253776122

namespace A188470

/-- `A075897(A356385(n+1))` -/
def P8499869034253776122.Spec : Prop :=
  ∀ n, P8499869034253776122.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P15419413521546564423

`A188467(A187950(n+1)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A188470

/-- `A188467(A187950(n+1)+n)` -/
def P15419413521546564423.Spec : Prop :=
  ∀ n, P15419413521546564423.a n = A188470 (n + 1)

theorem P15419413521546564423.correct : P15419413521546564423.Spec := by
  intro n
  simp only [A188470, Nat.add_sub_cancel]

end A188470

/-! ## A188470.P10248083789120274706

`A188467(A188467(n+1)+n)`
-/

namespace A188470.P10248083789120274706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A188467 (n + 1) + (n : ℤ)).toNat

end

end A188470.P10248083789120274706

namespace A188470

/-- `A188467(A188467(n+1)+n)` -/
def P10248083789120274706.Spec : Prop :=
  ∀ n, P10248083789120274706.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P15727646299194309536

`((char[A188468(n+1)]-A096270(n))%3)²^n`
-/

namespace A188470.P15727646299194309536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A096270 n) 3 ^ 2) ^ n

end

end A188470.P15727646299194309536

namespace A188470

/-- `((char[A188468(n+1)]-A096270(n))%3)²^n` -/
def P15727646299194309536.Spec : Prop :=
  ∀ n, P15727646299194309536.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P5310553877115038928

`A188031(A188031(n+1)+A342297(n+1)+7)`
-/

namespace A188470.P5310553877115038928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188031 (A188031 (n + 1) + (A342297 (n + 1) + 7)).toNat

end

end A188470.P5310553877115038928

namespace A188470

/-- `A188031(A188031(n+1)+A342297(n+1)+7)` -/
def P5310553877115038928.Spec : Prop :=
  ∀ n, P5310553877115038928.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P18356081789958548642

`A188017((A026351(n+1)-n)*A188014(n+1)+1)`
-/

namespace A188470.P18356081789958548642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 ((A026351 (n + 1) - (n : ℤ)) * A188014 (n + 1) + 1).toNat

end

end A188470.P18356081789958548642

namespace A188470

/-- `A188017((A026351(n+1)-n)*A188014(n+1)+1)` -/
def P18356081789958548642.Spec : Prop :=
  ∀ n, P18356081789958548642.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P3395401684823581738

`A188467(A078588(n+1)+n)`
-/

namespace A188470.P3395401684823581738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188467 (A078588 (n + 1) + (n : ℤ)).toNat

end

end A188470.P3395401684823581738

namespace A188470

/-- `A188467(A078588(n+1)+n)` -/
def P3395401684823581738.Spec : Prop :=
  ∀ n, P3395401684823581738.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P2783014798828261444

`A188433(A188472(n+2)+n+1)`
-/

namespace A188470.P2783014798828261444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (A188472 (n + 2) + (n + 1 : ℤ)).toNat

end

end A188470.P2783014798828261444

namespace A188470

/-- `A188433(A188472(n+2)+n+1)` -/
def P2783014798828261444.Spec : Prop :=
  ∀ n, P2783014798828261444.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P2504876863080406785

`A188011(n+2)+A188472(n+2)-A188009(n+1)`
-/

namespace A188470.P2504876863080406785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188011 (n + 2) + (A188472 (n + 2) - A188009 (n + 1))

end

end A188470.P2504876863080406785

namespace A188470

/-- `A188011(n+2)+A188472(n+2)-A188009(n+1)` -/
def P2504876863080406785.Spec : Prop :=
  ∀ n, P2504876863080406785.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P1505978218092961886

`A178245(A129761(A000045(A356749(n+2))))`
-/

namespace A188470.P1505978218092961886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178245 (A129761 (A000045 (A356749 (n + 2)).toNat).toNat).toNat

end

end A188470.P1505978218092961886

namespace A188470

/-- `A178245(A129761(A000045(A356749(n+2))))` -/
def P1505978218092961886.Spec : Prop :=
  ∀ n, P1505978218092961886.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P6397550040006286545

`A188014(Δ[n*(A026351(n+1)-(n+1))])`
-/

namespace A188470.P6397550040006286545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A026351 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (f1 (n + 1) - f1 n).toNat

end

end A188470.P6397550040006286545

namespace A188470

/-- `A188014(Δ[n*(A026351(n+1)-(n+1))])` -/
def P6397550040006286545.Spec : Prop :=
  ∀ n, P6397550040006286545.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P17875874561320255752

`A188014(A003849(n)+A002251(n+1))`
-/

namespace A188470.P17875874561320255752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A003849 n + A002251 (n + 1)).toNat

end

end A188470.P17875874561320255752

namespace A188470

/-- `A188014(A003849(n)+A002251(n+1))` -/
def P17875874561320255752.Spec : Prop :=
  ∀ n, P17875874561320255752.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P10196602246249572498

`A188017(A026351(n)-A188014(n+1))`
-/

namespace A188470.P10196602246249572498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188017 (A026351 n - A188014 (n + 1)).toNat

end

end A188470.P10196602246249572498

namespace A188470

/-- `A188017(A026351(n)-A188014(n+1))` -/
def P10196602246249572498.Spec : Prop :=
  ∀ n, P10196602246249572498.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P6670690632069496919

`or(A005614(n), A188011(A073929(n+1)))`
-/

namespace A188470.P6670690632069496919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005614 n) (A188011 (A073929 (n + 1)).toNat)

end

end A188470.P6670690632069496919

namespace A188470

/-- `or(A005614(n), A188011(A073929(n+1)))` -/
def P6670690632069496919.Spec : Prop :=
  ∀ n, P6670690632069496919.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P3618959053381326897

`A188027(A004956(n+1))`
-/

namespace A188470.P3618959053381326897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A004956 (n + 1)).toNat

end

end A188470.P3618959053381326897

namespace A188470

/-- `A188027(A004956(n+1))` -/
def P3618959053381326897.Spec : Prop :=
  ∀ n, P3618959053381326897.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P5909497388241791717

`A188027(A026351(n+1))`
-/

namespace A188470.P5909497388241791717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A026351 (n + 1)).toNat

end

end A188470.P5909497388241791717

namespace A188470

/-- `A188027(A026351(n+1))` -/
def P5909497388241791717.Spec : Prop :=
  ∀ n, P5909497388241791717.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P903613221783260322

`A188027(A026352(n+1)-(n+1))`
-/

namespace A188470.P903613221783260322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A026352 (n + 1) - (n + 1 : ℤ)).toNat

end

end A188470.P903613221783260322

namespace A188470

/-- `A188027(A026352(n+1)-(n+1))` -/
def P903613221783260322.Spec : Prop :=
  ∀ n, P903613221783260322.a n = A188470 (n + 1)

end A188470

/-! ## A188470.P5381355266871316442

`A188433(A050411(n+1))`
-/

namespace A188470.P5381355266871316442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188433 (A050411 (n + 1)).toNat

end

end A188470.P5381355266871316442

namespace A188470

/-- `A188433(A050411(n+1))` -/
def P5381355266871316442.Spec : Prop :=
  ∀ n, P5381355266871316442.a n = A188470 (n + 1)

end A188470

/-!
# A188471: Positions of 0 in A188470.

The programs for A188471, the canonical program `A188471.P10533534576660266462` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188471 has offset 1).

The definition of A188471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188471.P10533534576660266462

`5*comp[ceil(ϕ*n)]-2*n`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188471

/-- `5*comp[ceil(ϕ*n)]-2*n` -/
def P10533534576660266462.Spec : Prop :=
  ∀ n, P10533534576660266462.a n = A188471 (n + 1)

theorem P10533534576660266462.correct : P10533534576660266462.Spec := by
  intro n
  simp only [A188471, Nat.add_sub_cancel]

end A188471

/-! ## A188471.P18295114414044361021

`ceil(ϕ*A188012(n+1))`
-/

namespace A188471.P18295114414044361021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A188012 (n + 1) : ℝ)⌉

end

end A188471.P18295114414044361021

namespace A188471

/-- `ceil(ϕ*A188012(n+1))` -/
def P18295114414044361021.Spec : Prop :=
  ∀ n, P18295114414044361021.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P8802480581611633153

`∪[A101870(n+1), A174591(n+1)]`
-/

namespace A188471.P8802480581611633153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188471.P8802480581611633153

namespace A188471

/-- `∪[A101870(n+1), A174591(n+1)]` -/
def P8802480581611633153.Spec : Prop :=
  ∀ n, (P8802480581611633153.a n : ℤ) = A188471 (n + 1)

end A188471

/-! ## A188471.P14403561501687621733

`∪[A101870(n+1), A182345(n+1)]`
-/

namespace A188471.P14403561501687621733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A188471.P14403561501687621733

namespace A188471

/-- `∪[A101870(n+1), A182345(n+1)]` -/
def P14403561501687621733.Spec : Prop :=
  ∀ n, (P14403561501687621733.a n : ℤ) = A188471 (n + 1)

end A188471

/-! ## A188471.P11845043102599578109

`record[(A035337(n)+2)*A114986(n)]`
-/

namespace A188471.P11845043102599578109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035337 n + 2) * A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188471.P11845043102599578109

namespace A188471

/-- `record[(A035337(n)+2)*A114986(n)]` -/
def P11845043102599578109.Spec : Prop :=
  ∀ n, P11845043102599578109.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P15226645884280756018

`record[(A285683(n+1)+3*n)*A114986(n)]`
-/

namespace A188471.P15226645884280756018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285683 (n + 1) + (3 * n : ℤ)) * A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188471.P15226645884280756018

namespace A188471

/-- `record[(A285683(n+1)+3*n)*A114986(n)]` -/
def P15226645884280756018.Spec : Prop :=
  ∀ n, P15226645884280756018.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P625230970127690551

`record[(A188438(n+1)-3)*log2(A001468(n))^n]`
-/

namespace A188471.P625230970127690551
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A188438 (n + 1) - 3 : ℝ) * Real.logb 2 (A001468 n : ℝ) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188471.P625230970127690551

namespace A188471

/-- `record[(A188438(n+1)-3)*log2(A001468(n))^n]` -/
def P625230970127690551.Spec : Prop :=
  ∀ n, P625230970127690551.a n = (A188471 (n + 1) : ℝ)

end A188471

/-! ## A188471.P1635733989721157416

`record[(A035338(n)-(A035336(n+1)-2))*A114986(n)]`
-/

namespace A188471.P1635733989721157416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035338 n - (A035336 (n + 1) - 2)) * A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188471.P1635733989721157416

namespace A188471

/-- `record[(A035338(n)-(A035336(n+1)-2))*A114986(n)]` -/
def P1635733989721157416.Spec : Prop :=
  ∀ n, P1635733989721157416.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P352483524711385987

`record[(A285679(n+2)+3*n)*A114986(n)]`
-/

namespace A188471.P352483524711385987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285679 (n + 2) + (3 * n : ℤ)) * A114986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188471.P352483524711385987

namespace A188471

/-- `record[(A285679(n+2)+3*n)*A114986(n)]` -/
def P352483524711385987.Spec : Prop :=
  ∀ n, P352483524711385987.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P7202108309478001568

`A188030(A004277(n))`
-/

namespace A188471.P7202108309478001568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (A004277 n).toNat

end

end A188471.P7202108309478001568

namespace A188471

/-- `A188030(A004277(n))` -/
def P7202108309478001568.Spec : Prop :=
  ∀ n, P7202108309478001568.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P12524815902727117058

`A188030(A004273(n)+1)`
-/

namespace A188471.P12524815902727117058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (A004273 n + 1).toNat

end

end A188471.P12524815902727117058

namespace A188471

/-- `A188030(A004273(n)+1)` -/
def P12524815902727117058.Spec : Prop :=
  ∀ n, P12524815902727117058.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P7422540029360869403

`A188030(A004275(n+1))`
-/

namespace A188471.P7422540029360869403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (A004275 (n + 1)).toNat

end

end A188471.P7422540029360869403

namespace A188471

/-- `A188030(A004275(n+1))` -/
def P7422540029360869403.Spec : Prop :=
  ∀ n, P7422540029360869403.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P7227855615502821439

`A004958(A026352(n))`
-/

namespace A188471.P7227855615502821439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A026352 n).toNat

end

end A188471.P7227855615502821439

namespace A188471

/-- `A004958(A026352(n))` -/
def P7227855615502821439.Spec : Prop :=
  ∀ n, P7227855615502821439.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P10674787895637939209

`A188434(A026352(n)+1)`
-/

namespace A188471.P10674787895637939209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (A026352 n + 1).toNat

end

end A188471.P10674787895637939209

namespace A188471

/-- `A188434(A026352(n)+1)` -/
def P10674787895637939209.Spec : Prop :=
  ∀ n, P10674787895637939209.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P11898017608720466373

`A188434(A026356(n+1))`
-/

namespace A188471.P11898017608720466373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (A026356 (n + 1)).toNat

end

end A188471.P11898017608720466373

namespace A188471

/-- `A188434(A026356(n+1))` -/
def P11898017608720466373.Spec : Prop :=
  ∀ n, P11898017608720466373.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P1497773042509769691

`A004958(A026351(n)+n)`
-/

namespace A188471.P1497773042509769691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (A026351 n + (n : ℤ)).toNat

end

end A188471.P1497773042509769691

namespace A188471

/-- `A004958(A026351(n)+n)` -/
def P1497773042509769691.Spec : Prop :=
  ∀ n, P1497773042509769691.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P14455397283226751421

`A004958(record[A019444(n+1)])`
-/

namespace A188471.P14455397283226751421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188471.P14455397283226751421

namespace A188471

/-- `A004958(record[A019444(n+1)])` -/
def P14455397283226751421.Spec : Prop :=
  ∀ n, P14455397283226751421.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P131618308644449978

`A101868(record[A002251(n)+1])`
-/

namespace A188471.P131618308644449978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A188471.P131618308644449978

namespace A188471

/-- `A101868(record[A002251(n)+1])` -/
def P131618308644449978.Spec : Prop :=
  ∀ n, P131618308644449978.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P6475872790997219183

`A101868(comp[A004957(n)]+n)`
-/

namespace A188471.P6475872790997219183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n)

end

end A188471.P6475872790997219183

namespace A188471

/-- `A101868(comp[A004957(n)]+n)` -/
def P6475872790997219183.Spec : Prop :=
  ∀ n, P6475872790997219183.a n = A188471 (n + 1)

end A188471

/-! ## A188471.P11049168124594795973

`A101868(comp[A004957(n)-n])`
-/

namespace A188471.P11049168124594795973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101868 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A188471.P11049168124594795973

namespace A188471

/-- `A101868(comp[A004957(n)-n])` -/
def P11049168124594795973.Spec : Prop :=
  ∀ n, P11049168124594795973.a n = A188471 (n + 1)

end A188471

/-!
# A188472: a(n) = [6r]-[nr]-[6r-nr], where r=(1+sqrt(5))/2 and []=floor.

The programs for A188472, the canonical program `A188472.P12778231603659369171` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188472 has offset 1).

The definition of A188472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188472.P4376009571719577409

`char[record[A022414(n)]]`
-/

namespace A188472.P4376009571719577409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188472.P4376009571719577409

namespace A188472

/-- `char[record[A022414(n)]]` -/
def P4376009571719577409.Spec : Prop :=
  ∀ n, (P4376009571719577409.a n : ℤ) = A188472 (n + 1)

end A188472

/-! ## A188472.P15849230884258382054

`char[A188473(n+1)-1]`
-/

namespace A188472.P15849230884258382054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188473 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188472.P15849230884258382054

namespace A188472

/-- `char[A188473(n+1)-1]` -/
def P15849230884258382054.Spec : Prop :=
  ∀ n, (P15849230884258382054.a n : ℤ) = A188472 (n + 1)

end A188472

/-! ## A188472.P3697254405087403309

`char[A001950(A188435(n+1))]`
-/

namespace A188472.P3697254405087403309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A188435 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A188472.P3697254405087403309

namespace A188472

/-- `char[A001950(A188435(n+1))]` -/
def P3697254405087403309.Spec : Prop :=
  ∀ n, (P3697254405087403309.a n : ℤ) = A188472 (n + 1)

end A188472

/-! ## A188472.P13367744485270441176

`and(A110010(n+1), A181712(n+1))`
-/

namespace A188472.P13367744485270441176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110010 (n + 1)) (A181712 (n + 1))

end

end A188472.P13367744485270441176

namespace A188472

/-- `and(A110010(n+1), A181712(n+1))` -/
def P13367744485270441176.Spec : Prop :=
  ∀ n, P13367744485270441176.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P8892171005333410286

`and(A110010(n+1), A188260(n+1))`
-/

namespace A188472.P8892171005333410286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110010 (n + 1)) (A188260 (n + 1))

end

end A188472.P8892171005333410286

namespace A188472

/-- `and(A110010(n+1), A188260(n+1))` -/
def P8892171005333410286.Spec : Prop :=
  ∀ n, P8892171005333410286.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P595346438890302249

`and(A110010(n+1), A188432(n+1))`
-/

namespace A188472.P595346438890302249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110010 (n + 1)) (A188432 (n + 1))

end

end A188472.P595346438890302249

namespace A188472

/-- `and(A110010(n+1), A188432(n+1))` -/
def P595346438890302249.Spec : Prop :=
  ∀ n, P595346438890302249.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P12778231603659369171

`A005614(n)*A188014(A019446(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A188472

/-- `A005614(n)*A188014(A019446(n+1))` -/
def P12778231603659369171.Spec : Prop :=
  ∀ n, P12778231603659369171.a n = A188472 (n + 1)

theorem P12778231603659369171.correct : P12778231603659369171.Spec := by
  intro n
  simp only [A188472, Nat.add_sub_cancel]

end A188472

/-! ## A188472.P13787226629205949737

`A188432(n+1)*A188470(A028310(n))`
-/

namespace A188472.P13787226629205949737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) * A188470 (A028310 n).toNat

end

end A188472.P13787226629205949737

namespace A188472

/-- `A188432(n+1)*A188470(A028310(n))` -/
def P13787226629205949737.Spec : Prop :=
  ∀ n, P13787226629205949737.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P1985391781858286146

`A188014(C(A005206(n+1), A005206(n)))`
-/

namespace A188472.P1985391781858286146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (Nat.choose (A005206 (n + 1)).toNat (A005206 n).toNat)

end

end A188472.P1985391781858286146

namespace A188472

/-- `A188014(C(A005206(n+1), A005206(n)))` -/
def P1985391781858286146.Spec : Prop :=
  ∀ n, P1985391781858286146.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P16409093076976379927

`A005713(n+1)*A188014(A005206(n+1))`
-/

namespace A188472.P16409093076976379927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (n + 1) * A188014 (A005206 (n + 1)).toNat

end

end A188472.P16409093076976379927

namespace A188472

/-- `A005713(n+1)*A188014(A005206(n+1))` -/
def P16409093076976379927.Spec : Prop :=
  ∀ n, P16409093076976379927.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P12886285779053011230

`A188014(A005206(n+1))*A188432(n+1)`
-/

namespace A188472.P12886285779053011230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A005206 (n + 1)).toNat * A188432 (n + 1)

end

end A188472.P12886285779053011230

namespace A188472

/-- `A188014(A005206(n+1))*A188432(n+1)` -/
def P12886285779053011230.Spec : Prop :=
  ∀ n, P12886285779053011230.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P122581132940108741

`A188014(A019446(n+1))*A188432(n+1)`
-/

namespace A188472.P122581132940108741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A019446 (n + 1)).toNat * A188432 (n + 1)

end

end A188472.P122581132940108741

namespace A188472

/-- `A188014(A019446(n+1))*A188432(n+1)` -/
def P122581132940108741.Spec : Prop :=
  ∀ n, P122581132940108741.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P14286082159314795161

`A188014(A005206(n+1))*A287523(n+1)`
-/

namespace A188472.P14286082159314795161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A005206 (n + 1)).toNat * A287523 (n + 1)

end

end A188472.P14286082159314795161

namespace A188472

/-- `A188014(A005206(n+1))*A287523(n+1)` -/
def P14286082159314795161.Spec : Prop :=
  ∀ n, P14286082159314795161.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P4452402994008000359

`A188014(A005206(n+1))*A189661(n+2)`
-/

namespace A188472.P4452402994008000359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A005206 (n + 1)).toNat * A189661 (n + 2)

end

end A188472.P4452402994008000359

namespace A188472

/-- `A188014(A005206(n+1))*A189661(n+2)` -/
def P4452402994008000359.Spec : Prop :=
  ∀ n, P4452402994008000359.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P17945004026749062409

`A188027(A000201(n+1))`
-/

namespace A188472.P17945004026749062409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A000201 (n + 1)).toNat

end

end A188472.P17945004026749062409

namespace A188472

/-- `A188027(A000201(n+1))` -/
def P17945004026749062409.Spec : Prop :=
  ∀ n, P17945004026749062409.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P8449610803126258623

`A188014(A002251(n)+1)`
-/

namespace A188472.P8449610803126258623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A002251 n + 1).toNat

end

end A188472.P8449610803126258623

namespace A188472

/-- `A188014(A002251(n)+1)` -/
def P8449610803126258623.Spec : Prop :=
  ∀ n, P8449610803126258623.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P7715560583565692060

`A188014(A019444(n+1))`
-/

namespace A188472.P7715560583565692060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A019444 (n + 1)).toNat

end

end A188472.P7715560583565692060

namespace A188472

/-- `A188014(A019444(n+1))` -/
def P7715560583565692060.Spec : Prop :=
  ∀ n, P7715560583565692060.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P8000319641170443817

`A188027(A058065(n+1))`
-/

namespace A188472.P8000319641170443817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A058065 (n + 1)).toNat

end

end A188472.P8000319641170443817

namespace A188472

/-- `A188027(A058065(n+1))` -/
def P8000319641170443817.Spec : Prop :=
  ∀ n, P8000319641170443817.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P6898346975236915460

`A188027(A066096(n+1))`
-/

namespace A188472.P6898346975236915460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A066096 (n + 1)).toNat

end

end A188472.P6898346975236915460

namespace A188472

/-- `A188027(A066096(n+1))` -/
def P6898346975236915460.Spec : Prop :=
  ∀ n, P6898346975236915460.a n = A188472 (n + 1)

end A188472

/-! ## A188472.P7809279443709148484

`A188027(A004956(n+1)-1)`
-/

namespace A188472.P7809279443709148484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188027 (A004956 (n + 1) - 1).toNat

end

end A188472.P7809279443709148484

namespace A188472

/-- `A188027(A004956(n+1)-1)` -/
def P7809279443709148484.Spec : Prop :=
  ∀ n, P7809279443709148484.a n = A188472 (n + 1)

end A188472

/-!
# A188473: Positions of 1 in A188472.

The programs for A188473, the canonical program `A188473.P2410951327315252382` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188473 has offset 1).

The definition of A188473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A188473.P12090978706512732400

`ceil(ϕ²*ceil(∑[ϕ/a(n-1)]))` with `a(0)=1`
-/

namespace A188473.P12090978706512732400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ 2 * (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℝ)⌉

end

end A188473.P12090978706512732400

namespace A188473

/-- `ceil(ϕ²*ceil(∑[ϕ/a(n-1)]))` -/
def P12090978706512732400.Spec : Prop :=
  ∀ n, P12090978706512732400.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P5539458843229271204

`floor(ϕ*A188016(n+1))`
-/

namespace A188473.P5539458843229271204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A188016 (n + 1) : ℝ)⌋

end

end A188473.P5539458843229271204

namespace A188473

/-- `floor(ϕ*A188016(n+1))` -/
def P5539458843229271204.Spec : Prop :=
  ∀ n, P5539458843229271204.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P2410951327315252382

`A188435(n+1)+A188016(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A188473

/-- `A188435(n+1)+A188016(n+1)` -/
def P2410951327315252382.Spec : Prop :=
  ∀ n, P2410951327315252382.a n = A188473 (n + 1)

theorem P2410951327315252382.correct : P2410951327315252382.Spec := by
  intro n
  simp only [A188473, Nat.add_sub_cancel]

end A188473

/-! ## A188473.P17570303945686831621

`A188030(n+1)-A188016(n+1)`
-/

namespace A188473.P17570303945686831621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188030 (n + 1) - A188016 (n + 1)

end

end A188473.P17570303945686831621

namespace A188473

/-- `A188030(n+1)-A188016(n+1)` -/
def P17570303945686831621.Spec : Prop :=
  ∀ n, P17570303945686831621.a n = A188473 (n + 1)

theorem P17570303945686831621.correct : P17570303945686831621.Spec := by
  intro n
  simp only [A188473, Nat.add_sub_cancel, A188473.P17570303945686831621.a, A188473.P2410951327315252382.a, A188016, A188016.P8834039496715161497.a, A188030, A188030.P265076706034375144.a, A188435, A188435.P2824334305626450135.a, A110654, A110654.P360289776162656549.a, A363057, A363057.P493503618799946074.a, A001468, A001468.P12360075344960480253.a, A142150, A142150.P17187063318547882225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188473

/-! ## A188473.P8622159680472360909

`A188018(A065475(n+1))`
-/

namespace A188473.P8622159680472360909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (A065475 (n + 1)).toNat

end

end A188473.P8622159680472360909

namespace A188473

/-- `A188018(A065475(n+1))` -/
def P8622159680472360909.Spec : Prop :=
  ∀ n, P8622159680472360909.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P5601588601203319429

`A188018(A181440(n+2))`
-/

namespace A188473.P5601588601203319429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (A181440 (n + 2)).toNat

end

end A188473.P5601588601203319429

namespace A188473

/-- `A188018(A181440(n+2))` -/
def P5601588601203319429.Spec : Prop :=
  ∀ n, P5601588601203319429.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P17532880454570751534

`A188018(A184985(n+2))`
-/

namespace A188473.P17532880454570751534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (A184985 (n + 2)).toNat

end

end A188473.P17532880454570751534

namespace A188473

/-- `A188018(A184985(n+2))` -/
def P17532880454570751534.Spec : Prop :=
  ∀ n, P17532880454570751534.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P17733264298194134421

`A188018(n+2-A130713(n+2))`
-/

namespace A188473.P17733264298194134421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 ((n + 2 : ℤ) - A130713 (n + 2)).toNat

end

end A188473.P17733264298194134421

namespace A188473

/-- `A188018(n+2-A130713(n+2))` -/
def P17733264298194134421.Spec : Prop :=
  ∀ n, P17733264298194134421.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P10790813692321682807

`A188018(n+2-A130716(n+2))`
-/

namespace A188473.P10790813692321682807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 ((n + 2 : ℤ) - A130716 (n + 2)).toNat

end

end A188473.P10790813692321682807

namespace A188473

/-- `A188018(n+2-A130716(n+2))` -/
def P10790813692321682807.Spec : Prop :=
  ∀ n, P10790813692321682807.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P1956586797110973866

`A188018(n+2)/(A130716(n+2)+1)`
-/

namespace A188473.P1956586797110973866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188018 (n + 2) : ℚ) / (A130716 (n + 2) + 1 : ℚ)

end

end A188473.P1956586797110973866

namespace A188473

/-- `A188018(n+2)/(A130716(n+2)+1)` -/
def P1956586797110973866.Spec : Prop :=
  ∀ n, P1956586797110973866.a n = (A188473 (n + 1) : ℚ)

end A188473

/-! ## A188473.P10780465706152835532

`record[A022414(n)+1]`
-/

namespace A188473.P10780465706152835532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022414 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188473.P10780465706152835532

namespace A188473

/-- `record[A022414(n)+1]` -/
def P10780465706152835532.Spec : Prop :=
  ∀ n, P10780465706152835532.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P5559169772195856397

`A004957(A188435(n+1))`
-/

namespace A188473.P5559169772195856397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (A188435 (n + 1)).toNat

end

end A188473.P5559169772195856397

namespace A188473

/-- `A004957(A188435(n+1))` -/
def P5559169772195856397.Spec : Prop :=
  ∀ n, P5559169772195856397.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P10333210343155605100

`A026356(A188435(n+1)+1)-1`
-/

namespace A188473.P10333210343155605100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (A188435 (n + 1) + 1).toNat - 1

end

end A188473.P10333210343155605100

namespace A188473

/-- `A026356(A188435(n+1)+1)-1` -/
def P10333210343155605100.Spec : Prop :=
  ∀ n, P10333210343155605100.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P6413080551655769775

`A026352(∪[A007066(n+1), A026352(n)])`
-/

namespace A188473.P6413080551655769775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A188473.P6413080551655769775

namespace A188473

/-- `A026352(∪[A007066(n+1), A026352(n)])` -/
def P6413080551655769775.Spec : Prop :=
  ∀ n, P6413080551655769775.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P2627910000837724602

`A026352(∪[A026356(n+2), A026352(n)])`
-/

namespace A188473.P2627910000837724602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A188473.P2627910000837724602

namespace A188473

/-- `A026352(∪[A026356(n+2), A026352(n)])` -/
def P2627910000837724602.Spec : Prop :=
  ∀ n, P2627910000837724602.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P15437386667365249034

`∩[A188469(n+1)+2, A188469(n+1)]`
-/

namespace A188473.P15437386667365249034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188473.P15437386667365249034

namespace A188473

/-- `∩[A188469(n+1)+2, A188469(n+1)]` -/
def P15437386667365249034.Spec : Prop :=
  ∀ n, (P15437386667365249034.a n : ℤ) = A188473 (n + 1)

end A188473

/-! ## A188473.P4980677744995240147

`A000201(A188016(n+1))`
-/

namespace A188473.P4980677744995240147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A188016 (n + 1)).toNat

end

end A188473.P4980677744995240147

namespace A188473

/-- `A000201(A188016(n+1))` -/
def P4980677744995240147.Spec : Prop :=
  ∀ n, P4980677744995240147.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P13808083154295715049

`record[A019444(2*A001468(n)+n)]`
-/

namespace A188473.P13808083154295715049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (2 * A001468 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A188473.P13808083154295715049

namespace A188473

/-- `record[A019444(2*A001468(n)+n)]` -/
def P13808083154295715049.Spec : Prop :=
  ∀ n, P13808083154295715049.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P14938952446164153270

`A026277(∩[A026277(n+1), A188468(n+1)])+1`
-/

namespace A188473.P14938952446164153270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188468 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026277 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A188473.P14938952446164153270

namespace A188473

/-- `A026277(∩[A026277(n+1), A188468(n+1)])+1` -/
def P14938952446164153270.Spec : Prop :=
  ∀ n, P14938952446164153270.a n = A188473 (n + 1)

end A188473

/-! ## A188473.P3804944928473968815

`A188435(2*A188435(n+1))`
-/

namespace A188473.P3804944928473968815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188435 (2 * A188435 (n + 1)).toNat

end

end A188473.P3804944928473968815

namespace A188473

/-- `A188435(2*A188435(n+1))` -/
def P3804944928473968815.Spec : Prop :=
  ∀ n, P3804944928473968815.a n = A188473 (n + 1)

end A188473

/-!
# A188474: A generalized Deutsch triangle.

The programs for A188474, there is no canonical definition to state claims against.
-/

/-! ## A188474.P13289324303004242646

`A225413(n)+A118759(A188461(n))`
-/

namespace A188474.P13289324303004242646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A118759 (A188461 n).toNat

end

end A188474.P13289324303004242646

/-! ## A188474.P11437298222222870074

`A225413(n)+A188461(A229621(n+1))`
-/

namespace A188474.P11437298222222870074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 n + A188461 (A229621 (n + 1)).toNat

end

end A188474.P11437298222222870074

/-! ## A188474.P17737911970408527819

`A321993(A188461(n))`
-/

namespace A188474.P17737911970408527819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A188461 n).toNat

end

end A188474.P17737911970408527819

/-! ## A188474.P17694722697514953606

`A237886(A008288(n))-1`
-/

namespace A188474.P17694722697514953606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237886 (A008288 n).toNat - 1

end

end A188474.P17694722697514953606

/-! ## A188474.P17767742167438523719

`A188461(A100754(n+2))`
-/

namespace A188474.P17767742167438523719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188461 (A100754 (n + 2)).toNat

end

end A188474.P17767742167438523719

/-!
# A188475: a(n) = (2*n^3 + 3*n^2 + n + 3)/3.

The programs for A188475, the canonical program `A188475.P10141490287828620120` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188475 has offset 0).

The definition of A188475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188475.P18109609130972173444

`ogf((1-x+5x^2-x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A188475.P18109609130972173444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5, -1] [1, -4, 6, -4, 1] n

end

end A188475.P18109609130972173444

namespace A188475

/-- `ogf((1-x+5x^2-x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P18109609130972173444.Spec : Prop :=
  ∀ n, P18109609130972173444.a n = A188475 n

end A188475

/-! ## A188475.P4638631956695216097

`(2*n^3+3*n²+n+3)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188475.P4638631956695216097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 3 + 3 * n ^ 2 + n + 3 : ℚ) / 3

end

end A188475.P4638631956695216097

namespace A188475

/-- `(2*n^3+3*n²+n+3)/3` -/
def P4638631956695216097.Spec : Prop :=
  ∀ n, P4638631956695216097.a n = (A188475 n : ℚ)

end A188475

/-! ## A188475.P10141490287828620120

`A006331(n)+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188475

/-- `A006331(n)+1` -/
def P10141490287828620120.Spec : Prop :=
  ∀ n, P10141490287828620120.a n = A188475 n

theorem P10141490287828620120.correct : P10141490287828620120.Spec := by
  intro n
  simp only [A188475]

end A188475

/-! ## A188475.P1119784796397583745

`or(1, ∑[2*n²])`
-/

namespace A188475.P1119784796397583745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188475.P1119784796397583745

namespace A188475

/-- `or(1, ∑[2*n²])` -/
def P1119784796397583745.Spec : Prop :=
  ∀ n, (P1119784796397583745.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P10149216665871800470

`xor(1, ∑[2*n²])`
-/

namespace A188475.P10149216665871800470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188475.P10149216665871800470

namespace A188475

/-- `xor(1, ∑[2*n²])` -/
def P10149216665871800470.Spec : Prop :=
  ∀ n, (P10149216665871800470.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P8775069741909858015

`∑[floor(2/acot(n²))]`
-/

namespace A188475.P8775069741909858015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n ^ 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188475.P8775069741909858015

namespace A188475

/-- `∑[floor(2/acot(n²))]` -/
def P8775069741909858015.Spec : Prop :=
  ∀ n, P8775069741909858015.a n = A188475 n

end A188475

/-! ## A188475.P5020551174470002687

`Δ[C(n², 2)/3+n]`
-/

namespace A188475.P5020551174470002687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 3 + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A188475.P5020551174470002687

namespace A188475

/-- `Δ[C(n², 2)/3+n]` -/
def P5020551174470002687.Spec : Prop :=
  ∀ n, P5020551174470002687.a n = (A188475 n : ℚ)

end A188475

/-! ## A188475.P440368428947047236

`a(n-1)+2*n²` with `a(0)=1`
-/

namespace A188475.P440368428947047236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * n ^ 2

end

end A188475.P440368428947047236

namespace A188475

/-- `a(n-1)+2*n²` -/
def P440368428947047236.Spec : Prop :=
  ∀ n, (P440368428947047236.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P14707182944035118393

`Δ[n*(C(n+1, 3)+1)]`
-/

namespace A188475.P14707182944035118393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (n + 1) 3 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A188475.P14707182944035118393

namespace A188475

/-- `Δ[n*(C(n+1, 3)+1)]` -/
def P14707182944035118393.Spec : Prop :=
  ∀ n, P14707182944035118393.a n = A188475 n

end A188475

/-! ## A188475.P16672496669184706709

`-xor(-1, ∑[n*2*n])`
-/

namespace A188475.P16672496669184706709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A188475.P16672496669184706709

namespace A188475

/-- `-xor(-1, ∑[n*2*n])` -/
def P16672496669184706709.Spec : Prop :=
  ∀ n, P16672496669184706709.a n = A188475 n

end A188475

/-! ## A188475.P1489590808881357824

`∑[gcd(2*n², C(2, n²))]`
-/

namespace A188475.P1489590808881357824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n ^ 2) (Nat.choose 2 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188475.P1489590808881357824

namespace A188475

/-- `∑[gcd(2*n², C(2, n²))]` -/
def P1489590808881357824.Spec : Prop :=
  ∀ n, (P1489590808881357824.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P12271692424748310205

`∑[∑[a(n-1)+4]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A188475.P12271692424748310205
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188475.P12271692424748310205

namespace A188475

/-- `∑[∑[a(n-1)+4]]` -/
def P12271692424748310205.Spec : Prop :=
  ∀ n, (P12271692424748310205.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P2035572922397837355

`∑[C(2, n+2)+2*n²]`
-/

namespace A188475.P2035572922397837355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188475.P2035572922397837355

namespace A188475

/-- `∑[C(2, n+2)+2*n²]` -/
def P2035572922397837355.Spec : Prop :=
  ∀ n, (P2035572922397837355.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P7576916494780574672

`n²+a(n-1)+n²` with `a(0)=1`
-/

namespace A188475.P7576916494780574672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ 2 + (a (n - 1) + n ^ 2)

end

end A188475.P7576916494780574672

namespace A188475

/-- `n²+a(n-1)+n²` -/
def P7576916494780574672.Spec : Prop :=
  ∀ n, (P7576916494780574672.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P12618062430422996902

`∑[n²*gcd(2, a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A188475.P12618062430422996902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  n ^ 2 * Nat.gcd 2 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188475.P12618062430422996902

namespace A188475

/-- `∑[n²*gcd(2, a(n-1))]` -/
def P12618062430422996902.Spec : Prop :=
  ∀ n, (P12618062430422996902.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P6884523571089578924

`∑[4*n-(2-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A188475.P6884523571089578924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (4 * n : ℤ) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188475.P6884523571089578924

namespace A188475

/-- `∑[4*n-(2-a(n-1))]` -/
def P6884523571089578924.Spec : Prop :=
  ∀ n, P6884523571089578924.a n = A188475 n

end A188475

/-! ## A188475.P14193450714811777117

`2*(a(n-1)/2+n*n)` with `a(0)=1`
-/

namespace A188475.P14193450714811777117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) / 2 + (n * n : ℚ))

end

end A188475.P14193450714811777117

namespace A188475

/-- `2*(a(n-1)/2+n*n)` -/
def P14193450714811777117.Spec : Prop :=
  ∀ n, P14193450714811777117.a n = (A188475 n : ℚ)

end A188475

/-! ## A188475.P1268749496769002885

`a(n-1)+C(2*n, 2)+n` with `a(0)=1`
-/

namespace A188475.P1268749496769002885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (2 * n) 2 + n

end

end A188475.P1268749496769002885

namespace A188475

/-- `a(n-1)+C(2*n, 2)+n` -/
def P1268749496769002885.Spec : Prop :=
  ∀ n, (P1268749496769002885.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P12600448516861719936

`∑[gcd(n*2*n, floor(1/(n+1)))]`
-/

namespace A188475.P12600448516861719936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n * (2 * n) : ℤ) ⌊1 / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188475.P12600448516861719936

namespace A188475

/-- `∑[gcd(n*2*n, floor(1/(n+1)))]` -/
def P12600448516861719936.Spec : Prop :=
  ∀ n, (P12600448516861719936.a n : ℤ) = A188475 n

end A188475

/-! ## A188475.P3346231348719883645

`(lcm(2*n+1, ∑[2*n])+3)/3`
-/

namespace A188475.P3346231348719883645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) + 3 : ℚ) / 3

end

end A188475.P3346231348719883645

namespace A188475

/-- `(lcm(2*n+1, ∑[2*n])+3)/3` -/
def P3346231348719883645.Spec : Prop :=
  ∀ n, P3346231348719883645.a n = (A188475 n : ℚ)

end A188475

/-!
# A188476: Diagonal sums of number triangle A188474.

The programs for A188476, there is no canonical definition to state claims against.
-/

/-! ## A188476.P4665453582944121960

`A182894(n+3)/2`
-/

namespace A188476.P4665453582944121960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182894 (n + 3) : ℚ) / 2

end

end A188476.P4665453582944121960

/-! ## A188476.P2998773073255847126

`ceil(record[A182894(n)/2])`
-/

namespace A188476.P2998773073255847126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182894 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A188476.P2998773073255847126

/-! ## A188476.P5776948976314092457

`record[A182894(n)]/A040001(2*n)`
-/

namespace A188476.P5776948976314092457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182894 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A040001 (2 * n) : ℚ)

end

end A188476.P5776948976314092457

/-! ## A188476.P12114720574653404638

`record[A182894(n)]/A020639(A000118(n))`
-/

namespace A188476.P12114720574653404638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182894 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A020639 (A000118 n).toNat : ℚ)

end

end A188476.P12114720574653404638

/-!
# A188477: Expansion of (1+x+x^2)*(1-8*x^3-14*x^4+8*x^7+x^8)/(1+x^4)^3.

The programs for A188477, the canonical program `A188477.P17259912465575337888` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188477 has offset 0).

The definition of A188477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2-8x^3-22x^4-22x^5-14x^6+8x^7+9x^8+9x^9+x^10)/(1+3x^4+3x^8+x^12))` (program `A188477.P17259912465575337888`, by `A188477.P17259912465575337888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A188477.P17259912465575337888

`ogf((1+x+x^2-8x^3-22x^4-22x^5-14x^6+8x^7+9x^8+9x^9+x^10)/(1+3x^4+3x^8+x^12))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188477

/-- `ogf((1+x+x^2-8x^3-22x^4-22x^5-14x^6+8x^7+9x^8+9x^9+x^10)/(1+3x^4+3x^8+x^12))` -/
def P17259912465575337888.Spec : Prop :=
  ∀ n, P17259912465575337888.a n = A188477 n

theorem P17259912465575337888.correct : P17259912465575337888.Spec := by
  intro n
  simp only [A188477]

end A188477

/-!
# A188478: Binomial variation of the Catalan numbers: a(n) = sum( binomial(n-1-i, i)*a(i)*a(n-1-i), i=0..(n-1) ) with a(0)=1.

The programs for A188478, there is no canonical definition to state claims against.
-/

/-! ## A188478.P15452499819693892557

`A157271(A125658(n)-A083291(n))`
-/

namespace A188478.P15452499819693892557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A125658 n - A083291 n).toNat

end

end A188478.P15452499819693892557

/-! ## A188478.P6154045852642071832

`A186743(A185234(n))+A002846(n+1)`
-/

namespace A188478.P6154045852642071832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186743 (A185234 n).toNat + A002846 (n + 1)

end

end A188478.P6154045852642071832

/-! ## A188478.P10855116622409455490

`A354767(A125658(n)+1)-A125658(n)`
-/

namespace A188478.P10855116622409455490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (A125658 n + 1).toNat - A125658 n

end

end A188478.P10855116622409455490

/-! ## A188478.P8891811175660365193

`A056823(A058276(2*n+1))+A002846(n+1)`
-/

namespace A188478.P8891811175660365193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056823 (A058276 (2 * n + 1)).toNat + A002846 (n + 1)

end

end A188478.P8891811175660365193

/-!
# A188479: Binomial variation of the Catalan numbers: a(n) = sum( binomial(n-i, i)*a(i)*a(n-1-i), i=0..(n-1) ) with a(0)=1.

The programs for A188479, there is no canonical definition to state claims against.
-/

/-! ## A188479.P8594753278465225678

`A136034(A345333(n+1))`
-/

namespace A188479.P8594753278465225678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136034 (A345333 (n + 1)).toNat

end

end A188479.P8594753278465225678

/-! ## A188479.P1806898571289949792

`A065033(or(A326341(n), A328035(n+2)))`
-/

namespace A188479.P1806898571289949792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lor (A326341 n) (A328035 (n + 2))).toNat

end

end A188479.P1806898571289949792

/-! ## A188479.P13745767628209335952

`A375712(a(n-2)+a(n-1)-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A188479.P13745767628209335952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A375712 (a (n - 2) + a (n - 1) - 1).toNat

end

end A188479.P13745767628209335952

/-!
# A188480: a(n) = (n^4 + 16*n^3 + 65*n^2 + 26*n + 12)/12.

The programs for A188480, the canonical program `A188480.P18370074450431103197` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188480 has offset 0).

The definition of A188480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188480.P1459031112005044207

`ogf((1+5x-x^2-6x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A188480.P1459031112005044207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -1, -6, 3] [1, -5, 10, -10, 5, -1] n

end

end A188480.P1459031112005044207

namespace A188480

/-- `ogf((1+5x-x^2-6x^3+3x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1459031112005044207.Spec : Prop :=
  ∀ n, P1459031112005044207.a n = A188480 n

end A188480

/-! ## A188480.P18370074450431103197

`1+(n^4+16*n^3+65*n²+26*n)/12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188480

/-- `1+(n^4+16*n^3+65*n²+26*n)/12` -/
def P18370074450431103197.Spec : Prop :=
  ∀ n, P18370074450431103197.a n = (A188480 n : ℚ)

end A188480

/-! ## A188480.P13559526041870431667

`(n^4+16*n^3+65*n²+26*n+12)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A188480.P13559526041870431667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + 16 * n ^ 3 + 65 * n ^ 2 + 26 * n + 12 : ℚ) / 12

end

end A188480.P13559526041870431667

namespace A188480

/-- `(n^4+16*n^3+65*n²+26*n+12)/12` -/
def P13559526041870431667.Spec : Prop :=
  ∀ n, P13559526041870431667.a n = (A188480 n : ℚ)

end A188480

/-! ## A188480.P16591397325441747296

`∑[∑[A183897(n+1)+∑[n]]]`
-/

namespace A188480.P16591397325441747296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183897 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188480.P16591397325441747296

namespace A188480

/-- `∑[∑[A183897(n+1)+∑[n]]]` -/
def P16591397325441747296.Spec : Prop :=
  ∀ n, P16591397325441747296.a n = A188480 n

end A188480

/-! ## A188480.P9192969299999013545

`abs(∑[n+4]-3-A090453(n))`
-/

namespace A188480.P9192969299999013545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3 - A090453 n|

end

end A188480.P9192969299999013545

namespace A188480

/-- `abs(∑[n+4]-3-A090453(n))` -/
def P9192969299999013545.Spec : Prop :=
  ∀ n, P9192969299999013545.a n = A188480 n

end A188480

/-! ## A188480.P1318652805680963779

`abs(A046691(n)-A350116(n))`
-/

namespace A188480.P1318652805680963779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046691 n - A350116 n|

end

end A188480.P1318652805680963779

namespace A188480

/-- `abs(A046691(n)-A350116(n))` -/
def P1318652805680963779.Spec : Prop :=
  ∀ n, P1318652805680963779.a n = A188480 n

end A188480

/-!
# A188481: Riordan matrix (1/(1-4x),(1-sqrt(1-4x))/(2*sqrt(1-4x))).

The programs for A188481, there is no canonical definition to state claims against.
-/

/-! ## A188481.P7487177394287221970

`A035324(n+1)+A035324(n+2)%A188110(n+1)`
-/

namespace A188481.P7487177394287221970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035324 (n + 1) + Int.tmod (A035324 (n + 2)) (A188110 (n + 1))

end

end A188481.P7487177394287221970

/-!
# A188482: Diagonal sums of the Riordan matrix (1/(1-4x),(1-sqrt(1-4x))/(2*sqrt(1-4x))) (A188481).

The programs for A188482, there is no canonical definition to state claims against.
-/

/-! ## A188482.P7492495691349061753

`(A276797(A291010(n)+1)+n)/2`
-/

namespace A188482.P7492495691349061753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276797 (A291010 n + 1).toNat + (n : ℤ) : ℚ) / 2

end

end A188482.P7492495691349061753

/-! ## A188482.P3143709151039570370

`A255117(n)-A255120(A149439(n))`
-/

namespace A188482.P3143709151039570370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255117 n - A255120 (A149439 n).toNat

end

end A188482.P3143709151039570370

/-!
# A188484: Numbers n (other than powers of 2) such that abs(abundance(n)) is an odd square.

The programs for A188484, there is no canonical definition to state claims against.
-/

/-! ## A188484.P15333343689210079418

`∩[A028982(n+1), A185031(n+1)]`
-/

namespace A188484.P15333343689210079418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A188484.P15333343689210079418

/-!
# A188489: Exponential transform of (A000275 number of pairs of permutations with rise/rise forbidden).

The programs for A188489, there is no canonical definition to state claims against.
-/

/-! ## A188489.P3596100565299149537

`A099801(A001927(n))-1`
-/

namespace A188489.P3596100565299149537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A001927 n).toNat - 1

end

end A188489.P3596100565299149537

/-! ## A188489.P2210884831904164674

`A048475(2*A005640(n))`
-/

namespace A188489.P2210884831904164674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048475 (2 * A005640 n).toNat

end

end A188489.P2210884831904164674

/-!
# A188490: Exponential transform of A003024, number of acyclic digraphs with n labeled nodes.

The programs for A188490, there is no canonical definition to state claims against.
-/

/-! ## A188490.P17055993526261249959

`A274399(∏[A036766(n)])`
-/

namespace A188490.P17055993526261249959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188490.P17055993526261249959

/-! ## A188490.P16679450750298632156

`A274399(∏[A124302(n)])`
-/

namespace A188490.P16679450750298632156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A188490.P16679450750298632156

/-!
# A188491: Number of permutations p on the set [n] with the properties that abs(p(i)-i) <= 3 for all i, p(1) <= 3, and p(4) >= 2.

The programs for A188491, the canonical program `A188491.P7951845381765073430` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188491 has offset 0).

The definition of A188491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188491.P7951845381765073430

`ogf((x+x^2+x^3-x^4-3x^5-3x^6-x^7)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188491

/-- `ogf((x+x^2+x^3-x^4-3x^5-3x^6-x^7)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))` -/
def P7951845381765073430.Spec : Prop :=
  ∀ n, P7951845381765073430.a n = A188491 n

theorem P7951845381765073430.correct : P7951845381765073430.Spec := by
  intro n
  simp only [A188491]

end A188491

/-! ## A188491.P5657046016301244767

`A188495(n)+A002528(abs(1-n))`
-/

namespace A188491.P5657046016301244767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 n + A002528 |1 - (n : ℤ)|.toNat

end

end A188491.P5657046016301244767

namespace A188491

/-- `A188495(n)+A002528(abs(1-n))` -/
def P5657046016301244767.Spec : Prop :=
  ∀ n, P5657046016301244767.a n = A188491 n

end A188491

/-! ## A188491.P15709532894906483323

`A002528(n+1)-A002527(n)`
-/

namespace A188491.P15709532894906483323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002528 (n + 1) - A002527 n

end

end A188491.P15709532894906483323

namespace A188491

/-- `A002528(n+1)-A002527(n)` -/
def P15709532894906483323.Spec : Prop :=
  ∀ n, P15709532894906483323.a n = A188491 n

end A188491

/-! ## A188491.P13371519064931415199

`A002529(n+1)-(A188492(n)+A002527(n))`
-/

namespace A188491.P13371519064931415199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002529 (n + 1) - (A188492 n + A002527 n)

end

end A188491.P13371519064931415199

namespace A188491

/-- `A002529(n+1)-(A188492(n)+A002527(n))` -/
def P13371519064931415199.Spec : Prop :=
  ∀ n, P13371519064931415199.a n = A188491 n

end A188491

/-! ## A188491.P11576575292130077380

`A188493(n+1)-(A188497(n)+A188495(n))`
-/

namespace A188491.P11576575292130077380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188493 (n + 1) - (A188497 n + A188495 n)

end

end A188491.P11576575292130077380

namespace A188491

/-- `A188493(n+1)-(A188497(n)+A188495(n))` -/
def P11576575292130077380.Spec : Prop :=
  ∀ n, P11576575292130077380.a n = A188491 n

theorem P11576575292130077380.correct : P11576575292130077380.Spec := by
  intro n
  simp only [A188491, Nat.add_sub_cancel, A188491.P11576575292130077380.a, A188491.P7951845381765073430.a, A188493, A188493.P13991813890065796603.a, A188495, A188495.P372228089584432527.a, A188497, A188497.P3985296474896057511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188491

/-! ## A188491.P11958419500379775610

`A002528(n+1)+A002526(n)-A188494(n+1)`
-/

namespace A188491.P11958419500379775610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002528 (n + 1) + (A002526 n - A188494 (n + 1))

end

end A188491.P11958419500379775610

namespace A188491

/-- `A002528(n+1)+A002526(n)-A188494(n+1)` -/
def P11958419500379775610.Spec : Prop :=
  ∀ n, P11958419500379775610.a n = A188491 n

end A188491

/-! ## A188491.P8331566649194106916

`A002528(n+1)+A188495(n)-A188496(n+1)`
-/

namespace A188491.P8331566649194106916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002528 (n + 1) + (A188495 n - A188496 (n + 1))

end

end A188491.P8331566649194106916

namespace A188491

/-- `A002528(n+1)+A188495(n)-A188496(n+1)` -/
def P8331566649194106916.Spec : Prop :=
  ∀ n, P8331566649194106916.a n = A188491 n

end A188491

/-!
# A188492: a(n) = A002526(n+2) + A002526(n) - A002527(n+2) - A002527(n+1) + A002527(n) - A188493(n).

The programs for A188492, the canonical program `A188492.P5890936172905802982` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188492 has offset 0).

The definition of A188492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188492.P14974508667467483501

`ogf((2x^2+4x^3+2x^4)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))`
-/

namespace A188492.P14974508667467483501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 4, 2] [1, -1, -3, -3, -13, -21, -19, -3, 7, 9, 5, 3, 3, 1] n

end

end A188492.P14974508667467483501

namespace A188492

/-- `ogf((2x^2+4x^3+2x^4)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))` -/
def P14974508667467483501.Spec : Prop :=
  ∀ n, P14974508667467483501.a n = A188492 n

end A188492

/-! ## A188492.P5890936172905802982

`A002526(n+2)+A002526(n)-A002527(n+2)-A002527(n+1)+A002527(n)-A188493(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188492

/-- `A002526(n+2)+A002526(n)-A002527(n+2)-A002527(n+1)+A002527(n)-A188493(n)` -/
def P5890936172905802982.Spec : Prop :=
  ∀ n, P5890936172905802982.a n = A188492 n

theorem P5890936172905802982.correct : P5890936172905802982.Spec := by
  intro n
  simp only [A188492]

end A188492

/-! ## A188492.P8421655419442451435

`A188496(abs(1-n))+A188496(n)`
-/

namespace A188492.P8421655419442451435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188496 |1 - (n : ℤ)|.toNat + A188496 n

end

end A188492.P8421655419442451435

namespace A188492

/-- `A188496(abs(1-n))+A188496(n)` -/
def P8421655419442451435.Spec : Prop :=
  ∀ n, P8421655419442451435.a n = A188492 n

end A188492

/-! ## A188492.P13210961286182394669

`A002529(n+1)-A002528(n+1)`
-/

namespace A188492.P13210961286182394669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002529 (n + 1) - A002528 (n + 1)

end

end A188492.P13210961286182394669

namespace A188492

/-- `A002529(n+1)-A002528(n+1)` -/
def P13210961286182394669.Spec : Prop :=
  ∀ n, P13210961286182394669.a n = A188492 n

end A188492

/-! ## A188492.P9808648587559995943

`A002529(n+1)-(A188491(n)+A002527(n))`
-/

namespace A188492.P9808648587559995943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002529 (n + 1) - (A188491 n + A002527 n)

end

end A188492.P9808648587559995943

namespace A188492

/-- `A002529(n+1)-(A188491(n)+A002527(n))` -/
def P9808648587559995943.Spec : Prop :=
  ∀ n, P9808648587559995943.a n = A188492 n

end A188492

/-! ## A188492.P3351192311430381903

`A188379(n+1)-(A188493(n)+A002529(n))`
-/

namespace A188492.P3351192311430381903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188379 (n + 1) - (A188493 n + A002529 n)

end

end A188492.P3351192311430381903

namespace A188492

/-- `A188379(n+1)-(A188493(n)+A002529(n))` -/
def P3351192311430381903.Spec : Prop :=
  ∀ n, P3351192311430381903.a n = A188492 n

theorem P3351192311430381903.correct : P3351192311430381903.Spec := by
  intro n
  simp only [A188492, Nat.add_sub_cancel, A188492.P3351192311430381903.a, A188492.P5890936172905802982.a, A002526, A002526.P16589324854492449764.a, A002527, A002527.P5590407879727822770.a, A002529, A002529.P3351380661873864646.a, A188379, A188379.P3375895311775397548.a, A188493, A188493.P13991813890065796603.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188492

/-! ## A188492.P1416848462658086237

`A002527(n+2)-(A188494(n+2)+A002528(n+1))`
-/

namespace A188492.P1416848462658086237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002527 (n + 2) - (A188494 (n + 2) + A002528 (n + 1))

end

end A188492.P1416848462658086237

namespace A188492

/-- `A002527(n+2)-(A188494(n+2)+A002528(n+1))` -/
def P1416848462658086237.Spec : Prop :=
  ∀ n, P1416848462658086237.a n = A188492 n

end A188492

/-!
# A188493: a(n) = A188491(n-1) + A188495(n-1) + A188497(n-1).

The programs for A188493, the canonical program `A188493.P13991813890065796603` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188493 has offset 0).

The definition of A188493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188493.P13991813890065796603

`ogf((2x^2+2x^3-2x^4-9x^5-6x^6-2x^7+4x^8+2x^9+2x^11+x^12)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188493

/-- `ogf((2x^2+2x^3-2x^4-9x^5-6x^6-2x^7+4x^8+2x^9+2x^11+x^12)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))` -/
def P13991813890065796603.Spec : Prop :=
  ∀ n, P13991813890065796603.a n = A188493 n

theorem P13991813890065796603.correct : P13991813890065796603.Spec := by
  intro n
  simp only [A188493]

end A188493

/-! ## A188493.P6250364024850989059

`A188379(n+1)-(A188492(n)+A002529(n))`
-/

namespace A188493.P6250364024850989059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188379 (n + 1) - (A188492 n + A002529 n)

end

end A188493.P6250364024850989059

namespace A188493

/-- `A188379(n+1)-(A188492(n)+A002529(n))` -/
def P6250364024850989059.Spec : Prop :=
  ∀ n, P6250364024850989059.a n = A188493 n

theorem P6250364024850989059.correct : P6250364024850989059.Spec := by
  intro n
  simp only [A188493, Nat.add_sub_cancel, A188493.P6250364024850989059.a, A188493.P13991813890065796603.a, A002529, A002529.P3351380661873864646.a, A188379, A188379.P3375895311775397548.a, A188492, A188492.P5890936172905802982.a, A002526, A002526.P16589324854492449764.a, A002527, A002527.P5590407879727822770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188493

/-! ## A188493.P6616949025934562447

`A188379(n+1)-(A002527(n+2)-A188491(n+2))`
-/

namespace A188493.P6616949025934562447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188379 (n + 1) - (A002527 (n + 2) - A188491 (n + 2))

end

end A188493.P6616949025934562447

namespace A188493

/-- `A188379(n+1)-(A002527(n+2)-A188491(n+2))` -/
def P6616949025934562447.Spec : Prop :=
  ∀ n, P6616949025934562447.a n = A188493 n

end A188493

/-!
# A188494: Number of permutations p on the set [n] with the properties that abs(p(i)-i) <= 3 for all i and p(1) <= 2.

The programs for A188494, the canonical program `A188494.P5447194835794538161` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188494 has offset 0).

The definition of A188494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188494.P5447194835794538161

`ogf((x+x^2-x^3-x^4-x^5+x^6+x^7)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188494

/-- `ogf((x+x^2-x^3-x^4-x^5+x^6+x^7)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))` -/
def P5447194835794538161.Spec : Prop :=
  ∀ n, P5447194835794538161.a n = A188494 n

theorem P5447194835794538161.correct : P5447194835794538161.Spec := by
  intro n
  simp only [A188494]

end A188494

/-! ## A188494.P779614099235178759

`A188491(n+1)-A002528(n)-A002526(n)`
-/

namespace A188494.P779614099235178759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188491 (n + 1) - A002528 n - A002526 n

end

end A188494.P779614099235178759

namespace A188494

/-- `A188491(n+1)-A002528(n)-A002526(n)` -/
def P779614099235178759.Spec : Prop :=
  ∀ n, P779614099235178759.a n = A188494 n

theorem P779614099235178759.correct : P779614099235178759.Spec := by
  intro n
  simp only [A188494, Nat.add_sub_cancel, A188494.P779614099235178759.a, A188494.P5447194835794538161.a, A002526, A002526.P16589324854492449764.a, A002528, A002528.P2417248066459774175.a, A188491, A188491.P7951845381765073430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188494

/-! ## A188494.P18068262069731529675

`A002527(n)-A002529(abs(1-n))`
-/

namespace A188494.P18068262069731529675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002527 n - A002529 |1 - (n : ℤ)|.toNat

end

end A188494.P18068262069731529675

namespace A188494

/-- `A002527(n)-A002529(abs(1-n))` -/
def P18068262069731529675.Spec : Prop :=
  ∀ n, P18068262069731529675.a n = A188494 n

end A188494

/-! ## A188494.P3620368829078905780

`A188495(n)+A002529(A289207(n))`
-/

namespace A188494.P3620368829078905780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 n + A002529 (A289207 n).toNat

end

end A188494.P3620368829078905780

namespace A188494

/-- `A188495(n)+A002529(A289207(n))` -/
def P3620368829078905780.Spec : Prop :=
  ∀ n, P3620368829078905780.a n = A188494 n

end A188494

/-! ## A188494.P13665889674004031516

`A188495(n+1)-A002526(n)`
-/

namespace A188494.P13665889674004031516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 (n + 1) - A002526 n

end

end A188494.P13665889674004031516

namespace A188494

/-- `A188495(n+1)-A002526(n)` -/
def P13665889674004031516.Spec : Prop :=
  ∀ n, P13665889674004031516.a n = A188494 n

end A188494

/-! ## A188494.P6146933872265735738

`A188497(n+1)-A188498(n)`
-/

namespace A188494.P6146933872265735738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188497 (n + 1) - A188498 n

end

end A188494.P6146933872265735738

namespace A188494

/-- `A188497(n+1)-A188498(n)` -/
def P6146933872265735738.Spec : Prop :=
  ∀ n, P6146933872265735738.a n = A188494 n

end A188494

/-! ## A188494.P16597533360751233707

`A188491(n+1)-(A002528(n)+A002526(n))`
-/

namespace A188494.P16597533360751233707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188491 (n + 1) - (A002528 n + A002526 n)

end

end A188494.P16597533360751233707

namespace A188494

/-- `A188491(n+1)-(A002528(n)+A002526(n))` -/
def P16597533360751233707.Spec : Prop :=
  ∀ n, P16597533360751233707.a n = A188494 n

theorem P16597533360751233707.correct : P16597533360751233707.Spec := by
  intro n
  simp only [A188494, Nat.add_sub_cancel, A188494.P16597533360751233707.a, A188494.P5447194835794538161.a, A002526, A002526.P16589324854492449764.a, A002528, A002528.P2417248066459774175.a, A188491, A188491.P7951845381765073430.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188494

/-! ## A188494.P14542659928255856908

`A188496(n+2)-(A002527(n+1)+A002526(n))`
-/

namespace A188494.P14542659928255856908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188496 (n + 2) - (A002527 (n + 1) + A002526 n)

end

end A188494.P14542659928255856908

namespace A188494

/-- `A188496(n+2)-(A002527(n+1)+A002526(n))` -/
def P14542659928255856908.Spec : Prop :=
  ∀ n, P14542659928255856908.a n = A188494 n

end A188494

/-!
# A188495: Number of permutations p on the set [n] with the properties that abs(p(i)-i) <= 3 for all i, p(1) <= 2, and p(4) >= 2.

The programs for A188495, the canonical program `A188495.P372228089584432527` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188495 has offset 0).

The definition of A188495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188495.P372228089584432527

`ogf((x-2x^3-2x^4-2x^5+2x^7+x^8)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188495

/-- `ogf((x-2x^3-2x^4-2x^5+2x^7+x^8)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))` -/
def P372228089584432527.Spec : Prop :=
  ∀ n, P372228089584432527.a n = A188495 n

theorem P372228089584432527.correct : P372228089584432527.Spec := by
  intro n
  simp only [A188495]

end A188495

/-! ## A188495.P2642960863671083148

`A188493(n+1)-A188491(n)-A188497(n)`
-/

namespace A188495.P2642960863671083148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188493 (n + 1) - A188491 n - A188497 n

end

end A188495.P2642960863671083148

namespace A188495

/-- `A188493(n+1)-A188491(n)-A188497(n)` -/
def P2642960863671083148.Spec : Prop :=
  ∀ n, P2642960863671083148.a n = A188495 n

theorem P2642960863671083148.correct : P2642960863671083148.Spec := by
  intro n
  simp only [A188495, Nat.add_sub_cancel, A188495.P2642960863671083148.a, A188495.P372228089584432527.a, A188491, A188491.P7951845381765073430.a, A188493, A188493.P13991813890065796603.a, A188497, A188497.P3985296474896057511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188495

/-! ## A188495.P16009046147898374781

`A188494(n)-A002529(A289207(n))`
-/

namespace A188495.P16009046147898374781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188494 n - A002529 (A289207 n).toNat

end

end A188495.P16009046147898374781

namespace A188495

/-- `A188494(n)-A002529(A289207(n))` -/
def P16009046147898374781.Spec : Prop :=
  ∀ n, P16009046147898374781.a n = A188495 n

end A188495

/-! ## A188495.P6847718577241844487

`A188491(n)-A002528(log2(A011782(n)))`
-/

namespace A188495.P6847718577241844487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188491 n - A002528 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A188495.P6847718577241844487

namespace A188495

/-- `A188491(n)-A002528(log2(A011782(n)))` -/
def P6847718577241844487.Spec : Prop :=
  ∀ n, P6847718577241844487.a n = A188495 n

end A188495

/-! ## A188495.P17490205700593789037

`A188491(n)-A002528(n-char[A264966(n+1)])`
-/

namespace A188495.P17490205700593789037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188491 n - A002528 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A188495.P17490205700593789037

namespace A188495

/-- `A188491(n)-A002528(n-char[A264966(n+1)])` -/
def P17490205700593789037.Spec : Prop :=
  ∀ n, P17490205700593789037.a n = A188495 n

end A188495

/-! ## A188495.P17892318588576785509

`A188496(n+1)-A002527(n)`
-/

namespace A188495.P17892318588576785509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188496 (n + 1) - A002527 n

end

end A188495.P17892318588576785509

namespace A188495

/-- `A188496(n+1)-A002527(n)` -/
def P17892318588576785509.Spec : Prop :=
  ∀ n, P17892318588576785509.a n = A188495 n

end A188495

/-! ## A188495.P8493715237890641768

`A188493(n+1)-(A188497(n)+A188491(n))`
-/

namespace A188495.P8493715237890641768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188493 (n + 1) - (A188497 n + A188491 n)

end

end A188495.P8493715237890641768

namespace A188495

/-- `A188493(n+1)-(A188497(n)+A188491(n))` -/
def P8493715237890641768.Spec : Prop :=
  ∀ n, P8493715237890641768.a n = A188495 n

theorem P8493715237890641768.correct : P8493715237890641768.Spec := by
  intro n
  simp only [A188495, Nat.add_sub_cancel, A188495.P8493715237890641768.a, A188495.P372228089584432527.a, A188491, A188491.P7951845381765073430.a, A188493, A188493.P13991813890065796603.a, A188497, A188497.P3985296474896057511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A188495

/-! ## A188495.P18006604247028092427

`A188496(n+1)+A188491(n)-A002528(n+1)`
-/

namespace A188495.P18006604247028092427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188496 (n + 1) + (A188491 n - A002528 (n + 1))

end

end A188495.P18006604247028092427

namespace A188495

/-- `A188496(n+1)+A188491(n)-A002528(n+1)` -/
def P18006604247028092427.Spec : Prop :=
  ∀ n, P18006604247028092427.a n = A188495 n

end A188495

/-! ## A188495.P17607890580217714118

`A188496(n+1)+A002526(n)-A188494(n+1)`
-/

namespace A188495.P17607890580217714118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188496 (n + 1) + (A002526 n - A188494 (n + 1))

end

end A188495.P17607890580217714118

namespace A188495

/-- `A188496(n+1)+A002526(n)-A188494(n+1)` -/
def P17607890580217714118.Spec : Prop :=
  ∀ n, P17607890580217714118.a n = A188495 n

end A188495

/-!
# A188496: a(n) = A188492(n+1) - A188495(n) - A002527(n).

The programs for A188496, the canonical program `A188496.P17342167157377224321` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188496 has offset 0).

The definition of A188496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188496.P4290127969851690343

`ogf((2x^2+2x^3)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))`
-/

namespace A188496.P4290127969851690343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 2] [1, -1, -3, -3, -13, -21, -19, -3, 7, 9, 5, 3, 3, 1] n

end

end A188496.P4290127969851690343

namespace A188496

/-- `ogf((2x^2+2x^3)/(1-x-3x^2-3x^3-13x^4-21x^5-19x^6-3x^7+7x^8+9x^9+5x^10+3x^11+3x^12+x^13))` -/
def P4290127969851690343.Spec : Prop :=
  ∀ n, P4290127969851690343.a n = A188496 n

end A188496

/-! ## A188496.P17342167157377224321

`A188492(n+1)-A188495(n)-A002527(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A188496

/-- `A188492(n+1)-A188495(n)-A002527(n)` -/
def P17342167157377224321.Spec : Prop :=
  ∀ n, P17342167157377224321.a n = A188496 n

theorem P17342167157377224321.correct : P17342167157377224321.Spec := by
  intro n
  simp only [A188496]

end A188496

/-! ## A188496.P10668162053138681625

`A188492(n)-a(n-1)` with `a(0)=0`
-/

namespace A188496.P10668162053138681625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A188492 n - a (n - 1)

end

end A188496.P10668162053138681625

namespace A188496

/-- `A188492(n)-a(n-1)` -/
def P10668162053138681625.Spec : Prop :=
  ∀ n, P10668162053138681625.a n = A188496 n

end A188496

/-! ## A188496.P17138870126810707817

`abs(∑[A033999(n)*A188492(n)])`
-/

namespace A188496.P17138870126810707817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A188492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A188496.P17138870126810707817

namespace A188496

/-- `abs(∑[A033999(n)*A188492(n)])` -/
def P17138870126810707817.Spec : Prop :=
  ∀ n, P17138870126810707817.a n = A188496 n

end A188496

/-! ## A188496.P13000942830754502730

`A002528(n)-A002528(A289207(n))`
-/

namespace A188496.P13000942830754502730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002528 n - A002528 (A289207 n).toNat

end

end A188496.P13000942830754502730

namespace A188496

/-- `A002528(n)-A002528(A289207(n))` -/
def P13000942830754502730.Spec : Prop :=
  ∀ n, P13000942830754502730.a n = A188496 n

end A188496

/-! ## A188496.P4034584553921632282

`(n-A014681(n))*∑[A033999(n)*A188492(n)]`
-/

namespace A188496.P4034584553921632282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A188492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A014681 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A188496.P4034584553921632282

namespace A188496

/-- `(n-A014681(n))*∑[A033999(n)*A188492(n)]` -/
def P4034584553921632282.Spec : Prop :=
  ∀ n, P4034584553921632282.a n = A188496 n

end A188496

/-! ## A188496.P17405739868296572390

`A188495(A289207(n+1))+A002527(A289207(n+1))`
-/

namespace A188496.P17405739868296572390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 (A289207 (n + 1)).toNat + A002527 (A289207 (n + 1)).toNat

end

end A188496.P17405739868296572390

namespace A188496

/-- `A188495(A289207(n+1))+A002527(A289207(n+1))` -/
def P17405739868296572390.Spec : Prop :=
  ∀ n, P17405739868296572390.a n = A188496 n

end A188496

/-! ## A188496.P3902117488892114436

`A188492(n+1)-(A188495(n)+A002527(n))`
-/

namespace A188496.P3902117488892114436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188492 (n + 1) - (A188495 n + A002527 n)

end

end A188496.P3902117488892114436

namespace A188496

/-- `A188492(n+1)-(A188495(n)+A002527(n))` -/
def P3902117488892114436.Spec : Prop :=
  ∀ n, P3902117488892114436.a n = A188496 n

theorem P3902117488892114436.correct : P3902117488892114436.Spec := by
  intro n
  simp only [A188496, Nat.add_sub_cancel, A188496.P3902117488892114436.a, A188496.P17342167157377224321.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188496

/-! ## A188496.P4764446423178643769

`A002529(n+2)-(A188492(n+2)+A002528(n))`
-/

namespace A188496.P4764446423178643769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002529 (n + 2) - (A188492 (n + 2) + A002528 n)

end

end A188496.P4764446423178643769

namespace A188496

/-- `A002529(n+2)-(A188492(n+2)+A002528(n))` -/
def P4764446423178643769.Spec : Prop :=
  ∀ n, P4764446423178643769.a n = A188496 n

end A188496

/-!
# A188497: a(n) = A188493(n+1) - A188491(n) - A188495(n).

The programs for A188497, the canonical program `A188497.P3985296474896057511` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188497 has offset 0).

The definition of A188497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188497.P6180127875550301477

`ogf((2x^2-5x^4-2x^5-2x^6+2x^10+x^11)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))`
-/

namespace A188497.P6180127875550301477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 0, -5, -2, -2, 0, 0, 0, 2, 1] [1, -2, -2, 0, -10, -8, 2, 16, 10, 2, -4, -2, 0, -2, -1] n

end

end A188497.P6180127875550301477

namespace A188497

/-- `ogf((2x^2-5x^4-2x^5-2x^6+2x^10+x^11)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))` -/
def P6180127875550301477.Spec : Prop :=
  ∀ n, P6180127875550301477.a n = A188497 n

end A188497

/-! ## A188497.P3985296474896057511

`A188493(n+1)-A188491(n)-A188495(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A188497

/-- `A188493(n+1)-A188491(n)-A188495(n)` -/
def P3985296474896057511.Spec : Prop :=
  ∀ n, P3985296474896057511.a n = A188497 n

theorem P3985296474896057511.correct : P3985296474896057511.Spec := by
  intro n
  simp only [A188497]

end A188497

/-! ## A188497.P422422431812194624

`A188493(n+1)-(A188495(n)+A188491(n))`
-/

namespace A188497.P422422431812194624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188493 (n + 1) - (A188495 n + A188491 n)

end

end A188497.P422422431812194624

namespace A188497

/-- `A188493(n+1)-(A188495(n)+A188491(n))` -/
def P422422431812194624.Spec : Prop :=
  ∀ n, P422422431812194624.a n = A188497 n

theorem P422422431812194624.correct : P422422431812194624.Spec := by
  intro n
  simp only [A188497, Nat.add_sub_cancel, A188497.P422422431812194624.a, A188497.P3985296474896057511.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A188497

/-!
# A188498: Number of permutations p on the set [n] with the properties that abs(p(i)-i) <= 3 for all i, p(1) <= 2, and p(j) >= 2 for j=3,4.

The programs for A188498, the canonical program `A188498.P2154475834816525486` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A188498 has offset 0).

The definition of A188498 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A188498.P2154475834816525486

`ogf((x-3x^3-2x^4-2x^5-2x^6+x^8+2x^9+x^10)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A188498

/-- `ogf((x-3x^3-2x^4-2x^5-2x^6+x^8+2x^9+x^10)/(1-2x-2x^2-10x^4-8x^5+2x^6+16x^7+10x^8+2x^9-4x^10-2x^11-2x^13-x^14))` -/
def P2154475834816525486.Spec : Prop :=
  ∀ n, P2154475834816525486.a n = A188498 n

theorem P2154475834816525486.correct : P2154475834816525486.Spec := by
  intro n
  simp only [A188498]

end A188498

/-! ## A188498.P16761389484094743240

`A188497(n+1)-A188494(n)`
-/

namespace A188498.P16761389484094743240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188497 (n + 1) - A188494 n

end

end A188498.P16761389484094743240

namespace A188498

/-- `A188497(n+1)-A188494(n)` -/
def P16761389484094743240.Spec : Prop :=
  ∀ n, P16761389484094743240.a n = A188498 n

end A188498

/-! ## A188498.P918076436379515314

`A188495(n)-A002527(A289207(n))`
-/

namespace A188498.P918076436379515314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188495 n - A002527 (A289207 n).toNat

end

end A188498.P918076436379515314

namespace A188498

/-- `A188495(n)-A002527(A289207(n))` -/
def P918076436379515314.Spec : Prop :=
  ∀ n, P918076436379515314.a n = A188498 n

end A188498

/-! ## A188498.P2863826364586906435

`record[A188497(A303534(n))]-A188494(n)`
-/

namespace A188498.P2863826364586906435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188497 (A303534 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A188494 n

end

end A188498.P2863826364586906435

namespace A188498

/-- `record[A188497(A303534(n))]-A188494(n)` -/
def P2863826364586906435.Spec : Prop :=
  ∀ n, P2863826364586906435.a n = A188498 n

end A188498

/-! ## A188498.P2392188210631059354

`A188497(n+1)+A002526(n)-A188495(n+1)`
-/

namespace A188498.P2392188210631059354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188497 (n + 1) + (A002526 n - A188495 (n + 1))

end

end A188498.P2392188210631059354

namespace A188498

/-- `A188497(n+1)+A002526(n)-A188495(n+1)` -/
def P2392188210631059354.Spec : Prop :=
  ∀ n, P2392188210631059354.a n = A188498 n

end A188498

/-! ## A188498.P11803072820351472584

`record[A188497(A193739(n))]-A188494(n)`
-/

namespace A188498.P11803072820351472584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188497 (A193739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A188494 n

end

end A188498.P11803072820351472584

namespace A188498

/-- `record[A188497(A193739(n))]-A188494(n)` -/
def P11803072820351472584.Spec : Prop :=
  ∀ n, P11803072820351472584.a n = A188498 n

end A188498

/-!
# A188499: Intersection of A089633 and A188341.

The programs for A188499, there is no canonical definition to state claims against.
-/

/-! ## A188499.P17766644304147376307

`∑[floor(∑[4*n]/∑[char[∑[n]]]²)^∑[char[comp[∑[n]]]]]`
-/

namespace A188499.P17766644304147376307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f8 j ≠ x) n

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℚ)⌋ ^ (∑ j ∈ Finset.range (n + 1), f6 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A188499.P17766644304147376307

