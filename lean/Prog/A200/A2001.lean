import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025

/-!
# A200123: Decimal expansion of greatest x satisfying 2*x^2 - 3*cos(x) = 2*sin(x).

The programs for A200123, there is no canonical definition to state claims against.
-/

/-! ## A200123.P7351759438395324906

`A252742(A000070(2*n+3))+A138811(n)`
-/

namespace A200123.P7351759438395324906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A000070 (2 * n + 3)).toNat + A138811 n

end

end A200123.P7351759438395324906

/-!
# A200139: Triangle T(n,k), read by rows, given by (1,1,0,0,0,0,0,0,0,...) DELTA (1,0,0,0,0,0,0,0,0,...) where DELTA is the operator defined in A084938.

The programs for A200139, the canonical program `A200139.P8566556275138631539` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200139 has offset 0).

The definition of A200139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200139.P7524406459750541930

`abs(A118800(n))`
-/

namespace A200139.P7524406459750541930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118800 n|

end

end A200139.P7524406459750541930

namespace A200139

/-- `abs(A118800(n))` -/
def P7524406459750541930.Spec : Prop :=
  ∀ n, P7524406459750541930.a n = A200139 n

end A200139

/-! ## A200139.P2124898543861360674

`A193735(n)/A130321(n)`
-/

namespace A200139.P2124898543861360674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193735 n : ℚ) / (A130321 n : ℚ)

end

end A200139.P2124898543861360674

namespace A200139

/-- `A193735(n)/A130321(n)` -/
def P2124898543861360674.Spec : Prop :=
  ∀ n, P2124898543861360674.a n = (A200139 n : ℚ)

end A200139

/-! ## A200139.P3305748368639155212

`gcd(A000038(n), A118800(n))`
-/

namespace A200139.P3305748368639155212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A118800 n)

end

end A200139.P3305748368639155212

namespace A200139

/-- `gcd(A000038(n), A118800(n))` -/
def P3305748368639155212.Spec : Prop :=
  ∀ n, (P3305748368639155212.a n : ℤ) = A200139 n

end A200139

/-! ## A200139.P9451307180940087230

`lcm(A020985(n), A118800(n))`
-/

namespace A200139.P9451307180940087230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A118800 n)

end

end A200139.P9451307180940087230

namespace A200139

/-- `lcm(A020985(n), A118800(n))` -/
def P9451307180940087230.Spec : Prop :=
  ∀ n, (P9451307180940087230.a n : ℤ) = A200139 n

end A200139

/-! ## A200139.P8566556275138631539

`A135226(n)*A155038(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A200139

/-- `A135226(n)*A155038(n+1)` -/
def P8566556275138631539.Spec : Prop :=
  ∀ n, P8566556275138631539.a n = A200139 n

theorem P8566556275138631539.correct : P8566556275138631539.Spec := by
  intro n
  simp only [A200139]

end A200139

/-! ## A200139.P3867119106837901356

`A029635(n)/2*A130321(n)`
-/

namespace A200139.P3867119106837901356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029635 n : ℚ) / 2 * (A130321 n : ℚ)

end

end A200139.P3867119106837901356

namespace A200139

/-- `A029635(n)/2*A130321(n)` -/
def P3867119106837901356.Spec : Prop :=
  ∀ n, P3867119106837901356.a n = (A200139 n : ℚ)

end A200139

/-! ## A200139.P12795973915595653307

`2*A038207(n)-A209149(n+1)`
-/

namespace A200139.P12795973915595653307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 n - A209149 (n + 1)

end

end A200139.P12795973915595653307

namespace A200139

/-- `2*A038207(n)-A209149(n+1)` -/
def P12795973915595653307.Spec : Prop :=
  ∀ n, P12795973915595653307.a n = A200139 n

end A200139

/-! ## A200139.P8202565850648476121

`A097807(A061579(n))*A118800(n)`
-/

namespace A200139.P8202565850648476121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A118800 n

end

end A200139.P8202565850648476121

namespace A200139

/-- `A097807(A061579(n))*A118800(n)` -/
def P8202565850648476121.Spec : Prop :=
  ∀ n, P8202565850648476121.a n = A200139 n

end A200139

/-! ## A200139.P8488239049846762710

`A038207(A004277(n)-n)-A183190(n)`
-/

namespace A200139.P8488239049846762710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A004277 n - (n : ℤ)).toNat - A183190 n

end

end A200139.P8488239049846762710

namespace A200139

/-- `A038207(A004277(n)-n)-A183190(n)` -/
def P8488239049846762710.Spec : Prop :=
  ∀ n, P8488239049846762710.a n = A200139 n

end A200139

/-! ## A200139.P16981183341888121825

`A112857(n)/A118801(n)*A118800(n)`
-/

namespace A200139.P16981183341888121825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112857 n : ℚ) / (A118801 n : ℚ) * (A118800 n : ℚ)

end

end A200139.P16981183341888121825

namespace A200139

/-- `A112857(n)/A118801(n)*A118800(n)` -/
def P16981183341888121825.Spec : Prop :=
  ∀ n, P16981183341888121825.a n = (A200139 n : ℚ)

end A200139

/-! ## A200139.P5683141339411734656

`A081277(A061579(n))`
-/

namespace A200139.P5683141339411734656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A061579 n).toNat

end

end A200139.P5683141339411734656

namespace A200139

/-- `A081277(A061579(n))` -/
def P5683141339411734656.Spec : Prop :=
  ∀ n, P5683141339411734656.a n = A200139 n

end A200139

/-! ## A200139.P12852066401204974246

`A081277(A038722(n+1)-1)`
-/

namespace A200139.P12852066401204974246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A038722 (n + 1) - 1).toNat

end

end A200139.P12852066401204974246

namespace A200139

/-- `A081277(A038722(n+1)-1)` -/
def P12852066401204974246.Spec : Prop :=
  ∀ n, P12852066401204974246.a n = A200139 n

end A200139

/-! ## A200139.P9517743878479883472

`A081277(A038722(n+2))`
-/

namespace A200139.P9517743878479883472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 (A038722 (n + 2)).toNat

end

end A200139.P9517743878479883472

namespace A200139

/-- `A081277(A038722(n+2))` -/
def P9517743878479883472.Spec : Prop :=
  ∀ n, P9517743878479883472.a n = A200139 n

end A200139

/-! ## A200139.P14210460068812590709

`A198792(A007401(n+2))+A198792(n)`
-/

namespace A200139.P14210460068812590709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 (A007401 (n + 2)).toNat + A198792 n

end

end A200139.P14210460068812590709

namespace A200139

/-- `A198792(A007401(n+2))+A198792(n)` -/
def P14210460068812590709.Spec : Prop :=
  ∀ n, P14210460068812590709.a n = A200139 n

end A200139

/-! ## A200139.P7149384643900369888

`abs(A028297(A056537(n+1)-1))`
-/

namespace A200139.P7149384643900369888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A028297 (A056537 (n + 1) - 1).toNat|

end

end A200139.P7149384643900369888

namespace A200139

/-- `abs(A028297(A056537(n+1)-1))` -/
def P7149384643900369888.Spec : Prop :=
  ∀ n, P7149384643900369888.a n = A200139 n

end A200139

/-! ## A200139.P8173918253178761329

`A201701(A245300(n))`
-/

namespace A200139.P8173918253178761329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A245300 n).toNat

end

end A200139.P8173918253178761329

namespace A200139

/-- `A201701(A245300(n))` -/
def P8173918253178761329.Spec : Prop :=
  ∀ n, P8173918253178761329.a n = A200139 n

end A200139

/-!
# A200140: Central terms in odd-indexed rows of triangle A200171.

The programs for A200140, there is no canonical definition to state claims against.
-/

/-! ## A200140.P18383292566273249039

`A200171((n+1)²+n²)`
-/

namespace A200140.P18383292566273249039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 ((n + 1) ^ 2 + n ^ 2)

end

end A200140.P18383292566273249039

/-! ## A200140.P10263102027017068301

`A200171(A001844(n))+A184945(n)`
-/

namespace A200140.P10263102027017068301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (A001844 n).toNat + A184945 n

end

end A200140.P10263102027017068301

/-! ## A200140.P1729063802994575482

`A200171(A001844(n))*A291168(n)`
-/

namespace A200140.P1729063802994575482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (A001844 n).toNat * A291168 n

end

end A200140.P1729063802994575482

/-! ## A200140.P13507577148207810423

`or(A000007(n), A200171(A001844(n)))`
-/

namespace A200140.P13507577148207810423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A200171 (A001844 n).toNat)

end

end A200140.P13507577148207810423

/-! ## A200140.P8798069236456861723

`A200171(A001844(n))%A262847(n+1)`
-/

namespace A200140.P8798069236456861723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200171 (A001844 n).toNat) (A262847 (n + 1))

end

end A200140.P8798069236456861723

/-!
# A200141: Upper bound by J. Rivat and J. Wu on constant arising in Piatetski-Shapiro primes.

The programs for A200141, the canonical program `A200141.P4492839753091905352` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200141 has offset 1).

The definition of A200141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200141.P4492839753091905352

`a(n-5)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=5, a(4)=3, a(5)=6, a(6)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A200141

/-- `a(n-5)` -/
def P4492839753091905352.Spec : Prop :=
  ∀ n, (P4492839753091905352.a n : ℤ) = A200141 (n + 1)

theorem P4492839753091905352.correct : P4492839753091905352.Spec := by
  intro n
  simp only [A200141, Nat.add_sub_cancel]

end A200141

/-!
# A200142: Number of near-matchings on the complete graph over 2n+1 vertices.

The programs for A200142, the canonical program `A200142.P15676160989340670866` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200142 has offset 1).

The definition of A200142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A200142.P15676160989340670866

`(2*(n+1)+1)!/(2^(n+1)*n!)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A200142

/-- `(2*(n+1)+1)!/(2^(n+1)*n!)` -/
def P15676160989340670866.Spec : Prop :=
  ∀ n, P15676160989340670866.a n = (A200142 (n + 1) : ℚ)

end A200142

/-! ## A200142.P13071442901546133077

`(n+1)*∏[2*n+3]`
-/

namespace A200142.P13071442901546133077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A200142.P13071442901546133077

namespace A200142

/-- `(n+1)*∏[2*n+3]` -/
def P13071442901546133077.Spec : Prop :=
  ∀ n, (P13071442901546133077.a n : ℤ) = A200142 (n + 1)

end A200142

/-! ## A200142.P6933610438692751656

`A065931(∑[n+2])`
-/

namespace A200142.P6933610438692751656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065931 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200142.P6933610438692751656

namespace A200142

/-- `A065931(∑[n+2])` -/
def P6933610438692751656.Spec : Prop :=
  ∀ n, P6933610438692751656.a n = A200142 (n + 1)

end A200142

/-! ## A200142.P17104234689955645721

`record[A351990(n+3)]`
-/

namespace A200142.P17104234689955645721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351990 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200142.P17104234689955645721

namespace A200142

/-- `record[A351990(n+3)]` -/
def P17104234689955645721.Spec : Prop :=
  ∀ n, P17104234689955645721.a n = A200142 (n + 1)

end A200142

/-! ## A200142.P1401784764788584283

`A293656(2*(n+1))`
-/

namespace A200142.P1401784764788584283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293656 (2 * (n + 1))

end

end A200142.P1401784764788584283

namespace A200142

/-- `A293656(2*(n+1))` -/
def P1401784764788584283.Spec : Prop :=
  ∀ n, P1401784764788584283.a n = A200142 (n + 1)

end A200142

/-! ## A200142.P13335288863418165395

`A351990(2*n+3)`
-/

namespace A200142.P13335288863418165395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351990 (2 * n + 3)

end

end A200142.P13335288863418165395

namespace A200142

/-- `A351990(2*n+3)` -/
def P13335288863418165395.Spec : Prop :=
  ∀ n, P13335288863418165395.a n = A200142 (n + 1)

end A200142

/-! ## A200142.P7619709025783235149

`A065943(∑[n+1]+1)`
-/

namespace A200142.P7619709025783235149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065943 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200142.P7619709025783235149

namespace A200142

/-- `A065943(∑[n+1]+1)` -/
def P7619709025783235149.Spec : Prop :=
  ∀ n, P7619709025783235149.a n = A200142 (n + 1)

end A200142

/-! ## A200142.P858454688862153710

`A000906(n)+A000457(n)`
-/

namespace A200142.P858454688862153710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000906 n + A000457 n

end

end A200142.P858454688862153710

namespace A200142

/-- `A000906(n)+A000457(n)` -/
def P858454688862153710.Spec : Prop :=
  ∀ n, P858454688862153710.a n = A200142 (n + 1)

end A200142

/-! ## A200142.P2345484554271374819

`A001879(n+1)-A001147(n+2)`
-/

namespace A200142.P2345484554271374819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001879 (n + 1) - A001147 (n + 2)

end

end A200142.P2345484554271374819

namespace A200142

/-- `A001879(n+1)-A001147(n+2)` -/
def P2345484554271374819.Spec : Prop :=
  ∀ n, P2345484554271374819.a n = A200142 (n + 1)

end A200142

/-! ## A200142.P17650261932712609985

`A397580(n+2)+A035101(n+2)`
-/

namespace A200142.P17650261932712609985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397580 (n + 2) + A035101 (n + 2)

end

end A200142.P17650261932712609985

namespace A200142

/-- `A397580(n+2)+A035101(n+2)` -/
def P17650261932712609985.Spec : Prop :=
  ∀ n, P17650261932712609985.a n = A200142 (n + 1)

end A200142

/-!
# A200144: The number of multinomial coefficients, based on a set of partitions of n into m positions, divisible by m entirely.

The programs for A200144, there is no canonical definition to state claims against.
-/

/-! ## A200144.P5115517488931794352

`A144200(A000837(n))+A000837(n+1)`
-/

namespace A200144.P5115517488931794352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144200 (A000837 n).toNat + A000837 (n + 1)

end

end A200144.P5115517488931794352

/-! ## A200144.P11712518571157257144

`A152489(A000041(n))+A000837(n+1)`
-/

namespace A200144.P11712518571157257144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152489 (A000041 n).toNat + A000837 (n + 1)

end

end A200144.P11712518571157257144

/-! ## A200144.P12196327580928194744

`A055641(A112837(n))+A000837(n+1)`
-/

namespace A200144.P12196327580928194744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A112837 n).toNat + A000837 (n + 1)

end

end A200144.P12196327580928194744

/-! ## A200144.P5733071141496376079

`A374247(A035363(2*n))+A000837(n+1)`
-/

namespace A200144.P5733071141496376079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374247 (A035363 (2 * n)).toNat + A000837 (n + 1)

end

end A200144.P5733071141496376079

/-! ## A200144.P8675266741592610870

`A085736(A000837(n+1))`
-/

namespace A200144.P8675266741592610870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A000837 (n + 1)).toNat

end

end A200144.P8675266741592610870

/-!
# A200145: Primitive (squarefree) elements of A199745.

The programs for A200145, there is no canonical definition to state claims against.
-/

/-! ## A200145.P8714324016248535740

`record[∏{p}[A199745(n+1), #]]`
-/

namespace A200145.P8714324016248535740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200145.P8714324016248535740

/-! ## A200145.P4022317609594283412

`∩[A199745(n+1), A384498(n+1)]`
-/

namespace A200145.P4022317609594283412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A200145.P4022317609594283412

/-! ## A200145.P14600074741737622583

`A199745(eq[1, ∏{e}[A199745(n+1), #]]+1)`
-/

namespace A200145.P14600074741737622583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A200145.P14600074741737622583

/-! ## A200145.P2098430856310002202

`record[A007913(A199745(n+1))]`
-/

namespace A200145.P2098430856310002202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A199745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200145.P2098430856310002202

/-! ## A200145.P979724846833573531

`filter[A199745(n+1), A008966(#)]`
-/

namespace A200145.P979724846833573531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A200145.P979724846833573531

/-! ## A200145.P6770431027906661575

`filter[A199745(n+1), A354353(#)]`
-/

namespace A200145.P6770431027906661575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A200145.P6770431027906661575

/-! ## A200145.P10086977539569820543

`filter[A199745(n+1), A354819(#)]`
-/

namespace A200145.P10086977539569820543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A200145.P10086977539569820543

/-! ## A200145.P17904635967920608285

`filter[A199745(n+1), A380469(#)]`
-/

namespace A200145.P17904635967920608285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A200145.P17904635967920608285

/-!
# A200146: Triangle read by rows: T(n, k) = mod(k^(n - 1), n), where 1 <= k < n.

The programs for A200146, the canonical program `A200146.P12842493773213650661` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200146 has offset 2).

The definition of A200146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1652 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200146.P13764600211059506311

`((1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n]]])%(comp[∑[n]]-n)`
-/

namespace A200146.P13764600211059506311
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) ^ (∑ j ∈ Finset.range (n + 1), f4 j)) ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ))

end

end A200146.P13764600211059506311

namespace A200146

/-- `((1-C(∑[char[∑[n]]], 2)+n)^∑[char[∑[n]]])%(comp[∑[n]]-n)` -/
def P13764600211059506311.Spec : Prop :=
  ∀ n, P13764600211059506311.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P14771005349587351539

`A089072(n+1)%(n-comp[∑[n]])`
-/

namespace A200146.P14771005349587351539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089072 (n + 1)) ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A200146.P14771005349587351539

namespace A200146

/-- `A089072(n+1)%(n-comp[∑[n]])` -/
def P14771005349587351539.Spec : Prop :=
  ∀ n, P14771005349587351539.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P922371921771790822

`A076014(comp[∑[n]])%A003057(n+2)`
-/

namespace A200146.P922371921771790822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076014 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A003057 (n + 2))

end

end A200146.P922371921771790822

namespace A200146

/-- `A076014(comp[∑[n]])%A003057(n+2)` -/
def P922371921771790822.Spec : Prop :=
  ∀ n, P922371921771790822.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P16120107973370136252

`A076014(A014132(n+1))%(comp[∑[n]]-n)`
-/

namespace A200146.P16120107973370136252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076014 (A014132 (n + 1)).toNat) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A200146.P16120107973370136252

namespace A200146

/-- `A076014(A014132(n+1))%(comp[∑[n]]-n)` -/
def P16120107973370136252.Spec : Prop :=
  ∀ n, P16120107973370136252.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P4984131471582783177

`(A002260(n+1)^A130855(n))%(comp[∑[n]]-n)`
-/

namespace A200146.P4984131471582783177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A130855 n : ℤ))) ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A200146.P4984131471582783177

namespace A200146

/-- `(A002260(n+1)^A130855(n))%(comp[∑[n]]-n)` -/
def P4984131471582783177.Spec : Prop :=
  ∀ n, P4984131471582783177.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P15067711947120695851

`((A132118(n+1)-n)^(comp[C(n, 2)]-(n+1)))%A003057(n+2)`
-/

namespace A200146.P15067711947120695851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A132118 (n + 1) - (n : ℤ) : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ) : ℤ))) (A003057 (n + 2))

end

end A200146.P15067711947120695851

namespace A200146

/-- `((A132118(n+1)-n)^(comp[C(n, 2)]-(n+1)))%A003057(n+2)` -/
def P15067711947120695851.Spec : Prop :=
  ∀ n, P15067711947120695851.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P12842493773213650661

`(A009998(n)*A033918(n+1))%∑[A073423(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A200146

/-- `(A009998(n)*A033918(n+1))%∑[A073423(n)]` -/
def P12842493773213650661.Spec : Prop :=
  ∀ n, P12842493773213650661.a n = A200146 (n + 2)

theorem P12842493773213650661.correct : P12842493773213650661.Spec := by
  intro n
  simp only [A200146, Nat.add_sub_cancel]

end A200146

/-! ## A200146.P2881111188183668046

`(A002260(n+1)^A123578(n))%A003057(n+2)`
-/

namespace A200146.P2881111188183668046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) ^ (A123578 n : ℤ))) (A003057 (n + 2))

end

end A200146.P2881111188183668046

namespace A200146

/-- `(A002260(n+1)^A123578(n))%A003057(n+2)` -/
def P2881111188183668046.Spec : Prop :=
  ∀ n, P2881111188183668046.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P15020789869395008966

`A095887(A038722(n+1))%(n-comp[∑[n]])`
-/

namespace A200146.P15020789869395008966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095887 (A038722 (n + 1)).toNat) ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ))

end

end A200146.P15020789869395008966

namespace A200146

/-- `A095887(A038722(n+1))%(n-comp[∑[n]])` -/
def P15020789869395008966.Spec : Prop :=
  ∀ n, P15020789869395008966.a n = A200146 (n + 2)

end A200146

/-! ## A200146.P7072152917422299057

`A095887(A061579(n)+1)%∑[A073423(n)]`
-/

namespace A200146.P7072152917422299057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095887 (A061579 n + 1).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200146.P7072152917422299057

namespace A200146

/-- `A095887(A061579(n)+1)%∑[A073423(n)]` -/
def P7072152917422299057.Spec : Prop :=
  ∀ n, P7072152917422299057.a n = A200146 (n + 2)

end A200146

/-!
# A200147: Number of 0..1 arrays x(0..n-1) of n elements with zero n-1st difference.

The programs for A200147, there is no canonical definition to state claims against.
-/

/-! ## A200147.P8448929273141935708

`A200154(∑[n+1])`
-/

namespace A200147.P8448929273141935708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200147.P8448929273141935708

/-! ## A200147.P17253007280095339916

`A200154(A000217(n+1))+char[29]`
-/

namespace A200147.P17253007280095339916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200147.P17253007280095339916

/-! ## A200147.P971799180857277468

`A200154(A000217(n+1))%A350920(n)`
-/

namespace A200147.P971799180857277468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200154 (A000217 (n + 1)).toNat) (A350920 n)

end

end A200147.P971799180857277468

/-! ## A200147.P14326375594527149347

`or(A061858(n), A200154(A000217(n+1)))`
-/

namespace A200147.P14326375594527149347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061858 n) (A200154 (A000217 (n + 1)).toNat)

end

end A200147.P14326375594527149347

/-! ## A200147.P4158423880538148705

`∑{d}[A200154(A000217(n+1)), A000010(#)]`
-/

namespace A200147.P4158423880538148705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A200147.P4158423880538148705

/-!
# A200148: Number of 0..2 arrays x(0..n-1) of n elements with zero n-1st difference.

The programs for A200148, there is no canonical definition to state claims against.
-/

/-! ## A200148.P13683652274569936923

`A200154(∑[n+2])`
-/

namespace A200148.P13683652274569936923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200148.P13683652274569936923

/-! ## A200148.P14179649427367870969

`or(1, A200154(A000096(n+1)))`
-/

namespace A200148.P14179649427367870969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200154 (A000096 (n + 1)).toNat)

end

end A200148.P14179649427367870969

/-! ## A200148.P1510995886964935495

`A200154(A000096(n+1))%A000108(n+2)`
-/

namespace A200148.P1510995886964935495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200154 (A000096 (n + 1)).toNat) (A000108 (n + 2))

end

end A200148.P1510995886964935495

/-! ## A200148.P12713100614411938680

`A007318(C(2, n))*A200154(A000096(n+1))`
-/

namespace A200148.P12713100614411938680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200154 (A000096 (n + 1)).toNat

end

end A200148.P12713100614411938680

/-! ## A200148.P17949308707994555333

`A000010(C(2, n)!)*A200154(A000096(n+1))`
-/

namespace A200148.P17949308707994555333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A200154 (A000096 (n + 1)).toNat

end

end A200148.P17949308707994555333

/-!
# A200149: Number of 0..3 arrays x(0..n-1) of n elements with zero n-1st difference.

The programs for A200149, there is no canonical definition to state claims against.
-/

/-! ## A200149.P4750121649670011987

`A200154(∑[n+3]+1)`
-/

namespace A200149.P4750121649670011987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200149.P4750121649670011987

/-! ## A200149.P13461672698649472893

`A200154(Δ[A008778(n)])+char[30]`
-/

namespace A200149.P13461672698649472893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200149.P13461672698649472893

/-! ## A200149.P10441689305971191743

`A200154(A055999(n)+4)+char[24]`
-/

namespace A200149.P10441689305971191743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A055999 n + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200149.P10441689305971191743

/-! ## A200149.P3501833153421664744

`A200154(Δ[A008778(n)])%A000108(n+2)`
-/

namespace A200149.P3501833153421664744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200154 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 2))

end

end A200149.P3501833153421664744

/-! ## A200149.P6627824093640500400

`A014963(22*(n+1))*A200154(Δ[A008778(n)])`
-/

namespace A200149.P6627824093640500400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (22 * (n + 1)) * A200154 (f1 (n + 1) - f1 n).toNat

end

end A200149.P6627824093640500400

/-!
# A200150: Number of 0..4 arrays x(0..n-1) of n elements with zero n-1st difference.

The programs for A200150, there is no canonical definition to state claims against.
-/

/-! ## A200150.P115223067500905543

`A200154(∑[n+4]+3)`
-/

namespace A200150.P115223067500905543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200150.P115223067500905543

/-! ## A200150.P4023165061323629564

`record[A200154(A019304(n))]`
-/

namespace A200150.P4023165061323629564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200150.P4023165061323629564

/-! ## A200150.P13152298514358593050

`or(1, A200154(A141214(n+1)))`
-/

namespace A200150.P13152298514358593050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200154 (A141214 (n + 1)).toNat)

end

end A200150.P13152298514358593050

/-! ## A200150.P5177858391130039974

`or(1, A200154(A027379(n+2)))`
-/

namespace A200150.P5177858391130039974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A200154 (A027379 (n + 2)).toNat)

end

end A200150.P5177858391130039974

/-! ## A200150.P14238849926587098818

`A235358(n+1)+A200154(A027379(n+2))`
-/

namespace A200150.P14238849926587098818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235358 (n + 1) + A200154 (A027379 (n + 2)).toNat

end

end A200150.P14238849926587098818

/-!
# A200151: Number of 0..5 arrays x(0..n-1) of n elements with zero n-1st difference.

The programs for A200151, there is no canonical definition to state claims against.
-/

/-! ## A200151.P2211952048371562729

`A200154(∑[n+5]+6)`
-/

namespace A200151.P2211952048371562729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200151.P2211952048371562729

/-! ## A200151.P3910450937119983987

`A200154(A046691(n+3))+char[22]`
-/

namespace A200151.P3910450937119983987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A046691 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200151.P3910450937119983987

/-! ## A200151.P115860824928908

`and(-1, A200154(A000124(n+5)-5))`
-/

namespace A200151.P115860824928908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A200154 (A000124 (n + 5) - 5).toNat)

end

end A200151.P115860824928908

/-! ## A200151.P16419001543246117183

`A054977(n+1)*A200154(A046691(n+3))`
-/

namespace A200151.P16419001543246117183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A200154 (A046691 (n + 3)).toNat

end

end A200151.P16419001543246117183

/-! ## A200151.P1634792156192571892

`A200154(A046691(n+3))%A121654(n+2)`
-/

namespace A200151.P1634792156192571892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200154 (A046691 (n + 3)).toNat) (A121654 (n + 2))

end

end A200151.P1634792156192571892

/-!
# A200152: Number of 0..6 arrays x(0..n-1) of n elements with zero n-1st difference.

The programs for A200152, there is no canonical definition to state claims against.
-/

/-! ## A200152.P7993842741211214397

`A200154(A052905(n+3))`
-/

namespace A200152.P7993842741211214397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A052905 (n + 3)).toNat

end

end A200152.P7993842741211214397

/-! ## A200152.P13411214161672335796

`A200154(A056119(n)+16)`
-/

namespace A200152.P13411214161672335796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A056119 n + 16).toNat

end

end A200152.P13411214161672335796

/-! ## A200152.P1629416551714053436

`A200154(eq[3, A219347(n)])`
-/

namespace A200152.P1629416551714053436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200152.P1629416551714053436

/-! ## A200152.P1073055737887802341

`A200154(eq[5, A193592(n)])`
-/

namespace A200152.P1073055737887802341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200152.P1073055737887802341

/-! ## A200152.P5421801476389642587

`A200154(A055999(n+3)+1)`
-/

namespace A200152.P5421801476389642587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A055999 (n + 3) + 1).toNat

end

end A200152.P5421801476389642587

/-!
# A200153: Number of 0..7 arrays x(0..n-1) of n elements with zero n-1st difference.

The programs for A200153, there is no canonical definition to state claims against.
-/

/-! ## A200153.P17342596717588310617

`A200154(A055999(n+4))`
-/

namespace A200153.P17342596717588310617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A055999 (n + 4)).toNat

end

end A200153.P17342596717588310617

/-! ## A200153.P14035399122462751474

`A200154(eq[4, A219347(n)])`
-/

namespace A200153.P14035399122462751474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200153.P14035399122462751474

/-! ## A200153.P12399269302810730546

`A200154(eq[6, A193592(n)])`
-/

namespace A200153.P12399269302810730546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200153.P12399269302810730546

/-! ## A200153.P8977338601556822809

`A200154(Δ[A023551(n+2)])`
-/

namespace A200153.P8977338601556822809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (f1 (n + 1) - f1 n).toNat

end

end A200153.P8977338601556822809

/-! ## A200153.P751648568124567121

`A200154(A155212(n+3)+2)`
-/

namespace A200153.P751648568124567121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A155212 (n + 3) + 2).toNat

end

end A200153.P751648568124567121

/-!
# A200154: T(n,k) = number of 0..k arrays x(0..n-1) of n elements with zero (n-1)-st difference.

The programs for A200154, there is no canonical definition to state claims against.
-/

/-! ## A200154.P12885088027335684826

`A089643((2-char[∑[n]])^(n+2))-char[9]`
-/

namespace A200154.P12885088027335684826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ (n + 2)).toNat - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200154.P12885088027335684826

/-! ## A200154.P14855860162564094424

`A088519(A137594(n))`
-/

namespace A200154.P14855860162564094424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A137594 n).toNat

end

end A200154.P14855860162564094424

/-! ## A200154.P9221433550281067713

`A333119(n+1)+A000120(A156888(n))`
-/

namespace A200154.P9221433550281067713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333119 (n + 1) + A000120 (A156888 n).toNat

end

end A200154.P9221433550281067713

/-! ## A200154.P17036684917795357855

`A080226(A108767(n+1)%A075974(n))`
-/

namespace A200154.P17036684917795357855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (Int.tmod (A108767 (n + 1)) (A075974 n)).toNat

end

end A200154.P17036684917795357855

/-! ## A200154.P16410055492441051303

`A208825(n+1)-A325406(A138464(n+1))`
-/

namespace A200154.P16410055492441051303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208825 (n + 1) - A325406 (A138464 (n + 1)).toNat

end

end A200154.P16410055492441051303

/-!
# A200155: Number of 0..n arrays x(0..3) of 4 elements with zero 3rd differences.

The programs for A200155, the canonical program `A200155.P17517134346537014741` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200155 has offset 1).

The definition of A200155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200155.P17517134346537014741

`∑[A080827(A042965(n+1)+2)]+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200155

/-- `∑[A080827(A042965(n+1)+2)]+1` -/
def P17517134346537014741.Spec : Prop :=
  ∀ n, P17517134346537014741.a n = A200155 (n + 1)

theorem P17517134346537014741.correct : P17517134346537014741.Spec := by
  intro n
  simp only [A200155, Nat.add_sub_cancel]

end A200155

/-! ## A200155.P16490047325984157357

`A225566(Δ[n²])+2+n`
-/

namespace A200155.P16490047325984157357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2 + (n : ℤ)

end

end A200155.P16490047325984157357

namespace A200155

/-- `A225566(Δ[n²])+2+n` -/
def P16490047325984157357.Spec : Prop :=
  ∀ n, P16490047325984157357.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P17603167335391962596

`A225566(2*n+1)+n+2`
-/

namespace A200155.P17603167335391962596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225566 (2 * n + 1) + (n + 2 : ℤ)

end

end A200155.P17603167335391962596

namespace A200155

/-- `A225566(2*n+1)+n+2` -/
def P17603167335391962596.Spec : Prop :=
  ∀ n, P17603167335391962596.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P5055981135570674555

`2*(A144677(2*n)+1)+n`
-/

namespace A200155.P5055981135570674555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144677 (2 * n) + 1) + (n : ℤ)

end

end A200155.P5055981135570674555

namespace A200155

/-- `2*(A144677(2*n)+1)+n` -/
def P5055981135570674555.Spec : Prop :=
  ∀ n, P5055981135570674555.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P1863786255086909351

`A145064(n)+A006501(2*n+1)`
-/

namespace A200155.P1863786255086909351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 n + A006501 (2 * n + 1)

end

end A200155.P1863786255086909351

namespace A200155

/-- `A145064(n)+A006501(2*n+1)` -/
def P1863786255086909351.Spec : Prop :=
  ∀ n, P1863786255086909351.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P16996181931717991778

`A245134(A055999(n)+10)`
-/

namespace A200155.P16996181931717991778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A055999 n + 10).toNat

end

end A200155.P16996181931717991778

namespace A200155

/-- `A245134(A055999(n)+10)` -/
def P16996181931717991778.Spec : Prop :=
  ∀ n, P16996181931717991778.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P1852699195101633088

`A245134(A167614(n+2)+1)`
-/

namespace A200155.P1852699195101633088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A167614 (n + 2) + 1).toNat

end

end A200155.P1852699195101633088

namespace A200155

/-- `A245134(A167614(n+2)+1)` -/
def P1852699195101633088.Spec : Prop :=
  ∀ n, P1852699195101633088.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P1074183900790457933

`A245134(A167487(n+2)-3)`
-/

namespace A200155.P1074183900790457933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (A167487 (n + 2) - 3).toNat

end

end A200155.P1074183900790457933

namespace A200155

/-- `A245134(A167487(n+2)-3)` -/
def P1074183900790457933.Spec : Prop :=
  ∀ n, P1074183900790457933.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P6143422773375201215

`A245134(Δ[A264443(n)-n²])`
-/

namespace A200155.P6143422773375201215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (f1 (n + 1) - f1 n).toNat

end

end A200155.P6143422773375201215

namespace A200155

/-- `A245134(Δ[A264443(n)-n²])` -/
def P6143422773375201215.Spec : Prop :=
  ∀ n, P6143422773375201215.a n = A200155 (n + 1)

end A200155

/-! ## A200155.P13564553138000848083

`A245134(Δ[A023545(n+1)-n²])`
-/

namespace A200155.P13564553138000848083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245134 (f1 (n + 1) - f1 n).toNat

end

end A200155.P13564553138000848083

namespace A200155

/-- `A245134(Δ[A023545(n+1)-n²])` -/
def P13564553138000848083.Spec : Prop :=
  ∀ n, P13564553138000848083.a n = A200155 (n + 1)

end A200155

/-!
# A200156: Number of 0..n arrays x(0..4) of 5 elements with zero 4th difference.

The programs for A200156, there is no canonical definition to state claims against.
-/

/-! ## A200156.P17612804878354353685

`A200154(C(n+5, 2)+5)`
-/

namespace A200156.P17612804878354353685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (Nat.choose (n + 5) 2 + 5)

end

end A200156.P17612804878354353685

/-! ## A200156.P8208601485938885135

`A200154(A167499(n+3))`
-/

namespace A200156.P8208601485938885135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A167499 (n + 3)).toNat

end

end A200156.P8208601485938885135

/-! ## A200156.P9342032345959741512

`A200154(A155212(n)+13)`
-/

namespace A200156.P9342032345959741512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A155212 n + 13).toNat

end

end A200156.P9342032345959741512

/-! ## A200156.P3667640204414638608

`A200154(A056000(n)+15)`
-/

namespace A200156.P3667640204414638608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A056000 n + 15).toNat

end

end A200156.P3667640204414638608

/-! ## A200156.P17316259502901464431

`A200154(A167614(n+3)+2)`
-/

namespace A200156.P17316259502901464431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A167614 (n + 3) + 2).toNat

end

end A200156.P17316259502901464431

/-!
# A200157: Number of 0..n arrays x(0..5) of 6 elements with zero 5th difference.

The programs for A200157, there is no canonical definition to state claims against.
-/

/-! ## A200157.P13043119161934734359

`A200154(A166136(n+4))`
-/

namespace A200157.P13043119161934734359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A166136 (n + 4)).toNat

end

end A200157.P13043119161934734359

/-! ## A200157.P12789640140683860207

`A200154(A056115(n)+21)`
-/

namespace A200157.P12789640140683860207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A056115 n + 21).toNat

end

end A200157.P12789640140683860207

/-! ## A200157.P14618115373742239792

`A200154(∑[A020710(n)]+16)`
-/

namespace A200157.P14618115373742239792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A200157.P14618115373742239792

/-! ## A200157.P3571408517100327814

`A200154(A167499(n+4)+1)`
-/

namespace A200157.P3571408517100327814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A167499 (n + 4) + 1).toNat

end

end A200157.P3571408517100327814

/-! ## A200157.P2106011889251562055

`A200154(A167487(n+4)-1)`
-/

namespace A200157.P2106011889251562055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A167487 (n + 4) - 1).toNat

end

end A200157.P2106011889251562055

/-!
# A200158: Number of 0..n arrays x(0..6) of 7 elements with zero 6th difference.

The programs for A200158, there is no canonical definition to state claims against.
-/

/-! ## A200158.P3075379643085531246

`A200154(eq[11, A066657(n)])`
-/

namespace A200158.P3075379643085531246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200158.P3075379643085531246

/-! ## A200158.P6400205218632003305

`A200154(A166136(n+5)+1)`
-/

namespace A200158.P6400205218632003305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A166136 (n + 5) + 1).toNat

end

end A200158.P6400205218632003305

/-! ## A200158.P3000418110211790688

`A200154(A167499(n+5)+2)`
-/

namespace A200158.P3000418110211790688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A167499 (n + 5) + 2).toNat

end

end A200158.P3000418110211790688

/-! ## A200158.P16935165218833833582

`A200154(A000124(n+6)+6)`
-/

namespace A200158.P16935165218833833582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A000124 (n + 6) + 6).toNat

end

end A200158.P16935165218833833582

/-! ## A200158.P2623594518383261494

`A200154(A000096(n+5)+8)`
-/

namespace A200158.P2623594518383261494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200154 (A000096 (n + 5) + 8).toNat

end

end A200158.P2623594518383261494

/-!
# A200159: Number of -2..2 arrays x(0..n-1) of n elements with nonzero sum and with zero through n-1 differences all nonzero.

The programs for A200159, there is no canonical definition to state claims against.
-/

/-! ## A200159.P8598278927498441791

`A199937(n+1)-A200032(n+1)`
-/

namespace A200159.P8598278927498441791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199937 (n + 1) - A200032 (n + 1)

end

end A200159.P8598278927498441791

/-! ## A200159.P16556313013162452996

`A199937(n+1)-A200038(∑[n+2])`
-/

namespace A200159.P16556313013162452996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199937 (n + 1) - A200038 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200159.P16556313013162452996

/-! ## A200159.P10923694209361717751

`A199943(∑[n+2])-A200032(n+1)`
-/

namespace A200159.P10923694209361717751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j) - A200032 (n + 1)

end

end A200159.P10923694209361717751

/-! ## A200159.P3132091366772072010

`A199943(∑[n+2])-A200038(A000096(n+1))`
-/

namespace A200159.P3132091366772072010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j) - A200038 (A000096 (n + 1)).toNat

end

end A200159.P3132091366772072010

/-! ## A200159.P2101427673663988833

`record[A199943(A101881(n)+1)]-A200032(n+1)`
-/

namespace A200159.P2101427673663988833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200032 (n + 1)

end

end A200159.P2101427673663988833

/-!
# A200160: Number of -3..3 arrays x(0..n-1) of n elements with nonzero sum and with zero through n-1 differences all nonzero.

The programs for A200160, there is no canonical definition to state claims against.
-/

/-! ## A200160.P14742348898426416118

`A199938(n+1)-A200033(n+1)`
-/

namespace A200160.P14742348898426416118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199938 (n + 1) - A200033 (n + 1)

end

end A200160.P14742348898426416118

/-! ## A200160.P1380941253578428764

`A199938(n+1)-A200038(∑[n+3]+1)`
-/

namespace A200160.P1380941253578428764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199938 (n + 1) - A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200160.P1380941253578428764

/-! ## A200160.P17179023415533153311

`A199943(∑[n+3]+1)-A200033(n+1)`
-/

namespace A200160.P17179023415533153311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A200033 (n + 1)

end

end A200160.P17179023415533153311

/-! ## A200160.P14533084584582976658

`record[A199943(A198464(n+1))]-A200033(n+1)`
-/

namespace A200160.P14533084584582976658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A200033 (n + 1)

end

end A200160.P14533084584582976658

/-! ## A200160.P3062039752333134098

`A199938(n+1)-record[A200038(A198464(n+1))]`
-/

namespace A200160.P3062039752333134098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200038 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199938 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200160.P3062039752333134098

/-!
# A200161: Number of -4..4 arrays x(0..n-1) of n elements with nonzero sum and with zero through n-1 differences all nonzero.

The programs for A200161, there is no canonical definition to state claims against.
-/

/-! ## A200161.P17348188387117434261

`A199939(n+1)-A200034(n+1)`
-/

namespace A200161.P17348188387117434261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199939 (n + 1) - A200034 (n + 1)

end

end A200161.P17348188387117434261

/-! ## A200161.P12580265496160152071

`A199939(n+1)-A200038(∑[n+4]+3)`
-/

namespace A200161.P12580265496160152071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199939 (n + 1) - A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200161.P12580265496160152071

/-! ## A200161.P4443763490968917810

`A199943(A141214(n+1))-A200034(n+1)`
-/

namespace A200161.P4443763490968917810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A141214 (n + 1)).toNat - A200034 (n + 1)

end

end A200161.P4443763490968917810

/-! ## A200161.P12910361308063753813

`A199939(n+1)-and(-1, A200038(A141214(n+1)))`
-/

namespace A200161.P12910361308063753813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199939 (n + 1) - Int.land (-1) (A200038 (A141214 (n + 1)).toNat)

end

end A200161.P12910361308063753813

/-! ## A200161.P17733203357657762418

`A199943(A141214(n+1))-A200038(A055998(n+2))`
-/

namespace A200161.P17733203357657762418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A141214 (n + 1)).toNat - A200038 (A055998 (n + 2)).toNat

end

end A200161.P17733203357657762418

/-!
# A200162: Number of -5..5 arrays x(0..n-1) of n elements with nonzero sum and with zero through n-1 differences all nonzero.

The programs for A200162, there is no canonical definition to state claims against.
-/

/-! ## A200162.P9666316890821243002

`A200165(C(n+5, 2)+n+1)`
-/

namespace A200162.P9666316890821243002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (Nat.choose (n + 5) 2 + n + 1)

end

end A200162.P9666316890821243002

/-! ## A200162.P15895248586348974032

`A200165(Δ[A264443(n)])`
-/

namespace A200162.P15895248586348974032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (f1 (n + 1) - f1 n).toNat

end

end A200162.P15895248586348974032

/-! ## A200162.P2743248039474718934

`A200165(A046691(n+3))`
-/

namespace A200162.P2743248039474718934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (A046691 (n + 3)).toNat

end

end A200162.P2743248039474718934

/-! ## A200162.P6915462108545874792

`A200165(A056115(n)+11)`
-/

namespace A200162.P6915462108545874792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (A056115 n + 11).toNat

end

end A200162.P6915462108545874792

/-! ## A200162.P10411443422886367070

`A200165(eq[2, A092921(n)])`
-/

namespace A200162.P10411443422886367070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200162.P10411443422886367070

/-!
# A200163: Number of -6..6 arrays x(0..n-1) of n elements with nonzero sum and with zero through n-1 differences all nonzero.

The programs for A200163, there is no canonical definition to state claims against.
-/

/-! ## A200163.P3329243299167432282

`A200165(A052905(n+3))`
-/

namespace A200163.P3329243299167432282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (A052905 (n + 3)).toNat

end

end A200163.P3329243299167432282

/-! ## A200163.P2279088245145842801

`A200165(A056119(n)+16)`
-/

namespace A200163.P2279088245145842801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (A056119 n + 16).toNat

end

end A200163.P2279088245145842801

/-! ## A200163.P13653313838691504898

`A200165(eq[3, A219347(n)])`
-/

namespace A200163.P13653313838691504898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200163.P13653313838691504898

/-! ## A200163.P7941322832343192609

`A200165(eq[5, A193592(n)])`
-/

namespace A200163.P7941322832343192609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200163.P7941322832343192609

/-! ## A200163.P7707194854920334486

`A200165(eq[8, A258709(n)])`
-/

namespace A200163.P7707194854920334486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200163.P7707194854920334486

/-!
# A200164: Number of -7..7 arrays x(0..n-1) of n elements with nonzero sum and with zero through n-1 differences all nonzero.

The programs for A200164, there is no canonical definition to state claims against.
-/

/-! ## A200164.P3145960244169143526

`A200165(C(2*(n+4)-(n+1), 2)+n+1)`
-/

namespace A200164.P3145960244169143526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (Nat.choose ((2 * (n + 4) : ℤ) - (n + 1 : ℤ)).toNat 2 + n + 1)

end

end A200164.P3145960244169143526

/-! ## A200164.P5423095908407094374

`A200165(A055999(n+4))`
-/

namespace A200164.P5423095908407094374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (A055999 (n + 4)).toNat

end

end A200164.P5423095908407094374

/-! ## A200164.P4476378730462204787

`A200165(eq[4, A219347(n)])`
-/

namespace A200164.P4476378730462204787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200164.P4476378730462204787

/-! ## A200164.P12061010676152256420

`A200165(eq[5, A332954(n)])`
-/

namespace A200164.P12061010676152256420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200164.P12061010676152256420

/-!
# A200165: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with nonzero sum and with zero through n-1 differences all nonzero.

The programs for A200165, there is no canonical definition to state claims against.
-/

/-! ## A200165.P16763917054660921863

`A199943(n+1)-A200038(n+1)`
-/

namespace A200165.P16763917054660921863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (n + 1) - A200038 (n + 1)

end

end A200165.P16763917054660921863

/-! ## A200165.P14351946976278056515

`A000005(2*A079474(n+2)²)-A200038(n+1)`
-/

namespace A200165.P14351946976278056515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A079474 (n + 2) ^ 2).toNat - A200038 (n + 1)

end

end A200165.P14351946976278056515

/-!
# A200166: Number of -n..n arrays x(0..2) of 3 elements with nonzero sum and with zero through 2 differences all nonzero.

The programs for A200166, the canonical program `A200166.P841247811571209774` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200166 has offset 1).

The definition of A200166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200166.P841247811571209774

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=2, a(1)=34, a(2)=128, a(3)=348, a(4)=726`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A200166

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P841247811571209774.Spec : Prop :=
  ∀ n, P841247811571209774.a n = A200166 (n + 1)

theorem P841247811571209774.correct : P841247811571209774.Spec := by
  intro n
  simp only [A200166, Nat.add_sub_cancel]

end A200166

/-! ## A200166.P18347022403441043453

`A199944(n+1)-A200039(n+1)`
-/

namespace A200166.P18347022403441043453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199944 (n + 1) - A200039 (n + 1)

end

end A200166.P18347022403441043453

namespace A200166

/-- `A199944(n+1)-A200039(n+1)` -/
def P18347022403441043453.Spec : Prop :=
  ∀ n, P18347022403441043453.a n = A200166 (n + 1)

end A200166

/-! ## A200166.P4560247244340389235

`A275543(n+1)+A016755(n)-A200039(n+1)`
-/

namespace A200166.P4560247244340389235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (n + 1) + A016755 n - A200039 (n + 1)

end

end A200166.P4560247244340389235

namespace A200166

/-- `A275543(n+1)+A016755(n)-A200039(n+1)` -/
def P4560247244340389235.Spec : Prop :=
  ∀ n, P4560247244340389235.a n = A200166 (n + 1)

end A200166

/-! ## A200166.P1563713058469281484

`A007310(n+1)+or(1, A079588(n))-A200039(n+1)`
-/

namespace A200166.P1563713058469281484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + Int.lor 1 (A079588 n) - A200039 (n + 1)

end

end A200166.P1563713058469281484

namespace A200166

/-- `A007310(n+1)+or(1, A079588(n))-A200039(n+1)` -/
def P1563713058469281484.Spec : Prop :=
  ∀ n, P1563713058469281484.a n = A200166 (n + 1)

end A200166

/-! ## A200166.P1271303014111369229

`A014681(n)+A103517(n)+A079588(n)-A200039(n+1)`
-/

namespace A200166.P1271303014111369229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n + (A103517 n + A079588 n) - A200039 (n + 1)

end

end A200166.P1271303014111369229

namespace A200166

/-- `A014681(n)+A103517(n)+A079588(n)-A200039(n+1)` -/
def P1271303014111369229.Spec : Prop :=
  ∀ n, P1271303014111369229.a n = A200166 (n + 1)

end A200166

/-! ## A200166.P866983707729460383

`xor(1, A081423(2*n+1))+n-A200039(n+1)`
-/

namespace A200166.P866983707729460383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A081423 (2 * n + 1)) + (n : ℤ) - A200039 (n + 1)

end

end A200166.P866983707729460383

namespace A200166

/-- `xor(1, A081423(2*n+1))+n-A200039(n+1)` -/
def P866983707729460383.Spec : Prop :=
  ∀ n, P866983707729460383.a n = A200166 (n + 1)

end A200166

/-! ## A200166.P13519510409926709471

`A085786(2*n+1)+xor(1, n+1)-A200039(n+1)`
-/

namespace A200166.P13519510409926709471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085786 (2 * n + 1) + (Nat.xor 1 (n + 1) : ℤ) - A200039 (n + 1)

end

end A200166.P13519510409926709471

namespace A200166

/-- `A085786(2*n+1)+xor(1, n+1)-A200039(n+1)` -/
def P13519510409926709471.Spec : Prop :=
  ∀ n, P13519510409926709471.a n = A200166 (n + 1)

end A200166

/-! ## A200166.P3951951978155350661

`A098547(Δ[n²])-A275543(n)-A200039(n+1)`
-/

namespace A200166.P3951951978155350661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A275543 n - A200039 (n + 1)

end

end A200166.P3951951978155350661

namespace A200166

/-- `A098547(Δ[n²])-A275543(n)-A200039(n+1)` -/
def P3951951978155350661.Spec : Prop :=
  ∀ n, P3951951978155350661.a n = A200166 (n + 1)

end A200166

/-! ## A200166.P5099260400838373568

`A130482(A005408(n))+A079588(n)-A200039(n+1)`
-/

namespace A200166.P5099260400838373568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130482 (A005408 n).toNat + (A079588 n - A200039 (n + 1))

end

end A200166.P5099260400838373568

namespace A200166

/-- `A130482(A005408(n))+A079588(n)-A200039(n+1)` -/
def P5099260400838373568.Spec : Prop :=
  ∀ n, P5099260400838373568.a n = A200166 (n + 1)

end A200166

/-!
# A200167: Number of -n..n arrays x(0..3) of 4 elements with nonzero sum and with zero through 3 differences all nonzero.

The programs for A200167, there is no canonical definition to state claims against.
-/

/-! ## A200167.P15748026323698843986

`A199945(n+1)-A200040(n+1)`
-/

namespace A200167.P15748026323698843986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199945 (n + 1) - A200040 (n + 1)

end

end A200167.P15748026323698843986

/-! ## A200167.P15698569248196225651

`A199945(n+1)-A200038(∑[n+3]+7)`
-/

namespace A200167.P15698569248196225651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199945 (n + 1) - A200038 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200167.P15698569248196225651

/-! ## A200167.P14916084912521080667

`A199943(∑[n+3]+7)-A200040(n+1)`
-/

namespace A200167.P14916084912521080667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (∑ j ∈ Finset.range (n + 1), f1 j + 7) - A200040 (n + 1)

end

end A200167.P14916084912521080667

/-! ## A200167.P11288410620257026748

`A200165(∑[n+3]+7)`
-/

namespace A200167.P11288410620257026748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200165 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A200167.P11288410620257026748

/-!
# A200168: Number of -n..n arrays x(0..4) of 5 elements with nonzero sum and with zero through 4 differences all nonzero.

The programs for A200168, there is no canonical definition to state claims against.
-/

/-! ## A200168.P10246478287296293614

`A199946(n+1)-A200041(n+1)`
-/

namespace A200168.P10246478287296293614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199946 (n + 1) - A200041 (n + 1)

end

end A200168.P10246478287296293614

/-! ## A200168.P6871550367102585232

`A199943(C(n+5, 2)+5)-A200041(n+1)`
-/

namespace A200168.P6871550367102585232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (Nat.choose (n + 5) 2 + 5) - A200041 (n + 1)

end

end A200168.P6871550367102585232

/-! ## A200168.P9101168853231383446

`A199946(n+1)-A200038(A167499(n+3))`
-/

namespace A200168.P9101168853231383446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199946 (n + 1) - A200038 (A167499 (n + 3)).toNat

end

end A200168.P9101168853231383446

/-! ## A200168.P268388934076963849

`A199943(A167499(n+3))-A200041(n+1)`
-/

namespace A200168.P268388934076963849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A167499 (n + 3)).toNat - A200041 (n + 1)

end

end A200168.P268388934076963849

/-! ## A200168.P4169168240289939100

`A199946(n+1)-A200038(A155212(n)+13)`
-/

namespace A200168.P4169168240289939100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199946 (n + 1) - A200038 (A155212 n + 13).toNat

end

end A200168.P4169168240289939100

/-!
# A200169: Number of -n..n arrays x(0..5) of 6 elements with nonzero sum and with zero through 5 differences all nonzero.

The programs for A200169, there is no canonical definition to state claims against.
-/

/-! ## A200169.P7741538287915472914

`A199947(n+1)-A200042(n+1)`
-/

namespace A200169.P7741538287915472914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199947 (n + 1) - A200042 (n + 1)

end

end A200169.P7741538287915472914

/-! ## A200169.P4690311790143137194

`A199947(n+1)-A200038(A166136(n+4))`
-/

namespace A200169.P4690311790143137194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199947 (n + 1) - A200038 (A166136 (n + 4)).toNat

end

end A200169.P4690311790143137194

/-! ## A200169.P6527304012726093721

`A199947(n+1)-A200038(A167499(n+4)+1)`
-/

namespace A200169.P6527304012726093721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199947 (n + 1) - A200038 (A167499 (n + 4) + 1).toNat

end

end A200169.P6527304012726093721

/-! ## A200169.P6422088195834381765

`A199943(A167499(n+4)+1)-A200042(n+1)`
-/

namespace A200169.P6422088195834381765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A167499 (n + 4) + 1).toNat - A200042 (n + 1)

end

end A200169.P6422088195834381765

/-! ## A200169.P5954361408623168148

`A199947(n+1)-A200038(A000217(n+5)+6)`
-/

namespace A200169.P5954361408623168148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199947 (n + 1) - A200038 (A000217 (n + 5) + 6).toNat

end

end A200169.P5954361408623168148

/-!
# A200170: Number of -n..n arrays x(0..6) of 7 elements with nonzero sum and with zero through 6 differences all nonzero.

The programs for A200170, there is no canonical definition to state claims against.
-/

/-! ## A200170.P14380026194462472928

`A199948(n+1)-A200043(n+1)`
-/

namespace A200170.P14380026194462472928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199948 (n + 1) - A200043 (n + 1)

end

end A200170.P14380026194462472928

/-! ## A200170.P18264516360670081418

`A199948(n+1)-A200038(A056119(n)+28)`
-/

namespace A200170.P18264516360670081418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199948 (n + 1) - A200038 (A056119 n + 28).toNat

end

end A200170.P18264516360670081418

/-! ## A200170.P1135787225817802659

`A199943(A056119(n)+28)-A200043(n+1)`
-/

namespace A200170.P1135787225817802659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (A056119 n + 28).toNat - A200043 (n + 1)

end

end A200170.P1135787225817802659

/-! ## A200170.P2251418638657708132

`A199943(eq[11, A066657(n)])-A200043(n+1)`
-/

namespace A200170.P2251418638657708132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A200043 (n + 1)

end

end A200170.P2251418638657708132

/-! ## A200170.P7228211178631246960

`A199948(n+1)-A200038(eq[11, A066657(n)])`
-/

namespace A200170.P7228211178631246960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199948 (n + 1) - A200038 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200170.P7228211178631246960

/-!
# A200171: Triangle, read by rows, such that row n equals the coefficients of x^(n^2+n-1+k) in F(x,n) for k = 1..n, where F(x,n) = (1 + x*F(x,n))*(1 + x^n/F(x,n)), for n>=1.

The programs for A200171, the canonical program `A200171.P18110095656325504928` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200171 has offset 1).

The definition of A200171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200171.P18110095656325504928

`2-A097807(n)*A126216(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A200171

/-- `2-A097807(n)*A126216(n+1)` -/
def P18110095656325504928.Spec : Prop :=
  ∀ n, P18110095656325504928.a n = A200171 (n + 1)

theorem P18110095656325504928.correct : P18110095656325504928.Spec := by
  intro n
  simp only [A200171, Nat.add_sub_cancel]

end A200171

/-! ## A200171.P15267140218541318986

`A097807(A007401(n+1))*A126216(n+1)+2`
-/

namespace A200171.P15267140218541318986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A007401 (n + 1)).toNat * A126216 (n + 1) + 2

end

end A200171.P15267140218541318986

namespace A200171

/-- `A097807(A007401(n+1))*A126216(n+1)+2` -/
def P15267140218541318986.Spec : Prop :=
  ∀ n, P15267140218541318986.a n = A200171 (n + 1)

end A200171

/-! ## A200171.P17841519929517311488

`A097807(n)*A126216(n+1)*A057428(A211100(n))+2`
-/

namespace A200171.P17841519929517311488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A126216 (n + 1) * A057428 (A211100 n).toNat + 2

end

end A200171.P17841519929517311488

namespace A200171

/-- `A097807(n)*A126216(n+1)*A057428(A211100(n))+2` -/
def P17841519929517311488.Spec : Prop :=
  ∀ n, P17841519929517311488.a n = A200171 (n + 1)

end A200171

/-!
# A200172: Column 3 of triangle A200171.

The programs for A200172, there is no canonical definition to state claims against.
-/

/-! ## A200172.P1336265963650098125

`A200171(∑[n+2]+4)`
-/

namespace A200172.P1336265963650098125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A200172.P1336265963650098125

/-! ## A200172.P6459446174855116811

`char[xor(1, n)]*A200171(A167614(n+1))`
-/

namespace A200172.P6459446174855116811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A200171 (A167614 (n + 1)).toNat

end

end A200172.P6459446174855116811

/-! ## A200172.P10724155240898966258

`A200171(A167614(n+1))%A199685(n)`
-/

namespace A200172.P10724155240898966258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200171 (A167614 (n + 1)).toNat) (A199685 n)

end

end A200172.P10724155240898966258

/-! ## A200172.P11458755711281155006

`or(A000007(n), A200171(A167614(n+1)))`
-/

namespace A200172.P11458755711281155006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A200171 (A167614 (n + 1)).toNat)

end

end A200172.P11458755711281155006

/-! ## A200172.P2685873398263813093

`A200171(A167614(n+1))^(A000040(n+1)%2)`
-/

namespace A200172.P2685873398263813093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200171 (A167614 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A200172.P2685873398263813093

/-!
# A200173: Column 4 of triangle A200171.

The programs for A200173, there is no canonical definition to state claims against.
-/

/-! ## A200173.P7799698830202255022

`A200171(A052905(n)+9)`
-/

namespace A200173.P7799698830202255022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (A052905 n + 9).toNat

end

end A200173.P7799698830202255022

/-! ## A200173.P5054680987908808242

`A200171(A167614(n+2)+1)`
-/

namespace A200173.P5054680987908808242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (A167614 (n + 2) + 1).toNat

end

end A200173.P5054680987908808242

/-! ## A200173.P16167122088216845583

`A200171(A167499(n+2)-1)`
-/

namespace A200173.P16167122088216845583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (A167499 (n + 2) - 1).toNat

end

end A200173.P16167122088216845583

/-! ## A200173.P16549990464904291438

`A200171(A000217(n+3)+4)`
-/

namespace A200173.P16549990464904291438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (A000217 (n + 3) + 4).toNat

end

end A200173.P16549990464904291438

/-! ## A200173.P17567610085892632253

`A200171(A061579(A056000(n)+5))`
-/

namespace A200173.P17567610085892632253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200171 (A061579 (A056000 n + 5).toNat).toNat

end

end A200173.P17567610085892632253

/-!
# A200174: Number of -1..1 arrays x(0..n-1) of n elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200174, there is no canonical definition to state claims against.
-/

/-! ## A200174.P5403600799623029088

`A200181(∑[n+1])`
-/

namespace A200174.P5403600799623029088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200174.P5403600799623029088

/-! ## A200174.P17549303149034145973

`xor(1, xor(1, A200181(A000217(n+1))))`
-/

namespace A200174.P17549303149034145973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A200181 (A000217 (n + 1)).toNat))

end

end A200174.P17549303149034145973

/-! ## A200174.P2495440964359738727

`A200181(∑[Δ[n²]-n])%A017057(n)`
-/

namespace A200174.P2495440964359738727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200181 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A017057 n)

end

end A200174.P2495440964359738727

/-! ## A200174.P16042318846876712046

`A200181(A000217(n+1))%A087535(n+1)`
-/

namespace A200174.P16042318846876712046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200181 (A000217 (n + 1)).toNat) (A087535 (n + 1))

end

end A200174.P16042318846876712046

/-! ## A200174.P17828890892403637726

`A007318(C(2, n))*A200181(A000217(n+1))`
-/

namespace A200174.P17828890892403637726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A200181 (A000217 (n + 1)).toNat

end

end A200174.P17828890892403637726

/-!
# A200175: Number of -2..2 arrays x(0..n-1) of n elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200175, there is no canonical definition to state claims against.
-/

/-! ## A200175.P4924840885245042537

`A200181(∑[n+2])`
-/

namespace A200175.P4924840885245042537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200175.P4924840885245042537

/-! ## A200175.P10917194411861272848

`record[A200181(∑[A152271(n)])]`
-/

namespace A200175.P10917194411861272848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200175.P10917194411861272848

/-! ## A200175.P10759971872692644033

`record[A200181(A347633(n+1)+1)]`
-/

namespace A200175.P10759971872692644033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A347633 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200175.P10759971872692644033

/-! ## A200175.P14774382958445994377

`A200181(A000096(n+1))+char[43]`
-/

namespace A200175.P14774382958445994377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A200175.P14774382958445994377

/-! ## A200175.P15159545452789645570

`record[A200181(n+1)/A230698(n)]`
-/

namespace A200175.P15159545452789645570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200181 (n + 1) : ℚ) / (A230698 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200175.P15159545452789645570

/-!
# A200176: Number of -3..3 arrays x(0..n-1) of n elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200176, there is no canonical definition to state claims against.
-/

/-! ## A200176.P2103100587402190319

`A200181(∑[n+3]+1)`
-/

namespace A200176.P2103100587402190319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200176.P2103100587402190319

/-! ## A200176.P9642547213683493277

`record[A200181(A347633(n+1))]`
-/

namespace A200176.P9642547213683493277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200176.P9642547213683493277

/-! ## A200176.P16700508846744067168

`record[A200181(gcd(n, A192517(n+2)))]`
-/

namespace A200176.P16700508846744067168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (Int.gcd (n : ℤ) (A192517 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200176.P16700508846744067168

/-! ## A200176.P13793758025021989167

`xor(1, xor(1, A200181(A034856(n+2))))`
-/

namespace A200176.P13793758025021989167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A200181 (A034856 (n + 2)).toNat))

end

end A200176.P13793758025021989167

/-! ## A200176.P10738180171215943875

`lcm((-1)^n, A200181(Δ[A008778(n)]))`
-/

namespace A200176.P10738180171215943875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A200181 (f1 (n + 1) - f1 n).toNat)

end

end A200176.P10738180171215943875

/-!
# A200177: Number of -4..4 arrays x(0..n-1) of n elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200177, there is no canonical definition to state claims against.
-/

/-! ## A200177.P3218433536029537656

`A200181(∑[n+4]+3)`
-/

namespace A200177.P3218433536029537656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A200177.P3218433536029537656

/-! ## A200177.P2039478929144412199

`abs(1-A200181(A055998(n+2)))+1`
-/

namespace A200177.P2039478929144412199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A200181 (A055998 (n + 2)).toNat| + 1

end

end A200177.P2039478929144412199

/-! ## A200177.P7013703828194837218

`record[gcd(A192517(n+4), A200181(n+1))]`
-/

namespace A200177.P7013703828194837218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A192517 (n + 4)) (A200181 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200177.P7013703828194837218

/-! ## A200177.P16405901637443796511

`A200181(A055998(n+2))%A111643(n)`
-/

namespace A200177.P16405901637443796511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200181 (A055998 (n + 2)).toNat) (A111643 n)

end

end A200177.P16405901637443796511

/-! ## A200177.P12283655118780565916

`A200181(A141214(n+1))%A236610(3*(n+1))`
-/

namespace A200177.P12283655118780565916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200181 (A141214 (n + 1)).toNat) (A236610 (3 * (n + 1)))

end

end A200177.P12283655118780565916

/-!
# A200178: Number of -5..5 arrays x(0..n-1) of n elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200178, there is no canonical definition to state claims against.
-/

/-! ## A200178.P5850160628692647705

`A200181(∑[n+5]+6)`
-/

namespace A200178.P5850160628692647705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A200178.P5850160628692647705

/-! ## A200178.P143753103568074656

`A200181(A046691(n+3))+C(n, 64)`
-/

namespace A200178.P143753103568074656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A046691 (n + 3)).toNat + (Nat.choose n 64 : ℤ)

end

end A200178.P143753103568074656

/-! ## A200178.P17574777910880203649

`ceil(1/A000041(n))*A200181(A046691(n+3))`
-/

namespace A200178.P17574777910880203649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A200181 (A046691 (n + 3)).toNat

end

end A200178.P17574777910880203649

/-!
# A200179: Number of -6..6 arrays x(0..n-1) of n elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200179, there is no canonical definition to state claims against.
-/

/-! ## A200179.P9652741759462978710

`A200181(A052905(n+3))`
-/

namespace A200179.P9652741759462978710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A052905 (n + 3)).toNat

end

end A200179.P9652741759462978710

/-! ## A200179.P6585733652389043101

`A200181(A056119(n)+16)`
-/

namespace A200179.P6585733652389043101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A056119 n + 16).toNat

end

end A200179.P6585733652389043101

/-! ## A200179.P15223380118545559692

`A200181(eq[3, A219347(n)])`
-/

namespace A200179.P15223380118545559692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200179.P15223380118545559692

/-! ## A200179.P6100074185558217692

`A200181(A055999(n+3)+1)`
-/

namespace A200179.P6100074185558217692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A055999 (n + 3) + 1).toNat

end

end A200179.P6100074185558217692

/-! ## A200179.P10672215283493465932

`A200181(A056000(n+2)+5)`
-/

namespace A200179.P10672215283493465932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A056000 (n + 2) + 5).toNat

end

end A200179.P10672215283493465932

/-!
# A200180: Number of -7..7 arrays x(0..n-1) of n elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200180, there is no canonical definition to state claims against.
-/

/-! ## A200180.P16723071780243874156

`A200181(A055999(n+4))`
-/

namespace A200180.P16723071780243874156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A055999 (n + 4)).toNat

end

end A200180.P16723071780243874156

/-! ## A200180.P12518175126275996348

`A200181(eq[4, A219347(n)])`
-/

namespace A200180.P12518175126275996348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A200180.P12518175126275996348

/-! ## A200180.P5956445484378441021

`A200181(Δ[A023551(n+2)])`
-/

namespace A200180.P5956445484378441021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (f1 (n + 1) - f1 n).toNat

end

end A200180.P5956445484378441021

/-! ## A200180.P4531704703821841122

`A200181(A155212(n+3)+2)`
-/

namespace A200180.P4531704703821841122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A155212 (n + 3) + 2).toNat

end

end A200180.P4531704703821841122

/-! ## A200180.P10477203826085245205

`A200181(A052905(n+4)-1)`
-/

namespace A200180.P10477203826085245205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A052905 (n + 4) - 1).toNat

end

end A200180.P10477203826085245205

/-!
# A200182: Number of -n..n arrays x(0..3) of 4 elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200182, the canonical program `A200182.P1924970059812575307` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200182 has offset 1).

The definition of A200182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200182.P1924970059812575307

`or(2, ∑[∑[gcd(3, n)]-n])`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A200182

/-- `or(2, ∑[∑[gcd(3, n)]-n])` -/
def P1924970059812575307.Spec : Prop :=
  ∀ n, P1924970059812575307.a n = A200182 (n + 1)

theorem P1924970059812575307.correct : P1924970059812575307.Spec := by
  intro n
  simp only [A200182, Nat.add_sub_cancel]

end A200182

/-! ## A200182.P1436496334476299122

`∑[a(n-3)+2]` with `a(0)=3, a(1)=3, a(2)=5, a(3)=3`
-/

namespace A200182.P1436496334476299122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 5, 3] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200182.P1436496334476299122

namespace A200182

/-- `∑[a(n-3)+2]` -/
def P1436496334476299122.Spec : Prop :=
  ∀ n, (P1436496334476299122.a n : ℤ) = A200182 (n + 1)

end A200182

/-! ## A200182.P10416140615887919958

`or(2, ∑[Δ[ceil(n²/3)]+2])`
-/

namespace A200182.P10416140615887919958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200182.P10416140615887919958

namespace A200182

/-- `or(2, ∑[Δ[ceil(n²/3)]+2])` -/
def P10416140615887919958.Spec : Prop :=
  ∀ n, P10416140615887919958.a n = A200182 (n + 1)

end A200182

/-! ## A200182.P14899857433828391904

`∑[∑[floor(a(n-3))]]` with `a(0)=3, a(1)=0, a(2)=2, a(3)=-2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A200182.P14899857433828391904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 2, -2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200182.P14899857433828391904

namespace A200182

/-- `∑[∑[floor(a(n-3))]]` -/
def P14899857433828391904.Spec : Prop :=
  ∀ n, P14899857433828391904.a n = A200182 (n + 1)

end A200182

/-! ## A200182.P1515505070144099243

`2*floor(∑[n+2]/3)+3+n`
-/

namespace A200182.P1515505070144099243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋ + 3 + (n : ℤ)

end

end A200182.P1515505070144099243

namespace A200182

/-- `2*floor(∑[n+2]/3)+3+n` -/
def P1515505070144099243.Spec : Prop :=
  ∀ n, P1515505070144099243.a n = A200182 (n + 1)

end A200182

/-! ## A200182.P4904281067949514153

`record[a(n-3)+2*n+1]` with `a(0)=3, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A200182.P4904281067949514153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3, 6] fun n f1 =>
  f1 (n - 3) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200182.P4904281067949514153

namespace A200182

/-- `record[a(n-3)+2*n+1]` -/
def P4904281067949514153.Spec : Prop :=
  ∀ n, (P4904281067949514153.a n : ℤ) = A200182 (n + 1)

end A200182

/-! ## A200182.P5228237510942945480

`xor(2, ∑[n+2-A063942(n)])`
-/

namespace A200182.P5228237510942945480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A063942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200182.P5228237510942945480

namespace A200182

/-- `xor(2, ∑[n+2-A063942(n)])` -/
def P5228237510942945480.Spec : Prop :=
  ∀ n, P5228237510942945480.a n = A200182 (n + 1)

end A200182

/-! ## A200182.P8167934736001426904

`∑[A109613(A063198(n+1)+2)]`
-/

namespace A200182.P8167934736001426904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A063198 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200182.P8167934736001426904

namespace A200182

/-- `∑[A109613(A063198(n+1)+2)]` -/
def P8167934736001426904.Spec : Prop :=
  ∀ n, P8167934736001426904.a n = A200182 (n + 1)

end A200182

/-! ## A200182.P10906680842805124503

`xor(2, ∑[A063942(2*(n+4))])`
-/

namespace A200182.P10906680842805124503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (2 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200182.P10906680842805124503

namespace A200182

/-- `xor(2, ∑[A063942(2*(n+4))])` -/
def P10906680842805124503.Spec : Prop :=
  ∀ n, P10906680842805124503.a n = A200182 (n + 1)

end A200182

/-! ## A200182.P9087084598410116335

`A042964(A069813(n+4))`
-/

namespace A200182.P9087084598410116335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (A069813 (n + 4)).toNat

end

end A200182.P9087084598410116335

namespace A200182

/-- `A042964(A069813(n+4))` -/
def P9087084598410116335.Spec : Prop :=
  ∀ n, P9087084598410116335.a n = A200182 (n + 1)

end A200182

/-! ## A200182.P10219183354174354092

`A004443(∑[A109785(A008586(n))])`
-/

namespace A200182.P10219183354174354092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109785 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A200182.P10219183354174354092

namespace A200182

/-- `A004443(∑[A109785(A008586(n))])` -/
def P10219183354174354092.Spec : Prop :=
  ∀ n, P10219183354174354092.a n = A200182 (n + 1)

end A200182

/-!
# A200183: Number of -n..n arrays x(0..4) of 5 elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200183, there is no canonical definition to state claims against.
-/

/-! ## A200183.P2444911371706596096

`A200181(A167499(n+3))`
-/

namespace A200183.P2444911371706596096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A167499 (n + 3)).toNat

end

end A200183.P2444911371706596096

/-! ## A200183.P922413644187104242

`A200181(A077169(n+5))`
-/

namespace A200183.P922413644187104242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A077169 (n + 5)).toNat

end

end A200183.P922413644187104242

/-! ## A200183.P4877188589845094577

`A200181(A155212(n)+13)`
-/

namespace A200183.P4877188589845094577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A155212 n + 13).toNat

end

end A200183.P4877188589845094577

/-! ## A200183.P2831057762056781824

`A200181(A056000(n)+15)`
-/

namespace A200183.P2831057762056781824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A056000 n + 15).toNat

end

end A200183.P2831057762056781824

/-! ## A200183.P14166906310363615237

`A200181(∑[A020705(n)]+11)`
-/

namespace A200183.P14166906310363615237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A200183.P14166906310363615237

/-!
# A200184: Number of -n..n arrays x(0..5) of 6 elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200184, there is no canonical definition to state claims against.
-/

/-! ## A200184.P4029030582021512892

`A200181(∑[n+5]+16)`
-/

namespace A200184.P4029030582021512892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A200184.P4029030582021512892

/-! ## A200184.P17662769717882600618

`A200181(A167614(n+4)+3)+A000007(n+3)`
-/

namespace A200184.P17662769717882600618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A167614 (n + 4) + 3).toNat + A000007 (n + 3)

end

end A200184.P17662769717882600618

/-! ## A200184.P15469420605013935790

`A057427(n+2)*A200181(A167614(n+4)+3)`
-/

namespace A200184.P15469420605013935790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A200181 (A167614 (n + 4) + 3).toNat

end

end A200184.P15469420605013935790

/-!
# A200185: Number of -n..n arrays x(0..6) of 7 elements with zero sum and no two consecutive declines, no adjacent equal elements, and no element more than one greater than the previous (random base sawtooth pattern).

The programs for A200185, there is no canonical definition to state claims against.
-/

/-! ## A200185.P11330545762490329202

`A200181(A056119(n)+28)`
-/

namespace A200185.P11330545762490329202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A056119 n + 28).toNat

end

end A200185.P11330545762490329202

/-! ## A200185.P11901649751266422574

`A200181(A167499(n+5)+2)`
-/

namespace A200185.P11901649751266422574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A167499 (n + 5) + 2).toNat

end

end A200185.P11901649751266422574

/-! ## A200185.P5951583352802990464

`A200181(A167614(n+5)+4)`
-/

namespace A200185.P5951583352802990464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A167614 (n + 5) + 4).toNat

end

end A200185.P5951583352802990464

/-! ## A200185.P10279163599767944334

`A200181(A000124(n+6)+6)`
-/

namespace A200185.P10279163599767944334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A000124 (n + 6) + 6).toNat

end

end A200185.P10279163599767944334

/-! ## A200185.P2464897959867176263

`A200181(A000096(n+5)+8)`
-/

namespace A200185.P2464897959867176263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200181 (A000096 (n + 5) + 8).toNat

end

end A200185.P2464897959867176263

/-!
# A200186: Number of -2..2 arrays x(0..n-1) of n elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200186, there is no canonical definition to state claims against.
-/

/-! ## A200186.P12717067736856377934

`A200192(∑[n+2])`
-/

namespace A200186.P12717067736856377934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200186.P12717067736856377934

/-! ## A200186.P6945640023387528742

`record[A200192(A000096(A133310(n)))]`
-/

namespace A200186.P6945640023387528742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000096 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200186.P6945640023387528742

/-! ## A200186.P12688637965640640993

`record[A200192(A000096(A344180(n)))]`
-/

namespace A200186.P12688637965640640993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000096 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200186.P12688637965640640993

/-! ## A200186.P15969282395085806571

`record[A200192(A000096(A000188(n+1)))]`
-/

namespace A200186.P15969282395085806571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200186.P15969282395085806571

/-! ## A200186.P15166219306922582500

`record[A200192(A000096(A002260(n+1)))]`
-/

namespace A200186.P15166219306922582500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200186.P15166219306922582500

/-!
# A200187: Number of -3..3 arrays x(0..n-1) of n elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200187, there is no canonical definition to state claims against.
-/

/-! ## A200187.P2149890661076954955

`A200192(∑[n+3]+1)`
-/

namespace A200187.P2149890661076954955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200187.P2149890661076954955

/-! ## A200187.P9566853054327791966

`record[A200192(n+1)/A027144(n+4)]`
-/

namespace A200187.P9566853054327791966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200192 (n + 1) : ℚ) / (A027144 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200187.P9566853054327791966

/-! ## A200187.P3464209558084280245

`gcd(A151934(n), A200192(A034856(n+2)))`
-/

namespace A200187.P3464209558084280245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151934 n) (A200192 (A034856 (n + 2)).toNat)

end

end A200187.P3464209558084280245

/-! ## A200187.P11072448829216574320

`record[A200192(A198464(n+1))]`
-/

namespace A200187.P11072448829216574320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200187.P11072448829216574320

/-! ## A200187.P7376114799409693697

`record[gcd(A055300(n+2), A200192(n+1))]`
-/

namespace A200187.P7376114799409693697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A200192 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200187.P7376114799409693697

/-!
# A200188: Number of -4..4 arrays x(0..n-1) of n elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200188, there is no canonical definition to state claims against.
-/

/-! ## A200188.P10562086987169549591

`A200192(A027379(n+2))`
-/

namespace A200188.P10562086987169549591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A027379 (n + 2)).toNat

end

end A200188.P10562086987169549591

/-! ## A200188.P4954486728249058972

`A200192(A055998(n+2))`
-/

namespace A200188.P4954486728249058972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A055998 (n + 2)).toNat

end

end A200188.P4954486728249058972

/-! ## A200188.P6256892259482741306

`A200192(A155212(n)+5)`
-/

namespace A200188.P6256892259482741306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A155212 n + 5).toNat

end

end A200188.P6256892259482741306

/-! ## A200188.P12591372603707869246

`A200192(A052905(n+1)+2)`
-/

namespace A200188.P12591372603707869246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A052905 (n + 1) + 2).toNat

end

end A200188.P12591372603707869246

/-! ## A200188.P16033679161986329242

`A200192(A014132(∑[n+3]+1))`
-/

namespace A200188.P16033679161986329242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A200188.P16033679161986329242

/-!
# A200189: Number of -5..5 arrays x(0..n-1) of n elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200189, there is no canonical definition to state claims against.
-/

/-! ## A200189.P11479073642874364045

`A200192(A046691(n+3))`
-/

namespace A200189.P11479073642874364045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A046691 (n + 3)).toNat

end

end A200189.P11479073642874364045

/-! ## A200189.P17106227071676543264

`record[A200192(abs(A046691(n)))]`
-/

namespace A200189.P17106227071676543264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200189.P17106227071676543264

/-! ## A200189.P17357223930760134437

`A200192(Δ[A023545(n+1)])`
-/

namespace A200189.P17357223930760134437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (f1 (n + 1) - f1 n).toNat

end

end A200189.P17357223930760134437

/-! ## A200189.P16353930736115312022

`record[A200192(A000096(n+2)-3)]`
-/

namespace A200189.P16353930736115312022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000096 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200189.P16353930736115312022

/-! ## A200189.P329096329601509687

`record[A200192(A046691(A008619(n)))]`
-/

namespace A200189.P329096329601509687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A046691 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200189.P329096329601509687

/-!
# A200190: Number of -6..6 arrays x(0..n-1) of n elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200190, there is no canonical definition to state claims against.
-/

/-! ## A200190.P878300388970720876

`A200192(A052905(n+3))`
-/

namespace A200190.P878300388970720876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A052905 (n + 3)).toNat

end

end A200190.P878300388970720876

/-! ## A200190.P6918151388836419411

`A200192(A055999(n+3)+1)`
-/

namespace A200190.P6918151388836419411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A055999 (n + 3) + 1).toNat

end

end A200190.P6918151388836419411

/-! ## A200190.P6502394172815993384

`A200192(A000217(n+6)-5)`
-/

namespace A200190.P6502394172815993384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000217 (n + 6) - 5).toNat

end

end A200190.P6502394172815993384

/-! ## A200190.P10827530619307272736

`A200192(A000124(n+6)-6)`
-/

namespace A200190.P10827530619307272736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000124 (n + 6) - 6).toNat

end

end A200190.P10827530619307272736

/-! ## A200190.P3636554757808374248

`A200192(Δ[A023551(n+1)]+1)`
-/

namespace A200190.P3636554757808374248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (f1 (n + 1) - f1 n + 1).toNat

end

end A200190.P3636554757808374248

/-!
# A200191: Number of -7..7 arrays x(0..n-1) of n elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200191, there is no canonical definition to state claims against.
-/

/-! ## A200191.P12461050412496849270

`A200192(Δ[A023551(n+2)])`
-/

namespace A200191.P12461050412496849270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (f1 (n + 1) - f1 n).toNat

end

end A200191.P12461050412496849270

/-! ## A200191.P5256850216482624740

`A200192(A000217(n+7)-6)`
-/

namespace A200191.P5256850216482624740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000217 (n + 7) - 6).toNat

end

end A200191.P5256850216482624740

/-! ## A200191.P13283745203352768217

`A200192(A000124(n+7)-7)`
-/

namespace A200191.P13283745203352768217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000124 (n + 7) - 7).toNat

end

end A200191.P13283745203352768217

/-! ## A200191.P12918466915067789440

`A200192(eq[7, A004736(n+1)]+1)`
-/

namespace A200191.P12918466915067789440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A200191.P12918466915067789440

/-! ## A200191.P6521701157764625949

`A200192(Δ[n²]+A000124(n+5)+5)`
-/

namespace A200191.P6521701157764625949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A200191.P6521701157764625949

/-!
# A200192: T(n,k)=Number of -k..k arrays x(0..n-1) of n elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200192, there is no canonical definition to state claims against.
-/

/-! ## A200192.P6344303329984122104

`A295390(A318390(n+1))%10`
-/

namespace A200192.P6344303329984122104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295390 (A318390 (n + 1)).toNat) 10

end

end A200192.P6344303329984122104

/-! ## A200192.P12176551180875314489

`A124927(n)-A221314(A274162(n))`
-/

namespace A200192.P12176551180875314489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 n - A221314 (A274162 n).toNat

end

end A200192.P12176551180875314489

/-! ## A200192.P15407836602498754236

`A124927(n)%A256243(A026788(n))`
-/

namespace A200192.P15407836602498754236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124927 n) (A256243 (A026788 n).toNat)

end

end A200192.P15407836602498754236

/-! ## A200192.P13559191392370369399

`A062344(n)%A338596(A287326(n))`
-/

namespace A200192.P13559191392370369399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062344 n) (A338596 (A287326 n).toNat)

end

end A200192.P13559191392370369399

/-! ## A200192.P9144990474940876395

`and(A023238(A304616(n)), A124927(n))`
-/

namespace A200192.P9144990474940876395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023238 (A304616 n).toNat) (A124927 n)

end

end A200192.P9144990474940876395

/-!
# A200193: Number of -n..n arrays x(0..3) of 4 elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200193, the canonical program `A200193.P8106888667498212295` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A200193 has offset 1).

The definition of A200193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A200193.P8106888667498212295

`∑[2*(A194275(2*n)+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A200193

/-- `∑[2*(A194275(2*n)+1)]` -/
def P8106888667498212295.Spec : Prop :=
  ∀ n, P8106888667498212295.a n = A200193 (n + 1)

theorem P8106888667498212295.correct : P8106888667498212295.Spec := by
  intro n
  simp only [A200193, Nat.add_sub_cancel]

end A200193

/-! ## A200193.P4828138562434901813

`∑[A316357(2*n)]-(n%2-1)`
-/

namespace A200193.P4828138562434901813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((n % 2 : ℕ) : ℤ) - 1)

end

end A200193.P4828138562434901813

namespace A200193

/-- `∑[A316357(2*n)]-(n%2-1)` -/
def P4828138562434901813.Spec : Prop :=
  ∀ n, P4828138562434901813.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P495303143797770167

`A000035(n+1)+∑[A316357(2*n)]`
-/

namespace A200193.P495303143797770167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200193.P495303143797770167

namespace A200193

/-- `A000035(n+1)+∑[A316357(2*n)]` -/
def P495303143797770167.Spec : Prop :=
  ∀ n, P495303143797770167.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P2230784058869475295

`∑[A316357(2*n)+A062157(n+1)]`
-/

namespace A200193.P2230784058869475295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n) + A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200193.P2230784058869475295

namespace A200193

/-- `∑[A316357(2*n)+A062157(n+1)]` -/
def P2230784058869475295.Spec : Prop :=
  ∀ n, P2230784058869475295.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P13984212892678221495

`1-(A000035(n)-∑[A316357(2*n)])`
-/

namespace A200193.P13984212892678221495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200193.P13984212892678221495

namespace A200193

/-- `1-(A000035(n)-∑[A316357(2*n)])` -/
def P13984212892678221495.Spec : Prop :=
  ∀ n, P13984212892678221495.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P5273367131103866600

`∑[A316357(2*n)+A056594(2*n)]`
-/

namespace A200193.P5273367131103866600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316357 (2 * n) + A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200193.P5273367131103866600

namespace A200193

/-- `∑[A316357(2*n)+A056594(2*n)]` -/
def P5273367131103866600.Spec : Prop :=
  ∀ n, P5273367131103866600.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P8179271093402629804

`A010761(2*n+1)+A227347(2*n+1)+2`
-/

namespace A200193.P8179271093402629804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (2 * n + 1) + (A227347 (2 * n + 1) + 2)

end

end A200193.P8179271093402629804

namespace A200193

/-- `A010761(2*n+1)+A227347(2*n+1)+2` -/
def P8179271093402629804.Spec : Prop :=
  ∀ n, P8179271093402629804.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P4465387128307048731

`∑[2*A032793(A084849(n))]`
-/

namespace A200193.P4465387128307048731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032793 (A084849 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200193.P4465387128307048731

namespace A200193

/-- `∑[2*A032793(A084849(n))]` -/
def P4465387128307048731.Spec : Prop :=
  ∀ n, P4465387128307048731.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P921164199805411225

`A000027(a(n-1))+2*A032793(A084849(n))` with `a(0)=2`
-/

namespace A200193.P921164199805411225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000027 (a (n - 1)).toNat + 2 * A032793 (A084849 n).toNat

end

end A200193.P921164199805411225

namespace A200193

/-- `A000027(a(n-1))+2*A032793(A084849(n))` -/
def P921164199805411225.Spec : Prop :=
  ∀ n, P921164199805411225.a n = A200193 (n + 1)

end A200193

/-! ## A200193.P11948276575542302648

`∑[A005408(A194275(2*n))+1]`
-/

namespace A200193.P11948276575542302648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A194275 (2 * n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A200193.P11948276575542302648

namespace A200193

/-- `∑[A005408(A194275(2*n))+1]` -/
def P11948276575542302648.Spec : Prop :=
  ∀ n, P11948276575542302648.a n = A200193 (n + 1)

end A200193

/-!
# A200194: Number of -n..n arrays x(0..4) of 5 elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200194, there is no canonical definition to state claims against.
-/

/-! ## A200194.P17598564276376576699

`A200192(A167499(n+3))`
-/

namespace A200194.P17598564276376576699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A167499 (n + 3)).toNat

end

end A200194.P17598564276376576699

/-! ## A200194.P9968810896621185935

`A200192(A077169(n+5))`
-/

namespace A200194.P9968810896621185935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A077169 (n + 5)).toNat

end

end A200194.P9968810896621185935

/-! ## A200194.P11759305606677385491

`A200192(A000217(n+4)+5)`
-/

namespace A200194.P11759305606677385491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000217 (n + 4) + 5).toNat

end

end A200194.P11759305606677385491

/-! ## A200194.P3915781181543118938

`A200192(A167614(n+4)-(n+3))`
-/

namespace A200194.P3915781181543118938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A200194.P3915781181543118938

/-! ## A200194.P18095959228482556728

`A200192(A038722(Δ[A023545(n+1)]))`
-/

namespace A200194.P18095959228482556728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A200194.P18095959228482556728

/-!
# A200195: Number of -n..n arrays x(0..5) of 6 elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200195, there is no canonical definition to state claims against.
-/

/-! ## A200195.P15826257701918908221

`A200192(A166136(n+4))`
-/

namespace A200195.P15826257701918908221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A166136 (n + 4)).toNat

end

end A200195.P15826257701918908221

/-! ## A200195.P4528181989134386315

`A200192(A000217(n+5)+6)`
-/

namespace A200195.P4528181989134386315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000217 (n + 5) + 6).toNat

end

end A200195.P4528181989134386315

/-! ## A200195.P4624413268511830655

`A200192(A046691(n+3)+10)`
-/

namespace A200195.P4624413268511830655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A046691 (n + 3) + 10).toNat

end

end A200195.P4624413268511830655

/-! ## A200195.P15356908969245732050

`A200192(A052905(n+2)+11)`
-/

namespace A200195.P15356908969245732050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A052905 (n + 2) + 11).toNat

end

end A200195.P15356908969245732050

/-! ## A200195.P5104961629630151411

`A200192(Δ[A023545(n+1)]+10)`
-/

namespace A200195.P5104961629630151411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (f1 (n + 1) - f1 n + 10).toNat

end

end A200195.P5104961629630151411

/-!
# A200196: Number of -n..n arrays x(0..6) of 7 elements with zero sum, adjacent elements differing by more than one, and elements alternately increasing and decreasing.

The programs for A200196, there is no canonical definition to state claims against.
-/

/-! ## A200196.P5983351092271439407

`A200192(A000217(n+6)+7)`
-/

namespace A200196.P5983351092271439407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A000217 (n + 6) + 7).toNat

end

end A200196.P5983351092271439407

/-! ## A200196.P15242775296732612871

`A200192(A173036(n+6)-6)`
-/

namespace A200196.P15242775296732612871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A173036 (n + 6) - 6).toNat

end

end A200196.P15242775296732612871

/-! ## A200196.P17677733426430337469

`A200192(A027379(n+4)+10)`
-/

namespace A200196.P17677733426430337469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A027379 (n + 4) + 10).toNat

end

end A200196.P17677733426430337469

/-! ## A200196.P11987474148784567311

`A200192(A155212(n+4)-2*n)`
-/

namespace A200196.P11987474148784567311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A155212 (n + 4) - (2 * n : ℤ)).toNat

end

end A200196.P11987474148784567311

/-! ## A200196.P11440461866002601493

`A200192(A267872(n+8)+A000124(n+4))`
-/

namespace A200196.P11440461866002601493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200192 (A267872 (n + 8) + A000124 (n + 4)).toNat

end

end A200196.P11440461866002601493

/-!
# A200197: Number of -1..1 arrays x(0..n+2) of n+3 elements with zero sum and nonzero second and third differences.

The programs for A200197, there is no canonical definition to state claims against.
-/

/-! ## A200197.P9978030852549066121

`A200204(∑[n+1])`
-/

namespace A200197.P9978030852549066121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200197.P9978030852549066121

/-! ## A200197.P4766016963936912197

`lcm(2, A200204(A000217(n+1)))`
-/

namespace A200197.P4766016963936912197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A200204 (A000217 (n + 1)).toNat)

end

end A200197.P4766016963936912197

/-! ## A200197.P7283283485517300068

`record[A023531(n)*A200204(n+1)]`
-/

namespace A200197.P7283283485517300068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A200204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200197.P7283283485517300068

/-! ## A200197.P11837239532946137901

`record[A167374(n)*A200204(n+1)]`
-/

namespace A200197.P11837239532946137901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A200204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200197.P11837239532946137901

/-! ## A200197.P4610871780557599945

`record[root(A200204(n+1), A038207(n))]`
-/

namespace A200197.P4610871780557599945
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A200204 (n + 1) : ℝ) ^ (1 / (A038207 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200197.P4610871780557599945

/-!
# A200198: Number of -2..2 arrays x(0..n+2) of n+3 elements with zero sum and nonzero second and third differences.

The programs for A200198, there is no canonical definition to state claims against.
-/

/-! ## A200198.P4546104403536099294

`A200204(∑[n+2])`
-/

namespace A200198.P4546104403536099294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A200198.P4546104403536099294

/-! ## A200198.P3245297097687747921

`record[A167374(n+1)²*A200204(n+2)]`
-/

namespace A200198.P3245297097687747921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 1) ^ 2 * A200204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200198.P3245297097687747921

/-! ## A200198.P14576344503422789021

`record[A200204(A000096(A082854(n)))]`
-/

namespace A200198.P14576344503422789021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A000096 (A082854 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200198.P14576344503422789021

/-! ## A200198.P9016178935679734661

`record[A200204(A000096(A126759(n)))]`
-/

namespace A200198.P9016178935679734661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A000096 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200198.P9016178935679734661

/-! ## A200198.P1795648386592803005

`record[A200204(A000096(A263274(n)))]`
-/

namespace A200198.P1795648386592803005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A000096 (A263274 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200198.P1795648386592803005

/-!
# A200199: Number of -3..3 arrays x(0..n+2) of n+3 elements with zero sum and nonzero second and third differences.

The programs for A200199, there is no canonical definition to state claims against.
-/

/-! ## A200199.P9698747851102908586

`A200204(∑[n+3]+1)`
-/

namespace A200199.P9698747851102908586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A200199.P9698747851102908586

/-! ## A200199.P10546787690951081265

`record[A200204(A198464(n+1))]`
-/

namespace A200199.P10546787690951081265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200204 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A200199.P10546787690951081265

/-! ## A200199.P11291711949772818721

`lcm((-1)^n, A200204(Δ[A008778(n)]))`
-/

namespace A200199.P11291711949772818721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A200204 (f1 (n + 1) - f1 n).toNat)

end

end A200199.P11291711949772818721

/-! ## A200199.P16476839944269249710

`A200214(n+1)+A200204(Δ[A008778(n)])`
-/

namespace A200199.P16476839944269249710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200214 (n + 1) + A200204 (f1 (n + 1) - f1 n).toNat

end

end A200199.P16476839944269249710

/-! ## A200199.P3139994103488379748

`A200204(Δ[A008778(n)])%A200190(n+4)`
-/

namespace A200199.P3139994103488379748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200204 (f1 (n + 1) - f1 n).toNat) (A200190 (n + 4))

end

end A200199.P3139994103488379748

