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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A294400: Solution of the complementary equation a(n) = a(n-1) + b(n-2) + n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294400, there is no canonical definition to state claims against.
-/

/-! ## A294400.P16145963307353283672

`∑[∑[A055642(A196009(3*n+1))]]`
-/

namespace A294400.P16145963307353283672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A196009 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294400.P16145963307353283672

/-! ## A294400.P16115782065995045728

`∑[A055642(A002626(n))]+n²`
-/

namespace A294400.P16115782065995045728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A002626 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A294400.P16115782065995045728

/-! ## A294400.P7648339244750737621

`∑[∑[A256911(A272680(n))]]`
-/

namespace A294400.P7648339244750737621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 (A272680 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294400.P7648339244750737621

/-! ## A294400.P4566655173219481387

`∑[∑[A278966(A052952(n))]]`
-/

namespace A294400.P4566655173219481387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278966 (A052952 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294400.P4566655173219481387

/-! ## A294400.P13620013902783282980

`A135304(A301292(n))`
-/

namespace A294400.P13620013902783282980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A301292 n).toNat

end

end A294400.P13620013902783282980

/-!
# A294401: Solution of the complementary equation a(n) = a(n-1) + b(n-2) + 2n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294401, there is no canonical definition to state claims against.
-/

/-! ## A294401.P14776186592600590916

`A267874(n)+∑[record[A132662(n+1)]]`
-/

namespace A294401.P14776186592600590916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132662 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294401.P14776186592600590916

/-! ## A294401.P4041412306906509806

`A047486(record[A126615(n+1)+1])`
-/

namespace A294401.P4041412306906509806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126615 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A294401.P4041412306906509806

/-! ## A294401.P7520670332793051612

`∑[∑[A085415(A085432(2*n+1))]]`
-/

namespace A294401.P7520670332793051612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085415 (A085432 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294401.P7520670332793051612

/-! ## A294401.P1574402604991156735

`∑[∑[A332273(A261237(n))]]`
-/

namespace A294401.P1574402604991156735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (A261237 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294401.P1574402604991156735

/-! ## A294401.P505800289952793154

`∑[A074279(A301299(n*∑[5*n-2]))]`
-/

namespace A294401.P505800289952793154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A301299 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294401.P505800289952793154

/-!
# A294402: E.g.f.: exp(-Sum_{n>=1} d(n) * x^n), where d(n) is the number of divisors of n.

The programs for A294402, there is no canonical definition to state claims against.
-/

/-! ## A294402.P17256407196650908994

`A294951(∑[n]+n)`
-/

namespace A294402.P17256407196650908994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A294402.P17256407196650908994

/-! ## A294402.P16581692376645709723

`or(1, A294951(A000096(n)))`
-/

namespace A294402.P16581692376645709723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294951 (A000096 n).toNat)

end

end A294402.P16581692376645709723

/-! ## A294402.P9741644229597224156

`A294951(A000096(n))+A011734(n)`
-/

namespace A294402.P9741644229597224156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (A000096 n).toNat + A011734 n

end

end A294402.P9741644229597224156

/-! ## A294402.P11610466399662637881

`A294951(A000096(n))+A025439(n)`
-/

namespace A294402.P11610466399662637881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (A000096 n).toNat + A025439 n

end

end A294402.P11610466399662637881

/-! ## A294402.P2428929697543251327

`A294951(A000096(n))+A185036(n)`
-/

namespace A294402.P2428929697543251327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (A000096 n).toNat + A185036 n

end

end A294402.P2428929697543251327

/-!
# A294403: E.g.f.: exp(-Sum_{n>=1} sigma(n) * x^n).

The programs for A294403, there is no canonical definition to state claims against.
-/

/-! ## A294403.P10309422836404677725

`A294951(∑[n+2]-1)`
-/

namespace A294403.P10309422836404677725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294403.P10309422836404677725

/-! ## A294403.P12972166830885603850

`or(1, A294951(A034856(n+1)))`
-/

namespace A294403.P12972166830885603850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294951 (A034856 (n + 1)).toNat)

end

end A294403.P12972166830885603850

/-! ## A294403.P5497846320873156127

`A294951(A034856(n+1))+A011734(n)`
-/

namespace A294403.P5497846320873156127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (A034856 (n + 1)).toNat + A011734 n

end

end A294403.P5497846320873156127

/-! ## A294403.P1039454565451770944

`A294951(A034856(n+1))+A025439(n)`
-/

namespace A294403.P1039454565451770944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (A034856 (n + 1)).toNat + A025439 n

end

end A294403.P1039454565451770944

/-! ## A294403.P9974515238849533286

`A294951(A034856(n+1))+A025469(n)`
-/

namespace A294403.P9974515238849533286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (A034856 (n + 1)).toNat + A025469 n

end

end A294403.P9974515238849533286

/-!
# A294404: E.g.f.: exp(-Sum_{n>=1} sigma_2(n) * x^n).

The programs for A294404, there is no canonical definition to state claims against.
-/

/-! ## A294404.P1956381889628804499

`A294951(∑[n+3])`
-/

namespace A294404.P1956381889628804499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294404.P1956381889628804499

/-! ## A294404.P12845992546619969181

`or(1, A294951(A141214(n)))`
-/

namespace A294404.P12845992546619969181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294951 (A141214 n).toNat)

end

end A294404.P12845992546619969181

/-! ## A294404.P734492935633489327

`or(1, A294951(A027379(n+1)))`
-/

namespace A294404.P734492935633489327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294951 (A027379 (n + 1)).toNat)

end

end A294404.P734492935633489327

/-! ## A294404.P10640198874749489774

`A294951(A141214(n))+A011734(n)`
-/

namespace A294404.P10640198874749489774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294951 (A141214 n).toNat + A011734 n

end

end A294404.P10640198874749489774

/-!
# A294405: Number of connected weakly regular graphs on n nodes.

The programs for A294405, there is no canonical definition to state claims against.
-/

/-! ## A294405.P8521884495633658092

`A005177(n+1)-A088741(n+1)`
-/

namespace A294405.P8521884495633658092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005177 (n + 1) - A088741 (n + 1)

end

end A294405.P8521884495633658092

/-! ## A294405.P1704603061445000608

`A326548(A315857(n))`
-/

namespace A294405.P1704603061445000608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326548 (A315857 n).toNat

end

end A294405.P1704603061445000608

/-! ## A294405.P1879618994391168829

`∑[A352436(n+1)]%A275312(n)`
-/

namespace A294405.P1879618994391168829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A275312 n)

end

end A294405.P1879618994391168829

/-! ## A294405.P16525261751219546511

`A243241(n+1)-A241839(n+1)`
-/

namespace A294405.P16525261751219546511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243241 (n + 1) - A241839 (n + 1)

end

end A294405.P16525261751219546511

/-! ## A294405.P15929527818941630548

`A326548(A325685(n)+A000040(n+1))`
-/

namespace A294405.P15929527818941630548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326548 (A325685 n + A000040 (n + 1)).toNat

end

end A294405.P15929527818941630548

/-!
# A294406: Positive odd numbers k such that both (sigma(m) - 2*m) and (2*m - sigma(m)) are never equal to k, where sigma(.) is the sum of divisors function A000203 (conjectured).

The programs for A294406, there is no canonical definition to state claims against.
-/

/-! ## A294406.P10345713215299226991

`2*A334133(n+1)+3`
-/

namespace A294406.P10345713215299226991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A334133 (n + 1) + 3

end

end A294406.P10345713215299226991

/-! ## A294406.P5617053380282121373

`or(1, A333491(3*n+5)+2)`
-/

namespace A294406.P5617053380282121373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A333491 (3 * n + 5) + 2)

end

end A294406.P5617053380282121373

/-! ## A294406.P14708810887993033084

`A234286(lt[(-n)^∏{e}[n, #], 0]+1)`
-/

namespace A294406.P14708810887993033084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234286 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1)

end

end A294406.P14708810887993033084

/-! ## A294406.P7397795485328493446

`A100367(n+2)-(gcd(2, n)-1)+n`
-/

namespace A294406.P7397795485328493446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 2) - ((Nat.gcd 2 n : ℤ) - 1) + (n : ℤ)

end

end A294406.P7397795485328493446

/-! ## A294406.P57631340418892917

`∑[A259935(gcd(5^n+1, n-3))]+7`
-/

namespace A294406.P57631340418892917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (Int.gcd (5 ^ n + 1 : ℤ) ((n : ℤ) - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A294406.P57631340418892917

/-!
# A294407: Expansion of 1/(1 + Sum_{i>=1} q^(i^2)/Product_{j=1..i} (1 + q^j)^2).

The programs for A294407, there is no canonical definition to state claims against.
-/

/-! ## A294407.P3627045889029940265

`A267007(2*n)*A284793(A116363(n))`
-/

namespace A294407.P3627045889029940265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267007 (2 * n) * A284793 (A116363 n).toNat

end

end A294407.P3627045889029940265

/-!
# A294409: a(n) = n! * [x^n] exp(n*x)*BesselI(0,2*n*x).

The programs for A294409, the canonical program `A294409.P11012143022956587436` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294409 has offset 0).

The definition of A294409 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294409.P11012143022956587436

`A000312(n)*A002426(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A294409

/-- `A000312(n)*A002426(n)` -/
def P11012143022956587436.Spec : Prop :=
  ∀ n, P11012143022956587436.a n = A294409 n

theorem P11012143022956587436.correct : P11012143022956587436.Spec := by
  intro n
  simp only [A294409]

end A294409

/-! ## A294409.P1636254743356953611

`sqrt(A168597(n))*n^n`
-/

namespace A294409.P1636254743356953611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A168597 n : ℝ) * (n ^ n : ℝ)

end

end A294409.P1636254743356953611

namespace A294409

/-- `sqrt(A168597(n))*n^n` -/
def P1636254743356953611.Spec : Prop :=
  ∀ n, P1636254743356953611.a n = (A294409 n : ℝ)

end A294409

/-! ## A294409.P6970693330939657869

`n^n*A115990(∑[n])`
-/

namespace A294409.P6970693330939657869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A115990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294409.P6970693330939657869

namespace A294409

/-- `n^n*A115990(∑[n])` -/
def P6970693330939657869.Spec : Prop :=
  ∀ n, P6970693330939657869.a n = A294409 n

end A294409

/-! ## A294409.P12933019295132538480

`n^n*A328347(∑[n])`
-/

namespace A294409.P12933019295132538480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A328347 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294409.P12933019295132538480

namespace A294409

/-- `n^n*A328347(∑[n])` -/
def P12933019295132538480.Spec : Prop :=
  ∀ n, P12933019295132538480.a n = A294409 n

end A294409

/-! ## A294409.P11391619558508876641

`n^n*A005213(2*n)`
-/

namespace A294409.P11391619558508876641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A005213 (2 * n)

end

end A294409.P11391619558508876641

namespace A294409

/-- `n^n*A005213(2*n)` -/
def P11391619558508876641.Spec : Prop :=
  ∀ n, P11391619558508876641.a n = A294409 n

end A294409

/-!
# A294410: Expansion of 1/(1 - x/(1 - x/(1 - 2*x^2/(1 - 2*x^2/(1 - 3*x^3/(1 - 3*x^3/(1 - ...))))))), a continued fraction.

The programs for A294410, there is no canonical definition to state claims against.
-/

/-! ## A294410.P11337510910590799273

`A087834(A149049(n))`
-/

namespace A294410.P11337510910590799273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087834 (A149049 n).toNat

end

end A294410.P11337510910590799273

/-! ## A294410.P14677030459318103607

`A371286(A092684(n))`
-/

namespace A294410.P14677030459318103607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (A092684 n).toNat

end

end A294410.P14677030459318103607

/-! ## A294410.P13613001740729599644

`A371286(A113409(n))`
-/

namespace A294410.P13613001740729599644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (A113409 n).toNat

end

end A294410.P13613001740729599644

/-! ## A294410.P16408928176591312962

`A371286(A302017(n))`
-/

namespace A294410.P16408928176591312962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371286 (A302017 n).toNat

end

end A294410.P16408928176591312962

/-!
# A294411: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. -exp(k*x)*LambertW(-x).

The programs for A294411, there is no canonical definition to state claims against.
-/

/-! ## A294411.P9907437102601329094

`A319951(A215083(n))`
-/

namespace A294411.P9907437102601329094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A215083 n).toNat

end

end A294411.P9907437102601329094

/-! ## A294411.P1916395488541891487

`A191228(A370380(n))`
-/

namespace A294411.P1916395488541891487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A370380 n).toNat

end

end A294411.P1916395488541891487

/-! ## A294411.P1894299422542133100

`A378562(A375354(n+1))`
-/

namespace A294411.P1894299422542133100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378562 (A375354 (n + 1)).toNat

end

end A294411.P1894299422542133100

/-! ## A294411.P11200002506278253523

`A111660(A229001(n)+A156576(n))`
-/

namespace A294411.P11200002506278253523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A229001 n + A156576 n).toNat

end

end A294411.P11200002506278253523

/-! ## A294411.P15048506818872029201

`A355246(A194441(n)*A355257(n))`
-/

namespace A294411.P15048506818872029201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355246 (A194441 n * A355257 n).toNat

end

end A294411.P15048506818872029201

/-!
# A294412: Solution of the complementary equation a(n) = a(n-1) + 2*b(n-2) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294412, there is no canonical definition to state claims against.
-/

/-! ## A294412.P16674667566855030050

`∑[∑[A003016(A182002(n+1))]]`
-/

namespace A294412.P16674667566855030050
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A182002 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294412.P16674667566855030050

/-! ## A294412.P6990983714184153776

`∑[eq[A186723(n+8), A186729(2*n)]]`
-/

namespace A294412.P6990983714184153776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186723 (n + 8)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186729 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294412.P6990983714184153776

/-! ## A294412.P18036071729060415254

`A033183(∑[A138131(n+1)-n²])`
-/

namespace A294412.P18036071729060415254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138131 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294412.P18036071729060415254

/-! ## A294412.P3948898327013268468

`∑[∑[A007814(A007239(n+1))]+n]+1`
-/

namespace A294412.P3948898327013268468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007239 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294412.P3948898327013268468

/-!
# A294413: Solution of the complementary equation a(n) = a(n-1) + a(n-2) - b(n-1) + 6, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294413, there is no canonical definition to state claims against.
-/

/-! ## A294413.P16066875834742098443

`A172471(A059502(n))+A129896(n+1)`
-/

namespace A294413.P16066875834742098443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A059502 n).toNat + A129896 (n + 1)

end

end A294413.P16066875834742098443

/-! ## A294413.P11336849319915996767

`A172471(A000045(2*(n+1)))+A001951(n)`
-/

namespace A294413.P11336849319915996767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A000045 (2 * (n + 1))).toNat + A001951 n

end

end A294413.P11336849319915996767

/-! ## A294413.P5624606008698301981

`∑[record[ceil(A177351(n)/2)]+1]`
-/

namespace A294413.P5624606008698301981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177351 n : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294413.P5624606008698301981

/-! ## A294413.P17459089243456382425

`A002024(A123888(n))+n`
-/

namespace A294413.P17459089243456382425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A123888 n).toNat + (n : ℤ)

end

end A294413.P17459089243456382425

/-! ## A294413.P11176404575535836630

`∑[A181578(∑[A028304(n)])]`
-/

namespace A294413.P11176404575535836630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294413.P11176404575535836630

/-!
# A294414: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294414, there is no canonical definition to state claims against.
-/

/-! ## A294414.P17432949189148226035

`A294550(n)+Δ[A106345(A011782(n))]`
-/

namespace A294414.P17432949189148226035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294550 n + (f1 (n + 1) - f1 n)

end

end A294414.P17432949189148226035

/-! ## A294414.P13941375402648536893

`floor(sqrt(A050376((∑[n+2]-1)*2^n)))`
-/

namespace A294414.P13941375402648536893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A050376 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * (2 ^ n : ℤ)).toNat)

end

end A294414.P13941375402648536893

/-! ## A294414.P3202351776784337887

`∑[A344953(A001595(n))]-1`
-/

namespace A294414.P3202351776784337887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344953 (A001595 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294414.P3202351776784337887

/-! ## A294414.P13737627011447868916

`A350799(A027181(n))-A000071(n+1)`
-/

namespace A294414.P13737627011447868916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A027181 n).toNat - A000071 (n + 1)

end

end A294414.P13737627011447868916

/-!
# A294415: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294415, there is no canonical definition to state claims against.
-/

/-! ## A294415.P15134784815762060943

`A293350(A087051(n))-A065220(n)`
-/

namespace A294415.P15134784815762060943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293350 (A087051 n).toNat - A065220 n

end

end A294415.P15134784815762060943

/-! ## A294415.P13205699712388003154

`A293350(A227549(n+1))-A065220(n)`
-/

namespace A294415.P13205699712388003154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293350 (A227549 (n + 1)).toNat - A065220 n

end

end A294415.P13205699712388003154

/-! ## A294415.P8648760337067750457

`A192751(n)+A001222(A155543(n))`
-/

namespace A294415.P8648760337067750457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 n + A001222 (A155543 n).toNat

end

end A294415.P8648760337067750457

/-! ## A294415.P17658892090780561180

`A192751(A004903(n+1))+A004277(n)`
-/

namespace A294415.P17658892090780561180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192751 (A004903 (n + 1)).toNat + A004277 n

end

end A294415.P17658892090780561180

/-! ## A294415.P849288328135633260

`A293350(A004903(n+1))-A065220(n)`
-/

namespace A294415.P849288328135633260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293350 (A004903 (n + 1)).toNat - A065220 n

end

end A294415.P849288328135633260

/-!
# A294416: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294416, there is no canonical definition to state claims against.
-/

/-! ## A294416.P7044507628320488400

`(A294366(n)+A000027(A294418(n)))/2`
-/

namespace A294416.P7044507628320488400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294366 n + A000027 (A294418 n).toNat : ℚ) / 2

end

end A294416.P7044507628320488400

/-! ## A294416.P5239423878749928657

`(A294418(n)+A294366(n))/A000034(A215421(n+1))`
-/

namespace A294416.P5239423878749928657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294418 n + A294366 n : ℚ) / (A000034 (A215421 (n + 1)).toNat : ℚ)

end

end A294416.P5239423878749928657

/-! ## A294416.P15997268082676570538

`(A294418(n)+A294366(n))/A141310(A146591(n+1))`
-/

namespace A294416.P15997268082676570538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294418 n + A294366 n : ℚ) / (A141310 (A146591 (n + 1)).toNat : ℚ)

end

end A294416.P15997268082676570538

/-! ## A294416.P18434279405049783624

`(A294418(n)+A294366(n))/A004277(A028920(24*n²))`
-/

namespace A294416.P18434279405049783624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294418 n + A294366 n : ℚ) / (A004277 (A028920 (24 * n ^ 2)).toNat : ℚ)

end

end A294416.P18434279405049783624

/-! ## A294416.P16004930768376979929

`(A294418(n)+A294366(n))/A020639(A136339(n+2))`
-/

namespace A294416.P16004930768376979929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294418 n + A294366 n : ℚ) / (A020639 (A136339 (n + 2)).toNat : ℚ)

end

end A294416.P16004930768376979929

/-!
# A294417: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) - n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294417, there is no canonical definition to state claims against.
-/

/-! ## A294417.P281292806854308811

`∑[A276581(A069403(n))]`
-/

namespace A294417.P281292806854308811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A069403 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294417.P281292806854308811

/-! ## A294417.P16517881618888537444

`∑[A055086(A034899(n)+∑[n])]`
-/

namespace A294417.P16517881618888537444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A034899 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294417.P16517881618888537444

/-! ## A294417.P5182608701205958343

`∑[A276581(Δ[A166012(2*n)-n])]`
-/

namespace A294417.P5182608701205958343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 (2 * n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294417.P5182608701205958343

/-! ## A294417.P7324595122228018485

`∑[A276581(A166012(2*n+1)-1)]`
-/

namespace A294417.P7324595122228018485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A166012 (2 * n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294417.P7324595122228018485

/-! ## A294417.P1881069988815463080

`∑[A002024(A092497(n))+n]`
-/

namespace A294417.P1881069988815463080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A092497 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294417.P1881069988815463080

/-!
# A294418: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 2*b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294418, there is no canonical definition to state claims against.
-/

/-! ## A294418.P7516236823317482353

`A294366(n)+A005843(A294416(n)-A294366(n))`
-/

namespace A294418.P7516236823317482353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294366 n + A005843 (A294416 n - A294366 n).toNat

end

end A294418.P7516236823317482353

/-! ## A294418.P13169891058189334939

`A005843(A294416(n))-A294366(n)`
-/

namespace A294418.P13169891058189334939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A294416 n).toNat - A294366 n

end

end A294418.P13169891058189334939

/-! ## A294418.P15106216307616273483

`A231405(∑[or(2*n, A231354(n))])`
-/

namespace A294418.P15106216307616273483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A231354 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231405 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294418.P15106216307616273483

/-!
# A294419: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) + 2*b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294419, there is no canonical definition to state claims against.
-/

/-! ## A294419.P8651810733395916890

`∑[A274619(A322072(n+1))]`
-/

namespace A294419.P8651810733395916890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274619 (A322072 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294419.P8651810733395916890

/-!
# A294420: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) + b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294420, there is no canonical definition to state claims against.
-/

/-! ## A294420.P6090669184050131217

`A000267(C(A294368(n), 2))`
-/

namespace A294420.P6090669184050131217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (Nat.choose (A294368 n).toNat 2)

end

end A294420.P6090669184050131217

/-! ## A294420.P1540483982762309661

`A168045(∑[∑[n]]+ceil(2^(n-1)))`
-/

namespace A294420.P1540483982762309661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168045 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A294420.P1540483982762309661

/-!
# A294421: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) - b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294421, there is no canonical definition to state claims against.
-/

/-! ## A294421.P15803258101368655287

`A004277(A294365(n))-A293350(n)`
-/

namespace A294421.P15803258101368655287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294365 n).toNat - A293350 n

end

end A294421.P15803258101368655287

/-! ## A294421.P4828539615130290593

`A295951(n)+A290975(A273168(n))`
-/

namespace A294421.P4828539615130290593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295951 n + A290975 (A273168 n).toNat

end

end A294421.P4828539615130290593

/-! ## A294421.P25096169087765251

`A295951(n)-A104338(A340659(3*n+2))`
-/

namespace A294421.P25096169087765251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295951 n - A104338 (A340659 (3 * n + 2)).toNat

end

end A294421.P25096169087765251

/-! ## A294421.P8512100902795980096

`A295951(n)+A278513(A042938(n+1))`
-/

namespace A294421.P8512100902795980096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295951 n + A278513 (A042938 (n + 1)).toNat

end

end A294421.P8512100902795980096

/-!
# A294422: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - b(n-2) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294422, there is no canonical definition to state claims against.
-/

/-! ## A294422.P15353676957653381998

`A294424(n+1)-2`
-/

namespace A294422.P15353676957653381998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294424 (n + 1) - 2

end

end A294422.P15353676957653381998

/-! ## A294422.P10073523582777928345

`∑[Δ[A294424(n)]-A000007(n)]`
-/

namespace A294422.P10073523582777928345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294422.P10073523582777928345

/-! ## A294422.P3897610982766988919

`∑[Δ[A294424(n)]-(A057427(n)-1)]-2`
-/

namespace A294422.P3897610982766988919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (A057427 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A294422.P3897610982766988919

/-! ## A294422.P15266379124835120327

`∑[Δ[A294424(n)]/A014963(4*n+2)]`
-/

namespace A294422.P15266379124835120327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294424 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / (A014963 (4 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294422.P15266379124835120327

/-! ## A294422.P11154841690122031304

`Δ[∑[A294424(n)]-A005843(n)]`
-/

namespace A294422.P11154841690122031304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294422.P11154841690122031304

/-!
# A294423: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - b(n-2) + n, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294423, there is no canonical definition to state claims against.
-/

/-! ## A294423.P11605982222892595543

`∑[A003056(A072684(n))]`
-/

namespace A294423.P11605982222892595543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A072684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294423.P11605982222892595543

/-! ## A294423.P8198651457831909616

`∑[∑[A327715(A105200(n+1))]]`
-/

namespace A294423.P8198651457831909616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327715 (A105200 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294423.P8198651457831909616

/-! ## A294423.P7561946267544676469

`∑[∑[A369916(A226790(2*(n+2)))]]`
-/

namespace A294423.P7561946267544676469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369916 (A226790 (2 * (n + 2))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294423.P7561946267544676469

/-! ## A294423.P12010682397661133895

`A002024(A261519(n))+floor(n²/2)`
-/

namespace A294423.P12010682397661133895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A261519 n).toNat + ⌊(n ^ 2 : ℚ) / 2⌋

end

end A294423.P12010682397661133895

/-!
# A294424: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - b(n-2) - 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294424, there is no canonical definition to state claims against.
-/

/-! ## A294424.P5642567647961574338

`A022290(Δ[A140758(2^n-1)])`
-/

namespace A294424.P5642567647961574338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (f1 (n + 1) - f1 n).toNat

end

end A294424.P5642567647961574338

/-! ## A294424.P8881952839301538037

`A216256(∑[∑[A099234(n)]])`
-/

namespace A294424.P8881952839301538037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294424.P8881952839301538037

/-! ## A294424.P5347997599058401096

`A172471(∑[∑[A166536(n)]])`
-/

namespace A294424.P5347997599058401096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166536 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294424.P5347997599058401096

/-! ## A294424.P16391516962441868215

`A257639(4*A027941(n+1))`
-/

namespace A294424.P16391516962441868215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (4 * A027941 (n + 1)).toNat

end

end A294424.P16391516962441868215

/-! ## A294424.P15435766016813801736

`A257639(A122931(n+3)-4)`
-/

namespace A294424.P15435766016813801736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A122931 (n + 3) - 4).toNat

end

end A294424.P15435766016813801736

/-!
# A294425: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) - b(n-2) - 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294425, there is no canonical definition to state claims against.
-/

/-! ## A294425.P6373126578993022753

`A337101(A027377(n))+A210729(n)`
-/

namespace A294425.P6373126578993022753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A027377 n).toNat + A210729 n

end

end A294425.P6373126578993022753

/-! ## A294425.P9640794420516140609

`A295965(n)-A008683(A267450(n))`
-/

namespace A294425.P9640794420516140609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295965 n - A008683 (A267450 n).toNat

end

end A294425.P9640794420516140609

/-! ## A294425.P10603461402729981489

`A294534(n)+A061498(A078213(n+1)+1)`
-/

namespace A294425.P10603461402729981489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294534 n + A061498 (A078213 (n + 1) + 1).toNat

end

end A294425.P10603461402729981489

/-! ## A294425.P5588690428036801078

`∑[∑[A161179(A007661(n))]]`
-/

namespace A294425.P5588690428036801078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161179 (A007661 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294425.P5588690428036801078

/-!
# A294426: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) - b(n-2) - 2, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A294426, there is no canonical definition to state claims against.
-/

/-! ## A294426.P12753385670570091620

`A000006(A080929(n)+A078306(n+1))`
-/

namespace A294426.P12753385670570091620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A080929 n + A078306 (n + 1)).toNat

end

end A294426.P12753385670570091620

/-! ## A294426.P14831799154645193106

`A294541(n)+A188014(A154638(n))`
-/

namespace A294426.P14831799154645193106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294541 n + A188014 (A154638 n).toNat

end

end A294426.P14831799154645193106

/-! ## A294426.P7696889120694865143

`A329697(A062666(n+1))+A058696(n)`
-/

namespace A294426.P7696889120694865143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A062666 (n + 1)).toNat + A058696 n

end

end A294426.P7696889120694865143

/-! ## A294426.P815048153741052110

`A000006(A330079(n+1))-A347776(n)`
-/

namespace A294426.P815048153741052110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A330079 (n + 1)).toNat - A347776 n

end

end A294426.P815048153741052110

/-!
# A294427: Terms of A065188 that are on or above the main diagonal.

The programs for A294427, there is no canonical definition to state claims against.
-/

/-! ## A294427.P16069317797554354518

`A275884(n+1)+n`
-/

namespace A294427.P16069317797554354518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275884 (n + 1) + (n : ℤ)

end

end A294427.P16069317797554354518

/-! ## A294427.P10189316128031818084

`A275894(n)+1+n`
-/

namespace A294427.P10189316128031818084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275894 n + 1 + (n : ℤ)

end

end A294427.P10189316128031818084

/-! ## A294427.P13548168794962286911

`comp[A275893(n)]+1+n`
-/

namespace A294427.P13548168794962286911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275893 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A294427.P13548168794962286911

/-! ## A294427.P5704335983069446156

`a(n-1)+A275888(n)+1` with `a(0)=1`
-/

namespace A294427.P5704335983069446156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A275888 n + 1)

end

end A294427.P5704335983069446156

/-! ## A294427.P2472174948006050001

`∑[A275888(n+1)+1]-A275888(n+1)`
-/

namespace A294427.P2472174948006050001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275888 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A275888 (n + 1)

end

end A294427.P2472174948006050001

/-! ## A294427.P8989148643033773730

`record[A065188(n+1)]`
-/

namespace A294427.P8989148643033773730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294427.P8989148643033773730

/-! ## A294427.P12167262906734197768

`record[A275895(n)+1]`
-/

namespace A294427.P12167262906734197768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294427.P12167262906734197768

/-! ## A294427.P12280491680903604079

`record[A065185(n+1)+1+n]`
-/

namespace A294427.P12280491680903604079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294427.P12280491680903604079

/-! ## A294427.P13073058527495910748

`A065188(A275884(n+1))`
-/

namespace A294427.P13073058527495910748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A275884 (n + 1)).toNat

end

end A294427.P13073058527495910748

/-! ## A294427.P583680655724495015

`A065188(A275894(n)+1)`
-/

namespace A294427.P583680655724495015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A275894 n + 1).toNat

end

end A294427.P583680655724495015

/-! ## A294427.P6771916133162498676

`A065188(lt[n, A065188(n+1)]+1)`
-/

namespace A294427.P6771916133162498676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A294427.P6771916133162498676

/-! ## A294427.P4714965861930357349

`record[A275902(n)+1]`
-/

namespace A294427.P4714965861930357349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275902 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294427.P4714965861930357349

/-! ## A294427.P1354529640103773434

`record[A275900(n+1)]`
-/

namespace A294427.P1354529640103773434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294427.P1354529640103773434

/-! ## A294427.P9537820498054686898

`A275900(lt[n, A275900(n+1)]+1)`
-/

namespace A294427.P9537820498054686898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275900 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A294427.P9537820498054686898

/-!
# A294428: Terms of A065188 that are below the main diagonal.

The programs for A294428, there is no canonical definition to state claims against.
-/

/-! ## A294428.P781914118296276747

`A065188(A199134(n+1))`
-/

namespace A294428.P781914118296276747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A199134 (n + 1)).toNat

end

end A294428.P781914118296276747

/-! ## A294428.P17555915086830790187

`A065188(A275893(n)+1)`
-/

namespace A294428.P17555915086830790187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (A275893 n + 1).toNat

end

end A294428.P17555915086830790187

/-! ## A294428.P16268287563508944368

`A275895(lt[A275895(n), n])+1`
-/

namespace A294428.P16268287563508944368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) + 1

end

end A294428.P16268287563508944368

/-! ## A294428.P3473808777696586578

`A275895(A199134(n+1)-1)+1`
-/

namespace A294428.P3473808777696586578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 (A199134 (n + 1) - 1).toNat + 1

end

end A294428.P3473808777696586578

/-! ## A294428.P12164827340488478102

`A065188(eq[2, ceil((n+1)/A065188(n+1))]+1)`
-/

namespace A294428.P12164827340488478102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A065188 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A294428.P12164827340488478102

/-!
# A294429: Number of zero-energy ground states for one-dimensional periodic fermions with n sites.

The programs for A294429, there is no canonical definition to state claims against.
-/

/-! ## A294429.P12026138769162514730

`A294430(n)+A184946(A000041(n))`
-/

namespace A294429.P12026138769162514730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294430 n + A184946 (A000041 n).toNat

end

end A294429.P12026138769162514730

/-! ## A294429.P3423104667667196655

`A294430(n)+A184946(A112268(n))`
-/

namespace A294429.P3423104667667196655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294430 n + A184946 (A112268 n).toNat

end

end A294429.P3423104667667196655

/-! ## A294429.P15847795362466840982

`A325678(A174614(n))+A294430(n)`
-/

namespace A294429.P15847795362466840982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A174614 n).toNat + A294430 n

end

end A294429.P15847795362466840982

/-! ## A294429.P5932989156526909851

`A294430(n*Δ[(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9])`
-/

namespace A294429.P5932989156526909851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294430 (SequenceMachineLib.roundAway ((n : ℚ) * (f1 (n + 1) - f1 n))).toNat

end

end A294429.P5932989156526909851

/-! ## A294429.P18352544253192218304

`A294430(n)^exp(A055959(n))`
-/

namespace A294429.P18352544253192218304
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294430 n : ℝ) ^ (Real.exp (A055959 n : ℝ))

end

end A294429.P18352544253192218304

/-!
# A294430: Number of zero-energy ground states for SUSY SYK model of one-dimensional fermions with n sites.

The programs for A294430, there is no canonical definition to state claims against.
-/

/-! ## A294430.P2869170051225504898

`A294929(A000712(n))+A068911(n)`
-/

namespace A294430.P2869170051225504898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294929 (A000712 n).toNat + A068911 n

end

end A294430.P2869170051225504898

/-! ## A294430.P16596627293383211391

`A068911(n)+A258850(n)*A343029(n)`
-/

namespace A294430.P16596627293383211391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n + A258850 n * A343029 n

end

end A294430.P16596627293383211391

/-! ## A294430.P4284514418438083297

`xor(A068911(n), A074591(A351870(n)+1))`
-/

namespace A294430.P4284514418438083297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A068911 n) (A074591 (A351870 n + 1).toNat)

end

end A294430.P4284514418438083297

/-! ## A294430.P2252283827783286865

`A294429(n)-A184946(A000041(n))`
-/

namespace A294430.P2252283827783286865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294429 n - A184946 (A000041 n).toNat

end

end A294430.P2252283827783286865

/-!
# A294431: Rank of the inverse semigroup D_n of all difunctional relations on an n-element set.

The programs for A294431, there is no canonical definition to state claims against.
-/

/-! ## A294431.P16221343631022980531

`A000110(n-char[2])+n`
-/

namespace A294431.P16221343631022980531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n - (if ∃ j, f1 j = n then 1 else 0)) + (n : ℤ)

end

end A294431.P16221343631022980531

/-! ## A294431.P5994202400585768593

`A011971(∑[n])-char[2]+n`
-/

namespace A294431.P5994202400585768593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A294431.P5994202400585768593

/-! ## A294431.P3177576506410841299

`A186020(∑[n])-(char[2]-n)`
-/

namespace A294431.P3177576506410841299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A294431.P3177576506410841299

/-! ## A294431.P1534807688608838585

`A327884(∑[n])-(char[2]-n)`
-/

namespace A294431.P1534807688608838585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 (∑ j ∈ Finset.range (n + 1), f1 j) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A294431.P1534807688608838585

/-! ## A294431.P17070804930732438208

`A108087(A342939(n+1))+n`
-/

namespace A294431.P17070804930732438208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A342939 (n + 1)).toNat + (n : ℤ)

end

end A294431.P17070804930732438208

/-! ## A294431.P17830126841271323611

`gcd(A000110(n), A094497(n))+n`
-/

namespace A294431.P17830126841271323611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000110 n) (A094497 n) + n

end

end A294431.P17830126841271323611

/-!
# A294433: Expansion of (1+11*x+24*x^2+11*x^3+x^4)/(1-x)^5.

The programs for A294433, the canonical program `A294433.P6206112942400004511` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294433 has offset 0).

The definition of A294433 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+11x+24x^2+11x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` (program `A294433.P6206112942400004511`, by `A294433.P6206112942400004511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294433.P6206112942400004511

`ogf((1+11x+24x^2+11x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294433

/-- `ogf((1+11x+24x^2+11x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6206112942400004511.Spec : Prop :=
  ∀ n, P6206112942400004511.a n = A294433 n

theorem P6206112942400004511.correct : P6206112942400004511.Spec := by
  intro n
  simp only [A294433]

end A294433

/-! ## A294433.P7377341987389595493

`1+7*n/2+11*n²/2+4*n^3+2*n^4`
-/

namespace A294433.P7377341987389595493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (7 * n : ℚ) / 2 + (11 * n ^ 2 : ℚ) / 2 + (4 * n ^ 3 : ℚ) + (2 * n ^ 4 : ℚ)

end

end A294433.P7377341987389595493

namespace A294433

/-- `1+7*n/2+11*n²/2+4*n^3+2*n^4` -/
def P7377341987389595493.Spec : Prop :=
  ∀ n, P7377341987389595493.a n = (A294433 n : ℚ)

end A294433

/-! ## A294433.P8378091952850700396

`floor(C(Δ[n²]²+3, 2)/4)`
-/

namespace A294433.P8378091952850700396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 3).toNat 2 : ℚ) / 4⌋

end

end A294433.P8378091952850700396

namespace A294433

/-- `floor(C(Δ[n²]²+3, 2)/4)` -/
def P8378091952850700396.Spec : Prop :=
  ∀ n, P8378091952850700396.a n = A294433 n

end A294433

/-! ## A294433.P5377971282840505041

`(A160767(n)+A160747(n))/2`
-/

namespace A294433.P5377971282840505041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160767 n + A160747 n : ℚ) / 2

end

end A294433.P5377971282840505041

namespace A294433

/-- `(A160767(n)+A160747(n))/2` -/
def P5377971282840505041.Spec : Prop :=
  ∀ n, P5377971282840505041.a n = (A294433 n : ℚ)

end A294433

/-! ## A294433.P1725607071723885722

`abs(A160767(n)-A163102(n)/2)`
-/

namespace A294433.P1725607071723885722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A160767 n : ℚ) - (A163102 n : ℚ) / 2|

end

end A294433.P1725607071723885722

namespace A294433

/-- `abs(A160767(n)-A163102(n)/2)` -/
def P1725607071723885722.Spec : Prop :=
  ∀ n, P1725607071723885722.a n = (A294433 n : ℚ)

end A294433

/-! ## A294433.P17049871156414249211

`(A003215(n)+A001844(n)²)/2`
-/

namespace A294433.P17049871156414249211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003215 n + A001844 n ^ 2 : ℚ) / 2

end

end A294433.P17049871156414249211

namespace A294433

/-- `(A003215(n)+A001844(n)²)/2` -/
def P17049871156414249211.Spec : Prop :=
  ∀ n, P17049871156414249211.a n = (A294433 n : ℚ)

end A294433

/-! ## A294433.P10259015534023443964

`((∑[4*A004277(n)]-1)*∑[A004277(n)]-1)/2`
-/

namespace A294433.P10259015534023443964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j - 1) * (∑ j ∈ Finset.range (n + 1), f2 j) - 1 : ℤ) : ℚ) / 2

end

end A294433.P10259015534023443964

namespace A294433

/-- `((∑[4*A004277(n)]-1)*∑[A004277(n)]-1)/2` -/
def P10259015534023443964.Spec : Prop :=
  ∀ n, P10259015534023443964.a n = (A294433 n : ℚ)

end A294433

/-! ## A294433.P10683168382802304811

`∑[A079908(2*n)+n]`
-/

namespace A294433.P10683168382802304811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079908 (2 * n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294433.P10683168382802304811

namespace A294433

/-- `∑[A079908(2*n)+n]` -/
def P10683168382802304811.Spec : Prop :=
  ∀ n, P10683168382802304811.a n = A294433 n

end A294433

/-! ## A294433.P16028537643403762726

`A194268(∑[n])`
-/

namespace A294433.P16028537643403762726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194268 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294433.P16028537643403762726

namespace A294433

/-- `A194268(∑[n])` -/
def P16028537643403762726.Spec : Prop :=
  ∀ n, P16028537643403762726.a n = A294433 n

end A294433

/-! ## A294433.P2696515037336655940

`A234717(∑[2*n]+1)`
-/

namespace A294433.P2696515037336655940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234717 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A294433.P2696515037336655940

namespace A294433

/-- `A234717(∑[2*n]+1)` -/
def P2696515037336655940.Spec : Prop :=
  ∀ n, P2696515037336655940.a n = A294433 n

end A294433

/-! ## A294433.P6422551104890805882

`A185950(A002061(n+1))/2`
-/

namespace A294433.P6422551104890805882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185950 (A002061 (n + 1)).toNat : ℚ) / 2

end

end A294433.P6422551104890805882

namespace A294433

/-- `A185950(A002061(n+1))/2` -/
def P6422551104890805882.Spec : Prop :=
  ∀ n, P6422551104890805882.a n = (A294433 n : ℚ)

end A294433

/-!
# A294434: a(0)=0; for n>0, a(n) = (A163778(n)-1)/2.

The programs for A294434, there is no canonical definition to state claims against.
-/

/-! ## A294434.P4323663753205411932

`floor(A105876(n+1)/4)`
-/

namespace A294434.P4323663753205411932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105876 (n + 1) : ℚ) / 4⌋

end

end A294434.P4323663753205411932

/-! ## A294434.P13476598367881536229

`floor(p?[A167800(n+1)]/4)`
-/

namespace A294434.P13476598367881536229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A294434.P13476598367881536229

/-! ## A294434.P10132566283523919208

`lt[2*n, A294673(n)]`
-/

namespace A294434.P10132566283523919208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294434.P10132566283523919208

/-! ## A294434.P6848819059788280172

`lt[2*n, A003574(n+1)]`
-/

namespace A294434.P6848819059788280172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294434.P6848819059788280172

/-! ## A294434.P2074695026679682048

`eq[A005408(n), A294673(n)]`
-/

namespace A294434.P2074695026679682048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294434.P2074695026679682048

/-! ## A294434.P632423699010815309

`eq[A053091(n+1), A294673(n)]`
-/

namespace A294434.P632423699010815309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294434.P632423699010815309

/-! ## A294434.P16996243816245007379

`eq[A123167(n+1), A274299(n)]`
-/

namespace A294434.P16996243816245007379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274299 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294434.P16996243816245007379

/-! ## A294434.P2571091802518935959

`lt[A004277(n), A294673(n)+1]`
-/

namespace A294434.P2571091802518935959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294434.P2571091802518935959

/-! ## A294434.P6518357119803375284

`eq[A003574(n+1), A053091(n+1)]`
-/

namespace A294434.P6518357119803375284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294434.P6518357119803375284

/-! ## A294434.P12762144855098448643

`lt[A004277(n), A003574(n+1)+1]`
-/

namespace A294434.P12762144855098448643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003574 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294434.P12762144855098448643

/-! ## A294434.P7606875784145585763

`lt[A005408(n), A003574(n+1)+1]`
-/

namespace A294434.P7606875784145585763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003574 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294434.P7606875784145585763

/-! ## A294434.P15660834612558911200

`eq[A000265(2*n+1), A294673(n)]`
-/

namespace A294434.P15660834612558911200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294434.P15660834612558911200

/-! ## A294434.P2468150077037789099

`eq[1, A141110(2*n+1)]`
-/

namespace A294434.P2468150077037789099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294434.P2468150077037789099

/-! ## A294434.P7541506028358013863

`lt[A006694(2*n+1), 3]`
-/

namespace A294434.P7541506028358013863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294434.P7541506028358013863

/-! ## A294434.P11391243007067892142

`lt[n, A003569(n+1)]/2`
-/

namespace A294434.P11391243007067892142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A294434.P11391243007067892142

/-! ## A294434.P7290819871964515167

`lt[n, A302141(n+1)]/2`
-/

namespace A294434.P7290819871964515167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / 2

end

end A294434.P7290819871964515167

/-! ## A294434.P18343530611299315464

`lt[2*n, A003558(2*n+1)]`
-/

namespace A294434.P18343530611299315464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294434.P18343530611299315464

/-! ## A294434.P16427490800636245541

`lt[2*n, A003569(2*n+1)]`
-/

namespace A294434.P16427490800636245541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294434.P16427490800636245541

/-!
# A294439: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = number of normalized 2n-plets associated to trees with k edges.

The programs for A294439, there is no canonical definition to state claims against.
-/

/-! ## A294439.P11400412684628903319

`A227159(n+1)+A101637(A006888(n))`
-/

namespace A294439.P11400412684628903319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227159 (n + 1) + A101637 (A006888 n).toNat

end

end A294439.P11400412684628903319

/-! ## A294439.P4777535757356065569

`A227159(n+1)+A025466(A034347(n+1))`
-/

namespace A294439.P4777535757356065569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227159 (n + 1) + A025466 (A034347 (n + 1)).toNat

end

end A294439.P4777535757356065569

/-! ## A294439.P17506693763818041292

`A227159(n+1)+A189668(A128443(n+1))`
-/

namespace A294439.P17506693763818041292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227159 (n + 1) + A189668 (A128443 (n + 1)).toNat

end

end A294439.P17506693763818041292

/-!
# A294440: Triangle read by rows: T(n,k) (n >= 1, 1 <= k <= n) = number of normalized 2n-plets, with single or double steps, associated to trees with k edges.

The programs for A294440, there is no canonical definition to state claims against.
-/

/-! ## A294440.P7876373079515340804

`A114656(n+1)+A010894(A108838(n+2))`
-/

namespace A294440.P7876373079515340804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114656 (n + 1) + A010894 ((A108838 (n + 2)).toNat + 21)

end

end A294440.P7876373079515340804

/-! ## A294440.P13394631214181417277

`or(A114656(n+1), A199571(A019538(n+1)))`
-/

namespace A294440.P13394631214181417277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114656 (n + 1)) (A199571 (A019538 (n + 1)).toNat)

end

end A294440.P13394631214181417277

/-!
# A294442: Kepler's tree of fractions, read across rows (the fraction i/j is represented as the pair i,j).

The programs for A294442, the canonical program `A294442.P13782676266892454172` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294442 has offset 0).

The definition of A294442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5905 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294442.P13968507222068995884

`A020651(abs(1-n)+1)`
-/

namespace A294442.P13968507222068995884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (|1 - (n : ℤ)| + 1).toNat

end

end A294442.P13968507222068995884

namespace A294442

/-- `A020651(abs(1-n)+1)` -/
def P13968507222068995884.Spec : Prop :=
  ∀ n, P13968507222068995884.a n = A294442 n

end A294442

/-! ## A294442.P15289022570221174255

`A114214(A378299(n))`
-/

namespace A294442.P15289022570221174255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A378299 n).toNat

end

end A294442.P15289022570221174255

namespace A294442

/-- `A114214(A378299(n))` -/
def P15289022570221174255.Spec : Prop :=
  ∀ n, P15289022570221174255.a n = A294442 n

end A294442

/-! ## A294442.P8193621940698653883

`A071766(A180201(A335858(n)))`
-/

namespace A294442.P8193621940698653883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A180201 (A335858 n).toNat).toNat

end

end A294442.P8193621940698653883

namespace A294442

/-- `A071766(A180201(A335858(n)))` -/
def P8193621940698653883.Spec : Prop :=
  ∀ n, P8193621940698653883.a n = A294442 n

end A294442

/-! ## A294442.P391200746082437146

`A071766(A180201(A056539(A180200(n))))`
-/

namespace A294442.P391200746082437146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A180201 (A056539 (A180200 n).toNat).toNat).toNat

end

end A294442.P391200746082437146

namespace A294442

/-- `A071766(A180201(A056539(A180200(n))))` -/
def P391200746082437146.Spec : Prop :=
  ∀ n, P391200746082437146.a n = A294442 n

end A294442

/-! ## A294442.P13782676266892454172

`A093873(A092754(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A294442

/-- `A093873(A092754(n+1))` -/
def P13782676266892454172.Spec : Prop :=
  ∀ n, P13782676266892454172.a n = A294442 n

theorem P13782676266892454172.correct : P13782676266892454172.Spec := by
  intro n
  simp only [A294442]

end A294442

/-! ## A294442.P15013679184426408273

`A093873(A004761(n+2))`
-/

namespace A294442.P15013679184426408273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A004761 (n + 2)).toNat

end

end A294442.P15013679184426408273

namespace A294442

/-- `A093873(A004761(n+2))` -/
def P15013679184426408273.Spec : Prop :=
  ∀ n, P15013679184426408273.a n = A294442 n

end A294442

/-! ## A294442.P5900746849788372320

`A093873(A004754(n+1)-1)`
-/

namespace A294442.P5900746849788372320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A004754 (n + 1) - 1).toNat

end

end A294442.P5900746849788372320

namespace A294442

/-- `A093873(A004754(n+1)-1)` -/
def P5900746849788372320.Spec : Prop :=
  ∀ n, P5900746849788372320.a n = A294442 n

end A294442

/-! ## A294442.P705362610848611645

`A093873(A171757(n+1)/2)`
-/

namespace A294442.P705362610848611645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (SequenceMachineLib.roundAway ((A171757 (n + 1) : ℚ) / 2)).toNat

end

end A294442.P705362610848611645

namespace A294442

/-- `A093873(A171757(n+1)/2)` -/
def P705362610848611645.Spec : Prop :=
  ∀ n, P705362610848611645.a n = A294442 n

end A294442

/-! ## A294442.P4686695496075860486

`A093873(A053644(n+1)+n)`
-/

namespace A294442.P4686695496075860486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093873 (A053644 (n + 1) + (n : ℤ)).toNat

end

end A294442.P4686695496075860486

namespace A294442

/-- `A093873(A053644(n+1)+n)` -/
def P4686695496075860486.Spec : Prop :=
  ∀ n, P4686695496075860486.a n = A294442 n

end A294442

/-! ## A294442.P10969325477150922499

`A020650(A114753(n+1))`
-/

namespace A294442.P10969325477150922499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A114753 (n + 1)).toNat

end

end A294442.P10969325477150922499

namespace A294442

/-- `A020650(A114753(n+1))` -/
def P10969325477150922499.Spec : Prop :=
  ∀ n, P10969325477150922499.a n = A294442 n

end A294442

/-! ## A294442.P6788386377609068687

`A245328(A092569(2*n)+1)`
-/

namespace A294442.P6788386377609068687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A092569 (2 * n) + 1).toNat

end

end A294442.P6788386377609068687

namespace A294442

/-- `A245328(A092569(2*n)+1)` -/
def P6788386377609068687.Spec : Prop :=
  ∀ n, P6788386377609068687.a n = A294442 n

end A294442

/-! ## A294442.P3026604029931663156

`A020650(Δ[n²])`
-/

namespace A294442.P3026604029931663156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A294442.P3026604029931663156

namespace A294442

/-- `A020650(Δ[n²])` -/
def P3026604029931663156.Spec : Prop :=
  ∀ n, P3026604029931663156.a n = A294442 n

end A294442

/-! ## A294442.P8783034142680335922

`A020650(2*n+1)%(n+2)`
-/

namespace A294442.P8783034142680335922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020650 (2 * n + 1)) (n + 2 : ℤ)

end

end A294442.P8783034142680335922

namespace A294442

/-- `A020650(2*n+1)%(n+2)` -/
def P8783034142680335922.Spec : Prop :=
  ∀ n, P8783034142680335922.a n = A294442 n

end A294442

/-! ## A294442.P2183987699667130372

`A245327(A054429(2*n+1))`
-/

namespace A294442.P2183987699667130372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A054429 (2 * n + 1)).toNat

end

end A294442.P2183987699667130372

namespace A294442

/-- `A245327(A054429(2*n+1))` -/
def P2183987699667130372.Spec : Prop :=
  ∀ n, P2183987699667130372.a n = A294442 n

end A294442

/-! ## A294442.P13047333732066304377

`A086593(n+1)-A020651(2*n+1)`
-/

namespace A294442.P13047333732066304377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 1) - A020651 (2 * n + 1)

end

end A294442.P13047333732066304377

namespace A294442

/-- `A086593(n+1)-A020651(2*n+1)` -/
def P13047333732066304377.Spec : Prop :=
  ∀ n, P13047333732066304377.a n = A294442 n

end A294442

/-! ## A294442.P14159398041818746504

`A135481(2*n)+A020650(2*n+1)`
-/

namespace A294442.P14159398041818746504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (2 * n) + A020650 (2 * n + 1)

end

end A294442.P14159398041818746504

namespace A294442

/-- `A135481(2*n)+A020650(2*n+1)` -/
def P14159398041818746504.Spec : Prop :=
  ∀ n, P14159398041818746504.a n = A294442 n

end A294442

/-! ## A294442.P11448964924744191970

`A283978(2*n)+A020650(2*n+1)`
-/

namespace A294442.P11448964924744191970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 (2 * n) + A020650 (2 * n + 1)

end

end A294442.P11448964924744191970

namespace A294442

/-- `A283978(2*n)+A020650(2*n+1)` -/
def P11448964924744191970.Spec : Prop :=
  ∀ n, P11448964924744191970.a n = A294442 n

end A294442

/-! ## A294442.P7993214189769778485

`A086592(2*n+1)-A020651(2*n+1)`
-/

namespace A294442.P7993214189769778485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (2 * n + 1) - A020651 (2 * n + 1)

end

end A294442.P7993214189769778485

namespace A294442

/-- `A086592(2*n+1)-A020651(2*n+1)` -/
def P7993214189769778485.Spec : Prop :=
  ∀ n, P7993214189769778485.a n = A294442 n

end A294442

/-! ## A294442.P1673698603895583625

`A054429(A054429(A020650(2*n+1)))`
-/

namespace A294442.P1673698603895583625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A054429 (A020650 (2 * n + 1)).toNat).toNat

end

end A294442.P1673698603895583625

namespace A294442

/-- `A054429(A054429(A020650(2*n+1)))` -/
def P1673698603895583625.Spec : Prop :=
  ∀ n, P1673698603895583625.a n = A294442 n

end A294442

/-! ## A294442.P18338011994033473972

`A229742(A059893(2*n+1))`
-/

namespace A294442.P18338011994033473972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A059893 (2 * n + 1)).toNat

end

end A294442.P18338011994033473972

namespace A294442

/-- `A229742(A059893(2*n+1))` -/
def P18338011994033473972.Spec : Prop :=
  ∀ n, P18338011994033473972.a n = A294442 n

end A294442

/-!
# A294443: Number of distinct numbers appearing as numerators in row n of Kepler's triangle A294442.

The programs for A294443, there is no canonical definition to state claims against.
-/

/-! ## A294443.P8173101178656418940

`A293160(or(n, lcm(11, n)/11))`
-/

namespace A294443.P8173101178656418940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293160 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((Nat.lcm 11 n : ℚ) / 11))).toNat

end

end A294443.P8173101178656418940

/-! ## A294443.P1665001508797714225

`A293160(n)%(16*n+15)²`
-/

namespace A294443.P1665001508797714225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293160 n) ((16 * n + 15) ^ 2 : ℤ)

end

end A294443.P1665001508797714225

/-! ## A294443.P7934343210140120872

`A293160(n%(30^∑{e}[n+1, #]))`
-/

namespace A294443.P7934343210140120872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293160 (n % 30 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A294443.P7934343210140120872

/-! ## A294443.P16140029901605979276

`A293160(or(n, n*val(∏{p}[n, #], 11)/11))`
-/

namespace A294443.P16140029901605979276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293160 (Int.lor (n : ℤ) (SequenceMachineLib.roundAway ((n * SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℚ) / 11))).toNat

end

end A294443.P16140029901605979276

/-! ## A294443.P6219482841282283640

`A293160(lt[(n+1)*∏{e}[n+1, (-C(2, #))^#], 144])`
-/

namespace A294443.P6219482841282283640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.choose 2 (Nat.factorization (f2 n) p) : ℤ)) ^ Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  144

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293160 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A294443.P6219482841282283640

/-!
# A294444: Number of distinct numbers appearing as denominators in row n of Kepler's triangle A294442.

The programs for A294444, there is no canonical definition to state claims against.
-/

/-! ## A294444.P10019566535561185360

`A122921(A148675(n))`
-/

namespace A294444.P10019566535561185360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A148675 n).toNat

end

end A294444.P10019566535561185360

/-! ## A294444.P2553885540767125181

`A085761(A287966(n+1))`
-/

namespace A294444.P2553885540767125181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085761 (A287966 (n + 1)).toNat

end

end A294444.P2553885540767125181

/-! ## A294444.P2642592988918882044

`A293754(A191701(n+2))`
-/

namespace A294444.P2642592988918882044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293754 (A191701 (n + 2)).toNat

end

end A294444.P2642592988918882044

/-! ## A294444.P5218303217496843851

`A089868(round(sqrt(A148162(n))))`
-/

namespace A294444.P5218303217496843851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (SequenceMachineLib.roundAway (Real.sqrt (A148162 n : ℝ))).toNat

end

end A294444.P5218303217496843851

/-! ## A294444.P363895919355644068

`ceil((A069637(A065619(n+1))+1)/2)`
-/

namespace A294444.P363895919355644068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A069637 (A065619 (n + 1)).toNat + 1 : ℚ) / 2⌉

end

end A294444.P363895919355644068

/-!
# A294445: a(n) = (2*n + 4)!*(n^2 + 11*n + 2)/(2*(n-1)!*(n+6)!).

The programs for A294445, the canonical program `A294445.P384998468246759607` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294445 has offset 1).

The definition of A294445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294445.P384998468246759607

`(2*(n+1)+4)!*((n+1)²+11*(n+1)+2)/(2*n!*(n+7)!)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294445

/-- `(2*(n+1)+4)!*((n+1)²+11*(n+1)+2)/(2*n!*(n+7)!)` -/
def P384998468246759607.Spec : Prop :=
  ∀ n, P384998468246759607.a n = (A294445 (n + 1) : ℚ)

end A294445

/-! ## A294445.P12889588097962171925

`A294439(∑[n+3]+1)`
-/

namespace A294445.P12889588097962171925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294439 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A294445.P12889588097962171925

namespace A294445

/-- `A294439(∑[n+3]+1)` -/
def P12889588097962171925.Spec : Prop :=
  ∀ n, P12889588097962171925.a n = A294445 (n + 1)

end A294445

/-! ## A294445.P9411677691901845956

`record[A294439(n+1)/A294432(n+3)]`
-/

namespace A294445.P9411677691901845956
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294439 (n + 1) : ℚ) / (A294432 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294445.P9411677691901845956

namespace A294445

/-- `record[A294439(n+1)/A294432(n+3)]` -/
def P9411677691901845956.Spec : Prop :=
  ∀ n, P9411677691901845956.a n = (A294445 (n + 1) : ℚ)

end A294445

/-!
# A294446: The tree of Farey fractions (or the Stern-Brocot tree), read across rows (the fraction i/j is represented as the pair i,j).

The programs for A294446, there is no canonical definition to state claims against.
-/

/-! ## A294446.P11108334279249709956

`A341677((A266025(n+1)+A247914(n+1))²-3)`
-/

namespace A294446.P11108334279249709956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341677 ((A266025 (n + 1) + A247914 (n + 1)) ^ 2 - 3).toNat

end

end A294446.P11108334279249709956

/-! ## A294446.P5514297109429663606

`A231813(A184941(n+5)%A042777(n))`
-/

namespace A294446.P5514297109429663606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Int.tmod (A184941 (n + 5)) (A042777 n)).toNat

end

end A294446.P5514297109429663606

/-! ## A294446.P10963808624854132127

`A231813(C(A184941(n+5), A054977(n)))`
-/

namespace A294446.P10963808624854132127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Nat.choose (A184941 (n + 5)).toNat (A054977 n).toNat)

end

end A294446.P10963808624854132127

/-! ## A294446.P3986613302910111894

`A231813(A184941(n+5)+1-A054977(n))`
-/

namespace A294446.P3986613302910111894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A184941 (n + 5) + (1 - A054977 n)).toNat

end

end A294446.P3986613302910111894

/-! ## A294446.P10728562346363499354

`A231813(A184941(n+5)-A154955(n+1))`
-/

namespace A294446.P10728562346363499354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A184941 (n + 5) - A154955 (n + 1)).toNat

end

end A294446.P10728562346363499354

/-!
# A294448: Discrepancy of the Kolakoski sequence A000002.

The programs for A294448, the canonical program `A294448.P13092270535202228762` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294448 has offset 1).

The definition of A294448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294448.P10552185737261512203

`-A088568(n+1)`
-/

namespace A294448.P10552185737261512203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A088568 (n + 1)

end

end A294448.P10552185737261512203

namespace A294448

/-- `-A088568(n+1)` -/
def P10552185737261512203.Spec : Prop :=
  ∀ n, P10552185737261512203.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P3093136940711673767

`∑[(-1)^A000002(n+1)]`
-/

namespace A294448.P3093136940711673767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A000002 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P3093136940711673767

namespace A294448

/-- `∑[(-1)^A000002(n+1)]` -/
def P3093136940711673767.Spec : Prop :=
  ∀ n, P3093136940711673767.a n = (A294448 (n + 1) : ℚ)

end A294448

/-! ## A294448.P14188158374885253997

`∑[(-1)^A156253(n+1)]`
-/

namespace A294448.P14188158374885253997
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A156253 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P14188158374885253997

namespace A294448

/-- `∑[(-1)^A156253(n+1)]` -/
def P14188158374885253997.Spec : Prop :=
  ∀ n, P14188158374885253997.a n = (A294448 (n + 1) : ℚ)

end A294448

/-! ## A294448.P16007127763593452443

`-∑[(-1)^A049705(n+1)]`
-/

namespace A294448.P16007127763593452443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A049705 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294448.P16007127763593452443

namespace A294448

/-- `-∑[(-1)^A049705(n+1)]` -/
def P16007127763593452443.Spec : Prop :=
  ∀ n, P16007127763593452443.a n = (A294448 (n + 1) : ℚ)

end A294448

/-! ## A294448.P948680933273077629

`2*A074286(n+1)-(n+1)`
-/

namespace A294448.P948680933273077629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074286 (n + 1) - (n + 1 : ℤ)

end

end A294448.P948680933273077629

namespace A294448

/-- `2*A074286(n+1)-(n+1)` -/
def P948680933273077629.Spec : Prop :=
  ∀ n, P948680933273077629.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P11326708476954000890

`n+1-2*A156077(n+1)`
-/

namespace A294448.P11326708476954000890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A156077 (n + 1)

end

end A294448.P11326708476954000890

namespace A294448

/-- `n+1-2*A156077(n+1)` -/
def P11326708476954000890.Spec : Prop :=
  ∀ n, P11326708476954000890.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P13092270535202228762

`∑[A033999(A156253(n+1))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A294448

/-- `∑[A033999(A156253(n+1))]` -/
def P13092270535202228762.Spec : Prop :=
  ∀ n, P13092270535202228762.a n = A294448 (n + 1)

theorem P13092270535202228762.correct : P13092270535202228762.Spec := by
  intro n
  simp only [A294448, Nat.add_sub_cancel]

end A294448

/-! ## A294448.P15577128870786946904

`A074286(n+1)-A156077(n+1)`
-/

namespace A294448.P15577128870786946904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) - A156077 (n + 1)

end

end A294448.P15577128870786946904

namespace A294448

/-- `A074286(n+1)-A156077(n+1)` -/
def P15577128870786946904.Spec : Prop :=
  ∀ n, P15577128870786946904.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P13986695595026710742

`A156268(n+1)-A156265(n+1)`
-/

namespace A294448.P13986695595026710742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156268 (n + 1) - A156265 (n + 1)

end

end A294448.P13986695595026710742

namespace A294448

/-- `A156268(n+1)-A156265(n+1)` -/
def P13986695595026710742.Spec : Prop :=
  ∀ n, P13986695595026710742.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P5486150371244498254

`n-A026741(A088568(n+1)+n)`
-/

namespace A294448.P5486150371244498254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A026741 (A088568 (n + 1) + (n : ℤ)).toNat

end

end A294448.P5486150371244498254

namespace A294448

/-- `n-A026741(A088568(n+1)+n)` -/
def P5486150371244498254.Spec : Prop :=
  ∀ n, P5486150371244498254.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P14628084961759802926

`n-A028310(A088568(n+1)+n)`
-/

namespace A294448.P14628084961759802926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028310 (A088568 (n + 1) + (n : ℤ)).toNat

end

end A294448.P14628084961759802926

namespace A294448

/-- `n-A028310(A088568(n+1)+n)` -/
def P14628084961759802926.Spec : Prop :=
  ∀ n, P14628084961759802926.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P4635006595411584697

`n*A000007(n)-A088568(n+1)`
-/

namespace A294448.P4635006595411584697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A088568 (n + 1)

end

end A294448.P4635006595411584697

namespace A294448

/-- `n*A000007(n)-A088568(n+1)` -/
def P4635006595411584697.Spec : Prop :=
  ∀ n, P4635006595411584697.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P4802328167575452353

`∑[A000002(n+1)-A049705(n+1)]`
-/

namespace A294448.P4802328167575452353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P4802328167575452353

namespace A294448

/-- `∑[A000002(n+1)-A049705(n+1)]` -/
def P4802328167575452353.Spec : Prop :=
  ∀ n, P4802328167575452353.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P13591476874725400541

`A054353(n+1)-∑[A049705(n+1)]`
-/

namespace A294448.P13591476874725400541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P13591476874725400541

namespace A294448

/-- `A054353(n+1)-∑[A049705(n+1)]` -/
def P13591476874725400541.Spec : Prop :=
  ∀ n, P13591476874725400541.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P16812764944643465292

`A156250(n+1)-(A156077(n+1)+1)`
-/

namespace A294448.P16812764944643465292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (n + 1) - (A156077 (n + 1) + 1)

end

end A294448.P16812764944643465292

namespace A294448

/-- `A156250(n+1)-(A156077(n+1)+1)` -/
def P16812764944643465292.Spec : Prop :=
  ∀ n, P16812764944643465292.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P143050947379038613

`A074286(n+1)+∑[A000002(n+1)-2]`
-/

namespace A294448.P143050947379038613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P143050947379038613

namespace A294448

/-- `A074286(n+1)+∑[A000002(n+1)-2]` -/
def P143050947379038613.Spec : Prop :=
  ∀ n, P143050947379038613.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P1921986393684868935

`A054353(n+1)-∑[3-A000002(n+1)]`
-/

namespace A294448.P1921986393684868935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P1921986393684868935

namespace A294448

/-- `A054353(n+1)-∑[3-A000002(n+1)]` -/
def P1921986393684868935.Spec : Prop :=
  ∀ n, P1921986393684868935.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P5794681315276041975

`∑[char[A013948(n+1)-1]+1-A049705(n+1)]`
-/

namespace A294448.P5794681315276041975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P5794681315276041975

namespace A294448

/-- `∑[char[A013948(n+1)-1]+1-A049705(n+1)]` -/
def P5794681315276041975.Spec : Prop :=
  ∀ n, P5794681315276041975.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P7368184494658760299

`A000007(A028310(n))-A088568(n+1)`
-/

namespace A294448.P7368184494658760299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A028310 n).toNat - A088568 (n + 1)

end

end A294448.P7368184494658760299

namespace A294448

/-- `A000007(A028310(n))-A088568(n+1)` -/
def P7368184494658760299.Spec : Prop :=
  ∀ n, P7368184494658760299.a n = A294448 (n + 1)

end A294448

/-! ## A294448.P6378598686433976598

`n-A005408(A005408(n)-A054353(n+1))`
-/

namespace A294448.P6378598686433976598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005408 (A005408 n - A054353 (n + 1)).toNat

end

end A294448.P6378598686433976598

namespace A294448

/-- `n-A005408(A005408(n)-A054353(n+1))` -/
def P6378598686433976598.Spec : Prop :=
  ∀ n, P6378598686433976598.a n = A294448 (n + 1)

end A294448

/-!
# A294449: a(n) = index where A088568 (or equally A294448) first reaches or exceeds n in magnitude.

The programs for A294449, there is no canonical definition to state claims against.
-/

/-! ## A294449.P4490972096672747977

`A288605(A324521(n+1)*A329316(n))`
-/

namespace A294449.P4490972096672747977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288605 (A324521 (n + 1) * A329316 n).toNat

end

end A294449.P4490972096672747977

/-! ## A294449.P9240621724489834589

`A288605(A324521(n+1)^A322801(n))`
-/

namespace A294449.P9240621724489834589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288605 (SequenceMachineLib.roundAway ((A324521 (n + 1) : ℚ) ^ (A322801 n : ℤ))).toNat

end

end A294449.P9240621724489834589

/-!
# A294450: The numbers of plain simply typable lambda terms of natural size n.

The programs for A294450, there is no canonical definition to state claims against.
-/

/-! ## A294450.P267923436824248787

`A342191(ceil(2^(n-1)))-char[comp[2^n]]`
-/

namespace A294450.P267923436824248787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342191 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294450.P267923436824248787

/-! ## A294450.P11693065903388575529

`Δ[A261104(∑[A151482(n)])]`
-/

namespace A294450.P11693065903388575529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294450.P11693065903388575529

/-! ## A294450.P15033422048670499659

`record[Δ[A226763(A106240(n+1))]]`
-/

namespace A294450.P15033422048670499659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (A106240 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294450.P15033422048670499659

/-! ## A294450.P1078704905611928060

`A226763(record[A106240(n+1)])-1`
-/

namespace A294450.P1078704905611928060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226763 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A294450.P1078704905611928060

/-!
# A294451: Number of simply-typed normal forms of lambda-terms of size n.

The programs for A294451, there is no canonical definition to state claims against.
-/

/-! ## A294451.P16490069083778520272

`A036651(n+1)-A370118(A001700(n))`
-/

namespace A294451.P16490069083778520272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036651 (n + 1) - A370118 (A001700 n).toNat

end

end A294451.P16490069083778520272

/-! ## A294451.P17628298723157530405

`xor(A007920(A051354(n)), A173392(n+1))`
-/

namespace A294451.P17628298723157530405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007920 (A051354 n).toNat) (A173392 (n + 1))

end

end A294451.P17628298723157530405

/-! ## A294451.P8968448677465963695

`A135664(A148149(n))-A053563(A200262(n+1))`
-/

namespace A294451.P8968448677465963695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A148149 n).toNat - A053563 (A200262 (n + 1)).toNat

end

end A294451.P8968448677465963695

/-!
# A294452: Expansion of x*(16*x^6+20*x^4-32*x^3+24*x^2-8*x+1) / ((-1+2*x)^2*(2*x^2-4*x+1)^2).

The programs for A294452, there is no canonical definition to state claims against.
-/

/-! ## A294452.P10333885365655411934

`floor(A000010(A234589(n)²)/2)`
-/

namespace A294452.P10333885365655411934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (A234589 n ^ 2).toNat : ℚ) / 2⌋

end

end A294452.P10333885365655411934

/-! ## A294452.P5530199862981615379

`A302043(A008860(n)*A011782(n))`
-/

namespace A294452.P5530199862981615379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A008860 n * A011782 n).toNat

end

end A294452.P5530199862981615379

/-! ## A294452.P11949870694515146710

`A302043(A011782(n)*A234589(n))`
-/

namespace A294452.P11949870694515146710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A011782 n * A234589 n).toNat

end

end A294452.P11949870694515146710

/-! ## A294452.P10936282092321260155

`lt[∑{p}[n, #!], 3]²`
-/

namespace A294452.P10936282092321260155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n ^ 2

end

end A294452.P10936282092321260155

/-!
# A294453: Array read by antidiagonals: T(0,k) = A000045(k+1) for k >= 0. T(n,0) = 1 for n >= 0; thereafter T(n,k) = T(n-1,k-1)+T(n-1,k) for n, k >= 1.

The programs for A294453, there is no canonical definition to state claims against.
-/

/-! ## A294453.P17751238428440371104

`A099573(A004197(n)+n)`
-/

namespace A294453.P17751238428440371104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A004197 n + (n : ℤ)).toNat

end

end A294453.P17751238428440371104

/-! ## A294453.P9250199252275518572

`A099573(A003983(n+1)-1+n)`
-/

namespace A294453.P9250199252275518572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A003983 (n + 1) - 1 + (n : ℤ)).toNat

end

end A294453.P9250199252275518572

/-! ## A294453.P13341103000704771643

`A104726(A002378(n)%A080036(n))`
-/

namespace A294453.P13341103000704771643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A294453.P13341103000704771643

/-! ## A294453.P9501558462857444662

`A104726(A061579(n))`
-/

namespace A294453.P9501558462857444662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104726 (A061579 n).toNat

end

end A294453.P9501558462857444662

/-! ## A294453.P7257749237688492988

`A054450(A061579(A004197(n)+n))`
-/

namespace A294453.P7257749237688492988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A061579 (A004197 n + (n : ℤ)).toNat).toNat

end

end A294453.P7257749237688492988

/-! ## A294453.P11789723173044399771

`A054450(A061579(n)-A004197(n))`
-/

namespace A294453.P11789723173044399771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A061579 n - A004197 n).toNat

end

end A294453.P11789723173044399771

/-! ## A294453.P3782823277762631959

`A054450(A038722(n+1)-A003983(n+1))`
-/

namespace A294453.P3782823277762631959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054450 (A038722 (n + 1) - A003983 (n + 1)).toNat

end

end A294453.P3782823277762631959

/-!
# A294454: a(n) = n! * [x^n] exp(2*n*x)*BesselI(0,2*x)^n.

The programs for A294454, there is no canonical definition to state claims against.
-/

/-! ## A294454.P6338615021664703008

`floor(2/acot(n))*A052382(A301386(n))`
-/

namespace A294454.P6338615021664703008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ * A052382 (A301386 n).toNat

end

end A294454.P6338615021664703008

/-!
# A294456: a(1)=0, a(2)=1; thereafter a(n) = a(floor(n/2)) + a(ceiling(n/2)) + 2.

The programs for A294456, the canonical program `A294456.P3598373529321734138` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294456 has offset 1).

The definition of A294456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)+2` (program `A294456.P3598373529321734138`, by `A294456.P3598373529321734138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294456.P3598373529321734138

`a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)+2` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294456

/-- `a(floor((n+1)/2)-1)+a(ceil((n+1)/2)-1)+2` -/
def P3598373529321734138.Spec : Prop :=
  ∀ n, (P3598373529321734138.a n : ℤ) = A294456 (n + 1)

theorem P3598373529321734138.correct : P3598373529321734138.Spec := by
  intro n
  simp only [A294456, Nat.add_sub_cancel]

end A294456

/-! ## A294456.P1027757757660241995

`∑[floor(a(floor(n/2)))]` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A294456.P1027757757660241995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294456.P1027757757660241995

namespace A294456

/-- `∑[floor(a(floor(n/2)))]` -/
def P1027757757660241995.Spec : Prop :=
  ∀ n, (P1027757757660241995.a n : ℤ) = A294456 (n + 1)

end A294456

/-! ## A294456.P2708517318289278448

`comp[lt[n, xor(n, floor(n/2))]+n]`
-/

namespace A294456.P2708517318289278448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A294456.P2708517318289278448

namespace A294456

/-- `comp[lt[n, xor(n, floor(n/2))]+n]` -/
def P2708517318289278448.Spec : Prop :=
  ∀ n, (P2708517318289278448.a n : ℤ) = A294456 (n + 1)

end A294456

/-! ## A294456.P5252876161569838497

`∑[ceil(xor(n, 2*n)/(2*n+1))]`
-/

namespace A294456.P5252876161569838497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor n (2 * n) : ℚ) / (2 * n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294456.P5252876161569838497

namespace A294456

/-- `∑[ceil(xor(n, 2*n)/(2*n+1))]` -/
def P5252876161569838497.Spec : Prop :=
  ∀ n, P5252876161569838497.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P6761681344080179128

`comp[2^floor(log2(n+1))+n+n+1]`
-/

namespace A294456.P6761681344080179128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.log 2 (n + 1) + n + (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A294456.P6761681344080179128

namespace A294456

/-- `comp[2^floor(log2(n+1))+n+n+1]` -/
def P6761681344080179128.Spec : Prop :=
  ∀ n, (P6761681344080179128.a n : ℤ) = A294456 (n + 1)

end A294456

/-! ## A294456.P13773332291508997787

`2*n-∑[floor(2/(n+1)*and(n, 2*n+1))]`
-/

namespace A294456.P13773332291508997787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (n + 1 : ℚ) * (Nat.land n (2 * n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294456.P13773332291508997787

namespace A294456

/-- `2*n-∑[floor(2/(n+1)*and(n, 2*n+1))]` -/
def P13773332291508997787.Spec : Prop :=
  ∀ n, P13773332291508997787.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P14973271872100303170

`A275202(n+1)-2`
-/

namespace A294456.P14973271872100303170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (n + 1) - 2

end

end A294456.P14973271872100303170

namespace A294456

/-- `A275202(n+1)-2` -/
def P14973271872100303170.Spec : Prop :=
  ∀ n, P14973271872100303170.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P7037446200669204501

`(A214214(n+1)-3)/2`
-/

namespace A294456.P7037446200669204501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214214 (n + 1) - 3 : ℚ) / 2

end

end A294456.P7037446200669204501

namespace A294456

/-- `(A214214(n+1)-3)/2` -/
def P7037446200669204501.Spec : Prop :=
  ∀ n, P7037446200669204501.a n = (A294456 (n + 1) : ℚ)

end A294456

/-! ## A294456.P3787926043339979356

`A006165(n+1)-1+n`
-/

namespace A294456.P3787926043339979356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1) - 1 + (n : ℤ)

end

end A294456.P3787926043339979356

namespace A294456

/-- `A006165(n+1)-1+n` -/
def P3787926043339979356.Spec : Prop :=
  ∀ n, P3787926043339979356.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P3899245234112045814

`2*n-A060973(n+1)`
-/

namespace A294456.P3899245234112045814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A060973 (n + 1)

end

end A294456.P3899245234112045814

namespace A294456

/-- `2*n-A060973(n+1)` -/
def P3899245234112045814.Spec : Prop :=
  ∀ n, P3899245234112045814.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P16642086887871617565

`∑[log2(A214212(n+1))]-1`
-/

namespace A294456.P16642086887871617565
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A214212 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A294456.P16642086887871617565

namespace A294456

/-- `∑[log2(A214212(n+1))]-1` -/
def P16642086887871617565.Spec : Prop :=
  ∀ n, P16642086887871617565.a n = (A294456 (n + 1) : ℝ)

end A294456

/-! ## A294456.P430300791793062141

`∑[floor(A048724(n)/(n+1))]`
-/

namespace A294456.P430300791793062141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048724 n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294456.P430300791793062141

namespace A294456

/-- `∑[floor(A048724(n)/(n+1))]` -/
def P430300791793062141.Spec : Prop :=
  ∀ n, P430300791793062141.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P3498387874002602435

`2*n+1-A166079(n+2)`
-/

namespace A294456.P3498387874002602435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A166079 (n + 2)

end

end A294456.P3498387874002602435

namespace A294456

/-- `2*n+1-A166079(n+2)` -/
def P3498387874002602435.Spec : Prop :=
  ∀ n, P3498387874002602435.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P10396720400740887094

`(n+1)²-∑[A346301(n+1)]`
-/

namespace A294456.P10396720400740887094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294456.P10396720400740887094

namespace A294456

/-- `(n+1)²-∑[A346301(n+1)]` -/
def P10396720400740887094.Spec : Prop :=
  ∀ n, P10396720400740887094.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P14438583777976281625

`A023443(n)+A006165(n+1)`
-/

namespace A294456.P14438583777976281625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A006165 (n + 1)

end

end A294456.P14438583777976281625

namespace A294456

/-- `A023443(n)+A006165(n+1)` -/
def P14438583777976281625.Spec : Prop :=
  ∀ n, P14438583777976281625.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P498100780977850265

`A006165(n+1)-A024000(n)`
-/

namespace A294456.P498100780977850265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1) - A024000 n

end

end A294456.P498100780977850265

namespace A294456

/-- `A006165(n+1)-A024000(n)` -/
def P498100780977850265.Spec : Prop :=
  ∀ n, P498100780977850265.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P10051225183039992099

`A078881(A028310(n))-1+n`
-/

namespace A294456.P10051225183039992099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (A028310 n).toNat - 1 + (n : ℤ)

end

end A294456.P10051225183039992099

namespace A294456

/-- `A078881(A028310(n))-1+n` -/
def P10051225183039992099.Spec : Prop :=
  ∀ n, P10051225183039992099.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P17253027909654384717

`A220001(n+1)-A076178(n)`
-/

namespace A294456.P17253027909654384717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220001 (n + 1) - A076178 n

end

end A294456.P17253027909654384717

namespace A294456

/-- `A220001(n+1)-A076178(n)` -/
def P17253027909654384717.Spec : Prop :=
  ∀ n, P17253027909654384717.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P14692972581095251707

`2*n-A352228(n+2)`
-/

namespace A294456.P14692972581095251707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A352228 (n + 2)

end

end A294456.P14692972581095251707

namespace A294456

/-- `2*n-A352228(n+2)` -/
def P14692972581095251707.Spec : Prop :=
  ∀ n, P14692972581095251707.a n = A294456 (n + 1)

end A294456

/-! ## A294456.P5908906645967985868

`∑[char[A038558(n+1)]]+n`
-/

namespace A294456.P5908906645967985868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A294456.P5908906645967985868

namespace A294456

/-- `∑[char[A038558(n+1)]]+n` -/
def P5908906645967985868.Spec : Prop :=
  ∀ n, (P5908906645967985868.a n : ℤ) = A294456 (n + 1)

end A294456

/-!
# A294457: Sum of all the diagonals of the distinct rectangles that can be made with positive integer sides such that L + W = n, W < L. The sums are then rounded to the nearest integer.

The programs for A294457, there is no canonical definition to state claims against.
-/

/-! ## A294457.P1462162518666314225

`A118277(n)-lt[A330635(n), 2]`
-/

namespace A294457.P1462162518666314225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330635 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118277 n - (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A294457.P1462162518666314225

/-! ## A294457.P16739197307564782428

`A056576(A004526(n)*A032559(n+1))`
-/

namespace A294457.P16739197307564782428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (A004526 n * A032559 (n + 1)).toNat

end

end A294457.P16739197307564782428

/-! ## A294457.P13770333310605468326

`A056576(A004526(n)*A077739(n+1))`
-/

namespace A294457.P13770333310605468326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (A004526 n * A077739 (n + 1)).toNat

end

end A294457.P13770333310605468326

/-!
# A294461: E.g.f.: exp(-Sum_{n>=1} A050999(n) * x^n).

The programs for A294461, there is no canonical definition to state claims against.
-/

/-! ## A294461.P9039079051467048744

`A013550(n^A056477(n))`
-/

namespace A294461.P9039079051467048744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013550 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A056477 n : ℤ))).toNat

end

end A294461.P9039079051467048744

/-!
# A294462: Expansion of e.g.f. Product_{k>0} (1-k*x^k)^(-1/k).

The programs for A294462, there is no canonical definition to state claims against.
-/

/-! ## A294462.P17490452069353902882

`A294761(∑[n+2]-1)`
-/

namespace A294462.P17490452069353902882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294761 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294462.P17490452069353902882

/-! ## A294462.P5023301124389490248

`or(A000007(n), A294761(A034856(n+1)))`
-/

namespace A294462.P5023301124389490248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294761 (A034856 (n + 1)).toNat)

end

end A294462.P5023301124389490248

/-! ## A294462.P11562042963327810774

`A001333(n+1)%2*A294761(A034856(n+1))`
-/

namespace A294462.P11562042963327810774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001333 (n + 1)) 2 * A294761 (A034856 (n + 1)).toNat

end

end A294462.P11562042963327810774

/-! ## A294462.P6435651304535870084

`A294761(A034856(n+1))%A000975(A000040(n+4))`
-/

namespace A294462.P6435651304535870084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294761 (A034856 (n + 1)).toNat) (A000975 (A000040 (n + 4)).toNat)

end

end A294462.P6435651304535870084

/-!
# A294463: E.g.f.: Product_{k>0} (1-k*x^k)^(1/k).

The programs for A294463, there is no canonical definition to state claims against.
-/

/-! ## A294463.P197974678765500630

`A294616(∑[n+2]-1)`
-/

namespace A294463.P197974678765500630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294616 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294463.P197974678765500630

/-! ## A294463.P5722518008623585828

`or(A000007(n), A294616(A034856(n+1)))`
-/

namespace A294463.P5722518008623585828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294616 (A034856 (n + 1)).toNat)

end

end A294463.P5722518008623585828

/-! ## A294463.P10975918286582747776

`A294616(A034856(n+1))+A000007(n+1)`
-/

namespace A294463.P10975918286582747776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294616 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A294463.P10975918286582747776

/-! ## A294463.P10572477054326901499

`or(A147612(2*n), A294616(A034856(n+1)))`
-/

namespace A294463.P10572477054326901499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147612 (2 * n)) (A294616 (A034856 (n + 1)).toNat)

end

end A294463.P10572477054326901499

/-! ## A294463.P16035897222642837435

`A007318(A094497(n))*A294616(A034856(n+1))`
-/

namespace A294463.P16035897222642837435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A094497 n).toNat * A294616 (A034856 (n + 1)).toNat

end

end A294463.P16035897222642837435

/-!
# A294464: Expansion of e.g.f. Product_{k>0} (1+k*x^k)^(1/k).

The programs for A294464, there is no canonical definition to state claims against.
-/

/-! ## A294464.P17531473327555004564

`A065033(A000142(n)*A236348(n))`
-/

namespace A294464.P17531473327555004564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000142 n * A236348 n).toNat

end

end A294464.P17531473327555004564

/-! ## A294464.P6554784413568571891

`A027338(n)*A277193(A233395(n))`
-/

namespace A294464.P6554784413568571891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027338 n * A277193 (A233395 n).toNat

end

end A294464.P6554784413568571891

/-! ## A294464.P10178998664050420792

`A078898(A000142(n)*A329584(n+1))`
-/

namespace A294464.P10178998664050420792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A000142 n * A329584 (n + 1)).toNat

end

end A294464.P10178998664050420792

/-!
# A294465: Expansion of e.g.f. Product_{k>0} (1+k*x^k)^(-1/k).

The programs for A294465, there is no canonical definition to state claims against.
-/

/-! ## A294465.P132003723459995870

`A038148(A000312(n))*A347978(n)`
-/

namespace A294465.P132003723459995870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038148 (A000312 n).toNat * A347978 n

end

end A294465.P132003723459995870

/-! ## A294465.P9570302720359234394

`A294471(n)*A333381(A007838(n))`
-/

namespace A294465.P9570302720359234394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294471 n * A333381 (A007838 n).toNat

end

end A294465.P9570302720359234394

/-!
# A294466: Binomial transform of A053529.

The programs for A294466, there is no canonical definition to state claims against.
-/

/-! ## A294466.P461020527733326349

`A287899(A001096(n))+n`
-/

namespace A294466.P461020527733326349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287899 (A001096 n).toNat + (n : ℤ)

end

end A294466.P461020527733326349

/-! ## A294466.P16875161124365040821

`A004151(A287899(n)+n)`
-/

namespace A294466.P16875161124365040821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A287899 n + (n : ℤ)).toNat

end

end A294466.P16875161124365040821

/-!
# A294467: Binomial transform of A088311.

The programs for A294467, there is no canonical definition to state claims against.
-/

/-! ## A294467.P6286276458156898418

`∑[A116921(∑[A076726(n)])]`
-/

namespace A294467.P6286276458156898418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076726 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116921 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294467.P6286276458156898418

/-! ## A294467.P10716230961406996935

`A028242(A346753(n+2))+1`
-/

namespace A294467.P10716230961406996935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A346753 (n + 2)).toNat + 1

end

end A294467.P10716230961406996935

/-!
# A294468: Inverse binomial transform of A088311.

The programs for A294468, there is no canonical definition to state claims against.
-/

/-! ## A294468.P11360729266726072759

`A361120(A193208(n+1))-n`
-/

namespace A294468.P11360729266726072759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361120 (A193208 (n + 1)).toNat - (n : ℤ)

end

end A294468.P11360729266726072759

/-! ## A294468.P17592394688049250396

`A319653((n-1)^A080979(n))`
-/

namespace A294468.P17592394688049250396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319653 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A080979 n : ℤ))).toNat

end

end A294468.P17592394688049250396

/-!
# A294469: E.g.f.: 1/Product_{k>0} (1 - x^k/k)^k.

The programs for A294469, there is no canonical definition to state claims against.
-/

/-! ## A294469.P6329557027542317300

`A308462(A001096(n))`
-/

namespace A294469.P6329557027542317300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308462 (A001096 n).toNat

end

end A294469.P6329557027542317300

/-! ## A294469.P13076708044542996607

`A118778(A267405(n+2))`
-/

namespace A294469.P13076708044542996607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118778 (A267405 (n + 2)).toNat

end

end A294469.P13076708044542996607

/-!
# A294472: Squarefree numbers whose odd prime factors are all consecutive primes.

The programs for A294472, there is no canonical definition to state claims against.
-/

/-! ## A294472.P1747102828288835517

`lt[n, 2*A053590(A204455(n+1))]+1`
-/

namespace A294472.P1747102828288835517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053590 (A204455 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A294472.P1747102828288835517

/-! ## A294472.P11106664071879538453

`∪[2*A294674(n+1), A294674(n+1)]`
-/

namespace A294472.P11106664071879538453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294472.P11106664071879538453

/-! ## A294472.P8661590665125128184

`record[A000034(n)*A053590(A000265(n+1))]`
-/

namespace A294472.P8661590665125128184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A053590 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294472.P8661590665125128184

/-! ## A294472.P18440344734334767510

`record[A000034(n)*A053590(A204455(n+1))]`
-/

namespace A294472.P18440344734334767510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A053590 (A204455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294472.P18440344734334767510

/-! ## A294472.P15559642728566145921

`∪[A294674(n+1), A005843(A294674(n+1))]`
-/

namespace A294472.P15559642728566145921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A294674 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294472.P15559642728566145921

/-! ## A294472.P11275195276685458918

`record[(A000035(n)+1)*A053590(A000265(n+1))]`
-/

namespace A294472.P11275195276685458918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A053590 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294472.P11275195276685458918

/-! ## A294472.P3385577639835089732

`record[A001511(n+1)*A053590(A000265(n+1))]`
-/

namespace A294472.P3385577639835089732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) * A053590 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294472.P3385577639835089732

/-! ## A294472.P7125821013582729691

`record[A040001(n+1)*A053590(A000265(n+1))]`
-/

namespace A294472.P7125821013582729691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A053590 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294472.P7125821013582729691

/-! ## A294472.P14423012864547996852

`record[A007947(n+1)*A340371(A319626(n+1))]`
-/

namespace A294472.P14423012864547996852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A340371 (A319626 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294472.P14423012864547996852

/-! ## A294472.P7642722792205227961

`record[A019555(n+1)/A137795(A000265(n+1))]`
-/

namespace A294472.P7642722792205227961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A137795 (A000265 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294472.P7642722792205227961

/-!
# A294473: Sum of the areas of the squares on the sides of the distinct rectangles that can be made with positive integer sides such that L + W = n, W < L.

The programs for A294473, the canonical program `A294473.P13798028006280597171` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294473 has offset 1).

The definition of A294473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294473.P14328008300025762077

`(n+1)*(2*(n+1)-3-(-1)^(n+1))*(8*(n+1)-3+(-1)^(n+1))/24`
-/

namespace A294473.P14328008300025762077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)) * ((8 * (n + 1) : ℤ) - 3 + (-1) ^ (n + 1)) : ℚ) / 24

end

end A294473.P14328008300025762077

namespace A294473

/-- `(n+1)*(2*(n+1)-3-(-1)^(n+1))*(8*(n+1)-3+(-1)^(n+1))/24` -/
def P14328008300025762077.Spec : Prop :=
  ∀ n, P14328008300025762077.a n = (A294473 (n + 1) : ℚ)

end A294473

/-! ## A294473.P13798028006280597171

`2*A294286(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A294473

/-- `2*A294286(n+1)` -/
def P13798028006280597171.Spec : Prop :=
  ∀ n, P13798028006280597171.a n = A294473 (n + 1)

theorem P13798028006280597171.correct : P13798028006280597171.Spec := by
  intro n
  simp only [A294473, Nat.add_sub_cancel]

end A294473

/-! ## A294473.P6893748383977620359

`2*(∑[n²]-(∑[n]%(n+1))²)`
-/

namespace A294473.P6893748383977620359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)) ^ 2 : ℕ) : ℤ))

end

end A294473.P6893748383977620359

namespace A294473

/-- `2*(∑[n²]-(∑[n]%(n+1))²)` -/
def P6893748383977620359.Spec : Prop :=
  ∀ n, P6893748383977620359.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P5233021313234769607

`A024598(n+1)-A179297(n+1)`
-/

namespace A294473.P5233021313234769607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024598 (n + 1) - A179297 (n + 1)

end

end A294473.P5233021313234769607

namespace A294473

/-- `A024598(n+1)-A179297(n+1)` -/
def P5233021313234769607.Spec : Prop :=
  ∀ n, P5233021313234769607.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P6611447162162800865

`2*(A006331(n)-A226141(n+1))`
-/

namespace A294473.P6611447162162800865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006331 n - A226141 (n + 1))

end

end A294473.P6611447162162800865

namespace A294473

/-- `2*(A006331(n)-A226141(n+1))` -/
def P6611447162162800865.Spec : Prop :=
  ∀ n, P6611447162162800865.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P1955511947765199857

`2*(A367993(n+2)-A002415(n))`
-/

namespace A294473.P1955511947765199857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A367993 (n + 2) - A002415 n)

end

end A294473.P1955511947765199857

namespace A294473

/-- `2*(A367993(n+2)-A002415(n))` -/
def P1955511947765199857.Spec : Prop :=
  ∀ n, P1955511947765199857.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P5987473873678247920

`2*(A298992(n+1)-A080838(n+1))`
-/

namespace A294473.P5987473873678247920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A298992 (n + 1) - A080838 (n + 1))

end

end A294473.P5987473873678247920

namespace A294473

/-- `2*(A298992(n+1)-A080838(n+1))` -/
def P5987473873678247920.Spec : Prop :=
  ∀ n, P5987473873678247920.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P18240471561955397043

`A294286(A000027(n+1))+A294286(n+1)`
-/

namespace A294473.P18240471561955397043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294286 (A000027 (n + 1)).toNat + A294286 (n + 1)

end

end A294473.P18240471561955397043

namespace A294473

/-- `A294286(A000027(n+1))+A294286(n+1)` -/
def P18240471561955397043.Spec : Prop :=
  ∀ n, P18240471561955397043.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P13088519812158034673

`A294286(A000290(n+1)/(n+1))+A294286(n+1)`
-/

namespace A294473.P13088519812158034673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294286 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + A294286 (n + 1)

end

end A294473.P13088519812158034673

namespace A294473

/-- `A294286(A000290(n+1)/(n+1))+A294286(n+1)` -/
def P13088519812158034673.Spec : Prop :=
  ∀ n, P13088519812158034673.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P2074593396866035279

`A006331(n)-Δ[A006331(A004526(n))]`
-/

namespace A294473.P2074593396866035279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - (f1 (n + 1) - f1 n)

end

end A294473.P2074593396866035279

namespace A294473

/-- `A006331(n)-Δ[A006331(A004526(n))]` -/
def P2074593396866035279.Spec : Prop :=
  ∀ n, P2074593396866035279.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P5712248269468741853

`2*A295320(A042964(n+1))`
-/

namespace A294473.P5712248269468741853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295320 (A042964 (n + 1)).toNat

end

end A294473.P5712248269468741853

namespace A294473

/-- `2*A295320(A042964(n+1))` -/
def P5712248269468741853.Spec : Prop :=
  ∀ n, P5712248269468741853.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P8581689217401224093

`2*A295320(A053438(n+1))`
-/

namespace A294473.P8581689217401224093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295320 (A053438 (n + 1)).toNat

end

end A294473.P8581689217401224093

namespace A294473

/-- `2*A295320(A053438(n+1))` -/
def P8581689217401224093.Spec : Prop :=
  ∀ n, P8581689217401224093.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P2559786129401961898

`2*A295320(A042963(n+1)+1)`
-/

namespace A294473.P2559786129401961898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295320 (A042963 (n + 1) + 1).toNat

end

end A294473.P2559786129401961898

namespace A294473

/-- `2*A295320(A042963(n+1)+1)` -/
def P2559786129401961898.Spec : Prop :=
  ∀ n, P2559786129401961898.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P8722938108521606956

`2*A295320(lt[A295292(n+1), A295293(n+1)])`
-/

namespace A294473.P8722938108521606956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294473.P8722938108521606956

namespace A294473

/-- `2*A295320(lt[A295292(n+1), A295293(n+1)])` -/
def P8722938108521606956.Spec : Prop :=
  ∀ n, P8722938108521606956.a n = A294473 (n + 1)

end A294473

/-! ## A294473.P11776809612643995997

`2*A295320(lt[A295318(n+1), A295293(n+1)])`
-/

namespace A294473.P11776809612643995997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A295320 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294473.P11776809612643995997

namespace A294473

/-- `2*A295320(lt[A295318(n+1), A295293(n+1)])` -/
def P11776809612643995997.Spec : Prop :=
  ∀ n, P11776809612643995997.a n = A294473 (n + 1)

end A294473

/-!
# A294475: a(n) = (-1)^n * A294359(n) / (n+1)^2.

The programs for A294475, there is no canonical definition to state claims against.
-/

/-! ## A294475.P14748719188972400365

`(-1)^n*A294359(n)/(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294475.P14748719188972400365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A294359 n : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A294475.P14748719188972400365

/-!
# A294476: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + 1, where a(0) = 1, a(1) = 3, b(0) = 2.

The programs for A294476, there is no canonical definition to state claims against.
-/

/-! ## A294476.P14301983890074115585

`A022939(n+2)-1`
-/

namespace A294476.P14301983890074115585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022939 (n + 2) - 1

end

end A294476.P14301983890074115585

/-! ## A294476.P7869070273890469841

`∑[abs(Δ[A022939(n+1)])]`
-/

namespace A294476.P7869070273890469841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294476.P7869070273890469841

/-! ## A294476.P3109928808392381904

`∑[A000027(Δ[A022939(n+1)])]`
-/

namespace A294476.P3109928808392381904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294476.P3109928808392381904

/-! ## A294476.P14335096907344289308

`∑[A028310(Δ[A022939(n+1)])]`
-/

namespace A294476.P14335096907344289308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294476.P14335096907344289308

/-! ## A294476.P18093822154318132089

`∑[Δ[A022939(n+1)]%A017118(n)]`
-/

namespace A294476.P18093822154318132089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A017118 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294476.P18093822154318132089

/-! ## A294476.P5865880414300674300

`∑[A000007(n+1)+Δ[A022939(n+1)]]`
-/

namespace A294476.P5865880414300674300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022939 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294476.P5865880414300674300

/-! ## A294476.P14149326093033040917

`A023443(A022939(n+2))`
-/

namespace A294476.P14149326093033040917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A022939 (n + 2)).toNat

end

end A294476.P14149326093033040917

/-!
# A294477: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + 2, where a(0) = 1, a(1) = 3, b(0) = 2.

The programs for A294477, there is no canonical definition to state claims against.
-/

/-! ## A294477.P5801346883055158659

`A022942(n+2)+A294862(n)-A022939(n+2)`
-/

namespace A294477.P5801346883055158659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022942 (n + 2) + (A294862 n - A022939 (n + 2))

end

end A294477.P5801346883055158659

/-! ## A294477.P10360588300349877477

`A137735(A075673(n+1)-A091997(n+1))`
-/

namespace A294477.P10360588300349877477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A075673 (n + 1) - A091997 (n + 1)).toNat

end

end A294477.P10360588300349877477

/-! ## A294477.P6748219453118411789

`A135665(∑[A014126(2*(n+2))]-A001358(3*n+2))`
-/

namespace A294477.P6748219453118411789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (∑ j ∈ Finset.range (n + 1), f1 j - A001358 (3 * n + 2)).toNat

end

end A294477.P6748219453118411789

/-! ## A294477.P4939771274632226851

`A316843(A299273(n))+A032616(n)`
-/

namespace A294477.P4939771274632226851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A299273 n).toNat + A032616 n

end

end A294477.P4939771274632226851

/-! ## A294477.P2139399749474998385

`A251719(A183908(n+1))`
-/

namespace A294477.P2139399749474998385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251719 (A183908 (n + 1)).toNat

end

end A294477.P2139399749474998385

/-!
# A294478: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + 3, where a(0) = 1, a(1) = 3, b(0) = 2.

The programs for A294478, there is no canonical definition to state claims against.
-/

/-! ## A294478.P14803591838544430835

`A000196((A190232(n+1)+A074377(n))*A033620(2*n+3))`
-/

namespace A294478.P14803591838544430835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A190232 (n + 1) + A074377 n) * A033620 (2 * n + 3)).toNat

end

end A294478.P14803591838544430835

/-! ## A294478.P3127511493643547989

`A135660(or(A017113(n), A140113(3*n+2)))`
-/

namespace A294478.P3127511493643547989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (Int.lor (A017113 n) (A140113 (3 * n + 2))).toNat

end

end A294478.P3127511493643547989

/-! ## A294478.P2764346642192470237

`A111660(A052905(n))+A008805(n)`
-/

namespace A294478.P2764346642192470237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A052905 n).toNat + A008805 n

end

end A294478.P2764346642192470237

/-! ## A294478.P4349379028151330061

`A241200(n+1)-A055642(A000108(n))`
-/

namespace A294478.P4349379028151330061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241200 (n + 1) - A055642 (A000108 n).toNat

end

end A294478.P4349379028151330061

/-! ## A294478.P7698849325777442635

`A241200(n+1)-A055642(A014138(n))`
-/

namespace A294478.P7698849325777442635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241200 (n + 1) - A055642 (A014138 n).toNat

end

end A294478.P7698849325777442635

/-!
# A294479: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + n, where a(0) = 1, a(1) = 3, b(0) = 2.

The programs for A294479, there is no canonical definition to state claims against.
-/

/-! ## A294479.P9723016213327529712

`round(∑[log(A090573(n+1))])`
-/

namespace A294479.P9723016213327529712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A090573 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294479.P9723016213327529712

/-! ## A294479.P16400998014616989945

`∑[A001221(A332348(n))+n]+1`
-/

namespace A294479.P16400998014616989945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332348 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A294479.P16400998014616989945

/-! ## A294479.P16178700072355818274

`A000124(n)+∑[A001221(A332348(n))]`
-/

namespace A294479.P16178700072355818274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A332348 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294479.P16178700072355818274

/-! ## A294479.P3505925453021440413

`∑[A028310(n)+A001221(A332348(n))]`
-/

namespace A294479.P3505925453021440413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A001221 (A332348 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294479.P3505925453021440413

/-! ## A294479.P3697895158638816669

`A002024(A013938(A013937(A000217(A000217(n+1)))))`
-/

namespace A294479.P3697895158638816669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A013938 (A013937 (A000217 (A000217 (n + 1)).toNat).toNat).toNat).toNat

end

end A294479.P3697895158638816669

/-!
# A294480: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + 2n, where a(0) = 1, a(1) = 3, b(0) = 2.

The programs for A294480, there is no canonical definition to state claims against.
-/

/-! ## A294480.P16464296932071354696

`A206912(∑[n+1])-char[A163979(n)]`
-/

namespace A294480.P16464296932071354696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163979 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206912 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294480.P16464296932071354696

/-! ## A294480.P783904467350139845

`A344291(A006578(n)+1)`
-/

namespace A294480.P783904467350139845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (A006578 n + 1).toNat

end

end A294480.P783904467350139845

/-! ## A294480.P13856772514751983264

`A344291(∑[A032766(n)]+1)`
-/

namespace A294480.P13856772514751983264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A294480.P13856772514751983264

/-! ## A294480.P9358056919524433917

`eq[0, A010873(A306073(n+1))]`
-/

namespace A294480.P9358056919524433917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A306073 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294480.P9358056919524433917

/-! ## A294480.P2415250011812903255

`A344291(A077043(n+1)-n)`
-/

namespace A294480.P2415250011812903255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344291 (A077043 (n + 1) - (n : ℤ)).toNat

end

end A294480.P2415250011812903255

/-!
# A294481: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + n - 1, where a(0) = 1, a(1) = 3, b(0) = 2.

The programs for A294481, there is no canonical definition to state claims against.
-/

/-! ## A294481.P3764844079937769209

`A294864(n)+A267870(n+1)`
-/

namespace A294481.P3764844079937769209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A267870 (n + 1)

end

end A294481.P3764844079937769209

/-! ## A294481.P7329700871457831398

`A294864(n)+A060576(A133310(n))`
-/

namespace A294481.P7329700871457831398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A060576 (A133310 n).toNat

end

end A294481.P7329700871457831398

/-! ## A294481.P11556925917822020310

`A294864(n)-A057428(A068639(n))`
-/

namespace A294481.P11556925917822020310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n - A057428 (A068639 n).toNat

end

end A294481.P11556925917822020310

/-! ## A294481.P10592783020618029444

`A294864(n)+A157928(A014681(n)-A157928(n))`
-/

namespace A294481.P10592783020618029444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A157928 (A014681 n - A157928 n).toNat

end

end A294481.P10592783020618029444

/-! ## A294481.P6955257997945644888

`A294864(n)+A057428(n)*A057428(A068639(n))`
-/

namespace A294481.P6955257997945644888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A057428 n * A057428 (A068639 n).toNat

end

end A294481.P6955257997945644888

/-! ## A294481.P6252374928280811417

`A294864(n)+A157928(A014681(n))`
-/

namespace A294481.P6252374928280811417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A157928 (A014681 n).toNat

end

end A294481.P6252374928280811417

/-! ## A294481.P4675185744897015046

`A294864(n)+A000035(A295609(n))`
-/

namespace A294481.P4675185744897015046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A000035 (A295609 n).toNat

end

end A294481.P4675185744897015046

/-! ## A294481.P11756456028165478319

`A294864(n)+A157928(A057300(n))`
-/

namespace A294481.P11756456028165478319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A157928 (A057300 n).toNat

end

end A294481.P11756456028165478319

/-! ## A294481.P3717258355892231436

`A294864(n)+A000035(A004274(n))`
-/

namespace A294481.P3717258355892231436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A000035 (A004274 n).toNat

end

end A294481.P3717258355892231436

/-! ## A294481.P6745883798607939659

`A294864(n)+A057427(A012265(n))`
-/

namespace A294481.P6745883798607939659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294864 n + A057427 (A012265 n).toNat

end

end A294481.P6745883798607939659

/-!
# A294482: Solution of the complementary equation a(n) = a(n-2) + b(n-1) + n + 1, where a(0) = 1, a(1) = 3, b(0) = 2.

The programs for A294482, there is no canonical definition to state claims against.
-/

/-! ## A294482.P11524318977391750245

`∑[A305233(Δ[A277867(n)])]`
-/

namespace A294482.P11524318977391750245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277867 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305233 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294482.P11524318977391750245

/-! ## A294482.P12849689322471558911

`A118170(A084265(n))`
-/

namespace A294482.P12849689322471558911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A084265 n).toNat

end

end A294482.P12849689322471558911

/-! ## A294482.P18098268225940055001

`A118170(A293704(n+1)+∑[n+1])`
-/

namespace A294482.P18098268225940055001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A293704 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A294482.P18098268225940055001

/-! ## A294482.P4453133827744742895

`A118170(A059841(n)+A000096(n))`
-/

namespace A294482.P4453133827744742895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A059841 n + A000096 n).toNat

end

end A294482.P4453133827744742895

/-! ## A294482.P5787445135312410006

`A331968(n+1)+A001221(A326518(n))`
-/

namespace A294482.P5787445135312410006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331968 (n + 1) + A001221 (A326518 n).toNat

end

end A294482.P5787445135312410006

/-!
# A294485: Numbers k such that (23*10^k + 19)/3 is prime.

The programs for A294485, there is no canonical definition to state claims against.
-/

/-! ## A294485.P2154443251041366218

`A194410(record[A178473(round((n-1)/2)+2)+n])`
-/

namespace A294485.P2154443251041366218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178473 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194410 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A294485.P2154443251041366218

/-! ## A294485.P12508872054789179889

`A194410(n+2)-A154720(A119363(n))`
-/

namespace A294485.P12508872054789179889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194410 (n + 2) - A154720 (A119363 n).toNat

end

end A294485.P12508872054789179889

/-! ## A294485.P6332482472159289143

`A194410(A232012(n+1)%A194410(3*n+2))`
-/

namespace A294485.P6332482472159289143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194410 (Int.tmod (A232012 (n + 1)) (A194410 (3 * n + 2))).toNat

end

end A294485.P6332482472159289143

/-!
# A294486: a(n) = binomial(2*n,n) * (2*n+1)^2.

The programs for A294486, the canonical program `A294486.P3243653207776082213` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294486 has offset 0).

The definition of A294486 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*n, n)*(2*n+1)²` (program `A294486.P3243653207776082213`, by `A294486.P3243653207776082213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A294486.P9470022151792924540

`A000984(n)*A016754(n)`
-/

namespace A294486.P9470022151792924540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A016754 n

end

end A294486.P9470022151792924540

namespace A294486

/-- `A000984(n)*A016754(n)` -/
def P9470022151792924540.Spec : Prop :=
  ∀ n, P9470022151792924540.a n = A294486 n

theorem P9470022151792924540.correct : P9470022151792924540.Spec := by
  intro n
  simp only [A294486, Nat.add_sub_cancel, A294486.P9470022151792924540.a, A294486.P3243653207776082213.a, A000984, A000984.P7946844122574426130.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A294486

/-! ## A294486.P3243653207776082213

`C(2*n, n)*(2*n+1)²`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A294486

/-- `C(2*n, n)*(2*n+1)²` -/
def P3243653207776082213.Spec : Prop :=
  ∀ n, (P3243653207776082213.a n : ℤ) = A294486 n

theorem P3243653207776082213.correct : P3243653207776082213.Spec := by
  intro n
  simp only [A294486]

end A294486

/-! ## A294486.P8630069015985623159

`(n+1)*∏[4-2/(n+1)]/2*Δ[n²]`
-/

namespace A294486.P8630069015985623159
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ))

end

end A294486.P8630069015985623159

namespace A294486

/-- `(n+1)*∏[4-2/(n+1)]/2*Δ[n²]` -/
def P8630069015985623159.Spec : Prop :=
  ∀ n, P8630069015985623159.a n = (A294486 n : ℚ)

end A294486

/-! ## A294486.P5464880395897475518

`lcm(A000984(n), A257589(n))`
-/

namespace A294486.P5464880395897475518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000984 n) (A257589 n)

end

end A294486.P5464880395897475518

namespace A294486

/-- `lcm(A000984(n), A257589(n))` -/
def P5464880395897475518.Spec : Prop :=
  ∀ n, (P5464880395897475518.a n : ℤ) = A294486 n

end A294486

/-! ## A294486.P5291199309846078232

`A002736(n+1)-A002457(n)`
-/

namespace A294486.P5291199309846078232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002736 (n + 1) - A002457 n

end

end A294486.P5291199309846078232

namespace A294486

/-- `A002736(n+1)-A002457(n)` -/
def P5291199309846078232.Spec : Prop :=
  ∀ n, P5291199309846078232.a n = A294486 n

end A294486

/-! ## A294486.P12584011190636782978

`2*A002544(n)-A002457(n)`
-/

namespace A294486.P12584011190636782978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002544 n - A002457 n

end

end A294486.P12584011190636782978

namespace A294486

/-- `2*A002544(n)-A002457(n)` -/
def P12584011190636782978.Spec : Prop :=
  ∀ n, P12584011190636782978.a n = A294486 n

end A294486

/-! ## A294486.P5119447567398944385

`A001700(n)+n*A033876(n)`
-/

namespace A294486.P5119447567398944385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (n : ℤ) * A033876 n

end

end A294486.P5119447567398944385

namespace A294486

/-- `A001700(n)+n*A033876(n)` -/
def P5119447567398944385.Spec : Prop :=
  ∀ n, P5119447567398944385.a n = A294486 n

end A294486

/-! ## A294486.P8738668132131753322

`record[A004442(n)²*A126869(n)]`
-/

namespace A294486.P8738668132131753322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n ^ 2 * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294486.P8738668132131753322

namespace A294486

/-- `record[A004442(n)²*A126869(n)]` -/
def P8738668132131753322.Spec : Prop :=
  ∀ n, P8738668132131753322.a n = A294486 n

end A294486

/-! ## A294486.P4789632606850154109

`A000984(n)/(1/A005408(n))²`
-/

namespace A294486.P4789632606850154109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (1 / (A005408 n : ℚ)) ^ 2

end

end A294486.P4789632606850154109

namespace A294486

/-- `A000984(n)/(1/A005408(n))²` -/
def P4789632606850154109.Spec : Prop :=
  ∀ n, P4789632606850154109.a n = (A294486 n : ℚ)

end A294486

/-! ## A294486.P16496534468115986848

`A051133(n+1)-A005430(n+1)`
-/

namespace A294486.P16496534468115986848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051133 (n + 1) - A005430 (n + 1)

end

end A294486.P16496534468115986848

namespace A294486

/-- `A051133(n+1)-A005430(n+1)` -/
def P16496534468115986848.Spec : Prop :=
  ∀ n, P16496534468115986848.a n = A294486 n

end A294486

/-! ## A294486.P3517776099500748600

`A152548(2*n)+A107233(2*n)`
-/

namespace A294486.P3517776099500748600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152548 (2 * n) + A107233 (2 * n)

end

end A294486.P3517776099500748600

namespace A294486

/-- `A152548(2*n)+A107233(2*n)` -/
def P3517776099500748600.Spec : Prop :=
  ∀ n, P3517776099500748600.a n = A294486 n

end A294486

/-! ## A294486.P2392263989206929156

`A002736(n+1)-A100071(2*n+1)`
-/

namespace A294486.P2392263989206929156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002736 (n + 1) - A100071 (2 * n + 1)

end

end A294486.P2392263989206929156

namespace A294486

/-- `A002736(n+1)-A100071(2*n+1)` -/
def P2392263989206929156.Spec : Prop :=
  ∀ n, P2392263989206929156.a n = A294486 n

end A294486

/-! ## A294486.P7336454292914728551

`A273325(n+1)/2`
-/

namespace A294486.P7336454292914728551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273325 (n + 1) : ℚ) / 2

end

end A294486.P7336454292914728551

namespace A294486

/-- `A273325(n+1)/2` -/
def P7336454292914728551.Spec : Prop :=
  ∀ n, P7336454292914728551.a n = (A294486 n : ℚ)

end A294486

/-! ## A294486.P5394080809151261975

`A000290(2*n+1)*A056040(2*n+1)/A028310(2*n+1)`
-/

namespace A294486.P5394080809151261975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (2 * n + 1) * A056040 (2 * n + 1) : ℚ) / (A028310 (2 * n + 1) : ℚ)

end

end A294486.P5394080809151261975

namespace A294486

/-- `A000290(2*n+1)*A056040(2*n+1)/A028310(2*n+1)` -/
def P5394080809151261975.Spec : Prop :=
  ∀ n, P5394080809151261975.a n = (A294486 n : ℚ)

end A294486

/-!
# A294487: Sum of the lengths of the distinct rectangles with prime length and integer width such that L + W = n, W < L.

The programs for A294487, the canonical program `A294487.P4199886076242480061` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294487 has offset 1).

The definition of A294487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294487.P1837056430520271260

`(n+1)*A294602(n+1)-A368058(n+1)`
-/

namespace A294487.P1837056430520271260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294602 (n + 1) - A368058 (n + 1)

end

end A294487.P1837056430520271260

namespace A294487

/-- `(n+1)*A294602(n+1)-A368058(n+1)` -/
def P1837056430520271260.Spec : Prop :=
  ∀ n, P1837056430520271260.a n = A294487 (n + 1)

theorem P1837056430520271260.correct : P1837056430520271260.Spec := by
  intro n
  simp only [A294487, Nat.add_sub_cancel, A294487.P1837056430520271260.a, A294487.P4199886076242480061.f1, A294487.P4199886076242480061.a, A063955, A063955.P15955011138369882518.a, A294602, A294602.P13576382201682243121.a, A368058, A368058.P11609945365760646763.a, A010051, A010051.P15078252821583414300.a, A034387, A034387.P4934732080317010833.a, A056171, A056171.P2104246229896061761.a, A065033, A065033.P13150710762287634520.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A294487

/-! ## A294487.P4199886076242480061

`A063955(n+1)-∑{p}[n+1, C(#, n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294487

/-- `A063955(n+1)-∑{p}[n+1, C(#, n)]` -/
def P4199886076242480061.Spec : Prop :=
  ∀ n, P4199886076242480061.a n = A294487 (n + 1)

theorem P4199886076242480061.correct : P4199886076242480061.Spec := by
  intro n
  simp only [A294487, Nat.add_sub_cancel]

end A294487

/-! ## A294487.P11256723777899804993

`A063955(C(n, ∑{p}[n+1, C(#, n)])+n)`
-/

namespace A294487.P11256723777899804993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) + n)

end

end A294487.P11256723777899804993

namespace A294487

/-- `A063955(C(n, ∑{p}[n+1, C(#, n)])+n)` -/
def P11256723777899804993.Spec : Prop :=
  ∀ n, P11256723777899804993.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P2175717223886398213

`A063955(n+1-C(C(2, ∑{e}[n+1, #]), 2))`
-/

namespace A294487.P2175717223886398213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (n + 1 - Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) 2)

end

end A294487.P2175717223886398213

namespace A294487

/-- `A063955(n+1-C(C(2, ∑{e}[n+1, #]), 2))` -/
def P2175717223886398213.Spec : Prop :=
  ∀ n, P2175717223886398213.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P14398555683164626439

`A063955(A014684(n+1))`
-/

namespace A294487.P14398555683164626439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A014684 (n + 1)).toNat

end

end A294487.P14398555683164626439

namespace A294487

/-- `A063955(A014684(n+1))` -/
def P14398555683164626439.Spec : Prop :=
  ∀ n, P14398555683164626439.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P7831663101390534093

`A063955(A266070(n)+n)`
-/

namespace A294487.P7831663101390534093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A266070 n + (n : ℤ)).toNat

end

end A294487.P7831663101390534093

namespace A294487

/-- `A063955(A266070(n)+n)` -/
def P7831663101390534093.Spec : Prop :=
  ∀ n, P7831663101390534093.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P1348915156172662281

`A063955(A005171(n+1)+n)`
-/

namespace A294487.P1348915156172662281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A005171 (n + 1) + (n : ℤ)).toNat

end

end A294487.P1348915156172662281

namespace A294487

/-- `A063955(A005171(n+1)+n)` -/
def P1348915156172662281.Spec : Prop :=
  ∀ n, P1348915156172662281.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P17209616679060592657

`A368058(n+1)+A294022(n+1)`
-/

namespace A294487.P17209616679060592657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368058 (n + 1) + A294022 (n + 1)

end

end A294487.P17209616679060592657

namespace A294487

/-- `A368058(n+1)+A294022(n+1)` -/
def P17209616679060592657.Spec : Prop :=
  ∀ n, P17209616679060592657.a n = A294487 (n + 1)

theorem P17209616679060592657.correct : P17209616679060592657.Spec := by
  intro n
  simp only [A294487, Nat.add_sub_cancel, A294487.P17209616679060592657.a, A294487.P4199886076242480061.f1, A294487.P4199886076242480061.a, A063955, A063955.P15955011138369882518.a, A294022, A294022.P1258060895145082735.a, A368058, A368058.P11609945365760646763.a, A034387, A034387.P4934732080317010833.a, A065033, A065033.P13150710762287634520.a, A294602, A294602.P13576382201682243121.a, A010051, A010051.P15078252821583414300.a, A056171, A056171.P2104246229896061761.a, A158662, A158662.P939245884081380887.f2, A158662.P939245884081380887.f1, A158662.P939245884081380887.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A294487

/-! ## A294487.P18046260398433575591

`A063955(n+1-A010051(n+1))`
-/

namespace A294487.P18046260398433575591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 ((n + 1 : ℤ) - A010051 (n + 1)).toNat

end

end A294487.P18046260398433575591

namespace A294487

/-- `A063955(n+1-A010051(n+1))` -/
def P18046260398433575591.Spec : Prop :=
  ∀ n, P18046260398433575591.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P8243257394232365499

`A063955(n+1)-A061397(n+1)`
-/

namespace A294487.P8243257394232365499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (n + 1) - A061397 (n + 1)

end

end A294487.P8243257394232365499

namespace A294487

/-- `A063955(n+1)-A061397(n+1)` -/
def P8243257394232365499.Spec : Prop :=
  ∀ n, P8243257394232365499.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P3648788309495764785

`A063955(n+1-char[A000040(n+1)-1])`
-/

namespace A294487.P3648788309495764785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (n + 1 - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A294487.P3648788309495764785

namespace A294487

/-- `A063955(n+1-char[A000040(n+1)-1])` -/
def P3648788309495764785.Spec : Prop :=
  ∀ n, P3648788309495764785.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P6430487071950937525

`A034387(n+1)-(A063960(n+1)+A061397(n+1))`
-/

namespace A294487.P6430487071950937525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1) - (A063960 (n + 1) + A061397 (n + 1))

end

end A294487.P6430487071950937525

namespace A294487

/-- `A034387(n+1)-(A063960(n+1)+A061397(n+1))` -/
def P6430487071950937525.Spec : Prop :=
  ∀ n, P6430487071950937525.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P9852206834019380162

`A063955(A113638(n+1))`
-/

namespace A294487.P9852206834019380162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (A113638 (n + 1)).toNat

end

end A294487.P9852206834019380162

namespace A294487

/-- `A063955(A113638(n+1))` -/
def P9852206834019380162.Spec : Prop :=
  ∀ n, P9852206834019380162.a n = A294487 (n + 1)

end A294487

/-! ## A294487.P4192272886682567965

`A063960(2*n+1)-A063960(n+1)`
-/

namespace A294487.P4192272886682567965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (2 * n + 1) - A063960 (n + 1)

end

end A294487.P4192272886682567965

namespace A294487

/-- `A063960(2*n+1)-A063960(n+1)` -/
def P4192272886682567965.Spec : Prop :=
  ∀ n, P4192272886682567965.a n = A294487 (n + 1)

end A294487

/-!
# A294490: Triangle read by rows: T(n,k) is the number of simple connected graphs on n vertices having independence number k.

The programs for A294490, there is no canonical definition to state claims against.
-/

/-! ## A294490.P3093228526331807080

`A233763(A124539(n))`
-/

namespace A294490.P3093228526331807080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 (A124539 n).toNat

end

end A294490.P3093228526331807080

/-! ## A294490.P5237969584732666970

`A055401(A055807(n)^4)`
-/

namespace A294490.P5237969584732666970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A055807 n ^ 4).toNat

end

end A294490.P5237969584732666970

/-! ## A294490.P18442006181100513763

`A135551(4^A165253(n))`
-/

namespace A294490.P18442006181100513763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A165253 n : ℤ))).toNat

end

end A294490.P18442006181100513763

/-! ## A294490.P5192004295819488374

`A055401(A055807(n)²²)`
-/

namespace A294490.P5192004295819488374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 ((A055807 n ^ 2) ^ 2).toNat

end

end A294490.P5192004295819488374

/-! ## A294490.P9723033612726923326

`∑{d}[A106800(n), A006530(#!)]`
-/

namespace A294490.P9723033612726923326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 (Nat.factorial d)

end

end A294490.P9723033612726923326

/-!
# A294491: Number of length 2n n-ary words that can be built by repeatedly inserting doublets into the initially empty word.

The programs for A294491, there is no canonical definition to state claims against.
-/

/-! ## A294491.P17217148236156787488

`A028310(n)*A248828(n)`
-/

namespace A294491.P17217148236156787488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A248828 n

end

end A294491.P17217148236156787488

/-! ## A294491.P16802188459110804767

`A000007(n)+n*A248828(n)`
-/

namespace A294491.P16802188459110804767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A248828 n

end

end A294491.P16802188459110804767

/-! ## A294491.P4309707829759937075

`A007318(A000124(n))*A248828(n)`
-/

namespace A294491.P4309707829759937075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A248828 n

end

end A294491.P4309707829759937075

/-! ## A294491.P16916458521939280194

`A183135(∑[4*n])`
-/

namespace A294491.P16916458521939280194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294491.P16916458521939280194

/-! ## A294491.P2214557781135409082

`A028310(n)*A183134(A046092(n))`
-/

namespace A294491.P2214557781135409082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A183134 (A046092 n).toNat

end

end A294491.P2214557781135409082

/-!
# A294492: Numbers m that set records for the ratio A045763(n)/n.

The programs for A294492, there is no canonical definition to state claims against.
-/

/-! ## A294492.P16902956007348509751

`∩[A116883(n+1), A290490(n+1)]`
-/

namespace A294492.P16902956007348509751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294492.P16902956007348509751

/-! ## A294492.P3324167055511973580

`∩[A140209(n+1), A290490(n+1)]`
-/

namespace A294492.P3324167055511973580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294492.P3324167055511973580

/-! ## A294492.P3873847259935209777

`∩[A290490(n+1), A324704(n+1)]`
-/

namespace A294492.P3873847259935209777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294492.P3873847259935209777

/-! ## A294492.P14056468423633441978

`∩[A290490(n+1), A379841(n+1)]`
-/

namespace A294492.P14056468423633441978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294492.P14056468423633441978

/-! ## A294492.P16041249322616898937

`A290490(n+2)-A054525(A323526(3*n+1))`
-/

namespace A294492.P16041249322616898937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290490 (n + 2) - A054525 (A323526 (3 * n + 1)).toNat

end

end A294492.P16041249322616898937

/-!
# A294493: a(n) = Sum_{m=0..n} 3^v3(m!), where v3(m!) is the exponent of the highest power of 3 dividing n!, expressed in base 3.

The programs for A294493, there is no canonical definition to state claims against.
-/

/-! ## A294493.P9075338829181352198

`A007089(∑[gcd(n*a(n-1), 3^(n+1))])` with `a(0)=1`
-/

namespace A294493.P9075338829181352198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.gcd (n * f1 (n - 1)) (3 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294493.P9075338829181352198

/-! ## A294493.P9346772016832616840

`A007089(∑[A060828(n)])`
-/

namespace A294493.P9346772016832616840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060828 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294493.P9346772016832616840

/-! ## A294493.P2690258658195837530

`A007089(∑[3^A054861(n)])`
-/

namespace A294493.P2690258658195837530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A054861 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A294493.P2690258658195837530

/-! ## A294493.P1784815638630268883

`A007089(∑[3^n/A125824(n)])`
-/

namespace A294493.P1784815638630268883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (A125824 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A294493.P1784815638630268883

/-! ## A294493.P901420672887896486

`A007089(∑[a(n-1)*A038500(n)])` with `a(0)=1`
-/

namespace A294493.P901420672887896486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A038500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294493.P901420672887896486

/-!
# A294496: Number of distinct minimal period lengths of periodic infinite words on n symbols having the constant gap property.

The programs for A294496, there is no canonical definition to state claims against.
-/

/-! ## A294496.P12239067178528114604

`A067592(or(1, n)+1+n)-n`
-/

namespace A294496.P12239067178528114604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067592 (Nat.lor 1 n + 1 + n) - (n : ℤ)

end

end A294496.P12239067178528114604

/-! ## A294496.P2796330670032169566

`A217753(n+5)+A010055(A008812(n))`
-/

namespace A294496.P2796330670032169566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217753 (n + 5) + A010055 (A008812 n).toNat

end

end A294496.P2796330670032169566

/-! ## A294496.P3758289101448750256

`A347661(floor(n/2)!)+floor((n/2)²)`
-/

namespace A294496.P3758289101448750256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347661 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat) + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A294496.P3758289101448750256

/-! ## A294496.P14466977662061190021

`A104842(A094967(n))+A002620(n)`
-/

namespace A294496.P14466977662061190021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104842 (A094967 n).toNat + A002620 n

end

end A294496.P14466977662061190021

/-! ## A294496.P17577688644043511354

`A061070(A121104(n+2)+A121098(n))`
-/

namespace A294496.P17577688644043511354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A121104 (n + 2) + A121098 n).toNat

end

end A294496.P17577688644043511354

/-!
# A294497: Squares k (not ending in 0) such that the integer that is built up by concatenating the floors of the square roots of the two-digit numbers into which the original number is separated (from right to left) is the square root of the original number.

The programs for A294497, there is no canonical definition to state claims against.
-/

/-! ## A294497.P15284333866584124064

`lt[A257297(2*n+1), A111707(n)]²`
-/

namespace A294497.P15284333866584124064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A294497.P15284333866584124064

/-! ## A294497.P15277084580016347158

`record[A292685(A059127(n))²]`
-/

namespace A294497.P15277084580016347158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292685 (A059127 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294497.P15277084580016347158

/-! ## A294497.P18253739776959265265

`record[A292685(A083544(n+1))²]`
-/

namespace A294497.P18253739776959265265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292685 (A083544 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294497.P18253739776959265265

/-! ## A294497.P1585662218560847041

`Δ[Δ[A352669(n+1)]]²`
-/

namespace A294497.P1585662218560847041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A294497.P1585662218560847041

/-! ## A294497.P11880191068300070357

`A221222(A032581(n+1))`
-/

namespace A294497.P11880191068300070357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221222 (A032581 (n + 1)).toNat

end

end A294497.P11880191068300070357

/-!
# A294498: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of e.g.f. exp(2*k*x)*(BesselI(0,2*x) - BesselI(1,2*x))^k.

The programs for A294498, there is no canonical definition to state claims against.
-/

/-! ## A294498.P16399169417224580946

`A352369(A061579(n))/A007318(n)`
-/

namespace A294498.P16399169417224580946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352369 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A294498.P16399169417224580946

/-! ## A294498.P14094837159861749828

`A292860(n)-A025469(A350256(n))`
-/

namespace A294498.P14094837159861749828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 n - A025469 (A350256 n).toNat

end

end A294498.P14094837159861749828

/-! ## A294498.P5470220676066075101

`A292860(n)-A185037(A291709(n))`
-/

namespace A294498.P5470220676066075101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 n - A185037 (A291709 n).toNat

end

end A294498.P5470220676066075101

/-! ## A294498.P7702420568511628201

`A292860(n)-A125005(A078925(n+1))`
-/

namespace A294498.P7702420568511628201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 n - A125005 (A078925 (n + 1)).toNat

end

end A294498.P7702420568511628201

/-! ## A294498.P5260367271975125102

`A292860(n)+A010815(A316793(3*(n+1)))`
-/

namespace A294498.P5260367271975125102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 n + A010815 (A316793 (3 * (n + 1))).toNat

end

end A294498.P5260367271975125102

/-!
# A294499: Inverse binomial transform of the number of overpartitions (A015128).

The programs for A294499, there is no canonical definition to state claims against.
-/

/-! ## A294499.P3570882475817763526

`A307521(n)-a(n-1)` with `a(0)=1`
-/

namespace A294499.P3570882475817763526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307521 n - a (n - 1)

end

end A294499.P3570882475817763526

