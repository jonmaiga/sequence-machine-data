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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
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
# A326000: G.f.: Sum_{n>=0} (n+1) * ((1+x)^n - 1)^n.

The programs for A326000, there is no canonical definition to state claims against.
-/

/-! ## A326000.P4793155637129387829

`A310977(n*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A326000.P4793155637129387829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A310977 ((n : ℤ) * a (n - 1)).toNat

end

end A326000.P4793155637129387829

/-!
# A326001: G.f.: Sum_{n>=0} (n+1)*(n+2)/2 * ((1+x)^n - 1)^n.

The programs for A326001, there is no canonical definition to state claims against.
-/

/-! ## A326001.P2794286900279049661

`∑{d}[∏{p}[n+1, #], (n+1)/#]*A114112(A113132(n))`
-/

namespace A326001.P2794286900279049661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * (A114112 (A113132 n).toNat : ℚ)

end

end A326001.P2794286900279049661

/-!
# A326005: G.f.: Sum_{n>=0} (n+1)*(n+2)*(n+3)*(n+4)/4! * x^n * (1 + x^n)^n.

The programs for A326005, there is no canonical definition to state claims against.
-/

/-! ## A326005.P13913313284352441614

`A062327(A086347(n))+A000384(n)`
-/

namespace A326005.P13913313284352441614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062327 (A086347 n).toNat + A000384 n

end

end A326005.P13913313284352441614

/-! ## A326005.P11141703504632830389

`eq[A126759(A190748(n+1)), A276146(2*n)]`
-/

namespace A326005.P11141703504632830389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A190748 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276146 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A326005.P11141703504632830389

/-!
# A326006: G.f.: Sum_{n>=0} (n+1) * x^n * ((1+x)^n + 1)^n / (1 + x*(1+x)^n)^(n+2).

The programs for A326006, there is no canonical definition to state claims against.
-/

/-! ## A326006.P1654089854652600936

`record[A264969(3*n+2)*A264969(n)]`
-/

namespace A326006.P1654089854652600936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264969 (3 * n + 2) * A264969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326006.P1654089854652600936

/-! ## A326006.P10123403755621884659

`A248231(or(A027379(n), A054091(n)))`
-/

namespace A326006.P10123403755621884659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (Int.lor (A027379 n) (A054091 n)).toNat

end

end A326006.P10123403755621884659

/-!
# A326007: G.f.: Sum_{n>=0} (n+1)*(n+2)/2 * x^n * ((1+x)^n + 1)^n / (1 + x*(1+x)^n)^(n+3).

The programs for A326007, there is no canonical definition to state claims against.
-/

/-! ## A326007.P1068096575044804483

`∑[∑[A054345(A055872(n+1))]]`
-/

namespace A326007.P1068096575044804483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (A055872 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326007.P1068096575044804483

/-! ## A326007.P4278876642195590235

`A130675(n+2)+A033103(A000918(2*n+3))`
-/

namespace A326007.P4278876642195590235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130675 (n + 2) + A033103 (A000918 (2 * n + 3)).toNat

end

end A326007.P4278876642195590235

/-!
# A326008: G.f.: Sum_{n>=0} (n+1)*(n+2)*(n+3)/3! * x^n * ((1+x)^n + 1)^n / (1 + x*(1+x)^n)^(n+4).

The programs for A326008, there is no canonical definition to state claims against.
-/

/-! ## A326008.P837567222205153682

`A204008(ceil(10^n/5))`
-/

namespace A326008.P837567222205153682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 ⌈(10 ^ n : ℚ) / 5⌉.toNat

end

end A326008.P837567222205153682

/-!
# A326009: E.g.f.: Sum_{n>=0} (exp((n+1)*x) + 1)^n * x^n / n!.

The programs for A326009, there is no canonical definition to state claims against.
-/

/-! ## A326009.P8629000680123995298

`A045917(record[a(n-1)/(floor(n/2)/n-1)]²)` with `a(0)=2, a(1)=1`
-/

namespace A326009.P8629000680123995298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2)).toNat

end

end A326009.P8629000680123995298

/-!
# A326010: G.f. A(x) satisfies: 0 = Sum_{n>=1} n * ((1+x)^n - A(x))^n.

The programs for A326010, there is no canonical definition to state claims against.
-/

/-! ## A326010.P8900037623654512810

`round(sqrt(A105157(n!)))-1`
-/

namespace A326010.P8900037623654512810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A105157 (Nat.factorial n) : ℝ)) - 1

end

end A326010.P8900037623654512810

/-!
# A326011: a(n) = (n+1) * (2^n + 1)^n.

The programs for A326011, the canonical program `A326011.P3377243651255879302` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326011 has offset 0).

The definition of A326011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2^n+1)^n` (program `A326011.P3377243651255879302`, by `A326011.P3377243651255879302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326011.P3377243651255879302

`(n+1)*(2^n+1)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326011

/-- `(n+1)*(2^n+1)^n` -/
def P3377243651255879302.Spec : Prop :=
  ∀ n, (P3377243651255879302.a n : ℤ) = A326011 n

theorem P3377243651255879302.correct : P3377243651255879302.Spec := by
  intro n
  simp only [A326011]

end A326011

/-! ## A326011.P4938174347994638441

`abs((n+1)*(-A000051(n))^n)`
-/

namespace A326011.P4938174347994638441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (-A000051 n) ^ n|

end

end A326011.P4938174347994638441

namespace A326011

/-- `abs((n+1)*(-A000051(n))^n)` -/
def P4938174347994638441.Spec : Prop :=
  ∀ n, P4938174347994638441.a n = A326011 n

end A326011

/-! ## A326011.P7705639075613614135

`A136516(n)+n*A136516(n)`
-/

namespace A326011.P7705639075613614135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136516 n + (n : ℤ) * A136516 n

end

end A326011.P7705639075613614135

namespace A326011

/-- `A136516(n)+n*A136516(n)` -/
def P7705639075613614135.Spec : Prop :=
  ∀ n, P7705639075613614135.a n = A326011 n

theorem P7705639075613614135.correct : P7705639075613614135.Spec := by
  intro n
  simp only [A326011, Nat.add_sub_cancel, A326011.P7705639075613614135.a, A326011.P3377243651255879302.a, A136516, A136516.P4207146833680102269.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326011

/-! ## A326011.P17939348746476484183

`abs((A104258(A000051(n))-1)*A000027(n+1))`
-/

namespace A326011.P17939348746476484183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A104258 (A000051 n).toNat - 1) * A000027 (n + 1)|

end

end A326011.P17939348746476484183

namespace A326011

/-- `abs((A104258(A000051(n))-1)*A000027(n+1))` -/
def P17939348746476484183.Spec : Prop :=
  ∀ n, P17939348746476484183.a n = A326011 n

end A326011

/-! ## A326011.P10858621660906466532

`A136516(n)*A326013(n)/A202989(n)`
-/

namespace A326011.P10858621660906466532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136516 n * A326013 n : ℚ) / (A202989 n : ℚ)

end

end A326011.P10858621660906466532

namespace A326011

/-- `A136516(n)*A326013(n)/A202989(n)` -/
def P10858621660906466532.Spec : Prop :=
  ∀ n, P10858621660906466532.a n = (A326011 n : ℚ)

end A326011

/-!
# A326012: a(n) = (n+1)*(n+2)/2 * (2^n + 1)^n.

The programs for A326012, the canonical program `A326012.P12729394496389608317` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326012 has offset 0).

The definition of A326012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A326012.P12729394496389608317

`(n+1)*(n+2)/2*(2^n+1)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326012

/-- `(n+1)*(n+2)/2*(2^n+1)^n` -/
def P12729394496389608317.Spec : Prop :=
  ∀ n, P12729394496389608317.a n = (A326012 n : ℚ)

end A326012

/-! ## A326012.P7756472788449492440

`(n+2)*A326011(n)/2`
-/

namespace A326012.P7756472788449492440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A326011 n : ℚ) / 2

end

end A326012.P7756472788449492440

namespace A326012

/-- `(n+2)*A326011(n)/2` -/
def P7756472788449492440.Spec : Prop :=
  ∀ n, P7756472788449492440.a n = (A326012 n : ℚ)

end A326012

/-! ## A326012.P15926887130981625930

`A002378(n+1)*A136516(n)/2`
-/

namespace A326012.P15926887130981625930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) * A136516 n : ℚ) / 2

end

end A326012.P15926887130981625930

namespace A326012

/-- `A002378(n+1)*A136516(n)/2` -/
def P15926887130981625930.Spec : Prop :=
  ∀ n, P15926887130981625930.a n = (A326012 n : ℚ)

end A326012

/-!
# A326013: a(n) = (n+1) * (3^n + 1)^n.

The programs for A326013, the canonical program `A326013.P17174483589274862197` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326013 has offset 0).

The definition of A326013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(3^n+1)^n` (program `A326013.P17174483589274862197`, by `A326013.P17174483589274862197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A326013.P17174483589274862197

`(n+1)*(3^n+1)^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A326013

/-- `(n+1)*(3^n+1)^n` -/
def P17174483589274862197.Spec : Prop :=
  ∀ n, (P17174483589274862197.a n : ℤ) = A326013 n

theorem P17174483589274862197.correct : P17174483589274862197.Spec := by
  intro n
  simp only [A326013]

end A326013

/-! ## A326013.P13828039377897986706

`lcm(n+1, (n+1)*A202989(n))`
-/

namespace A326013.P13828039377897986706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) ((n + 1 : ℤ) * A202989 n)

end

end A326013.P13828039377897986706

namespace A326013

/-- `lcm(n+1, (n+1)*A202989(n))` -/
def P13828039377897986706.Spec : Prop :=
  ∀ n, (P13828039377897986706.a n : ℤ) = A326013 n

end A326013

/-!
# A326014: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} (exp(n*x) - A(x))^n * x^n/n!.

The programs for A326014, there is no canonical definition to state claims against.
-/

/-! ## A326014.P6949215804739223237

`A114499(A078481(n))`
-/

namespace A326014.P6949215804739223237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114499 (A078481 n).toNat

end

end A326014.P6949215804739223237

/-! ## A326014.P10124970409333220134

`A194816(A357024(n)+1)`
-/

namespace A326014.P10124970409333220134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194816 (A357024 n + 1).toNat

end

end A326014.P10124970409333220134

/-!
# A326015: Number of strict knapsack partitions of n such that no superset with the same maximum is knapsack.

The programs for A326015, there is no canonical definition to state claims against.
-/

/-! ## A326015.P6702976173058060209

`A264620(A028289(n)+A008795(n))`
-/

namespace A326015.P6702976173058060209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A028289 n + A008795 n).toNat

end

end A326015.P6702976173058060209

/-! ## A326015.P2658189628607233898

`A264620(A307872(n+3)+A008795(n))`
-/

namespace A326015.P2658189628607233898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A307872 (n + 3) + A008795 n).toNat

end

end A326015.P2658189628607233898

/-! ## A326015.P2723992664645517351

`A264620(A029046(2*n)+A008795(n))`
-/

namespace A326015.P2723992664645517351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A029046 (2 * n) + A008795 n).toNat

end

end A326015.P2723992664645517351

/-! ## A326015.P2530163960527211165

`A264620(A029265(4*n)+A008795(n))`
-/

namespace A326015.P2530163960527211165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A029265 (4 * n) + A008795 n).toNat

end

end A326015.P2530163960527211165

/-! ## A326015.P15434815365641325229

`A264620(A008795(n)+∑[A307018(n+3)])`
-/

namespace A326015.P15434815365641325229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (A008795 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326015.P15434815365641325229

/-!
# A326016: Number of knapsack partitions of n such that no addition of one part up to the maximum is knapsack.

The programs for A326016, there is no canonical definition to state claims against.
-/

/-! ## A326016.P7890970041257673769

`A326033(n+1)-A326033(A032742(n+1))`
-/

namespace A326016.P7890970041257673769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1) - A326033 (A032742 (n + 1)).toNat

end

end A326016.P7890970041257673769

/-! ## A326016.P10199104447784240196

`A326033(n+1)-A326033((n+1)²/A285109(n+1))`
-/

namespace A326016.P10199104447784240196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1) - A326033 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A285109 (n + 1) : ℚ))).toNat

end

end A326016.P10199104447784240196

/-! ## A326016.P8464084444032030962

`A326033(n+1)-A326033((n+1)/sqrt(A088377(n+1)))`
-/

namespace A326016.P8464084444032030962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1) - A326033 (SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.sqrt (A088377 (n + 1) : ℝ))).toNat

end

end A326016.P8464084444032030962

/-! ## A326016.P13290870574236107028

`A326033(n+1)-A326033(ceil((n+1)/A074828(n+1)))`
-/

namespace A326016.P13290870574236107028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1) - A326033 ⌈(n + 1 : ℚ) / (A074828 (n + 1) : ℚ)⌉.toNat

end

end A326016.P13290870574236107028

/-! ## A326016.P2609655886851624629

`A326033(n+1)-A326033(A000203(n+1)-A326061(n+1))`
-/

namespace A326016.P2609655886851624629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (n + 1) - A326033 (A000203 (n + 1) - A326061 (n + 1)).toNat

end

end A326016.P2609655886851624629

/-!
# A326017: Triangle read by rows where T(n,k) is the number of knapsack partitions of n with maximum k.

The programs for A326017, there is no canonical definition to state claims against.
-/

/-! ## A326017.P9409755572105555977

`gcd(A000196(A049430(n+1)), A072233(n))`
-/

namespace A326017.P9409755572105555977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (A049430 (n + 1)).toNat) (A072233 n)

end

end A326017.P9409755572105555977

/-! ## A326017.P7172807984967353480

`gcd(A055090(A277031(n)), A072233(n))`
-/

namespace A326017.P7172807984967353480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055090 (A277031 n).toNat) (A072233 n)

end

end A326017.P7172807984967353480

/-! ## A326017.P15950128471690468924

`gcd(A055640(A277031(n)), A319453(n))`
-/

namespace A326017.P15950128471690468924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055640 (A277031 n).toNat) (A319453 n)

end

end A326017.P15950128471690468924

/-! ## A326017.P9910959074181000541

`A134451(A238010(n)+A008436(n))`
-/

namespace A326017.P9910959074181000541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A238010 n + A008436 n).toNat

end

end A326017.P9910959074181000541

/-! ## A326017.P2303159757510893379

`A134451(A238010(n)^A134451(n))`
-/

namespace A326017.P2303159757510893379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (SequenceMachineLib.roundAway ((A238010 n : ℚ) ^ (A134451 n : ℤ))).toNat

end

end A326017.P2303159757510893379

/-!
# A326019: Heinz numbers of non-knapsack partitions such that every non-singleton submultiset has a different sum.

The programs for A326019, there is no canonical definition to state claims against.
-/

/-! ## A326019.P6434484788489641397

`∩[A325802(n+1), A344415(n+1)]`
-/

namespace A326019.P6434484788489641397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344415 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326019.P6434484788489641397

/-!
# A326020: Number of complete subsets of {1..n}.

The programs for A326020, there is no canonical definition to state claims against.
-/

/-! ## A326020.P476978889409585706

`A326021(n)+a(n-1)` with `a(0)=1`
-/

namespace A326020.P476978889409585706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A326021 n + a (n - 1)

end

end A326020.P476978889409585706

/-! ## A326020.P5862906832044833412

`∑[A326021(abs(2-n)+2)]-1`
-/

namespace A326020.P5862906832044833412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A326020.P5862906832044833412

/-! ## A326020.P14026257805612330127

`∑[A326021(floor(n*n/(n+1))+1)]`
-/

namespace A326020.P14026257805612330127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (⌊(n : ℚ) * ((n : ℚ) / (n + 1 : ℚ))⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326020.P14026257805612330127

/-! ## A326020.P14373879568567078338

`A326021(n+1)+∑[A188431(n)]-A188431(n)`
-/

namespace A326020.P14373879568567078338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j - A188431 n)

end

end A326020.P14373879568567078338

/-! ## A326020.P1977412672066716406

`Δ[A326021(n+1)]+∑[A188431(n)]`
-/

namespace A326020.P1977412672066716406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A326020.P1977412672066716406

/-! ## A326020.P696351446501330598

`∑[A326021(n^A178334(n))]^A178334(n)`
-/

namespace A326020.P696351446501330598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326021 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A178334 n : ℤ)

end

end A326020.P696351446501330598

/-!
# A326021: Number of complete subsets of {1..n} with maximum n.

The programs for A326021, there is no canonical definition to state claims against.
-/

/-! ## A326021.P9945469721663852237

`Δ[A326020(n)]`
-/

namespace A326021.P9945469721663852237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A326021.P9945469721663852237

/-! ## A326021.P3515073627260595826

`A326020(n+1)-A326020(n)`
-/

namespace A326021.P3515073627260595826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326020 (n + 1) - A326020 n

end

end A326021.P3515073627260595826

/-! ## A326021.P1510255617293472287

`record[A326020(A123108(n))]-A326020(n)`
-/

namespace A326021.P1510255617293472287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326020 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A326020 n

end

end A326021.P1510255617293472287

/-! ## A326021.P3378831751593195587

`A188431(n)-(∑[A188431(n)]-A326020(n))`
-/

namespace A326021.P3378831751593195587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 n - (∑ j ∈ Finset.range (n + 1), f1 j - A326020 n)

end

end A326021.P3378831751593195587

/-! ## A326021.P6770369284722174472

`A028310(A326020(n+1)%A326020(n))`
-/

namespace A326021.P6770369284722174472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A326020 (n + 1)) (A326020 n)).toNat

end

end A326021.P6770369284722174472

/-!
# A326023: Number of subsets of {1..n} containing all of their integer quotients.

The programs for A326023, there is no canonical definition to state claims against.
-/

/-! ## A326023.P3873593375062843829

`floor(A326079(n)/2)+1`
-/

namespace A326023.P3873593375062843829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326079 n : ℚ) / 2⌋ + 1

end

end A326023.P3873593375062843829

/-! ## A326023.P196073098573739983

`A326078(n)+ceil(n/98)`
-/

namespace A326023.P196073098573739983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326078 n + ⌈(n : ℚ) / 98⌉

end

end A326023.P196073098573739983

/-! ## A326023.P14723915734663838598

`A326079(n)+1-A326078(n)`
-/

namespace A326023.P14723915734663838598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326079 n + 1 - A326078 n

end

end A326023.P14723915734663838598

/-! ## A326023.P3826517735949622272

`A057427(n)*A326078(n)+1`
-/

namespace A326023.P3826517735949622272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A326078 n + 1

end

end A326023.P3826517735949622272

/-!
# A326024: Number of subsets of {1..n} containing no sums or products of distinct elements.

The programs for A326024, there is no canonical definition to state claims against.
-/

/-! ## A326024.P9340183627426710237

`∑[A247973(Δ[A005579(n+2)])]`
-/

namespace A326024.P9340183627426710237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005579 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326024.P9340183627426710237

/-! ## A326024.P3356588699857249045

`∑[A247973(Δ[A256969(n+2)])]`
-/

namespace A326024.P3356588699857249045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256969 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326024.P3356588699857249045

/-! ## A326024.P11969954577424731822

`A001595(n)+A000035(A188495(n))`
-/

namespace A326024.P11969954577424731822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + A000035 (A188495 n).toNat

end

end A326024.P11969954577424731822

/-! ## A326024.P15729411924684439226

`A128588(n+1)-A080886(A000108(n))`
-/

namespace A326024.P15729411924684439226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1) - A080886 (A000108 n).toNat

end

end A326024.P15729411924684439226

/-! ## A326024.P3316180100943813120

`A071860(A003986(n)+A000045(2*n+1))`
-/

namespace A326024.P3316180100943813120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071860 (A003986 n + A000045 (2 * n + 1)).toNat

end

end A326024.P3316180100943813120

/-!
# A326026: Number of non-isomorphic multiset partitions of weight n where each part has a different length.

The programs for A326026, there is no canonical definition to state claims against.
-/

/-! ## A326026.P5971993678301396171

`A210449(A337762(n)+1)`
-/

namespace A326026.P5971993678301396171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210449 (A337762 n + 1).toNat

end

end A326026.P5971993678301396171

/-! ## A326026.P12279819178385365020

`A005496(∑[∑[A055672(n)]])`
-/

namespace A326026.P12279819178385365020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326026.P12279819178385365020

/-! ## A326026.P15624344004250885550

`A023190(A004077(n+1)/2)`
-/

namespace A326026.P15624344004250885550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (SequenceMachineLib.roundAway ((A004077 (n + 1) : ℚ) / 2)).toNat

end

end A326026.P15624344004250885550

/-!
# A326027: Number of nonempty subsets of {1..n} whose geometric mean is an integer.

The programs for A326027, there is no canonical definition to state claims against.
-/

/-! ## A326027.P17964905538831768763

`A357413(n)+A357414(n)`
-/

namespace A326027.P17964905538831768763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357413 n + A357414 n

end

end A326027.P17964905538831768763

/-! ## A326027.P17750259779290755931

`A082553(n)+a(n-1)` with `a(0)=0`
-/

namespace A326027.P17750259779290755931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A082553 n + a (n - 1)

end

end A326027.P17750259779290755931

/-! ## A326027.P3469328152394774687

`∑[A082553(C(2, n)+n)]-1`
-/

namespace A326027.P3469328152394774687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082553 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A326027.P3469328152394774687

/-! ## A326027.P11627999222808869436

`∑[A082553(floor(acot(n)+n))]-1`
-/

namespace A326027.P11627999222808869436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082553 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A326027.P11627999222808869436

/-! ## A326027.P311922865091721910

`∑[A082553(abs(1-n)+1)]-1`
-/

namespace A326027.P311922865091721910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082553 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A326027.P311922865091721910

/-! ## A326027.P11995982415262159488

`∑[A082553(gcd(n, n*a(n-1)))]` with `a(0)=0`
-/

namespace A326027.P11995982415262159488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A082553 (Int.gcd (n : ℤ) ((n : ℤ) * f1 (n - 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326027.P11995982415262159488

/-! ## A326027.P16529161431089709687

`abs(∑[A082553(A233583(n+1))]-1)`
-/

namespace A326027.P16529161431089709687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082553 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A326027.P16529161431089709687

/-! ## A326027.P8320161415526040411

`∑[A057427(n)*A082553(A028310(n))]`
-/

namespace A326027.P8320161415526040411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A082553 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326027.P8320161415526040411

/-! ## A326027.P7853554366657896163

`∑[A082553(A028310(n))%A000070(n)]`
-/

namespace A326027.P7853554366657896163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082553 (A028310 n).toNat) (A000070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326027.P7853554366657896163

/-! ## A326027.P2796492588732876075

`∑[A000040(n+1)%2*A082553(A028310(n))]`
-/

namespace A326027.P2796492588732876075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A082553 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326027.P2796492588732876075

/-!
# A326028: Number of factorizations of n into factors > 1 with integer geometric mean.

The programs for A326028, there is no canonical definition to state claims against.
-/

/-! ## A326028.P10853813255473293515

`A080256(A243057(n+1))^A259362(n+1)`
-/

namespace A326028.P10853813255473293515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080256 (A243057 (n + 1)).toNat : ℚ) ^ (A259362 (n + 1) : ℤ)

end

end A326028.P10853813255473293515

/-! ## A326028.P14310602112973498168

`A326647(A348249(n+1))`
-/

namespace A326028.P14310602112973498168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326647 (A348249 (n + 1)).toNat

end

end A326028.P14310602112973498168

/-! ## A326028.P7623367526255050477

`A335428(A393923(n+1))`
-/

namespace A326028.P7623367526255050477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335428 (A393923 (n + 1)).toNat

end

end A326028.P7623367526255050477

/-! ## A326028.P3901609083553248212

`and(A126273(n), A326647(n+1))`
-/

namespace A326028.P3901609083553248212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126273 n) (A326647 (n + 1))

end

end A326028.P3901609083553248212

/-! ## A326028.P5154780501675661714

`A316782(n+1)%A179149(n+1)`
-/

namespace A326028.P5154780501675661714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316782 (n + 1)) (A179149 (n + 1))

end

end A326028.P5154780501675661714

/-!
# A326030: Number of antichains of subsets of {1..n} with different edge-sums.

The programs for A326030, there is no canonical definition to state claims against.
-/

/-! ## A326030.P15324667263393623923

`A363949(n!)+n`
-/

namespace A326030.P15324667263393623923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363949 (Nat.factorial n) + (n : ℤ)

end

end A326030.P15324667263393623923

/-!
# A326031: Weight of the set-system with BII-number n.

The programs for A326031, there is no canonical definition to state claims against.
-/

/-! ## A326031.P8528312717074990527

`∑{digits}[A063013(n), A000120(#)]`
-/

namespace A326031.P8528312717074990527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A326031.P8528312717074990527

/-! ## A326031.P8291053662725698550

`∑{p}[A019565(n), A359233(#)]`
-/

namespace A326031.P8291053662725698550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A359233 p

end

end A326031.P8291053662725698550

/-! ## A326031.P10203030538760807032

`A109129(A121663(n))`
-/

namespace A326031.P10203030538760807032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (A121663 n).toNat

end

end A326031.P10203030538760807032

/-! ## A326031.P5667150996005582648

`A336921(A019565(n))+A000120(n)`
-/

namespace A326031.P5667150996005582648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A019565 n).toNat + A000120 n

end

end A326031.P5667150996005582648

/-! ## A326031.P12244348780435642340

`A336921(A019565(n))+val(A246037(n), 2)`
-/

namespace A326031.P12244348780435642340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A019565 n).toNat + (SequenceMachineLib.valuation (A246037 n).toNat 2 : ℤ)

end

end A326031.P12244348780435642340

/-! ## A326031.P3913646569712135640

`A331410(A019565(n))+A059841(3*(n+1))`
-/

namespace A326031.P3913646569712135640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (A019565 n).toNat + A059841 (3 * (n + 1))

end

end A326031.P3913646569712135640

/-! ## A326031.P4532670525387410787

`A106486(n)-A059906(A059906(n))`
-/

namespace A326031.P4532670525387410787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 n - A059906 (A059906 n).toNat

end

end A326031.P4532670525387410787

/-! ## A326031.P17285149196227065750

`and(A033922(2*n), A268099(2*n))`
-/

namespace A326031.P17285149196227065750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033922 (2 * n)) (A268099 (2 * n))

end

end A326031.P17285149196227065750

/-! ## A326031.P10255626789281538585

`A048675(A368109(n))+A000120(n)`
-/

namespace A326031.P10255626789281538585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A368109 n).toNat + A000120 n

end

end A326031.P10255626789281538585

/-! ## A326031.P10796648465464320843

`A339970(A126007(n))`
-/

namespace A326031.P10796648465464320843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339970 (A126007 n).toNat

end

end A326031.P10796648465464320843

/-!
# A326032: a(2^x + ... + 2^z) = w(x) + ... + w(z), where x...z are distinct nonnegative integers and w = A000120.

The programs for A326032, there is no canonical definition to state claims against.
-/

/-! ## A326032.P3923379165919953310

`A326031(floor(n/2))`
-/

namespace A326032.P3923379165919953310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 ⌊(n : ℚ) / 2⌋.toNat

end

end A326032.P3923379165919953310

/-! ## A326032.P381851017039000223

`A033922(or(1, n))-1`
-/

namespace A326032.P381851017039000223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 (Nat.lor 1 n) - 1

end

end A326032.P381851017039000223

/-! ## A326032.P4252302513592301085

`A033922(n)-(n%2)^n`
-/

namespace A326032.P4252302513592301085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 n - (((n % 2) ^ n : ℕ) : ℤ)

end

end A326032.P4252302513592301085

/-! ## A326032.P4324918617877194544

`dr(A326031(n-∑[and(1, n)]))`
-/

namespace A326032.P4324918617877194544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326031 (n - ∑ j ∈ Finset.range (n + 1), f1 j))

end

end A326032.P4324918617877194544

/-! ## A326032.P8766068928228559164

`dr(A326031((or(1, n)-1)/2))`
-/

namespace A326032.P8766068928228559164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326031 (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2)).toNat)

end

end A326032.P8766068928228559164

/-! ## A326032.P1950699547699923897

`dr(A326031(xor(1, or(1, n))/2))`
-/

namespace A326032.P1950699547699923897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A326031 (SequenceMachineLib.roundAway ((Nat.xor 1 (Nat.lor 1 n) : ℚ) / 2)).toNat)

end

end A326032.P1950699547699923897

/-! ## A326032.P10357673221386282502

`A326031(∑[val(∏{p}[n, #], 2)])%9`
-/

namespace A326032.P10357673221386282502
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326031 (∑ j ∈ Finset.range (n + 1), f1 j)) 9

end

end A326032.P10357673221386282502

/-! ## A326032.P12747969570950248522

`A326031(∑[∑{p}[n, C(2, #)]])%9`
-/

namespace A326032.P12747969570950248522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326031 (∑ j ∈ Finset.range (n + 1), f1 j)) 9

end

end A326032.P12747969570950248522

/-! ## A326032.P13648175750080914570

`A033922(n-and(1, n)+1)-1`
-/

namespace A326032.P13648175750080914570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033922 ((n : ℤ) - (Nat.land 1 n : ℤ) + 1).toNat - 1

end

end A326032.P13648175750080914570

/-! ## A326032.P9429058395301310780

`ceil(n/98)*A326031(ceil(abs((1-n)/2)))`
-/

namespace A326032.P9429058395301310780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉ * A326031 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat

end

end A326032.P9429058395301310780

/-!
# A326033: Number of knapsack partitions of n such that no addition of one part equal to an existing part is knapsack.

The programs for A326033, there is no canonical definition to state claims against.
-/

/-! ## A326033.P14247053732010389541

`∑{d}[n+1, A326016(#)]`
-/

namespace A326033.P14247053732010389541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326016 d

end

end A326033.P14247053732010389541

/-! ## A326033.P16292514369798138524

`A326016(A032742(n+1))+A326016(n+1)`
-/

namespace A326033.P16292514369798138524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A032742 (n + 1)).toNat + A326016 (n + 1)

end

end A326033.P16292514369798138524

/-! ## A326033.P13767247910127083420

`A326016(A063928(n+1))+A326016(n+1)`
-/

namespace A326033.P13767247910127083420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A063928 (n + 1)).toNat + A326016 (n + 1)

end

end A326033.P13767247910127083420

/-! ## A326033.P16704616927204580342

`A326016(A117358(4*(n+1)))+A326016(n+1)`
-/

namespace A326033.P16704616927204580342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A117358 (4 * (n + 1))).toNat + A326016 (n + 1)

end

end A326033.P16704616927204580342

/-! ## A326033.P6143895171019321420

`A326016((n+1)/A020639(n+1))+A326016(n+1)`
-/

namespace A326033.P6143895171019321420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat + A326016 (n + 1)

end

end A326033.P6143895171019321420

/-!
# A326034: Number of knapsack partitions of n with largest part 3.

The programs for A326034, there is no canonical definition to state claims against.
-/

/-! ## A326034.P3067456621529795563

`A326017(A158799(n)+∑[n])`
-/

namespace A326034.P3067456621529795563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326017 (A158799 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A326034.P3067456621529795563

/-!
# A326035: Number of uniform knapsack partitions of n.

The programs for A326035, there is no canonical definition to state claims against.
-/

/-! ## A326035.P2766801374822901959

`A353557(A270613(2*n+5))+A008642(n)`
-/

namespace A326035.P2766801374822901959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A270613 (2 * n + 5)).toNat + A008642 n

end

end A326035.P2766801374822901959

/-!
# A326037: Heinz numbers of uniform perfect integer partitions.

The programs for A326037, there is no canonical definition to state claims against.
-/

/-! ## A326037.P16625715075988453078

`record[A062759(A325780(n+1))]`
-/

namespace A326037.P16625715075988453078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A325780 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326037.P16625715075988453078

/-! ## A326037.P9005661013355509049

`filter[A325780(n+1), A384667(#)]`
-/

namespace A326037.P9005661013355509049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A326037.P9005661013355509049

/-! ## A326037.P15596352312454722251

`∩[A072774(n+1), A325780(n+1)]`
-/

namespace A326037.P15596352312454722251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326037.P15596352312454722251

/-! ## A326037.P7290105436623794933

`∩[A073935(n+1), A317717(n+1)]`
-/

namespace A326037.P7290105436623794933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326037.P7290105436623794933

/-! ## A326037.P7943029764063632400

`∩[A073935(n+1), A360247(n+1)]`
-/

namespace A326037.P7943029764063632400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A326037.P7943029764063632400

/-!
# A326038: Square root of the largest square dividing the sum of divisors of n: a(n) = A000188(sigma(n)).

The programs for A326038, the canonical program `A326038.P7461773891542618718` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326038 has offset 1).

The definition of A326038 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326038.P9793513958465224963

`A000196(A326039(n+1))`
-/

namespace A326038.P9793513958465224963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A326039 (n + 1)).toNat

end

end A326038.P9793513958465224963

namespace A326038

/-- `A000196(A326039(n+1))` -/
def P9793513958465224963.Spec : Prop :=
  ∀ n, P9793513958465224963.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P7461773891542618718

`A000188(A000203(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A326038

/-- `A000188(A000203(n+1))` -/
def P7461773891542618718.Spec : Prop :=
  ∀ n, P7461773891542618718.a n = A326038 (n + 1)

theorem P7461773891542618718.correct : P7461773891542618718.Spec := by
  intro n
  simp only [A326038, Nat.add_sub_cancel]

end A326038

/-! ## A326038.P15224151064800365952

`sqrt(A008833(∑{d}[n+1, #]))`
-/

namespace A326038.P15224151064800365952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (∑ d ∈ Nat.divisors (f1 n), d) : ℝ)

end

end A326038.P15224151064800365952

namespace A326038

/-- `sqrt(A008833(∑{d}[n+1, #]))` -/
def P15224151064800365952.Spec : Prop :=
  ∀ n, P15224151064800365952.a n = (A326038 (n + 1) : ℝ)

end A326038

/-! ## A326038.P10912489743123221333

`sqrt(1-A326044(n+1)+n)`
-/

namespace A326038.P10912489743123221333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 - A326044 (n + 1) + (n : ℤ) : ℝ)

end

end A326038.P10912489743123221333

namespace A326038

/-- `sqrt(1-A326044(n+1)+n)` -/
def P10912489743123221333.Spec : Prop :=
  ∀ n, P10912489743123221333.a n = (A326038 (n + 1) : ℝ)

end A326038

/-! ## A326038.P1212086722632904376

`A019554(A387156(n+1))`
-/

namespace A326038.P1212086722632904376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A387156 (n + 1)).toNat

end

end A326038.P1212086722632904376

namespace A326038

/-- `A019554(A387156(n+1))` -/
def P1212086722632904376.Spec : Prop :=
  ∀ n, P1212086722632904376.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P9519519354848329690

`sqrt(A000203(n+1)-A326040(n+1))`
-/

namespace A326038.P9519519354848329690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000203 (n + 1) - A326040 (n + 1) : ℝ)

end

end A326038.P9519519354848329690

namespace A326038

/-- `sqrt(A000203(n+1)-A326040(n+1))` -/
def P9519519354848329690.Spec : Prop :=
  ∀ n, P9519519354848329690.a n = (A326038 (n + 1) : ℝ)

end A326038

/-! ## A326038.P6817233884420779935

`A162401(1-A326044(n+1)+n)`
-/

namespace A326038.P6817233884420779935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162401 (1 - A326044 (n + 1) + (n : ℤ)).toNat

end

end A326038.P6817233884420779935

namespace A326038

/-- `A162401(1-A326044(n+1)+n)` -/
def P6817233884420779935.Spec : Prop :=
  ∀ n, P6817233884420779935.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P10432186933167644167

`A000188(1-A326044(n+1)+n)`
-/

namespace A326038.P10432186933167644167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (1 - A326044 (n + 1) + (n : ℤ)).toNat

end

end A326038.P10432186933167644167

namespace A326038

/-- `A000188(1-A326044(n+1)+n)` -/
def P10432186933167644167.Spec : Prop :=
  ∀ n, P10432186933167644167.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P1513312100443699715

`A000196(n+1-A326044(n+1))`
-/

namespace A326038.P1513312100443699715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n + 1 : ℤ) - A326044 (n + 1)).toNat

end

end A326038.P1513312100443699715

namespace A326038

/-- `A000196(n+1-A326044(n+1))` -/
def P1513312100443699715.Spec : Prop :=
  ∀ n, P1513312100443699715.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P10307801602116858643

`A033676(A326039(2*n+1-n))`
-/

namespace A326038.P10307801602116858643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A326039 (2 * n + 1 - n)).toNat

end

end A326038.P10307801602116858643

namespace A326038

/-- `A033676(A326039(2*n+1-n))` -/
def P10307801602116858643.Spec : Prop :=
  ∀ n, P10307801602116858643.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P14274117249660424760

`A000196(A000203(n+1)-A326040(n+1))`
-/

namespace A326038.P14274117249660424760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000203 (n + 1) - A326040 (n + 1)).toNat

end

end A326038.P14274117249660424760

namespace A326038

/-- `A000196(A000203(n+1)-A326040(n+1))` -/
def P14274117249660424760.Spec : Prop :=
  ∀ n, P14274117249660424760.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P13589701526906276456

`A000188(A387726(n+1))`
-/

namespace A326038.P13589701526906276456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A387726 (n + 1)).toNat

end

end A326038.P13589701526906276456

namespace A326038

/-- `A000188(A387726(n+1))` -/
def P13589701526906276456.Spec : Prop :=
  ∀ n, P13589701526906276456.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P18292086930941144401

`A000188(∑{d}[n+1, #])`
-/

namespace A326038.P18292086930941144401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A326038.P18292086930941144401

namespace A326038

/-- `A000188(∑{d}[n+1, #])` -/
def P18292086930941144401.Spec : Prop :=
  ∀ n, P18292086930941144401.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P10682641951632118492

`A337101(A074400(n+1))`
-/

namespace A326038.P10682641951632118492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (A074400 (n + 1)).toNat

end

end A326038.P10682641951632118492

namespace A326038

/-- `A337101(A074400(n+1))` -/
def P10682641951632118492.Spec : Prop :=
  ∀ n, P10682641951632118492.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P8842564373863401698

`A000188(A088580(n+1)-1)`
-/

namespace A326038.P8842564373863401698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A088580 (n + 1) - 1).toNat

end

end A326038.P8842564373863401698

namespace A326038

/-- `A000188(A088580(n+1)-1)` -/
def P8842564373863401698.Spec : Prop :=
  ∀ n, P8842564373863401698.a n = A326038 (n + 1)

theorem P8842564373863401698.correct : P8842564373863401698.Spec := by
  intro n
  simp only [A326038, Nat.add_sub_cancel, A326038.P8842564373863401698.a, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326038

/-! ## A326038.P1138474228835283357

`A337101(2*A000203(n+1))`
-/

namespace A326038.P1138474228835283357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A000203 (n + 1)).toNat

end

end A326038.P1138474228835283357

namespace A326038

/-- `A337101(2*A000203(n+1))` -/
def P1138474228835283357.Spec : Prop :=
  ∀ n, P1138474228835283357.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P804280252962295748

`A000188(A146076(2*(n+1))/2)`
-/

namespace A326038.P804280252962295748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A146076 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A326038.P804280252962295748

namespace A326038

/-- `A000188(A146076(2*(n+1))/2)` -/
def P804280252962295748.Spec : Prop :=
  ∀ n, P804280252962295748.a n = A326038 (n + 1)

end A326038

/-! ## A326038.P7703746341752806685

`A000188(A001065(n+1)+1+n)`
-/

namespace A326038.P7703746341752806685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A326038.P7703746341752806685

namespace A326038

/-- `A000188(A001065(n+1)+1+n)` -/
def P7703746341752806685.Spec : Prop :=
  ∀ n, P7703746341752806685.a n = A326038 (n + 1)

theorem P7703746341752806685.correct : P7703746341752806685.Spec := by
  intro n
  simp only [A326038, Nat.add_sub_cancel, A326038.P7703746341752806685.a, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326038

/-! ## A326038.P5959384704301716948

`A000188(A155085(n+1)-(n+1))`
-/

namespace A326038.P5959384704301716948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A326038.P5959384704301716948

namespace A326038

/-- `A000188(A155085(n+1)-(n+1))` -/
def P5959384704301716948.Spec : Prop :=
  ∀ n, P5959384704301716948.a n = A326038 (n + 1)

theorem P5959384704301716948.correct : P5959384704301716948.Spec := by
  intro n
  simp only [A326038, Nat.add_sub_cancel, A326038.P5959384704301716948.a, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P3282672389110014595.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326038

/-! ## A326038.P5819520127492316102

`A000188(A064987(n+1)/(n+1))`
-/

namespace A326038.P5819520127492316102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A326038.P5819520127492316102

namespace A326038

/-- `A000188(A064987(n+1)/(n+1))` -/
def P5819520127492316102.Spec : Prop :=
  ∀ n, P5819520127492316102.a n = A326038 (n + 1)

end A326038

/-!
# A326039: Largest square dividing the sum of divisors of n: a(n) = A008833(sigma(n)).

The programs for A326039, the canonical program `A326039.P9256592062457246146` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326039 has offset 1).

The definition of A326039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326038, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326039.P9256592062457246146

`A326038(n+1)²`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A326039

/-- `A326038(n+1)²` -/
def P9256592062457246146.Spec : Prop :=
  ∀ n, P9256592062457246146.a n = A326039 (n + 1)

theorem P9256592062457246146.correct : P9256592062457246146.Spec := by
  intro n
  simp only [A326039, Nat.add_sub_cancel]

end A326039

/-! ## A326039.P7430383325439106472

`A008833(A000203(n+1))`
-/

namespace A326039.P7430383325439106472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000203 (n + 1)).toNat

end

end A326039.P7430383325439106472

namespace A326039

/-- `A008833(A000203(n+1))` -/
def P7430383325439106472.Spec : Prop :=
  ∀ n, P7430383325439106472.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P10377115467256657507

`A000203(n+1)-A326040(n+1)`
-/

namespace A326039.P10377115467256657507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326040 (n + 1)

end

end A326039.P10377115467256657507

namespace A326039

/-- `A000203(n+1)-A326040(n+1)` -/
def P10377115467256657507.Spec : Prop :=
  ∀ n, P10377115467256657507.a n = A326039 (n + 1)

theorem P10377115467256657507.correct : P10377115467256657507.Spec := by
  intro n
  simp only [A326039, Nat.add_sub_cancel, A326039.P10377115467256657507.a, A326039.P9256592062457246146.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326038, A326038.P7461773891542618718.a, A326040, A326040.P15308237361060723767.a, A000188, A000188.P7486858720566838181.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326039

/-! ## A326039.P13079842680934034095

`A008833(∑{d}[n+1, #])`
-/

namespace A326039.P13079842680934034095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A326039.P13079842680934034095

namespace A326039

/-- `A008833(∑{d}[n+1, #])` -/
def P13079842680934034095.Spec : Prop :=
  ∀ n, P13079842680934034095.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P10357464783514009016

`1-A326044(n+1)+n`
-/

namespace A326039.P10357464783514009016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326044 (n + 1) + (n : ℤ)

end

end A326039.P10357464783514009016

namespace A326039

/-- `1-A326044(n+1)+n` -/
def P10357464783514009016.Spec : Prop :=
  ∀ n, P10357464783514009016.a n = A326039 (n + 1)

theorem P10357464783514009016.correct : P10357464783514009016.Spec := by
  intro n
  simp only [A326039, Nat.add_sub_cancel, A326039.P10357464783514009016.a, A326039.P9256592062457246146.a, A326038, A326038.P7461773891542618718.a, A326044, A326044.P15136315853744446267.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A326045, A326045.P9050702323358522594.a, A008833, A008833.P18388074464065390543.a, A033880, A033880.P6005875780263802708.a, A326040, A326040.P15308237361060723767.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326039

/-! ## A326039.P16124269311581139020

`A008833(Δ[A160664(n)])`
-/

namespace A326039.P16124269311581139020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (f1 (n + 1) - f1 n).toNat

end

end A326039.P16124269311581139020

namespace A326039

/-- `A008833(Δ[A160664(n)])` -/
def P16124269311581139020.Spec : Prop :=
  ∀ n, P16124269311581139020.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P17491937898447746534

`A008833(A387726(n+1))`
-/

namespace A326039.P17491937898447746534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A387726 (n + 1)).toNat

end

end A326039.P17491937898447746534

namespace A326039

/-- `A008833(A387726(n+1))` -/
def P17491937898447746534.Spec : Prop :=
  ∀ n, P17491937898447746534.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P513861599899883621

`A053143(A387156(n+1))`
-/

namespace A326039.P513861599899883621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A387156 (n + 1)).toNat

end

end A326039.P513861599899883621

namespace A326039

/-- `A053143(A387156(n+1))` -/
def P513861599899883621.Spec : Prop :=
  ∀ n, P513861599899883621.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P15085908736105809526

`A336642(Δ[A160664(n)])+1`
-/

namespace A326039.P15085908736105809526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (f1 (n + 1) - f1 n).toNat + 1

end

end A326039.P15085908736105809526

namespace A326039

/-- `A336642(Δ[A160664(n)])+1` -/
def P15085908736105809526.Spec : Prop :=
  ∀ n, P15085908736105809526.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P10688683252580965520

`A008833(A039653(n+1)+1)`
-/

namespace A326039.P10688683252580965520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A039653 (n + 1) + 1).toNat

end

end A326039.P10688683252580965520

namespace A326039

/-- `A008833(A039653(n+1)+1)` -/
def P10688683252580965520.Spec : Prop :=
  ∀ n, P10688683252580965520.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P8626738890919741268

`A008833(A088580(n+1)-1)`
-/

namespace A326039.P8626738890919741268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A088580 (n + 1) - 1).toNat

end

end A326039.P8626738890919741268

namespace A326039

/-- `A008833(A088580(n+1)-1)` -/
def P8626738890919741268.Spec : Prop :=
  ∀ n, P8626738890919741268.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P765235358318897474

`A008833(A245092(2*n+1))`
-/

namespace A326039.P765235358318897474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A245092 (2 * n + 1)).toNat

end

end A326039.P765235358318897474

namespace A326039

/-- `A008833(A245092(2*n+1))` -/
def P765235358318897474.Spec : Prop :=
  ∀ n, P765235358318897474.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P14637818196395719316

`A008833(A001065(n+1)+1+n)`
-/

namespace A326039.P14637818196395719316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A326039.P14637818196395719316

namespace A326039

/-- `A008833(A001065(n+1)+1+n)` -/
def P14637818196395719316.Spec : Prop :=
  ∀ n, P14637818196395719316.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P10646165113202250119

`A008833(A155085(n+1)-(n+1))`
-/

namespace A326039.P10646165113202250119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A326039.P10646165113202250119

namespace A326039

/-- `A008833(A155085(n+1)-(n+1))` -/
def P10646165113202250119.Spec : Prop :=
  ∀ n, P10646165113202250119.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P2411668102447180964

`A001065(n+1)-A326045(n+1)`
-/

namespace A326039.P2411668102447180964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326045 (n + 1)

end

end A326039.P2411668102447180964

namespace A326039

/-- `A001065(n+1)-A326045(n+1)` -/
def P2411668102447180964.Spec : Prop :=
  ∀ n, P2411668102447180964.a n = A326039 (n + 1)

theorem P2411668102447180964.correct : P2411668102447180964.Spec := by
  intro n
  simp only [A326039, Nat.add_sub_cancel, A326039.P2411668102447180964.a, A326039.P9256592062457246146.a, A001065, A001065.P4097147489331274860.a, A326038, A326038.P7461773891542618718.a, A326045, A326045.P9050702323358522594.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326040, A326040.P15308237361060723767.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326039

/-! ## A326039.P13053491250372944560

`A000203(n+1)/A355928(n+1)`
-/

namespace A326039.P13053491250372944560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A355928 (n + 1) : ℚ)

end

end A326039.P13053491250372944560

namespace A326039

/-- `A000203(n+1)/A355928(n+1)` -/
def P13053491250372944560.Spec : Prop :=
  ∀ n, P13053491250372944560.a n = (A326039 (n + 1) : ℚ)

end A326039

/-! ## A326039.P6548291274954425289

`(A088580(n+1)-1)/A007913(∑{d}[n+1, #])`
-/

namespace A326039.P6548291274954425289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1 : ℚ) / (A007913 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ)

end

end A326039.P6548291274954425289

namespace A326039

/-- `(A088580(n+1)-1)/A007913(∑{d}[n+1, #])` -/
def P6548291274954425289.Spec : Prop :=
  ∀ n, P6548291274954425289.a n = (A326039 (n + 1) : ℚ)

end A326039

/-! ## A326039.P13388213262123858162

`(A152770(n+1)+∏{e}[n+1, #+1]+n)/A007913(∑{d}[n+1, #])`
-/

namespace A326039.P13388213262123858162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152770 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (n : ℤ) : ℚ) / (A007913 (∑ d ∈ Nat.divisors (f2 n), d) : ℚ)

end

end A326039.P13388213262123858162

namespace A326039

/-- `(A152770(n+1)+∏{e}[n+1, #+1]+n)/A007913(∑{d}[n+1, #])` -/
def P13388213262123858162.Spec : Prop :=
  ∀ n, P13388213262123858162.a n = (A326039 (n + 1) : ℚ)

end A326039

/-! ## A326039.P13564846588615564744

`A008833(A048146(n+1)+A034448(n+1))`
-/

namespace A326039.P13564846588615564744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A326039.P13564846588615564744

namespace A326039

/-- `A008833(A048146(n+1)+A034448(n+1))` -/
def P13564846588615564744.Spec : Prop :=
  ∀ n, P13564846588615564744.a n = A326039 (n + 1)

end A326039

/-! ## A326039.P13739475973569903674

`A008833(A070039(n+1)+A070038(n+1))`
-/

namespace A326039.P13739475973569903674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A070039 (n + 1) + A070038 (n + 1)).toNat

end

end A326039.P13739475973569903674

namespace A326039

/-- `A008833(A070039(n+1)+A070038(n+1))` -/
def P13739475973569903674.Spec : Prop :=
  ∀ n, P13739475973569903674.a n = A326039 (n + 1)

end A326039

/-!
# A326040: a(n) = sigma(n) - A008833(sigma(n)).

The programs for A326040, the canonical program `A326040.P15308237361060723767` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326040 has offset 1).

The definition of A326040 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326040.P15308237361060723767

`A000203(n+1)-A326039(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A326040

/-- `A000203(n+1)-A326039(n+1)` -/
def P15308237361060723767.Spec : Prop :=
  ∀ n, P15308237361060723767.a n = A326040 (n + 1)

theorem P15308237361060723767.correct : P15308237361060723767.Spec := by
  intro n
  simp only [A326040, Nat.add_sub_cancel]

end A326040

/-! ## A326040.P8039947666634731742

`A326055(A000203(n+1))`
-/

namespace A326040.P8039947666634731742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A000203 (n + 1)).toNat

end

end A326040.P8039947666634731742

namespace A326040

/-- `A326055(A000203(n+1))` -/
def P8039947666634731742.Spec : Prop :=
  ∀ n, P8039947666634731742.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P8063938522360890241

`n+1+A326045(n+1)`
-/

namespace A326040.P8063938522360890241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A326045 (n + 1)

end

end A326040.P8063938522360890241

namespace A326040

/-- `n+1+A326045(n+1)` -/
def P8063938522360890241.Spec : Prop :=
  ∀ n, P8063938522360890241.a n = A326040 (n + 1)

theorem P8063938522360890241.correct : P8063938522360890241.Spec := by
  intro n
  simp only [A326040, Nat.add_sub_cancel, A326040.P8063938522360890241.a, A326040.P15308237361060723767.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326039, A326039.P9256592062457246146.a, A326045, A326045.P9050702323358522594.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A008833, A008833.P18388074464065390543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326040

/-! ## A326040.P13851131682797054985

`∑{d}[n+1, #]-A008833(∑{d}[n+1, #])`
-/

namespace A326040.P13851131682797054985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A008833 (∑ d ∈ Nat.divisors (f2 n), d)

end

end A326040.P13851131682797054985

namespace A326040

/-- `∑{d}[n+1, #]-A008833(∑{d}[n+1, #])` -/
def P13851131682797054985.Spec : Prop :=
  ∀ n, P13851131682797054985.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P5379229744767749267

`A326044(n+1)+A001065(n+1)`
-/

namespace A326040.P5379229744767749267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326044 (n + 1) + A001065 (n + 1)

end

end A326040.P5379229744767749267

namespace A326040

/-- `A326044(n+1)+A001065(n+1)` -/
def P5379229744767749267.Spec : Prop :=
  ∀ n, P5379229744767749267.a n = A326040 (n + 1)

theorem P5379229744767749267.correct : P5379229744767749267.Spec := by
  intro n
  simp only [A326040, Nat.add_sub_cancel, A326040.P5379229744767749267.a, A326040.P15308237361060723767.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A326039, A326039.P9256592062457246146.a, A326044, A326044.P15136315853744446267.a, A033879, A033879.P11735613842914743111.a, A326038, A326038.P7461773891542618718.a, A326045, A326045.P9050702323358522594.a, A000188, A000188.P7486858720566838181.a, A033880, A033880.P6005875780263802708.a, A008833, A008833.P18388074464065390543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326040

/-! ## A326040.P17203037274086181478

`A000203(n+1)-A326038(n+1)²`
-/

namespace A326040.P17203037274086181478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326038 (n + 1) ^ 2

end

end A326040.P17203037274086181478

namespace A326040

/-- `A000203(n+1)-A326038(n+1)²` -/
def P17203037274086181478.Spec : Prop :=
  ∀ n, P17203037274086181478.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P1063985253384073146

`A088580(n+1)-1-A008833(A088580(n+1)-1)`
-/

namespace A326040.P1063985253384073146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1 - A008833 (A088580 (n + 1) - 1).toNat

end

end A326040.P1063985253384073146

namespace A326040

/-- `A088580(n+1)-1-A008833(A088580(n+1)-1)` -/
def P1063985253384073146.Spec : Prop :=
  ∀ n, P1063985253384073146.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P4181745676095828450

`A245092(2*n+1)-A008833(A245092(2*n+1))`
-/

namespace A326040.P4181745676095828450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1) - A008833 (A245092 (2 * n + 1)).toNat

end

end A326040.P4181745676095828450

namespace A326040

/-- `A245092(2*n+1)-A008833(A245092(2*n+1))` -/
def P4181745676095828450.Spec : Prop :=
  ∀ n, P4181745676095828450.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P12433148478623541837

`A000203(n+1)-A000203(n+1)/A355928(n+1)`
-/

namespace A326040.P12433148478623541837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ) / (A355928 (n + 1) : ℚ)

end

end A326040.P12433148478623541837

namespace A326040

/-- `A000203(n+1)-A000203(n+1)/A355928(n+1)` -/
def P12433148478623541837.Spec : Prop :=
  ∀ n, P12433148478623541837.a n = (A326040 (n + 1) : ℚ)

end A326040

/-! ## A326040.P10730798852474396791

`A001065(n+1)+1+n-A008833(A001065(n+1)+1+n)`
-/

namespace A326040.P10730798852474396791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A008833 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A326040.P10730798852474396791

namespace A326040

/-- `A001065(n+1)+1+n-A008833(A001065(n+1)+1+n)` -/
def P10730798852474396791.Spec : Prop :=
  ∀ n, P10730798852474396791.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P16019914746784671154

`2*(n+1)-A033879(n+1)-A008833(A155085(n+1)-(n+1))`
-/

namespace A326040.P16019914746784671154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A008833 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A326040.P16019914746784671154

namespace A326040

/-- `2*(n+1)-A033879(n+1)-A008833(A155085(n+1)-(n+1))` -/
def P16019914746784671154.Spec : Prop :=
  ∀ n, P16019914746784671154.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P5097896267365927040

`2*(n+1)-A033879(n+1)-A008833(2*(n+1)-A033879(n+1))`
-/

namespace A326040.P5097896267365927040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A008833 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A326040.P5097896267365927040

namespace A326040

/-- `2*(n+1)-A033879(n+1)-A008833(2*(n+1)-A033879(n+1))` -/
def P5097896267365927040.Spec : Prop :=
  ∀ n, P5097896267365927040.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P12935935321163954132

`A326055(∑{d}[n+1, #])`
-/

namespace A326040.P12935935321163954132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A326040.P12935935321163954132

namespace A326040

/-- `A326055(∑{d}[n+1, #])` -/
def P12935935321163954132.Spec : Prop :=
  ∀ n, P12935935321163954132.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P17461377223769842893

`A326055(A001065(n+1)+1+n)`
-/

namespace A326040.P17461377223769842893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A326040.P17461377223769842893

namespace A326040

/-- `A326055(A001065(n+1)+1+n)` -/
def P17461377223769842893.Spec : Prop :=
  ∀ n, P17461377223769842893.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P4346279986664304346

`A326055(n+1-A235796(n+1)+n)`
-/

namespace A326040.P4346279986664304346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 ((n + 1 : ℤ) - A235796 (n + 1) + (n : ℤ)).toNat

end

end A326040.P4346279986664304346

namespace A326040

/-- `A326055(n+1-A235796(n+1)+n)` -/
def P4346279986664304346.Spec : Prop :=
  ∀ n, P4346279986664304346.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P15962856963789490695

`A326055(A237588(n+1)+A005408(n))`
-/

namespace A326040.P15962856963789490695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A237588 (n + 1) + A005408 n).toNat

end

end A326040.P15962856963789490695

namespace A326040

/-- `A326055(A237588(n+1)+A005408(n))` -/
def P15962856963789490695.Spec : Prop :=
  ∀ n, P15962856963789490695.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P11714694746063606458

`A326055(A326053(n+1)+A008833(n+1))`
-/

namespace A326040.P11714694746063606458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A326053 (n + 1) + A008833 (n + 1)).toNat

end

end A326040.P11714694746063606458

namespace A326040

/-- `A326055(A326053(n+1)+A008833(n+1))` -/
def P11714694746063606458.Spec : Prop :=
  ∀ n, P11714694746063606458.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P12491649036590010871

`A326055(A326061(n+1)+A032742(n+1))`
-/

namespace A326040.P12491649036590010871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A326061 (n + 1) + A032742 (n + 1)).toNat

end

end A326040.P12491649036590010871

namespace A326040

/-- `A326055(A326061(n+1)+A032742(n+1))` -/
def P12491649036590010871.Spec : Prop :=
  ∀ n, P12491649036590010871.a n = A326040 (n + 1)

end A326040

/-! ## A326040.P16957653302873665311

`A000203(n+1)-A000189(A000203(n+1)*A326038(n+1))`
-/

namespace A326040.P16957653302873665311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000189 (A000203 (n + 1) * A326038 (n + 1)).toNat

end

end A326040.P16957653302873665311

namespace A326040

/-- `A000203(n+1)-A000189(A000203(n+1)*A326038(n+1))` -/
def P16957653302873665311.Spec : Prop :=
  ∀ n, P16957653302873665311.a n = A326040 (n + 1)

end A326040

/-!
# A326041: a(n) = sigma(A064989(n)).

The programs for A326041, the canonical program `A326041.P665900257107938176` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326041 has offset 1).

The definition of A326041 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326041.P665900257107938176

`A000203(A064989(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A326041

/-- `A000203(A064989(n+1))` -/
def P665900257107938176.Spec : Prop :=
  ∀ n, P665900257107938176.a n = A326041 (n + 1)

theorem P665900257107938176.correct : P665900257107938176.Spec := by
  intro n
  simp only [A326041, Nat.add_sub_cancel]

end A326041

/-! ## A326041.P8690355282193735911

`∑{d}[A290099(n+1), #]`
-/

namespace A326041.P8690355282193735911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A326041.P8690355282193735911

namespace A326041

/-- `∑{d}[A290099(n+1), #]` -/
def P8690355282193735911.Spec : Prop :=
  ∀ n, (P8690355282193735911.a n : ℤ) = A326041 (n + 1)

end A326041

/-! ## A326041.P17760080681332877188

`A342661(n+1)/(n+1)`
-/

namespace A326041.P17760080681332877188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342661 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A326041.P17760080681332877188

namespace A326041

/-- `A342661(n+1)/(n+1)` -/
def P17760080681332877188.Spec : Prop :=
  ∀ n, P17760080681332877188.a n = (A326041 (n + 1) : ℚ)

end A326041

/-! ## A326041.P12874240050199302294

`A285703(A003602(n+1))`
-/

namespace A326041.P12874240050199302294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285703 (A003602 (n + 1)).toNat

end

end A326041.P12874240050199302294

namespace A326041

/-- `A285703(A003602(n+1))` -/
def P12874240050199302294.Spec : Prop :=
  ∀ n, P12874240050199302294.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P8078205092800369328

`A285703(A025480(n)+1)`
-/

namespace A326041.P8078205092800369328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285703 (A025480 n + 1).toNat

end

end A326041.P8078205092800369328

namespace A326041

/-- `A285703(A025480(n)+1)` -/
def P8078205092800369328.Spec : Prop :=
  ∀ n, P8078205092800369328.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P5890491012481626359

`A000203(abs(A290099(n+1)))`
-/

namespace A326041.P5890491012481626359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 |A290099 (n + 1)|.toNat

end

end A326041.P5890491012481626359

namespace A326041

/-- `A000203(abs(A290099(n+1)))` -/
def P5890491012481626359.Spec : Prop :=
  ∀ n, P5890491012481626359.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P2590359636438032827

`∑{d}[A000265(n+1), A252463(#)]`
-/

namespace A326041.P2590359636438032827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252463 d

end

end A326041.P2590359636438032827

namespace A326041

/-- `∑{d}[A000265(n+1), A252463(#)]` -/
def P2590359636438032827.Spec : Prop :=
  ∀ n, P2590359636438032827.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P6920423140445031924

`∑{d}[A000265(n+1), A349122(#)]`
-/

namespace A326041.P6920423140445031924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349122 d

end

end A326041.P6920423140445031924

namespace A326041

/-- `∑{d}[A000265(n+1), A349122(#)]` -/
def P6920423140445031924.Spec : Prop :=
  ∀ n, P6920423140445031924.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P11302102267539043120

`A245092(2*A064989(n+1)-1)`
-/

namespace A326041.P11302102267539043120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * A064989 (n + 1) - 1).toNat

end

end A326041.P11302102267539043120

namespace A326041

/-- `A245092(2*A064989(n+1)-1)` -/
def P11302102267539043120.Spec : Prop :=
  ∀ n, P11302102267539043120.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P12252602489180318646

`A000203(A200746(n+1)/(n+1))`
-/

namespace A326041.P12252602489180318646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A326041.P12252602489180318646

namespace A326041

/-- `A000203(A200746(n+1)/(n+1))` -/
def P12252602489180318646.Spec : Prop :=
  ∀ n, P12252602489180318646.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P17138440566726800758

`∑{d}[n+1, A001227(#)*A349127((n+1)/#)]`
-/

namespace A326041.P17138440566726800758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001227 d * A349127 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326041.P17138440566726800758

namespace A326041

/-- `∑{d}[n+1, A001227(#)*A349127((n+1)/#)]` -/
def P17138440566726800758.Spec : Prop :=
  ∀ n, P17138440566726800758.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P17115600423640517341

`∑{d}[n+1, A033999(#-1)*A079707((n+1)/#)]`
-/

namespace A326041.P17115600423640517341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033999 (d - 1) * A079707 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326041.P17115600423640517341

namespace A326041

/-- `∑{d}[n+1, A033999(#-1)*A079707((n+1)/#)]` -/
def P17115600423640517341.Spec : Prop :=
  ∀ n, P17115600423640517341.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P13177715924083709208

`∑{d}[n+1, A059841(#-1)*A064989((n+1)/#)]`
-/

namespace A326041.P13177715924083709208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A064989 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326041.P13177715924083709208

namespace A326041

/-- `∑{d}[n+1, A059841(#-1)*A064989((n+1)/#)]` -/
def P13177715924083709208.Spec : Prop :=
  ∀ n, P13177715924083709208.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P12984813090233865075

`A319699((n+1)/and(n+1, -(n+1)))+A064989(n+1)`
-/

namespace A326041.P12984813090233865075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat + A064989 (n + 1)

end

end A326041.P12984813090233865075

namespace A326041

/-- `A319699((n+1)/and(n+1, -(n+1)))+A064989(n+1)` -/
def P12984813090233865075.Spec : Prop :=
  ∀ n, P12984813090233865075.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P9818091810768169905

`A000203(A252463(A000265(n+1)))`
-/

namespace A326041.P9818091810768169905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A252463 (A000265 (n + 1)).toNat).toNat

end

end A326041.P9818091810768169905

namespace A326041

/-- `A000203(A252463(A000265(n+1)))` -/
def P9818091810768169905.Spec : Prop :=
  ∀ n, P9818091810768169905.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P2636219187142235428

`A000265(n+1)-A286385(A064989(n+1))`
-/

namespace A326041.P2636219187142235428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A286385 (A064989 (n + 1)).toNat

end

end A326041.P2636219187142235428

namespace A326041

/-- `A000265(n+1)-A286385(A064989(n+1))` -/
def P2636219187142235428.Spec : Prop :=
  ∀ n, P2636219187142235428.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P1482729575426710128

`A000203(A353747(n+1)-A000010(n+1))`
-/

namespace A326041.P1482729575426710128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A353747 (n + 1) - A000010 (n + 1)).toNat

end

end A326041.P1482729575426710128

namespace A326041

/-- `A000203(A353747(n+1)-A000010(n+1))` -/
def P1482729575426710128.Spec : Prop :=
  ∀ n, P1482729575426710128.a n = A326041 (n + 1)

theorem P1482729575426710128.correct : P1482729575426710128.Spec := by
  intro n
  simp only [A326041, Nat.add_sub_cancel, A326041.P1482729575426710128.a, A326041.P665900257107938176.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064989, A064989.P13349672914146769936.a, A353747, A353747.P3016860989461656940.a, A003557, A003557.P6364735403900941810.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A059841, A059841.P2666504972441551157.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326041

/-! ## A326041.P16276799734994386394

`A000203(A342662(n+1)/A000203(n+1))`
-/

namespace A326041.P16276799734994386394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A342662 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ))).toNat

end

end A326041.P16276799734994386394

namespace A326041

/-- `A000203(A342662(n+1)/A000203(n+1))` -/
def P16276799734994386394.Spec : Prop :=
  ∀ n, P16276799734994386394.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P6678935438578331934

`A000203(A353791(n+1)/A003958(n+1))`
-/

namespace A326041.P6678935438578331934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A353791 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ))).toNat

end

end A326041.P6678935438578331934

namespace A326041

/-- `A000203(A353791(n+1)/A003958(n+1))` -/
def P6678935438578331934.Spec : Prop :=
  ∀ n, P6678935438578331934.a n = A326041 (n + 1)

end A326041

/-! ## A326041.P4599148881258237317

`A000203(A353749(n+1)/(A109606(n+1)+1))`
-/

namespace A326041.P4599148881258237317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A353749 (n + 1) : ℚ) / (A109606 (n + 1) + 1 : ℚ))).toNat

end

end A326041.P4599148881258237317

namespace A326041

/-- `A000203(A353749(n+1)/(A109606(n+1)+1))` -/
def P4599148881258237317.Spec : Prop :=
  ∀ n, P4599148881258237317.a n = A326041 (n + 1)

end A326041

/-!
# A326042: a(n) = A064989(sigma(A003961(n))), where A003961 shifts the prime factorization of n one step towards larger primes, and A064989 shifts it back towards smaller primes.

The programs for A326042, the canonical program `A326042.P15075056896912024220` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326042 has offset 1).

The definition of A326042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A064989, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326042.P14257074077526541359

`A353794(n+1)/A351456(n+1)`
-/

namespace A326042.P14257074077526541359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353794 (n + 1) : ℚ) / (A351456 (n + 1) : ℚ)

end

end A326042.P14257074077526541359

namespace A326042

/-- `A353794(n+1)/A351456(n+1)` -/
def P14257074077526541359.Spec : Prop :=
  ∀ n, P14257074077526541359.a n = (A326042 (n + 1) : ℚ)

end A326042

/-! ## A326042.P17146257649431205560

`A353790(n+1)/A353767(n+1)`
-/

namespace A326042.P17146257649431205560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353790 (n + 1) : ℚ) / (A353767 (n + 1) : ℚ)

end

end A326042.P17146257649431205560

namespace A326042

/-- `A353790(n+1)/A353767(n+1)` -/
def P17146257649431205560.Spec : Prop :=
  ∀ n, P17146257649431205560.a n = (A326042 (n + 1) : ℚ)

end A326042

/-! ## A326042.P15075056896912024220

`A064989(A003973(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A326042

/-- `A064989(A003973(n+1))` -/
def P15075056896912024220.Spec : Prop :=
  ∀ n, P15075056896912024220.a n = A326042 (n + 1)

theorem P15075056896912024220.correct : P15075056896912024220.Spec := by
  intro n
  simp only [A326042, Nat.add_sub_cancel]

end A326042

/-! ## A326042.P5804673116677837972

`∑{d}[n+1, A349626(#)]`
-/

namespace A326042.P5804673116677837972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349626 d

end

end A326042.P5804673116677837972

namespace A326042

/-- `∑{d}[n+1, A349626(#)]` -/
def P5804673116677837972.Spec : Prop :=
  ∀ n, P5804673116677837972.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P18042319219897068513

`1-A348736(n+1)+n`
-/

namespace A326042.P18042319219897068513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348736 (n + 1) + (n : ℤ)

end

end A326042.P18042319219897068513

namespace A326042

/-- `1-A348736(n+1)+n` -/
def P18042319219897068513.Spec : Prop :=
  ∀ n, P18042319219897068513.a n = A326042 (n + 1)

theorem P18042319219897068513.correct : P18042319219897068513.Spec := by
  intro n
  simp only [A326042, Nat.add_sub_cancel, A326042.P18042319219897068513.a, A326042.P15075056896912024220.a, A003973, A003973.P4846480468008244812.a, A064989, A064989.P13349672914146769936.a, A348736, A348736.P14809155913306220837.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326042

/-! ## A326042.P18235197022419576500

`∑{d}[n+1, #*A349624((n+1)/#)]`
-/

namespace A326042.P18235197022419576500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A326042.P18235197022419576500

namespace A326042

/-- `∑{d}[n+1, #*A349624((n+1)/#)]` -/
def P18235197022419576500.Spec : Prop :=
  ∀ n, P18235197022419576500.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P812710294789964820

`A348940(n+1)*A348942(n+1)`
-/

namespace A326042.P812710294789964820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348940 (n + 1) * A348942 (n + 1)

end

end A326042.P812710294789964820

namespace A326042

/-- `A348940(n+1)*A348942(n+1)` -/
def P812710294789964820.Spec : Prop :=
  ∀ n, P812710294789964820.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P6308614459999740828

`A351449(n+1)*A351451(n+1)`
-/

namespace A326042.P6308614459999740828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351449 (n + 1) * A351451 (n + 1)

end

end A326042.P6308614459999740828

namespace A326042

/-- `A351449(n+1)*A351451(n+1)` -/
def P6308614459999740828.Spec : Prop :=
  ∀ n, P6308614459999740828.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P15112669717223077254

`A351449(n+1)*A351450(A055231(n+1))`
-/

namespace A326042.P15112669717223077254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351449 (n + 1) * A351450 (A055231 (n + 1)).toNat

end

end A326042.P15112669717223077254

namespace A326042

/-- `A351449(n+1)*A351450(A055231(n+1))` -/
def P15112669717223077254.Spec : Prop :=
  ∀ n, P15112669717223077254.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P12530761497579675903

`A353790(n+1)/A000010(A003973(n+1))`
-/

namespace A326042.P12530761497579675903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353790 (n + 1) : ℚ) / (A000010 (A003973 (n + 1)).toNat : ℚ)

end

end A326042.P12530761497579675903

namespace A326042

/-- `A353790(n+1)/A000010(A003973(n+1))` -/
def P12530761497579675903.Spec : Prop :=
  ∀ n, P12530761497579675903.a n = (A326042 (n + 1) : ℚ)

end A326042

/-! ## A326042.P2303198879636873634

`A353794(n+1)/A003958(A003973(n+1))`
-/

namespace A326042.P2303198879636873634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353794 (n + 1) : ℚ) / (A003958 (A003973 (n + 1)).toNat : ℚ)

end

end A326042.P2303198879636873634

namespace A326042

/-- `A353794(n+1)/A003958(A003973(n+1))` -/
def P2303198879636873634.Spec : Prop :=
  ∀ n, P2303198879636873634.a n = (A326042 (n + 1) : ℚ)

end A326042

/-! ## A326042.P13547463480588273696

`A350073(A003961(n+1))`
-/

namespace A326042.P13547463480588273696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (A003961 (n + 1)).toNat

end

end A326042.P13547463480588273696

namespace A326042

/-- `A350073(A003961(n+1))` -/
def P13547463480588273696.Spec : Prop :=
  ∀ n, P13547463480588273696.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P11259070649546356128

`A350073(A243501(n+1)-1)`
-/

namespace A326042.P11259070649546356128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350073 (A243501 (n + 1) - 1).toNat

end

end A326042.P11259070649546356128

namespace A326042

/-- `A350073(A243501(n+1)-1)` -/
def P11259070649546356128.Spec : Prop :=
  ∀ n, P11259070649546356128.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P10913685901550277611

`A353790(n+1)/A062401(A003961(n+1))`
-/

namespace A326042.P10913685901550277611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353790 (n + 1) : ℚ) / (A062401 (A003961 (n + 1)).toNat : ℚ)

end

end A326042.P10913685901550277611

namespace A326042

/-- `A353790(n+1)/A062401(A003961(n+1))` -/
def P10913685901550277611.Spec : Prop :=
  ∀ n, P10913685901550277611.a n = (A326042 (n + 1) : ℚ)

end A326042

/-! ## A326042.P1059422445620490015

`A353792(A003961(n+1))/A351456(n+1)`
-/

namespace A326042.P1059422445620490015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353792 (A003961 (n + 1)).toNat : ℚ) / (A351456 (n + 1) : ℚ)

end

end A326042.P1059422445620490015

namespace A326042

/-- `A353792(A003961(n+1))/A351456(n+1)` -/
def P1059422445620490015.Spec : Prop :=
  ∀ n, P1059422445620490015.a n = (A326042 (n + 1) : ℚ)

end A326042

/-! ## A326042.P18213086886315246264

`A064989(A336846(n+1))*A064989(A336848(n+1))`
-/

namespace A326042.P18213086886315246264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A336846 (n + 1)).toNat * A064989 (A336848 (n + 1)).toNat

end

end A326042.P18213086886315246264

namespace A326042

/-- `A064989(A336846(n+1))*A064989(A336848(n+1))` -/
def P18213086886315246264.Spec : Prop :=
  ∀ n, P18213086886315246264.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P15632486851446779257

`A064989(∑{d}[n+1, A003961(#)])`
-/

namespace A326042.P15632486851446779257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (∑ d ∈ Nat.divisors (f1 n), A003961 d).toNat

end

end A326042.P15632486851446779257

namespace A326042

/-- `A064989(∑{d}[n+1, A003961(#)])` -/
def P15632486851446779257.Spec : Prop :=
  ∀ n, P15632486851446779257.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P3192377552906059750

`A064989(A341528(n+1)/(n+1))`
-/

namespace A326042.P3192377552906059750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (SequenceMachineLib.roundAway ((A341528 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A326042.P3192377552906059750

namespace A326042

/-- `A064989(A341528(n+1)/(n+1))` -/
def P3192377552906059750.Spec : Prop :=
  ∀ n, P3192377552906059750.a n = A326042 (n + 1)

end A326042

/-! ## A326042.P1783317088593900591

`A064989(A336851(n+1)+A003961(n+1))`
-/

namespace A326042.P1783317088593900591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A336851 (n + 1) + A003961 (n + 1)).toNat

end

end A326042.P1783317088593900591

namespace A326042

/-- `A064989(A336851(n+1)+A003961(n+1))` -/
def P1783317088593900591.Spec : Prop :=
  ∀ n, P1783317088593900591.a n = A326042 (n + 1)

theorem P1783317088593900591.correct : P1783317088593900591.Spec := by
  intro n
  simp only [A326042, Nat.add_sub_cancel, A326042.P1783317088593900591.a, A326042.P15075056896912024220.a, A003961, A003961.P5996473960037614004.a, A003973, A003973.P4846480468008244812.a, A064989, A064989.P13349672914146769936.a, A336851, A336851.P7105463253357279779.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A006530, A006530.P13372528560459906635.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A158611, A158611.P9275629407611603775.a, A252749, A252749.P15054942815197957636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A070229, A070229.P5792893597916963980.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326042

/-! ## A326042.P9838285542579018014

`A064989(A249734(n+1)-A388975(n+1))`
-/

namespace A326042.P9838285542579018014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A249734 (n + 1) - A388975 (n + 1)).toNat

end

end A326042.P9838285542579018014

namespace A326042

/-- `A064989(A249734(n+1)-A388975(n+1))` -/
def P9838285542579018014.Spec : Prop :=
  ∀ n, P9838285542579018014.a n = A326042 (n + 1)

end A326042

/-!
# A326043: Multiplicative with a(p^e) = floor[((e-1)+sigma(p^e)) / e].

The programs for A326043, there is no canonical definition to state claims against.
-/

/-! ## A326043.P16867495182591279293

`A325973(n+1)-A359431(n+1)`
-/

namespace A326043.P16867495182591279293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A359431 (n + 1)

end

end A326043.P16867495182591279293

/-! ## A326043.P13356163506901770285

`A000203(n+1)-(A359431(n+1)+A325974(n+1))`
-/

namespace A326043.P13356163506901770285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A359431 (n + 1) + A325974 (n + 1))

end

end A326043.P13356163506901770285

/-! ## A326043.P14202254974168695234

`abs(A325974(n+1)-A245092(2*n+1))-A359431(n+1)`
-/

namespace A326043.P14202254974168695234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325974 (n + 1) - A245092 (2 * n + 1)| - A359431 (n + 1)

end

end A326043.P14202254974168695234

/-! ## A326043.P10196946840946206563

`A034460(n+1)+A325978(n+1)+A048146(n+1)-A359431(n+1)`
-/

namespace A326043.P10196946840946206563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + (A325978 (n + 1) + A048146 (n + 1)) - A359431 (n + 1)

end

end A326043.P10196946840946206563

/-! ## A326043.P9211265166629720310

`A000217(n+1)-(A325974(n+1)+A024816(n+1))-A359431(n+1)`
-/

namespace A326043.P9211265166629720310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A325974 (n + 1) + A024816 (n + 1)) - A359431 (n + 1)

end

end A326043.P9211265166629720310

/-! ## A326043.P14625221059539848158

`A034448(n+1)+A048146(n+1)-A325974(n+1)-A359431(n+1)`
-/

namespace A326043.P14625221059539848158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A325974 (n + 1)) - A359431 (n + 1)

end

end A326043.P14625221059539848158

/-! ## A326043.P13542944770442389854

`A048250(n+1)+A325974(n+1)-A048146(n+1)-A359431(n+1)`
-/

namespace A326043.P13542944770442389854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A325974 (n + 1) - A048146 (n + 1)) - A359431 (n + 1)

end

end A326043.P13542944770442389854

/-!
# A326044: a(n) = n - {the largest square dividing its sum of divisors}: a(n) = n - A008833(sigma(n)).

The programs for A326044, the canonical program `A326044.P15136315853744446267` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326044 has offset 1).

The definition of A326044 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326045, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326044.P15694492076950226804

`n+1-A326039(n+1)`
-/

namespace A326044.P15694492076950226804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326039 (n + 1)

end

end A326044.P15694492076950226804

namespace A326044

/-- `n+1-A326039(n+1)` -/
def P15694492076950226804.Spec : Prop :=
  ∀ n, P15694492076950226804.a n = A326044 (n + 1)

theorem P15694492076950226804.correct : P15694492076950226804.Spec := by
  intro n
  simp only [A326044, Nat.add_sub_cancel, A326044.P15694492076950226804.a, A326044.P15136315853744446267.a, A033879, A033879.P11735613842914743111.a, A326039, A326039.P9256592062457246146.a, A326045, A326045.P9050702323358522594.a, A033880, A033880.P6005875780263802708.a, A326038, A326038.P7461773891542618718.a, A326040, A326040.P15308237361060723767.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326044

/-! ## A326044.P15136315853744446267

`A033879(n+1)+A326045(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A326044

/-- `A033879(n+1)+A326045(n+1)` -/
def P15136315853744446267.Spec : Prop :=
  ∀ n, P15136315853744446267.a n = A326044 (n + 1)

theorem P15136315853744446267.correct : P15136315853744446267.Spec := by
  intro n
  simp only [A326044, Nat.add_sub_cancel]

end A326044

/-! ## A326044.P9479617742092619778

`n+1-A008833(A000203(n+1))`
-/

namespace A326044.P9479617742092619778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (A000203 (n + 1)).toNat

end

end A326044.P9479617742092619778

namespace A326044

/-- `n+1-A008833(A000203(n+1))` -/
def P9479617742092619778.Spec : Prop :=
  ∀ n, P9479617742092619778.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P13959325789578556899

`1-A326038(n+1)²+n`
-/

namespace A326044.P13959325789578556899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326038 (n + 1) ^ 2 + (n : ℤ)

end

end A326044.P13959325789578556899

namespace A326044

/-- `1-A326038(n+1)²+n` -/
def P13959325789578556899.Spec : Prop :=
  ∀ n, P13959325789578556899.a n = A326044 (n + 1)

theorem P13959325789578556899.correct : P13959325789578556899.Spec := by
  intro n
  simp only [A326044, Nat.add_sub_cancel, A326044.P13959325789578556899.a, A326044.P15136315853744446267.a, A033879, A033879.P11735613842914743111.a, A326038, A326038.P7461773891542618718.a, A326045, A326045.P9050702323358522594.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A326040, A326040.P15308237361060723767.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, A326039, A326039.P9256592062457246146.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326044

/-! ## A326044.P10565743473786554205

`n+1-A008833(∑{d}[n+1, #])`
-/

namespace A326044.P10565743473786554205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A326044.P10565743473786554205

namespace A326044

/-- `n+1-A008833(∑{d}[n+1, #])` -/
def P10565743473786554205.Spec : Prop :=
  ∀ n, P10565743473786554205.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P11923628391652723022

`n-A336642(Δ[A160664(n)])`
-/

namespace A326044.P11923628391652723022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A336642 (f1 (n + 1) - f1 n).toNat

end

end A326044.P11923628391652723022

namespace A326044

/-- `n-A336642(Δ[A160664(n)])` -/
def P11923628391652723022.Spec : Prop :=
  ∀ n, P11923628391652723022.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P14841263567559303241

`n-A336642(A000203(n+1))`
-/

namespace A326044.P14841263567559303241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A336642 (A000203 (n + 1)).toNat

end

end A326044.P14841263567559303241

namespace A326044

/-- `n-A336642(A000203(n+1))` -/
def P14841263567559303241.Spec : Prop :=
  ∀ n, P14841263567559303241.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P13137580176542749015

`A326040(n+1)-A001065(n+1)`
-/

namespace A326044.P13137580176542749015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326040 (n + 1) - A001065 (n + 1)

end

end A326044.P13137580176542749015

namespace A326044

/-- `A326040(n+1)-A001065(n+1)` -/
def P13137580176542749015.Spec : Prop :=
  ∀ n, P13137580176542749015.a n = A326044 (n + 1)

theorem P13137580176542749015.correct : P13137580176542749015.Spec := by
  intro n
  simp only [A326044, Nat.add_sub_cancel, A326044.P13137580176542749015.a, A326044.P15136315853744446267.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A326040, A326040.P15308237361060723767.a, A326045, A326045.P9050702323358522594.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A326039, A326039.P9256592062457246146.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326044

/-! ## A326044.P4612726350197270572

`A326045(n+1)-A033880(n+1)`
-/

namespace A326044.P4612726350197270572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326045 (n + 1) - A033880 (n + 1)

end

end A326044.P4612726350197270572

namespace A326044

/-- `A326045(n+1)-A033880(n+1)` -/
def P4612726350197270572.Spec : Prop :=
  ∀ n, P4612726350197270572.a n = A326044 (n + 1)

theorem P4612726350197270572.correct : P4612726350197270572.Spec := by
  intro n
  simp only [A326044, Nat.add_sub_cancel, A326044.P4612726350197270572.a, A326044.P15136315853744446267.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326045, A326045.P9050702323358522594.a, A001065, A001065.P4097147489331274860.a, A326040, A326040.P15308237361060723767.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326039, A326039.P9256592062457246146.a, A326038, A326038.P7461773891542618718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326044

/-! ## A326044.P10645473197382076452

`n+1-A008833(A001065(n+1)+1+n)`
-/

namespace A326044.P10645473197382076452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A326044.P10645473197382076452

namespace A326044

/-- `n+1-A008833(A001065(n+1)+1+n)` -/
def P10645473197382076452.Spec : Prop :=
  ∀ n, P10645473197382076452.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P13053559762592284172

`n+1-A008833(A155085(n+1)-(n+1))`
-/

namespace A326044.P13053559762592284172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A326044.P13053559762592284172

namespace A326044

/-- `n+1-A008833(A155085(n+1)-(n+1))` -/
def P13053559762592284172.Spec : Prop :=
  ∀ n, P13053559762592284172.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P445863264095860661

`n+1-A008833(2*(n+1)-A033879(n+1))`
-/

namespace A326044.P445863264095860661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A326044.P445863264095860661

namespace A326044

/-- `n+1-A008833(2*(n+1)-A033879(n+1))` -/
def P445863264095860661.Spec : Prop :=
  ∀ n, P445863264095860661.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P2585349931400914156

`n+1-A008833(A070039(n+1)+A070038(n+1))`
-/

namespace A326044.P2585349931400914156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (A070039 (n + 1) + A070038 (n + 1)).toNat

end

end A326044.P2585349931400914156

namespace A326044

/-- `n+1-A008833(A070039(n+1)+A070038(n+1))` -/
def P2585349931400914156.Spec : Prop :=
  ∀ n, P2585349931400914156.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P3918249727529763376

`n+1-A008833(A117004(n+1)+A079667(n+1))`
-/

namespace A326044.P3918249727529763376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (A117004 (n + 1) + A079667 (n + 1)).toNat

end

end A326044.P3918249727529763376

namespace A326044

/-- `n+1-A008833(A117004(n+1)+A079667(n+1))` -/
def P3918249727529763376.Spec : Prop :=
  ∀ n, P3918249727529763376.a n = A326044 (n + 1)

end A326044

/-! ## A326044.P14383497448255428684

`A326040(n+1)-(A326054(n+1)+A008833(n+1))`
-/

namespace A326044.P14383497448255428684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326040 (n + 1) - (A326054 (n + 1) + A008833 (n + 1))

end

end A326044.P14383497448255428684

namespace A326044

/-- `A326040(n+1)-(A326054(n+1)+A008833(n+1))` -/
def P14383497448255428684.Spec : Prop :=
  ∀ n, P14383497448255428684.a n = A326044 (n + 1)

theorem P14383497448255428684.correct : P14383497448255428684.Spec := by
  intro n
  simp only [A326044, Nat.add_sub_cancel, A326044.P14383497448255428684.a, A326044.P15136315853744446267.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A326040, A326040.P15308237361060723767.a, A326045, A326045.P9050702323358522594.a, A326054, A326054.P11521875358712095530.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A033880, A033880.P6005875780263802708.a, A326039, A326039.P9256592062457246146.a, A326053, A326053.P16383788461503311404.a, A001065, A001065.P4097147489331274860.a, A059479, A059479.P17464652159649958448.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326044

/-! ## A326044.P17889264876774035279

`A326040(n+1)+A326055(n+1)-A326053(n+1)`
-/

namespace A326044.P17889264876774035279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326040 (n + 1) + (A326055 (n + 1) - A326053 (n + 1))

end

end A326044.P17889264876774035279

namespace A326044

/-- `A326040(n+1)+A326055(n+1)-A326053(n+1)` -/
def P17889264876774035279.Spec : Prop :=
  ∀ n, P17889264876774035279.a n = A326044 (n + 1)

theorem P17889264876774035279.correct : P17889264876774035279.Spec := by
  intro n
  simp only [A326044, Nat.add_sub_cancel, A326044.P17889264876774035279.a, A326044.P15136315853744446267.a, A033879, A033879.P11735613842914743111.a, A326040, A326040.P15308237361060723767.a, A326045, A326045.P9050702323358522594.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033880, A033880.P6005875780263802708.a, A326039, A326039.P9256592062457246146.a, A326054, A326054.P11521875358712095530.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P11359412940648999332.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326044

/-! ## A326044.P12356369297020698912

`A326055(A000203(n+1))+A000027(n+1)-A000203(n+1)`
-/

namespace A326044.P12356369297020698912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A000203 (n + 1)).toNat + (A000027 (n + 1) - A000203 (n + 1))

end

end A326044.P12356369297020698912

namespace A326044

/-- `A326055(A000203(n+1))+A000027(n+1)-A000203(n+1)` -/
def P12356369297020698912.Spec : Prop :=
  ∀ n, P12356369297020698912.a n = A326044 (n + 1)

end A326044

/-!
# A326045: a(n) is the sum of divisors of n, minus the largest square dividing that sum, minus n: a(n) = sigma(n) - A008833(sigma(n)) - n.

The programs for A326045, the canonical program `A326045.P9050702323358522594` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326045 has offset 1).

The definition of A326045 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326045.P9050702323358522594

`A326040(n+1)-(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A326045

/-- `A326040(n+1)-(n+1)` -/
def P9050702323358522594.Spec : Prop :=
  ∀ n, P9050702323358522594.a n = A326045 (n + 1)

theorem P9050702323358522594.correct : P9050702323358522594.Spec := by
  intro n
  simp only [A326045, Nat.add_sub_cancel]

end A326045

/-! ## A326045.P17896683698383495893

`A326044(n+1)+A033880(n+1)`
-/

namespace A326045.P17896683698383495893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326044 (n + 1) + A033880 (n + 1)

end

end A326045.P17896683698383495893

namespace A326045

/-- `A326044(n+1)+A033880(n+1)` -/
def P17896683698383495893.Spec : Prop :=
  ∀ n, P17896683698383495893.a n = A326045 (n + 1)

theorem P17896683698383495893.correct : P17896683698383495893.Spec := by
  intro n
  simp only [A326045, Nat.add_sub_cancel, A326045.P17896683698383495893.a, A326045.P9050702323358522594.a, A033880, A033880.P6005875780263802708.a, A326040, A326040.P15308237361060723767.a, A326044, A326044.P15136315853744446267.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A326039, A326039.P9256592062457246146.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326045

/-! ## A326045.P10753355508976817257

`A001065(n+1)-A326039(n+1)`
-/

namespace A326045.P10753355508976817257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326039 (n + 1)

end

end A326045.P10753355508976817257

namespace A326045

/-- `A001065(n+1)-A326039(n+1)` -/
def P10753355508976817257.Spec : Prop :=
  ∀ n, P10753355508976817257.a n = A326045 (n + 1)

theorem P10753355508976817257.correct : P10753355508976817257.Spec := by
  intro n
  simp only [A326045, Nat.add_sub_cancel, A326045.P10753355508976817257.a, A326045.P9050702323358522594.a, A001065, A001065.P4097147489331274860.a, A326039, A326039.P9256592062457246146.a, A326040, A326040.P15308237361060723767.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A008833, A008833.P18388074464065390543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326045

/-! ## A326045.P16005993880500248222

`A326044(n+1)-A033879(n+1)`
-/

namespace A326045.P16005993880500248222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326044 (n + 1) - A033879 (n + 1)

end

end A326045.P16005993880500248222

namespace A326045

/-- `A326044(n+1)-A033879(n+1)` -/
def P16005993880500248222.Spec : Prop :=
  ∀ n, P16005993880500248222.a n = A326045 (n + 1)

theorem P16005993880500248222.correct : P16005993880500248222.Spec := by
  intro n
  simp only [A326045, Nat.add_sub_cancel, A326045.P16005993880500248222.a, A326045.P9050702323358522594.a, A033879, A033879.P11735613842914743111.a, A326040, A326040.P15308237361060723767.a, A326044, A326044.P15136315853744446267.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A326039, A326039.P9256592062457246146.a, A001065, A001065.P4097147489331274860.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326045

/-! ## A326045.P4875422403072706886

`A001065(n+1)-A326038(n+1)²`
-/

namespace A326045.P4875422403072706886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326038 (n + 1) ^ 2

end

end A326045.P4875422403072706886

namespace A326045

/-- `A001065(n+1)-A326038(n+1)²` -/
def P4875422403072706886.Spec : Prop :=
  ∀ n, P4875422403072706886.a n = A326045 (n + 1)

theorem P4875422403072706886.correct : P4875422403072706886.Spec := by
  intro n
  simp only [A326045, Nat.add_sub_cancel, A326045.P4875422403072706886.a, A326045.P9050702323358522594.a, A001065, A001065.P4097147489331274860.a, A326038, A326038.P7461773891542618718.a, A326040, A326040.P15308237361060723767.a, A000188, A000188.P7486858720566838181.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326039, A326039.P9256592062457246146.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326045

/-! ## A326045.P10782238947231121104

`A001065(n+1)-A008833(∑{d}[n+1, #])`
-/

namespace A326045.P10782238947231121104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A008833 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A326045.P10782238947231121104

namespace A326045

/-- `A001065(n+1)-A008833(∑{d}[n+1, #])` -/
def P10782238947231121104.Spec : Prop :=
  ∀ n, P10782238947231121104.a n = A326045 (n + 1)

end A326045

/-! ## A326045.P11065831677596435344

`A001065(n+1)-A008833(A000203(n+1))`
-/

namespace A326045.P11065831677596435344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A008833 (A000203 (n + 1)).toNat

end

end A326045.P11065831677596435344

namespace A326045

/-- `A001065(n+1)-A008833(A000203(n+1))` -/
def P11065831677596435344.Spec : Prop :=
  ∀ n, P11065831677596435344.a n = A326045 (n + 1)

end A326045

/-! ## A326045.P10830688136757090086

`A001065(n+1)-A008833(A088580(n+1)-1)`
-/

namespace A326045.P10830688136757090086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A008833 (A088580 (n + 1) - 1).toNat

end

end A326045.P10830688136757090086

namespace A326045

/-- `A001065(n+1)-A008833(A088580(n+1)-1)` -/
def P10830688136757090086.Spec : Prop :=
  ∀ n, P10830688136757090086.a n = A326045 (n + 1)

end A326045

/-! ## A326045.P17437019335389080466

`A001065(n+1)-A008833(A001065(n+1)+1+n)`
-/

namespace A326045.P17437019335389080466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A008833 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A326045.P17437019335389080466

namespace A326045

/-- `A001065(n+1)-A008833(A001065(n+1)+1+n)` -/
def P17437019335389080466.Spec : Prop :=
  ∀ n, P17437019335389080466.a n = A326045 (n + 1)

end A326045

/-! ## A326045.P9521521955134106270

`A326055(A000203(n+1))-(n+1)`
-/

namespace A326045.P9521521955134106270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (A000203 (n + 1)).toNat - (n + 1 : ℤ)

end

end A326045.P9521521955134106270

namespace A326045

/-- `A326055(A000203(n+1))-(n+1)` -/
def P9521521955134106270.Spec : Prop :=
  ∀ n, P9521521955134106270.a n = A326045 (n + 1)

end A326045

/-!
# A326046: a(n) = gcd(n-A326039(n), A326040(n)-n).

The programs for A326046, the canonical program `A326046.P12649065929944989809` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326046 has offset 1).

The definition of A326046 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326039, A326040, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326046.P5703202235638156219

`gcd(A326044(n+1), A326045(n+1))`
-/

namespace A326046.P5703202235638156219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326044 (n + 1)) (A326045 (n + 1))

end

end A326046.P5703202235638156219

namespace A326046

/-- `gcd(A326044(n+1), A326045(n+1))` -/
def P5703202235638156219.Spec : Prop :=
  ∀ n, (P5703202235638156219.a n : ℤ) = A326046 (n + 1)

theorem P5703202235638156219.correct : P5703202235638156219.Spec := by
  intro n
  simp only [A326046, Nat.add_sub_cancel, A326046.P5703202235638156219.a, A326046.P12649065929944989809.a, A326039, A326039.P9256592062457246146.a, A326040, A326040.P15308237361060723767.a, A326044, A326044.P15136315853744446267.a, A326045, A326045.P9050702323358522594.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326046

/-! ## A326046.P12649065929944989809

`gcd(n+1-A326039(n+1), A326040(n+1)-(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A326046

/-- `gcd(n+1-A326039(n+1), A326040(n+1)-(n+1))` -/
def P12649065929944989809.Spec : Prop :=
  ∀ n, (P12649065929944989809.a n : ℤ) = A326046 (n + 1)

theorem P12649065929944989809.correct : P12649065929944989809.Spec := by
  intro n
  simp only [A326046, Nat.add_sub_cancel]

end A326046

/-! ## A326046.P14926496347550123796

`gcd(-A033879(n+1), A326045(A000027(n+1)))`
-/

namespace A326046.P14926496347550123796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033879 (n + 1)) (A326045 (A000027 (n + 1)).toNat)

end

end A326046.P14926496347550123796

namespace A326046

/-- `gcd(-A033879(n+1), A326045(A000027(n+1)))` -/
def P14926496347550123796.Spec : Prop :=
  ∀ n, (P14926496347550123796.a n : ℤ) = A326046 (n + 1)

end A326046

/-! ## A326046.P16826033117106410254

`gcd(A326045(n+1), A326068(A103517(n)))`
-/

namespace A326046.P16826033117106410254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326045 (n + 1)) (A326068 (A103517 n).toNat)

end

end A326046.P16826033117106410254

namespace A326046

/-- `gcd(A326045(n+1), A326068(A103517(n)))` -/
def P16826033117106410254.Spec : Prop :=
  ∀ n, (P16826033117106410254.a n : ℤ) = A326046 (n + 1)

end A326046

/-!
# A326047: a(n) = gcd(n-A050449(n), n-A050452(n)), where A050449 and A050452 give the sum of divisors of the form 4k+1 and of the form 4k+3, respectively.

The programs for A326047, the canonical program `A326047.P17688091439761473015` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326047 has offset 1).

The definition of A326047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, A050452, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326047.P8907409851672078666

`gcd(A326049(n+1), A326052(n+1))`
-/

namespace A326047.P8907409851672078666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326049 (n + 1)) (A326052 (n + 1))

end

end A326047.P8907409851672078666

namespace A326047

/-- `gcd(A326049(n+1), A326052(n+1))` -/
def P8907409851672078666.Spec : Prop :=
  ∀ n, (P8907409851672078666.a n : ℤ) = A326047 (n + 1)

theorem P8907409851672078666.correct : P8907409851672078666.Spec := by
  intro n
  simp only [A326047, Nat.add_sub_cancel, A326047.P8907409851672078666.a, A326047.P17688091439761473015.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A050452, A050452.P8848155708238405563.a, A326049, A326049.P12761554379503345949.a, A326052, A326052.P4438226606935639787.a, A000593, A000593.P13640346029616979906.a, A033879, A033879.P11735613842914743111.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A326050, A326050.P4515014402688933711.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A038712, A038712.P3404197303190209645.a, A166486, A166486.P13501783531280266850.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326047

/-! ## A326047.P17688091439761473015

`gcd(n+1-A050449(n+1), n+1-A050452(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326047

/-- `gcd(n+1-A050449(n+1), n+1-A050452(n+1))` -/
def P17688091439761473015.Spec : Prop :=
  ∀ n, (P17688091439761473015.a n : ℤ) = A326047 (n + 1)

theorem P17688091439761473015.correct : P17688091439761473015.Spec := by
  intro n
  simp only [A326047, Nat.add_sub_cancel]

end A326047

/-! ## A326047.P5005816599197499036

`gcd(1-A050449(n+1)+n, abs(A050457(n+1)))`
-/

namespace A326047.P5005816599197499036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A050449 (n + 1) + (n : ℤ)) |A050457 (n + 1)|

end

end A326047.P5005816599197499036

namespace A326047

/-- `gcd(1-A050449(n+1)+n, abs(A050457(n+1)))` -/
def P5005816599197499036.Spec : Prop :=
  ∀ n, (P5005816599197499036.a n : ℤ) = A326047 (n + 1)

end A326047

/-! ## A326047.P14373346113889162215

`gcd(1-A050452(n+1)+n, -A050457(n+1))`
-/

namespace A326047.P14373346113889162215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A050452 (n + 1) + (n : ℤ)) (-A050457 (n + 1))

end

end A326047.P14373346113889162215

namespace A326047

/-- `gcd(1-A050452(n+1)+n, -A050457(n+1))` -/
def P14373346113889162215.Spec : Prop :=
  ∀ n, (P14373346113889162215.a n : ℤ) = A326047 (n + 1)

end A326047

/-! ## A326047.P15936249452489162437

`gcd(1-A293903(2*(n+1))+n, A326050(n+1)+A033879(n+1))`
-/

namespace A326047.P15936249452489162437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A293903 (2 * (n + 1)) + (n : ℤ)) (A326050 (n + 1) + A033879 (n + 1))

end

end A326047.P15936249452489162437

namespace A326047

/-- `gcd(1-A293903(2*(n+1))+n, A326050(n+1)+A033879(n+1))` -/
def P15936249452489162437.Spec : Prop :=
  ∀ n, (P15936249452489162437.a n : ℤ) = A326047 (n + 1)

end A326047

/-! ## A326047.P2491290333734891397

`gcd(A326048(n+1), A326052(A064505(n+1)))`
-/

namespace A326047.P2491290333734891397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326048 (n + 1)) (A326052 (A064505 (n + 1)).toNat)

end

end A326047.P2491290333734891397

namespace A326047

/-- `gcd(A326048(n+1), A326052(A064505(n+1)))` -/
def P2491290333734891397.Spec : Prop :=
  ∀ n, (P2491290333734891397.a n : ℤ) = A326047 (n + 1)

end A326047

/-! ## A326047.P6597819303733458762

`gcd(A094159(A007590(n)), A326048(n+1))`
-/

namespace A326047.P6597819303733458762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094159 (A007590 n).toNat) (A326048 (n + 1))

end

end A326047.P6597819303733458762

namespace A326047

/-- `gcd(A094159(A007590(n)), A326048(n+1))` -/
def P6597819303733458762.Spec : Prop :=
  ∀ n, (P6597819303733458762.a n : ℤ) = A326047 (n + 1)

end A326047

/-!
# A326048: a(n) = gcd(n-A050449(n), A082052(n)-n), where A050449 and A082052 give the sum of divisors of the form 4k+1, and not of that form, respectively.

The programs for A326048, the canonical program `A326048.P11105980823969462034` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326048 has offset 1).

The definition of A326048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326049, A326050, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326048.P11105980823969462034

`gcd(A326049(n+1), A326050(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A326048

/-- `gcd(A326049(n+1), A326050(n+1))` -/
def P11105980823969462034.Spec : Prop :=
  ∀ n, (P11105980823969462034.a n : ℤ) = A326048 (n + 1)

theorem P11105980823969462034.correct : P11105980823969462034.Spec := by
  intro n
  simp only [A326048, Nat.add_sub_cancel]

end A326048

/-! ## A326048.P1555393206981940105

`gcd(n+1-A050449(n+1), A082052(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326048.P1555393206981940105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A050449 (n + 1)) (A082052 (n + 1) - (n + 1 : ℤ))

end

end A326048.P1555393206981940105

namespace A326048

/-- `gcd(n+1-A050449(n+1), A082052(n+1)-(n+1))` -/
def P1555393206981940105.Spec : Prop :=
  ∀ n, (P1555393206981940105.a n : ℤ) = A326048 (n + 1)

end A326048

/-! ## A326048.P13434047810338511083

`gcd(A326050(n+1), A326068(A103517(n)))`
-/

namespace A326048.P13434047810338511083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326050 (n + 1)) (A326068 (A103517 n).toNat)

end

end A326048.P13434047810338511083

namespace A326048

/-- `gcd(A326050(n+1), A326068(A103517(n)))` -/
def P13434047810338511083.Spec : Prop :=
  ∀ n, (P13434047810338511083.a n : ℤ) = A326048 (n + 1)

end A326048

/-!
# A326049: a(n) = n - A050449(n), where A050449 is the sum of divisors of the form 4k+1.

The programs for A326049, the canonical program `A326049.P12761554379503345949` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326049 has offset 1).

The definition of A326049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326050, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326049.P1677569634402435475

`n+1-A050449(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326049.P1677569634402435475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050449 (n + 1)

end

end A326049.P1677569634402435475

namespace A326049

/-- `n+1-A050449(n+1)` -/
def P1677569634402435475.Spec : Prop :=
  ∀ n, P1677569634402435475.a n = A326049 (n + 1)

theorem P1677569634402435475.correct : P1677569634402435475.Spec := by
  intro n
  simp only [A326049, Nat.add_sub_cancel, A326049.P1677569634402435475.a, A326049.P12761554379503345949.a, A033879, A033879.P11735613842914743111.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A326050, A326050.P4515014402688933711.a, A033880, A033880.P6005875780263802708.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A001065, A001065.P4097147489331274860.a, A166486, A166486.P13501783531280266850.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326049

/-! ## A326049.P12761554379503345949

`A326050(n+1)+A033879(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326049

/-- `A326050(n+1)+A033879(n+1)` -/
def P12761554379503345949.Spec : Prop :=
  ∀ n, P12761554379503345949.a n = A326049 (n + 1)

theorem P12761554379503345949.correct : P12761554379503345949.Spec := by
  intro n
  simp only [A326049, Nat.add_sub_cancel]

end A326049

/-! ## A326049.P7801250671189002880

`1-A082053(A000265(n+1))+n`
-/

namespace A326049.P7801250671189002880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082053 (A000265 (n + 1)).toNat + (n : ℤ)

end

end A326049.P7801250671189002880

namespace A326049

/-- `1-A082053(A000265(n+1))+n` -/
def P7801250671189002880.Spec : Prop :=
  ∀ n, P7801250671189002880.a n = A326049 (n + 1)

end A326049

/-! ## A326049.P13628861006068202285

`A082052(n+1)-A001065(n+1)`
-/

namespace A326049.P13628861006068202285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082052 (n + 1) - A001065 (n + 1)

end

end A326049.P13628861006068202285

namespace A326049

/-- `A082052(n+1)-A001065(n+1)` -/
def P13628861006068202285.Spec : Prop :=
  ∀ n, P13628861006068202285.a n = A326049 (n + 1)

theorem P13628861006068202285.correct : P13628861006068202285.Spec := by
  intro n
  simp only [A326049, Nat.add_sub_cancel, A326049.P13628861006068202285.a, A326049.P12761554379503345949.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A326050, A326050.P4515014402688933711.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326049

/-! ## A326049.P5778305637169427987

`A326050(n+1)-A033880(n+1)`
-/

namespace A326049.P5778305637169427987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326050 (n + 1) - A033880 (n + 1)

end

end A326049.P5778305637169427987

namespace A326049

/-- `A326050(n+1)-A033880(n+1)` -/
def P5778305637169427987.Spec : Prop :=
  ∀ n, P5778305637169427987.a n = A326049 (n + 1)

theorem P5778305637169427987.correct : P5778305637169427987.Spec := by
  intro n
  simp only [A326049, Nat.add_sub_cancel, A326049.P5778305637169427987.a, A326049.P12761554379503345949.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326050, A326050.P4515014402688933711.a, A001065, A001065.P4097147489331274860.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326049

/-! ## A326049.P8540693329638403583

`1-(A000203(n+1)-A082052(n+1))+n`
-/

namespace A326049.P8540693329638403583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000203 (n + 1) - A082052 (n + 1)) + (n : ℤ)

end

end A326049.P8540693329638403583

namespace A326049

/-- `1-(A000203(n+1)-A082052(n+1))+n` -/
def P8540693329638403583.Spec : Prop :=
  ∀ n, P8540693329638403583.a n = A326049 (n + 1)

theorem P8540693329638403583.correct : P8540693329638403583.Spec := by
  intro n
  simp only [A326049, Nat.add_sub_cancel, A326049.P8540693329638403583.a, A326049.P12761554379503345949.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A326050, A326050.P4515014402688933711.a, A033880, A033880.P6005875780263802708.a, A166486, A166486.P13501783531280266850.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326049

/-! ## A326049.P18054266428488522227

`n+1-(A245092(2*n+1)-A082052(n+1))`
-/

namespace A326049.P18054266428488522227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A245092 (2 * n + 1) - A082052 (n + 1))

end

end A326049.P18054266428488522227

namespace A326049

/-- `n+1-(A245092(2*n+1)-A082052(n+1))` -/
def P18054266428488522227.Spec : Prop :=
  ∀ n, P18054266428488522227.a n = A326049 (n + 1)

end A326049

/-! ## A326049.P13085752595864537769

`n+1-(A064987(n+1)/(n+1)-A082052(n+1))`
-/

namespace A326049.P13085752595864537769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A082052 (n + 1) : ℚ))

end

end A326049.P13085752595864537769

namespace A326049

/-- `n+1-(A064987(n+1)/(n+1)-A082052(n+1))` -/
def P13085752595864537769.Spec : Prop :=
  ∀ n, P13085752595864537769.a n = (A326049 (n + 1) : ℚ)

end A326049

/-! ## A326049.P10526039213086696646

`A000027(n+1)-(A155085(n+1)-(n+1)-A082052(n+1))`
-/

namespace A326049.P10526039213086696646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - (A155085 (n + 1) - (n + 1 : ℤ) - A082052 (n + 1))

end

end A326049.P10526039213086696646

namespace A326049

/-- `A000027(n+1)-(A155085(n+1)-(n+1)-A082052(n+1))` -/
def P10526039213086696646.Spec : Prop :=
  ∀ n, P10526039213086696646.a n = A326049 (n + 1)

theorem P10526039213086696646.correct : P10526039213086696646.Spec := by
  intro n
  simp only [A326049, Nat.add_sub_cancel, A326049.P10526039213086696646.a, A326049.P12761554379503345949.a, A000027, A000027.P10331202704469894836.a, A033879, A033879.P11735613842914743111.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A155085, A155085.P3282672389110014595.a, A326050, A326050.P4515014402688933711.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A166486, A166486.P13501783531280266850.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326049

/-! ## A326049.P6967128034355074673

`1-A293901(2*(n+1))+n`
-/

namespace A326049.P6967128034355074673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A293901 (2 * (n + 1)) + (n : ℤ)

end

end A326049.P6967128034355074673

namespace A326049

/-- `1-A293901(2*(n+1))+n` -/
def P6967128034355074673.Spec : Prop :=
  ∀ n, P6967128034355074673.a n = A326049 (n + 1)

end A326049

/-! ## A326049.P12080699902255678356

`A003602(2*n+1)-A363316(A003602(2*(n+1)))`
-/

namespace A326049.P12080699902255678356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * n + 1) - A363316 (A003602 (2 * (n + 1))).toNat

end

end A326049.P12080699902255678356

namespace A326049

/-- `A003602(2*n+1)-A363316(A003602(2*(n+1)))` -/
def P12080699902255678356.Spec : Prop :=
  ∀ n, P12080699902255678356.a n = A326049 (n + 1)

end A326049

/-! ## A326049.P190181595254491947

`n+1-(A245093(∑[n+1])-A082052(n+1))`
-/

namespace A326049.P190181595254491947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) - A082052 (n + 1))

end

end A326049.P190181595254491947

namespace A326049

/-- `n+1-(A245093(∑[n+1])-A082052(n+1))` -/
def P190181595254491947.Spec : Prop :=
  ∀ n, P190181595254491947.a n = A326049 (n + 1)

end A326049

/-!
# A326050: a(n) = A082052(n) - n, where A082052 is the sum of divisors of n that are not of the form 4k+1.

The programs for A326050, the canonical program `A326050.P4515014402688933711` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326050 has offset 1).

The definition of A326050 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326050.P4515014402688933711

`A082052(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A326050

/-- `A082052(n+1)-(n+1)` -/
def P4515014402688933711.Spec : Prop :=
  ∀ n, P4515014402688933711.a n = A326050 (n + 1)

theorem P4515014402688933711.correct : P4515014402688933711.Spec := by
  intro n
  simp only [A326050, Nat.add_sub_cancel]

end A326050

/-! ## A326050.P16511919073959784802

`A326049(n+1)-A033879(n+1)`
-/

namespace A326050.P16511919073959784802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) - A033879 (n + 1)

end

end A326050.P16511919073959784802

namespace A326050

/-- `A326049(n+1)-A033879(n+1)` -/
def P16511919073959784802.Spec : Prop :=
  ∀ n, P16511919073959784802.a n = A326050 (n + 1)

theorem P16511919073959784802.correct : P16511919073959784802.Spec := by
  intro n
  simp only [A326050, Nat.add_sub_cancel, A326050.P16511919073959784802.a, A326050.P4515014402688933711.a, A033879, A033879.P11735613842914743111.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A326049, A326049.P12761554379503345949.a, A033880, A033880.P6005875780263802708.a, A166486, A166486.P13501783531280266850.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326050

/-! ## A326050.P17115893721848113151

`∑{d}[n+1, #]-(n+1)-A050449(n+1)`
-/

namespace A326050.P17115893721848113151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - A050449 (n + 1)

end

end A326050.P17115893721848113151

namespace A326050

/-- `∑{d}[n+1, #]-(n+1)-A050449(n+1)` -/
def P17115893721848113151.Spec : Prop :=
  ∀ n, P17115893721848113151.a n = A326050 (n + 1)

theorem P17115893721848113151.correct : P17115893721848113151.Spec := by
  intro n
  simp only [A326050, Nat.add_sub_cancel, A326050.P17115893721848113151.f1, A326050.P17115893721848113151.a, A326050.P4515014402688933711.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326050

/-! ## A326050.P13359240828432304333

`A326049(n+1)+A033880(n+1)`
-/

namespace A326050.P13359240828432304333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) + A033880 (n + 1)

end

end A326050.P13359240828432304333

namespace A326050

/-- `A326049(n+1)+A033880(n+1)` -/
def P13359240828432304333.Spec : Prop :=
  ∀ n, P13359240828432304333.a n = A326050 (n + 1)

theorem P13359240828432304333.correct : P13359240828432304333.Spec := by
  intro n
  simp only [A326050, Nat.add_sub_cancel, A326050.P13359240828432304333.a, A326050.P4515014402688933711.a, A033880, A033880.P6005875780263802708.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A326049, A326049.P12761554379503345949.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A166486, A166486.P13501783531280266850.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326050

/-! ## A326050.P13499978666605033783

`A001065(n+1)-A050449(n+1)`
-/

namespace A326050.P13499978666605033783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A050449 (n + 1)

end

end A326050.P13499978666605033783

namespace A326050

/-- `A001065(n+1)-A050449(n+1)` -/
def P13499978666605033783.Spec : Prop :=
  ∀ n, P13499978666605033783.a n = A326050 (n + 1)

theorem P13499978666605033783.correct : P13499978666605033783.Spec := by
  intro n
  simp only [A326050, Nat.add_sub_cancel, A326050.P13499978666605033783.a, A326050.P4515014402688933711.a, A001065, A001065.P4097147489331274860.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326050

/-! ## A326050.P16057936370319193169

`A000203(n+1)-(A050449(n+1)+n+1)`
-/

namespace A326050.P16057936370319193169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A050449 (n + 1) + (n + 1 : ℤ))

end

end A326050.P16057936370319193169

namespace A326050

/-- `A000203(n+1)-(A050449(n+1)+n+1)` -/
def P16057936370319193169.Spec : Prop :=
  ∀ n, P16057936370319193169.a n = A326050 (n + 1)

theorem P16057936370319193169.correct : P16057936370319193169.Spec := by
  intro n
  simp only [A326050, Nat.add_sub_cancel, A326050.P16057936370319193169.a, A326050.P4515014402688933711.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A050449, A050449.P3812122387069373176.f1, A050449.P3812122387069373176.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326050

/-! ## A326050.P1439210795491546521

`A001065(n+1)-A293901(2*(n+1))`
-/

namespace A326050.P1439210795491546521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A293901 (2 * (n + 1))

end

end A326050.P1439210795491546521

namespace A326050

/-- `A001065(n+1)-A293901(2*(n+1))` -/
def P1439210795491546521.Spec : Prop :=
  ∀ n, P1439210795491546521.a n = A326050 (n + 1)

end A326050

/-!
# A326051: 1/2 times 3-perfect (triply perfect, tri-perfect, triperfect or sous-double) numbers: a(n) = A005820(n)/2.

The programs for A326051, there is no canonical definition to state claims against.
-/

/-! ## A326051.P7522081206385328822

`A005820(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326051.P7522081206385328822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005820 (n + 1) : ℚ) / 2

end

end A326051.P7522081206385328822

/-!
# A326052: a(n) = n - A050452(n), where A050452 is the sum of divisors of the form 4k+3.

The programs for A326052, the canonical program `A326052.P4438226606935639787` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326052 has offset 1).

The definition of A326052 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326052.P4438226606935639787

`n+1-A050452(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326052

/-- `n+1-A050452(n+1)` -/
def P4438226606935639787.Spec : Prop :=
  ∀ n, P4438226606935639787.a n = A326052 (n + 1)

theorem P4438226606935639787.correct : P4438226606935639787.Spec := by
  intro n
  simp only [A326052, Nat.add_sub_cancel]

end A326052

/-! ## A326052.P16672428881737785777

`A326049(n+1)+A050457(n+1)`
-/

namespace A326052.P16672428881737785777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) + A050457 (n + 1)

end

end A326052.P16672428881737785777

namespace A326052

/-- `A326049(n+1)+A050457(n+1)` -/
def P16672428881737785777.Spec : Prop :=
  ∀ n, P16672428881737785777.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P5374002361772162095

`1-A082052(A000265(n+1))+n`
-/

namespace A326052.P5374002361772162095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A082052 (A000265 (n + 1)).toNat + (n : ℤ)

end

end A326052.P5374002361772162095

namespace A326052

/-- `1-A082052(A000265(n+1))+n` -/
def P5374002361772162095.Spec : Prop :=
  ∀ n, P5374002361772162095.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P13896815211870271033

`A082053(n+1)-A001065(n+1)`
-/

namespace A326052.P13896815211870271033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) - A001065 (n + 1)

end

end A326052.P13896815211870271033

namespace A326052

/-- `A082053(n+1)-A001065(n+1)` -/
def P13896815211870271033.Spec : Prop :=
  ∀ n, P13896815211870271033.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P15968865042916563269

`n+1-A082052(A153733(n)+1)`
-/

namespace A326052.P15968865042916563269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A082052 (A153733 n + 1).toNat

end

end A326052.P15968865042916563269

namespace A326052

/-- `n+1-A082052(A153733(n)+1)` -/
def P15968865042916563269.Spec : Prop :=
  ∀ n, P15968865042916563269.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P2166711461890002077

`1-(A000203(n+1)-A082053(n+1))+n`
-/

namespace A326052.P2166711461890002077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000203 (n + 1) - A082053 (n + 1)) + (n : ℤ)

end

end A326052.P2166711461890002077

namespace A326052

/-- `1-(A000203(n+1)-A082053(n+1))+n` -/
def P2166711461890002077.Spec : Prop :=
  ∀ n, P2166711461890002077.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P4838472865537555550

`1-A082052(n+1)%A000593(n+1)+n`
-/

namespace A326052.P4838472865537555550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A082052 (n + 1)) (A000593 (n + 1)) + (n : ℤ)

end

end A326052.P4838472865537555550

namespace A326052

/-- `1-A082052(n+1)%A000593(n+1)+n` -/
def P4838472865537555550.Spec : Prop :=
  ∀ n, P4838472865537555550.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P16687464107829081643

`A082053(n+1)-(A326050(n+1)+A050449(n+1))`
-/

namespace A326052.P16687464107829081643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (n + 1) - (A326050 (n + 1) + A050449 (n + 1))

end

end A326052.P16687464107829081643

namespace A326052

/-- `A082053(n+1)-(A326050(n+1)+A050449(n+1))` -/
def P16687464107829081643.Spec : Prop :=
  ∀ n, P16687464107829081643.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P10778817629631225878

`1-A293903(2*(n+1))+n`
-/

namespace A326052.P10778817629631225878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A293903 (2 * (n + 1)) + (n : ℤ)

end

end A326052.P10778817629631225878

namespace A326052

/-- `1-A293903(2*(n+1))+n` -/
def P10778817629631225878.Spec : Prop :=
  ∀ n, P10778817629631225878.a n = A326052 (n + 1)

end A326052

/-! ## A326052.P14461971663074796964

`A003602(2*n+1)-A363392(A003602(2*(n+1)))`
-/

namespace A326052.P14461971663074796964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * n + 1) - A363392 (A003602 (2 * (n + 1))).toNat

end

end A326052.P14461971663074796964

namespace A326052

/-- `A003602(2*n+1)-A363392(A003602(2*(n+1)))` -/
def P14461971663074796964.Spec : Prop :=
  ∀ n, P14461971663074796964.a n = A326052 (n + 1)

end A326052

/-!
# A326053: Sum of all other divisors of n except the largest square divisor: a(n) = sigma(n) - A008833(n).

The programs for A326053, the canonical program `A326053.P16383788461503311404` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326053 has offset 1).

The definition of A326053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008833, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326053.P9753402542319442605

`n+1+A326054(n+1)`
-/

namespace A326053.P9753402542319442605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A326054 (n + 1)

end

end A326053.P9753402542319442605

namespace A326053

/-- `n+1+A326054(n+1)` -/
def P9753402542319442605.Spec : Prop :=
  ∀ n, P9753402542319442605.a n = A326053 (n + 1)

theorem P9753402542319442605.correct : P9753402542319442605.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P9753402542319442605.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A326054, A326054.P11521875358712095530.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P16383788461503311404

`A000203(n+1)-A008833(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326053

/-- `A000203(n+1)-A008833(n+1)` -/
def P16383788461503311404.Spec : Prop :=
  ∀ n, P16383788461503311404.a n = A326053 (n + 1)

theorem P16383788461503311404.correct : P16383788461503311404.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel]

end A326053

/-! ## A326053.P3858896826356963041

`∑{d}[n+1, #]-∏{p}[n+1, #^val(n+1, #²)]²`
-/

namespace A326053.P3858896826356963041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ)

end

end A326053.P3858896826356963041

namespace A326053

/-- `∑{d}[n+1, #]-∏{p}[n+1, #^val(n+1, #²)]²` -/
def P3858896826356963041.Spec : Prop :=
  ∀ n, P3858896826356963041.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P5022157646135822485

`∑{d}[n+1, #]-A000188(n+1)²`
-/

namespace A326053.P5022157646135822485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A000188 (n + 1) ^ 2

end

end A326053.P5022157646135822485

namespace A326053

/-- `∑{d}[n+1, #]-A000188(n+1)²` -/
def P5022157646135822485.Spec : Prop :=
  ∀ n, P5022157646135822485.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P3382989485897761060

`Δ[A160664(n)]-A008833(n+1)`
-/

namespace A326053.P3382989485897761060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008833 (n + 1)

end

end A326053.P3382989485897761060

namespace A326053

/-- `Δ[A160664(n)]-A008833(n+1)` -/
def P3382989485897761060.Spec : Prop :=
  ∀ n, P3382989485897761060.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P15961767605408362579

`A326055(n+1)+A001065(n+1)`
-/

namespace A326053.P15961767605408362579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + A001065 (n + 1)

end

end A326053.P15961767605408362579

namespace A326053

/-- `A326055(n+1)+A001065(n+1)` -/
def P15961767605408362579.Spec : Prop :=
  ∀ n, P15961767605408362579.a n = A326053 (n + 1)

theorem P15961767605408362579.correct : P15961767605408362579.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P15961767605408362579.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, A326055, A326055.P11347868664017450431.a, A007913, A007913.P11359412940648999332.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A033880, A033880.P6005875780263802708.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P2381640734609419993

`A000203(n+1)-A000188(n+1)²`
-/

namespace A326053.P2381640734609419993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000188 (n + 1) ^ 2

end

end A326053.P2381640734609419993

namespace A326053

/-- `A000203(n+1)-A000188(n+1)²` -/
def P2381640734609419993.Spec : Prop :=
  ∀ n, P2381640734609419993.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P2781270706439447557

`Δ[A160664(n)]-(A336642(n+1)+1)`
-/

namespace A326053.P2781270706439447557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A336642 (n + 1) + 1)

end

end A326053.P2781270706439447557

namespace A326053

/-- `Δ[A160664(n)]-(A336642(n+1)+1)` -/
def P2781270706439447557.Spec : Prop :=
  ∀ n, P2781270706439447557.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P9538559264259735110

`A088580(n+1)-(A008833(n+1)+1)`
-/

namespace A326053.P9538559264259735110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A008833 (n + 1) + 1)

end

end A326053.P9538559264259735110

namespace A326053

/-- `A088580(n+1)-(A008833(n+1)+1)` -/
def P9538559264259735110.Spec : Prop :=
  ∀ n, P9538559264259735110.a n = A326053 (n + 1)

theorem P9538559264259735110.correct : P9538559264259735110.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P9538559264259735110.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A088580, A088580.P3089093194242277422.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P13471327519348763117

`A000203(n+1)-(A336642(n+1)+1)`
-/

namespace A326053.P13471327519348763117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A336642 (n + 1) + 1)

end

end A326053.P13471327519348763117

namespace A326053

/-- `A000203(n+1)-(A336642(n+1)+1)` -/
def P13471327519348763117.Spec : Prop :=
  ∀ n, P13471327519348763117.a n = A326053 (n + 1)

theorem P13471327519348763117.correct : P13471327519348763117.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P13471327519348763117.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A336642, A336642.P17825345798901579858.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P8063891515051202032

`A237588(n+1)+A326055(n+1)+n`
-/

namespace A326053.P8063891515051202032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (A326055 (n + 1) + (n : ℤ))

end

end A326053.P8063891515051202032

namespace A326053

/-- `A237588(n+1)+A326055(n+1)+n` -/
def P8063891515051202032.Spec : Prop :=
  ∀ n, P8063891515051202032.a n = A326053 (n + 1)

theorem P8063891515051202032.correct : P8063891515051202032.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P8063891515051202032.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A237588, A237588.P7919289499905681947.a, A326055, A326055.P11347868664017450431.a, A007913, A007913.P11359412940648999332.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326054, A326054.P11521875358712095530.a, A001065, A001065.P4097147489331274860.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P6050601488186000684

`A326055(n+1)-A235796(n+1)+n`
-/

namespace A326053.P6050601488186000684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) - A235796 (n + 1) + (n : ℤ)

end

end A326053.P6050601488186000684

namespace A326053

/-- `A326055(n+1)-A235796(n+1)+n` -/
def P6050601488186000684.Spec : Prop :=
  ∀ n, P6050601488186000684.a n = A326053 (n + 1)

theorem P6050601488186000684.correct : P6050601488186000684.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P6050601488186000684.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A235796, A235796.P10282550748648679139.a, A326055, A326055.P11347868664017450431.a, A007913, A007913.P11359412940648999332.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A033880, A033880.P6005875780263802708.a, A059479, A059479.P17464652159649958448.a, A001065, A001065.P4097147489331274860.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P3219396536553282344

`A000203(n+1)-(A057918(n+1)+1)²`
-/

namespace A326053.P3219396536553282344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A057918 (n + 1) + 1) ^ 2

end

end A326053.P3219396536553282344

namespace A326053

/-- `A000203(n+1)-(A057918(n+1)+1)²` -/
def P3219396536553282344.Spec : Prop :=
  ∀ n, P3219396536553282344.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P7508139528086062306

`A088580(n+1)-(A000188(n+1)²+1)`
-/

namespace A326053.P7508139528086062306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A000188 (n + 1) ^ 2 + 1)

end

end A326053.P7508139528086062306

namespace A326053

/-- `A088580(n+1)-(A000188(n+1)²+1)` -/
def P7508139528086062306.Spec : Prop :=
  ∀ n, P7508139528086062306.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P4477513240859388530

`A001065(n+1)+1+n-A008833(n+1)`
-/

namespace A326053.P4477513240859388530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A008833 (n + 1)

end

end A326053.P4477513240859388530

namespace A326053

/-- `A001065(n+1)+1+n-A008833(n+1)` -/
def P4477513240859388530.Spec : Prop :=
  ∀ n, P4477513240859388530.a n = A326053 (n + 1)

theorem P4477513240859388530.correct : P4477513240859388530.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P4477513240859388530.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P4723127066396842881

`A000203(n+1)+A326055(n+1)-(n+1)`
-/

namespace A326053.P4723127066396842881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A326055 (n + 1) - (n + 1 : ℤ))

end

end A326053.P4723127066396842881

namespace A326053

/-- `A000203(n+1)+A326055(n+1)-(n+1)` -/
def P4723127066396842881.Spec : Prop :=
  ∀ n, P4723127066396842881.a n = A326053 (n + 1)

theorem P4723127066396842881.correct : P4723127066396842881.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P4723127066396842881.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A326055, A326055.P11347868664017450431.a, A007913, A007913.P11359412940648999332.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A033880, A033880.P6005875780263802708.a, A059479, A059479.P17464652159649958448.a, A001065, A001065.P4097147489331274860.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P14540078775577232354

`2*(n+1)-A033879(n+1)-A008833(n+1)`
-/

namespace A326053.P14540078775577232354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A008833 (n + 1)

end

end A326053.P14540078775577232354

namespace A326053

/-- `2*(n+1)-A033879(n+1)-A008833(n+1)` -/
def P14540078775577232354.Spec : Prop :=
  ∀ n, P14540078775577232354.a n = A326053 (n + 1)

theorem P14540078775577232354.correct : P14540078775577232354.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P14540078775577232354.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A007913, A007913.P11359412940648999332.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326053

/-! ## A326053.P1966814025971400037

`A285309(n+1)-A326058(A008833(n+1))`
-/

namespace A326053.P1966814025971400037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) - A326058 (A008833 (n + 1)).toNat

end

end A326053.P1966814025971400037

namespace A326053

/-- `A285309(n+1)-A326058(A008833(n+1))` -/
def P1966814025971400037.Spec : Prop :=
  ∀ n, P1966814025971400037.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P2575199305425656536

`A000203(n+1)-A019554(A003557(n+1))²`
-/

namespace A326053.P2575199305425656536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A019554 (A003557 (n + 1)).toNat ^ 2

end

end A326053.P2575199305425656536

namespace A326053

/-- `A000203(n+1)-A019554(A003557(n+1))²` -/
def P2575199305425656536.Spec : Prop :=
  ∀ n, P2575199305425656536.a n = A326053 (n + 1)

end A326053

/-! ## A326053.P9971957020086892741

`A326055(n+1)+A000217(n)-A024816(n+1)`
-/

namespace A326053.P9971957020086892741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + (A000217 n - A024816 (n + 1))

end

end A326053.P9971957020086892741

namespace A326053

/-- `A326055(n+1)+A000217(n)-A024816(n+1)` -/
def P9971957020086892741.Spec : Prop :=
  ∀ n, P9971957020086892741.a n = A326053 (n + 1)

theorem P9971957020086892741.correct : P9971957020086892741.Spec := by
  intro n
  simp only [A326053, Nat.add_sub_cancel, A326053.P9971957020086892741.a, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A008833, A008833.P18388074464065390543.a, A024816, A024816.P10728806423584859610.a, A326055, A326055.P11347868664017450431.a, A007913, A007913.P11359412940648999332.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A033880, A033880.P6005875780263802708.a, A059479, A059479.P17464652159649958448.a, A001065, A001065.P4097147489331274860.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A326053

/-!
# A326054: a(n) = A326053(n) - n, where A326053 gives the sum of all other divisors of n except the largest square divisor.

The programs for A326054, the canonical program `A326054.P11521875358712095530` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326054 has offset 1).

The definition of A326054 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326053, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326054.P11521875358712095530

`A326053(n+1)-(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A326054

/-- `A326053(n+1)-(n+1)` -/
def P11521875358712095530.Spec : Prop :=
  ∀ n, P11521875358712095530.a n = A326054 (n + 1)

theorem P11521875358712095530.correct : P11521875358712095530.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel]

end A326054

/-! ## A326054.P9568282977600541670

`A326055(n+1)-A033879(n+1)`
-/

namespace A326054.P9568282977600541670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) - A033879 (n + 1)

end

end A326054.P9568282977600541670

namespace A326054

/-- `A326055(n+1)-A033879(n+1)` -/
def P9568282977600541670.Spec : Prop :=
  ∀ n, P9568282977600541670.a n = A326054 (n + 1)

theorem P9568282977600541670.correct : P9568282977600541670.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P9568282977600541670.a, A326054.P11521875358712095530.a, A033879, A033879.P11735613842914743111.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P16050907751834384422

`A000203(n+1)-A008833(n+1)-(n+1)`
-/

namespace A326054.P16050907751834384422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008833 (n + 1) - (n + 1 : ℤ)

end

end A326054.P16050907751834384422

namespace A326054

/-- `A000203(n+1)-A008833(n+1)-(n+1)` -/
def P16050907751834384422.Spec : Prop :=
  ∀ n, P16050907751834384422.a n = A326054 (n + 1)

end A326054

/-! ## A326054.P11089081941078085484

`A326055(n+1)+A033880(n+1)`
-/

namespace A326054.P11089081941078085484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + A033880 (n + 1)

end

end A326054.P11089081941078085484

namespace A326054

/-- `A326055(n+1)+A033880(n+1)` -/
def P11089081941078085484.Spec : Prop :=
  ∀ n, P11089081941078085484.a n = A326054 (n + 1)

theorem P11089081941078085484.correct : P11089081941078085484.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P11089081941078085484.a, A326054.P11521875358712095530.a, A033880, A033880.P6005875780263802708.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P16129779161129358998

`A001065(n+1)-A008833(n+1)`
-/

namespace A326054.P16129779161129358998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A008833 (n + 1)

end

end A326054.P16129779161129358998

namespace A326054

/-- `A001065(n+1)-A008833(n+1)` -/
def P16129779161129358998.Spec : Prop :=
  ∀ n, P16129779161129358998.a n = A326054 (n + 1)

theorem P16129779161129358998.correct : P16129779161129358998.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P16129779161129358998.a, A326054.P11521875358712095530.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, A326053, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P4647448857542829959

`A001065(n+1)-A000188(n+1)²`
-/

namespace A326054.P4647448857542829959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000188 (n + 1) ^ 2

end

end A326054.P4647448857542829959

namespace A326054

/-- `A001065(n+1)-A000188(n+1)²` -/
def P4647448857542829959.Spec : Prop :=
  ∀ n, P4647448857542829959.a n = A326054 (n + 1)

end A326054

/-! ## A326054.P1914498186758442777

`A326055(n+1)-(A235796(n+1)+1)`
-/

namespace A326054.P1914498186758442777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) - (A235796 (n + 1) + 1)

end

end A326054.P1914498186758442777

namespace A326054

/-- `A326055(n+1)-(A235796(n+1)+1)` -/
def P1914498186758442777.Spec : Prop :=
  ∀ n, P1914498186758442777.a n = A326054 (n + 1)

theorem P1914498186758442777.correct : P1914498186758442777.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P1914498186758442777.a, A326054.P11521875358712095530.a, A235796, A235796.P10282550748648679139.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A007913, A007913.P11359412940648999332.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P17138756725829751976

`A237588(n+1)+A326055(n+1)-1`
-/

namespace A326054.P17138756725829751976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + (A326055 (n + 1) - 1)

end

end A326054.P17138756725829751976

namespace A326054

/-- `A237588(n+1)+A326055(n+1)-1` -/
def P17138756725829751976.Spec : Prop :=
  ∀ n, P17138756725829751976.a n = A326054 (n + 1)

theorem P17138756725829751976.correct : P17138756725829751976.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P17138756725829751976.a, A326054.P11521875358712095530.a, A237588, A237588.P7919289499905681947.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P3933871266961655968

`A326055(n+1)+A001065(n+1)-(n+1)`
-/

namespace A326054.P3933871266961655968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + (A001065 (n + 1) - (n + 1 : ℤ))

end

end A326054.P3933871266961655968

namespace A326054

/-- `A326055(n+1)+A001065(n+1)-(n+1)` -/
def P3933871266961655968.Spec : Prop :=
  ∀ n, P3933871266961655968.a n = A326054 (n + 1)

theorem P3933871266961655968.correct : P3933871266961655968.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P3933871266961655968.a, A326054.P11521875358712095530.a, A001065, A001065.P4097147489331274860.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A007913, A007913.P11359412940648999332.a, A033880, A033880.P6005875780263802708.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P15999717313518909307

`A000203(n+1)-(A000188(n+1)²+n+1)`
-/

namespace A326054.P15999717313518909307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A000188 (n + 1) ^ 2 + (n + 1 : ℤ))

end

end A326054.P15999717313518909307

namespace A326054

/-- `A000203(n+1)-(A000188(n+1)²+n+1)` -/
def P15999717313518909307.Spec : Prop :=
  ∀ n, P15999717313518909307.a n = A326054 (n + 1)

end A326054

/-! ## A326054.P403813559953202861

`A326055(n+1)+A000203(n+1)-2*(n+1)`
-/

namespace A326054.P403813559953202861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + (A000203 (n + 1) - (2 * (n + 1) : ℤ))

end

end A326054.P403813559953202861

namespace A326054

/-- `A326055(n+1)+A000203(n+1)-2*(n+1)` -/
def P403813559953202861.Spec : Prop :=
  ∀ n, P403813559953202861.a n = A326054 (n + 1)

theorem P403813559953202861.correct : P403813559953202861.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P403813559953202861.a, A326054.P11521875358712095530.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A007913, A007913.P11359412940648999332.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P14323861256403242828

`A326059(n+1)-A326058(A008833(n+1))`
-/

namespace A326054.P14323861256403242828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) - A326058 (A008833 (n + 1)).toNat

end

end A326054.P14323861256403242828

namespace A326054

/-- `A326059(n+1)-A326058(A008833(n+1))` -/
def P14323861256403242828.Spec : Prop :=
  ∀ n, P14323861256403242828.a n = A326054 (n + 1)

end A326054

/-! ## A326054.P11647920262390682246

`A007913(n+1)+A326127(n+1)-A008833(n+1)`
-/

namespace A326054.P11647920262390682246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (A326127 (n + 1) - A008833 (n + 1))

end

end A326054.P11647920262390682246

namespace A326054

/-- `A007913(n+1)+A326127(n+1)-A008833(n+1)` -/
def P11647920262390682246.Spec : Prop :=
  ∀ n, P11647920262390682246.a n = A326054 (n + 1)

theorem P11647920262390682246.correct : P11647920262390682246.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P11647920262390682246.a, A326054.P11521875358712095530.a, A007913, A007913.P11359412940648999332.a, A008833, A008833.P18388074464065390543.a, A326053, A326053.P16383788461503311404.a, A326127, A326127.P6827603046472699184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059479, A059479.P17464652159649958448.a, A326126, A326126.P126110095243043684.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P13955226950026960373

`A007947(n+1)+A326143(n+1)-A008833(n+1)`
-/

namespace A326054.P13955226950026960373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + (A326143 (n + 1) - A008833 (n + 1))

end

end A326054.P13955226950026960373

namespace A326054

/-- `A007947(n+1)+A326143(n+1)-A008833(n+1)` -/
def P13955226950026960373.Spec : Prop :=
  ∀ n, P13955226950026960373.a n = A326054 (n + 1)

theorem P13955226950026960373.correct : P13955226950026960373.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P13955226950026960373.a, A326054.P11521875358712095530.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008833, A008833.P18388074464065390543.a, A326053, A326053.P16383788461503311404.a, A326143, A326143.P176859411368788289.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A326142, A326142.P15415912859726343761.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P2258954908808584545

`A285309(n+1)-(A326058(n+1)+A008833(n+1))`
-/

namespace A326054.P2258954908808584545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) - (A326058 (n + 1) + A008833 (n + 1))

end

end A326054.P2258954908808584545

namespace A326054

/-- `A285309(n+1)-(A326058(n+1)+A008833(n+1))` -/
def P2258954908808584545.Spec : Prop :=
  ∀ n, P2258954908808584545.a n = A326054 (n + 1)

theorem P2258954908808584545.correct : P2258954908808584545.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P2258954908808584545.a, A326054.P11521875358712095530.a, A008833, A008833.P18388074464065390543.a, A285309, A285309.P12080858862407877190.a, A326053, A326053.P16383788461503311404.a, A326058, A326058.P945554037685919267.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A059479, A059479.P17464652159649958448.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P17741636563223163687

`A326039(n+1)+A326045(n+1)-A008833(n+1)`
-/

namespace A326054.P17741636563223163687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326039 (n + 1) + (A326045 (n + 1) - A008833 (n + 1))

end

end A326054.P17741636563223163687

namespace A326054

/-- `A326039(n+1)+A326045(n+1)-A008833(n+1)` -/
def P17741636563223163687.Spec : Prop :=
  ∀ n, P17741636563223163687.a n = A326054 (n + 1)

theorem P17741636563223163687.correct : P17741636563223163687.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P17741636563223163687.a, A326054.P11521875358712095530.a, A008833, A008833.P18388074464065390543.a, A326039, A326039.P9256592062457246146.a, A326045, A326045.P9050702323358522594.a, A326053, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A326038, A326038.P7461773891542618718.a, A326040, A326040.P15308237361060723767.a, A000188, A000188.P7486858720566838181.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326054

/-! ## A326054.P14661251605576770068

`A326040(n+1)-(A326044(n+1)+A008833(n+1))`
-/

namespace A326054.P14661251605576770068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326040 (n + 1) - (A326044 (n + 1) + A008833 (n + 1))

end

end A326054.P14661251605576770068

namespace A326054

/-- `A326040(n+1)-(A326044(n+1)+A008833(n+1))` -/
def P14661251605576770068.Spec : Prop :=
  ∀ n, P14661251605576770068.a n = A326054 (n + 1)

theorem P14661251605576770068.correct : P14661251605576770068.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P14661251605576770068.a, A326054.P11521875358712095530.a, A008833, A008833.P18388074464065390543.a, A326040, A326040.P15308237361060723767.a, A326044, A326044.P15136315853744446267.a, A326053, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A033879, A033879.P11735613842914743111.a, A326039, A326039.P9256592062457246146.a, A326045, A326045.P9050702323358522594.a, A033880, A033880.P6005875780263802708.a, A059479, A059479.P17464652159649958448.a, A326038, A326038.P7461773891542618718.a, A000188, A000188.P7486858720566838181.a, A001065, A001065.P4097147489331274860.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A326054

/-! ## A326054.P9376418045368664366

`A326126(n+1)-(A326128(n+1)+A008833(n+1))`
-/

namespace A326054.P9376418045368664366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326126 (n + 1) - (A326128 (n + 1) + A008833 (n + 1))

end

end A326054.P9376418045368664366

namespace A326054

/-- `A326126(n+1)-(A326128(n+1)+A008833(n+1))` -/
def P9376418045368664366.Spec : Prop :=
  ∀ n, P9376418045368664366.a n = A326054 (n + 1)

theorem P9376418045368664366.correct : P9376418045368664366.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P9376418045368664366.a, A326054.P11521875358712095530.a, A008833, A008833.P18388074464065390543.a, A326053, A326053.P16383788461503311404.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P12772856644185956010

`A326055(n+1)+A326059(n+1)-A326058(n+1)`
-/

namespace A326054.P12772856644185956010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + (A326059 (n + 1) - A326058 (n + 1))

end

end A326054.P12772856644185956010

namespace A326054

/-- `A326055(n+1)+A326059(n+1)-A326058(n+1)` -/
def P12772856644185956010.Spec : Prop :=
  ∀ n, P12772856644185956010.a n = A326054 (n + 1)

theorem P12772856644185956010.correct : P12772856644185956010.Spec := by
  intro n
  simp only [A326054, Nat.add_sub_cancel, A326054.P12772856644185956010.a, A326054.P11521875358712095530.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A326058, A326058.P945554037685919267.a, A326059, A326059.P8887039783102292576.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A007913, A007913.P11359412940648999332.a, A033880, A033880.P6005875780263802708.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A001065, A001065.P4097147489331274860.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326054

/-! ## A326054.P4807875011644785402

`A326055(n+1)+A336563(n+1)-A336564(n+1)`
-/

namespace A326054.P4807875011644785402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) + (A336563 (n + 1) - A336564 (n + 1))

end

end A326054.P4807875011644785402

namespace A326054

/-- `A326055(n+1)+A336563(n+1)-A336564(n+1)` -/
def P4807875011644785402.Spec : Prop :=
  ∀ n, P4807875011644785402.a n = A326054 (n + 1)

end A326054

/-!
# A326055: a(n) = n - {the largest square that divides n}.

The programs for A326055, the canonical program `A326055.P11347868664017450431` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326055 has offset 1).

The definition of A326055 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326054, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326055.P3212615202244916256

`n+1-A008833(n+1)`
-/

namespace A326055.P3212615202244916256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008833 (n + 1)

end

end A326055.P3212615202244916256

namespace A326055

/-- `n+1-A008833(n+1)` -/
def P3212615202244916256.Spec : Prop :=
  ∀ n, P3212615202244916256.a n = A326055 (n + 1)

theorem P3212615202244916256.correct : P3212615202244916256.Spec := by
  intro n
  simp only [A326055, Nat.add_sub_cancel, A326055.P3212615202244916256.a, A326055.P11347868664017450431.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A007913, A007913.P11359412940648999332.a, A033880, A033880.P6005875780263802708.a, A326053, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326055

/-! ## A326055.P11347868664017450431

`A326054(n+1)+A033879(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A326055

/-- `A326054(n+1)+A033879(n+1)` -/
def P11347868664017450431.Spec : Prop :=
  ∀ n, P11347868664017450431.a n = A326055 (n + 1)

theorem P11347868664017450431.correct : P11347868664017450431.Spec := by
  intro n
  simp only [A326055, Nat.add_sub_cancel]

end A326055

/-! ## A326055.P8266630834696858009

`n-(∏{p}[n+1, #^val(n+1, #²)]²-1)`
-/

namespace A326055.P8266630834696858009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) - 1)

end

end A326055.P8266630834696858009

namespace A326055

/-- `n-(∏{p}[n+1, #^val(n+1, #²)]²-1)` -/
def P8266630834696858009.Spec : Prop :=
  ∀ n, P8266630834696858009.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P8377316159050583332

`n-A336642(n+1)`
-/

namespace A326055.P8377316159050583332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A336642 (n + 1)

end

end A326055.P8377316159050583332

namespace A326055

/-- `n-A336642(n+1)` -/
def P8377316159050583332.Spec : Prop :=
  ∀ n, P8377316159050583332.a n = A326055 (n + 1)

theorem P8377316159050583332.correct : P8377316159050583332.Spec := by
  intro n
  simp only [A326055, Nat.add_sub_cancel, A326055.P8377316159050583332.a, A326055.P11347868664017450431.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A336642, A336642.P17825345798901579858.a, A008833, A008833.P18388074464065390543.a, A033880, A033880.P6005875780263802708.a, A326053, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326055

/-! ## A326055.P5370963499148309115

`1-A000188(n+1)²+n`
-/

namespace A326055.P5370963499148309115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000188 (n + 1) ^ 2 + (n : ℤ)

end

end A326055.P5370963499148309115

namespace A326055

/-- `1-A000188(n+1)²+n` -/
def P5370963499148309115.Spec : Prop :=
  ∀ n, P5370963499148309115.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P14600961796209946675

`n-floor(n/A007913(n+1))`
-/

namespace A326055.P14600961796209946675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A007913 (n + 1) : ℚ)⌋

end

end A326055.P14600961796209946675

namespace A326055

/-- `n-floor(n/A007913(n+1))` -/
def P14600961796209946675.Spec : Prop :=
  ∀ n, P14600961796209946675.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P1145907545857474909

`n+1-A337101(2*(n+1))²`
-/

namespace A326055.P1145907545857474909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A337101 (2 * (n + 1)) ^ 2

end

end A326055.P1145907545857474909

namespace A326055

/-- `n+1-A337101(2*(n+1))²` -/
def P1145907545857474909.Spec : Prop :=
  ∀ n, P1145907545857474909.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P7911352989056219338

`n+1-((n+1)/A019554(n+1))²`
-/

namespace A326055.P7911352989056219338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ)) ^ 2

end

end A326055.P7911352989056219338

namespace A326055

/-- `n+1-((n+1)/A019554(n+1))²` -/
def P7911352989056219338.Spec : Prop :=
  ∀ n, P7911352989056219338.a n = (A326055 (n + 1) : ℚ)

end A326055

/-! ## A326055.P5804545689339705137

`n-A005563(A057918(n+1))`
-/

namespace A326055.P5804545689339705137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005563 (A057918 (n + 1)).toNat

end

end A326055.P5804545689339705137

namespace A326055

/-- `n-A005563(A057918(n+1))` -/
def P5804545689339705137.Spec : Prop :=
  ∀ n, P5804545689339705137.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P15915610855022884937

`n-A255131(A008833(n+1))`
-/

namespace A326055.P15915610855022884937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A255131 (A008833 (n + 1)).toNat

end

end A326055.P15915610855022884937

namespace A326055

/-- `n-A255131(A008833(n+1))` -/
def P15915610855022884937.Spec : Prop :=
  ∀ n, P15915610855022884937.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P2041086370466706167

`n-A326128(A000188(n+1)²)`
-/

namespace A326055.P2041086370466706167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A326128 (A000188 (n + 1) ^ 2).toNat

end

end A326055.P2041086370466706167

namespace A326055

/-- `n-A326128(A000188(n+1)²)` -/
def P2041086370466706167.Spec : Prop :=
  ∀ n, P2041086370466706167.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P2384113342857440962

`1-A053143(A003557(n+1))+n`
-/

namespace A326055.P2384113342857440962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053143 (A003557 (n + 1)).toNat + (n : ℤ)

end

end A326055.P2384113342857440962

namespace A326055

/-- `1-A053143(A003557(n+1))+n` -/
def P2384113342857440962.Spec : Prop :=
  ∀ n, P2384113342857440962.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P2326408311871307145

`A326053(n+1)-A001065(n+1)`
-/

namespace A326055.P2326408311871307145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326053 (n + 1) - A001065 (n + 1)

end

end A326055.P2326408311871307145

namespace A326055

/-- `A326053(n+1)-A001065(n+1)` -/
def P2326408311871307145.Spec : Prop :=
  ∀ n, P2326408311871307145.a n = A326055 (n + 1)

theorem P2326408311871307145.correct : P2326408311871307145.Spec := by
  intro n
  simp only [A326055, Nat.add_sub_cancel, A326055.P2326408311871307145.a, A326055.P11347868664017450431.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A326053, A326053.P16383788461503311404.a, A326054, A326054.P11521875358712095530.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033880, A033880.P6005875780263802708.a, A007913, A007913.P11359412940648999332.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326055

/-! ## A326055.P5821146776470992417

`A326054(n+1)-A033880(n+1)`
-/

namespace A326055.P5821146776470992417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326054 (n + 1) - A033880 (n + 1)

end

end A326055.P5821146776470992417

namespace A326055

/-- `A326054(n+1)-A033880(n+1)` -/
def P5821146776470992417.Spec : Prop :=
  ∀ n, P5821146776470992417.a n = A326055 (n + 1)

theorem P5821146776470992417.correct : P5821146776470992417.Spec := by
  intro n
  simp only [A326055, Nat.add_sub_cancel, A326055.P5821146776470992417.a, A326055.P11347868664017450431.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326054, A326054.P11521875358712095530.a, A001065, A001065.P4097147489331274860.a, A326053, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326055

/-! ## A326055.P646255545586288364

`1-A162400(A235872(n+1))+n`
-/

namespace A326055.P646255545586288364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A162400 (A235872 (n + 1)).toNat + (n : ℤ)

end

end A326055.P646255545586288364

namespace A326055

/-- `1-A162400(A235872(n+1))+n` -/
def P646255545586288364.Spec : Prop :=
  ∀ n, P646255545586288364.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P18288575177311950100

`1-A235872(A214682(n+1))+n`
-/

namespace A326055.P18288575177311950100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A235872 (A214682 (n + 1)).toNat + (n : ℤ)

end

end A326055.P18288575177311950100

namespace A326055

/-- `1-A235872(A214682(n+1))+n` -/
def P18288575177311950100.Spec : Prop :=
  ∀ n, P18288575177311950100.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P2990864150224177199

`n-A005563(A000188(n+1)-1)`
-/

namespace A326055.P2990864150224177199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005563 (A000188 (n + 1) - 1).toNat

end

end A326055.P2990864150224177199

namespace A326055

/-- `n-A005563(A000188(n+1)-1)` -/
def P2990864150224177199.Spec : Prop :=
  ∀ n, P2990864150224177199.a n = A326055 (n + 1)

end A326055

/-! ## A326055.P7947893812155085922

`n-A326128(n+1)/A007913(n+1)`
-/

namespace A326055.P7947893812155085922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A326128 (n + 1) : ℚ) / (A007913 (n + 1) : ℚ)

end

end A326055.P7947893812155085922

namespace A326055

/-- `n-A326128(n+1)/A007913(n+1)` -/
def P7947893812155085922.Spec : Prop :=
  ∀ n, P7947893812155085922.a n = (A326055 (n + 1) : ℚ)

end A326055

/-! ## A326055.P4818002496751267859

`A326054(n+1)+n+1-A001065(n+1)`
-/

namespace A326055.P4818002496751267859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326054 (n + 1) + ((n + 1 : ℤ) - A001065 (n + 1))

end

end A326055.P4818002496751267859

namespace A326055

/-- `A326054(n+1)+n+1-A001065(n+1)` -/
def P4818002496751267859.Spec : Prop :=
  ∀ n, P4818002496751267859.a n = A326055 (n + 1)

theorem P4818002496751267859.correct : P4818002496751267859.Spec := by
  intro n
  simp only [A326055, Nat.add_sub_cancel, A326055.P4818002496751267859.a, A326055.P11347868664017450431.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A326053, A326053.P16383788461503311404.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326055

/-! ## A326055.P8499461029624498912

`A326054(n+1)+2*(n+1)-A000203(n+1)`
-/

namespace A326055.P8499461029624498912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326054 (n + 1) + ((2 * (n + 1) : ℤ) - A000203 (n + 1))

end

end A326055.P8499461029624498912

namespace A326055

/-- `A326054(n+1)+2*(n+1)-A000203(n+1)` -/
def P8499461029624498912.Spec : Prop :=
  ∀ n, P8499461029624498912.a n = A326055 (n + 1)

theorem P8499461029624498912.correct : P8499461029624498912.Spec := by
  intro n
  simp only [A326055, Nat.add_sub_cancel, A326055.P8499461029624498912.a, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A326054, A326054.P11521875358712095530.a, A033880, A033880.P6005875780263802708.a, A326053, A326053.P16383788461503311404.a, A001065, A001065.P4097147489331274860.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326055

/-!
# A326056: a(n) = gcd(sigma(n)-A008833(n)-n, n-A008833(n)), where sigma is the sum of divisors of n, and A008833 is the largest square dividing n.

The programs for A326056, the canonical program `A326056.P1492137726313948475` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326056 has offset 1).

The definition of A326056 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326054, A326055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326056.P1492137726313948475

`gcd(A326054(n+1), A326055(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A326056

/-- `gcd(A326054(n+1), A326055(n+1))` -/
def P1492137726313948475.Spec : Prop :=
  ∀ n, (P1492137726313948475.a n : ℤ) = A326056 (n + 1)

theorem P1492137726313948475.correct : P1492137726313948475.Spec := by
  intro n
  simp only [A326056, Nat.add_sub_cancel]

end A326056

/-! ## A326056.P10542892579948598972

`gcd(A000203(n+1)-A008833(n+1)-(n+1), n+1-A008833(n+1))`
-/

namespace A326056.P10542892579948598972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) - A008833 (n + 1) - (n + 1 : ℤ)) ((n + 1 : ℤ) - A008833 (n + 1))

end

end A326056.P10542892579948598972

namespace A326056

/-- `gcd(A000203(n+1)-A008833(n+1)-(n+1), n+1-A008833(n+1))` -/
def P10542892579948598972.Spec : Prop :=
  ∀ n, (P10542892579948598972.a n : ℤ) = A326056 (n + 1)

theorem P10542892579948598972.correct : P10542892579948598972.Spec := by
  intro n
  simp only [A326056, Nat.add_sub_cancel, A326056.P10542892579948598972.a, A326056.P1492137726313948475.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A326054, A326054.P11521875358712095530.a, A326055, A326055.P11347868664017450431.a, A007913, A007913.P11359412940648999332.a, A033879, A033879.P11735613842914743111.a, A326053, A326053.P16383788461503311404.a, A033880, A033880.P6005875780263802708.a, A059479, A059479.P17464652159649958448.a, A001065, A001065.P4097147489331274860.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326056

/-! ## A326056.P15176304610821513655

`gcd(2*(n+1)-∑{d}[n+1, #], ∏{p}[n+1, #^val(n+1, #²)]²-(n+1))`
-/

namespace A326056.P15176304610821513655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)) ((((∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℤ) - (n + 1 : ℤ))

end

end A326056.P15176304610821513655

namespace A326056

/-- `gcd(2*(n+1)-∑{d}[n+1, #], ∏{p}[n+1, #^val(n+1, #²)]²-(n+1))` -/
def P15176304610821513655.Spec : Prop :=
  ∀ n, (P15176304610821513655.a n : ℤ) = A326056 (n + 1)

end A326056

/-! ## A326056.P12705861129410597036

`gcd(-A033880(n+1), -A326054(n+1))`
-/

namespace A326056.P12705861129410597036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033880 (n + 1)) (-A326054 (n + 1))

end

end A326056.P12705861129410597036

namespace A326056

/-- `gcd(-A033880(n+1), -A326054(n+1))` -/
def P12705861129410597036.Spec : Prop :=
  ∀ n, (P12705861129410597036.a n : ℤ) = A326056 (n + 1)

end A326056

/-! ## A326056.P4112194414633062055

`gcd(A235796(n+1)+1, A326055(A000027(n+1)))`
-/

namespace A326056.P4112194414633062055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235796 (n + 1) + 1) (A326055 (A000027 (n + 1)).toNat)

end

end A326056.P4112194414633062055

namespace A326056

/-- `gcd(A235796(n+1)+1, A326055(A000027(n+1)))` -/
def P4112194414633062055.Spec : Prop :=
  ∀ n, (P4112194414633062055.a n : ℤ) = A326056 (n + 1)

end A326056

/-! ## A326056.P15490438939065336592

`gcd(A326054(n+1), A326068(A103517(n)))`
-/

namespace A326056.P15490438939065336592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326054 (n + 1)) (A326068 (A103517 n).toNat)

end

end A326056.P15490438939065336592

namespace A326056

/-- `gcd(A326054(n+1), A326068(A103517(n)))` -/
def P15490438939065336592.Spec : Prop :=
  ∀ n, (P15490438939065336592.a n : ℤ) = A326056 (n + 1)

end A326056

/-!
# A326057: a(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

The programs for A326057, the canonical program `A326057.P4093988284064827048` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326057 has offset 1).

The definition of A326057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252748, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326057.P4093988284064827048

`gcd(A252748(n+1), A033879(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A326057

/-- `gcd(A252748(n+1), A033879(n+1))` -/
def P4093988284064827048.Spec : Prop :=
  ∀ n, (P4093988284064827048.a n : ℤ) = A326057 (n + 1)

theorem P4093988284064827048.correct : P4093988284064827048.Spec := by
  intro n
  simp only [A326057, Nat.add_sub_cancel]

end A326057

/-! ## A326057.P18334027102489358810

`gcd(A003961(n+1)-2*(n+1), A003961(n+1)-A000203(n+1))`
-/

namespace A326057.P18334027102489358810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1) - (2 * (n + 1) : ℤ)) (A003961 (n + 1) - A000203 (n + 1))

end

end A326057.P18334027102489358810

namespace A326057

/-- `gcd(A003961(n+1)-2*(n+1), A003961(n+1)-A000203(n+1))` -/
def P18334027102489358810.Spec : Prop :=
  ∀ n, (P18334027102489358810.a n : ℤ) = A326057 (n + 1)

end A326057

/-! ## A326057.P3085148810588011987

`gcd(Δ[A252749(n)], A033879(n+1))`
-/

namespace A326057.P3085148810588011987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A033879 (n + 1))

end

end A326057.P3085148810588011987

namespace A326057

/-- `gcd(Δ[A252749(n)], A033879(n+1))` -/
def P3085148810588011987.Spec : Prop :=
  ∀ n, (P3085148810588011987.a n : ℤ) = A326057 (n + 1)

end A326057

/-! ## A326057.P9563898329443915998

`gcd(A033880(n+1), A286385(n+1))`
-/

namespace A326057.P9563898329443915998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A286385 (n + 1))

end

end A326057.P9563898329443915998

namespace A326057

/-- `gcd(A033880(n+1), A286385(n+1))` -/
def P9563898329443915998.Spec : Prop :=
  ∀ n, (P9563898329443915998.a n : ℤ) = A326057 (n + 1)

end A326057

/-! ## A326057.P7490166399514535887

`gcd(-A033880(n+1), -A252748(n+1))`
-/

namespace A326057.P7490166399514535887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033880 (n + 1)) (-A252748 (n + 1))

end

end A326057.P7490166399514535887

namespace A326057

/-- `gcd(-A033880(n+1), -A252748(n+1))` -/
def P7490166399514535887.Spec : Prop :=
  ∀ n, (P7490166399514535887.a n : ℤ) = A326057 (n + 1)

end A326057

/-! ## A326057.P12329851191822743339

`gcd(2*(n+1)-A000203(n+1), A253885(n)-Δ[n²])`
-/

namespace A326057.P12329851191822743339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) : ℤ) - A000203 (n + 1)) (A253885 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A326057.P12329851191822743339

namespace A326057

/-- `gcd(2*(n+1)-A000203(n+1), A253885(n)-Δ[n²])` -/
def P12329851191822743339.Spec : Prop :=
  ∀ n, (P12329851191822743339.a n : ℤ) = A326057 (n + 1)

end A326057

/-! ## A326057.P6708455374157681601

`gcd(2*(n+1)-A000203(n+1), A227140(A286385(n+1)))`
-/

namespace A326057.P6708455374157681601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) : ℤ) - A000203 (n + 1)) (A227140 (A286385 (n + 1)).toNat)

end

end A326057.P6708455374157681601

namespace A326057

/-- `gcd(2*(n+1)-A000203(n+1), A227140(A286385(n+1)))` -/
def P6708455374157681601.Spec : Prop :=
  ∀ n, (P6708455374157681601.a n : ℤ) = A326057 (n + 1)

end A326057

/-!
# A326058: a(n) = n - {the sum of square divisors of n}.

The programs for A326058, the canonical program `A326058.P945554037685919267` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326058 has offset 1).

The definition of A326058 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326058.P945554037685919267

`n+1-A035316(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A326058

/-- `n+1-A035316(n+1)` -/
def P945554037685919267.Spec : Prop :=
  ∀ n, P945554037685919267.a n = A326058 (n + 1)

theorem P945554037685919267.correct : P945554037685919267.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel]

end A326058

/-! ## A326058.P11296896880402866162

`A033879(n+1)+A326059(n+1)`
-/

namespace A326058.P11296896880402866162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A326059 (n + 1)

end

end A326058.P11296896880402866162

namespace A326058

/-- `A033879(n+1)+A326059(n+1)` -/
def P11296896880402866162.Spec : Prop :=
  ∀ n, P11296896880402866162.a n = A326058 (n + 1)

theorem P11296896880402866162.correct : P11296896880402866162.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P11296896880402866162.a, A326058.P945554037685919267.a, A033879, A033879.P11735613842914743111.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A033880, A033880.P6005875780263802708.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P4097531212504585979

`n-A071326(n+1)`
-/

namespace A326058.P4097531212504585979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A071326 (n + 1)

end

end A326058.P4097531212504585979

namespace A326058

/-- `n-A071326(n+1)` -/
def P4097531212504585979.Spec : Prop :=
  ∀ n, P4097531212504585979.a n = A326058 (n + 1)

theorem P4097531212504585979.correct : P4097531212504585979.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P4097531212504585979.a, A326058.P945554037685919267.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A071326, A071326.P2879098409423793096.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P8301497590336135785

`n+1-∑{d}[A000188(n+1), #²]`
-/

namespace A326058.P8301497590336135785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ)

end

end A326058.P8301497590336135785

namespace A326058

/-- `n+1-∑{d}[A000188(n+1), #²]` -/
def P8301497590336135785.Spec : Prop :=
  ∀ n, P8301497590336135785.a n = A326058 (n + 1)

end A326058

/-! ## A326058.P7511619512278564002

`1-∑{d}[n+1, #*A010052(#)]+n`
-/

namespace A326058.P7511619512278564002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010052 d + (n : ℤ)

end

end A326058.P7511619512278564002

namespace A326058

/-- `1-∑{d}[n+1, #*A010052(#)]+n` -/
def P7511619512278564002.Spec : Prop :=
  ∀ n, P7511619512278564002.a n = A326058 (n + 1)

end A326058

/-! ## A326058.P16341991554636138651

`1-A001157(A000188(n+1))+n`
-/

namespace A326058.P16341991554636138651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001157 (A000188 (n + 1)).toNat + (n : ℤ)

end

end A326058.P16341991554636138651

namespace A326058

/-- `1-A001157(A000188(n+1))+n` -/
def P16341991554636138651.Spec : Prop :=
  ∀ n, P16341991554636138651.a n = A326058 (n + 1)

end A326058

/-! ## A326058.P6681458164701106549

`n-A053807(A000188(n+1)+1)`
-/

namespace A326058.P6681458164701106549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A053807 (A000188 (n + 1) + 1).toNat

end

end A326058.P6681458164701106549

namespace A326058

/-- `n-A053807(A000188(n+1)+1)` -/
def P6681458164701106549.Spec : Prop :=
  ∀ n, P6681458164701106549.a n = A326058 (n + 1)

end A326058

/-! ## A326058.P1671610930445882296

`1-A076752(A008833(n+1))+n`
-/

namespace A326058.P1671610930445882296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A076752 (A008833 (n + 1)).toNat + (n : ℤ)

end

end A326058.P1671610930445882296

namespace A326058

/-- `1-A076752(A008833(n+1))+n` -/
def P1671610930445882296.Spec : Prop :=
  ∀ n, P1671610930445882296.a n = A326058 (n + 1)

end A326058

/-! ## A326058.P6215043210203326126

`A285309(n+1)-A001065(n+1)`
-/

namespace A326058.P6215043210203326126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) - A001065 (n + 1)

end

end A326058.P6215043210203326126

namespace A326058

/-- `A285309(n+1)-A001065(n+1)` -/
def P6215043210203326126.Spec : Prop :=
  ∀ n, P6215043210203326126.a n = A326058 (n + 1)

theorem P6215043210203326126.correct : P6215043210203326126.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P6215043210203326126.a, A326058.P945554037685919267.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P2093383523292239263

`A326059(n+1)-A033880(n+1)`
-/

namespace A326058.P2093383523292239263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) - A033880 (n + 1)

end

end A326058.P2093383523292239263

namespace A326058

/-- `A326059(n+1)-A033880(n+1)` -/
def P2093383523292239263.Spec : Prop :=
  ∀ n, P2093383523292239263.a n = A326058 (n + 1)

theorem P2093383523292239263.correct : P2093383523292239263.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P2093383523292239263.a, A326058.P945554037685919267.a, A033880, A033880.P6005875780263802708.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A001065, A001065.P4097147489331274860.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P1623528338634440751

`A326059(n+1)+n+1-A001065(n+1)`
-/

namespace A326058.P1623528338634440751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) + ((n + 1 : ℤ) - A001065 (n + 1))

end

end A326058.P1623528338634440751

namespace A326058

/-- `A326059(n+1)+n+1-A001065(n+1)` -/
def P1623528338634440751.Spec : Prop :=
  ∀ n, P1623528338634440751.a n = A326058 (n + 1)

theorem P1623528338634440751.correct : P1623528338634440751.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P1623528338634440751.a, A326058.P945554037685919267.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P4078510965122264318

`A326059(n+1)+2*(n+1)-A000203(n+1)`
-/

namespace A326058.P4078510965122264318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) + ((2 * (n + 1) : ℤ) - A000203 (n + 1))

end

end A326058.P4078510965122264318

namespace A326058

/-- `A326059(n+1)+2*(n+1)-A000203(n+1)` -/
def P4078510965122264318.Spec : Prop :=
  ∀ n, P4078510965122264318.a n = A326058 (n + 1)

theorem P4078510965122264318.correct : P4078510965122264318.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P4078510965122264318.a, A326058.P945554037685919267.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P3147576205032463442

`A326059(n+1)+2*n-A064987(n+1)/(n+1)+2`
-/

namespace A326058.P3147576205032463442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326059 (n + 1) : ℚ) + ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A326058.P3147576205032463442

namespace A326058

/-- `A326059(n+1)+2*n-A064987(n+1)/(n+1)+2` -/
def P3147576205032463442.Spec : Prop :=
  ∀ n, P3147576205032463442.a n = (A326058 (n + 1) : ℚ)

end A326058

/-! ## A326058.P18156394942078591936

`A285309(n+1)-(A326054(n+1)+A008833(n+1))`
-/

namespace A326058.P18156394942078591936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) - (A326054 (n + 1) + A008833 (n + 1))

end

end A326058.P18156394942078591936

namespace A326058

/-- `A285309(n+1)-(A326054(n+1)+A008833(n+1))` -/
def P18156394942078591936.Spec : Prop :=
  ∀ n, P18156394942078591936.a n = A326058 (n + 1)

theorem P18156394942078591936.correct : P18156394942078591936.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P18156394942078591936.a, A326058.P945554037685919267.a, A008833, A008833.P18388074464065390543.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A326054, A326054.P11521875358712095530.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A037213, A037213.P7544062464691828526.a, A326053, A326053.P16383788461503311404.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P134300501950887152

`A285309(n+1)+A326055(n+1)-A326053(n+1)`
-/

namespace A326058.P134300501950887152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) + (A326055 (n + 1) - A326053 (n + 1))

end

end A326058.P134300501950887152

namespace A326058

/-- `A285309(n+1)+A326055(n+1)-A326053(n+1)` -/
def P134300501950887152.Spec : Prop :=
  ∀ n, P134300501950887152.a n = A326058 (n + 1)

theorem P134300501950887152.correct : P134300501950887152.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P134300501950887152.a, A326058.P945554037685919267.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A326053, A326053.P16383788461503311404.a, A326055, A326055.P11347868664017450431.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A033879, A033879.P11735613842914743111.a, A037213, A037213.P7544062464691828526.a, A326054, A326054.P11521875358712095530.a, A000196, A000196.P15434771586934192083.a, A007913, A007913.P11359412940648999332.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A059479, A059479.P17464652159649958448.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P8938858726153943860

`A326049(n+1)+A326059(n+1)-A326050(n+1)`
-/

namespace A326058.P8938858726153943860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) + (A326059 (n + 1) - A326050 (n + 1))

end

end A326058.P8938858726153943860

namespace A326058

/-- `A326049(n+1)+A326059(n+1)-A326050(n+1)` -/
def P8938858726153943860.Spec : Prop :=
  ∀ n, P8938858726153943860.a n = A326058 (n + 1)

theorem P8938858726153943860.correct : P8938858726153943860.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P8938858726153943860.a, A326058.P945554037685919267.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326049, A326049.P12761554379503345949.a, A326050, A326050.P4515014402688933711.a, A326059, A326059.P8887039783102292576.a, A033879, A033879.P11735613842914743111.a, A037213, A037213.P7544062464691828526.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A285309, A285309.P12080858862407877190.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A033880, A033880.P6005875780263802708.a, A166486, A166486.P13501783531280266850.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P7210622377822651585

`A326059(n+1)+A326128(n+1)-A326127(n+1)`
-/

namespace A326058.P7210622377822651585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) + (A326128 (n + 1) - A326127 (n + 1))

end

end A326058.P7210622377822651585

namespace A326058

/-- `A326059(n+1)+A326128(n+1)-A326127(n+1)` -/
def P7210622377822651585.Spec : Prop :=
  ∀ n, P7210622377822651585.a n = A326058 (n + 1)

theorem P7210622377822651585.correct : P7210622377822651585.Spec := by
  intro n
  simp only [A326058, Nat.add_sub_cancel, A326058.P7210622377822651585.a, A326058.P945554037685919267.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326059, A326059.P8887039783102292576.a, A326127, A326127.P6827603046472699184.a, A326128, A326128.P4962900157914824511.a, A007913, A007913.P11359412940648999332.a, A037213, A037213.P7544062464691828526.a, A285309, A285309.P12080858862407877190.a, A326126, A326126.P126110095243043684.a, A000196, A000196.P15434771586934192083.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A059479, A059479.P17464652159649958448.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326058

/-! ## A326058.P15225226102499542555

`A326059(n+1)+A336564(n+1)-A336563(n+1)`
-/

namespace A326058.P15225226102499542555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) + (A336564 (n + 1) - A336563 (n + 1))

end

end A326058.P15225226102499542555

namespace A326058

/-- `A326059(n+1)+A336564(n+1)-A336563(n+1)` -/
def P15225226102499542555.Spec : Prop :=
  ∀ n, P15225226102499542555.a n = A326058 (n + 1)

end A326058

/-! ## A326058.P18236713708961166966

`A326059(n+1)+n+2-(A000203(A000027(n+1))-n)`
-/

namespace A326058.P18236713708961166966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) + ((n + 2 : ℤ) - (A000203 (A000027 (n + 1)).toNat - (n : ℤ)))

end

end A326058.P18236713708961166966

namespace A326058

/-- `A326059(n+1)+n+2-(A000203(A000027(n+1))-n)` -/
def P18236713708961166966.Spec : Prop :=
  ∀ n, P18236713708961166966.a n = A326058 (n + 1)

end A326058

/-! ## A326058.P14490848080118429232

`A326068(2*(n+1))+A326059(n+1)`
-/

namespace A326058.P14490848080118429232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (2 * (n + 1)) + A326059 (n + 1)

end

end A326058.P14490848080118429232

namespace A326058

/-- `A326068(2*(n+1))+A326059(n+1)` -/
def P14490848080118429232.Spec : Prop :=
  ∀ n, P14490848080118429232.a n = A326058 (n + 1)

end A326058

/-!
# A326059: a(n) = A285309(n) - n, where A285309 gives the sum of nonsquare divisors of n.

The programs for A326059, the canonical program `A326059.P8887039783102292576` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326059 has offset 1).

The definition of A326059 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285309, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326059.P8887039783102292576

`A285309(n+1)-(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326059

/-- `A285309(n+1)-(n+1)` -/
def P8887039783102292576.Spec : Prop :=
  ∀ n, P8887039783102292576.a n = A326059 (n + 1)

theorem P8887039783102292576.correct : P8887039783102292576.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel]

end A326059

/-! ## A326059.P7921970760751488691

`A326058(n+1)-A033879(n+1)`
-/

namespace A326059.P7921970760751488691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) - A033879 (n + 1)

end

end A326059.P7921970760751488691

namespace A326059

/-- `A326058(n+1)-A033879(n+1)` -/
def P7921970760751488691.Spec : Prop :=
  ∀ n, P7921970760751488691.a n = A326059 (n + 1)

theorem P7921970760751488691.correct : P7921970760751488691.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P7921970760751488691.a, A326059.P8887039783102292576.a, A033879, A033879.P11735613842914743111.a, A285309, A285309.P12080858862407877190.a, A326058, A326058.P945554037685919267.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A001065, A001065.P4097147489331274860.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P4540929420224273930

`∑{d}[n+1, #*A049240(#)]-(n+1)`
-/

namespace A326059.P4540929420224273930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A049240 d - (n + 1 : ℤ)

end

end A326059.P4540929420224273930

namespace A326059

/-- `∑{d}[n+1, #*A049240(#)]-(n+1)` -/
def P4540929420224273930.Spec : Prop :=
  ∀ n, P4540929420224273930.a n = A326059 (n + 1)

end A326059

/-! ## A326059.P17401679389262266965

`∑{d}[n+1, #*A267635(#)]-(n+1)`
-/

namespace A326059.P17401679389262266965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A267635 d - (n + 1 : ℤ)

end

end A326059.P17401679389262266965

namespace A326059

/-- `∑{d}[n+1, #*A267635(#)]-(n+1)` -/
def P17401679389262266965.Spec : Prop :=
  ∀ n, P17401679389262266965.a n = A326059 (n + 1)

end A326059

/-! ## A326059.P17038659873100649522

`A326058(n+1)+A033880(n+1)`
-/

namespace A326059.P17038659873100649522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + A033880 (n + 1)

end

end A326059.P17038659873100649522

namespace A326059

/-- `A326058(n+1)+A033880(n+1)` -/
def P17038659873100649522.Spec : Prop :=
  ∀ n, P17038659873100649522.a n = A326059 (n + 1)

theorem P17038659873100649522.correct : P17038659873100649522.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P17038659873100649522.a, A326059.P8887039783102292576.a, A033880, A033880.P6005875780263802708.a, A285309, A285309.P12080858862407877190.a, A326058, A326058.P945554037685919267.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P17875062807355467947

`A001065(n+1)-A035316(n+1)`
-/

namespace A326059.P17875062807355467947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A035316 (n + 1)

end

end A326059.P17875062807355467947

namespace A326059

/-- `A001065(n+1)-A035316(n+1)` -/
def P17875062807355467947.Spec : Prop :=
  ∀ n, P17875062807355467947.a n = A326059 (n + 1)

theorem P17875062807355467947.correct : P17875062807355467947.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P17875062807355467947.a, A326059.P8887039783102292576.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P2208298333401612143

`A001065(n+1)-∑{d}[A000188(n+1), #²]`
-/

namespace A326059.P2208298333401612143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2 : ℕ) : ℤ)

end

end A326059.P2208298333401612143

namespace A326059

/-- `A001065(n+1)-∑{d}[A000188(n+1), #²]` -/
def P2208298333401612143.Spec : Prop :=
  ∀ n, P2208298333401612143.a n = A326059 (n + 1)

end A326059

/-! ## A326059.P8015848919386224355

`A326058(n+1)+A001065(n+1)-(n+1)`
-/

namespace A326059.P8015848919386224355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + (A001065 (n + 1) - (n + 1 : ℤ))

end

end A326059.P8015848919386224355

namespace A326059

/-- `A326058(n+1)+A001065(n+1)-(n+1)` -/
def P8015848919386224355.Spec : Prop :=
  ∀ n, P8015848919386224355.a n = A326059 (n + 1)

theorem P8015848919386224355.correct : P8015848919386224355.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P8015848919386224355.a, A326059.P8887039783102292576.a, A001065, A001065.P4097147489331274860.a, A285309, A285309.P12080858862407877190.a, A326058, A326058.P945554037685919267.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P5664344910720092656

`A000203(n+1)-A035316(n+1)-(n+1)`
-/

namespace A326059.P5664344910720092656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A035316 (n + 1) - (n + 1 : ℤ)

end

end A326059.P5664344910720092656

namespace A326059

/-- `A000203(n+1)-A035316(n+1)-(n+1)` -/
def P5664344910720092656.Spec : Prop :=
  ∀ n, P5664344910720092656.a n = A326059 (n + 1)

end A326059

/-! ## A326059.P12585602258648933655

`A326058(n+1)+A000203(n+1)-2*(n+1)`
-/

namespace A326059.P12585602258648933655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + (A000203 (n + 1) - (2 * (n + 1) : ℤ))

end

end A326059.P12585602258648933655

namespace A326059

/-- `A326058(n+1)+A000203(n+1)-2*(n+1)` -/
def P12585602258648933655.Spec : Prop :=
  ∀ n, P12585602258648933655.a n = A326059 (n + 1)

theorem P12585602258648933655.correct : P12585602258648933655.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P12585602258648933655.a, A326059.P8887039783102292576.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A285309, A285309.P12080858862407877190.a, A326058, A326058.P945554037685919267.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P3471841479536000557

`A326058(n+1)-(2*n-A064987(n+1)/(n+1)+2)`
-/

namespace A326059.P3471841479536000557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326058 (n + 1) : ℚ) - ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A326059.P3471841479536000557

namespace A326059

/-- `A326058(n+1)-(2*n-A064987(n+1)/(n+1)+2)` -/
def P3471841479536000557.Spec : Prop :=
  ∀ n, P3471841479536000557.a n = (A326059 (n + 1) : ℚ)

end A326059

/-! ## A326059.P17497236730993965629

`A326058(n+1)+A326127(n+1)-A326128(n+1)`
-/

namespace A326059.P17497236730993965629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + (A326127 (n + 1) - A326128 (n + 1))

end

end A326059.P17497236730993965629

namespace A326059

/-- `A326058(n+1)+A326127(n+1)-A326128(n+1)` -/
def P17497236730993965629.Spec : Prop :=
  ∀ n, P17497236730993965629.a n = A326059 (n + 1)

theorem P17497236730993965629.correct : P17497236730993965629.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P17497236730993965629.a, A326059.P8887039783102292576.a, A285309, A285309.P12080858862407877190.a, A326058, A326058.P945554037685919267.a, A326127, A326127.P6827603046472699184.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A326126, A326126.P126110095243043684.a, A037213, A037213.P7544062464691828526.a, A059479, A059479.P17464652159649958448.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P12927981056821440395

`A326058(n+1)+A336563(n+1)-A336564(n+1)`
-/

namespace A326059.P12927981056821440395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) + (A336563 (n + 1) - A336564 (n + 1))

end

end A326059.P12927981056821440395

namespace A326059

/-- `A326058(n+1)+A336563(n+1)-A336564(n+1)` -/
def P12927981056821440395.Spec : Prop :=
  ∀ n, P12927981056821440395.a n = A326059 (n + 1)

end A326059

/-! ## A326059.P710116550306074458

`A326058(n+1)-(A000027(n+1)-A000203(n+1)+n+1)`
-/

namespace A326059.P710116550306074458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) - (A000027 (n + 1) - A000203 (n + 1) + (n + 1 : ℤ))

end

end A326059.P710116550306074458

namespace A326059

/-- `A326058(n+1)-(A000027(n+1)-A000203(n+1)+n+1)` -/
def P710116550306074458.Spec : Prop :=
  ∀ n, P710116550306074458.a n = A326059 (n + 1)

theorem P710116550306074458.correct : P710116550306074458.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P710116550306074458.a, A326059.P8887039783102292576.a, A000027, A000027.P10331202704469894836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A285309, A285309.P12080858862407877190.a, A326058, A326058.P945554037685919267.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P11963185835296011512

`A326058(n+1)-(n+1-(A326126(n+1)-A326128(n+1)))`
-/

namespace A326059.P11963185835296011512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) - ((n + 1 : ℤ) - (A326126 (n + 1) - A326128 (n + 1)))

end

end A326059.P11963185835296011512

namespace A326059

/-- `A326058(n+1)-(n+1-(A326126(n+1)-A326128(n+1)))` -/
def P11963185835296011512.Spec : Prop :=
  ∀ n, P11963185835296011512.a n = A326059 (n + 1)

theorem P11963185835296011512.correct : P11963185835296011512.Spec := by
  intro n
  simp only [A326059, Nat.add_sub_cancel, A326059.P11963185835296011512.a, A326059.P8887039783102292576.a, A285309, A285309.P12080858862407877190.a, A326058, A326058.P945554037685919267.a, A326126, A326126.P126110095243043684.a, A326128, A326128.P4962900157914824511.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007913, A007913.P11359412940648999332.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A059479, A059479.P17464652159649958448.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A326059

/-! ## A326059.P5572778782244407405

`A326058(n+1)-A326068(2*(n+1))`
-/

namespace A326059.P5572778782244407405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) - A326068 (2 * (n + 1))

end

end A326059.P5572778782244407405

namespace A326059

/-- `A326058(n+1)-A326068(2*(n+1))` -/
def P5572778782244407405.Spec : Prop :=
  ∀ n, P5572778782244407405.a n = A326059 (n + 1)

end A326059

/-! ## A326059.P13001458348585076104

`A326058(n+1)-(2*n-(A245093(∑[n+1])-2))`
-/

namespace A326059.P13001458348585076104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) - ((2 * n : ℤ) - (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) - 2))

end

end A326059.P13001458348585076104

namespace A326059

/-- `A326058(n+1)-(2*n-(A245093(∑[n+1])-2))` -/
def P13001458348585076104.Spec : Prop :=
  ∀ n, P13001458348585076104.a n = A326059 (n + 1)

end A326059

/-!
# A326060: a(n) = gcd(n-A035316(n), A285309(n)-n), where A035316 and A285309 give respectively the sums of square and nonsquare divisors of n.

The programs for A326060, the canonical program `A326060.P14530929947081439242` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A326060 has offset 1).

The definition of A326060 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035316, A285309, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A326060.P16181979193690968162

`gcd(A326058(n+1), A326059(n+1))`
-/

namespace A326060.P16181979193690968162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326058 (n + 1)) (A326059 (n + 1))

end

end A326060.P16181979193690968162

namespace A326060

/-- `gcd(A326058(n+1), A326059(n+1))` -/
def P16181979193690968162.Spec : Prop :=
  ∀ n, (P16181979193690968162.a n : ℤ) = A326060 (n + 1)

end A326060

/-! ## A326060.P14530929947081439242

`gcd(n+1-A035316(n+1), A285309(n+1)-(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A326060

/-- `gcd(n+1-A035316(n+1), A285309(n+1)-(n+1))` -/
def P14530929947081439242.Spec : Prop :=
  ∀ n, (P14530929947081439242.a n : ℤ) = A326060 (n + 1)

theorem P14530929947081439242.correct : P14530929947081439242.Spec := by
  intro n
  simp only [A326060, Nat.add_sub_cancel]

end A326060

/-! ## A326060.P16414745874469498400

`gcd(-A326058(n+1), A326068(2*(n+1)))`
-/

namespace A326060.P16414745874469498400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A326058 (n + 1)) (A326068 (2 * (n + 1)))

end

end A326060.P16414745874469498400

namespace A326060

/-- `gcd(-A326058(n+1), A326068(2*(n+1)))` -/
def P16414745874469498400.Spec : Prop :=
  ∀ n, (P16414745874469498400.a n : ℤ) = A326060 (n + 1)

end A326060

/-! ## A326060.P8047402515855084535

`gcd(A326059(n+1), A326068(A103517(n)))`
-/

namespace A326060.P8047402515855084535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326059 (n + 1)) (A326068 (A103517 n).toNat)

end

end A326060.P8047402515855084535

namespace A326060

/-- `gcd(A326059(n+1), A326068(A103517(n)))` -/
def P8047402515855084535.Spec : Prop :=
  ∀ n, (P8047402515855084535.a n : ℤ) = A326060 (n + 1)

end A326060

/-! ## A326060.P1947037729567550104

`gcd(A228620(n+1), A351831(n+1))`
-/

namespace A326060.P1947037729567550104
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228620 (n + 1)) (A351831 (n + 1))

end

end A326060.P1947037729567550104

namespace A326060

/-- `gcd(A228620(n+1), A351831(n+1))` -/
def P1947037729567550104.Spec : Prop :=
  ∀ n, (P1947037729567550104.a n : ℤ) = A326060 (n + 1)

end A326060

/-!
# A326061: Sum of all other divisors of n except the largest proper divisor. a(1) = 0 by convention.

The programs for A326061, there is no canonical definition to state claims against.
-/

/-! ## A326061.P2440661411061940743

`A000203(n+1)-A032742(n+1)`
-/

namespace A326061.P2440661411061940743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A032742 (n + 1)

end

end A326061.P2440661411061940743

/-! ## A326061.P2240943171552007679

`(A318505(n+1)+1)%∑[n+1]+n`
-/

namespace A326061.P2240943171552007679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318505 (n + 1) + 1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A326061.P2240943171552007679

/-! ## A326061.P3986548162428991485

`A060681(n+1)+A001065(n+1)`
-/

namespace A326061.P3986548162428991485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + A001065 (n + 1)

end

end A326061.P3986548162428991485

/-! ## A326061.P17931808674967488006

`A318505(n+1)+A087156(n+1)`
-/

namespace A326061.P17931808674967488006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (n + 1) + A087156 (n + 1)

end

end A326061.P17931808674967488006

/-! ## A326061.P3966397178668639886

`n+1+A060681(n+1)+A033880(n+1)`
-/

namespace A326061.P3966397178668639886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A060681 (n + 1) + A033880 (n + 1))

end

end A326061.P3966397178668639886

/-! ## A326061.P9188120081983185363

`A060681(n+1)-(n+1-A000203(n+1))`
-/

namespace A326061.P9188120081983185363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) - ((n + 1 : ℤ) - A000203 (n + 1))

end

end A326061.P9188120081983185363

/-! ## A326061.P10977981347326276259

`A000203(n+1)-(n+1)/A020639(n+1)`
-/

namespace A326061.P10977981347326276259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)

end

end A326061.P10977981347326276259

/-! ## A326061.P8276559531023921323

`A000203(n+1)-A004525(A286472(n+1))`
-/

namespace A326061.P8276559531023921323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A004525 (A286472 (n + 1)).toNat

end

end A326061.P8276559531023921323

/-! ## A326061.P3091756956524889753

`A034448(n+1)+A048146(n+1)-A032742(n+1)`
-/

namespace A326061.P3091756956524889753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + (A048146 (n + 1) - A032742 (n + 1))

end

end A326061.P3091756956524889753

/-! ## A326061.P17971368856057152584

`A003557(n+1)+A326187(n+1)-A032742(n+1)`
-/

namespace A326061.P17971368856057152584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A326187 (n + 1) - A032742 (n + 1))

end

end A326061.P17971368856057152584

/-! ## A326061.P16925944492648592649

`A008833(n+1)+A326053(n+1)-A032742(n+1)`
-/

namespace A326061.P16925944492648592649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) + (A326053 (n + 1) - A032742 (n + 1))

end

end A326061.P16925944492648592649

/-! ## A326061.P1479081730981828078

`A057521(n+1)+A326184(n+1)-A032742(n+1)`
-/

namespace A326061.P1479081730981828078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) + (A326184 (n + 1) - A032742 (n + 1))

end

end A326061.P1479081730981828078

/-! ## A326061.P17030492372029845559

`A326065(n+1)+A326066(n+1)-A032742(n+1)`
-/

namespace A326061.P17030492372029845559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (n + 1) + (A326066 (n + 1) - A032742 (n + 1))

end

end A326061.P17030492372029845559

/-! ## A326061.P5528147983399235457

`A326135(n+1)+A326136(n+1)-A032742(n+1)`
-/

namespace A326061.P5528147983399235457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (n + 1) + (A326136 (n + 1) - A032742 (n + 1))

end

end A326061.P5528147983399235457

/-! ## A326061.P447079193903076040

`A332993(n+1)+A333783(n+1)-A032742(n+1)`
-/

namespace A326061.P447079193903076040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332993 (n + 1) + (A333783 (n + 1) - A032742 (n + 1))

end

end A326061.P447079193903076040

/-! ## A326061.P12856333031429706768

`A332994(n+1)+A333784(n+1)-A032742(n+1)`
-/

namespace A326061.P12856333031429706768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332994 (n + 1) + (A333784 (n + 1) - A032742 (n + 1))

end

end A326061.P12856333031429706768

/-! ## A326061.P5201816596614660787

`A071189(n+1)*A371418(n+1)-A032742(n+1)`
-/

namespace A326061.P5201816596614660787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071189 (n + 1) * A371418 (n + 1) - A032742 (n + 1)

end

end A326061.P5201816596614660787

/-! ## A326061.P16704941154283651789

`A348977(n+1)*A348979(n+1)-A032742(n+1)`
-/

namespace A326061.P16704941154283651789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348977 (n + 1) * A348979 (n + 1) - A032742 (n + 1)

end

end A326061.P16704941154283651789

/-! ## A326061.P628330190869622359

`A000203(n+1)-A342768(n+1)/A130065(n+1)`
-/

namespace A326061.P628330190869622359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) - (A342768 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ)

end

end A326061.P628330190869622359

/-!
# A326062: a(1) = gcd((sigma(n)-A032742(n))-n, n-A032742(n)), where A032742 gives the largest proper divisor of n.

The programs for A326062, there is no canonical definition to state claims against.
-/

/-! ## A326062.P13559424685294504404

`gcd(A000203(n+1)-A032742(n+1)-(n+1), n+1-A032742(n+1))`
-/

namespace A326062.P13559424685294504404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1) - A032742 (n + 1) - (n + 1 : ℤ)) ((n + 1 : ℤ) - A032742 (n + 1))

end

end A326062.P13559424685294504404

/-! ## A326062.P17383464158482118887

`gcd(A033879(n+1), A060681(n+1))`
-/

namespace A326062.P17383464158482118887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A060681 (n + 1))

end

end A326062.P17383464158482118887

/-! ## A326062.P12769288920390234355

`gcd(A033880(n+1), A318505(n+1))`
-/

namespace A326062.P12769288920390234355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A318505 (n + 1))

end

end A326062.P12769288920390234355

/-! ## A326062.P3429866105490404762

`gcd(-A033880(n+1), A060681(A000027(n+1)))`
-/

namespace A326062.P3429866105490404762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033880 (n + 1)) (A060681 (A000027 (n + 1)).toNat)

end

end A326062.P3429866105490404762

/-! ## A326062.P10028706122423154035

`gcd(-A033879(n+1), A242560(n+1))`
-/

namespace A326062.P10028706122423154035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A033879 (n + 1)) (A242560 (n + 1))

end

end A326062.P10028706122423154035

/-!
# A326063: Composite numbers n such that (A001065(n) - A032742(n)) divides (n - A032742(n)), where A032742 gives the largest proper divisor, and A001065 is the sum of proper divisors.

The programs for A326063, there is no canonical definition to state claims against.
-/

/-! ## A326063.P855071671999477299

`A345665(C(A049913(n+1), A124010(n+1)))`
-/

namespace A326063.P855071671999477299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345665 (Nat.choose (A049913 (n + 1)).toNat (A124010 (n + 1)).toNat)

end

end A326063.P855071671999477299

/-!
# A326065: Sum of divisors of the largest proper divisor of n: a(n) = sigma(A032742(n)).

The programs for A326065, there is no canonical definition to state claims against.
-/

/-! ## A326065.P10914025200384499643

`A000203(A032742(n+1))`
-/

namespace A326065.P10914025200384499643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A032742 (n + 1)).toNat

end

end A326065.P10914025200384499643

/-! ## A326065.P5971472151663517448

`A000203(n+1)-A326066(n+1)`
-/

namespace A326065.P5971472151663517448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326066 (n + 1)

end

end A326065.P5971472151663517448

/-! ## A326065.P6516247682528469185

`A326135(n+1)*A000203(A020639(n+1)^(A067029(n+1)-1))`
-/

namespace A326065.P6516247682528469185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (n + 1) * A000203 (SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) ^ (A067029 (n + 1) - 1 : ℤ))).toNat

end

end A326065.P6516247682528469185

/-! ## A326065.P7155884553914775017

`1-A326068(n+1)+n`
-/

namespace A326065.P7155884553914775017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326068 (n + 1) + (n : ℤ)

end

end A326065.P7155884553914775017

/-! ## A326065.P16183165166028769834

`∑{d}[(n+1)/A020639(2*n+1-n), #]`
-/

namespace A326065.P16183165166028769834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (2 * n + 1 - n) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A326065.P16183165166028769834

/-! ## A326065.P2817639030754009889

`A000203(A117358(4*(n+1)))`
-/

namespace A326065.P2817639030754009889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A117358 (4 * (n + 1))).toNat

end

end A326065.P2817639030754009889

/-! ## A326065.P13643151831354259094

`∑{d}[A004525(A286472(n+1)), #]`
-/

namespace A326065.P13643151831354259094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A286472 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A326065.P13643151831354259094

/-! ## A326065.P1310136374361052897

`A326136(2*A032742(n+1))/2`
-/

namespace A326065.P1310136374361052897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326136 (2 * A032742 (n + 1)).toNat : ℚ) / 2

end

end A326065.P1310136374361052897

/-! ## A326065.P17557688017693264407

`A000203(1-A060681(n+1)+n)`
-/

namespace A326065.P17557688017693264407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 - A060681 (n + 1) + (n : ℤ)).toNat

end

end A326065.P17557688017693264407

/-! ## A326065.P13905606488004601749

`A001065(n+1)-A326067(n+1)`
-/

namespace A326065.P13905606488004601749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326067 (n + 1)

end

end A326065.P13905606488004601749

/-! ## A326065.P4723561712872492276

`A000203((n+1)/A020639(n+1))`
-/

namespace A326065.P4723561712872492276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A326065.P4723561712872492276

/-! ## A326065.P4471755789350539485

`A000203((n+1)²/A285109(n+1))`
-/

namespace A326065.P4471755789350539485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A285109 (n + 1) : ℚ))).toNat

end

end A326065.P4471755789350539485

/-! ## A326065.P17512107147548509065

`∑{d}[xor(A318505(n+1), A318507(n+1)), #]`
-/

namespace A326065.P17512107147548509065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A318505 (n + 1)) (A318507 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A326065.P17512107147548509065

/-! ## A326065.P14764645355613175547

`A000203(A004525(A286472(n+1)))`
-/

namespace A326065.P14764645355613175547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A004525 (A286472 (n + 1)).toNat).toNat

end

end A326065.P14764645355613175547

/-! ## A326065.P11190537587686090835

`A000203(A000203(n+1)-A326061(n+1))`
-/

namespace A326065.P11190537587686090835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1) - A326061 (n + 1)).toNat

end

end A326065.P11190537587686090835

/-! ## A326065.P13051017074654781155

`A000203(A342768(n+1)/A130065(n+1))`
-/

namespace A326065.P13051017074654781155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ))).toNat

end

end A326065.P13051017074654781155

/-! ## A326065.P784795509216382618

`A000203(lcm(A003557(n+1), A028234(n+1)))`
-/

namespace A326065.P784795509216382618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lcm (A003557 (n + 1)) (A028234 (n + 1)))

end

end A326065.P784795509216382618

/-! ## A326065.P17325951566178869432

`A074400(A342768(n+1)/A130065(n+1))/2`
-/

namespace A326065.P17325951566178869432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ))).toNat : ℚ) / 2

end

end A326065.P17325951566178869432

/-!
# A326066: a(n) = sigma(n) - sigma(A032742(n)), where A032742 gives the largest proper divisor of n.

The programs for A326066, there is no canonical definition to state claims against.
-/

/-! ## A326066.P17087165488078903306

`A000203(n+1)-A326065(n+1)`
-/

namespace A326066.P17087165488078903306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A326065 (n + 1)

end

end A326066.P17087165488078903306

/-! ## A326066.P5852705597693000256

`A000203(n+1)-A000203(A032742(n+1))`
-/

namespace A326066.P5852705597693000256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A032742 (n + 1)).toNat

end

end A326066.P5852705597693000256

/-! ## A326066.P14312960157866983374

`A326067(n+1)+1+n`
-/

namespace A326066.P14312960157866983374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (n + 1) + 1 + (n : ℤ)

end

end A326066.P14312960157866983374

/-! ## A326066.P5669253514904396639

`Δ[A160664(n)]-A326065(n+1)`
-/

namespace A326066.P5669253514904396639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A326065 (n + 1)

end

end A326066.P5669253514904396639

/-! ## A326066.P13798420633713544404

`A326068(n+1)+A001065(n+1)`
-/

namespace A326066.P13798420633713544404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (n + 1) + A001065 (n + 1)

end

end A326066.P13798420633713544404

/-! ## A326066.P15128674851274568787

`A088580(n+1)-(A326065(n+1)+1)`
-/

namespace A326066.P15128674851274568787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A326065 (n + 1) + 1)

end

end A326066.P15128674851274568787

/-! ## A326066.P10921612854369050969

`A074400(n+1)/2-A326065(n+1)`
-/

namespace A326066.P10921612854369050969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A326065 (n + 1) : ℚ)

end

end A326066.P10921612854369050969

/-! ## A326066.P9632454213835454505

`A035316(n+1)+A326068(n+1)+A326059(n+1)`
-/

namespace A326066.P9632454213835454505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) + (A326068 (n + 1) + A326059 (n + 1))

end

end A326066.P9632454213835454505

/-! ## A326066.P8464942782446171659

`A285309(n+1)+A326068(n+1)-A326058(n+1)`
-/

namespace A326066.P8464942782446171659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285309 (n + 1) + (A326068 (n + 1) - A326058 (n + 1))

end

end A326066.P8464942782446171659

/-! ## A326066.P8570307040906729611

`A326135(n+1)+A326136(n+1)-A326065(n+1)`
-/

namespace A326066.P8570307040906729611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (n + 1) + (A326136 (n + 1) - A326065 (n + 1))

end

end A326066.P8570307040906729611

/-! ## A326066.P8543448128663847096

`A000203(n+1)-A000203((n+1)/A020639(n+1))`
-/

namespace A326066.P8543448128663847096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A326066.P8543448128663847096

/-! ## A326066.P11064688599915713832

`A074400(n+1)/2-A000203(n+1-A060681(n+1))`
-/

namespace A326066.P11064688599915713832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A000203 ((n + 1 : ℤ) - A060681 (n + 1)).toNat : ℚ)

end

end A326066.P11064688599915713832

/-! ## A326066.P118576548707250395

`A074400(n+1)/2-A000203(gcd((2*n+1)²+n, A220096(n+1)))`
-/

namespace A326066.P118576548707250395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A000203 (Int.gcd ((2 * n + 1) ^ 2 + n : ℤ) (A220096 (n + 1))) : ℚ)

end

end A326066.P118576548707250395

/-! ## A326066.P18339213445929854383

`A000203(n+1)-A000203(A004525(A286472(n+1)))`
-/

namespace A326066.P18339213445929854383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A004525 (A286472 (n + 1)).toNat).toNat

end

end A326066.P18339213445929854383

/-! ## A326066.P12605456762798608404

`A001065(n+1)+A060681(n+1)-A001065(A032742(n+1))`
-/

namespace A326066.P12605456762798608404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A060681 (n + 1) - A001065 (A032742 (n + 1)).toNat)

end

end A326066.P12605456762798608404

/-! ## A326066.P3375432582071159491

`A000203(n+1)-A000203(A000203(n+1)-A326061(n+1))`
-/

namespace A326066.P3375432582071159491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A000203 (n + 1) - A326061 (n + 1)).toNat

end

end A326066.P3375432582071159491

/-! ## A326066.P6653696400633069777

`A000203(n+1)-A000203(A342768(n+1)/A130065(n+1))`
-/

namespace A326066.P6653696400633069777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ))).toNat

end

end A326066.P6653696400633069777

/-! ## A326066.P14502927651239663743

`A326065(2*(n+1))-A326065(n+1)`
-/

namespace A326066.P14502927651239663743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326065 (2 * (n + 1)) - A326065 (n + 1)

end

end A326066.P14502927651239663743

/-!
# A326067: a(n) = sigma(n) - sigma(A032742(n)) - n, where A032742 gives the largest proper divisor of n, and sigma is the sum of divisors of n.

The programs for A326067, there is no canonical definition to state claims against.
-/

/-! ## A326067.P13079842145601591808

`A326066(n+1)-(n+1)`
-/

namespace A326067.P13079842145601591808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (n + 1) - (n + 1 : ℤ)

end

end A326067.P13079842145601591808

/-! ## A326067.P5128587386017853057

`A326068(n+1)-A033879(n+1)`
-/

namespace A326067.P5128587386017853057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (n + 1) - A033879 (n + 1)

end

end A326067.P5128587386017853057

/-! ## A326067.P4071398082841201115

`A000203(n+1)-A000203(A032742(n+1))-(n+1)`
-/

namespace A326067.P4071398082841201115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (A032742 (n + 1)).toNat - (n + 1 : ℤ)

end

end A326067.P4071398082841201115

/-! ## A326067.P14344624310700264968

`A326068(n+1)+A033880(n+1)`
-/

namespace A326067.P14344624310700264968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (n + 1) + A033880 (n + 1)

end

end A326067.P14344624310700264968

/-! ## A326067.P14431325954026166943

`A001065(n+1)-A326065(n+1)`
-/

namespace A326067.P14431325954026166943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A326065 (n + 1)

end

end A326067.P14431325954026166943

/-! ## A326067.P918235689153738360

`A091818(n+1)/2-A326065(n+1)`
-/

namespace A326067.P918235689153738360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (A326065 (n + 1) : ℚ)

end

end A326067.P918235689153738360

/-! ## A326067.P6688538054102523201

`A001065(n+1)-A000203(A032742(n+1))`
-/

namespace A326067.P6688538054102523201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000203 (A032742 (n + 1)).toNat

end

end A326067.P6688538054102523201

/-! ## A326067.P11191219545068368269

`A326059(n+1)+A326068(n+1)-A326058(n+1)`
-/

namespace A326067.P11191219545068368269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326059 (n + 1) + (A326068 (n + 1) - A326058 (n + 1))

end

end A326067.P11191219545068368269

/-! ## A326067.P15234771986003699456

`A001065(n+1)-A000203(n+1-A060681(n+1))`
-/

namespace A326067.P15234771986003699456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000203 ((n + 1 : ℤ) - A060681 (n + 1)).toNat

end

end A326067.P15234771986003699456

/-! ## A326067.P2051968376805170632

`A000203(n+1)-A000203((n+1)/A020639(n+1))-(n+1)`
-/

namespace A326067.P2051968376805170632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat - (n + 1 : ℤ)

end

end A326067.P2051968376805170632

/-! ## A326067.P6353734271984524010

`A001065(n+1)-A000203(gcd((2*n+1)²+n, A220096(n+1)))`
-/

namespace A326067.P6353734271984524010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000203 (Int.gcd ((2 * n + 1) ^ 2 + n : ℤ) (A220096 (n + 1)))

end

end A326067.P6353734271984524010

/-! ## A326067.P11846043903227623904

`A001065(n+1)-A000203(A342768(n+1)/A130065(n+1))`
-/

namespace A326067.P11846043903227623904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A000203 (SequenceMachineLib.roundAway ((A342768 (n + 1) : ℚ) / (A130065 (n + 1) : ℚ))).toNat

end

end A326067.P11846043903227623904

/-! ## A326067.P4193400380436810024

`A326068(n+1)-A326068(2*(n+1))`
-/

namespace A326067.P4193400380436810024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (n + 1) - A326068 (2 * (n + 1))

end

end A326067.P4193400380436810024

/-!
# A326068: a(n) = n - sigma(A032742(n)), where sigma is the sum of divisors of n and A032742 gives the largest proper divisor of n.

The programs for A326068, there is no canonical definition to state claims against.
-/

/-! ## A326068.P5917308482582084418

`n+1-A326065(n+1)`
-/

namespace A326068.P5917308482582084418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A326065 (n + 1)

end

end A326068.P5917308482582084418

/-! ## A326068.P11361152046874079823

`A326067(n+1)+A033879(n+1)`
-/

namespace A326068.P11361152046874079823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (n + 1) + A033879 (n + 1)

end

end A326068.P11361152046874079823

/-! ## A326068.P18207370978639782569

`n+1-A000203(A032742(n+1))`
-/

namespace A326068.P18207370978639782569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000203 (A032742 (n + 1)).toNat

end

end A326068.P18207370978639782569

/-! ## A326068.P15986714124143117987

`n-A039653(A032742(n+1))`
-/

namespace A326068.P15986714124143117987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A039653 (A032742 (n + 1)).toNat

end

end A326068.P15986714124143117987

/-! ## A326068.P17161521662124660585

`A326066(n+1)-A001065(n+1)`
-/

namespace A326068.P17161521662124660585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326066 (n + 1) - A001065 (n + 1)

end

end A326068.P17161521662124660585

/-! ## A326068.P2722659852859708728

`A326067(n+1)-A033880(n+1)`
-/

namespace A326068.P2722659852859708728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326067 (n + 1) - A033880 (n + 1)

end

end A326068.P2722659852859708728

/-! ## A326068.P4539766925803859311

`1-A000203((n+1)/A020639(n+1))+n`
-/

namespace A326068.P4539766925803859311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat + (n : ℤ)

end

end A326068.P4539766925803859311

/-! ## A326068.P14264415834149130233

`A060681(n+1)-A001065(A032742(n+1))`
-/

namespace A326068.P14264415834149130233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) - A001065 (A032742 (n + 1)).toNat

end

end A326068.P14264415834149130233

/-!
# A326069: a(n) = gcd((sigma(n) - sigma(A032742(n))) - n, n - sigma(A032742(n))), where A032742 gives the largest proper divisor of n.

The programs for A326069, there is no canonical definition to state claims against.
-/

/-! ## A326069.P1993614017179577217

`gcd(A326067(n+1), A326068(n+1))`
-/

namespace A326069.P1993614017179577217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326067 (n + 1)) (A326068 (n + 1))

end

end A326069.P1993614017179577217

/-! ## A326069.P11150978014222230167

`gcd(A326066(n+1)-(n+1), n+1-A326065(n+1))`
-/

namespace A326069.P11150978014222230167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326066 (n + 1) - (n + 1 : ℤ)) ((n + 1 : ℤ) - A326065 (n + 1))

end

end A326069.P11150978014222230167

/-! ## A326069.P15310588051542265109

`gcd(abs(A326068(n+1)), A326068(2*(n+1)))`
-/

namespace A326069.P15310588051542265109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A326068 (n + 1)| (A326068 (2 * (n + 1)))

end

end A326069.P15310588051542265109

/-!
# A326070: Numbers k such that A325977(k) has the same sign as A325978(k).

The programs for A326070, there is no canonical definition to state claims against.
-/

/-! ## A326070.P8886742526132222456

`eq[0, A326072(n+1)]+1`
-/

namespace A326070.P8886742526132222456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326070.P8886742526132222456

/-! ## A326070.P7199029877483977147

`comp[A326071(n+1)-1]+1`
-/

namespace A326070.P7199029877483977147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A326070.P7199029877483977147

/-! ## A326070.P2721162809742474226

`A020725(eq[0, A326072(n+1)])`
-/

namespace A326070.P2721162809742474226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A326070.P2721162809742474226

/-! ## A326070.P1339465759019631599

`eq[0, A326072(A028310(n))]`
-/

namespace A326070.P1339465759019631599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326070.P1339465759019631599

/-! ## A326070.P3209240756228762217

`lt[A326072(n+1), A114592(A107286(2*n+1))²]+1`
-/

namespace A326070.P3209240756228762217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A107286 (2 * n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A326070.P3209240756228762217

/-! ## A326070.P14083505088090446319

`eq[char[A326071(n+1)], A000007(n)]`
-/

namespace A326070.P14083505088090446319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A326070.P14083505088090446319

/-! ## A326070.P279594921775949946

`eq[char[A326071(n+1)], A000038(n)]`
-/

namespace A326070.P279594921775949946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A326070.P279594921775949946

/-! ## A326070.P8131972528607545107

`eq[0, A326072(A065033(2*n))]`
-/

namespace A326070.P8131972528607545107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A326070.P8131972528607545107

/-!
# A326071: Numbers k such that A325977(k) has a different sign as A325978(k).

The programs for A326071, there is no canonical definition to state claims against.
-/

/-! ## A326071.P17657985451486280314

`record[(n+1)*A326072(n+1)]`
-/

namespace A326071.P17657985451486280314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A326071.P17657985451486280314

/-! ## A326071.P11979486210302481391

`eq[1, A326072(n+1)]+1`
-/

namespace A326071.P11979486210302481391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A326071.P11979486210302481391

/-! ## A326071.P17162399014125057630

`filter[A162966(n+1), A326072(#)]`
-/

namespace A326071.P17162399014125057630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P17162399014125057630

/-! ## A326071.P10725802159665077462

`filter[A354360(n+1), A326072(#)]`
-/

namespace A326071.P10725802159665077462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P10725802159665077462

/-! ## A326071.P15012626195830436073

`filter[A363597(n+1), A326072(#)]`
-/

namespace A326071.P15012626195830436073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P15012626195830436073

/-! ## A326071.P15399266647262942761

`filter[A289553(n+1), A326072(#)]`
-/

namespace A326071.P15399266647262942761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P15399266647262942761

/-! ## A326071.P16526388650925958366

`filter[A088609(n+1), A326072(#)]`
-/

namespace A326071.P16526388650925958366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P16526388650925958366

/-! ## A326071.P4414030609280376728

`filter[A174891(n+1), A326072(#)]`
-/

namespace A326071.P4414030609280376728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P4414030609280376728

/-! ## A326071.P8178664182508026499

`filter[A246716(n+1), A326072(#)]`
-/

namespace A326071.P8178664182508026499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P8178664182508026499

/-! ## A326071.P8947038008078050320

`filter[A253567(n+1), A326072(#)]`
-/

namespace A326071.P8947038008078050320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P8947038008078050320

/-! ## A326071.P15839555383738797859

`filter[A075378(n+1), A326072(#)]`
-/

namespace A326071.P15839555383738797859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P15839555383738797859

/-! ## A326071.P15617459356991605443

`filter[A088610(n+1), A326072(#)]`
-/

namespace A326071.P15617459356991605443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P15617459356991605443

/-! ## A326071.P17009291989451342505

`filter[A018252(n+1), A326072(#)]`
-/

namespace A326071.P17009291989451342505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P17009291989451342505

/-! ## A326071.P7620876847490129410

`filter[A065090(n+1), A326072(#)]`
-/

namespace A326071.P7620876847490129410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P7620876847490129410

/-! ## A326071.P10871353469426346459

`filter[A171581(n+1), A326072(#)]`
-/

namespace A326071.P10871353469426346459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P10871353469426346459

/-! ## A326071.P17955602719544586749

`filter[A073900(n+1), A326072(#)]`
-/

namespace A326071.P17955602719544586749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P17955602719544586749

/-! ## A326071.P5573617593952442999

`filter[A073899(n+1), A326072(#)]`
-/

namespace A326071.P5573617593952442999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P5573617593952442999

/-! ## A326071.P15238847037305244305

`filter[A121543(n+1), A326072(#)]`
-/

namespace A326071.P15238847037305244305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P15238847037305244305

/-! ## A326071.P15324482049919367844

`filter[A089088(n), A326072(#)]`
-/

namespace A326071.P15324482049919367844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P15324482049919367844

/-! ## A326071.P10685007888168442803

`filter[A337843(n), A326072(#)]`
-/

namespace A326071.P10685007888168442803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326072 (f1 j).toNat = 1) n)

end

end A326071.P10685007888168442803

/-!
# A326072: a(n) = 0 if sign(A325977(n)) = sign(A325978(n)), otherwise a(n) = 1.

The programs for A326072, there is no canonical definition to state claims against.
-/

/-! ## A326072.P1124227366455644413

`char[A326071(n+1)-1]`
-/

namespace A326072.P1124227366455644413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326072.P1124227366455644413

/-! ## A326072.P4709262979173395134

`1-char[A326070(n+1)-1]`
-/

namespace A326072.P4709262979173395134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326070 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326072.P4709262979173395134

/-! ## A326072.P11923161042585618133

`char[Δ[A326071(A158416(n))]]`
-/

namespace A326072.P11923161042585618133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326072.P11923161042585618133

/-! ## A326072.P14443424884025104931

`char[A023443(A326071(n+1))]`
-/

namespace A326072.P14443424884025104931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A326071 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A326072.P14443424884025104931

/-! ## A326072.P179704431364042620

`and(A083035(∏{e}[n+1, 2*#+1]), A128160(n+3))`
-/

namespace A326072.P179704431364042620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083035 (∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1))) (A128160 (n + 3))

end

end A326072.P179704431364042620

/-!
# A326073: a(n) = gcd(1+n-A020639(n), 1+sigma(n)-A020639(n)-n), where A020639 gives the smallest prime factor of n (and 1 for 1), and sigma is the sum of divisors of n.

The programs for A326073, there is no canonical definition to state claims against.
-/

/-! ## A326073.P5780185965556960078

`gcd(1+n+1-A020639(n+1), 1+A000203(n+1)-A020639(n+1)-(n+1))`
-/

namespace A326073.P5780185965556960078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((1 + (n + 1) : ℤ) - A020639 (n + 1)) (1 + A000203 (n + 1) - A020639 (n + 1) - (n + 1 : ℤ))

end

end A326073.P5780185965556960078

/-! ## A326073.P15061623023325574197

`gcd(A073759(n+1)+1, A033879(n+1))`
-/

namespace A326073.P15061623023325574197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073759 (n + 1) + 1) (A033879 (n + 1))

end

end A326073.P15061623023325574197

/-! ## A326073.P10572562400107495137

`gcd(A004442(A073759(n+1)), A033879(n+1))`
-/

namespace A326073.P10572562400107495137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (A073759 (n + 1)).toNat) (A033879 (n + 1))

end

end A326073.P10572562400107495137

/-! ## A326073.P10607150310193577404

`gcd(A033880(n+1), A141310(A073759(n+1)))`
-/

namespace A326073.P10607150310193577404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A141310 (A073759 (n + 1)).toNat)

end

end A326073.P10607150310193577404

/-! ## A326073.P5467045383963381319

`A327531(gcd(n, A033879(n+1)))`
-/

namespace A326073.P5467045383963381319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327531 (Int.gcd (n : ℤ) (A033879 (n + 1)))

end

end A326073.P5467045383963381319

/-!
# A326074: Numbers n for which A326073(n) is equal to abs(1+A326146(n)).

The programs for A326074, there is no canonical definition to state claims against.
-/

/-! ## A326074.P17591480338957212266

`A313057(A296788(n))-A106517(n)`
-/

namespace A326074.P17591480338957212266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 (A296788 n).toNat - A106517 n

end

end A326074.P17591480338957212266

/-!
# A326075: Difference between the number of prime divisors in a nonstandard factorization process based on the sieve of Eratosthenes vs. their number in the ordinary factorization of n (when counted with multiplicity): a(n) = A253557(n) - A001222(n).

The programs for A326075, there is no canonical definition to state claims against.
-/

/-! ## A326075.P13852106782910879685

`A253557(n+1)-A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A326075.P13852106782910879685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A001222 (n + 1)

end

end A326075.P13852106782910879685

/-! ## A326075.P16102887657128750521

`A001222(A250246(n+1))-A001222(n+1)`
-/

namespace A326075.P16102887657128750521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A250246 (n + 1)).toNat - A001222 (n + 1)

end

end A326075.P16102887657128750521

/-! ## A326075.P16285602084585416828

`A001222(A278524(n+1))-A001222(n+1)`
-/

namespace A326075.P16285602084585416828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278524 (n + 1)).toNat - A001222 (n + 1)

end

end A326075.P16285602084585416828

/-! ## A326075.P12746845611876299269

`A253559(n+1)-A252736(n+1)`
-/

namespace A326075.P12746845611876299269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (n + 1) - A252736 (n + 1)

end

end A326075.P12746845611876299269

/-! ## A326075.P10571870037309464219

`A253557(n+1)-A253557(A061142(n+1))`
-/

namespace A326075.P10571870037309464219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A253557 (A061142 (n + 1)).toNat

end

end A326075.P10571870037309464219

/-! ## A326075.P6861813923526731573

`A253555(n+1)-(A253556(n+1)+A001222(n+1))`
-/

namespace A326075.P6861813923526731573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253555 (n + 1) - (A253556 (n + 1) + A001222 (n + 1))

end

end A326075.P6861813923526731573

/-! ## A326075.P3893770624386273031

`A253559(n+1)-A285726(2*(n+1))`
-/

namespace A326075.P3893770624386273031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (n + 1) - A285726 (2 * (n + 1))

end

end A326075.P3893770624386273031

/-! ## A326075.P5099698566199019323

`A252736(A278524(n+1))-A252736(n+1)`
-/

namespace A326075.P5099698566199019323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A278524 (n + 1)).toNat - A252736 (n + 1)

end

end A326075.P5099698566199019323

/-! ## A326075.P13913774955510161587

`A253557(n+1)-A253557(A250245(n+1))`
-/

namespace A326075.P13913774955510161587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A253557 (A250245 (n + 1)).toNat

end

end A326075.P13913774955510161587

/-! ## A326075.P767805640654894230

`A253559(n+1)-A253559(A250245(n+1))`
-/

namespace A326075.P767805640654894230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (n + 1) - A253559 (A250245 (n + 1)).toNat

end

end A326075.P767805640654894230

/-! ## A326075.P2852030635834822066

`A001222(A250250(n+1))-A001222(n+1)`
-/

namespace A326075.P2852030635834822066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A250250 (n + 1)).toNat - A001222 (n + 1)

end

end A326075.P2852030635834822066

/-! ## A326075.P12272122269371260712

`A001222(A280496(2*(n+1)))-A001222(n+1)`
-/

namespace A326075.P12272122269371260712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A280496 (2 * (n + 1))).toNat - A001222 (n + 1)

end

end A326075.P12272122269371260712

/-! ## A326075.P14270665573052114149

`A001222(A346486(n+1)*A346487(n+1))-A001222(n+1)`
-/

namespace A326075.P14270665573052114149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A346486 (n + 1) * A346487 (n + 1)).toNat - A001222 (n + 1)

end

end A326075.P14270665573052114149

/-! ## A326075.P12090877620357398298

`A252736(A250246(n+1))-A252736(n+1)`
-/

namespace A326075.P12090877620357398298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A250246 (n + 1)).toNat - A252736 (n + 1)

end

end A326075.P12090877620357398298

/-! ## A326075.P1995565043707635044

`A252736(A250250(n+1))-A252736(n+1)`
-/

namespace A326075.P1995565043707635044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A250250 (n + 1)).toNat - A252736 (n + 1)

end

end A326075.P1995565043707635044

/-!
# A326076: Number of subsets of {1..n} containing all of their integer products <= n.

The programs for A326076, there is no canonical definition to state claims against.
-/

/-! ## A326076.P13507765896026694161

`A036452(n+1)*A326114(n)`
-/

namespace A326076.P13507765896026694161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A326114 n

end

end A326076.P13507765896026694161

/-! ## A326076.P12584533532841188242

`A036453(n+1)*A326114(n)`
-/

namespace A326076.P12584533532841188242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A326114 n

end

end A326076.P12584533532841188242

/-! ## A326076.P2168995754430580646

`(2-A000007(n))*A326114(n)`
-/

namespace A326076.P2168995754430580646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A326114 n

end

end A326076.P2168995754430580646

/-!
# A326078: Number of subsets of {2..n} containing all of their integer quotients > 1.

The programs for A326078, there is no canonical definition to state claims against.
-/

/-! ## A326078.P5889607161618948740

`ceil(A326079(n)/2)`
-/

namespace A326078.P5889607161618948740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326079 n : ℚ) / 2⌉

end

end A326078.P5889607161618948740

/-! ## A326078.P4789432451384345674

`A326023(n)-ceil(n/63)`
-/

namespace A326078.P4789432451384345674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326023 n - ⌈(n : ℚ) / 63⌉

end

end A326078.P4789432451384345674

/-! ## A326078.P13727756635005001078

`A326079(round(sqrt(n²+1)))/2`
-/

namespace A326078.P13727756635005001078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326079 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2

end

end A326078.P13727756635005001078

/-! ## A326078.P6715048501501380233

`abs(A326023(n)+A057428(n))`
-/

namespace A326078.P6715048501501380233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A326023 n + A057428 n|

end

end A326078.P6715048501501380233

/-! ## A326078.P12488951972572128306

`abs(A057427(n)-A326023(n))`
-/

namespace A326078.P12488951972572128306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057427 n - A326023 n|

end

end A326078.P12488951972572128306

/-!
# A326079: Number of subsets of {1..n} containing all of their integer quotients > 1.

The programs for A326079, there is no canonical definition to state claims against.
-/

/-! ## A326079.P12528388528746063616

`A000122(n²)*A326078(n)`
-/

namespace A326079.P12528388528746063616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A326078 n

end

end A326079.P12528388528746063616

/-! ## A326079.P2357656064516402050

`ratio[A011782(n)]*A326078(n)`
-/

namespace A326079.P2357656064516402050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A326078 n : ℚ)

end

end A326079.P2357656064516402050

/-! ## A326079.P16679770801536743830

`A326023(n)+A326078(n)-1`
-/

namespace A326079.P16679770801536743830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326023 n + (A326078 n - 1)

end

end A326079.P16679770801536743830

/-!
# A326080: Number of subsets of {1..n} containing the sum of every subset whose sum is <= n.

The programs for A326080, there is no canonical definition to state claims against.
-/

/-! ## A326080.P4138149215010033773

`∑[A179822(n)]`
-/

namespace A326080.P4138149215010033773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326080.P4138149215010033773

/-! ## A326080.P13120220340799275786

`2^n-A384350(n)`
-/

namespace A326080.P13120220340799275786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A384350 n

end

end A326080.P13120220340799275786

/-! ## A326080.P5209427069416573315

`A179822(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A326080.P5209427069416573315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179822 (A028310 n).toNat + a (n - 1)

end

end A326080.P5209427069416573315

/-! ## A326080.P12058645678704022170

`a(n-1)+A179822(n)+A000007(n)` with `a(0)=1`
-/

namespace A326080.P12058645678704022170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A179822 n + A000007 n)

end

end A326080.P12058645678704022170

/-! ## A326080.P12345299251095178288

`A225687(A167667(n))`
-/

namespace A326080.P12345299251095178288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A167667 n).toNat

end

end A326080.P12345299251095178288

/-!
# A326081: Number of subsets of {1..n} containing the product of any set of distinct elements whose product is <= n.

The programs for A326081, there is no canonical definition to state claims against.
-/

/-! ## A326081.P13199679984404302674

`gcd(2, A000010(n+2))*A308542(A028310(n))`
-/

namespace A326081.P13199679984404302674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) * A308542 (A028310 n).toNat

end

end A326081.P13199679984404302674

/-! ## A326081.P3363929417251059024

`A006530(A001316(n))*A308542(A028310(n))`
-/

namespace A326081.P3363929417251059024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A308542 (A028310 n).toNat

end

end A326081.P3363929417251059024

/-! ## A326081.P8209364392669561602

`A020639(A004277(n))*A308542(A028310(n))`
-/

namespace A326081.P8209364392669561602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A308542 (A028310 n).toNat

end

end A326081.P8209364392669561602

/-! ## A326081.P16421101960036723386

`A020639(A005598(n))*A308542(A028310(n))`
-/

namespace A326081.P16421101960036723386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005598 n).toNat * A308542 (A028310 n).toNat

end

end A326081.P16421101960036723386

/-! ## A326081.P15990574519615152349

`A014963(A102376(n))*A308542(A028310(n))`
-/

namespace A326081.P15990574519615152349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A102376 n).toNat * A308542 (A028310 n).toNat

end

end A326081.P15990574519615152349

/-!
# A326082: Number of maximal sets of pairwise indivisible divisors of n.

The programs for A326082, there is no canonical definition to state claims against.
-/

/-! ## A326082.P9548914469887496880

`A331852(A067824(n+1))`
-/

namespace A326082.P9548914469887496880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (A067824 (n + 1)).toNat

end

end A326082.P9548914469887496880

/-! ## A326082.P3568391899635992529

`A331246(A122977(n+1))`
-/

namespace A326082.P3568391899635992529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A122977 (n + 1)).toNat

end

end A326082.P3568391899635992529

/-! ## A326082.P9944875944158519825

`A113137(A286779(n+1)+1)`
-/

namespace A326082.P9944875944158519825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113137 (A286779 (n + 1) + 1).toNat

end

end A326082.P9944875944158519825

/-! ## A326082.P9572564179679721611

`A331852(A337256(n+1)/2)`
-/

namespace A326082.P9572564179679721611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331852 (SequenceMachineLib.roundAway ((A337256 (n + 1) : ℚ) / 2)).toNat

end

end A326082.P9572564179679721611

/-! ## A326082.P10410742319691562207

`A331854(or(1, A067824(n+1)))`
-/

namespace A326082.P10410742319691562207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331854 (Int.lor 1 (A067824 (n + 1))).toNat

end

end A326082.P10410742319691562207

/-!
# A326083: Number of subsets of {1..n} containing all of their pairwise sums <= n.

The programs for A326083, there is no canonical definition to state claims against.
-/

/-! ## A326083.P10220699469205657204

`A124506(n)+a(n-1)` with `a(0)=1`
-/

namespace A326083.P10220699469205657204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124506 n + a (n - 1)

end

end A326083.P10220699469205657204

/-! ## A326083.P16949775859489997361

`∑[A124506(abs(1-n)+1)]`
-/

namespace A326083.P16949775859489997361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124506 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326083.P16949775859489997361

/-! ## A326083.P9394620167203193851

`A103580(n)+a(A000038(n))` with `a(0)=1`
-/

namespace A326083.P9394620167203193851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103580 n + a (A000038 n).toNat

end

end A326083.P9394620167203193851

/-! ## A326083.P2255621126092179534

`A103580(A028310(n))+ceil(sin(n)²)`
-/

namespace A326083.P2255621126092179534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A326083.P2255621126092179534

/-! ## A326083.P12516198006595814633

`A103580(n)+A000010(a(and(1, n)))` with `a(0)=1, a(1)=2`
-/

namespace A326083.P12516198006595814633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A103580 n + A000010 (a (Nat.land 1 n)).toNat

end

end A326083.P12516198006595814633

/-! ## A326083.P4840396650652875280

`A103580(A065033(2*n))+(n+2)%(n+1)`
-/

namespace A326083.P4840396650652875280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A065033 (2 * n)).toNat + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A326083.P4840396650652875280

/-! ## A326083.P7251824721908501561

`A103580(n)-(a(A065205(2*n+1))%2-2)` with `a(0)=1`
-/

namespace A326083.P7251824721908501561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103580 n - (Int.tmod (a (A065205 (2 * n + 1)).toNat) 2 - 2)

end

end A326083.P7251824721908501561

/-! ## A326083.P14415034223265841071

`A103580(A028310(n))+A057427(n)`
-/

namespace A326083.P14415034223265841071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + A057427 n

end

end A326083.P14415034223265841071

/-! ## A326083.P16331042534128813110

`A178334(n)+A103580(A028310(n))`
-/

namespace A326083.P16331042534128813110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A103580 (A028310 n).toNat

end

end A326083.P16331042534128813110

/-! ## A326083.P3443776123842195515

`A103580(A028310(n))+1-A000007(n)`
-/

namespace A326083.P3443776123842195515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + (1 - A000007 n)

end

end A326083.P3443776123842195515

/-! ## A326083.P14808888785631719904

`A103580(A028310(n))+A019425(2*n)`
-/

namespace A326083.P14808888785631719904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + A019425 (2 * n)

end

end A326083.P14808888785631719904

/-! ## A326083.P3395208339261185708

`A103580(A028310(n))%A000079(n)+1`
-/

namespace A326083.P3395208339261185708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103580 (A028310 n).toNat) (A000079 n) + 1

end

end A326083.P3395208339261185708

/-! ## A326083.P2386879318325054926

`A103580(A028310(n))+char[A003963(n+1)]`
-/

namespace A326083.P2386879318325054926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326083.P2386879318325054926

/-! ## A326083.P13766686650135550485

`A103580(A028310(n))+char[A064216(n+1)]`
-/

namespace A326083.P13766686650135550485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A326083.P13766686650135550485

/-! ## A326083.P18152694009944527537

`A103580(A028310(n))+A000040(n+1)%2`
-/

namespace A326083.P18152694009944527537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A326083.P18152694009944527537

/-! ## A326083.P3942515333827251638

`gcd(2, A000010(n+2))+A103580(A028310(n))-1`
-/

namespace A326083.P3942515333827251638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) : ℤ) + (A103580 (A028310 n).toNat - 1)

end

end A326083.P3942515333827251638

/-! ## A326083.P94499510095828239

`A103580(A028310(n))+A000035(A000040(n+1))`
-/

namespace A326083.P94499510095828239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103580 (A028310 n).toNat + A000035 (A000040 (n + 1)).toNat

end

end A326083.P94499510095828239

/-!
# A326088: G.f. A(x) satisfies: Sum_{n>=0} A(x)^(n^2) * x^n = Sum_{n>=0} ((1+x)^n - 1)^n.

The programs for A326088, there is no canonical definition to state claims against.
-/

/-! ## A326088.P10513401432956667865

`∑[A245894(n+1)+A025581(3*n+2)]`
-/

namespace A326088.P10513401432956667865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245894 (n + 1) + A025581 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A326088.P10513401432956667865

/-!
# A326089: G.f. A(x) satisfies: 1 + 2 * Sum_{n>=1} A(x)^(n*(n+1)/2) * x^n = Sum_{n>=0} (1 + x*A(x)^n)^n * x^n.

The programs for A326089, there is no canonical definition to state claims against.
-/

/-! ## A326089.P4363958153425051312

`ceil(∑[A101894(2*(n+1)²)]/3)`
-/

namespace A326089.P4363958153425051312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101894 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉

end

end A326089.P4363958153425051312

/-!
# A326090: E.g.f.: Sum_{n>=0} (1 + exp(n*x))^n * x^n/n!.

The programs for A326090, there is no canonical definition to state claims against.
-/

/-! ## A326090.P752686202625252446

`A080944(floor(sqrt(A198038(n+1))))`
-/

namespace A326090.P752686202625252446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080944 (Int.sqrt (A198038 (n + 1))).toNat

end

end A326090.P752686202625252446

/-! ## A326090.P6269644384367322418

`A239492(A239379(n))+∏{e}[n+1, #+1]`
-/

namespace A326090.P6269644384367322418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (A239379 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A326090.P6269644384367322418

/-!
# A326091: E.g.f.: Sum_{n>=0} (2 + exp(n*x))^n * x^n/n!.

The programs for A326091, there is no canonical definition to state claims against.
-/

/-! ## A326091.P18238427185561721163

`A268129(∑[(n+1)^n])`
-/

namespace A326091.P18238427185561721163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A326091.P18238427185561721163

/-!
# A326092: E.g.f.: Sum_{n>=0} ((1+x)^n + 2)^n * x^n/n!.

The programs for A326092, there is no canonical definition to state claims against.
-/

/-! ## A326092.P16301008035210187323

`or(1, n*A294748(a(n-1)))` with `a(0)=1, a(1)=3`
-/

namespace A326092.P16301008035210187323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor 1 ((n : ℤ) * A294748 (a (n - 1)).toNat)

end

end A326092.P16301008035210187323

/-!
# A326093: E.g.f.: Sum_{n>=0} ((1+x)^n + 3)^n * x^n/n!.

The programs for A326093, there is no canonical definition to state claims against.
-/

/-! ## A326093.P15844568473327979127

`A178241(A119098(n+1))`
-/

namespace A326093.P15844568473327979127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178241 (A119098 (n + 1)).toNat

end

end A326093.P15844568473327979127

/-!
# A326094: E.g.f.: Sum_{n>=0} ((1+x)^n + 4)^n * x^n/n!.

The programs for A326094, there is no canonical definition to state claims against.
-/

/-! ## A326094.P8756151746808190714

`A226482(7*A115416(n))`
-/

namespace A326094.P8756151746808190714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 (7 * A115416 n).toNat

end

end A326094.P8756151746808190714

/-!
# A326095: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} (exp(n*x) - A(x))^n / n!.

The programs for A326095, there is no canonical definition to state claims against.
-/

/-! ## A326095.P15349537358210003225

`A081164(∑[floor(ϕ*n)])`
-/

namespace A326095.P15349537358210003225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A326095.P15349537358210003225

/-!
# A326096: E.g.f.: Sum_{n>=0} ((1+x)^n + 1)^n * x^n/n!.

The programs for A326096, there is no canonical definition to state claims against.
-/

/-! ## A326096.P17747946040677531894

`A003958(or(A136222(n), A166633(n+1)))`
-/

namespace A326096.P17747946040677531894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (Int.lor (A136222 n) (A166633 (n + 1))).toNat

end

end A326096.P17747946040677531894

/-!
# A326097: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} ((1+x)^n - A(x))^n / n!.

The programs for A326097, there is no canonical definition to state claims against.
-/

/-! ## A326097.P2492904874464076961

`ceil(p?[2^n+3^n+4^n]/455)`
-/

namespace A326097.P2492904874464076961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + (3 ^ n + 4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 455⌉

end

end A326097.P2492904874464076961

/-!
# A326099: Number of nXn 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A326099, there is no canonical definition to state claims against.
-/

/-! ## A326099.P11221358445669548270

`A326105(∑[4*n]+1)`
-/

namespace A326099.P11221358445669548270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A326099.P11221358445669548270

/-! ## A326099.P1222781916145480567

`A326105(A001844(n))+A069816(n)`
-/

namespace A326099.P1222781916145480567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326105 (A001844 n).toNat + A069816 n

end

end A326099.P1222781916145480567

/-! ## A326099.P3516466922000987968

`A007318(∑[n])*A326105(A001844(n))`
-/

namespace A326099.P3516466922000987968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A326105 (A001844 n).toNat

end

end A326099.P3516466922000987968

/-! ## A326099.P261936125010870213

`A326105(A001844(n))^A007318(C(n, 64))`
-/

namespace A326099.P261936125010870213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326105 (A001844 n).toNat : ℚ) ^ (A007318 (Nat.choose n 64) : ℤ)

end

end A326099.P261936125010870213

/-! ## A326099.P10691004987374591272

`A000041(C(2, n+2))*A326105(A001844(n))`
-/

namespace A326099.P10691004987374591272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A326105 (A001844 n).toNat

end

end A326099.P10691004987374591272

