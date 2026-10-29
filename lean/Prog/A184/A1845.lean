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
import Seq.B000.C025
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
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A184500: 1/12 the number of (n+2)X4 0..2 arrays with each 3X3 subblock containing one of one value, three of another, and five of the last.

The programs for A184500, there is no canonical definition to state claims against.
-/

/-! ## A184500.P6121307024666190922

`A184505(∑[n+1]+2)`
-/

namespace A184500.P6121307024666190922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184500.P6121307024666190922

/-! ## A184500.P12063973419406263655

`record[A010054(n)*A184505(n+2)]`
-/

namespace A184500.P12063973419406263655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184500.P12063973419406263655

/-! ## A184500.P17986867052043492983

`record[A184505(n+2)/A013612(n)]`
-/

namespace A184500.P17986867052043492983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184505 (n + 2) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184500.P17986867052043492983

/-! ## A184500.P10630242678949480031

`record[root(A184505(n+3), A156919(n))]`
-/

namespace A184500.P10630242678949480031
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184505 (n + 3) : ℝ) ^ (1 / (A156919 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184500.P10630242678949480031

/-! ## A184500.P18130925828823542304

`record[A184505(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A184500.P18130925828823542304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184500.P18130925828823542304

/-!
# A184501: 1/12 the number of (n+2)X5 0..2 arrays with each 3X3 subblock containing one of one value, three of another, and five of the last.

The programs for A184501, there is no canonical definition to state claims against.
-/

/-! ## A184501.P14650834142624173121

`A184505(∑[n+2]+4)`
-/

namespace A184501.P14650834142624173121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184501.P14650834142624173121

/-! ## A184501.P384502094643783806

`record[A184505(A167614(val(n+1, 2)+1))]`
-/

namespace A184501.P384502094643783806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184501.P384502094643783806

/-! ## A184501.P2285449504126626383

`lcm((-1)^n, A184505(A167614(n+1)))`
-/

namespace A184501.P2285449504126626383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A184505 (A167614 (n + 1)).toNat)

end

end A184501.P2285449504126626383

/-! ## A184501.P12705458898066430801

`A184505(A167614(n+1))+A025439(n)`
-/

namespace A184501.P12705458898066430801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A167614 (n + 1)).toNat + A025439 n

end

end A184501.P12705458898066430801

/-! ## A184501.P7441905939013318551

`A184505(A167614(n+1))+A086016(n)`
-/

namespace A184501.P7441905939013318551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A167614 (n + 1)).toNat + A086016 n

end

end A184501.P7441905939013318551

/-!
# A184502: 1/12 the number of (n+2)X6 0..2 arrays with each 3X3 subblock containing one of one value, three of another, and five of the last.

The programs for A184502, there is no canonical definition to state claims against.
-/

/-! ## A184502.P18411554367584832783

`A184505(A374004(n+1))`
-/

namespace A184502.P18411554367584832783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A374004 (n + 1)).toNat

end

end A184502.P18411554367584832783

/-! ## A184502.P10334634580038187534

`A184505(A141214(n)+7)`
-/

namespace A184502.P10334634580038187534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A141214 n + 7).toNat

end

end A184502.P10334634580038187534

/-! ## A184502.P13759302014041203802

`A184505(A052905(n)+9)`
-/

namespace A184502.P13759302014041203802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A052905 n + 9).toNat

end

end A184502.P13759302014041203802

/-! ## A184502.P9744899211987048325

`A184505(A055999(n)+10)`
-/

namespace A184502.P9744899211987048325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A055999 n + 10).toNat

end

end A184502.P9744899211987048325

/-!
# A184503: 1/12 the number of (n+2)X7 0..2 arrays with each 3X3 subblock containing one of one value, three of another, and five of the last.

The programs for A184503, there is no canonical definition to state claims against.
-/

/-! ## A184503.P2939641687361341288

`A184505(Δ[A264443(n)])`
-/

namespace A184503.P2939641687361341288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (f1 (n + 1) - f1 n).toNat

end

end A184503.P2939641687361341288

/-!
# A184504: 1/12 the number of (n+2)X8 0..2 arrays with each 3X3 subblock containing one of one value, three of another, and five of the last.

The programs for A184504, there is no canonical definition to state claims against.
-/

/-! ## A184504.P18078632056479252246

`A184505(A374007(n+1))`
-/

namespace A184504.P18078632056479252246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184505 (A374007 (n + 1)).toNat

end

end A184504.P18078632056479252246

/-!
# A184509: G.f.: A(x) = 1 + x*F(x)*G(x) where F(x) = A(x/F(x)) and G(x) = A(x*G(x)).

The programs for A184509, there is no canonical definition to state claims against.
-/

/-! ## A184509.P2186202891564995653

`A316626(3*A345194(n))`
-/

namespace A184509.P2186202891564995653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316626 (3 * A345194 n).toNat

end

end A184509.P2186202891564995653

/-! ## A184509.P18281487127645245839

`A103221(4*A182216(n))`
-/

namespace A184509.P18281487127645245839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (4 * A182216 n).toNat

end

end A184509.P18281487127645245839

/-! ## A184509.P13120217931299673101

`A008679(8*A182216(n))`
-/

namespace A184509.P13120217931299673101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (8 * A182216 n).toNat

end

end A184509.P13120217931299673101

/-!
# A184510: G.f. satisfies: A(x) = B(x/A(x)), where B(x) is the g.f. of A184509.

The programs for A184510, there is no canonical definition to state claims against.
-/

/-! ## A184510.P16144657738076561976

`ceil(A128347(n+3)/961)`
-/

namespace A184510.P16144657738076561976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A128347 (n + 3) : ℚ) / 961⌉

end

end A184510.P16144657738076561976

/-! ## A184510.P10279624515816685672

`A162232(n!-∑[n-1])`
-/

namespace A184510.P10279624515816685672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162232 ((Nat.factorial n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184510.P10279624515816685672

/-! ## A184510.P9860391048775779019

`A380420(A097081(n))`
-/

namespace A184510.P9860391048775779019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380420 (A097081 n).toNat

end

end A184510.P9860391048775779019

/-!
# A184511: G.f. satisfies: A(x) = B(x*A(x)), where B(x) is the g.f. of A184509.

The programs for A184511, there is no canonical definition to state claims against.
-/

/-! ## A184511.P11013770415030524290

`A157271(A007405(n))`
-/

namespace A184511.P11013770415030524290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A007405 n).toNat

end

end A184511.P11013770415030524290

/-! ## A184511.P9909287872785876402

`A220658(record[A062038(n)])`
-/

namespace A184511.P9909287872785876402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A184511.P9909287872785876402

/-!
# A184512: G.f.: exp( Sum_{n>=1} (x^n/n)/sqrt(1 - 2*(2*x)^n) ).

The programs for A184512, there is no canonical definition to state claims against.
-/

/-! ## A184512.P7361038638668436694

`A127757(A150783(n))`
-/

namespace A184512.P7361038638668436694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150783 n).toNat

end

end A184512.P7361038638668436694

/-! ## A184512.P11587308443430922809

`A316355(∑[n^n])`
-/

namespace A184512.P11587308443430922809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184512.P11587308443430922809

/-!
# A184513: L.g.f.: Sum_{n>=1} (x^n/n)/sqrt(1 - 2*(2*x)^n) = Sum_{n>=1} a(n)*x^n/n.

The programs for A184513, the canonical program `A184513.P17178146808262396126` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184513 has offset 1).

The definition of A184513 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184513.P450342066386286253

`∑{d}[n+1, 2^((#-1)*((n+1)/#-1))*A000984(#-1)*#]`
-/

namespace A184513.P450342066386286253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (2 : ℝ) ^ (((d : ℤ) - 1 : ℚ) * ((n + 1 : ℚ) / (d : ℚ) - 1) : ℝ) * (A000984 (d - 1) : ℝ) * (d : ℝ)

end

end A184513.P450342066386286253

namespace A184513

/-- `∑{d}[n+1, 2^((#-1)*((n+1)/#-1))*A000984(#-1)*#]` -/
def P450342066386286253.Spec : Prop :=
  ∀ n, P450342066386286253.a n = (A184513 (n + 1) : ℝ)

end A184513

/-! ## A184513.P17178146808262396126

`∑{d}[n+1, 2^((#-1)*((n+1)/#-1))*C(2*(#-1), #-1)*#]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184513

/-- `∑{d}[n+1, 2^((#-1)*((n+1)/#-1))*C(2*(#-1), #-1)*#]` -/
def P17178146808262396126.Spec : Prop :=
  ∀ n, P17178146808262396126.a n = (A184513 (n + 1) : ℝ)

end A184513

/-!
# A184514: Lower s-Wythoff sequence, where s(n)=4n-1. Complement of A184515.

The programs for A184514, the canonical program `A184514.P7480673563974487840` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184514 has offset 1).

The definition of A184514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184514.P7480673563974487840

`round((3/2+2*n)/ϕ)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184514

/-- `round((3/2+2*n)/ϕ)` -/
def P7480673563974487840.Spec : Prop :=
  ∀ n, P7480673563974487840.a n = A184514 (n + 1)

theorem P7480673563974487840.correct : P7480673563974487840.Spec := by
  intro n
  simp only [A184514, Nat.add_sub_cancel]

end A184514

/-! ## A184514.P10361327945001419075

`ceil(sqrt((2*n+1)²-a(n-1))/ϕ)` with `a(0)=1`
-/

namespace A184514.P10361327945001419075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈Real.sqrt (((2 * n + 1) ^ 2 : ℤ) - a (n - 1) : ℝ) / Real.goldenRatio⌉

end

end A184514.P10361327945001419075

namespace A184514

/-- `ceil(sqrt((2*n+1)²-a(n-1))/ϕ)` -/
def P10361327945001419075.Spec : Prop :=
  ∀ n, P10361327945001419075.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P5027865184119398157

`comp[A184515(n+1)-1]+1`
-/

namespace A184514.P5027865184119398157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184515 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184514.P5027865184119398157

namespace A184514

/-- `comp[A184515(n+1)-1]+1` -/
def P5027865184119398157.Spec : Prop :=
  ∀ n, (P5027865184119398157.a n : ℤ) = A184514 (n + 1)

end A184514

/-! ## A184514.P6590999884621659777

`comp[A184657(2*n+1)]+1`
-/

namespace A184514.P6590999884621659777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184514.P6590999884621659777

namespace A184514

/-- `comp[A184657(2*n+1)]+1` -/
def P6590999884621659777.Spec : Prop :=
  ∀ n, (P6590999884621659777.a n : ℤ) = A184514 (n + 1)

end A184514

/-! ## A184514.P14286044691241366559

`A184515(n+1)-A004767(n)`
-/

namespace A184514.P14286044691241366559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184515 (n + 1) - A004767 n

end

end A184514.P14286044691241366559

namespace A184514

/-- `A184515(n+1)-A004767(n)` -/
def P14286044691241366559.Spec : Prop :=
  ∀ n, P14286044691241366559.a n = A184514 (n + 1)

theorem P14286044691241366559.correct : P14286044691241366559.Spec := by
  intro n
  simp only [A184514, Nat.add_sub_cancel, A184514.P14286044691241366559.a, A184514.P7480673563974487840.a, A004767, A004767.P13352534504447192883.a, A184515, A184515.P9567241075721048045.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A184514

/-! ## A184514.P2716555510899813431

`ceil(A001965(2*n+1)/2)`
-/

namespace A184514.P2716555510899813431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001965 (2 * n + 1) : ℚ) / 2⌉

end

end A184514.P2716555510899813431

namespace A184514

/-- `ceil(A001965(2*n+1)/2)` -/
def P2716555510899813431.Spec : Prop :=
  ∀ n, P2716555510899813431.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P3536475788827012743

`ceil(A005206(4*n+2)/2)`
-/

namespace A184514.P3536475788827012743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005206 (4 * n + 2) : ℚ) / 2⌉

end

end A184514.P3536475788827012743

namespace A184514

/-- `ceil(A005206(4*n+2)/2)` -/
def P3536475788827012743.Spec : Prop :=
  ∀ n, P3536475788827012743.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P12205569588605958457

`A007064(2*(n+1))-(4*n+3)`
-/

namespace A184514.P12205569588605958457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * (n + 1)) - (4 * n + 3 : ℤ)

end

end A184514.P12205569588605958457

namespace A184514

/-- `A007064(2*(n+1))-(4*n+3)` -/
def P12205569588605958457.Spec : Prop :=
  ∀ n, P12205569588605958457.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P1197352440031513541

`A184657(2*n+1)-A005843(2*n+1)`
-/

namespace A184514.P1197352440031513541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 (2 * n + 1) - A005843 (2 * n + 1)

end

end A184514.P1197352440031513541

namespace A184514

/-- `A184657(2*n+1)-A005843(2*n+1)` -/
def P1197352440031513541.Spec : Prop :=
  ∀ n, P1197352440031513541.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P11753434922818853042

`A008619(A001965(2*n+1)-1)`
-/

namespace A184514.P11753434922818853042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001965 (2 * n + 1) - 1).toNat

end

end A184514.P11753434922818853042

namespace A184514

/-- `A008619(A001965(2*n+1)-1)` -/
def P11753434922818853042.Spec : Prop :=
  ∀ n, P11753434922818853042.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P9799670707495630768

`A065033(A001965(2*n+1))`
-/

namespace A184514.P9799670707495630768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001965 (2 * n + 1)).toNat

end

end A184514.P9799670707495630768

namespace A184514

/-- `A065033(A001965(2*n+1))` -/
def P9799670707495630768.Spec : Prop :=
  ∀ n, P9799670707495630768.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P8501352973478359770

`A110654(A005206(4*n+2))`
-/

namespace A184514.P8501352973478359770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005206 (4 * n + 2)).toNat

end

end A184514.P8501352973478359770

namespace A184514

/-- `A110654(A005206(4*n+2))` -/
def P8501352973478359770.Spec : Prop :=
  ∀ n, P8501352973478359770.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P7083508638097374274

`A008619(A184516(2*(n+1)))-1`
-/

namespace A184514.P7083508638097374274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184516 (2 * (n + 1))).toNat - 1

end

end A184514.P7083508638097374274

namespace A184514

/-- `A008619(A184516(2*(n+1)))-1` -/
def P7083508638097374274.Spec : Prop :=
  ∀ n, P7083508638097374274.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P9884607859786089146

`A004526(A001965(2*n+1)+1)`
-/

namespace A184514.P9884607859786089146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001965 (2 * n + 1) + 1).toNat

end

end A184514.P9884607859786089146

namespace A184514

/-- `A004526(A001965(2*n+1)+1)` -/
def P9884607859786089146.Spec : Prop :=
  ∀ n, P9884607859786089146.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P8894247484857796318

`A334415(A191403(n))`
-/

namespace A184514.P8894247484857796318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A191403 n).toNat

end

end A184514.P8894247484857796318

namespace A184514

/-- `A334415(A191403(n))` -/
def P8894247484857796318.Spec : Prop :=
  ∀ n, P8894247484857796318.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P10824573075504696499

`A334415(A028251(n+1))`
-/

namespace A184514.P10824573075504696499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A028251 (n + 1)).toNat

end

end A184514.P10824573075504696499

namespace A184514

/-- `A334415(A028251(n+1))` -/
def P10824573075504696499.Spec : Prop :=
  ∀ n, P10824573075504696499.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P2712376799198679419

`A334415(A186500(n+1))`
-/

namespace A184514.P2712376799198679419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A186500 (n + 1)).toNat

end

end A184514.P2712376799198679419

namespace A184514

/-- `A334415(A186500(n+1))` -/
def P2712376799198679419.Spec : Prop :=
  ∀ n, P2712376799198679419.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P2294073880879241453

`A334415(A186516(n+1))`
-/

namespace A184514.P2294073880879241453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A186516 (n + 1)).toNat

end

end A184514.P2294073880879241453

namespace A184514

/-- `A334415(A186516(n+1))` -/
def P2294073880879241453.Spec : Prop :=
  ∀ n, P2294073880879241453.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P17293688343585945192

`A334415(A276854(n+1))`
-/

namespace A184514.P17293688343585945192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A276854 (n + 1)).toNat

end

end A184514.P17293688343585945192

namespace A184514

/-- `A334415(A276854(n+1))` -/
def P17293688343585945192.Spec : Prop :=
  ∀ n, P17293688343585945192.a n = A184514 (n + 1)

end A184514

/-! ## A184514.P5324403436630377694

`A334415(A000201(2*(n+1)))`
-/

namespace A184514.P5324403436630377694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A000201 (2 * (n + 1))).toNat

end

end A184514.P5324403436630377694

namespace A184514

/-- `A334415(A000201(2*(n+1)))` -/
def P5324403436630377694.Spec : Prop :=
  ∀ n, P5324403436630377694.a n = A184514 (n + 1)

end A184514

/-!
# A184515: Upper s-Wythoff sequence, where s=4n-1. Complement of A184514.

The programs for A184515, the canonical program `A184515.P9567241075721048045` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184515 has offset 1).

The definition of A184515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184515.P15721039403618498199

`round((3/2+2*n)*ϕ²)`
-/

namespace A184515.P15721039403618498199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 2 + (2 * n : ℚ) : ℝ) * Real.goldenRatio ^ 2)

end

end A184515.P15721039403618498199

namespace A184515

/-- `round((3/2+2*n)*ϕ²)` -/
def P15721039403618498199.Spec : Prop :=
  ∀ n, P15721039403618498199.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P9567241075721048045

`A184514(n+1)+A004767(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184515

/-- `A184514(n+1)+A004767(n)` -/
def P9567241075721048045.Spec : Prop :=
  ∀ n, P9567241075721048045.a n = A184515 (n + 1)

theorem P9567241075721048045.correct : P9567241075721048045.Spec := by
  intro n
  simp only [A184515, Nat.add_sub_cancel]

end A184515

/-! ## A184515.P7023319391920064333

`A081835(n+2)+n-1`
-/

namespace A184515.P7023319391920064333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081835 (n + 2) + ((n : ℤ) - 1)

end

end A184515.P7023319391920064333

namespace A184515

/-- `A081835(n+2)+n-1` -/
def P7023319391920064333.Spec : Prop :=
  ∀ n, P7023319391920064333.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P2823278473126663784

`A007064(2*(n+1))`
-/

namespace A184515.P2823278473126663784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * (n + 1))

end

end A184515.P2823278473126663784

namespace A184515

/-- `A007064(2*(n+1))` -/
def P2823278473126663784.Spec : Prop :=
  ∀ n, P2823278473126663784.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P12923312450429228350

`A184657(Δ[n²])+1`
-/

namespace A184515.P12923312450429228350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184657 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A184515.P12923312450429228350

namespace A184515

/-- `A184657(Δ[n²])+1` -/
def P12923312450429228350.Spec : Prop :=
  ∀ n, P12923312450429228350.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P14035140256648491192

`record[A007064(xor(1, n)+1)]`
-/

namespace A184515.P14035140256648491192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184515.P14035140256648491192

namespace A184515

/-- `record[A007064(xor(1, n)+1)]` -/
def P14035140256648491192.Spec : Prop :=
  ∀ n, P14035140256648491192.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P15082172217022433353

`floor(A184517(2*(n+1))/2)`
-/

namespace A184515.P15082172217022433353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184517 (2 * (n + 1)) : ℚ) / 2⌋

end

end A184515.P15082172217022433353

namespace A184515

/-- `floor(A184517(2*(n+1))/2)` -/
def P15082172217022433353.Spec : Prop :=
  ∀ n, P15082172217022433353.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P17953228883723122153

`ceil(A001966(2*n+1)/2)`
-/

namespace A184515.P17953228883723122153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001966 (2 * n + 1) : ℚ) / 2⌉

end

end A184515.P17953228883723122153

namespace A184515

/-- `ceil(A001966(2*n+1)/2)` -/
def P17953228883723122153.Spec : Prop :=
  ∀ n, P17953228883723122153.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P1109549085399390755

`A001966(2*n+1)-A001968(n)`
-/

namespace A184515.P1109549085399390755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 (2 * n + 1) - A001968 n

end

end A184515.P1109549085399390755

namespace A184515

/-- `A001966(2*n+1)-A001968(n)` -/
def P1109549085399390755.Spec : Prop :=
  ∀ n, P1109549085399390755.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P4828818538677549177

`A284620(2*(n+1))+A184657(2*n+1)`
-/

namespace A184515.P4828818538677549177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284620 (2 * (n + 1)) + A184657 (2 * n + 1)

end

end A184515.P4828818538677549177

namespace A184515

/-- `A284620(2*(n+1))+A184657(2*n+1)` -/
def P4828818538677549177.Spec : Prop :=
  ∀ n, P4828818538677549177.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P16854298824117768960

`A035488(2*n+1)-A035487(2*(n+1))`
-/

namespace A184515.P16854298824117768960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035488 (2 * n + 1) - A035487 (2 * (n + 1))

end

end A184515.P16854298824117768960

namespace A184515

/-- `A035488(2*n+1)-A035487(2*(n+1))` -/
def P16854298824117768960.Spec : Prop :=
  ∀ n, P16854298824117768960.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P4498273501935040077

`∩[A007064(n+1), A283765(n+1)]`
-/

namespace A184515.P4498273501935040077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184515.P4498273501935040077

namespace A184515

/-- `∩[A007064(n+1), A283765(n+1)]` -/
def P4498273501935040077.Spec : Prop :=
  ∀ n, (P4498273501935040077.a n : ℤ) = A184515 (n + 1)

end A184515

/-! ## A184515.P7856401682725791924

`A214990(A028251(n+1))`
-/

namespace A184515.P7856401682725791924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A028251 (n + 1)).toNat

end

end A184515.P7856401682725791924

namespace A184515

/-- `A214990(A028251(n+1))` -/
def P7856401682725791924.Spec : Prop :=
  ∀ n, P7856401682725791924.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P94474536944768939

`A214990(A186500(n+1))`
-/

namespace A184515.P94474536944768939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A186500 (n + 1)).toNat

end

end A184515.P94474536944768939

namespace A184515

/-- `A214990(A186500(n+1))` -/
def P94474536944768939.Spec : Prop :=
  ∀ n, P94474536944768939.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P9528391470719460389

`A214990(A276854(n+1))`
-/

namespace A184515.P9528391470719460389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A276854 (n + 1)).toNat

end

end A184515.P9528391470719460389

namespace A184515

/-- `A214990(A276854(n+1))` -/
def P9528391470719460389.Spec : Prop :=
  ∀ n, P9528391470719460389.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P4827647444960160380

`A214990(A000201(2*(n+1)))`
-/

namespace A184515.P4827647444960160380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A000201 (2 * (n + 1))).toNat

end

end A184515.P4827647444960160380

namespace A184515

/-- `A214990(A000201(2*(n+1)))` -/
def P4827647444960160380.Spec : Prop :=
  ∀ n, P4827647444960160380.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P11964079557388526393

`A214990(A026273(2*(n+1)))`
-/

namespace A184515.P11964079557388526393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A026273 (2 * (n + 1))).toNat

end

end A184515.P11964079557388526393

namespace A184515

/-- `A214990(A026273(2*(n+1)))` -/
def P11964079557388526393.Spec : Prop :=
  ∀ n, P11964079557388526393.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P6932285415403138350

`A214990(A026351(2*n+1))`
-/

namespace A184515.P6932285415403138350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A026351 (2 * n + 1)).toNat

end

end A184515.P6932285415403138350

namespace A184515

/-- `A214990(A026351(2*n+1))` -/
def P6932285415403138350.Spec : Prop :=
  ∀ n, P6932285415403138350.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P12168301074295359295

`A214990(A184656(2*(n+1)))`
-/

namespace A184515.P12168301074295359295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A184656 (2 * (n + 1))).toNat

end

end A184515.P12168301074295359295

namespace A184515

/-- `A214990(A184656(2*(n+1)))` -/
def P12168301074295359295.Spec : Prop :=
  ∀ n, P12168301074295359295.a n = A184515 (n + 1)

end A184515

/-! ## A184515.P4737546060172856093

`A214990(A184658(2*(n+1)))`
-/

namespace A184515.P4737546060172856093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (A184658 (2 * (n + 1))).toNat

end

end A184515.P4737546060172856093

namespace A184515

/-- `A214990(A184658(2*(n+1)))` -/
def P4737546060172856093.Spec : Prop :=
  ∀ n, P4737546060172856093.a n = A184515 (n + 1)

end A184515

/-!
# A184516: Lower s-Wythoff sequence, where s=4n-2. Complement of A184517.

The programs for A184516, the canonical program `A184516.P1851237781718498814` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184516 has offset 1).

The definition of A184516 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184516.P1851237781718498814

`floor((sqrt(5)-1)*(n+1+1/(1+sqrt(5))))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184516

/-- `floor((sqrt(5)-1)*(n+1+1/(1+sqrt(5))))` -/
def P1851237781718498814.Spec : Prop :=
  ∀ n, P1851237781718498814.a n = A184516 (n + 1)

theorem P1851237781718498814.correct : P1851237781718498814.Spec := by
  intro n
  simp only [A184516, Nat.add_sub_cancel]

end A184516

/-! ## A184516.P4467996730193325809

`floor(or(1, 2*n)/ϕ)+1`
-/

namespace A184516.P4467996730193325809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (2 * n) : ℝ) / Real.goldenRatio⌋ + 1

end

end A184516.P4467996730193325809

namespace A184516

/-- `floor(or(1, 2*n)/ϕ)+1` -/
def P4467996730193325809.Spec : Prop :=
  ∀ n, P4467996730193325809.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P6583039810707106291

`floor(xor(1, 2*n)/ϕ)+1`
-/

namespace A184516.P6583039810707106291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (2 * n) : ℝ) / Real.goldenRatio⌋ + 1

end

end A184516.P6583039810707106291

namespace A184516

/-- `floor(xor(1, 2*n)/ϕ)+1` -/
def P6583039810707106291.Spec : Prop :=
  ∀ n, P6583039810707106291.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P56141870550886463

`floor(lcm(2, 2*n)/ϕ+ϕ)`
-/

namespace A184516.P56141870550886463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 (2 * n) : ℝ) / Real.goldenRatio + Real.goldenRatio⌋

end

end A184516.P56141870550886463

namespace A184516

/-- `floor(lcm(2, 2*n)/ϕ+ϕ)` -/
def P56141870550886463.Spec : Prop :=
  ∀ n, P56141870550886463.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P3308144140932069546

`-floor(xor(2*n, -1)/ϕ)`
-/

namespace A184516.P3308144140932069546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(Int.xor (2 * n : ℤ) (-1) : ℝ) / Real.goldenRatio⌋

end

end A184516.P3308144140932069546

namespace A184516

/-- `-floor(xor(2*n, -1)/ϕ)` -/
def P3308144140932069546.Spec : Prop :=
  ∀ n, P3308144140932069546.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P17476711843402004867

`floor(Δ[lcm(n, n-1)]/ϕ+ϕ)`
-/

namespace A184516.P17476711843402004867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) / Real.goldenRatio + Real.goldenRatio⌋

end

end A184516.P17476711843402004867

namespace A184516

/-- `floor(Δ[lcm(n, n-1)]/ϕ+ϕ)` -/
def P17476711843402004867.Spec : Prop :=
  ∀ n, P17476711843402004867.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P11689034739415915494

`floor(ϕ*or(1, 2*n)-2*n)`
-/

namespace A184516.P11689034739415915494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ) - (2 * n : ℝ)⌋

end

end A184516.P11689034739415915494

namespace A184516

/-- `floor(ϕ*or(1, 2*n)-2*n)` -/
def P11689034739415915494.Spec : Prop :=
  ∀ n, P11689034739415915494.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P2058709254977198409

`floor(ϕ*xor(1, 2*n)-2*n)`
-/

namespace A184516.P2058709254977198409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ) - (2 * n : ℝ)⌋

end

end A184516.P2058709254977198409

namespace A184516

/-- `floor(ϕ*xor(1, 2*n)-2*n)` -/
def P2058709254977198409.Spec : Prop :=
  ∀ n, P2058709254977198409.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P6738327955321544333

`ceil((2*n+1)/ϕ)%(n+2)²`
-/

namespace A184516.P6738327955321544333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ ((n + 2) ^ 2 : ℤ)

end

end A184516.P6738327955321544333

namespace A184516

/-- `ceil((2*n+1)/ϕ)%(n+2)²` -/
def P6738327955321544333.Spec : Prop :=
  ∀ n, P6738327955321544333.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P9584329584149723541

`floor(C(2*n+1, 2*n)/ϕ)+1`
-/

namespace A184516.P9584329584149723541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio⌋ + 1

end

end A184516.P9584329584149723541

namespace A184516

/-- `floor(C(2*n+1, 2*n)/ϕ)+1` -/
def P9584329584149723541.Spec : Prop :=
  ∀ n, P9584329584149723541.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P225604520759790943

`ceil((2*n+1)/ϕ)+C(2, n+3)`
-/

namespace A184516.P225604520759790943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ + (Nat.choose 2 (n + 3) : ℤ)

end

end A184516.P225604520759790943

namespace A184516

/-- `ceil((2*n+1)/ϕ)+C(2, n+3)` -/
def P225604520759790943.Spec : Prop :=
  ∀ n, P225604520759790943.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P16267607977701268865

`ceil((2*n+1)/ϕ)+and(1, 2*n)`
-/

namespace A184516.P16267607977701268865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ + (Nat.land 1 (2 * n) : ℤ)

end

end A184516.P16267607977701268865

namespace A184516

/-- `ceil((2*n+1)/ϕ)+and(1, 2*n)` -/
def P16267607977701268865.Spec : Prop :=
  ∀ n, P16267607977701268865.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P12241387651188614659

`ceil(ϕ*or(1, 2*n))-(2*n+1)`
-/

namespace A184516.P12241387651188614659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ)⌉ - (2 * n + 1 : ℤ)

end

end A184516.P12241387651188614659

namespace A184516

/-- `ceil(ϕ*or(1, 2*n))-(2*n+1)` -/
def P12241387651188614659.Spec : Prop :=
  ∀ n, P12241387651188614659.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P16844608699446233324

`ceil(ϕ*xor(1, 2*n))-(2*n+1)`
-/

namespace A184516.P16844608699446233324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)⌉ - (2 * n + 1 : ℤ)

end

end A184516.P16844608699446233324

namespace A184516

/-- `ceil(ϕ*xor(1, 2*n))-(2*n+1)` -/
def P16844608699446233324.Spec : Prop :=
  ∀ n, P16844608699446233324.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P8211250403613708738

`floor((2*n+1)/ϕ)+gcd(n, n+1)`
-/

namespace A184516.P8211250403613708738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / Real.goldenRatio⌋ + (Nat.gcd n (n + 1) : ℤ)

end

end A184516.P8211250403613708738

namespace A184516

/-- `floor((2*n+1)/ϕ)+gcd(n, n+1)` -/
def P8211250403613708738.Spec : Prop :=
  ∀ n, P8211250403613708738.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P6967069750440576601

`floor(and(2*n+1, 2*n)/ϕ+ϕ)`
-/

namespace A184516.P6967069750440576601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio + Real.goldenRatio⌋

end

end A184516.P6967069750440576601

namespace A184516

/-- `floor(and(2*n+1, 2*n)/ϕ+ϕ)` -/
def P6967069750440576601.Spec : Prop :=
  ∀ n, P6967069750440576601.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P1060329532260317942

`ceil((2*n+1)/ϕ)+val(2*n+1, 2)`
-/

namespace A184516.P1060329532260317942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ + (SequenceMachineLib.valuation (2 * n + 1) 2 : ℤ)

end

end A184516.P1060329532260317942

namespace A184516

/-- `ceil((2*n+1)/ϕ)+val(2*n+1, 2)` -/
def P1060329532260317942.Spec : Prop :=
  ∀ n, P1060329532260317942.a n = A184516 (n + 1)

end A184516

/-! ## A184516.P5073039240923640858

`gcd(n+3, n+2)*ceil((2*n+1)/ϕ)`
-/

namespace A184516.P5073039240923640858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 3) (n + 2) : ℤ) * ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉

end

end A184516.P5073039240923640858

namespace A184516

/-- `gcd(n+3, n+2)*ceil((2*n+1)/ϕ)` -/
def P5073039240923640858.Spec : Prop :=
  ∀ n, P5073039240923640858.a n = A184516 (n + 1)

end A184516

/-!
# A184517: Upper s-Wythoff sequence, where s=4n-2. Complement of A184516.

The programs for A184517, the canonical program `A184517.P12437931952189476312` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184517 has offset 1).

The definition of A184517 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184517.P12437931952189476312

`ceil((2*(n+1)-1)*ϕ²)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184517

/-- `ceil((2*(n+1)-1)*ϕ²)` -/
def P12437931952189476312.Spec : Prop :=
  ∀ n, P12437931952189476312.a n = A184517 (n + 1)

theorem P12437931952189476312.correct : P12437931952189476312.Spec := by
  intro n
  simp only [A184517, Nat.add_sub_cancel]

end A184517

/-! ## A184517.P8406513430009028677

`record[xor(3, n)]+floor(Δ[n²/ϕ])`
-/

namespace A184517.P8406513430009028677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) + ⌊f2 (n + 1) - f2 n⌋

end

end A184517.P8406513430009028677

namespace A184517

/-- `record[xor(3, n)]+floor(Δ[n²/ϕ])` -/
def P8406513430009028677.Spec : Prop :=
  ∀ n, P8406513430009028677.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P6609817668920775191

`ceil(ϕ*or(1, 2*n))+2*n+1`
-/

namespace A184517.P6609817668920775191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ)⌉ + (2 * n + 1 : ℤ)

end

end A184517.P6609817668920775191

namespace A184517

/-- `ceil(ϕ*or(1, 2*n))+2*n+1` -/
def P6609817668920775191.Spec : Prop :=
  ∀ n, P6609817668920775191.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P16246533229202779268

`ceil(ϕ*xor(1, 2*n))+2*n+1`
-/

namespace A184517.P16246533229202779268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ)⌉ + (2 * n + 1 : ℤ)

end

end A184517.P16246533229202779268

namespace A184517

/-- `ceil(ϕ*xor(1, 2*n))+2*n+1` -/
def P16246533229202779268.Spec : Prop :=
  ∀ n, P16246533229202779268.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P2318511714665721549

`floor(ϕ²*C(2*n+1, 2*n))+1`
-/

namespace A184517.P2318511714665721549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ 2 * (Nat.choose (2 * n + 1) (2 * n) : ℝ)⌋ + 1

end

end A184517.P2318511714665721549

namespace A184517

/-- `floor(ϕ²*C(2*n+1, 2*n))+1` -/
def P2318511714665721549.Spec : Prop :=
  ∀ n, P2318511714665721549.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P6713491448924318924

`floor((2*n+1)*ϕ²)+gcd(n, n+1)`
-/

namespace A184517.P6713491448924318924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ + (Nat.gcd n (n + 1) : ℤ)

end

end A184517.P6713491448924318924

namespace A184517

/-- `floor((2*n+1)*ϕ²)+gcd(n, n+1)` -/
def P6713491448924318924.Spec : Prop :=
  ∀ n, P6713491448924318924.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P5655827020296815882

`floor(Δ[lcm(n, n+1)]+ϕ*(2*n+1))`
-/

namespace A184517.P5655827020296815882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + Real.goldenRatio * (2 * n + 1 : ℝ)⌋

end

end A184517.P5655827020296815882

namespace A184517

/-- `floor(Δ[lcm(n, n+1)]+ϕ*(2*n+1))` -/
def P5655827020296815882.Spec : Prop :=
  ∀ n, P5655827020296815882.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P17424216309522463672

`ceil((2*n+1)/ϕ)+lcm(2, 2*n+1)`
-/

namespace A184517.P17424216309522463672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / Real.goldenRatio⌉ + (Nat.lcm 2 (2 * n + 1) : ℤ)

end

end A184517.P17424216309522463672

namespace A184517

/-- `ceil((2*n+1)/ϕ)+lcm(2, 2*n+1)` -/
def P17424216309522463672.Spec : Prop :=
  ∀ n, P17424216309522463672.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P9209796093254893766

`floor(and(1, 2*n+1)+(2*n+1)*ϕ²)`
-/

namespace A184517.P9209796093254893766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land 1 (2 * n + 1) : ℝ) + (2 * n + 1 : ℝ) * Real.goldenRatio ^ 2⌋

end

end A184517.P9209796093254893766

namespace A184517

/-- `floor(and(1, 2*n+1)+(2*n+1)*ϕ²)` -/
def P9209796093254893766.Spec : Prop :=
  ∀ n, P9209796093254893766.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P3975019273194118636

`floor(Δ[C(2*n+1, 2)]+(2*n+1)/ϕ)`
-/

namespace A184517.P3975019273194118636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + (2 * n + 1 : ℝ) / Real.goldenRatio⌋

end

end A184517.P3975019273194118636

namespace A184517

/-- `floor(Δ[C(2*n+1, 2)]+(2*n+1)/ϕ)` -/
def P3975019273194118636.Spec : Prop :=
  ∀ n, P3975019273194118636.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P12359739659934068727

`ceil(ϕ*C(2*n+1, 2*n))+2*n+1`
-/

namespace A184517.P12359739659934068727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (2 * n + 1) (2 * n) : ℝ)⌉ + (2 * n + 1 : ℤ)

end

end A184517.P12359739659934068727

namespace A184517

/-- `ceil(ϕ*C(2*n+1, 2*n))+2*n+1` -/
def P12359739659934068727.Spec : Prop :=
  ∀ n, P12359739659934068727.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P11980274228116782345

`A001966(n)+1`
-/

namespace A184517.P11980274228116782345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001966 n + 1

end

end A184517.P11980274228116782345

namespace A184517

/-- `A001966(n)+1` -/
def P11980274228116782345.Spec : Prop :=
  ∀ n, P11980274228116782345.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P1004161691033837465

`A003622(Δ[n²])+2`
-/

namespace A184517.P1004161691033837465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A184517.P1004161691033837465

namespace A184517

/-- `A003622(Δ[n²])+2` -/
def P1004161691033837465.Spec : Prop :=
  ∀ n, P1004161691033837465.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P13505433573431996581

`A035487(n+1)+1+n`
-/

namespace A184517.P13505433573431996581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) + 1 + (n : ℤ)

end

end A184517.P13505433573431996581

namespace A184517

/-- `A035487(n+1)+1+n` -/
def P13505433573431996581.Spec : Prop :=
  ∀ n, P13505433573431996581.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P13670975134777554049

`A342279(n)+2*(n+1)`
-/

namespace A184517.P13670975134777554049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342279 n + (2 * (n + 1) : ℤ)

end

end A184517.P13670975134777554049

namespace A184517

/-- `A342279(n)+2*(n+1)` -/
def P13670975134777554049.Spec : Prop :=
  ∀ n, P13670975134777554049.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P3838243940566316886

`A004767(n)+A001965(n)`
-/

namespace A184517.P3838243940566316886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + A001965 n

end

end A184517.P3838243940566316886

namespace A184517

/-- `A004767(n)+A001965(n)` -/
def P3838243940566316886.Spec : Prop :=
  ∀ n, P3838243940566316886.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P7614238700294516379

`A001965(n)+A016825(n)+1`
-/

namespace A184517.P7614238700294516379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001965 n + (A016825 n + 1)

end

end A184517.P7614238700294516379

namespace A184517

/-- `A001965(n)+A016825(n)+1` -/
def P7614238700294516379.Spec : Prop :=
  ∀ n, P7614238700294516379.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P15218781553808101852

`A184516(n+1)+A016825(n)`
-/

namespace A184517.P15218781553808101852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184516 (n + 1) + A016825 n

end

end A184517.P15218781553808101852

namespace A184517

/-- `A184516(n+1)+A016825(n)` -/
def P15218781553808101852.Spec : Prop :=
  ∀ n, P15218781553808101852.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P4553268406730059867

`A005206(2*n)+A004767(n)`
-/

namespace A184517.P4553268406730059867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n) + A004767 n

end

end A184517.P4553268406730059867

namespace A184517

/-- `A005206(2*n)+A004767(n)` -/
def P4553268406730059867.Spec : Prop :=
  ∀ n, P4553268406730059867.a n = A184517 (n + 1)

end A184517

/-! ## A184517.P14762577668052723444

`A081843(n+2)+n-1`
-/

namespace A184517.P14762577668052723444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081843 (n + 2) + ((n : ℤ) - 1)

end

end A184517.P14762577668052723444

namespace A184517

/-- `A081843(n+2)+n-1` -/
def P14762577668052723444.Spec : Prop :=
  ∀ n, P14762577668052723444.a n = A184517 (n + 1)

end A184517

/-!
# A184518: Lower s-Wythoff sequence, where s=4n-3. Complement of A184519.

The programs for A184518, the canonical program `A184518.P5385740056696755748` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184518 has offset 1).

The definition of A184518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184518.P5385740056696755748

`ceil(2*n/ϕ+ϕ/2)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184518

/-- `ceil(2*n/ϕ+ϕ/2)` -/
def P5385740056696755748.Spec : Prop :=
  ∀ n, P5385740056696755748.a n = A184518 (n + 1)

theorem P5385740056696755748.correct : P5385740056696755748.Spec := by
  intro n
  simp only [A184518, Nat.add_sub_cancel]

end A184518

/-! ## A184518.P4810210779582838883

`comp[A184519(n+1)-1]+1`
-/

namespace A184518.P4810210779582838883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184519 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184518.P4810210779582838883

namespace A184518

/-- `comp[A184519(n+1)-1]+1` -/
def P4810210779582838883.Spec : Prop :=
  ∀ n, (P4810210779582838883.a n : ℤ) = A184518 (n + 1)

end A184518

/-! ## A184518.P14257027678123578464

`comp[A007064(2*n+1)]+1`
-/

namespace A184518.P14257027678123578464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184518.P14257027678123578464

namespace A184518

/-- `comp[A007064(2*n+1)]+1` -/
def P14257027678123578464.Spec : Prop :=
  ∀ n, (P14257027678123578464.a n : ℤ) = A184518 (n + 1)

end A184518

/-! ## A184518.P15444743859142179527

`A184519(n+1)-A016813(n)`
-/

namespace A184518.P15444743859142179527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184519 (n + 1) - A016813 n

end

end A184518.P15444743859142179527

namespace A184518

/-- `A184519(n+1)-A016813(n)` -/
def P15444743859142179527.Spec : Prop :=
  ∀ n, P15444743859142179527.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P13362415935375310900

`A007064(Δ[n²])-4*n`
-/

namespace A184518.P13362415935375310900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (4 * n : ℤ)

end

end A184518.P13362415935375310900

namespace A184518

/-- `A007064(Δ[n²])-4*n` -/
def P13362415935375310900.Spec : Prop :=
  ∀ n, P13362415935375310900.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P7863564441869088806

`A003623(2*n+1)-A356217(2*n+1)`
-/

namespace A184518.P7863564441869088806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (2 * n + 1) - A356217 (2 * n + 1)

end

end A184518.P7863564441869088806

namespace A184518

/-- `A003623(2*n+1)-A356217(2*n+1)` -/
def P7863564441869088806.Spec : Prop :=
  ∀ n, P7863564441869088806.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P14865050177599751516

`A110654(A001965(2*n))+1`
-/

namespace A184518.P14865050177599751516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001965 (2 * n)).toNat + 1

end

end A184518.P14865050177599751516

namespace A184518

/-- `A110654(A001965(2*n))+1` -/
def P14865050177599751516.Spec : Prop :=
  ∀ n, P14865050177599751516.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P18044432497729293918

`A080513(A001965(2*n))`
-/

namespace A184518.P18044432497729293918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A001965 (2 * n)).toNat

end

end A184518.P18044432497729293918

namespace A184518

/-- `A080513(A001965(2*n))` -/
def P18044432497729293918.Spec : Prop :=
  ∀ n, P18044432497729293918.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P11928813788659560668

`A080513(A005206(4*n))`
-/

namespace A184518.P11928813788659560668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A005206 (4 * n)).toNat

end

end A184518.P11928813788659560668

namespace A184518

/-- `A080513(A005206(4*n))` -/
def P11928813788659560668.Spec : Prop :=
  ∀ n, P11928813788659560668.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P17046620164477529136

`A008619(A001965(2*n)+1)`
-/

namespace A184518.P17046620164477529136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001965 (2 * n) + 1).toNat

end

end A184518.P17046620164477529136

namespace A184518

/-- `A008619(A001965(2*n)+1)` -/
def P17046620164477529136.Spec : Prop :=
  ∀ n, P17046620164477529136.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P6946152401023800970

`A008619(A184516(2*n+1))`
-/

namespace A184518.P6946152401023800970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184516 (2 * n + 1)).toNat

end

end A184518.P6946152401023800970

namespace A184518

/-- `A008619(A184516(2*n+1))` -/
def P6946152401023800970.Spec : Prop :=
  ∀ n, P6946152401023800970.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P2614636806880936829

`A065033(A001965(2*n)+2)`
-/

namespace A184518.P2614636806880936829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001965 (2 * n) + 2).toNat

end

end A184518.P2614636806880936829

namespace A184518

/-- `A065033(A001965(2*n)+2)` -/
def P2614636806880936829.Spec : Prop :=
  ∀ n, P2614636806880936829.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P10112287726149230972

`A004526(A001965(2*n)+3)`
-/

namespace A184518.P10112287726149230972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001965 (2 * n) + 3).toNat

end

end A184518.P10112287726149230972

namespace A184518

/-- `A004526(A001965(2*n)+3)` -/
def P10112287726149230972.Spec : Prop :=
  ∀ n, P10112287726149230972.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P6716574014284648263

`A004526(A005206(4*n)+3)`
-/

namespace A184518.P6716574014284648263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005206 (4 * n) + 3).toNat

end

end A184518.P6716574014284648263

namespace A184518

/-- `A004526(A005206(4*n)+3)` -/
def P6716574014284648263.Spec : Prop :=
  ∀ n, P6716574014284648263.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P10619948298773061374

`A078796(A184656(2*n+1))-2*n`
-/

namespace A184518.P10619948298773061374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078796 (A184656 (2 * n + 1)).toNat - (2 * n : ℤ)

end

end A184518.P10619948298773061374

namespace A184518

/-- `A078796(A184656(2*n+1))-2*n` -/
def P10619948298773061374.Spec : Prop :=
  ∀ n, P10619948298773061374.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P17561860490918706046

`A334415(A000201(2*n+1))+1`
-/

namespace A184518.P17561860490918706046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A000201 (2 * n + 1)).toNat + 1

end

end A184518.P17561860490918706046

namespace A184518

/-- `A334415(A000201(2*n+1))+1` -/
def P17561860490918706046.Spec : Prop :=
  ∀ n, P17561860490918706046.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P9626519861084053138

`A008619(A019446(2*n+2*n+1))`
-/

namespace A184518.P9626519861084053138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A019446 (2 * n + (2 * n + 1))).toNat

end

end A184518.P9626519861084053138

namespace A184518

/-- `A008619(A019446(2*n+2*n+1))` -/
def P9626519861084053138.Spec : Prop :=
  ∀ n, P9626519861084053138.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P13434109950324479990

`A065033(A123070(A004767(n)))`
-/

namespace A184518.P13434109950324479990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A123070 (A004767 n).toNat).toNat

end

end A184518.P13434109950324479990

namespace A184518

/-- `A065033(A123070(A004767(n)))` -/
def P13434109950324479990.Spec : Prop :=
  ∀ n, P13434109950324479990.a n = A184518 (n + 1)

end A184518

/-! ## A184518.P17053671973310461547

`val(A016116(A184516(2*n+1)+2), 2)`
-/

namespace A184518.P17053671973310461547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A016116 (A184516 (2 * n + 1) + 2).toNat).toNat 2

end

end A184518.P17053671973310461547

namespace A184518

/-- `val(A016116(A184516(2*n+1)+2), 2)` -/
def P17053671973310461547.Spec : Prop :=
  ∀ n, (P17053671973310461547.a n : ℤ) = A184518 (n + 1)

end A184518

/-!
# A184519: Upper s-Wythoff sequence, where s=4n-3. Complement of A184518.

The programs for A184519, the canonical program `A184519.P3288767795702615406` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184519 has offset 1).

The definition of A184519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184519.P3288767795702615406

`round(floor((4*n+1)*(ϕ+1))/2)+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184519

/-- `round(floor((4*n+1)*(ϕ+1))/2)+1` -/
def P3288767795702615406.Spec : Prop :=
  ∀ n, P3288767795702615406.a n = A184519 (n + 1)

theorem P3288767795702615406.correct : P3288767795702615406.Spec := by
  intro n
  simp only [A184519, Nat.add_sub_cancel]

end A184519

/-! ## A184519.P9111020783586326919

`A000027(A007064(2*n+1)+1)`
-/

namespace A184519.P9111020783586326919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007064 (2 * n + 1) + 1).toNat

end

end A184519.P9111020783586326919

namespace A184519

/-- `A000027(A007064(2*n+1)+1)` -/
def P9111020783586326919.Spec : Prop :=
  ∀ n, P9111020783586326919.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P3355130267031134846

`A007067(A007064(2*n+1)-2*n)`
-/

namespace A184519.P3355130267031134846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007064 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A184519.P3355130267031134846

namespace A184519

/-- `A007067(A007064(2*n+1)-2*n)` -/
def P3355130267031134846.Spec : Prop :=
  ∀ n, P3355130267031134846.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P7335663170121819880

`A007067(A035488(2*n)-A001966(2*n))`
-/

namespace A184519.P7335663170121819880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A035488 (2 * n) - A001966 (2 * n)).toNat

end

end A184519.P7335663170121819880

namespace A184519

/-- `A007067(A035488(2*n)-A001966(2*n))` -/
def P7335663170121819880.Spec : Prop :=
  ∀ n, P7335663170121819880.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P4065712028162651625

`round((A001950(4*n+1)+2)/2)`
-/

namespace A184519.P4065712028162651625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001950 (4 * n + 1) + 2 : ℚ) / 2)

end

end A184519.P4065712028162651625

namespace A184519

/-- `round((A001950(4*n+1)+2)/2)` -/
def P4065712028162651625.Spec : Prop :=
  ∀ n, P4065712028162651625.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P14431305773191507337

`A026354(A026355(A007064(2*n+1)))`
-/

namespace A184519.P14431305773191507337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026354 (A026355 (A007064 (2 * n + 1)).toNat).toNat

end

end A184519.P14431305773191507337

namespace A184519

/-- `A026354(A026355(A007064(2*n+1)))` -/
def P14431305773191507337.Spec : Prop :=
  ∀ n, P14431305773191507337.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P17979441444029963638

`A080513(A001966(2*n))`
-/

namespace A184519.P17979441444029963638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A001966 (2 * n)).toNat

end

end A184519.P17979441444029963638

namespace A184519

/-- `A080513(A001966(2*n))` -/
def P17979441444029963638.Spec : Prop :=
  ∀ n, P17979441444029963638.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P12185696894004523738

`A008619(A184517(Δ[n²]))`
-/

namespace A184519.P12185696894004523738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184517 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A184519.P12185696894004523738

namespace A184519

/-- `A008619(A184517(Δ[n²]))` -/
def P12185696894004523738.Spec : Prop :=
  ∀ n, P12185696894004523738.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P2333712355937749642

`A065033(A007066(4*n+2))`
-/

namespace A184519.P2333712355937749642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A007066 (4 * n + 2)).toNat

end

end A184519.P2333712355937749642

namespace A184519

/-- `A065033(A007066(4*n+2))` -/
def P2333712355937749642.Spec : Prop :=
  ∀ n, P2333712355937749642.a n = A184519 (n + 1)

end A184519

/-! ## A184519.P15453834450148648898

`A028242(2*A007064(2*n+1))`
-/

namespace A184519.P15453834450148648898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A007064 (2 * n + 1)).toNat

end

end A184519.P15453834450148648898

namespace A184519

/-- `A028242(2*A007064(2*n+1))` -/
def P15453834450148648898.Spec : Prop :=
  ∀ n, P15453834450148648898.a n = A184519 (n + 1)

end A184519

/-!
# A184520: Lower s-Wythoff sequence, where s=5n+1. Complement of A184521.

The programs for A184520, there is no canonical definition to state claims against.
-/

/-! ## A184520.P3283117466389061344

`comp[A184531(n+1)-2]`
-/

namespace A184520.P3283117466389061344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184520.P3283117466389061344

/-! ## A184520.P16370796763830330099

`comp[A184521(n+1)-1]+1`
-/

namespace A184520.P16370796763830330099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184521 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184520.P16370796763830330099

/-! ## A184520.P9359017143267528005

`A184530(n+2)-2`
-/

namespace A184520.P9359017143267528005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 2) - 2

end

end A184520.P9359017143267528005

/-! ## A184520.P13999181693275648663

`A184531(n+2)-(5*n+8)`
-/

namespace A184520.P13999181693275648663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 2) - (5 * n + 8 : ℤ)

end

end A184520.P13999181693275648663

/-! ## A184520.P8286261501862190643

`∑[A001222(Δ[A184530(n+1)])]+n`
-/

namespace A184520.P8286261501862190643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184520.P8286261501862190643

/-! ## A184520.P13658195654874771908

`∑[A023416(Δ[A184530(n+1)])]+n`
-/

namespace A184520.P13658195654874771908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A184520.P13658195654874771908

/-! ## A184520.P12927461278971657995

`A184526(n+2)+A184531(n+2)-A184527(n+2)`
-/

namespace A184520.P12927461278971657995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (n + 2) + (A184531 (n + 2) - A184527 (n + 2))

end

end A184520.P12927461278971657995

/-! ## A184520.P14130514566336162670

`A023444(A184530(n+2))`
-/

namespace A184520.P14130514566336162670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A184530 (n + 2)).toNat

end

end A184520.P14130514566336162670

/-!
# A184521: Upper s-Wythoff sequence, where s=5n+1. Complement of A184520.

The programs for A184521, there is no canonical definition to state claims against.
-/

/-! ## A184521.P6534642692792522828

`A184520(n+1)+5*n+6`
-/

namespace A184521.P6534642692792522828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184520 (n + 1) + (5 * n + 6 : ℤ)

end

end A184521.P6534642692792522828

/-! ## A184521.P6099247261300829083

`A184531(n+2)-2`
-/

namespace A184521.P6099247261300829083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 2) - 2

end

end A184521.P6099247261300829083

/-! ## A184521.P10400866975320201545

`A184530(n+2)+(10*n+8)/2`
-/

namespace A184521.P10400866975320201545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184530 (n + 2) : ℚ) + (10 * n + 8 : ℚ) / 2

end

end A184521.P10400866975320201545

/-! ## A184521.P3326602764978664420

`A008587(n+1)+A184530(n+2)-1`
-/

namespace A184521.P3326602764978664420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1) + (A184530 (n + 2) - 1)

end

end A184521.P3326602764978664420

/-! ## A184521.P11374576162815798442

`A016861(n+1)+A184530(n+2)-2`
-/

namespace A184521.P11374576162815798442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (n + 1) + (A184530 (n + 2) - 2)

end

end A184521.P11374576162815798442

/-! ## A184521.P16764365121097344670

`n+1+A184520(n+1)+Δ[A000384(n+1)]`
-/

namespace A184521.P16764365121097344670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A184520 (n + 1) + (f1 (n + 1) - f1 n))

end

end A184521.P16764365121097344670

/-! ## A184521.P316342404201320016

`A023444(A184531(n+2))`
-/

namespace A184521.P316342404201320016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A184531 (n + 2)).toNat

end

end A184521.P316342404201320016

/-! ## A184521.P16479461972446333323

`A266977(A017365(n))+A184520(n+1)`
-/

namespace A184521.P16479461972446333323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (A017365 n).toNat + A184520 (n + 1)

end

end A184521.P16479461972446333323

/-!
# A184522: Upper s-Wythoff sequence, where s=5n. Complement of A184523.

The programs for A184522, the canonical program `A184522.P14639484135176890682` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184522 has offset 1).

The definition of A184522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184522.P14639484135176890682

`comp[A184523(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184522

/-- `comp[A184523(n+1)-1]+1` -/
def P14639484135176890682.Spec : Prop :=
  ∀ n, (P14639484135176890682.a n : ℤ) = A184522 (n + 1)

theorem P14639484135176890682.correct : P14639484135176890682.Spec := by
  intro n
  simp only [A184522, Nat.add_sub_cancel]

end A184522

/-! ## A184522.P5677546886273726902

`A184523(n+1)-Δ[A005891(n)]`
-/

namespace A184522.P5677546886273726902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184523 (n + 1) - (f1 (n + 1) - f1 n)

end

end A184522.P5677546886273726902

namespace A184522

/-- `A184523(n+1)-Δ[A005891(n)]` -/
def P5677546886273726902.Spec : Prop :=
  ∀ n, P5677546886273726902.a n = A184522 (n + 1)

end A184522

/-! ## A184522.P11229774144425323863

`eq[char[A184523(n+1)], A000007(n)]`
-/

namespace A184522.P11229774144425323863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184523 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184522.P11229774144425323863

namespace A184522

/-- `eq[char[A184523(n+1)], A000007(n)]` -/
def P11229774144425323863.Spec : Prop :=
  ∀ n, (P11229774144425323863.a n : ℤ) = A184522 (n + 1)

end A184522

/-! ## A184522.P11303634853329565243

`A184523(A184521(n+1))%A184521(n+1)`
-/

namespace A184522.P11303634853329565243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184523 (A184521 (n + 1)).toNat) (A184521 (n + 1))

end

end A184522.P11303634853329565243

namespace A184522

/-- `A184523(A184521(n+1))%A184521(n+1)` -/
def P11303634853329565243.Spec : Prop :=
  ∀ n, P11303634853329565243.a n = A184522 (n + 1)

end A184522

/-! ## A184522.P2118518077520345472

`A002264(A097337(n+1))+A002260(∑[n+1])`
-/

namespace A184522.P2118518077520345472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A097337 (n + 1)).toNat + A002260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184522.P2118518077520345472

namespace A184522

/-- `A002264(A097337(n+1))+A002260(∑[n+1])` -/
def P2118518077520345472.Spec : Prop :=
  ∀ n, P2118518077520345472.a n = A184522 (n + 1)

end A184522

/-! ## A184522.P16808931392407621745

`A025581(∑[n+1])+A002264(A097337(n+1))`
-/

namespace A184522.P16808931392407621745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j) + A002264 (A097337 (n + 1)).toNat

end

end A184522.P16808931392407621745

namespace A184522

/-- `A025581(∑[n+1])+A002264(A097337(n+1))` -/
def P16808931392407621745.Spec : Prop :=
  ∀ n, P16808931392407621745.a n = A184522 (n + 1)

end A184522

/-!
# A184523: Upper s-Wythoff sequence, where s=5n. Complement of A184522.

The programs for A184523, the canonical program `A184523.P12255353153732911865` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184523 has offset 1).

The definition of A184523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184523.P12255353153732911865

`floor((n+1)/2*(7+sqrt(29)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184523

/-- `floor((n+1)/2*(7+sqrt(29)))` -/
def P12255353153732911865.Spec : Prop :=
  ∀ n, P12255353153732911865.a n = A184523 (n + 1)

theorem P12255353153732911865.correct : P12255353153732911865.Spec := by
  intro n
  simp only [A184523, Nat.add_sub_cancel]

end A184523

/-! ## A184523.P11903383619032131051

`A184522(n+1)+5*(n+1)`
-/

namespace A184523.P11903383619032131051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184522 (n + 1) + (5 * (n + 1) : ℤ)

end

end A184523.P11903383619032131051

namespace A184523

/-- `A184522(n+1)+5*(n+1)` -/
def P11903383619032131051.Spec : Prop :=
  ∀ n, P11903383619032131051.a n = A184523 (n + 1)

end A184523

/-! ## A184523.P572610482927969646

`A184522(n+1)+A016897(n)+1`
-/

namespace A184523.P572610482927969646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184522 (n + 1) + A016897 n + 1

end

end A184523.P572610482927969646

namespace A184523

/-- `A184522(n+1)+A016897(n)+1` -/
def P572610482927969646.Spec : Prop :=
  ∀ n, P572610482927969646.a n = A184523 (n + 1)

end A184523

/-! ## A184523.P6625050054239327772

`A184522(n+1)+A016885(n)+2`
-/

namespace A184523.P6625050054239327772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184522 (n + 1) + A016885 n + 2

end

end A184523.P6625050054239327772

namespace A184523

/-- `A184522(n+1)+A016885(n)+2` -/
def P6625050054239327772.Spec : Prop :=
  ∀ n, P6625050054239327772.a n = A184523 (n + 1)

end A184523

/-! ## A184523.P4651202317049056612

`A008588(n+1)+A184522(n+1)%(n+1)`
-/

namespace A184523.P4651202317049056612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (n + 1) + Int.tmod (A184522 (n + 1)) (n + 1 : ℤ)

end

end A184523.P4651202317049056612

namespace A184523

/-- `A008588(n+1)+A184522(n+1)%(n+1)` -/
def P4651202317049056612.Spec : Prop :=
  ∀ n, P4651202317049056612.a n = A184523 (n + 1)

end A184523

/-! ## A184523.P15876664371400762926

`A184528(A184522(n+1)+A016825(n)+2)`
-/

namespace A184523.P15876664371400762926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184528 (A184522 (n + 1) + (A016825 n + 2)).toNat

end

end A184523.P15876664371400762926

namespace A184523

/-- `A184528(A184522(n+1)+A016825(n)+2)` -/
def P15876664371400762926.Spec : Prop :=
  ∀ n, P15876664371400762926.a n = A184523 (n + 1)

end A184523

/-!
# A184524: Lower s-Wythoff sequence, where s=5n-1. Complement of A184525.

The programs for A184524, there is no canonical definition to state claims against.
-/

/-! ## A184524.P11395349904020362239

`comp[A184525(n+1)-1]+1`
-/

namespace A184524.P11395349904020362239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184525 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184524.P11395349904020362239

/-! ## A184524.P13690673330038058360

`A184525(n+1)-A016897(n)`
-/

namespace A184524.P13690673330038058360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184525 (n + 1) - A016897 n

end

end A184524.P13690673330038058360

/-! ## A184524.P10660040419471890671

`A184525(n+1)-(A016885(n)+1)`
-/

namespace A184524.P10660040419471890671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184525 (n + 1) - (A016885 n + 1)

end

end A184524.P10660040419471890671

/-! ## A184524.P8344973141752096448

`A184525(A000027(n+1))%A016897(n)`
-/

namespace A184524.P8344973141752096448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184525 (A000027 (n + 1)).toNat) (A016897 n)

end

end A184524.P8344973141752096448

/-! ## A184524.P8138555938954947397

`A023443(A184525(n+1)-A016885(n))`
-/

namespace A184524.P8138555938954947397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184525 (n + 1) - A016885 n).toNat

end

end A184524.P8138555938954947397

/-! ## A184524.P14142433048793947456

`A023443(A184525(n+1)%A016885(n))`
-/

namespace A184524.P14142433048793947456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A184525 (n + 1)) (A016885 n)).toNat

end

end A184524.P14142433048793947456

/-! ## A184524.P11801190819707618022

`A004526(A184526(2*(n+1)))`
-/

namespace A184524.P11801190819707618022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184526 (2 * (n + 1))).toNat

end

end A184524.P11801190819707618022

/-! ## A184524.P15435066223770864007

`A184526(A184523(n+1))-A184523(n+1)`
-/

namespace A184524.P15435066223770864007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (A184523 (n + 1)).toNat - A184523 (n + 1)

end

end A184524.P15435066223770864007

/-! ## A184524.P12568353717351516704

`A002264(round(sqrt(A002264((n+1)²))))+n+1`
-/

namespace A184524.P12568353717351516704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway (Real.sqrt (A002264 ((n + 1) ^ 2) : ℝ))).toNat + (n + 1 : ℤ)

end

end A184524.P12568353717351516704

/-! ## A184524.P13875483582908228560

`lt[Δ[A181578(n)], A181578(n)+1]`
-/

namespace A184524.P13875483582908228560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A184524.P13875483582908228560

/-!
# A184525: Upper s-Wythoff sequence, where s=5n-1. Complement of A184524.

The programs for A184525, there is no canonical definition to state claims against.
-/

/-! ## A184525.P12584741997500710698

`A184524(n+1)+A016897(n)`
-/

namespace A184525.P12584741997500710698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + A016897 n

end

end A184525.P12584741997500710698

/-! ## A184525.P5587729770933054129

`A184524(n+1)+A016885(n)+1`
-/

namespace A184525.P5587729770933054129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + (A016885 n + 1)

end

end A184525.P5587729770933054129

/-! ## A184525.P17811347266965411115

`A184524(n+1)+A017365(n)/2`
-/

namespace A184525.P17811347266965411115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184524 (n + 1) : ℚ) + (A017365 n : ℚ) / 2

end

end A184525.P17811347266965411115

/-! ## A184525.P260258329202832778

`A184526(A184526(n+1)+A016897(n))-A184526(n+1)`
-/

namespace A184525.P260258329202832778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (A184526 (n + 1) + A016897 n).toNat - A184526 (n + 1)

end

end A184525.P260258329202832778

/-! ## A184525.P16508490790375821130

`A184524(n+1)+A000463(A017353(n))`
-/

namespace A184525.P16508490790375821130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + A000463 (A017353 n).toNat

end

end A184525.P16508490790375821130

/-! ## A184525.P11472842171170868116

`A184524(n+1)+A004525(A017365(n))`
-/

namespace A184525.P11472842171170868116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + A004525 (A017365 n).toNat

end

end A184525.P11472842171170868116

/-! ## A184525.P10751758959193582955

`A184524(n+1)+A004524(A017377(n))`
-/

namespace A184525.P10751758959193582955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + A004524 (A017377 n).toNat

end

end A184525.P10751758959193582955

/-! ## A184525.P4837086297090022094

`A184524(n+1)+A008619(A017341(n))`
-/

namespace A184525.P4837086297090022094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + A008619 (A017341 n).toNat

end

end A184525.P4837086297090022094

/-! ## A184525.P14314271932409461973

`A184524(n+1)+A052938(A017305(n))`
-/

namespace A184525.P14314271932409461973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + A052938 (A017305 n).toNat

end

end A184525.P14314271932409461973

/-! ## A184525.P3720282578850350619

`A184524(n+1)+A002264(A257645(n))`
-/

namespace A184525.P3720282578850350619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (n + 1) + A002264 (A257645 n).toNat

end

end A184525.P3720282578850350619

/-!
# A184526: Lower s-Wythoff sequence, where s=5n-2. Complement of A184527.

The programs for A184526, there is no canonical definition to state claims against.
-/

/-! ## A184526.P17855648242529831757

`comp[A184527(n+1)-1]+1`
-/

namespace A184526.P17855648242529831757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184527 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184526.P17855648242529831757

/-! ## A184526.P7063901667621681585

`A184527(n+1)-A016885(n)`
-/

namespace A184526.P7063901667621681585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184527 (n + 1) - A016885 n

end

end A184526.P7063901667621681585

/-! ## A184526.P17411374916523778607

`A008619(A184520(2*n+1))`
-/

namespace A184526.P17411374916523778607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184520 (2 * n + 1)).toNat

end

end A184526.P17411374916523778607

/-! ## A184526.P6023572906545203561

`A008619(A184530(2*(n+1))-2)`
-/

namespace A184526.P6023572906545203561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184530 (2 * (n + 1)) - 2).toNat

end

end A184526.P6023572906545203561

/-! ## A184526.P8068949558164255911

`A004526(A184530(2*(n+1)))`
-/

namespace A184526.P8068949558164255911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184530 (2 * (n + 1))).toNat

end

end A184526.P8068949558164255911

/-! ## A184526.P5171880823149963628

`A184530(A184525(n+1))-A184525(n+1)`
-/

namespace A184526.P5171880823149963628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (A184525 (n + 1)).toNat - A184525 (n + 1)

end

end A184526.P5171880823149963628

/-! ## A184526.P4582851469644902749

`A184521(A184529(n+1))%A184529(n+1)`
-/

namespace A184526.P4582851469644902749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184521 (A184529 (n + 1)).toNat) (A184529 (n + 1))

end

end A184526.P4582851469644902749

/-! ## A184526.P12210271678400486078

`A172471(A088804(n+1)-A000196(n))`
-/

namespace A184526.P12210271678400486078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A088804 (n + 1) - A000196 n).toNat

end

end A184526.P12210271678400486078

/-! ## A184526.P16965660580664055682

`A000196(2*(A088804(n+1)-A000196(n)))`
-/

namespace A184526.P16965660580664055682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (2 * (A088804 (n + 1) - A000196 n)).toNat

end

end A184526.P16965660580664055682

/-!
# A184527: Upper s-Wythoff sequence, where s=5n-2. Complement of A184526.

The programs for A184527, there is no canonical definition to state claims against.
-/

/-! ## A184527.P2044460992696167496

`A184526(n+1)+A016885(n)`
-/

namespace A184527.P2044460992696167496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (n + 1) + A016885 n

end

end A184527.P2044460992696167496

/-! ## A184527.P14503721783534853282

`A184526(n+1)+A016897(n)-1`
-/

namespace A184527.P14503721783534853282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (n + 1) + (A016897 n - 1)

end

end A184527.P14503721783534853282

/-! ## A184527.P11021746998897923932

`A184526(n+1)+A017341(n)/2`
-/

namespace A184527.P11021746998897923932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184526 (n + 1) : ℚ) + (A017341 n : ℚ) / 2

end

end A184527.P11021746998897923932

/-! ## A184527.P5254859611538881879

`A184526(n+1)+Δ[A005475(n)]`
-/

namespace A184527.P5254859611538881879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (n + 1) + (f1 (n + 1) - f1 n)

end

end A184527.P5254859611538881879

/-! ## A184527.P2070165556976789731

`A184526(n+1)+Δ[A116668(n)]`
-/

namespace A184527.P2070165556976789731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (n + 1) + (f1 (n + 1) - f1 n)

end

end A184527.P2070165556976789731

/-! ## A184527.P5598379828501105132

`A184530(A184530(n+1)+A016885(n))-A184530(n+1)`
-/

namespace A184527.P5598379828501105132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (A184530 (n + 1) + A016885 n).toNat - A184530 (n + 1)

end

end A184527.P5598379828501105132

/-! ## A184527.P13356404409932120720

`A184526(n+1)+A004525(A017341(n))`
-/

namespace A184527.P13356404409932120720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (n + 1) + A004525 (A017341 n).toNat

end

end A184527.P13356404409932120720

/-! ## A184527.P3310440662827978141

`A184526(n+1)+A004526(A017353(n))`
-/

namespace A184527.P3310440662827978141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184526 (n + 1) + A004526 (A017353 n).toNat

end

end A184527.P3310440662827978141

/-! ## A184527.P10057911173515338649

`A233583(A016897(n))+A184526(n+1)`
-/

namespace A184527.P10057911173515338649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A016897 n).toNat + A184526 (n + 1)

end

end A184527.P10057911173515338649

/-!
# A184528: Lower s-Wythoff sequence, where s=5n-3. Complement of A184529.

The programs for A184528, there is no canonical definition to state claims against.
-/

/-! ## A184528.P7370140230045833871

`n+1+A184529(n+1)%(2*n+1)`
-/

namespace A184528.P7370140230045833871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + Int.tmod (A184529 (n + 1)) (2 * n + 1 : ℤ)

end

end A184528.P7370140230045833871

/-! ## A184528.P16275094716806446113

`A184529(n+1)-A016873(n)`
-/

namespace A184528.P16275094716806446113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184529 (n + 1) - A016873 n

end

end A184528.P16275094716806446113

/-! ## A184528.P9873146396743836236

`A184529(n+1)+1-A016885(n)`
-/

namespace A184528.P9873146396743836236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184529 (n + 1) + (1 - A016885 n)

end

end A184528.P9873146396743836236

/-! ## A184528.P12051936750731531695

`A184529(n+1)-(A008587(n)+2)`
-/

namespace A184528.P12051936750731531695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184529 (n + 1) - (A008587 n + 2)

end

end A184528.P12051936750731531695

/-! ## A184528.P15391929259854411865

`A184529(n+1)+2-A016897(n)`
-/

namespace A184528.P15391929259854411865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184529 (n + 1) + (2 - A016897 n)

end

end A184528.P15391929259854411865

/-! ## A184528.P10768193478424302041

`A184529(n+1)%A005408(n)+n+1`
-/

namespace A184528.P10768193478424302041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184529 (n + 1)) (A005408 n) + (n + 1 : ℤ)

end

end A184528.P10768193478424302041

/-! ## A184528.P14762606347531360867

`A008619(A184524(2*n+1))`
-/

namespace A184528.P14762606347531360867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184524 (2 * n + 1)).toNat

end

end A184528.P14762606347531360867

/-! ## A184528.P8296367884241734449

`ceil(A184530(3*n+2)/3)`
-/

namespace A184528.P8296367884241734449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184530 (3 * n + 2) : ℚ) / 3⌉

end

end A184528.P8296367884241734449

/-! ## A184528.P2201266205027154669

`A184529(n+1)-A023443(A016885(n))`
-/

namespace A184528.P2201266205027154669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184529 (n + 1) - A023443 (A016885 n).toNat

end

end A184528.P2201266205027154669

/-! ## A184528.P16728889804746120924

`A184529(n+1)-A023444(A016897(n))`
-/

namespace A184528.P16728889804746120924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184529 (n + 1) - A023444 (A016897 n).toNat

end

end A184528.P16728889804746120924

/-!
# A184529: Upper s-Wythoff sequence, where s=5n-3. Complement of A184528.

The programs for A184529, there is no canonical definition to state claims against.
-/

/-! ## A184529.P14482954699134501356

`A184528(n+1)+5*n+2`
-/

namespace A184529.P14482954699134501356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184528 (n + 1) + (5 * n + 2 : ℤ)

end

end A184529.P14482954699134501356

/-! ## A184529.P17931862405844497263

`A184528(n+1)+A008587(n)+2`
-/

namespace A184529.P17931862405844497263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184528 (n + 1) + A008587 n + 2

end

end A184529.P17931862405844497263

/-! ## A184529.P4832063880250454339

`A184528(n+1)+A016885(n)-1`
-/

namespace A184529.P4832063880250454339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184528 (n + 1) + A016885 n - 1

end

end A184529.P4832063880250454339

/-! ## A184529.P12783347951760786891

`round((A184525(2*n+1)+1)/2)`
-/

namespace A184529.P12783347951760786891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184525 (2 * n + 1) + 1 : ℚ) / 2)

end

end A184529.P12783347951760786891

/-! ## A184529.P1013189862900074997

`A184522(A184528(n+1)+A016825(n))`
-/

namespace A184529.P1013189862900074997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184522 (A184528 (n + 1) + A016825 n).toNat

end

end A184529.P1013189862900074997

/-! ## A184529.P16875040451863560272

`A184520(A184528(n+1)+A130824(n+1))`
-/

namespace A184529.P16875040451863560272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184520 (A184528 (n + 1) + A130824 (n + 1)).toNat

end

end A184529.P16875040451863560272

/-! ## A184529.P11482080118878538877

`A184522(A184528(n+1)+A130824(n+1))`
-/

namespace A184529.P11482080118878538877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184522 (A184528 (n + 1) + A130824 (n + 1)).toNat

end

end A184529.P11482080118878538877

/-! ## A184529.P5359224805257450279

`A184524(A184528(n+1)+A130824(n+1))`
-/

namespace A184529.P5359224805257450279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184524 (A184528 (n + 1) + A130824 (n + 1)).toNat

end

end A184529.P5359224805257450279

/-! ## A184529.P1953297491005912005

`A008619(A184525(2*n+1))`
-/

namespace A184529.P1953297491005912005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184525 (2 * n + 1)).toNat

end

end A184529.P1953297491005912005

/-!
# A184530: Lower s-Wythoff sequence, where s=5n-4. Complement of A184531.

The programs for A184530, there is no canonical definition to state claims against.
-/

/-! ## A184530.P17110667016115727562

`comp[A184531(n+1)-1]+1`
-/

namespace A184530.P17110667016115727562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184530.P17110667016115727562

/-! ## A184530.P4526138757877083739

`A184531(n+1)-A016861(n)`
-/

namespace A184530.P4526138757877083739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 1) - A016861 n

end

end A184530.P4526138757877083739

/-! ## A184530.P18009124699663466665

`∏{p}[A158522(n+1), A184520(n)+#]`
-/

namespace A184530.P18009124699663466665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A184520 n + (p : ℤ))

end

end A184530.P18009124699663466665

/-! ## A184530.P3521540495661642791

`eq[char[A184531(n+1)], A000007(n)]`
-/

namespace A184530.P3521540495661642791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A184530.P3521540495661642791

/-! ## A184530.P17111348376110628070

`A008619(A184528(Δ[n²]))`
-/

namespace A184530.P17111348376110628070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184528 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A184530.P17111348376110628070

/-! ## A184530.P14495756973005279225

`A184531(n+1)-A004524(A017305(n))`
-/

namespace A184530.P14495756973005279225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 1) - A004524 (A017305 n).toNat

end

end A184530.P14495756973005279225

/-! ## A184530.P16229605889326065058

`A184531(n+1)-A008620(A008597(n))`
-/

namespace A184530.P16229605889326065058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184531 (n + 1) - A008620 (A008597 n).toNat

end

end A184530.P16229605889326065058

/-!
# A184531: Upper s-Wythoff sequence, where s=5n-4. Complement of A184530.

The programs for A184531, there is no canonical definition to state claims against.
-/

/-! ## A184531.P10462149904757481592

`A184530(n+1)+A016861(n)`
-/

namespace A184531.P10462149904757481592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) + A016861 n

end

end A184531.P10462149904757481592

/-! ## A184531.P8631206995786838729

`A184530(n+1)+sqrt(A016862(n))`
-/

namespace A184531.P8631206995786838729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184530 (n + 1) : ℝ) + Real.sqrt (A016862 n : ℝ)

end

end A184531.P8631206995786838729

/-! ## A184531.P6639601668463390025

`A184530(n+1)+Δ[A000566(n)]`
-/

namespace A184531.P6639601668463390025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) + (f1 (n + 1) - f1 n)

end

end A184531.P6639601668463390025

/-! ## A184531.P6761172260147728624

`A184530(n+1)+A008587(n)+1`
-/

namespace A184531.P6761172260147728624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) + (A008587 n + 1)

end

end A184531.P6761172260147728624

/-! ## A184531.P16261508656807530181

`A184530(n+1)+A016885(n)-2`
-/

namespace A184531.P16261508656807530181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) + (A016885 n - 2)

end

end A184531.P16261508656807530181

/-! ## A184531.P15072066910040271544

`A184530(n+1)+A017293(n)/2`
-/

namespace A184531.P15072066910040271544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184530 (n + 1) : ℚ) + (A017293 n : ℚ) / 2

end

end A184531.P15072066910040271544

/-! ## A184531.P2542861278205161903

`A184530(n+1)+A008619(A008592(n))`
-/

namespace A184531.P2542861278205161903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) + A008619 (A008592 n).toNat

end

end A184531.P2542861278205161903

/-! ## A184531.P1873084172821542867

`A184530(n+1)+A001057(A017281(n))`
-/

namespace A184531.P1873084172821542867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) + A001057 (A017281 n).toNat

end

end A184531.P1873084172821542867

/-! ## A184531.P15272458378395215298

`A184530(n+1)+A004526(A017305(n))`
-/

namespace A184531.P15272458378395215298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) + A004526 (A017305 n).toNat

end

end A184531.P15272458378395215298

/-! ## A184531.P16888511543870436026

`A184530(n+1)-A001057(A017293(n))`
-/

namespace A184531.P16888511543870436026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184530 (n + 1) - A001057 (A017293 n).toNat

end

end A184531.P16888511543870436026

/-!
# A184533: a(n) = floor(1/{(2+n^3)^(1/3)}), where {}=fractional part.

The programs for A184533, the canonical program `A184533.P12748492241279110273` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184533 has offset 1).

The definition of A184533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184533.P958850075631065655

`ogf((2+2x+x^2+2x^3-x^4)/(1-2x+2x^3-x^4))`
-/

namespace A184533.P958850075631065655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 1, 2, -1] [1, -2, 0, 2, -1] n

end

end A184533.P958850075631065655

namespace A184533

/-- `ogf((2+2x+x^2+2x^3-x^4)/(1-2x+2x^3-x^4))` -/
def P958850075631065655.Spec : Prop :=
  ∀ n, P958850075631065655.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P8152932452565141119

`floor(1/(((n+1)^3+2)^(1/3)-(n+1)))`
-/

namespace A184533.P8152932452565141119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (((n + 1) ^ 3 + 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ) - (n + 1 : ℝ))⌋

end

end A184533.P8152932452565141119

namespace A184533

/-- `floor(1/(((n+1)^3+2)^(1/3)-(n+1)))` -/
def P8152932452565141119.Spec : Prop :=
  ∀ n, P8152932452565141119.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P12748492241279110273

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=2, a(1)=6, a(2)=13, a(3)=24, a(4)=37`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184533

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P12748492241279110273.Spec : Prop :=
  ∀ n, P12748492241279110273.a n = A184533 (n + 1)

theorem P12748492241279110273.correct : P12748492241279110273.Spec := by
  intro n
  simp only [A184533, Nat.add_sub_cancel]

end A184533

/-! ## A184533.P3203200505759339662

`floor(3/atan(2/(n+1)²))`
-/

namespace A184533.P3203200505759339662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / Real.arctan (2 / ((n + 1) ^ 2 : ℚ) : ℝ)⌋

end

end A184533.P3203200505759339662

namespace A184533

/-- `floor(3/atan(2/(n+1)²))` -/
def P3203200505759339662.Spec : Prop :=
  ∀ n, P3203200505759339662.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P245083850909119453

`floor(3/acot((n+1)²/2))`
-/

namespace A184533.P245083850909119453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (((n + 1) ^ 2 : ℚ) / 2 : ℝ)⌋

end

end A184533.P245083850909119453

namespace A184533

/-- `floor(3/acot((n+1)²/2))` -/
def P245083850909119453.Spec : Prop :=
  ∀ n, P245083850909119453.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P7869224986346410553

`Δ[n^3]-a(n-1)` with `a(0)=2, a(1)=6`
-/

namespace A184533.P7869224986346410553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1)

end

end A184533.P7869224986346410553

namespace A184533

/-- `Δ[n^3]-a(n-1)` -/
def P7869224986346410553.Spec : Prop :=
  ∀ n, P7869224986346410553.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P18399706994054393779

`∑[∑[6-a(n-1)]]` with `a(0)=2, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A184533.P18399706994054393779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 4] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184533.P18399706994054393779

namespace A184533

/-- `∑[∑[6-a(n-1)]]` -/
def P18399706994054393779.Spec : Prop :=
  ∀ n, P18399706994054393779.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P17234021077391806557

`or(1, a(n-1)+2*n+1)+n` with `a(0)=2`
-/

namespace A184533.P17234021077391806557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 1 (a (n - 1) + (2 * n + 1)) + n

end

end A184533.P17234021077391806557

namespace A184533

/-- `or(1, a(n-1)+2*n+1)+n` -/
def P17234021077391806557.Spec : Prop :=
  ∀ n, (P17234021077391806557.a n : ℤ) = A184533 (n + 1)

end A184533

/-! ## A184533.P14890340920891449721

`3*(n+1)+a(n-1)-gcd(2, a(n-1))` with `a(0)=2`
-/

namespace A184533.P14890340920891449721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (3 * (n + 1) : ℤ) + (a (n - 1) - (Int.gcd 2 (a (n - 1)) : ℤ))

end

end A184533.P14890340920891449721

namespace A184533

/-- `3*(n+1)+a(n-1)-gcd(2, a(n-1))` -/
def P14890340920891449721.Spec : Prop :=
  ∀ n, P14890340920891449721.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P15506134895086656559

`n²+A265284(n)+1`
-/

namespace A184533.P15506134895086656559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A265284 n + 1)

end

end A184533.P15506134895086656559

namespace A184533

/-- `n²+A265284(n)+1` -/
def P15506134895086656559.Spec : Prop :=
  ∀ n, P15506134895086656559.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P17994290294968495177

`A227017(n+1)+Δ[n²]`
-/

namespace A184533.P17994290294968495177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227017 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184533.P17994290294968495177

namespace A184533

/-- `A227017(n+1)+Δ[n²]` -/
def P17994290294968495177.Spec : Prop :=
  ∀ n, P17994290294968495177.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P6917163178351477277

`A080476(n+1)+(n+1)²`
-/

namespace A184533.P6917163178351477277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A184533.P6917163178351477277

namespace A184533

/-- `A080476(n+1)+(n+1)²` -/
def P6917163178351477277.Spec : Prop :=
  ∀ n, P6917163178351477277.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P7190060550322156822

`A065033(n)+∑[3*n+1]`
-/

namespace A184533.P7190060550322156822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A184533.P7190060550322156822

namespace A184533

/-- `A065033(n)+∑[3*n+1]` -/
def P7190060550322156822.Spec : Prop :=
  ∀ n, P7190060550322156822.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P3700204483742408280

`A265284(n)+A002522(n)`
-/

namespace A184533.P3700204483742408280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n + A002522 n

end

end A184533.P3700204483742408280

namespace A184533

/-- `A265284(n)+A002522(n)` -/
def P3700204483742408280.Spec : Prop :=
  ∀ n, P3700204483742408280.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P5817579490542564953

`A263511(n)+A027379(n)`
-/

namespace A184533.P5817579490542564953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263511 n + A027379 n

end

end A184533.P5817579490542564953

namespace A184533

/-- `A263511(n)+A027379(n)` -/
def P5817579490542564953.Spec : Prop :=
  ∀ n, P5817579490542564953.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P15837751629232158752

`A319384(n)+A257088(n)`
-/

namespace A184533.P15837751629232158752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319384 n + A257088 n

end

end A184533.P15837751629232158752

namespace A184533

/-- `A319384(n)+A257088(n)` -/
def P15837751629232158752.Spec : Prop :=
  ∀ n, P15837751629232158752.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P7240770190845384952

`A032528(n+1)+A000007(n)`
-/

namespace A184533.P7240770190845384952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (n + 1) + A000007 n

end

end A184533.P7240770190845384952

namespace A184533

/-- `A032528(n+1)+A000007(n)` -/
def P7240770190845384952.Spec : Prop :=
  ∀ n, P7240770190845384952.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P12450114463826904003

`A307028(n+1)+A002061(n)`
-/

namespace A184533.P12450114463826904003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307028 (n + 1) + A002061 n

end

end A184533.P12450114463826904003

namespace A184533

/-- `A307028(n+1)+A002061(n)` -/
def P12450114463826904003.Spec : Prop :=
  ∀ n, P12450114463826904003.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P15270613680728539425

`A212959(n)+A131055(n+1)`
-/

namespace A184533.P15270613680728539425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n + A131055 (n + 1)

end

end A184533.P15270613680728539425

namespace A184533

/-- `A212959(n)+A131055(n+1)` -/
def P15270613680728539425.Spec : Prop :=
  ∀ n, P15270613680728539425.a n = A184533 (n + 1)

end A184533

/-! ## A184533.P8375587800691171

`A266221(n)+A245524(n+1)`
-/

namespace A184533.P8375587800691171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266221 n + A245524 (n + 1)

end

end A184533.P8375587800691171

namespace A184533

/-- `A266221(n)+A245524(n+1)` -/
def P8375587800691171.Spec : Prop :=
  ∀ n, P8375587800691171.a n = A184533 (n + 1)

end A184533

/-!
# A184534: a(n) = floor(1/{(4+n^3)^(1/3)}), where {}=fractional part.

The programs for A184534, the canonical program `A184534.P13359602567010671397` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184534 has offset 1).

The definition of A184534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184534.P13359602567010671397

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=12, a(4)=18, a(5)=27, a(6)=36`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184534

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P13359602567010671397.Spec : Prop :=
  ∀ n, P13359602567010671397.a n = A184534 (n + 1)

theorem P13359602567010671397.correct : P13359602567010671397.Spec := by
  intro n
  simp only [A184534, Nat.add_sub_cancel]

end A184534

/-! ## A184534.P1583757969426060629

`char[2]+A035106(n+1)+∑[n]`
-/

namespace A184534.P1583757969426060629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A035106 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A184534.P1583757969426060629

namespace A184534

/-- `char[2]+A035106(n+1)+∑[n]` -/
def P1583757969426060629.Spec : Prop :=
  ∀ n, P1583757969426060629.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P9612411962717226256

`A182531(n+1)+A080476(n+1)`
-/

namespace A184534.P9612411962717226256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (n + 1) + A080476 (n + 1)

end

end A184534.P9612411962717226256

namespace A184534

/-- `A182531(n+1)+A080476(n+1)` -/
def P9612411962717226256.Spec : Prop :=
  ∀ n, P9612411962717226256.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P6971756355941593088

`A242477(n+1)+char[n*char[2]]`
-/

namespace A184534.P6971756355941593088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184534.P6971756355941593088

namespace A184534

/-- `A242477(n+1)+char[n*char[2]]` -/
def P6971756355941593088.Spec : Prop :=
  ∀ n, P6971756355941593088.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P4681545267084425021

`char[2]+A242477(n+1)+A000007(n)`
-/

namespace A184534.P4681545267084425021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A242477 (n + 1) + A000007 n)

end

end A184534.P4681545267084425021

namespace A184534

/-- `char[2]+A242477(n+1)+A000007(n)` -/
def P4681545267084425021.Spec : Prop :=
  ∀ n, P4681545267084425021.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P6741765181576262244

`floor(A000292(3*n+1)/A004277(3*n))`
-/

namespace A184534.P6741765181576262244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000292 (3 * n + 1) : ℚ) / (A004277 (3 * n) : ℚ)⌋

end

end A184534.P6741765181576262244

namespace A184534

/-- `floor(A000292(3*n+1)/A004277(3*n))` -/
def P6741765181576262244.Spec : Prop :=
  ∀ n, P6741765181576262244.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P2760047242874382337

`record[A229593(n+3)%A001399(n)]+n+1`
-/

namespace A184534.P2760047242874382337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229593 (n + 3)) (A001399 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℤ)

end

end A184534.P2760047242874382337

namespace A184534

/-- `record[A229593(n+3)%A001399(n)]+n+1` -/
def P2760047242874382337.Spec : Prop :=
  ∀ n, P2760047242874382337.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P7692443174359349802

`or(2-A043529(A242477(n)), A242477(n+1))`
-/

namespace A184534.P7692443174359349802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - A043529 (A242477 n).toNat) (A242477 (n + 1))

end

end A184534.P7692443174359349802

namespace A184534

/-- `or(2-A043529(A242477(n)), A242477(n+1))` -/
def P7692443174359349802.Spec : Prop :=
  ∀ n, P7692443174359349802.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P7677926915619933640

`A057353((n+1)²)+char[A105023(n²)]`
-/

namespace A184534.P7677926915619933640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105023 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 ((n + 1) ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A184534.P7677926915619933640

namespace A184534

/-- `A057353((n+1)²)+char[A105023(n²)]` -/
def P7677926915619933640.Spec : Prop :=
  ∀ n, P7677926915619933640.a n = A184534 (n + 1)

end A184534

/-! ## A184534.P14989012960289977529

`A057353(A010554(n+1)%2+(n+1)²)`
-/

namespace A184534.P14989012960289977529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (Int.tmod (A010554 (n + 1)) 2 + ((n + 1) ^ 2 : ℤ)).toNat

end

end A184534.P14989012960289977529

namespace A184534

/-- `A057353(A010554(n+1)%2+(n+1)²)` -/
def P14989012960289977529.Spec : Prop :=
  ∀ n, P14989012960289977529.a n = A184534 (n + 1)

end A184534

/-!
# A184535: a(n) = floor(3/5 * n^2), with a(1)=1.

The programs for A184535, the canonical program `A184535.P11633041806870467511` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184535 has offset 1).

The definition of A184535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184535.P11633041806870467511

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=9, a(4)=15, a(5)=21, a(6)=29, a(7)=38`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184535

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P11633041806870467511.Spec : Prop :=
  ∀ n, P11633041806870467511.a n = A184535 (n + 1)

theorem P11633041806870467511.correct : P11633041806870467511.Spec := by
  intro n
  simp only [A184535, Nat.add_sub_cancel]

end A184535

/-! ## A184535.P8669445091062056679

`floor(abs(3*A005563(n)-1)/5)+1`
-/

namespace A184535.P8669445091062056679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|3 * A005563 n - 1| : ℚ) / 5⌋ + 1

end

end A184535.P8669445091062056679

namespace A184535

/-- `floor(abs(3*A005563(n)-1)/5)+1` -/
def P8669445091062056679.Spec : Prop :=
  ∀ n, P8669445091062056679.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P17314573162492713049

`floor((n+1)*A003215(n)/A008706(n))`
-/

namespace A184535.P17314573162492713049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((A003215 n : ℚ) / (A008706 n : ℚ))⌋

end

end A184535.P17314573162492713049

namespace A184535

/-- `floor((n+1)*A003215(n)/A008706(n))` -/
def P17314573162492713049.Spec : Prop :=
  ∀ n, P17314573162492713049.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P15404901305072344546

`floor(A289443(n+1)/5)`
-/

namespace A184535.P15404901305072344546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A289443 (n + 1) : ℚ) / 5⌋

end

end A184535.P15404901305072344546

namespace A184535

/-- `floor(A289443(n+1)/5)` -/
def P15404901305072344546.Spec : Prop :=
  ∀ n, P15404901305072344546.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P12395723017130285769

`A239492(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A184535.P12395723017130285769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A239492 (n + 1) + a (n - 1)

end

end A184535.P12395723017130285769

namespace A184535

/-- `A239492(n+1)+a(n-1)` -/
def P12395723017130285769.Spec : Prop :=
  ∀ n, P12395723017130285769.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P2862807958564818586

`∑[A239492(n+1)]+C(2, A046092(n))`
-/

namespace A184535.P2862807958564818586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 2 (A046092 n).toNat : ℤ)

end

end A184535.P2862807958564818586

namespace A184535

/-- `∑[A239492(n+1)]+C(2, A046092(n))` -/
def P2862807958564818586.Spec : Prop :=
  ∀ n, P2862807958564818586.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P14834840785145789325

`A021921(C(2, n+1))+∑[A239492(n+1)]`
-/

namespace A184535.P14834840785145789325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021921 (Nat.choose 2 (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184535.P14834840785145789325

namespace A184535

/-- `A021921(C(2, n+1))+∑[A239492(n+1)]` -/
def P14834840785145789325.Spec : Prop :=
  ∀ n, P14834840785145789325.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P7475359544523039951

`∑[A239492(n+1)]+C(4, A134869(n+2))`
-/

namespace A184535.P7475359544523039951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose 4 (A134869 (n + 2)).toNat : ℤ)

end

end A184535.P7475359544523039951

namespace A184535

/-- `∑[A239492(n+1)]+C(4, A134869(n+2))` -/
def P7475359544523039951.Spec : Prop :=
  ∀ n, P7475359544523039951.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P14225695571725926995

`∑[A239492(n+1)]+C(A166586(n+1), n)`
-/

namespace A184535.P14225695571725926995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose (A166586 (n + 1)).toNat n : ℤ)

end

end A184535.P14225695571725926995

namespace A184535

/-- `∑[A239492(n+1)]+C(A166586(n+1), n)` -/
def P14225695571725926995.Spec : Prop :=
  ∀ n, P14225695571725926995.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P368545893164412665

`A249020(A004273(2*n))-n²`
-/

namespace A184535.P368545893164412665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249020 (A004273 (2 * n)).toNat - (n ^ 2 : ℤ)

end

end A184535.P368545893164412665

namespace A184535

/-- `A249020(A004273(2*n))-n²` -/
def P368545893164412665.Spec : Prop :=
  ∀ n, P368545893164412665.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P725861578708076473

`A025795(A271114(n))`
-/

namespace A184535.P725861578708076473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 (A271114 n).toNat

end

end A184535.P725861578708076473

namespace A184535

/-- `A025795(A271114(n))` -/
def P725861578708076473.Spec : Prop :=
  ∀ n, P725861578708076473.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P10863934508123300295

`A025770(A101328(n+2))`
-/

namespace A184535.P10863934508123300295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025770 (A101328 (n + 2)).toNat

end

end A184535.P10863934508123300295

namespace A184535

/-- `A025770(A101328(n+2))` -/
def P10863934508123300295.Spec : Prop :=
  ∀ n, P10863934508123300295.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P13310247316138419073

`A025832(A063098(n+1))`
-/

namespace A184535.P13310247316138419073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025832 (A063098 (n + 1)).toNat

end

end A184535.P13310247316138419073

namespace A184535

/-- `A025832(A063098(n+1))` -/
def P13310247316138419073.Spec : Prop :=
  ∀ n, P13310247316138419073.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P8706485755042282436

`A008682(2*(A008458(n)+1))`
-/

namespace A184535.P8706485755042282436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (2 * (A008458 n + 1)).toNat

end

end A184535.P8706485755042282436

namespace A184535

/-- `A008682(2*(A008458(n)+1))` -/
def P8706485755042282436.Spec : Prop :=
  ∀ n, P8706485755042282436.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P14522003083175530735

`A008682(A008458(n)+A008458(n)+2)`
-/

namespace A184535.P14522003083175530735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008682 (A008458 n + (A008458 n + 2)).toNat

end

end A184535.P14522003083175530735

namespace A184535

/-- `A008682(A008458(n)+A008458(n)+2)` -/
def P14522003083175530735.Spec : Prop :=
  ∀ n, P14522003083175530735.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P16683131551424418047

`A025890(A063140(n+1))`
-/

namespace A184535.P16683131551424418047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (A063140 (n + 1)).toNat

end

end A184535.P16683131551424418047

namespace A184535

/-- `A025890(A063140(n+1))` -/
def P16683131551424418047.Spec : Prop :=
  ∀ n, P16683131551424418047.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P10341800284961694398

`A025890(A063160(n+1))`
-/

namespace A184535.P10341800284961694398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 (A063160 (n + 1)).toNat

end

end A184535.P10341800284961694398

namespace A184535

/-- `A025890(A063160(n+1))` -/
def P10341800284961694398.Spec : Prop :=
  ∀ n, P10341800284961694398.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P7858749529527807892

`A025924(A270700(n))`
-/

namespace A184535.P7858749529527807892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 (A270700 n).toNat

end

end A184535.P7858749529527807892

namespace A184535

/-- `A025924(A270700(n))` -/
def P7858749529527807892.Spec : Prop :=
  ∀ n, P7858749529527807892.a n = A184535 (n + 1)

end A184535

/-! ## A184535.P7200573577497359673

`A047486((n+1)²)%(n+1)²+1`
-/

namespace A184535.P7200573577497359673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047486 ((n + 1) ^ 2)) ((n + 1) ^ 2 : ℤ) + 1

end

end A184535.P7200573577497359673

namespace A184535

/-- `A047486((n+1)²)%(n+1)²+1` -/
def P7200573577497359673.Spec : Prop :=
  ∀ n, P7200573577497359673.a n = A184535 (n + 1)

end A184535

/-!
# A184536: a(n) = floor(1/{(1+n^4)^(1/4)}), where {} = fractional part.

The programs for A184536, the canonical program `A184536.P6519553916976574421` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184536 has offset 1).

The definition of A184536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184536.P6519553916976574421

`ogf((5+12x+10x^2-4x^3+x^4)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184536

/-- `ogf((5+12x+10x^2-4x^3+x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P6519553916976574421.Spec : Prop :=
  ∀ n, P6519553916976574421.a n = A184536 (n + 1)

theorem P6519553916976574421.correct : P6519553916976574421.Spec := by
  intro n
  simp only [A184536, Nat.add_sub_cancel]

end A184536

/-! ## A184536.P8997492473029682527

`floor(4/acot((n+1)^3))`
-/

namespace A184536.P8997492473029682527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ)⌋

end

end A184536.P8997492473029682527

namespace A184536

/-- `floor(4/acot((n+1)^3))` -/
def P8997492473029682527.Spec : Prop :=
  ∀ n, P8997492473029682527.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P16896835888914448978

`round(4/acot((n+1)^3))`
-/

namespace A184536.P16896835888914448978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / SequenceMachineLib.acot ((n + 1) ^ 3 : ℝ))

end

end A184536.P16896835888914448978

namespace A184536

/-- `round(4/acot((n+1)^3))` -/
def P16896835888914448978.Spec : Prop :=
  ∀ n, P16896835888914448978.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P6664075085318016346

`floor(4/tanh((n+1)^-3))`
-/

namespace A184536.P6664075085318016346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / Real.tanh ((n + 1 : ℚ) ^ (-3 : ℤ) : ℝ)⌋

end

end A184536.P6664075085318016346

namespace A184536

/-- `floor(4/tanh((n+1)^-3))` -/
def P6664075085318016346.Spec : Prop :=
  ∀ n, P6664075085318016346.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P7441235657998007085

`round(4/tanh((n+1)^-3))`
-/

namespace A184536.P7441235657998007085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 / Real.tanh ((n + 1 : ℚ) ^ (-3 : ℤ) : ℝ))

end

end A184536.P7441235657998007085

namespace A184536

/-- `round(4/tanh((n+1)^-3))` -/
def P7441235657998007085.Spec : Prop :=
  ∀ n, P7441235657998007085.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P15903114740574625134

`ceil(Δ[(n+1)²/acot(n²)])`
-/

namespace A184536.P15903114740574625134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A184536.P15903114740574625134

namespace A184536

/-- `ceil(Δ[(n+1)²/acot(n²)])` -/
def P15903114740574625134.Spec : Prop :=
  ∀ n, P15903114740574625134.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P14636854607224814291

`(n+1)*floor(4/acot((n+1)²))`
-/

namespace A184536.P14636854607224814291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊4 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ)⌋

end

end A184536.P14636854607224814291

namespace A184536

/-- `(n+1)*floor(4/acot((n+1)²))` -/
def P14636854607224814291.Spec : Prop :=
  ∀ n, P14636854607224814291.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P17562083529270409330

`Δ[(n²+n)²]+C(2, n+2)`
-/

namespace A184536.P17562083529270409330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose 2 (n + 2) : ℤ)

end

end A184536.P17562083529270409330

namespace A184536

/-- `Δ[(n²+n)²]+C(2, n+2)` -/
def P17562083529270409330.Spec : Prop :=
  ∀ n, P17562083529270409330.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P3646875628124398273

`C(2, n+2)+4*(n+1)^3`
-/

namespace A184536.P3646875628124398273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2) + 4 * (n + 1) ^ 3

end

end A184536.P3646875628124398273

namespace A184536

/-- `C(2, n+2)+4*(n+1)^3` -/
def P3646875628124398273.Spec : Prop :=
  ∀ n, (P3646875628124398273.a n : ℤ) = A184536 (n + 1)

end A184536

/-! ## A184536.P10627188924453943938

`4*(n+1)^(3%a(n-1))` with `a(0)=5`
-/

namespace A184536.P10627188924453943938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  4 * (n + 1) ^ (3 % a (n - 1))

end

end A184536.P10627188924453943938

namespace A184536

/-- `4*(n+1)^(3%a(n-1))` -/
def P10627188924453943938.Spec : Prop :=
  ∀ n, (P10627188924453943938.a n : ℤ) = A184536 (n + 1)

end A184536

/-! ## A184536.P2876149170428670383

`(n+1)*∑[a(n-1)+8]` with `a(0)=5, a(1)=11, a(2)=20`
-/

namespace A184536.P2876149170428670383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 20] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184536.P2876149170428670383

namespace A184536

/-- `(n+1)*∑[a(n-1)+8]` -/
def P2876149170428670383.Spec : Prop :=
  ∀ n, (P2876149170428670383.a n : ℤ) = A184536 (n + 1)

end A184536

/-! ## A184536.P9670042190124777651

`floor(1/(n+1)+4*(n+1)^3)`
-/

namespace A184536.P9670042190124777651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ) + (4 * (n + 1) ^ 3 : ℚ)⌋

end

end A184536.P9670042190124777651

namespace A184536

/-- `floor(1/(n+1)+4*(n+1)^3)` -/
def P9670042190124777651.Spec : Prop :=
  ∀ n, P9670042190124777651.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P11638809305722905784

`(n+1)*A184635(n+1)`
-/

namespace A184536.P11638809305722905784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A184635 (n + 1)

end

end A184536.P11638809305722905784

namespace A184536

/-- `(n+1)*A184635(n+1)` -/
def P11638809305722905784.Spec : Prop :=
  ∀ n, P11638809305722905784.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P18106518556602740608

`A000007(n)+Δ[(n²+n)²]`
-/

namespace A184536.P18106518556602740608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184536.P18106518556602740608

namespace A184536

/-- `A000007(n)+Δ[(n²+n)²]` -/
def P18106518556602740608.Spec : Prop :=
  ∀ n, P18106518556602740608.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P2161686367330521554

`(A004277(n)+4+n+n)*(n+1)²`
-/

namespace A184536.P2161686367330521554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n + 4 + (n : ℤ) + (n : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A184536.P2161686367330521554

namespace A184536

/-- `(A004277(n)+4+n+n)*(n+1)²` -/
def P2161686367330521554.Spec : Prop :=
  ∀ n, P2161686367330521554.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P1279588603582858183

`(4*(n+1)-A157532(n+1)+3)*(n+1)²`
-/

namespace A184536.P1279588603582858183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (n + 1) : ℤ) - A157532 (n + 1) + 3) * ((n + 1) ^ 2 : ℤ)

end

end A184536.P1279588603582858183

namespace A184536

/-- `(4*(n+1)-A157532(n+1)+3)*(n+1)²` -/
def P1279588603582858183.Spec : Prop :=
  ∀ n, P1279588603582858183.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P8680562219912770225

`Δ[∑[2*n]²-C(2*n, (2*n)²)]`
-/

namespace A184536.P8680562219912770225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (2 * n) ((2 * n) ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184536.P8680562219912770225

namespace A184536

/-- `Δ[∑[2*n]²-C(2*n, (2*n)²)]` -/
def P8680562219912770225.Spec : Prop :=
  ∀ n, P8680562219912770225.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P6547327903173225457

`A033430(n+1)+A000007(n)`
-/

namespace A184536.P6547327903173225457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 (n + 1) + A000007 n

end

end A184536.P6547327903173225457

namespace A184536

/-- `A033430(n+1)+A000007(n)` -/
def P6547327903173225457.Spec : Prop :=
  ∀ n, P6547327903173225457.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P6471310872803000110

`A184537(n+1)+A033431(n+1)`
-/

namespace A184536.P6471310872803000110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184537 (n + 1) + A033431 (n + 1)

end

end A184536.P6471310872803000110

namespace A184536

/-- `A184537(n+1)+A033431(n+1)` -/
def P6471310872803000110.Spec : Prop :=
  ∀ n, P6471310872803000110.a n = A184536 (n + 1)

end A184536

/-! ## A184536.P6652973299490480986

`A033430(n+1)+1-A057427(n)`
-/

namespace A184536.P6652973299490480986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033430 (n + 1) + (1 - A057427 n)

end

end A184536.P6652973299490480986

namespace A184536

/-- `A033430(n+1)+1-A057427(n)` -/
def P6652973299490480986.Spec : Prop :=
  ∀ n, P6652973299490480986.a n = A184536 (n + 1)

end A184536

/-!
# A184537: a(n) = floor(1/{(2+n^4)^(1/4)}), where {} = fractional part.

The programs for A184537, the canonical program `A184537.P377332926672420666` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184537 has offset 0).

The definition of A184537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184537.P377332926672420666

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=5, a(1)=3, a(2)=16, a(3)=54, a(4)=128, a(5)=250`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184537

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P377332926672420666.Spec : Prop :=
  ∀ n, P377332926672420666.a n = A184537 n

theorem P377332926672420666.correct : P377332926672420666.Spec := by
  intro n
  simp only [A184537]

end A184537

/-! ## A184537.P11114626349287989739

`n^3*2%a(n-1)` with `a(0)=5, a(1)=3`
-/

namespace A184537.P11114626349287989739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n a =>
  n ^ 3 * (2 % a (n - 1))

end

end A184537.P11114626349287989739

namespace A184537

/-- `n^3*2%a(n-1)` -/
def P11114626349287989739.Spec : Prop :=
  ∀ n, (P11114626349287989739.a n : ℤ) = A184537 n

end A184537

/-! ## A184537.P290531875524367983

`2*n^a((n+1)%n)` with `a(0)=5, a(1)=3`
-/

namespace A184537.P290531875524367983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n a =>
  2 * n ^ a ((n + 1) % n)

end

end A184537.P290531875524367983

namespace A184537

/-- `2*n^a((n+1)%n)` -/
def P290531875524367983.Spec : Prop :=
  ∀ n, (P290531875524367983.a n : ℤ) = A184537 n

end A184537

/-! ## A184537.P3767888323977793369

`2*n^a(gcd(n, n+1))` with `a(0)=5, a(1)=3`
-/

namespace A184537.P3767888323977793369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n a =>
  2 * n ^ a (Nat.gcd n (n + 1))

end

end A184537.P3767888323977793369

namespace A184537

/-- `2*n^a(gcd(n, n+1))` -/
def P3767888323977793369.Spec : Prop :=
  ∀ n, (P3767888323977793369.a n : ℤ) = A184537 n

end A184537

/-! ## A184537.P10401163776419816693

`2*n*(n%a(n-1))²` with `a(0)=5, a(1)=3`
-/

namespace A184537.P10401163776419816693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 3] fun n a =>
  2 * (n * (n % a (n - 1)) ^ 2)

end

end A184537.P10401163776419816693

namespace A184537

/-- `2*n*(n%a(n-1))²` -/
def P10401163776419816693.Spec : Prop :=
  ∀ n, (P10401163776419816693.a n : ℤ) = A184537 n

end A184537

/-! ## A184537.P16157350770510120169

`A033431(n)+and(a(n-1), char[1])` with `a(0)=5`
-/

namespace A184537.P16157350770510120169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A033431 n + Int.land (a (n - 1)) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184537.P16157350770510120169

namespace A184537

/-- `A033431(n)+and(a(n-1), char[1])` -/
def P16157350770510120169.Spec : Prop :=
  ∀ n, P16157350770510120169.a n = A184537 n

end A184537

/-! ## A184537.P6982609667247276141

`A033431(n)+A007814(and(n, a(n-1))+1)` with `a(0)=5`
-/

namespace A184537.P6982609667247276141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A033431 n + A007814 (Int.land (n : ℤ) (a (n - 1)) + 1).toNat

end

end A184537.P6982609667247276141

namespace A184537

/-- `A033431(n)+A007814(and(n, a(n-1))+1)` -/
def P6982609667247276141.Spec : Prop :=
  ∀ n, P6982609667247276141.a n = A184537 n

end A184537

/-!
# A184538: Floor[1/{(3+n^4)^(1/4)}], where {}=fractional part.

The programs for A184538, the canonical program `A184538.P14291936130855731406` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184538 has offset 1).

The definition of A184538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184538.P14291936130855731406

`floor(ceil((2*(n+1)²)²/3)/(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184538

/-- `floor(ceil((2*(n+1)²)²/3)/(n+1))` -/
def P14291936130855731406.Spec : Prop :=
  ∀ n, P14291936130855731406.a n = A184538 (n + 1)

theorem P14291936130855731406.correct : P14291936130855731406.Spec := by
  intro n
  simp only [A184538, Nat.add_sub_cancel]

end A184538

/-! ## A184538.P6414011701383905418

`ogf((2+5x+9x^2+6x^3+3x^4-2x^6+x^7)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`
-/

namespace A184538.P6414011701383905418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 9, 6, 3, 0, -2, 1] [1, -3, 3, -2, 3, -3, 1] n

end

end A184538.P6414011701383905418

namespace A184538

/-- `ogf((2+5x+9x^2+6x^3+3x^4-2x^6+x^7)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P6414011701383905418.Spec : Prop :=
  ∀ n, P6414011701383905418.a n = A184538 (n + 1)

end A184538

/-! ## A184538.P5254852114821497555

`A065033(A004523(n))+∑[A016754(n)]`
-/

namespace A184538.P5254852114821497555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004523 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184538.P5254852114821497555

namespace A184538

/-- `A065033(A004523(n))+∑[A016754(n)]` -/
def P5254852114821497555.Spec : Prop :=
  ∀ n, P5254852114821497555.a n = A184538 (n + 1)

end A184538

/-! ## A184538.P11573947198677404943

`A008620(abs(2-n))+A000447(n+1)`
-/

namespace A184538.P11573947198677404943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 |2 - (n : ℤ)|.toNat + A000447 (n + 1)

end

end A184538.P11573947198677404943

namespace A184538

/-- `A008620(abs(2-n))+A000447(n+1)` -/
def P11573947198677404943.Spec : Prop :=
  ∀ n, P11573947198677404943.a n = A184538 (n + 1)

end A184538

/-! ## A184538.P1931840956269541069

`A065033(A004523(n))+A000447(n+1)`
-/

namespace A184538.P1931840956269541069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004523 n).toNat + A000447 (n + 1)

end

end A184538.P1931840956269541069

namespace A184538

/-- `A065033(A004523(n))+A000447(n+1)` -/
def P1931840956269541069.Spec : Prop :=
  ∀ n, P1931840956269541069.a n = A184538 (n + 1)

end A184538

/-! ## A184538.P14553247984440364578

`A065033(A004523(n))+A000292(2*n+1)`
-/

namespace A184538.P14553247984440364578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004523 n).toNat + A000292 (2 * n + 1)

end

end A184538.P14553247984440364578

namespace A184538

/-- `A065033(A004523(n))+A000292(2*n+1)` -/
def P14553247984440364578.Spec : Prop :=
  ∀ n, P14553247984440364578.a n = A184538 (n + 1)

end A184538

/-! ## A184538.P4973358012350337711

`A065033(A002264(2*n))+A000292(2*n+1)`
-/

namespace A184538.P4973358012350337711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A002264 (2 * n)).toNat + A000292 (2 * n + 1)

end

end A184538.P4973358012350337711

namespace A184538

/-- `A065033(A002264(2*n))+A000292(2*n+1)` -/
def P4973358012350337711.Spec : Prop :=
  ∀ n, P4973358012350337711.a n = A184538 (n + 1)

end A184538

/-! ## A184538.P2766514272160251227

`∑[A107751(n)+A004275(A001844(n))]`
-/

namespace A184538.P2766514272160251227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107751 n + A004275 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184538.P2766514272160251227

namespace A184538

/-- `∑[A107751(n)+A004275(A001844(n))]` -/
def P2766514272160251227.Spec : Prop :=
  ∀ n, P2766514272160251227.a n = A184538 (n + 1)

end A184538

/-!
# A184539: Number of (n+2)X(n+2) binary arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184539, there is no canonical definition to state claims against.
-/

/-! ## A184539.P17523815301492238347

`A184548(∑[4*n]+1)`
-/

namespace A184539.P17523815301492238347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184539.P17523815301492238347

/-! ## A184539.P18287104875762634619

`or(1, A184548(A001844(n)))`
-/

namespace A184539.P18287104875762634619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184548 (A001844 n).toNat)

end

end A184539.P18287104875762634619

/-! ## A184539.P6343987662072714106

`record[A003982(n)*A184548(n+1)]`
-/

namespace A184539.P6343987662072714106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184548 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184539.P6343987662072714106

/-! ## A184539.P13534510732169088413

`record[A184548(n+1)/A027420(n)]`
-/

namespace A184539.P13534510732169088413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184548 (n + 1) : ℚ) / (A027420 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184539.P13534510732169088413

/-! ## A184539.P239328940443427645

`record[gcd(A003987(n), A184548(n+1))]`
-/

namespace A184539.P239328940443427645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A184548 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184539.P239328940443427645

/-! ## A184539.P9005402691754095125

`lcm(A106400(n), A184548(A001844(n)))`
-/

namespace A184539.P9005402691754095125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A184548 (A001844 n).toNat)

end

end A184539.P9005402691754095125

/-! ## A184539.P6184506309790891070

`A184548(A001844(n))%A184556(n+1)`
-/

namespace A184539.P6184506309790891070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184548 (A001844 n).toNat) (A184556 (n + 1))

end

end A184539.P6184506309790891070

/-!
# A184540: Number of (n+2) X 3 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184540, the canonical program `A184540.P13991020522684179685` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184540 has offset 1).

The definition of A184540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184540.P17130115957643452097

`ogf((45-91x+61x^2-14x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A184540.P17130115957643452097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [45, -91, 61, -14] [1, -4, 6, -4, 1] n

end

end A184540.P17130115957643452097

namespace A184540

/-- `ogf((45-91x+61x^2-14x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P17130115957643452097.Spec : Prop :=
  ∀ n, P17130115957643452097.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P5493877363627898708

`(84+(n+1)*149+36*(n+1)²+(n+1)^3)/6`
-/

namespace A184540.P5493877363627898708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (84 + (n + 1) * 149 + 36 * (n + 1) ^ 2 + (n + 1) ^ 3 : ℚ) / 6

end

end A184540.P5493877363627898708

namespace A184540

/-- `(84+(n+1)*149+36*(n+1)²+(n+1)^3)/6` -/
def P5493877363627898708.Spec : Prop :=
  ∀ n, P5493877363627898708.a n = (A184540 (n + 1) : ℚ)

theorem P5493877363627898708.correct : P5493877363627898708.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A184540, Nat.add_sub_cancel, A184540.P5493877363627898708.a, A184540.P13991020522684179685.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A184540, Nat.add_sub_cancel, A184540.P5493877363627898708.a, A184540.P13991020522684179685.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A184540

/-! ## A184540.P13991020522684179685

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=45, a(1)=89, a(2)=147, a(3)=220`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184540

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13991020522684179685.Spec : Prop :=
  ∀ n, P13991020522684179685.a n = A184540 (n + 1)

theorem P13991020522684179685.correct : P13991020522684179685.Spec := by
  intro n
  simp only [A184540, Nat.add_sub_cancel]

end A184540

/-! ## A184540.P2604860533035056036

`A140673(n)+A026060(n+5)`
-/

namespace A184540.P2604860533035056036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + A026060 (n + 5)

end

end A184540.P2604860533035056036

namespace A184540

/-- `A140673(n)+A026060(n+5)` -/
def P2604860533035056036.Spec : Prop :=
  ∀ n, P2604860533035056036.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P15913032190053529425

`A026060(n+5)+3*A055998(n)`
-/

namespace A184540.P15913032190053529425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026060 (n + 5) + 3 * A055998 n

end

end A184540.P15913032190053529425

namespace A184540

/-- `A026060(n+5)+3*A055998(n)` -/
def P15913032190053529425.Spec : Prop :=
  ∀ n, P15913032190053529425.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P67594726933023439

`A005337(n+9)+n*(n+7)+5`
-/

namespace A184540.P67594726933023439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005337 (n + 9) + (n * (n + 7) + 5 : ℤ)

end

end A184540.P67594726933023439

namespace A184540

/-- `A005337(n+9)+n*(n+7)+5` -/
def P67594726933023439.Spec : Prop :=
  ∀ n, P67594726933023439.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P6913819107397795276

`A101860(n+2)-A000217(n+5)`
-/

namespace A184540.P6913819107397795276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 2) - A000217 (n + 5)

end

end A184540.P6913819107397795276

namespace A184540

/-- `A101860(n+2)-A000217(n+5)` -/
def P6913819107397795276.Spec : Prop :=
  ∀ n, P6913819107397795276.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P12964889406362653498

`A064226(n+2)+∑[A167499(n+2)]`
-/

namespace A184540.P12964889406362653498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064226 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184540.P12964889406362653498

namespace A184540

/-- `A064226(n+2)+∑[A167499(n+2)]` -/
def P12964889406362653498.Spec : Prop :=
  ∀ n, P12964889406362653498.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P1764355041764915337

`A051943(n+12)-Δ[(n+9)²]`
-/

namespace A184540.P1764355041764915337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 9) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051943 (n + 12) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A184540.P1764355041764915337

namespace A184540

/-- `A051943(n+12)-Δ[(n+9)²]` -/
def P1764355041764915337.Spec : Prop :=
  ∀ n, P1764355041764915337.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P16291909627351843877

`A049451(n+3)+∑[A055999(n+3)]`
-/

namespace A184540.P16291909627351843877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184540.P16291909627351843877

namespace A184540

/-- `A049451(n+3)+∑[A055999(n+3)]` -/
def P16291909627351843877.Spec : Prop :=
  ∀ n, P16291909627351843877.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P6491689133357768757

`A026060(n+5)+A026060(n+5)-A008778(n+4)`
-/

namespace A184540.P6491689133357768757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026060 (n + 5) + (A026060 (n + 5) - A008778 (n + 4))

end

end A184540.P6491689133357768757

namespace A184540

/-- `A026060(n+5)+A026060(n+5)-A008778(n+4)` -/
def P6491689133357768757.Spec : Prop :=
  ∀ n, P6491689133357768757.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P1322198474542391266

`A060626(n+2)+∑[A000124(n+4)]`
-/

namespace A184540.P1322198474542391266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060626 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184540.P1322198474542391266

namespace A184540

/-- `A060626(n+2)+∑[A000124(n+4)]` -/
def P1322198474542391266.Spec : Prop :=
  ∀ n, P1322198474542391266.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P1409763254931800507

`A101860(n+2)-A179865(n+6)`
-/

namespace A184540.P1409763254931800507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101860 (n + 2) - A179865 (n + 6)

end

end A184540.P1409763254931800507

namespace A184540

/-- `A101860(n+2)-A179865(n+6)` -/
def P1409763254931800507.Spec : Prop :=
  ∀ n, P1409763254931800507.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P16161211112741182655

`A004006(n+5)+∑[A017113(n+2)]`
-/

namespace A184540.P16161211112741182655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184540.P16161211112741182655

namespace A184540

/-- `A004006(n+5)+∑[A017113(n+2)]` -/
def P16161211112741182655.Spec : Prop :=
  ∀ n, P16161211112741182655.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P9035996949196639918

`A004006(n+5)+A005843(n+1)*A005843(n+5)`
-/

namespace A184540.P9035996949196639918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (n + 5) + A005843 (n + 1) * A005843 (n + 5)

end

end A184540.P9035996949196639918

namespace A184540

/-- `A004006(n+5)+A005843(n+1)*A005843(n+5)` -/
def P9035996949196639918.Spec : Prop :=
  ∀ n, P9035996949196639918.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P8659768253154580949

`∑[A167499(n+7)]-A147973(n+1)`
-/

namespace A184540.P8659768253154580949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147973 (n + 1)

end

end A184540.P8659768253154580949

namespace A184540

/-- `∑[A167499(n+7)]-A147973(n+1)` -/
def P8659768253154580949.Spec : Prop :=
  ∀ n, P8659768253154580949.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P7489548063743037925

`A155212(2*n)+A103145(n+2)`
-/

namespace A184540.P7489548063743037925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 (2 * n) + A103145 (n + 2)

end

end A184540.P7489548063743037925

namespace A184540

/-- `A155212(2*n)+A103145(n+2)` -/
def P7489548063743037925.Spec : Prop :=
  ∀ n, P7489548063743037925.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P14666587370550173442

`A111396(n)+A028347(Δ[A028560(n)])`
-/

namespace A184540.P14666587370550173442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n + A028347 (f1 (n + 1) - f1 n).toNat

end

end A184540.P14666587370550173442

namespace A184540

/-- `A111396(n)+A028347(Δ[A028560(n)])` -/
def P14666587370550173442.Spec : Prop :=
  ∀ n, P14666587370550173442.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P16321833429525180736

`A184548(∑[n]+1)`
-/

namespace A184540.P16321833429525180736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184540.P16321833429525180736

namespace A184540

/-- `A184548(∑[n]+1)` -/
def P16321833429525180736.Spec : Prop :=
  ∀ n, P16321833429525180736.a n = A184540 (n + 1)

end A184540

/-! ## A184540.P6567320286823276736

`record[A184548(n+1)/A007318(n)]`
-/

namespace A184540.P6567320286823276736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184548 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184540.P6567320286823276736

namespace A184540

/-- `record[A184548(n+1)/A007318(n)]` -/
def P6567320286823276736.Spec : Prop :=
  ∀ n, P6567320286823276736.a n = (A184540 (n + 1) : ℚ)

end A184540

/-!
# A184541: Number of (n+2) X 4 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184541, the canonical program `A184541.P544345268472481375` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184541 has offset 1).

The definition of A184541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184541.P544345268472481375

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=89, a(1)=193, a(2)=340, a(3)=537, a(4)=792`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184541

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P544345268472481375.Spec : Prop :=
  ∀ n, P544345268472481375.a n = A184541 (n + 1)

theorem P544345268472481375.correct : P544345268472481375.Spec := by
  intro n
  simp only [A184541, Nat.add_sub_cancel]

end A184541

/-! ## A184541.P12277179104694025079

`1/24*(n+1)^4+3/4*(n+1)^3+383/24*(n+1)²+201/4*(n+1)+22`
-/

namespace A184541.P12277179104694025079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * ((n + 1) ^ 4 : ℚ) + (3 : ℚ) / 4 * ((n + 1) ^ 3 : ℚ) + (383 : ℚ) / 24 * ((n + 1) ^ 2 : ℚ) + (201 : ℚ) / 4 * (n + 1 : ℚ) + 22

end

end A184541.P12277179104694025079

namespace A184541

/-- `1/24*(n+1)^4+3/4*(n+1)^3+383/24*(n+1)²+201/4*(n+1)+22` -/
def P12277179104694025079.Spec : Prop :=
  ∀ n, P12277179104694025079.a n = (A184541 (n + 1) : ℚ)

theorem P12277179104694025079.correct : P12277179104694025079.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A184541, Nat.add_sub_cancel, A184541.P12277179104694025079.a, A184541.P544345268472481375.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A184541, Nat.add_sub_cancel, A184541.P12277179104694025079.a, A184541.P544345268472481375.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A184541

/-! ## A184541.P2925013673747139861

`A184548(∑[n+1]+2)`
-/

namespace A184541.P2925013673747139861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184541.P2925013673747139861

namespace A184541

/-- `A184548(∑[n+1]+2)` -/
def P2925013673747139861.Spec : Prop :=
  ∀ n, P2925013673747139861.a n = A184541 (n + 1)

end A184541

/-! ## A184541.P9610822094075186934

`lcm(A106400(n), A184548(A055998(n)+2))`
-/

namespace A184541.P9610822094075186934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 n) (A184548 (A055998 n + 2).toNat)

end

end A184541.P9610822094075186934

namespace A184541

/-- `lcm(A106400(n), A184548(A055998(n)+2))` -/
def P9610822094075186934.Spec : Prop :=
  ∀ n, (P9610822094075186934.a n : ℤ) = A184541 (n + 1)

end A184541

/-! ## A184541.P11584513081660020430

`A184548(A133263(n+1))%A052097(n+1)`
-/

namespace A184541.P11584513081660020430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184548 (A133263 (n + 1)).toNat) (A052097 (n + 1))

end

end A184541.P11584513081660020430

namespace A184541

/-- `A184548(A133263(n+1))%A052097(n+1)` -/
def P11584513081660020430.Spec : Prop :=
  ∀ n, P11584513081660020430.a n = A184541 (n + 1)

end A184541

/-! ## A184541.P11802655006347383392

`A008835(A085478(n))*A184548(A133263(n+1))`
-/

namespace A184541.P11802655006347383392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (A085478 n).toNat * A184548 (A133263 (n + 1)).toNat

end

end A184541.P11802655006347383392

namespace A184541

/-- `A008835(A085478(n))*A184548(A133263(n+1))` -/
def P11802655006347383392.Spec : Prop :=
  ∀ n, P11802655006347383392.a n = A184541 (n + 1)

end A184541

/-! ## A184541.P5248412133325161292

`A000027(A184548(∑[n+2]))`
-/

namespace A184541.P5248412133325161292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A184548 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A184541.P5248412133325161292

namespace A184541

/-- `A000027(A184548(∑[n+2]))` -/
def P5248412133325161292.Spec : Prop :=
  ∀ n, P5248412133325161292.a n = A184541 (n + 1)

end A184541

/-!
# A184542: Number of (n+2) X 5 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184542, there is no canonical definition to state claims against.
-/

/-! ## A184542.P905527824723706948

`A184548(∑[n+2]+4)`
-/

namespace A184542.P905527824723706948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184542.P905527824723706948

/-! ## A184542.P600814239436960203

`A184548(A167614(n+1))%A184543(n+1)`
-/

namespace A184542.P600814239436960203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184548 (A167614 (n + 1)).toNat) (A184543 (n + 1))

end

end A184542.P600814239436960203

/-! ## A184542.P1720791753364336222

`A184548(A167499(n)+n)%A184543(n+1)`
-/

namespace A184542.P1720791753364336222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184548 (A167499 n + (n : ℤ)).toNat) (A184543 (n + 1))

end

end A184542.P1720791753364336222

/-! ## A184542.P776376347512208923

`A003154(n+1)%2*A184548(A167614(n+1))`
-/

namespace A184542.P776376347512208923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003154 (n + 1)) 2 * A184548 (A167614 (n + 1)).toNat

end

end A184542.P776376347512208923

/-!
# A184543: Number of (n+2) X 6 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184543, there is no canonical definition to state claims against.
-/

/-! ## A184543.P10854838461980106975

`A184548(∑[n+3]+7)`
-/

namespace A184543.P10854838461980106975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184543.P10854838461980106975

/-! ## A184543.P380418985390964948

`record[A184548(10-∑[3-n])]`
-/

namespace A184543.P380418985390964948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (10 - ∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184543.P380418985390964948

/-! ## A184543.P5940914515630108695

`lcm((-1)^n, A184548(A166136(n+2)-2))`
-/

namespace A184543.P5940914515630108695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A184548 (A166136 (n + 2) - 2).toNat)

end

end A184543.P5940914515630108695

/-! ## A184543.P12503889070671050880

`A184548(A167614(n+2)+1)%A184544(n+1)`
-/

namespace A184543.P12503889070671050880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184548 (A167614 (n + 2) + 1).toNat) (A184544 (n + 1))

end

end A184543.P12503889070671050880

/-! ## A184543.P7153429803304048320

`A019430(A304158(2*(n+1)))*A184548(A167614(n+2)+1)`
-/

namespace A184543.P7153429803304048320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A304158 (2 * (n + 1))).toNat * A184548 (A167614 (n + 2) + 1).toNat

end

end A184543.P7153429803304048320

/-! ## A184543.P13568512564241741224

`A215573(A002522(2*n))+A184548(A052905(n)+9)`
-/

namespace A184543.P13568512564241741224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215573 (A002522 (2 * n)).toNat + A184548 (A052905 n + 9).toNat

end

end A184543.P13568512564241741224

/-!
# A184544: Number of (n+2) X 7 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184544, there is no canonical definition to state claims against.
-/

/-! ## A184544.P12669439517121341506

`A184548(A374005(n+1))`
-/

namespace A184544.P12669439517121341506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A374005 (n + 1)).toNat

end

end A184544.P12669439517121341506

/-! ## A184544.P10310365733782659271

`A184548(A167499(n+3))`
-/

namespace A184544.P10310365733782659271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A167499 (n + 3)).toNat

end

end A184544.P10310365733782659271

/-! ## A184544.P13471833780803220173

`A184548(A056000(n)+15)`
-/

namespace A184544.P13471833780803220173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A056000 n + 15).toNat

end

end A184544.P13471833780803220173

/-! ## A184544.P2599920688245789305

`A184548(A166136(n+3)-1)`
-/

namespace A184544.P2599920688245789305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A166136 (n + 3) - 1).toNat

end

end A184544.P2599920688245789305

/-! ## A184544.P13441742762528171437

`A184548(∑[n+5]+6)`
-/

namespace A184544.P13441742762528171437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184544.P13441742762528171437

/-! ## A184544.P9734450597016810074

`A184548(A167614(n+3)+2)+A008683(A001248(n+1))`
-/

namespace A184544.P9734450597016810074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A167614 (n + 3) + 2).toNat + A008683 (A001248 (n + 1)).toNat

end

end A184544.P9734450597016810074

/-!
# A184545: Number of (n+2) X 8 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184545, there is no canonical definition to state claims against.
-/

/-! ## A184545.P18244286099205738551

`A184548(A374007(n+1))`
-/

namespace A184545.P18244286099205738551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A374007 (n + 1)).toNat

end

end A184545.P18244286099205738551

/-! ## A184545.P17762596760745845527

`A184548(A000124(n+5)+5)`
-/

namespace A184545.P17762596760745845527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A000124 (n + 5) + 5).toNat

end

end A184545.P17762596760745845527

/-! ## A184545.P8955353590918876749

`A184548(A055998(n+3)+9)%A184546(n+1)`
-/

namespace A184545.P8955353590918876749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184548 (A055998 (n + 3) + 9).toNat) (A184546 (n + 1))

end

end A184545.P8955353590918876749

/-! ## A184545.P4554886183938870120

`lcm(A106400(n+9), A184548(A055998(n+3)+9))`
-/

namespace A184545.P4554886183938870120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106400 (n + 9)) (A184548 (A055998 (n + 3) + 9).toNat)

end

end A184545.P4554886183938870120

/-! ## A184545.P14106229764663256262

`A000035(2*n+1)*A184548(A055998(n+3)+9)`
-/

namespace A184545.P14106229764663256262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A184548 (A055998 (n + 3) + 9).toNat

end

end A184545.P14106229764663256262

/-! ## A184545.P321724068076131162

`A007318(A000217(n+5))*A184548(A055998(n+3)+9)`
-/

namespace A184545.P321724068076131162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 5)).toNat * A184548 (A055998 (n + 3) + 9).toNat

end

end A184545.P321724068076131162

/-! ## A184545.P184385300830428066

`A184548(∑[n+6]+10)`
-/

namespace A184545.P184385300830428066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A184545.P184385300830428066

/-! ## A184545.P13282981050533996654

`A184548(A134869(n+6)-6)%A250594(n+1)`
-/

namespace A184545.P13282981050533996654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184548 (A134869 (n + 6) - 6).toNat) (A250594 (n + 1))

end

end A184545.P13282981050533996654

/-! ## A184545.P734240125658735145

`A184548(A134869(n+5)+n)+A016035(A020483(n))`
-/

namespace A184545.P734240125658735145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A134869 (n + 5) + (n : ℤ)).toNat + A016035 (A020483 n).toNat

end

end A184545.P734240125658735145

/-! ## A184545.P17311396895166255176

`A184548(A134869(n+5)+n)+A016035(A002313(n+1))`
-/

namespace A184545.P17311396895166255176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A134869 (n + 5) + (n : ℤ)).toNat + A016035 (A002313 (n + 1)).toNat

end

end A184545.P17311396895166255176

/-! ## A184545.P12917300220242733361

`A065648(A035193(2*(n+1)))*A184548(A134869(n+6)-6)`
-/

namespace A184545.P12917300220242733361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065648 (A035193 (2 * (n + 1))).toNat * A184548 (A134869 (n + 6) - 6).toNat

end

end A184545.P12917300220242733361

/-!
# A184546: Number of (n+2) X 9 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184546, there is no canonical definition to state claims against.
-/

/-! ## A184546.P5565597462887872680

`A184548(A374008(n+1))`
-/

namespace A184546.P5565597462887872680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A374008 (n + 1)).toNat

end

end A184546.P5565597462887872680

/-! ## A184546.P8276166300546497711

`A184548(A167487(n+5))`
-/

namespace A184546.P8276166300546497711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A167487 (n + 5)).toNat

end

end A184546.P8276166300546497711

/-! ## A184546.P17658743954577793603

`A184548(A166136(n+5)+1)`
-/

namespace A184546.P17658743954577793603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A166136 (n + 5) + 1).toNat

end

end A184546.P17658743954577793603

/-! ## A184546.P7409757914137581838

`A184548(A253145(n+5)+7)`
-/

namespace A184546.P7409757914137581838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A253145 (n + 5) + 7).toNat

end

end A184546.P7409757914137581838

/-! ## A184546.P5420642110402436853

`A184548(A000217(n+6)+7)`
-/

namespace A184546.P5420642110402436853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A000217 (n + 6) + 7).toNat

end

end A184546.P5420642110402436853

/-! ## A184546.P10708781107805143874

`A184548(A046691(n+6)-A005843(n+2))`
-/

namespace A184546.P10708781107805143874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A046691 (n + 6) - A005843 (n + 2)).toNat

end

end A184546.P10708781107805143874

/-! ## A184546.P9807084521022752555

`A184548(A055999(n+4))`
-/

namespace A184546.P9807084521022752555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A055999 (n + 4)).toNat

end

end A184546.P9807084521022752555

/-! ## A184546.P10519094870235075293

`A184548(A052905(n+4)-1)`
-/

namespace A184546.P10519094870235075293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A052905 (n + 4) - 1).toNat

end

end A184546.P10519094870235075293

/-! ## A184546.P9021423870782507740

`A184548(A000124(n+7)-7)`
-/

namespace A184546.P9021423870782507740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A000124 (n + 7) - 7).toNat

end

end A184546.P9021423870782507740

/-! ## A184546.P13511411807891244151

`A184548(n+6+A052905(n+3))`
-/

namespace A184546.P13511411807891244151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 ((n + 6 : ℤ) + A052905 (n + 3)).toNat

end

end A184546.P13511411807891244151

/-!
# A184547: Number of (n+2) X 10 binary arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184547, there is no canonical definition to state claims against.
-/

/-! ## A184547.P8312289383818541559

`A184548(A374009(n+1))`
-/

namespace A184547.P8312289383818541559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A374009 (n + 1)).toNat

end

end A184547.P8312289383818541559

/-! ## A184547.P11088278345251257706

`A184548(A166136(n+6)+2)`
-/

namespace A184547.P11088278345251257706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A166136 (n + 6) + 2).toNat

end

end A184547.P11088278345251257706

/-! ## A184547.P10377824140920717193

`A184548(A253145(n+6)+8)`
-/

namespace A184547.P10377824140920717193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A253145 (n + 6) + 8).toNat

end

end A184547.P10377824140920717193

/-! ## A184547.P740553069981489074

`A184548(A000217(n+7)+8)`
-/

namespace A184547.P740553069981489074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A000217 (n + 7) + 8).toNat

end

end A184547.P740553069981489074

/-! ## A184547.P84678474149596830

`A184548(A046691(n+2)+A008486(n+10))`
-/

namespace A184547.P84678474149596830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A046691 (n + 2) + A008486 (n + 10)).toNat

end

end A184547.P84678474149596830

/-! ## A184547.P731407496004231975

`A184548(A052905(n+5)-2)`
-/

namespace A184547.P731407496004231975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A052905 (n + 5) - 2).toNat

end

end A184547.P731407496004231975

/-! ## A184547.P17242290668679833944

`A184548(A027379(n+6)-4)`
-/

namespace A184547.P17242290668679833944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A027379 (n + 6) - 4).toNat

end

end A184547.P17242290668679833944

/-! ## A184547.P6641943234260503485

`A184548(A000124(n+8)-8)`
-/

namespace A184547.P6641943234260503485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 (A000124 (n + 8) - 8).toNat

end

end A184547.P6641943234260503485

/-! ## A184547.P10341824931649912384

`A184548(n+6+A052905(n+4))`
-/

namespace A184547.P10341824931649912384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184548 ((n + 6 : ℤ) + A052905 (n + 4)).toNat

end

end A184547.P10341824931649912384

/-!
# A184549: Super-birthdays (falling on the same weekday), version 1 (birth within the year following a February 29).

The programs for A184549, the canonical program `A184549.P4990853987682516911` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184549 has offset 0).

The definition of A184549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184549.P12433268239881091812

`ogf((6x+11x^2+6x^3+5x^4)/(1-x-x^4+x^5))`
-/

namespace A184549.P12433268239881091812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 11, 6, 5] [1, -1, 0, 0, -1, 1] n

end

end A184549.P12433268239881091812

namespace A184549

/-- `ogf((6x+11x^2+6x^3+5x^4)/(1-x-x^4+x^5))` -/
def P12433268239881091812.Spec : Prop :=
  ∀ n, P12433268239881091812.a n = A184549 n

end A184549

/-! ## A184549.P4990853987682516911

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=6, a(2)=17, a(3)=23, a(4)=28`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184549

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4990853987682516911.Spec : Prop :=
  ∀ n, P4990853987682516911.a n = A184549 n

theorem P4990853987682516911.correct : P4990853987682516911.Spec := by
  intro n
  simp only [A184549]

end A184549

/-! ## A184549.P8992040996360178950

`a(n-4)+28` with `a(0)=0, a(1)=6, a(2)=17, a(3)=23`
-/

namespace A184549.P8992040996360178950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 17, 23] fun n a =>
  a (n - 4) + 28

end

end A184549.P8992040996360178950

namespace A184549

/-- `a(n-4)+28` -/
def P8992040996360178950.Spec : Prop :=
  ∀ n, (P8992040996360178950.a n : ℤ) = A184549 n

end A184549

/-! ## A184549.P155643928811671451

`A072065(n+1)+4*n`
-/

namespace A184549.P155643928811671451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072065 (n + 1) + (4 * n : ℤ)

end

end A184549.P155643928811671451

namespace A184549

/-- `A072065(n+1)+4*n` -/
def P155643928811671451.Spec : Prop :=
  ∀ n, P155643928811671451.a n = A184549 n

end A184549

/-! ## A184549.P8024162244117790431

`2*A016813(n)-A298364(A263449(n))`
-/

namespace A184549.P8024162244117790431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016813 n - A298364 (A263449 n).toNat

end

end A184549.P8024162244117790431

namespace A184549

/-- `2*A016813(n)-A298364(A263449(n))` -/
def P8024162244117790431.Spec : Prop :=
  ∀ n, P8024162244117790431.a n = A184549 n

end A184549

/-! ## A184549.P12663066057620080658

`2*A016813(n)-A133256(A298364(n+1))`
-/

namespace A184549.P12663066057620080658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016813 n - A133256 (A298364 (n + 1)).toNat

end

end A184549.P12663066057620080658

namespace A184549

/-- `2*A016813(n)-A133256(A298364(n+1))` -/
def P12663066057620080658.Spec : Prop :=
  ∀ n, P12663066057620080658.a n = A184549 n

end A184549

/-! ## A184549.P7137971342267013206

`A184552(n+1)-5`
-/

namespace A184549.P7137971342267013206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 (n + 1) - 5

end

end A184549.P7137971342267013206

namespace A184549

/-- `A184552(n+1)-5` -/
def P7137971342267013206.Spec : Prop :=
  ∀ n, P7137971342267013206.a n = A184549 n

end A184549

/-! ## A184549.P9100279473032842422

`A184550(n+2)-11`
-/

namespace A184549.P9100279473032842422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184550 (n + 2) - 11

end

end A184549.P9100279473032842422

namespace A184549

/-- `A184550(n+2)-11` -/
def P9100279473032842422.Spec : Prop :=
  ∀ n, P9100279473032842422.a n = A184549 n

end A184549

/-! ## A184549.P8185447930941821940

`A231000(A047293(n+1))`
-/

namespace A184549.P8185447930941821940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047293 (n + 1)).toNat

end

end A184549.P8185447930941821940

namespace A184549

/-- `A231000(A047293(n+1))` -/
def P8185447930941821940.Spec : Prop :=
  ∀ n, P8185447930941821940.a n = A184549 n

end A184549

/-! ## A184549.P13027032402223166022

`A231000(A047392(n+2)-1)`
-/

namespace A184549.P13027032402223166022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047392 (n + 2) - 1).toNat

end

end A184549.P13027032402223166022

namespace A184549

/-- `A231000(A047392(n+2)-1)` -/
def P13027032402223166022.Spec : Prop :=
  ∀ n, P13027032402223166022.a n = A184549 n

end A184549

/-! ## A184549.P17539666294545690639

`A047557(A047554(n+1))+3*n`
-/

namespace A184549.P17539666294545690639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047557 (A047554 (n + 1)).toNat + (3 * n : ℤ)

end

end A184549.P17539666294545690639

namespace A184549

/-- `A047557(A047554(n+1))+3*n` -/
def P17539666294545690639.Spec : Prop :=
  ∀ n, P17539666294545690639.a n = A184549 n

end A184549

/-! ## A184549.P13810271653299439286

`A047467(A047401(n+2))-A080412(n)`
-/

namespace A184549.P13810271653299439286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (A047401 (n + 2)).toNat - A080412 n

end

end A184549.P13810271653299439286

namespace A184549

/-- `A047467(A047401(n+2))-A080412(n)` -/
def P13810271653299439286.Spec : Prop :=
  ∀ n, P13810271653299439286.a n = A184549 n

end A184549

/-! ## A184549.P5046910976186820557

`A231000(A047297(2*(n+1))-A047297(n+2))`
-/

namespace A184549.P5046910976186820557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047297 (2 * (n + 1)) - A047297 (n + 2)).toNat

end

end A184549.P5046910976186820557

namespace A184549

/-- `A231000(A047297(2*(n+1))-A047297(n+2))` -/
def P5046910976186820557.Spec : Prop :=
  ∀ n, P5046910976186820557.a n = A184549 n

end A184549

/-! ## A184549.P9249160408546937682

`∩[A047285(n+1), A231000(n)]`
-/

namespace A184549.P9249160408546937682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184549.P9249160408546937682

namespace A184549

/-- `∩[A047285(n+1), A231000(n)]` -/
def P9249160408546937682.Spec : Prop :=
  ∀ n, (P9249160408546937682.a n : ℤ) = A184549 n

end A184549

/-! ## A184549.P1930752355851345216

`∩[A047344(n+1)-1, A231000(n)]`
-/

namespace A184549.P1930752355851345216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184549.P1930752355851345216

namespace A184549

/-- `∩[A047344(n+1)-1, A231000(n)]` -/
def P1930752355851345216.Spec : Prop :=
  ∀ n, (P1930752355851345216.a n : ℤ) = A184549 n

end A184549

/-! ## A184549.P15128288448120956001

`A023447(A184552(n+1))`
-/

namespace A184549.P15128288448120956001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A184552 (n + 1)).toNat

end

end A184549.P15128288448120956001

namespace A184549

/-- `A023447(A184552(n+1))` -/
def P15128288448120956001.Spec : Prop :=
  ∀ n, P15128288448120956001.a n = A184549 n

end A184549

/-!
# A184550: Super-birthdays (falling on the same weekday), version 2 (birth within 1 and 2 years after a February 29).

The programs for A184550, the canonical program `A184550.P14641462627269328958` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184550 has offset 0).

The definition of A184550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184550.P14641462627269328958

`a(n-4)+28` with `a(0)=0, a(1)=6, a(2)=11, a(3)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184550

/-- `a(n-4)+28` -/
def P14641462627269328958.Spec : Prop :=
  ∀ n, (P14641462627269328958.a n : ℤ) = A184550 n

theorem P14641462627269328958.correct : P14641462627269328958.Spec := by
  intro n
  simp only [A184550]

end A184550

/-! ## A184550.P6190294506031584400

`A390774(n)+A130877(n+1)`
-/

namespace A184550.P6190294506031584400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n + A130877 (n + 1)

end

end A184550.P6190294506031584400

namespace A184550

/-- `A390774(n)+A130877(n+1)` -/
def P6190294506031584400.Spec : Prop :=
  ∀ n, P6190294506031584400.a n = A184550 n

end A184550

/-! ## A184550.P1841926106425700563

`A008588(A002265(n))+A008588(n)-A004526(n)`
-/

namespace A184550.P1841926106425700563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A002265 n).toNat + (A008588 n - A004526 n)

end

end A184550.P1841926106425700563

namespace A184550

/-- `A008588(A002265(n))+A008588(n)-A004526(n)` -/
def P1841926106425700563.Spec : Prop :=
  ∀ n, P1841926106425700563.a n = A184550 n

end A184550

/-! ## A184550.P9653277378195782512

`A184551(n+1)-11`
-/

namespace A184550.P9653277378195782512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184551 (n + 1) - 11

end

end A184550.P9653277378195782512

namespace A184550

/-- `A184551(n+1)-11` -/
def P9653277378195782512.Spec : Prop :=
  ∀ n, P9653277378195782512.a n = A184550 n

end A184550

/-! ## A184550.P4365510043254147409

`∑[Δ[A184552(n+2)]%A092183(n+1)]`
-/

namespace A184550.P4365510043254147409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A092183 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184550.P4365510043254147409

namespace A184550

/-- `∑[Δ[A184552(n+2)]%A092183(n+1)]` -/
def P4365510043254147409.Spec : Prop :=
  ∀ n, P4365510043254147409.a n = A184550 n

end A184550

/-! ## A184550.P17571954227465111431

`A231001(comp[5*n-1])`
-/

namespace A184550.P17571954227465111431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A184550.P17571954227465111431

namespace A184550

/-- `A231001(comp[5*n-1])` -/
def P17571954227465111431.Spec : Prop :=
  ∀ n, P17571954227465111431.a n = A184550 n

end A184550

/-! ## A184550.P17621432973988580279

`A008588(A002265(n)+n)-A004526(n)`
-/

namespace A184550.P17621432973988580279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A002265 n + (n : ℤ)).toNat - A004526 n

end

end A184550.P17621432973988580279

namespace A184550

/-- `A008588(A002265(n)+n)-A004526(n)` -/
def P17621432973988580279.Spec : Prop :=
  ∀ n, P17621432973988580279.a n = A184550 n

end A184550

/-! ## A184550.P4913228461560190519

`A231000(A047340(n+1))`
-/

namespace A184550.P4913228461560190519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047340 (n + 1)).toNat

end

end A184550.P4913228461560190519

namespace A184550

/-- `A231000(A047340(n+1))` -/
def P4913228461560190519.Spec : Prop :=
  ∀ n, P4913228461560190519.a n = A184550 n

end A184550

/-! ## A184550.P16094807209225576771

`A042948(A047605(n+1))+A042948(n)+n`
-/

namespace A184550.P16094807209225576771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047605 (n + 1)).toNat + (A042948 n + (n : ℤ))

end

end A184550.P16094807209225576771

namespace A184550

/-- `A042948(A047605(n+1))+A042948(n)+n` -/
def P16094807209225576771.Spec : Prop :=
  ∀ n, P16094807209225576771.a n = A184550 n

end A184550

/-! ## A184550.P13179783030988105139

`A016813(2*n)-A298364(A263449(n+2))`
-/

namespace A184550.P13179783030988105139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) - A298364 (A263449 (n + 2)).toNat

end

end A184550.P13179783030988105139

namespace A184550

/-- `A016813(2*n)-A298364(A263449(n+2))` -/
def P13179783030988105139.Spec : Prop :=
  ∀ n, P13179783030988105139.a n = A184550 n

end A184550

/-! ## A184550.P3998715565249383429

`A016813(2*n)-A133256(A298364(n+3))`
-/

namespace A184550.P3998715565249383429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (2 * n) - A133256 (A298364 (n + 3)).toNat

end

end A184550.P3998715565249383429

namespace A184550

/-- `A016813(2*n)-A133256(A298364(n+3))` -/
def P3998715565249383429.Spec : Prop :=
  ∀ n, P3998715565249383429.a n = A184550 n

end A184550

/-! ## A184550.P15642947133173424975

`A184552(2*n)-∪[A184552(2*n+1), A184549(2*n)]`
-/

namespace A184550.P15642947133173424975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184549 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 (2 * n) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A184550.P15642947133173424975

namespace A184550

/-- `A184552(2*n)-∪[A184552(2*n+1), A184549(2*n)]` -/
def P15642947133173424975.Spec : Prop :=
  ∀ n, P15642947133173424975.a n = A184550 n

end A184550

/-! ## A184550.P7034972268216163084

`A007494(4*n-n%4)+n`
-/

namespace A184550.P7034972268216163084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (4 * n - n % 4) + (n : ℤ)

end

end A184550.P7034972268216163084

namespace A184550

/-- `A007494(4*n-n%4)+n` -/
def P7034972268216163084.Spec : Prop :=
  ∀ n, P7034972268216163084.a n = A184550 n

end A184550

/-! ## A184550.P8164483258065239634

`∩[A047297(n+1), A231000(n)]`
-/

namespace A184550.P8164483258065239634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184550.P8164483258065239634

namespace A184550

/-- `∩[A047297(n+1), A231000(n)]` -/
def P8164483258065239634.Spec : Prop :=
  ∀ n, (P8164483258065239634.a n : ℤ) = A184550 n

end A184550

/-! ## A184550.P10881597972998858152

`∩[A047297(n+1), A231001(n)]`
-/

namespace A184550.P10881597972998858152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184550.P10881597972998858152

namespace A184550

/-- `∩[A047297(n+1), A231001(n)]` -/
def P10881597972998858152.Spec : Prop :=
  ∀ n, (P10881597972998858152.a n : ℤ) = A184550 n

end A184550

/-! ## A184550.P8268559221070394655

`∩[A047377(n+1)-1, A231000(n)]`
-/

namespace A184550.P8268559221070394655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047377 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184550.P8268559221070394655

namespace A184550

/-- `∩[A047377(n+1)-1, A231000(n)]` -/
def P8268559221070394655.Spec : Prop :=
  ∀ n, (P8268559221070394655.a n : ℤ) = A184550 n

end A184550

/-! ## A184550.P1810183891379427026

`∩[A047301(n+1), A231001(n)]`
-/

namespace A184550.P1810183891379427026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184550.P1810183891379427026

namespace A184550

/-- `∩[A047301(n+1), A231001(n)]` -/
def P1810183891379427026.Spec : Prop :=
  ∀ n, (P1810183891379427026.a n : ℤ) = A184550 n

end A184550

/-! ## A184550.P2661094078973469079

`∩[A047308(n+1), A231001(n)]`
-/

namespace A184550.P2661094078973469079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184550.P2661094078973469079

namespace A184550

/-- `∩[A047308(n+1), A231001(n)]` -/
def P2661094078973469079.Spec : Prop :=
  ∀ n, (P2661094078973469079.a n : ℤ) = A184550 n

end A184550

/-! ## A184550.P2494519704868131605

`∩[A047367(n+1)-1, A231001(n)]`
-/

namespace A184550.P2494519704868131605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184550.P2494519704868131605

namespace A184550

/-- `∩[A047367(n+1)-1, A231001(n)]` -/
def P2494519704868131605.Spec : Prop :=
  ∀ n, (P2494519704868131605.a n : ℤ) = A184550 n

end A184550

/-! ## A184550.P14934551428682761253

`A008588(A002265(5*n))-A004526(n)`
-/

namespace A184550.P14934551428682761253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A002265 (5 * n)).toNat - A004526 n

end

end A184550.P14934551428682761253

namespace A184550

/-- `A008588(A002265(5*n))-A004526(n)` -/
def P14934551428682761253.Spec : Prop :=
  ∀ n, P14934551428682761253.a n = A184550 n

end A184550

/-!
# A184551: Super-birthdays (falling on the same weekday), version 3 (birth within 2 and 3 years after a February 29).

The programs for A184551, the canonical program `A184551.P1374691732894049320` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184551 has offset 0).

The definition of A184551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184551.P1374691732894049320

`ogf((11x+6x^2+5x^3+6x^4)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184551

/-- `ogf((11x+6x^2+5x^3+6x^4)/(1-x-x^4+x^5))` -/
def P1374691732894049320.Spec : Prop :=
  ∀ n, P1374691732894049320.a n = A184551 n

theorem P1374691732894049320.correct : P1374691732894049320.Spec := by
  intro n
  simp only [A184551]

end A184551

/-! ## A184551.P3825056670240868563

`a(n-4)+28` with `a(0)=0, a(1)=11, a(2)=17, a(3)=22`
-/

namespace A184551.P3825056670240868563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 11, 17, 22] fun n a =>
  a (n - 4) + 28

end

end A184551.P3825056670240868563

namespace A184551

/-- `a(n-4)+28` -/
def P3825056670240868563.Spec : Prop :=
  ∀ n, (P3825056670240868563.a n : ℤ) = A184551 n

end A184551

/-! ## A184551.P2776245438457018747

`A184549(n+1)-6`
-/

namespace A184551.P2776245438457018747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184549 (n + 1) - 6

end

end A184551.P2776245438457018747

namespace A184551

/-- `A184549(n+1)-6` -/
def P2776245438457018747.Spec : Prop :=
  ∀ n, P2776245438457018747.a n = A184551 n

end A184551

/-! ## A184551.P12582331884767372595

`A184552(n)+3*and(2, n+1)`
-/

namespace A184551.P12582331884767372595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 n + (3 * Nat.land 2 (n + 1) : ℤ)

end

end A184551.P12582331884767372595

namespace A184551

/-- `A184552(n)+3*and(2, n+1)` -/
def P12582331884767372595.Spec : Prop :=
  ∀ n, P12582331884767372595.a n = A184551 n

end A184551

/-! ## A184551.P15372431643506576032

`A184552(n+2)-11`
-/

namespace A184551.P15372431643506576032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184552 (n + 2) - 11

end

end A184551.P15372431643506576032

namespace A184551

/-- `A184552(n+2)-11` -/
def P15372431643506576032.Spec : Prop :=
  ∀ n, P15372431643506576032.a n = A184551 n

end A184551

/-! ## A184551.P1475650778043334240

`A231001(A047203(n+1))`
-/

namespace A184551.P1475650778043334240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 (A047203 (n + 1)).toNat

end

end A184551.P1475650778043334240

namespace A184551

/-- `A231001(A047203(n+1))` -/
def P1475650778043334240.Spec : Prop :=
  ∀ n, P1475650778043334240.a n = A184551 n

end A184551

/-! ## A184551.P9359292739164825344

`A231001(A110655(n)+n)`
-/

namespace A184551.P9359292739164825344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 (A110655 n + (n : ℤ)).toNat

end

end A184551.P9359292739164825344

namespace A184551

/-- `A231001(A110655(n)+n)` -/
def P9359292739164825344.Spec : Prop :=
  ∀ n, P9359292739164825344.a n = A184551 n

end A184551

/-! ## A184551.P706984414844432023

`A231000(A047365(n+1))`
-/

namespace A184551.P706984414844432023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047365 (n + 1)).toNat

end

end A184551.P706984414844432023

namespace A184551

/-- `A231000(A047365(n+1))` -/
def P706984414844432023.Spec : Prop :=
  ∀ n, P706984414844432023.a n = A184551 n

end A184551

/-! ## A184551.P8633484539732123769

`A047508(n+1)+A045572(A047508(n+1))-2`
-/

namespace A184551.P8633484539732123769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047508 (n + 1) + (A045572 (A047508 (n + 1)).toNat - 2)

end

end A184551.P8633484539732123769

namespace A184551

/-- `A047508(n+1)+A045572(A047508(n+1))-2` -/
def P8633484539732123769.Spec : Prop :=
  ∀ n, P8633484539732123769.a n = A184551 n

end A184551

/-! ## A184551.P14650411834341538919

`A231001(5*n-A001068(3*n))`
-/

namespace A184551.P14650411834341538919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 ((5 * n : ℤ) - A001068 (3 * n)).toNat

end

end A184551.P14650411834341538919

namespace A184551

/-- `A231001(5*n-A001068(3*n))` -/
def P14650411834341538919.Spec : Prop :=
  ∀ n, P14650411834341538919.a n = A184551 n

end A184551

/-! ## A184551.P17308440286092378834

`A231000(7*n-A047340(3*n+1))`
-/

namespace A184551.P17308440286092378834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 ((7 * n : ℤ) - A047340 (3 * n + 1)).toNat

end

end A184551.P17308440286092378834

namespace A184551

/-- `A231000(7*n-A047340(3*n+1))` -/
def P17308440286092378834.Spec : Prop :=
  ∀ n, P17308440286092378834.a n = A184551 n

end A184551

/-! ## A184551.P16210215649976890168

`A083220(3*n)+4*n+A021913(n+1)`
-/

namespace A184551.P16210215649976890168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 (3 * n) + ((4 * n : ℤ) + A021913 (n + 1))

end

end A184551.P16210215649976890168

namespace A184551

/-- `A083220(3*n)+4*n+A021913(n+1)` -/
def P16210215649976890168.Spec : Prop :=
  ∀ n, P16210215649976890168.a n = A184551 n

end A184551

/-! ## A184551.P9507636092403536662

`A047322(3*n+1)+A047322(n+2)-A000035(n+1)`
-/

namespace A184551.P9507636092403536662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047322 (3 * n + 1) + (A047322 (n + 2) - A000035 (n + 1))

end

end A184551.P9507636092403536662

namespace A184551

/-- `A047322(3*n+1)+A047322(n+2)-A000035(n+1)` -/
def P9507636092403536662.Spec : Prop :=
  ∀ n, P9507636092403536662.a n = A184551 n

end A184551

/-! ## A184551.P14843221287477934884

`∩[A047344(n+1), A231000(n)]`
-/

namespace A184551.P14843221287477934884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184551.P14843221287477934884

namespace A184551

/-- `∩[A047344(n+1), A231000(n)]` -/
def P14843221287477934884.Spec : Prop :=
  ∀ n, (P14843221287477934884.a n : ℤ) = A184551 n

end A184551

/-! ## A184551.P4498928098672973814

`∩[A047344(n+1), A231001(n)]`
-/

namespace A184551.P4498928098672973814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184551.P4498928098672973814

namespace A184551

/-- `∩[A047344(n+1), A231001(n)]` -/
def P4498928098672973814.Spec : Prop :=
  ∀ n, (P4498928098672973814.a n : ℤ) = A184551 n

end A184551

/-! ## A184551.P2994139009796857447

`A184550(4*n)-A184550(3*n)`
-/

namespace A184551.P2994139009796857447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184550 (4 * n) - A184550 (3 * n)

end

end A184551.P2994139009796857447

namespace A184551

/-- `A184550(4*n)-A184550(3*n)` -/
def P2994139009796857447.Spec : Prop :=
  ∀ n, P2994139009796857447.a n = A184551 n

end A184551

/-! ## A184551.P10763410788992536908

`A175886(A047336(n+1))-A047336(A056020(n+1))`
-/

namespace A184551.P10763410788992536908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (A047336 (n + 1)).toNat - A047336 (A056020 (n + 1)).toNat

end

end A184551.P10763410788992536908

namespace A184551

/-- `A175886(A047336(n+1))-A047336(A056020(n+1))` -/
def P10763410788992536908.Spec : Prop :=
  ∀ n, P10763410788992536908.a n = A184551 n

end A184551

/-! ## A184551.P8244561443301284263

`A231001(A110655(5*n))`
-/

namespace A184551.P8244561443301284263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 (A110655 (5 * n)).toNat

end

end A184551.P8244561443301284263

namespace A184551

/-- `A231001(A110655(5*n))` -/
def P8244561443301284263.Spec : Prop :=
  ∀ n, P8244561443301284263.a n = A184551 n

end A184551

/-! ## A184551.P1074231541805700326

`∩[A047337(n+1), A231001(n)]`
-/

namespace A184551.P1074231541805700326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184551.P1074231541805700326

namespace A184551

/-- `∩[A047337(n+1), A231001(n)]` -/
def P1074231541805700326.Spec : Prop :=
  ∀ n, (P1074231541805700326.a n : ℤ) = A184551 n

end A184551

/-! ## A184551.P10157840869657432486

`∩[A047367(n+1), A231001(n)]`
-/

namespace A184551.P10157840869657432486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184551.P10157840869657432486

namespace A184551

/-- `∩[A047367(n+1), A231001(n)]` -/
def P10157840869657432486.Spec : Prop :=
  ∀ n, (P10157840869657432486.a n : ℤ) = A184551 n

end A184551

/-!
# A184552: Super-birthdays (falling on the same weekday), version 4 (birth in the year preceding a February 29).

The programs for A184552, the canonical program `A184552.P4508622840731029093` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184552 has offset 0).

The definition of A184552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184552.P4508622840731029093

`a(n-4)+28` with `a(0)=0, a(1)=5, a(2)=11, a(3)=22`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184552

/-- `a(n-4)+28` -/
def P4508622840731029093.Spec : Prop :=
  ∀ n, (P4508622840731029093.a n : ℤ) = A184552 n

theorem P4508622840731029093.correct : P4508622840731029093.Spec := by
  intro n
  simp only [A184552]

end A184552

/-! ## A184552.P3520965233732138344

`A184550(n+1)-6`
-/

namespace A184552.P3520965233732138344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184550 (n + 1) - 6

end

end A184552.P3520965233732138344

namespace A184552

/-- `A184550(n+1)-6` -/
def P3520965233732138344.Spec : Prop :=
  ∀ n, P3520965233732138344.a n = A184552 n

end A184552

/-! ## A184552.P6410754576952031552

`A231000(A047392(n+1))`
-/

namespace A184552.P6410754576952031552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047392 (n + 1)).toNat

end

end A184552.P6410754576952031552

namespace A184552

/-- `A231000(A047392(n+1))` -/
def P6410754576952031552.Spec : Prop :=
  ∀ n, P6410754576952031552.a n = A184552 n

end A184552

/-! ## A184552.P4772921386599867463

`A231000(A047377(2*(n+1))-A047377(n+2))`
-/

namespace A184552.P4772921386599867463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 (A047377 (2 * (n + 1)) - A047377 (n + 2)).toNat

end

end A184552.P4772921386599867463

namespace A184552

/-- `A231000(A047377(2*(n+1))-A047377(n+2))` -/
def P4772921386599867463.Spec : Prop :=
  ∀ n, P4772921386599867463.a n = A184552 n

end A184552

/-! ## A184552.P16694634407576975917

`A007494(n)+A007494(A112652(n))+n`
-/

namespace A184552.P16694634407576975917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + (A007494 (A112652 n).toNat + (n : ℤ))

end

end A184552.P16694634407576975917

namespace A184552

/-- `A007494(n)+A007494(A112652(n))+n` -/
def P16694634407576975917.Spec : Prop :=
  ∀ n, P16694634407576975917.a n = A184552 n

end A184552

/-! ## A184552.P3641185058827942623

`A047460(A047460(n+2)+n)+n`
-/

namespace A184552.P3641185058827942623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (A047460 (n + 2) + (n : ℤ)).toNat + (n : ℤ)

end

end A184552.P3641185058827942623

namespace A184552

/-- `A047460(A047460(n+2)+n)+n` -/
def P3641185058827942623.Spec : Prop :=
  ∀ n, P3641185058827942623.a n = A184552 n

end A184552

/-! ## A184552.P9766456551496724392

`A231000(7*n-A047293(3*n+1))`
-/

namespace A184552.P9766456551496724392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 ((7 * n : ℤ) - A047293 (3 * n + 1)).toNat

end

end A184552.P9766456551496724392

namespace A184552

/-- `A231000(7*n-A047293(3*n+1))` -/
def P9766456551496724392.Spec : Prop :=
  ∀ n, P9766456551496724392.a n = A184552 n

end A184552

/-! ## A184552.P11279314978366921894

`∩[A047377(n+1), A231000(n)]`
-/

namespace A184552.P11279314978366921894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184552.P11279314978366921894

namespace A184552

/-- `∩[A047377(n+1), A231000(n)]` -/
def P11279314978366921894.Spec : Prop :=
  ∀ n, (P11279314978366921894.a n : ℤ) = A184552 n

end A184552

/-! ## A184552.P14178522713487282090

`∩[A047285(n+1)-2, A231000(n)]`
-/

namespace A184552.P14178522713487282090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047285 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A184552.P14178522713487282090

namespace A184552

/-- `∩[A047285(n+1)-2, A231000(n)]` -/
def P14178522713487282090.Spec : Prop :=
  ∀ n, (P14178522713487282090.a n : ℤ) = A184552 n

end A184552

/-! ## A184552.P11522831496274826479

`A023448(A184550(n+1))`
-/

namespace A184552.P11522831496274826479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A184550 (n + 1)).toNat

end

end A184552.P11522831496274826479

namespace A184552

/-- `A023448(A184550(n+1))` -/
def P11522831496274826479.Spec : Prop :=
  ∀ n, P11522831496274826479.a n = A184552 n

end A184552

/-!
# A184553: a(n) = Sum_{k=0..n} C(3n+k,n-k)*C(4n-k,k).

The programs for A184553, the canonical program `A184553.P7229343976765398890` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184553 has offset 0).

The definition of A184553 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+#, n-#)*C(4*n-#, #)]` (program `A184553.P7229343976765398890`, by `A184553.P7229343976765398890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184553.P7229343976765398890

`∑{#}[n, C(3*n+#, n-#)*C(4*n-#, #)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184553

/-- `∑{#}[n, C(3*n+#, n-#)*C(4*n-#, #)]` -/
def P7229343976765398890.Spec : Prop :=
  ∀ n, (P7229343976765398890.a n : ℤ) = A184553 n

theorem P7229343976765398890.correct : P7229343976765398890.Spec := by
  intro n
  simp only [A184553]

end A184553

/-! ## A184553.P8431590396502259608

`A123521(A139275(n))`
-/

namespace A184553.P8431590396502259608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123521 (A139275 n).toNat

end

end A184553.P8431590396502259608

namespace A184553

/-- `A123521(A139275(n))` -/
def P8431590396502259608.Spec : Prop :=
  ∀ n, P8431590396502259608.a n = A184553 n

end A184553

/-! ## A184553.P9510932420056012657

`A123521(n*A017077(n))`
-/

namespace A184553.P9510932420056012657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123521 ((n : ℤ) * A017077 n).toNat

end

end A184553.P9510932420056012657

namespace A184553

/-- `A123521(n*A017077(n))` -/
def P9510932420056012657.Spec : Prop :=
  ∀ n, P9510932420056012657.a n = A184553 n

end A184553

/-! ## A184553.P13262173556296295282

`A109244(A062728(2*n)+n)`
-/

namespace A184553.P13262173556296295282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109244 (A062728 (2 * n) + (n : ℤ)).toNat

end

end A184553.P13262173556296295282

namespace A184553

/-- `A109244(A062728(2*n)+n)` -/
def P13262173556296295282.Spec : Prop :=
  ∀ n, P13262173556296295282.a n = A184553 n

end A184553

/-! ## A184553.P11955995762618372260

`A201635(A051682(2*n+1)-n)`
-/

namespace A184553.P11955995762618372260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A051682 (2 * n + 1) - (n : ℤ)).toNat

end

end A184553.P11955995762618372260

namespace A184553

/-- `A201635(A051682(2*n+1)-n)` -/
def P11955995762618372260.Spec : Prop :=
  ∀ n, P11955995762618372260.a n = A184553 n

end A184553

/-!
# A184554: Self-convolution equals A184553.

The programs for A184554, there is no canonical definition to state claims against.
-/

/-! ## A184554.P3141361494042809961

`A285496(A000707(2*n+1))+comp[2*(n+1)]`
-/

namespace A184554.P3141361494042809961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285496 (A000707 (2 * n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A184554.P3141361494042809961

/-!
# A184555: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock summing to less than 4.

The programs for A184555, there is no canonical definition to state claims against.
-/

/-! ## A184555.P4295442193364539085

`A184564((n+1)²+n²)`
-/

namespace A184555.P4295442193364539085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 ((n + 1) ^ 2 + n ^ 2)

end

end A184555.P4295442193364539085

/-!
# A184556: Number of (n+1) X 2 0..2 arrays with no 2 X 2 subblock summing to less than 4.

The programs for A184556, there is no canonical definition to state claims against.
-/

/-! ## A184556.P9112739403280536868

`A184564(∑[n]+1)`
-/

namespace A184556.P9112739403280536868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184556.P9112739403280536868

/-! ## A184556.P17532855990605237553

`record[gcd(A002262(n), A184564(n+1))]`
-/

namespace A184556.P17532855990605237553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184564 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184556.P17532855990605237553

/-! ## A184556.P9308512034067517074

`record[root(A184564(n+1), A193710(n+1))]`
-/

namespace A184556.P9308512034067517074
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184564 (n + 1) : ℝ) ^ (1 / (A193710 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184556.P9308512034067517074

/-! ## A184556.P18037552734074364677

`A251065(∑[n+1])`
-/

namespace A184556.P18037552734074364677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251065 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184556.P18037552734074364677

/-! ## A184556.P5606384095776309200

`record[A103452(n)*A251065(n+1)]`
-/

namespace A184556.P5606384095776309200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A251065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184556.P5606384095776309200

/-!
# A184557: Number of (n+1)X3 0..2 arrays with no 2X2 subblock summing to less than 4.

The programs for A184557, there is no canonical definition to state claims against.
-/

/-! ## A184557.P11198621370979736427

`A184564(∑[n+1]+2)`
-/

namespace A184557.P11198621370979736427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184557.P11198621370979736427

/-! ## A184557.P14515835664197512429

`record[gcd(A002262(n), A184564(n+2))]`
-/

namespace A184557.P14515835664197512429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184564 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184557.P14515835664197512429

/-! ## A184557.P11189938362403946885

`A184564(A000096(n)+3)+A010894(n+1)`
-/

namespace A184557.P11189938362403946885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A000096 n + 3).toNat + A010894 (n + 1 + 21)

end

end A184557.P11189938362403946885

/-! ## A184557.P12716580203486844957

`record[A184564(A133263(val(n+1, 2)+1))]`
-/

namespace A184557.P12716580203486844957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184557.P12716580203486844957

/-!
# A184558: Number of (n+1)X4 0..2 arrays with no 2X2 subblock summing to less than 4.

The programs for A184558, there is no canonical definition to state claims against.
-/

/-! ## A184558.P6950427111381279506

`A184564(∑[n+2]+4)`
-/

namespace A184558.P6950427111381279506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184558.P6950427111381279506

/-! ## A184558.P6527525204052153938

`A184564(A167614(n+1))+A011738(n)`
-/

namespace A184558.P6527525204052153938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A167614 (n + 1)).toNat + A011738 n

end

end A184558.P6527525204052153938

/-! ## A184558.P637698759367478683

`A185284(n)+A184564(A167614(n+1))`
-/

namespace A184558.P637698759367478683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184564 (A167614 (n + 1)).toNat

end

end A184558.P637698759367478683

/-! ## A184558.P16643203834268803594

`or(A000038(n), A184564(A167614(n+1)))`
-/

namespace A184558.P16643203834268803594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184564 (A167614 (n + 1)).toNat)

end

end A184558.P16643203834268803594

/-! ## A184558.P3131310595666322989

`lcm(A076479(n+1), A184564(A167614(n+1)))`
-/

namespace A184558.P3131310595666322989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A076479 (n + 1)) (A184564 (A167614 (n + 1)).toNat)

end

end A184558.P3131310595666322989

/-!
# A184559: Number of (n+1)X5 0..2 arrays with no 2X2 subblock summing to less than 4.

The programs for A184559, there is no canonical definition to state claims against.
-/

/-! ## A184559.P3752807346565729602

`A184564(A167614(n+2)+1)`
-/

namespace A184559.P3752807346565729602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A167614 (n + 2) + 1).toNat

end

end A184559.P3752807346565729602

/-! ## A184559.P2159149900176246731

`A184564(A080036(A167614(n+1)))`
-/

namespace A184559.P2159149900176246731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A184559.P2159149900176246731

/-! ## A184559.P13524749292772438769

`A184564(A155212(n)+5)`
-/

namespace A184559.P13524749292772438769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A155212 n + 5).toNat

end

end A184559.P13524749292772438769

/-!
# A184560: Number of (n+1)X6 0..2 arrays with no 2X2 subblock summing to less than 4.

The programs for A184560, there is no canonical definition to state claims against.
-/

/-! ## A184560.P9143718023727126146

`A184564(A374005(n+1))`
-/

namespace A184560.P9143718023727126146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A374005 (n + 1)).toNat

end

end A184560.P9143718023727126146

/-! ## A184560.P17422939365293468643

`A184564(A167499(n+3))`
-/

namespace A184560.P17422939365293468643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184564 (A167499 (n + 3)).toNat

end

end A184560.P17422939365293468643

/-!
# A184565: Number of (n+2)X(n+2) 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184565, there is no canonical definition to state claims against.
-/

/-! ## A184565.P1344219417550990221

`A184574(∑[4*n]+1)`
-/

namespace A184565.P1344219417550990221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184565.P1344219417550990221

/-! ## A184565.P5346308928957957076

`record[A003982(n)*A184574(n+1)]`
-/

namespace A184565.P5346308928957957076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184565.P5346308928957957076

/-! ## A184565.P8742190648151843966

`record[gcd(A114327(n), A184574(n+1))]`
-/

namespace A184565.P8742190648151843966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A184574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184565.P8742190648151843966

/-! ## A184565.P11396791249143893239

`A184574(A001844(n))+A025443(n)`
-/

namespace A184565.P11396791249143893239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A001844 n).toNat + A025443 n

end

end A184565.P11396791249143893239

/-! ## A184565.P9504974711608729619

`lcm(A020985(n), A184574(A001844(n)))`
-/

namespace A184565.P9504974711608729619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A184574 (A001844 n).toNat)

end

end A184565.P9504974711608729619

/-!
# A184566: Number of (n+2)X3 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184566, there is no canonical definition to state claims against.
-/

/-! ## A184566.P5647090714150955578

`A184574(∑[n]+1)`
-/

namespace A184566.P5647090714150955578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184566.P5647090714150955578

/-! ## A184566.P3899797510269112400

`record[A010054(n)*A184574(n+1)]`
-/

namespace A184566.P3899797510269112400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184566.P3899797510269112400

/-! ## A184566.P3183842477077450729

`record[gcd(A002262(n), A184574(n+1))]`
-/

namespace A184566.P3183842477077450729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184566.P3183842477077450729

/-! ## A184566.P1806055223446354340

`record[A184574(n+1)/A008292(n+1)]`
-/

namespace A184566.P1806055223446354340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184574 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184566.P1806055223446354340

/-! ## A184566.P6592024056505736615

`A184574(A000124(n))*A262681(n)`
-/

namespace A184566.P6592024056505736615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A000124 n).toNat * A262681 n

end

end A184566.P6592024056505736615

/-!
# A184567: Number of (n+2)X4 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184567, there is no canonical definition to state claims against.
-/

/-! ## A184567.P5166689441300225684

`A184574(∑[n+1]+2)`
-/

namespace A184567.P5166689441300225684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184567.P5166689441300225684

/-! ## A184567.P11845343749554189993

`record[A010054(n)*A184574(n+2)]`
-/

namespace A184567.P11845343749554189993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184567.P11845343749554189993

/-! ## A184567.P17356927765433380524

`record[gcd(A002262(n), A184574(n+2))]`
-/

namespace A184567.P17356927765433380524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184574 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184567.P17356927765433380524

/-! ## A184567.P15053118596475035756

`log2(4/2)*A184574(A252460(2*(n+2)))`
-/

namespace A184567.P15053118596475035756
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((4 : ℚ) / 2 : ℝ) * (A184574 (A252460 (2 * (n + 2))).toNat : ℝ)

end

end A184567.P15053118596475035756

/-! ## A184567.P9806545623917469537

`A184574(A252460(2*(n+2)))+A000045(C(n, n+1))`
-/

namespace A184567.P9806545623917469537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A252460 (2 * (n + 2))).toNat + A000045 (Nat.choose n (n + 1))

end

end A184567.P9806545623917469537

/-!
# A184568: Number of (n+2)X5 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184568, there is no canonical definition to state claims against.
-/

/-! ## A184568.P8664374252955261462

`A184574(∑[n+2]+4)`
-/

namespace A184568.P8664374252955261462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184568.P8664374252955261462

/-! ## A184568.P1071627378511393903

`A184574(A167614(n+1))+A025469(n)`
-/

namespace A184568.P1071627378511393903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A167614 (n + 1)).toNat + A025469 n

end

end A184568.P1071627378511393903

/-! ## A184568.P2496602548194833709

`A184574(A167614(n+1))*A262681(n)`
-/

namespace A184568.P2496602548194833709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A167614 (n + 1)).toNat * A262681 n

end

end A184568.P2496602548194833709

/-! ## A184568.P17066168186471864004

`or(A000038(n), A184574(A167614(n+1)))`
-/

namespace A184568.P17066168186471864004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A184574 (A167614 (n + 1)).toNat)

end

end A184568.P17066168186471864004

/-! ## A184568.P13403180717458258161

`or(A063524(n), A184574(A167614(n+1)))`
-/

namespace A184568.P13403180717458258161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A184574 (A167614 (n + 1)).toNat)

end

end A184568.P13403180717458258161

/-!
# A184569: Number of (n+2)X6 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184569, there is no canonical definition to state claims against.
-/

/-! ## A184569.P4794082957167145348

`A184574(A374004(n+1))`
-/

namespace A184569.P4794082957167145348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A374004 (n + 1)).toNat

end

end A184569.P4794082957167145348

/-! ## A184569.P15027210652660863712

`A184574(A141214(n)+7)`
-/

namespace A184569.P15027210652660863712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A141214 n + 7).toNat

end

end A184569.P15027210652660863712

/-! ## A184569.P14587665660405018208

`A184574(A052905(n)+9)`
-/

namespace A184569.P14587665660405018208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A052905 n + 9).toNat

end

end A184569.P14587665660405018208

/-! ## A184569.P8552143391170314029

`A184574(A055999(n)+10)`
-/

namespace A184569.P8552143391170314029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A055999 n + 10).toNat

end

end A184569.P8552143391170314029

/-! ## A184569.P15545387721389966863

`A184574(A167614(n+2)+1)`
-/

namespace A184569.P15545387721389966863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A167614 (n + 2) + 1).toNat

end

end A184569.P15545387721389966863

/-!
# A184570: Number of (n+2)X7 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184570, there is no canonical definition to state claims against.
-/

/-! ## A184570.P7187277529026692263

`A184574(A374005(n+1))`
-/

namespace A184570.P7187277529026692263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A374005 (n + 1)).toNat

end

end A184570.P7187277529026692263

/-! ## A184570.P10942335719999703731

`A184574(A167499(n+3))`
-/

namespace A184570.P10942335719999703731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A167499 (n + 3)).toNat

end

end A184570.P10942335719999703731

/-! ## A184570.P8393107914584473510

`A184574(A155212(n)+13)`
-/

namespace A184570.P8393107914584473510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A155212 n + 13).toNat

end

end A184570.P8393107914584473510

/-! ## A184570.P17366191475124918011

`A184574(Δ[A264443(n)])`
-/

namespace A184570.P17366191475124918011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (f1 (n + 1) - f1 n).toNat

end

end A184570.P17366191475124918011

/-! ## A184570.P2002877940657099999

`A184574(A046691(n+3))`
-/

namespace A184570.P2002877940657099999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A046691 (n + 3)).toNat

end

end A184570.P2002877940657099999

/-!
# A184571: Number of (n+2)X8 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184571, there is no canonical definition to state claims against.
-/

/-! ## A184571.P13142756055274370939

`A184574(A374007(n+1))`
-/

namespace A184571.P13142756055274370939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A374007 (n + 1)).toNat

end

end A184571.P13142756055274370939

/-! ## A184571.P5636485509685193234

`A184574(eq[7, A131818(n+1)])`
-/

namespace A184571.P5636485509685193234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184571.P5636485509685193234

/-! ## A184571.P11641664850111420042

`A184574(A052905(n+3))`
-/

namespace A184571.P11641664850111420042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A052905 (n + 3)).toNat

end

end A184571.P11641664850111420042

/-! ## A184571.P18401923696648541128

`A184574(eq[3, A219347(n)])`
-/

namespace A184571.P18401923696648541128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184571.P18401923696648541128

/-! ## A184571.P5720225138220012675

`A184574(eq[5, A193592(n)])`
-/

namespace A184571.P5720225138220012675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184571.P5720225138220012675

/-!
# A184572: Number of (n+2)X9 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184572, there is no canonical definition to state claims against.
-/

/-! ## A184572.P15101294032006826657

`A184574(A374008(n+1))`
-/

namespace A184572.P15101294032006826657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A374008 (n + 1)).toNat

end

end A184572.P15101294032006826657

/-! ## A184572.P14318464375721765466

`A184574(A000217(n+6)+7)`
-/

namespace A184572.P14318464375721765466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A000217 (n + 6) + 7).toNat

end

end A184572.P14318464375721765466

/-! ## A184572.P14899745904244567870

`A184574(eq[8, A131818(n+1)])`
-/

namespace A184572.P14899745904244567870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184572.P14899745904244567870

/-! ## A184572.P14009049968376050186

`A184574(A052905(n+3)+A040035(2*n))`
-/

namespace A184572.P14009049968376050186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A052905 (n + 3) + A040035 (2 * n)).toNat

end

end A184572.P14009049968376050186

/-! ## A184572.P11767411268289185651

`A184574(A055999(n+4))`
-/

namespace A184572.P11767411268289185651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A055999 (n + 4)).toNat

end

end A184572.P11767411268289185651

/-!
# A184573: Number of (n+2)X10 0..3 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A184573, there is no canonical definition to state claims against.
-/

/-! ## A184573.P6226107723858358442

`A184574(A374009(n+1))`
-/

namespace A184573.P6226107723858358442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (A374009 (n + 1)).toNat

end

end A184573.P6226107723858358442

/-! ## A184573.P6702818628229184295

`A184574(eq[13, A066657(n)])`
-/

namespace A184573.P6702818628229184295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184573.P6702818628229184295

/-! ## A184573.P1199958932535125655

`A184574(eq[9, A131818(n+1)])`
-/

namespace A184573.P1199958932535125655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184573.P1199958932535125655

/-! ## A184573.P18310077996857272322

`A184574(eq[5, A219347(n)])`
-/

namespace A184573.P18310077996857272322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184573.P18310077996857272322

/-! ## A184573.P5425433043113257334

`A184574(eq[7, A193592(n)])`
-/

namespace A184573.P5425433043113257334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184574 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184573.P5425433043113257334

/-!
# A184575: G.f.: A(x) = 1+x*(1+x*(1+x*(...(1+x*(...)^(3^n) )...)^27)^9)^3.

The programs for A184575, there is no canonical definition to state claims against.
-/

/-! ## A184575.P2492462793422034156

`A174574(∏[record[∏{d}[n, #]]])`
-/

namespace A184575.P2492462793422034156
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174574 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A184575.P2492462793422034156

/-!
# A184576: G.f.: A(x) = 1+x*(1+x*(1+x*(...(1+x*(...)^(4^n) )...)^64)^16)^4.

The programs for A184576, there is no canonical definition to state claims against.
-/

/-! ## A184576.P15347967827071488553

`A312339(A001222(n!)^(n+1))`
-/

namespace A184576.P15347967827071488553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312339 (A001222 (Nat.factorial n) ^ (n + 1)).toNat

end

end A184576.P15347967827071488553

/-!
# A184578: a(n) = floor((n+1/3)*sqrt(2)), complement of A184579.

The programs for A184578, the canonical program `A184578.P11257813886322068442` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184578 has offset 1).

The definition of A184578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/3)*sqrt(2))` (program `A184578.P11257813886322068442`, by `A184578.P11257813886322068442.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184578.P11257813886322068442

`floor((n+1+1/3)*sqrt(2))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184578

/-- `floor((n+1+1/3)*sqrt(2))` -/
def P11257813886322068442.Spec : Prop :=
  ∀ n, P11257813886322068442.a n = A184578 (n + 1)

theorem P11257813886322068442.correct : P11257813886322068442.Spec := by
  intro n
  simp only [A184578, Nat.add_sub_cancel]

end A184578

/-! ## A184578.P17513103773843053416

`comp[A184579(n+1)-1]+1`
-/

namespace A184578.P17513103773843053416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184579 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184578.P17513103773843053416

namespace A184578

/-- `comp[A184579(n+1)-1]+1` -/
def P17513103773843053416.Spec : Prop :=
  ∀ n, (P17513103773843053416.a n : ℤ) = A184578 (n + 1)

end A184578

/-! ## A184578.P3390771753080059155

`A008620(A288999(3*(n+1))-(6*n+8))`
-/

namespace A184578.P3390771753080059155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A288999 (3 * (n + 1)) - (6 * n + 8 : ℤ)).toNat

end

end A184578.P3390771753080059155

namespace A184578

/-- `A008620(A288999(3*(n+1))-(6*n+8))` -/
def P3390771753080059155.Spec : Prop :=
  ∀ n, P3390771753080059155.a n = A184578 (n + 1)

end A184578

/-! ## A184578.P12260734026208298360

`A008620(A288999(3*(n+1))%(6*n+8))`
-/

namespace A184578.P12260734026208298360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.tmod (A288999 (3 * (n + 1))) (6 * n + 8 : ℤ)).toNat

end

end A184578.P12260734026208298360

namespace A184578

/-- `A008620(A288999(3*(n+1))%(6*n+8))` -/
def P12260734026208298360.Spec : Prop :=
  ∀ n, P12260734026208298360.a n = A184578 (n + 1)

end A184578

/-! ## A184578.P9261403526192673878

`A002264(floor((A000027(3*n+1)+3)*sqrt(2)))`
-/

namespace A184578.P9261403526192673878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌊(A000027 (3 * n + 1) + 3 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A184578.P9261403526192673878

namespace A184578

/-- `A002264(floor((A000027(3*n+1)+3)*sqrt(2)))` -/
def P9261403526192673878.Spec : Prop :=
  ∀ n, P9261403526192673878.a n = A184578 (n + 1)

end A184578

/-! ## A184578.P3419920002552941860

`A002264(A001951(Δ[(n+1)*(n+1)]+n+1))`
-/

namespace A184578.P3419920002552941860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat).toNat

end

end A184578.P3419920002552941860

namespace A184578

/-- `A002264(A001951(Δ[(n+1)*(n+1)]+n+1))` -/
def P3419920002552941860.Spec : Prop :=
  ∀ n, P3419920002552941860.a n = A184578 (n + 1)

end A184578

/-! ## A184578.P4581246776642717297

`A002264(A049472(6*n+8))`
-/

namespace A184578.P4581246776642717297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A049472 (6 * n + 8)).toNat

end

end A184578.P4581246776642717297

namespace A184578

/-- `A002264(A049472(6*n+8))` -/
def P4581246776642717297.Spec : Prop :=
  ∀ n, P4581246776642717297.a n = A184578 (n + 1)

end A184578

/-! ## A184578.P2534432616937710473

`round(∑[sqrt(2)-1/A020303(n+1)])`
-/

namespace A184578.P2534432616937710473
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) - (1 / (A020303 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184578.P2534432616937710473

namespace A184578

/-- `round(∑[sqrt(2)-1/A020303(n+1)])` -/
def P2534432616937710473.Spec : Prop :=
  ∀ n, P2534432616937710473.a n = A184578 (n + 1)

end A184578

/-! ## A184578.P11955090009955044452

`A172471(A240438(n+2))`
-/

namespace A184578.P11955090009955044452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A240438 (n + 2)).toNat

end

end A184578.P11955090009955044452

namespace A184578

/-- `A172471(A240438(n+2))` -/
def P11955090009955044452.Spec : Prop :=
  ∀ n, P11955090009955044452.a n = A184578 (n + 1)

end A184578

/-! ## A184578.P7423505750072773908

`A135034(A340648(2*n+1)-n²)`
-/

namespace A184578.P7423505750072773908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (A340648 (2 * n + 1) - (n ^ 2 : ℤ)).toNat

end

end A184578.P7423505750072773908

namespace A184578

/-- `A135034(A340648(2*n+1)-n²)` -/
def P7423505750072773908.Spec : Prop :=
  ∀ n, P7423505750072773908.a n = A184578 (n + 1)

end A184578

/-!
# A184579: a(n) = floor((n-1/3)*(2+sqrt(2))), complement of A184578.

The programs for A184579, the canonical program `A184579.P11404107568818432842` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184579 has offset 1).

The definition of A184579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1-1/3)*(2+sqrt(2)))` (program `A184579.P11404107568818432842`, by `A184579.P11404107568818432842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184579.P11404107568818432842

`floor((n+1-1/3)*(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184579

/-- `floor((n+1-1/3)*(2+sqrt(2)))` -/
def P11404107568818432842.Spec : Prop :=
  ∀ n, P11404107568818432842.a n = A184579 (n + 1)

theorem P11404107568818432842.correct : P11404107568818432842.Spec := by
  intro n
  simp only [A184579, Nat.add_sub_cancel]

end A184579

/-! ## A184579.P2847794904991363837

`xor(1, A184619(A184618(n+1)))-A184618(n+1)`
-/

namespace A184579.P2847794904991363837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A184619 (A184618 (n + 1)).toNat) - A184618 (n + 1)

end

end A184579.P2847794904991363837

namespace A184579

/-- `xor(1, A184619(A184618(n+1)))-A184618(n+1)` -/
def P2847794904991363837.Spec : Prop :=
  ∀ n, P2847794904991363837.a n = A184579 (n + 1)

end A184579

/-! ## A184579.P2671455755616951808

`A289037(n+1)+A190191(A289037(n+1))-1`
-/

namespace A184579.P2671455755616951808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1) + (A190191 (A289037 (n + 1)).toNat - 1)

end

end A184579.P2671455755616951808

namespace A184579

/-- `A289037(n+1)+A190191(A289037(n+1))-1` -/
def P2671455755616951808.Spec : Prop :=
  ∀ n, P2671455755616951808.a n = A184579 (n + 1)

end A184579

/-! ## A184579.P11703396939412972385

`A004526(A184618(A184618(A184619(n+1))))`
-/

namespace A184579.P11703396939412972385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184618 (A184618 (A184619 (n + 1)).toNat).toNat).toNat

end

end A184579.P11703396939412972385

namespace A184579

/-- `A004526(A184618(A184618(A184619(n+1))))` -/
def P11703396939412972385.Spec : Prop :=
  ∀ n, P11703396939412972385.a n = A184579 (n + 1)

end A184579

/-! ## A184579.P10069046792886706002

`A002264(A003152(6*n+4))`
-/

namespace A184579.P10069046792886706002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003152 (6 * n + 4)).toNat

end

end A184579.P10069046792886706002

namespace A184579

/-- `A002264(A003152(6*n+4))` -/
def P10069046792886706002.Spec : Prop :=
  ∀ n, P10069046792886706002.a n = A184579 (n + 1)

end A184579

/-! ## A184579.P12829486301269213094

`A002264(A001952(Δ[n²]+n+1))`
-/

namespace A184579.P12829486301269213094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A001952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n + 1 : ℤ)).toNat).toNat

end

end A184579.P12829486301269213094

namespace A184579

/-- `A002264(A001952(Δ[n²]+n+1))` -/
def P12829486301269213094.Spec : Prop :=
  ∀ n, P12829486301269213094.a n = A184579 (n + 1)

end A184579

/-! ## A184579.P6656897408697461066

`A002024(A035608(n+1)+1)+2*n`
-/

namespace A184579.P6656897408697461066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A035608 (n + 1) + 1).toNat + (2 * n : ℤ)

end

end A184579.P6656897408697461066

namespace A184579

/-- `A002024(A035608(n+1)+1)+2*n` -/
def P6656897408697461066.Spec : Prop :=
  ∀ n, P6656897408697461066.a n = A184579 (n + 1)

end A184579

/-! ## A184579.P3124068656680318899

`A002024(∑[A042948(n+1)]+1)+2*n`
-/

namespace A184579.P3124068656680318899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + (2 * n : ℤ)

end

end A184579.P3124068656680318899

namespace A184579

/-- `A002024(∑[A042948(n+1)]+1)+2*n` -/
def P3124068656680318899.Spec : Prop :=
  ∀ n, P3124068656680318899.a n = A184579 (n + 1)

end A184579

/-! ## A184579.P1294816160375666872

`A000194(A084849(n+1))+2*n`
-/

namespace A184579.P1294816160375666872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A084849 (n + 1)).toNat + (2 * n : ℤ)

end

end A184579.P1294816160375666872

namespace A184579

/-- `A000194(A084849(n+1))+2*n` -/
def P1294816160375666872.Spec : Prop :=
  ∀ n, P1294816160375666872.a n = A184579 (n + 1)

end A184579

/-!
# A184580: a(n) = floor((n-1/4)*sqrt(2)), complement of A184581.

The programs for A184580, the canonical program `A184580.P38694425202523007` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184580 has offset 1).

The definition of A184580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1-1/4)*sqrt(2))` (program `A184580.P38694425202523007`, by `A184580.P38694425202523007.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184580.P38694425202523007

`floor((n+1-1/4)*sqrt(2))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184580

/-- `floor((n+1-1/4)*sqrt(2))` -/
def P38694425202523007.Spec : Prop :=
  ∀ n, P38694425202523007.a n = A184580 (n + 1)

theorem P38694425202523007.correct : P38694425202523007.Spec := by
  intro n
  simp only [A184580, Nat.add_sub_cancel]

end A184580

/-! ## A184580.P660001916035895396

`ceil(sqrt(C(2*(n+1), 2)+1))-1`
-/

namespace A184580.P660001916035895396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (2 * (n + 1)) 2 + 1 : ℝ)⌉ - 1

end

end A184580.P660001916035895396

namespace A184580

/-- `ceil(sqrt(C(2*(n+1), 2)+1))-1` -/
def P660001916035895396.Spec : Prop :=
  ∀ n, P660001916035895396.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P11018482132592522939

`A186316(n+1)-(n+1)`
-/

namespace A184580.P11018482132592522939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186316 (n + 1) - (n + 1 : ℤ)

end

end A184580.P11018482132592522939

namespace A184580

/-- `A186316(n+1)-(n+1)` -/
def P11018482132592522939.Spec : Prop :=
  ∀ n, P11018482132592522939.a n = A184580 (n + 1)

theorem P11018482132592522939.correct : P11018482132592522939.Spec := by
  intro n
  simp only [A184580, Nat.add_sub_cancel, A184580.P11018482132592522939.a, A184580.P38694425202523007.a, A186316, A186316.P1630878402730518717.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A184580

/-! ## A184580.P7771995133840104595

`ceil(sqrt(∑[A008574(n)+1]))-1`
-/

namespace A184580.P7771995133840104595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)⌉ - 1

end

end A184580.P7771995133840104595

namespace A184580

/-- `ceil(sqrt(∑[A008574(n)+1]))-1` -/
def P7771995133840104595.Spec : Prop :=
  ∀ n, P7771995133840104595.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P3215249393007522565

`ceil(sqrt(A046092(n)+2+n))-1`
-/

namespace A184580.P3215249393007522565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A046092 n + 2 + (n : ℤ) : ℝ)⌉ - 1

end

end A184580.P3215249393007522565

namespace A184580

/-- `ceil(sqrt(A046092(n)+2+n))-1` -/
def P3215249393007522565.Spec : Prop :=
  ∀ n, P3215249393007522565.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P5581436783916178846

`ceil(sqrt(A000217(2*n+1)+1))-1`
-/

namespace A184580.P5581436783916178846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000217 (2 * n + 1) + 1 : ℝ)⌉ - 1

end

end A184580.P5581436783916178846

namespace A184580

/-- `ceil(sqrt(A000217(2*n+1)+1))-1` -/
def P5581436783916178846.Spec : Prop :=
  ∀ n, P5581436783916178846.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P86297884307010399

`ceil(sqrt(∑[A047471(n+1)]+1+n))-1`
-/

namespace A184580.P86297884307010399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ) : ℤ) : ℝ)⌉ - 1

end

end A184580.P86297884307010399

namespace A184580

/-- `ceil(sqrt(∑[A047471(n+1)]+1+n))-1` -/
def P86297884307010399.Spec : Prop :=
  ∀ n, P86297884307010399.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P6745314375402211599

`floor(sqrt(A000217(2*n+1)))%A000040(n+1)`
-/

namespace A184580.P6745314375402211599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A000217 (2 * n + 1))) (A000040 (n + 1))

end

end A184580.P6745314375402211599

namespace A184580

/-- `floor(sqrt(A000217(2*n+1)))%A000040(n+1)` -/
def P6745314375402211599.Spec : Prop :=
  ∀ n, P6745314375402211599.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P13840373270189188188

`A061288(Δ[n²])`
-/

namespace A184580.P13840373270189188188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061288 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A184580.P13840373270189188188

namespace A184580

/-- `A061288(Δ[n²])` -/
def P13840373270189188188.Spec : Prop :=
  ∀ n, P13840373270189188188.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P17186749913011965625

`sqrt(A065737(2*(n+1)))`
-/

namespace A184580.P17186749913011965625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065737 (2 * (n + 1)) : ℝ)

end

end A184580.P17186749913011965625

namespace A184580

/-- `sqrt(A065737(2*(n+1)))` -/
def P17186749913011965625.Spec : Prop :=
  ∀ n, P17186749913011965625.a n = (A184580 (n + 1) : ℝ)

end A184580

/-! ## A184580.P10906744091841049170

`ceil(A184117(2*n+1)/2)`
-/

namespace A184580.P10906744091841049170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184117 (2 * n + 1) : ℚ) / 2⌉

end

end A184580.P10906744091841049170

namespace A184580

/-- `ceil(A184117(2*n+1)/2)` -/
def P10906744091841049170.Spec : Prop :=
  ∀ n, P10906744091841049170.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P12574667354878919407

`ceil(sqrt(A000124(2*n+1)))-1`
-/

namespace A184580.P12574667354878919407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000124 (2 * n + 1) : ℝ)⌉ - 1

end

end A184580.P12574667354878919407

namespace A184580

/-- `ceil(sqrt(A000124(2*n+1)))-1` -/
def P12574667354878919407.Spec : Prop :=
  ∀ n, P12574667354878919407.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P15079881594192961119

`A186221(2*n+1)-(2*n+1)`
-/

namespace A184580.P15079881594192961119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A184580.P15079881594192961119

namespace A184580

/-- `A186221(2*n+1)-(2*n+1)` -/
def P15079881594192961119.Spec : Prop :=
  ∀ n, P15079881594192961119.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P17291702497810296719

`A036715(2*n+1)-(A036713(2*n+1)+1)`
-/

namespace A184580.P17291702497810296719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036715 (2 * n + 1) - (A036713 (2 * n + 1) + 1)

end

end A184580.P17291702497810296719

namespace A184580

/-- `A036715(2*n+1)-(A036713(2*n+1)+1)` -/
def P17291702497810296719.Spec : Prop :=
  ∀ n, P17291702497810296719.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P11610421329042422906

`A074840(A186316(n+1))`
-/

namespace A184580.P11610421329042422906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A186316 (n + 1)).toNat

end

end A184580.P11610421329042422906

namespace A184580

/-- `A074840(A186316(n+1))` -/
def P11610421329042422906.Spec : Prop :=
  ∀ n, P11610421329042422906.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P15574748609569567388

`A110654(A001953(2*n+1)-1)`
-/

namespace A184580.P15574748609569567388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A001953 (2 * n + 1) - 1).toNat

end

end A184580.P15574748609569567388

namespace A184580

/-- `A110654(A001953(2*n+1)-1)` -/
def P15574748609569567388.Spec : Prop :=
  ∀ n, P15574748609569567388.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P15779401832967854686

`A004526(A001953(2*n+1))`
-/

namespace A184580.P15779401832967854686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001953 (2 * n + 1)).toNat

end

end A184580.P15779401832967854686

namespace A184580

/-- `A004526(A001953(2*n+1))` -/
def P15779401832967854686.Spec : Prop :=
  ∀ n, P15779401832967854686.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P13932375862178521013

`A004526(A184117(2*n+1)+1)`
-/

namespace A184580.P13932375862178521013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184117 (2 * n + 1) + 1).toNat

end

end A184580.P13932375862178521013

namespace A184580

/-- `A004526(A184117(2*n+1)+1)` -/
def P13932375862178521013.Spec : Prop :=
  ∀ n, P13932375862178521013.a n = A184580 (n + 1)

end A184580

/-! ## A184580.P3587558360497016556

`A172474(3*(n+1)+n)`
-/

namespace A184580.P3587558360497016556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (3 * (n + 1) + n)

end

end A184580.P3587558360497016556

namespace A184580

/-- `A172474(3*(n+1)+n)` -/
def P3587558360497016556.Spec : Prop :=
  ∀ n, P3587558360497016556.a n = A184580 (n + 1)

theorem P3587558360497016556.correct : P3587558360497016556.Spec := by
  intro n
  simp only [A184580, Nat.add_sub_cancel, A184580.P3587558360497016556.a, A184580.P38694425202523007.a, A172474, A172474.P12160927268933061603.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A184580

/-! ## A184580.P2910803135344526018

`A231149(A063957(n+1))`
-/

namespace A184580.P2910803135344526018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A063957 (n + 1)).toNat

end

end A184580.P2910803135344526018

namespace A184580

/-- `A231149(A063957(n+1))` -/
def P2910803135344526018.Spec : Prop :=
  ∀ n, P2910803135344526018.a n = A184580 (n + 1)

end A184580

/-!
# A184581: a(n) = floor((n + 1/4)*(2 + sqrt(2))).

The programs for A184581, the canonical program `A184581.P1921545556363336383` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184581 has offset 1).

The definition of A184581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/4)*(2+sqrt(2)))` (program `A184581.P1921545556363336383`, by `A184581.P1921545556363336383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184581.P1921545556363336383

`floor((n+1+1/4)*(2+sqrt(2)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184581

/-- `floor((n+1+1/4)*(2+sqrt(2)))` -/
def P1921545556363336383.Spec : Prop :=
  ∀ n, P1921545556363336383.a n = A184581 (n + 1)

theorem P1921545556363336383.correct : P1921545556363336383.Spec := by
  intro n
  simp only [A184581, Nat.add_sub_cancel]

end A184581

/-! ## A184581.P16593728079614610086

`comp[floor(sqrt(C(2*n, 2)))]`
-/

namespace A184581.P16593728079614610086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.choose (2 * n) 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184581.P16593728079614610086

namespace A184581

/-- `comp[floor(sqrt(C(2*n, 2)))]` -/
def P16593728079614610086.Spec : Prop :=
  ∀ n, (P16593728079614610086.a n : ℤ) = A184581 (n + 1)

end A184581

/-! ## A184581.P12077291246905546247

`A257175(2*(n+1))+2*(n+1)`
-/

namespace A184581.P12077291246905546247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257175 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A184581.P12077291246905546247

namespace A184581

/-- `A257175(2*(n+1))+2*(n+1)` -/
def P12077291246905546247.Spec : Prop :=
  ∀ n, P12077291246905546247.a n = A184581 (n + 1)

end A184581

/-! ## A184581.P3164520486055657842

`record[A257175(A014681(n+1))+A014681(n+1)]`
-/

namespace A184581.P3164520486055657842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257175 (A014681 (n + 1)).toNat + A014681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184581.P3164520486055657842

namespace A184581

/-- `record[A257175(A014681(n+1))+A014681(n+1)]` -/
def P3164520486055657842.Spec : Prop :=
  ∀ n, P3164520486055657842.a n = A184581 (n + 1)

end A184581

/-! ## A184581.P6824175313610277669

`round(A184119(2*(n+1)+1)/2)-1`
-/

namespace A184581.P6824175313610277669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184119 (2 * (n + 1) + 1) : ℚ) / 2) - 1

end

end A184581.P6824175313610277669

namespace A184581

/-- `round(A184119(2*(n+1)+1)/2)-1` -/
def P6824175313610277669.Spec : Prop :=
  ∀ n, P6824175313610277669.a n = A184581 (n + 1)

end A184581

/-! ## A184581.P11898328901089343403

`A214848(A184621(n+1)+1)+A184621(n+1)`
-/

namespace A184581.P11898328901089343403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 (A184621 (n + 1) + 1).toNat + A184621 (n + 1)

end

end A184581.P11898328901089343403

namespace A184581

/-- `A214848(A184621(n+1)+1)+A184621(n+1)` -/
def P11898328901089343403.Spec : Prop :=
  ∀ n, P11898328901089343403.a n = A184581 (n + 1)

end A184581

/-! ## A184581.P7966514509082803875

`A289037(n+1)+A214848(A289037(n+1)+1)`
-/

namespace A184581.P7966514509082803875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289037 (n + 1) + A214848 (A289037 (n + 1) + 1).toNat

end

end A184581.P7966514509082803875

namespace A184581

/-- `A289037(n+1)+A214848(A289037(n+1)+1)` -/
def P7966514509082803875.Spec : Prop :=
  ∀ n, P7966514509082803875.a n = A184581 (n + 1)

end A184581

/-! ## A184581.P16796780771010367895

`A197879(A001952(n+1)+1)+A001952(n+1)`
-/

namespace A184581.P16796780771010367895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A001952 (n + 1) + 1).toNat + A001952 (n + 1)

end

end A184581.P16796780771010367895

namespace A184581

/-- `A197879(A001952(n+1)+1)+A001952(n+1)` -/
def P16796780771010367895.Spec : Prop :=
  ∀ n, P16796780771010367895.a n = A184581 (n + 1)

end A184581

/-! ## A184581.P17073263815952890592

`A004526(A184118(2*(n+1))+1)`
-/

namespace A184581.P17073263815952890592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184118 (2 * (n + 1)) + 1).toNat

end

end A184581.P17073263815952890592

namespace A184581

/-- `A004526(A184118(2*(n+1))+1)` -/
def P17073263815952890592.Spec : Prop :=
  ∀ n, P17073263815952890592.a n = A184581 (n + 1)

end A184581

/-! ## A184581.P17179890160564118070

`A049473(2*A001954(n+1))-A136119(n+2)`
-/

namespace A184581.P17179890160564118070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * A001954 (n + 1)).toNat - A136119 (n + 2)

end

end A184581.P17179890160564118070

namespace A184581

/-- `A049473(2*A001954(n+1))-A136119(n+2)` -/
def P17179890160564118070.Spec : Prop :=
  ∀ n, P17179890160564118070.a n = A184581 (n + 1)

end A184581

/-!
# A184582: floor[(n+1/5)r] where r=(1+sqrt(5))/2; complement of A184583.

The programs for A184582, the canonical program `A184582.P127190481809033706` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184582 has offset 1).

The definition of A184582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184582.P127190481809033706

`floor(ϕ*(6/5+n))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184582

/-- `floor(ϕ*(6/5+n))` -/
def P127190481809033706.Spec : Prop :=
  ∀ n, P127190481809033706.a n = A184582 (n + 1)

theorem P127190481809033706.correct : P127190481809033706.Spec := by
  intro n
  simp only [A184582, Nat.add_sub_cancel]

end A184582

/-! ## A184582.P4856493163824088932

`ceil(ϕ*(6/5+n)-A008683(A006881(n+1)))`
-/

namespace A184582.P4856493163824088932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((6 : ℚ) / 5 + (n : ℚ) : ℝ) - (A008683 (A006881 (n + 1)).toNat : ℝ)⌉

end

end A184582.P4856493163824088932

namespace A184582

/-- `ceil(ϕ*(6/5+n)-A008683(A006881(n+1)))` -/
def P4856493163824088932.Spec : Prop :=
  ∀ n, P4856493163824088932.a n = A184582 (n + 1)

end A184582

/-! ## A184582.P11782859302793598202

`A023443(ceil(ϕ*(6/5+n)))`
-/

namespace A184582.P11782859302793598202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.goldenRatio * ((6 : ℚ) / 5 + (n : ℚ) : ℝ)⌉.toNat

end

end A184582.P11782859302793598202

namespace A184582

/-- `A023443(ceil(ϕ*(6/5+n)))` -/
def P11782859302793598202.Spec : Prop :=
  ∀ n, P11782859302793598202.a n = A184582 (n + 1)

end A184582

/-! ## A184582.P14451764305820812322

`ceil(ϕ*(6/5+n)-A014963(12*n+6))`
-/

namespace A184582.P14451764305820812322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * ((6 : ℚ) / 5 + (n : ℚ) : ℝ) - (A014963 (12 * n + 6) : ℝ)⌉

end

end A184582.P14451764305820812322

namespace A184582

/-- `ceil(ϕ*(6/5+n)-A014963(12*n+6))` -/
def P14451764305820812322.Spec : Prop :=
  ∀ n, P14451764305820812322.a n = A184582 (n + 1)

end A184582

/-! ## A184582.P1588281687690514065

`A033270(A000040(ceil(ϕ*(6/5+n))))`
-/

namespace A184582.P1588281687690514065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A000040 ⌈Real.goldenRatio * ((6 : ℚ) / 5 + (n : ℚ) : ℝ)⌉.toNat).toNat

end

end A184582.P1588281687690514065

namespace A184582

/-- `A033270(A000040(ceil(ϕ*(6/5+n))))` -/
def P1588281687690514065.Spec : Prop :=
  ∀ n, P1588281687690514065.a n = A184582 (n + 1)

end A184582

/-!
# A184583: floor[(n-1/5)(1+r)], where r=(1+sqrt(5))/2; complement of A184582.

The programs for A184583, the canonical program `A184583.P6025531363869124613` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184583 has offset 1).

The definition of A184583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184583.P6025531363869124613

`floor((n-(1/5-1))*ϕ²)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184583

/-- `floor((n-(1/5-1))*ϕ²)` -/
def P6025531363869124613.Spec : Prop :=
  ∀ n, P6025531363869124613.a n = A184583 (n + 1)

theorem P6025531363869124613.correct : P6025531363869124613.Spec := by
  intro n
  simp only [A184583, Nat.add_sub_cancel]

end A184583

/-! ## A184583.P9962406656567129059

`A279054(floor((ϕ+2)*(n+1)))-A101864(n+1)`
-/

namespace A184583.P9962406656567129059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279054 ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋.toNat - A101864 (n + 1)

end

end A184583.P9962406656567129059

namespace A184583

/-- `A279054(floor((ϕ+2)*(n+1)))-A101864(n+1)` -/
def P9962406656567129059.Spec : Prop :=
  ∀ n, P9962406656567129059.a n = A184583 (n + 1)

end A184583

/-! ## A184583.P3814003033557370868

`A279054(ceil(2*n+1+ϕ*(n+1)))%A101864(n+1)`
-/

namespace A184583.P3814003033557370868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279054 ⌈(2 * n + 1 : ℝ) + Real.goldenRatio * (n + 1 : ℝ)⌉.toNat) (A101864 (n + 1))

end

end A184583.P3814003033557370868

namespace A184583

/-- `A279054(ceil(2*n+1+ϕ*(n+1)))%A101864(n+1)` -/
def P3814003033557370868.Spec : Prop :=
  ∀ n, P3814003033557370868.a n = A184583 (n + 1)

end A184583

/-! ## A184583.P2879312976246203682

`A078489(A081835(n+1))`
-/

namespace A184583.P2879312976246203682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078489 (A081835 (n + 1)).toNat

end

end A184583.P2879312976246203682

namespace A184583

/-- `A078489(A081835(n+1))` -/
def P2879312976246203682.Spec : Prop :=
  ∀ n, P2879312976246203682.a n = A184583 (n + 1)

end A184583

/-! ## A184583.P12507080734141869997

`∑[A043529((n+1)²)+A005614(n+3)]`
-/

namespace A184583.P12507080734141869997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 ((n + 1) ^ 2) + A005614 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184583.P12507080734141869997

namespace A184583

/-- `∑[A043529((n+1)²)+A005614(n+3)]` -/
def P12507080734141869997.Spec : Prop :=
  ∀ n, P12507080734141869997.a n = A184583 (n + 1)

end A184583

/-! ## A184583.P3490151986799712777

`A001950(n+5)-A019451(A260218(2*n+5))`
-/

namespace A184583.P3490151986799712777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 5) - A019451 (A260218 (2 * n + 5)).toNat

end

end A184583.P3490151986799712777

namespace A184583

/-- `A001950(n+5)-A019451(A260218(2*n+5))` -/
def P3490151986799712777.Spec : Prop :=
  ∀ n, P3490151986799712777.a n = A184583 (n + 1)

end A184583

/-! ## A184583.P15474964643074706830

`∑[A276757(n+1)%2+2]-1`
-/

namespace A184583.P15474964643074706830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276757 (n + 1)) 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A184583.P15474964643074706830

namespace A184583

/-- `∑[A276757(n+1)%2+2]-1` -/
def P15474964643074706830.Spec : Prop :=
  ∀ n, P15474964643074706830.a n = A184583 (n + 1)

end A184583

/-! ## A184583.P16372638932310902142

`A003622(n+1)+and(A187944(n+1), A276757(n+1))`
-/

namespace A184583.P16372638932310902142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + Int.land (A187944 (n + 1)) (A276757 (n + 1))

end

end A184583.P16372638932310902142

namespace A184583

/-- `A003622(n+1)+and(A187944(n+1), A276757(n+1))` -/
def P16372638932310902142.Spec : Prop :=
  ∀ n, P16372638932310902142.a n = A184583 (n + 1)

end A184583

/-!
# A184584: floor[(n-1/3)r], where r=sqrt(5); complement of A184585.

The programs for A184584, the canonical program `A184584.P4544522844543927769` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184584 has offset 1).

The definition of A184584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184584.P4544522844543927769

`A002264(A022839(3*n+2))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A184584

/-- `A002264(A022839(3*n+2))` -/
def P4544522844543927769.Spec : Prop :=
  ∀ n, P4544522844543927769.a n = A184584 (n + 1)

theorem P4544522844543927769.correct : P4544522844543927769.Spec := by
  intro n
  simp only [A184584, Nat.add_sub_cancel]

end A184584

/-! ## A184584.P9578333104951861273

`A152467(2*A022839(3*n+2))`
-/

namespace A184584.P9578333104951861273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (2 * A022839 (3 * n + 2)).toNat

end

end A184584.P9578333104951861273

namespace A184584

/-- `A152467(2*A022839(3*n+2))` -/
def P9578333104951861273.Spec : Prop :=
  ∀ n, P9578333104951861273.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P14095672198197746698

`A249351(A006519(n+3))+A022848(n)`
-/

namespace A184584.P14095672198197746698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249351 (A006519 (n + 3)).toNat + A022848 n

end

end A184584.P14095672198197746698

namespace A184584

/-- `A249351(A006519(n+3))+A022848(n)` -/
def P14095672198197746698.Spec : Prop :=
  ∀ n, P14095672198197746698.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P18417681737555367029

`A022848(n)+A010051(A002327(n+1))`
-/

namespace A184584.P18417681737555367029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n + A010051 (A002327 (n + 1)).toNat

end

end A184584.P18417681737555367029

namespace A184584

/-- `A022848(n)+A010051(A002327(n+1))` -/
def P18417681737555367029.Spec : Prop :=
  ∀ n, P18417681737555367029.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P6740540529388329406

`A023532(A145022(n+1))+A022848(n)`
-/

namespace A184584.P6740540529388329406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A145022 (n + 1)).toNat + A022848 n

end

end A184584.P6740540529388329406

namespace A184584

/-- `A023532(A145022(n+1))+A022848(n)` -/
def P6740540529388329406.Spec : Prop :=
  ∀ n, P6740540529388329406.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P7170721780507939224

`A065331(A246428(3*n+2))+A022848(n)`
-/

namespace A184584.P7170721780507939224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A246428 (3 * n + 2)).toNat + A022848 n

end

end A184584.P7170721780507939224

namespace A184584

/-- `A065331(A246428(3*n+2))+A022848(n)` -/
def P7170721780507939224.Spec : Prop :=
  ∀ n, P7170721780507939224.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P14829912397248968861

`A022848(n)+A008683(A144255(n+1))`
-/

namespace A184584.P14829912397248968861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n + A008683 (A144255 (n + 1)).toNat

end

end A184584.P14829912397248968861

namespace A184584

/-- `A022848(n)+A008683(A144255(n+1))` -/
def P14829912397248968861.Spec : Prop :=
  ∀ n, P14829912397248968861.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P11352687027053937658

`A005361(A194638(n+1))+round(n*sqrt(5))`
-/

namespace A184584.P11352687027053937658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A194638 (n + 1)).toNat + SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (5 : ℝ))

end

end A184584.P11352687027053937658

namespace A184584

/-- `A005361(A194638(n+1))+round(n*sqrt(5))` -/
def P11352687027053937658.Spec : Prop :=
  ∀ n, P11352687027053937658.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P10944531139445093635

`A022848(n)+A001222(A220072(3*n+1))`
-/

namespace A184584.P10944531139445093635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n + A001222 (A220072 (3 * n + 1)).toNat

end

end A184584.P10944531139445093635

namespace A184584

/-- `A022848(n)+A001222(A220072(3*n+1))` -/
def P10944531139445093635.Spec : Prop :=
  ∀ n, P10944531139445093635.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P18316042019523396373

`A022848(n)+A001055(A137812(3*n+2))`
-/

namespace A184584.P18316042019523396373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022848 n + A001055 (A137812 (3 * n + 2)).toNat

end

end A184584.P18316042019523396373

namespace A184584

/-- `A022848(n)+A001055(A137812(3*n+2))` -/
def P18316042019523396373.Spec : Prop :=
  ∀ n, P18316042019523396373.a n = A184584 (n + 1)

end A184584

/-! ## A184584.P6193303903564617067

`A067513(A001359(2*(n+1)))+A022848(n)`
-/

namespace A184584.P6193303903564617067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (A001359 (2 * (n + 1))).toNat + A022848 n

end

end A184584.P6193303903564617067

namespace A184584

/-- `A067513(A001359(2*(n+1)))+A022848(n)` -/
def P6193303903564617067.Spec : Prop :=
  ∀ n, P6193303903564617067.a n = A184584 (n + 1)

end A184584

/-!
# A184585: a(n) = floor(n*s + c*s), where r = sqrt(5), c = 1/3, s = r/(r-1); complement of A184584.

The programs for A184585, the canonical program `A184585.P1386653981140706094` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184585 has offset 1).

The definition of A184585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184585.P1386653981140706094

`floor(A003231(3*n+4)/6)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A184585

/-- `floor(A003231(3*n+4)/6)` -/
def P1386653981140706094.Spec : Prop :=
  ∀ n, P1386653981140706094.a n = A184585 (n + 1)

theorem P1386653981140706094.correct : P1386653981140706094.Spec := by
  intro n
  simp only [A184585, Nat.add_sub_cancel]

end A184585

/-! ## A184585.P1232034628582277414

`floor(A108598(3*(n+1)+1)/3)`
-/

namespace A184585.P1232034628582277414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108598 (3 * (n + 1) + 1) : ℚ) / 3⌋

end

end A184585.P1232034628582277414

namespace A184585

/-- `floor(A108598(3*(n+1)+1)/3)` -/
def P1232034628582277414.Spec : Prop :=
  ∀ n, P1232034628582277414.a n = A184585 (n + 1)

end A184585

/-! ## A184585.P7973940492073528296

`A152467(A189662(3*n+5))+1+n`
-/

namespace A184585.P7973940492073528296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A189662 (3 * n + 5)).toNat + 1 + (n : ℤ)

end

end A184585.P7973940492073528296

namespace A184585

/-- `A152467(A189662(3*n+5))+1+n` -/
def P7973940492073528296.Spec : Prop :=
  ∀ n, P7973940492073528296.a n = A184585 (n + 1)

end A184585

/-! ## A184585.P5617846401445189836

`A008620(A108598(3*n+4))-1`
-/

namespace A184585.P5617846401445189836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A108598 (3 * n + 4)).toNat - 1

end

end A184585.P5617846401445189836

namespace A184585

/-- `A008620(A108598(3*n+4))-1` -/
def P5617846401445189836.Spec : Prop :=
  ∀ n, P5617846401445189836.a n = A184585 (n + 1)

end A184585

/-! ## A184585.P5408357172250031012

`A062157(2*(n+2))+A008620(A108598(3*n+4))`
-/

namespace A184585.P5408357172250031012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 2)) + A008620 (A108598 (3 * n + 4)).toNat

end

end A184585.P5408357172250031012

namespace A184585

/-- `A062157(2*(n+2))+A008620(A108598(3*n+4))` -/
def P5408357172250031012.Spec : Prop :=
  ∀ n, P5408357172250031012.a n = A184585 (n + 1)

end A184585

/-! ## A184585.P1720281927090065357

`floor(log(A126478(n)))+2`
-/

namespace A184585.P1720281927090065357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A126478 n : ℝ)⌋ + 2

end

end A184585.P1720281927090065357

namespace A184585

/-- `floor(log(A126478(n)))+2` -/
def P1720281927090065357.Spec : Prop :=
  ∀ n, P1720281927090065357.a n = A184585 (n + 1)

end A184585

/-! ## A184585.P17571159836159857129

`∑[A000045(Δ[A276881(n+3)])]`
-/

namespace A184585.P17571159836159857129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276881 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184585.P17571159836159857129

namespace A184585

/-- `∑[A000045(Δ[A276881(n+3)])]` -/
def P17571159836159857129.Spec : Prop :=
  ∀ n, P17571159836159857129.a n = A184585 (n + 1)

end A184585

/-!
# A184586: a(n) = floor((n-1/2)*r), where r=sqrt(5); complement of A184587.

The programs for A184586, the canonical program `A184586.P8182539394358662321` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184586 has offset 1).

The definition of A184586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184586.P8182539394358662321

`floor(sqrt(∑[10*n]+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184586

/-- `floor(sqrt(∑[10*n]+1))` -/
def P8182539394358662321.Spec : Prop :=
  ∀ n, (P8182539394358662321.a n : ℤ) = A184586 (n + 1)

theorem P8182539394358662321.correct : P8182539394358662321.Spec := by
  intro n
  simp only [A184586, Nat.add_sub_cancel]

end A184586

/-! ## A184586.P16000698778161845182

`round(or(1, 2*n)/ϕ+n)`
-/

namespace A184586.P16000698778161845182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (2 * n) : ℝ) / Real.goldenRatio + (n : ℝ))

end

end A184586.P16000698778161845182

namespace A184586

/-- `round(or(1, 2*n)/ϕ+n)` -/
def P16000698778161845182.Spec : Prop :=
  ∀ n, P16000698778161845182.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P7389823860738010956

`round(xor(1, 2*n)/ϕ+n)`
-/

namespace A184586.P7389823860738010956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (2 * n) : ℝ) / Real.goldenRatio + (n : ℝ))

end

end A184586.P7389823860738010956

namespace A184586

/-- `round(xor(1, 2*n)/ϕ+n)` -/
def P7389823860738010956.Spec : Prop :=
  ∀ n, P7389823860738010956.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P15598148557141903584

`record[round(ϕ*xor(1, n))]-(n+1)`
-/

namespace A184586.P15598148557141903584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.xor 1 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A184586.P15598148557141903584

namespace A184586

/-- `record[round(ϕ*xor(1, n))]-(n+1)` -/
def P15598148557141903584.Spec : Prop :=
  ∀ n, P15598148557141903584.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P4121515201715091298

`round(ϕ*or(1, 2*n)-(n+1))`
-/

namespace A184586.P4121515201715091298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.lor 1 (2 * n) : ℝ) - (n + 1 : ℝ))

end

end A184586.P4121515201715091298

namespace A184586

/-- `round(ϕ*or(1, 2*n)-(n+1))` -/
def P4121515201715091298.Spec : Prop :=
  ∀ n, P4121515201715091298.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P6339328742020365581

`round(ϕ*xor(1, 2*n)-(n+1))`
-/

namespace A184586.P6339328742020365581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (Nat.xor 1 (2 * n) : ℝ) - (n + 1 : ℝ))

end

end A184586.P6339328742020365581

namespace A184586

/-- `round(ϕ*xor(1, 2*n)-(n+1))` -/
def P6339328742020365581.Spec : Prop :=
  ∀ n, P6339328742020365581.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P188551619443898931

`round(ϕ/acot(2*n+1)-(n+1))`
-/

namespace A184586.P188551619443898931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio / SequenceMachineLib.acot (2 * n + 1 : ℝ) - (n + 1 : ℝ))

end

end A184586.P188551619443898931

namespace A184586

/-- `round(ϕ/acot(2*n+1)-(n+1))` -/
def P188551619443898931.Spec : Prop :=
  ∀ n, P188551619443898931.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P14607392754998887504

`round((2*n+1)/ϕ)+gcd(n, 2*n)`
-/

namespace A184586.P14607392754998887504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / Real.goldenRatio) + (Nat.gcd n (2 * n) : ℤ)

end

end A184586.P14607392754998887504

namespace A184586

/-- `round((2*n+1)/ϕ)+gcd(n, 2*n)` -/
def P14607392754998887504.Spec : Prop :=
  ∀ n, P14607392754998887504.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P12627243819281666770

`round(ϕ*(2*n+1))-C(n+1, n)`
-/

namespace A184586.P12627243819281666770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (2 * n + 1 : ℝ)) - (Nat.choose (n + 1) n : ℤ)

end

end A184586.P12627243819281666770

namespace A184586

/-- `round(ϕ*(2*n+1))-C(n+1, n)` -/
def P12627243819281666770.Spec : Prop :=
  ∀ n, P12627243819281666770.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P11415552264035670961

`round(C(2*n+1, 2*n)/ϕ+n)`
-/

namespace A184586.P11415552264035670961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio + (n : ℝ))

end

end A184586.P11415552264035670961

namespace A184586

/-- `round(C(2*n+1, 2*n)/ϕ+n)` -/
def P11415552264035670961.Spec : Prop :=
  ∀ n, P11415552264035670961.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P11985379501115637314

`comp[A004938(n)+n]+n`
-/

namespace A184586.P11985379501115637314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004938 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A184586.P11985379501115637314

namespace A184586

/-- `comp[A004938(n)+n]+n` -/
def P11985379501115637314.Spec : Prop :=
  ∀ n, (P11985379501115637314.a n : ℤ) = A184586 (n + 1)

end A184586

/-! ## A184586.P4480514433784581441

`A184747(n+1)-(n+1)`
-/

namespace A184586.P4480514433784581441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184747 (n + 1) - (n + 1 : ℤ)

end

end A184586.P4480514433784581441

namespace A184586

/-- `A184747(n+1)-(n+1)` -/
def P4480514433784581441.Spec : Prop :=
  ∀ n, P4480514433784581441.a n = A184586 (n + 1)

theorem P4480514433784581441.correct : P4480514433784581441.Spec := by
  intro n
  simp only [A184586, Nat.add_sub_cancel, A184586.P4480514433784581441.a, A184586.P8182539394358662321.f1, A184586.P8182539394358662321.a, A184747, A184747.P12092686040311310565.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A184586

/-! ## A184586.P6052231088871895782

`ceil(sqrt(A062786(n+1)+1))-1`
-/

namespace A184586.P6052231088871895782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A062786 (n + 1) + 1 : ℝ)⌉ - 1

end

end A184586.P6052231088871895782

namespace A184586

/-- `ceil(sqrt(A062786(n+1)+1))-1` -/
def P6052231088871895782.Spec : Prop :=
  ∀ n, P6052231088871895782.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P11562508550305651755

`A184739(n+1)-A016789(n)`
-/

namespace A184586.P11562508550305651755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184739 (n + 1) - A016789 n

end

end A184586.P11562508550305651755

namespace A184586

/-- `A184739(n+1)-A016789(n)` -/
def P11562508550305651755.Spec : Prop :=
  ∀ n, P11562508550305651755.a n = A184586 (n + 1)

theorem P11562508550305651755.correct : P11562508550305651755.Spec := by
  intro n
  simp only [A184586, Nat.add_sub_cancel, A184586.P11562508550305651755.a, A184586.P8182539394358662321.f1, A184586.P8182539394358662321.a, A016789, A016789.P8277564872725303677.a, A184739, A184739.P7836081269569052161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A184586

/-! ## A184586.P14773691585751505042

`comp[A007067(A007067(2*n))]+n`
-/

namespace A184586.P14773691585751505042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007067 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A184586.P14773691585751505042

namespace A184586

/-- `comp[A007067(A007067(2*n))]+n` -/
def P14773691585751505042.Spec : Prop :=
  ∀ n, (P14773691585751505042.a n : ℤ) = A184586 (n + 1)

end A184586

/-! ## A184586.P14833662830378062827

`A194151(Δ[n²])`
-/

namespace A184586.P14833662830378062827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194151 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A184586.P14833662830378062827

namespace A184586

/-- `A194151(Δ[n²])` -/
def P14833662830378062827.Spec : Prop :=
  ∀ n, P14833662830378062827.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P11575770087258360437

`A101803(Δ[n²])+n`
-/

namespace A184586.P11575770087258360437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A184586.P11575770087258360437

namespace A184586

/-- `A101803(Δ[n²])+n` -/
def P11575770087258360437.Spec : Prop :=
  ∀ n, P11575770087258360437.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P3628917703742865334

`A184656(Δ[n²])-n`
-/

namespace A184586.P3628917703742865334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A184586.P3628917703742865334

namespace A184586

/-- `A184656(Δ[n²])-n` -/
def P3628917703742865334.Spec : Prop :=
  ∀ n, P3628917703742865334.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P9249170169033756241

`A007067(Δ[n²])-(n+1)`
-/

namespace A184586.P9249170169033756241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n + 1 : ℤ)

end

end A184586.P9249170169033756241

namespace A184586

/-- `A007067(Δ[n²])-(n+1)` -/
def P9249170169033756241.Spec : Prop :=
  ∀ n, P9249170169033756241.a n = A184586 (n + 1)

end A184586

/-! ## A184586.P17083503051186827660

`A058066(2*n+1)-(2*n+1)`
-/

namespace A184586.P17083503051186827660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058066 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A184586.P17083503051186827660

namespace A184586

/-- `A058066(2*n+1)-(2*n+1)` -/
def P17083503051186827660.Spec : Prop :=
  ∀ n, P17083503051186827660.a n = A184586 (n + 1)

end A184586

/-!
# A184587: a(n) = floor((n+1/2)*s), where s=(5+sqrt(5))/4; complement of A184586.

The programs for A184587, the canonical program `A184587.P7278886579996164431` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184587 has offset 1).

The definition of A184587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184587.P7278886579996164431

`floor((3/2+n)*(ϕ/2+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184587

/-- `floor((3/2+n)*(ϕ/2+1))` -/
def P7278886579996164431.Spec : Prop :=
  ∀ n, P7278886579996164431.a n = A184587 (n + 1)

theorem P7278886579996164431.correct : P7278886579996164431.Spec := by
  intro n
  simp only [A184587, Nat.add_sub_cancel]

end A184587

/-! ## A184587.P1506733402747775045

`comp[A184586(n+1)-1]+1`
-/

namespace A184587.P1506733402747775045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184586 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184587.P1506733402747775045

namespace A184587

/-- `comp[A184586(n+1)-1]+1` -/
def P1506733402747775045.Spec : Prop :=
  ∀ n, (P1506733402747775045.a n : ℤ) = A184587 (n + 1)

end A184587

/-! ## A184587.P13439653034518728477

`∪[A022839(n+1), A194152(n+1)]`
-/

namespace A184587.P13439653034518728477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184587.P13439653034518728477

namespace A184587

/-- `∪[A022839(n+1), A194152(n+1)]` -/
def P13439653034518728477.Spec : Prop :=
  ∀ n, (P13439653034518728477.a n : ℤ) = A184587 (n + 1)

end A184587

/-! ## A184587.P5956515001932422163

`ceil((A007064(n+2)+n)/2)`
-/

namespace A184587.P5956515001932422163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007064 (n + 2) + (n : ℤ) : ℚ) / 2⌉

end

end A184587.P5956515001932422163

namespace A184587

/-- `ceil((A007064(n+2)+n)/2)` -/
def P5956515001932422163.Spec : Prop :=
  ∀ n, P5956515001932422163.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P14243058493766691557

`∑[A006340(xor(1, A000201(n+1)))]`
-/

namespace A184587.P14243058493766691557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 (Int.xor 1 (A000201 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184587.P14243058493766691557

namespace A184587

/-- `∑[A006340(xor(1, A000201(n+1)))]` -/
def P14243058493766691557.Spec : Prop :=
  ∀ n, P14243058493766691557.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P78467893714457554

`∑[A006340(A004442(A000201(n+1)))]`
-/

namespace A184587.P78467893714457554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 (A004442 (A000201 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184587.P78467893714457554

namespace A184587

/-- `∑[A006340(A004442(A000201(n+1)))]` -/
def P78467893714457554.Spec : Prop :=
  ∀ n, P78467893714457554.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P2121432926767641720

`A008619(A184657(n+1)-n)+n`
-/

namespace A184587.P2121432926767641720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184657 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A184587.P2121432926767641720

namespace A184587

/-- `A008619(A184657(n+1)-n)+n` -/
def P2121432926767641720.Spec : Prop :=
  ∀ n, P2121432926767641720.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P12909637980843099926

`A002265(A026355(2*(n+2)))+n+1`
-/

namespace A184587.P12909637980843099926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A026355 (2 * (n + 2))).toNat + (n + 1 : ℤ)

end

end A184587.P12909637980843099926

namespace A184587

/-- `A002265(A026355(2*(n+2)))+n+1` -/
def P12909637980843099926.Spec : Prop :=
  ∀ n, P12909637980843099926.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P6250060226207473427

`A008619(A184657(n+1)+n)`
-/

namespace A184587.P6250060226207473427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184657 (n + 1) + (n : ℤ)).toNat

end

end A184587.P6250060226207473427

namespace A184587

/-- `A008619(A184657(n+1)+n)` -/
def P6250060226207473427.Spec : Prop :=
  ∀ n, P6250060226207473427.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P6289240557506744623

`A065033(A007064(n+2)+n)`
-/

namespace A184587.P6289240557506744623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A007064 (n + 2) + (n : ℤ)).toNat

end

end A184587.P6289240557506744623

namespace A184587

/-- `A065033(A007064(n+2)+n)` -/
def P6289240557506744623.Spec : Prop :=
  ∀ n, P6289240557506744623.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P18051000006660725991

`A110654(A007064(n+2)+n)`
-/

namespace A184587.P18051000006660725991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A007064 (n + 2) + (n : ℤ)).toNat

end

end A184587.P18051000006660725991

namespace A184587

/-- `A110654(A007064(n+2)+n)` -/
def P18051000006660725991.Spec : Prop :=
  ∀ n, P18051000006660725991.a n = A184587 (n + 1)

end A184587

/-! ## A184587.P3709585131761102340

`A004526(A007064(n+2)+1+n)`
-/

namespace A184587.P3709585131761102340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007064 (n + 2) + 1 + (n : ℤ)).toNat

end

end A184587.P3709585131761102340

namespace A184587

/-- `A004526(A007064(n+2)+1+n)` -/
def P3709585131761102340.Spec : Prop :=
  ∀ n, P3709585131761102340.a n = A184587 (n + 1)

end A184587

/-!
# A184588: floor[(n+1/2)*e/(e-1)].

The programs for A184588, the canonical program `A184588.P8695420227893433901` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184588 has offset 1).

The definition of A184588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1+1/2)*e/(e-1))` (program `A184588.P8695420227893433901`, by `A184588.P8695420227893433901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184588.P8695420227893433901

`floor((n+1+1/2)*e/(e-1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184588

/-- `floor((n+1+1/2)*e/(e-1))` -/
def P8695420227893433901.Spec : Prop :=
  ∀ n, P8695420227893433901.a n = A184588 (n + 1)

theorem P8695420227893433901.correct : P8695420227893433901.Spec := by
  intro n
  simp only [A184588, Nat.add_sub_cancel]

end A184588

/-! ## A184588.P7885966958778352549

`record[3-A024578(n+2)+n]`
-/

namespace A184588.P7885966958778352549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A024578 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184588.P7885966958778352549

namespace A184588

/-- `record[3-A024578(n+2)+n]` -/
def P7885966958778352549.Spec : Prop :=
  ∀ n, P7885966958778352549.a n = A184588 (n + 1)

end A184588

/-! ## A184588.P7955942175751685171

`ceil(A184590(2*(n+1))/2)`
-/

namespace A184588.P7955942175751685171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A184590 (2 * (n + 1)) : ℚ) / 2⌉

end

end A184588.P7955942175751685171

namespace A184588

/-- `ceil(A184590(2*(n+1))/2)` -/
def P7955942175751685171.Spec : Prop :=
  ∀ n, P7955942175751685171.a n = A184588 (n + 1)

end A184588

/-! ## A184588.P14678815287122623916

`A065033(A184590(2*(n+1)))`
-/

namespace A184588.P14678815287122623916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184590 (2 * (n + 1))).toNat

end

end A184588.P14678815287122623916

namespace A184588

/-- `A065033(A184590(2*(n+1)))` -/
def P14678815287122623916.Spec : Prop :=
  ∀ n, P14678815287122623916.a n = A184588 (n + 1)

end A184588

/-! ## A184588.P14506075066715415523

`A004526(A054385(2*n+3))`
-/

namespace A184588.P14506075066715415523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A054385 (2 * n + 3)).toNat

end

end A184588.P14506075066715415523

namespace A184588

/-- `A004526(A054385(2*n+3))` -/
def P14506075066715415523.Spec : Prop :=
  ∀ n, P14506075066715415523.a n = A184588 (n + 1)

end A184588

/-! ## A184588.P7061076878807015793

`A065033(A054385(2*n+3)-1)`
-/

namespace A184588.P7061076878807015793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A054385 (2 * n + 3) - 1).toNat

end

end A184588.P7061076878807015793

namespace A184588

/-- `A065033(A054385(2*n+3)-1)` -/
def P7061076878807015793.Spec : Prop :=
  ∀ n, P7061076878807015793.a n = A184588 (n + 1)

end A184588

/-! ## A184588.P10500144443015174546

`A110654(A054385(2*n+3)-1)`
-/

namespace A184588.P10500144443015174546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A054385 (2 * n + 3) - 1).toNat

end

end A184588.P10500144443015174546

namespace A184588

/-- `A110654(A054385(2*n+3)-1)` -/
def P10500144443015174546.Spec : Prop :=
  ∀ n, P10500144443015174546.a n = A184588 (n + 1)

end A184588

/-! ## A184588.P16045101341093161637

`A000194(∑[A045572(2*(n+1))])`
-/

namespace A184588.P16045101341093161637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184588.P16045101341093161637

namespace A184588

/-- `A000194(∑[A045572(2*(n+1))])` -/
def P16045101341093161637.Spec : Prop :=
  ∀ n, P16045101341093161637.a n = A184588 (n + 1)

end A184588

/-! ## A184588.P11824931990627199110

`A000194(∑[A004525(10*n+7)])`
-/

namespace A184588.P11824931990627199110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (10 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184588.P11824931990627199110

namespace A184588

/-- `A000194(∑[A004525(10*n+7)])` -/
def P11824931990627199110.Spec : Prop :=
  ∀ n, P11824931990627199110.a n = A184588 (n + 1)

end A184588

/-!
# A184589: floor(n*e-1); complement of A184590.

The programs for A184589, the canonical program `A184589.P12266623560414705143` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184589 has offset 1).

The definition of A184589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*e-1)` (program `A184589.P12266623560414705143`, by `A184589.P12266623560414705143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184589.P12266623560414705143

`floor((n+1)*e-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184589

/-- `floor((n+1)*e-1)` -/
def P12266623560414705143.Spec : Prop :=
  ∀ n, P12266623560414705143.a n = A184589 (n + 1)

theorem P12266623560414705143.correct : P12266623560414705143.Spec := by
  intro n
  simp only [A184589, Nat.add_sub_cancel]

end A184589

/-! ## A184589.P398068114936102657

`xor(-1, -floor(e*(n+1)))`
-/

namespace A184589.P398068114936102657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-⌊Real.exp 1 * (n + 1 : ℝ)⌋)

end

end A184589.P398068114936102657

namespace A184589

/-- `xor(-1, -floor(e*(n+1)))` -/
def P398068114936102657.Spec : Prop :=
  ∀ n, P398068114936102657.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P5128370978359489813

`ceil(e*(n+1)-gcd(2, 2*n))`
-/

namespace A184589.P5128370978359489813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (n + 1 : ℝ) - (Nat.gcd 2 (2 * n) : ℝ)⌉

end

end A184589.P5128370978359489813

namespace A184589

/-- `ceil(e*(n+1)-gcd(2, 2*n))` -/
def P5128370978359489813.Spec : Prop :=
  ∀ n, P5128370978359489813.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P937053079613226815

`A022843(n+1)-1`
-/

namespace A184589.P937053079613226815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 (n + 1) - 1

end

end A184589.P937053079613226815

namespace A184589

/-- `A022843(n+1)-1` -/
def P937053079613226815.Spec : Prop :=
  ∀ n, P937053079613226815.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P6792079379721562904

`∑[A276859(n+1)]-1`
-/

namespace A184589.P6792079379721562904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A184589.P6792079379721562904

namespace A184589

/-- `∑[A276859(n+1)]-1` -/
def P6792079379721562904.Spec : Prop :=
  ∀ n, P6792079379721562904.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P17477378817384652313

`A000572(n+1)-(n+2)`
-/

namespace A184589.P17477378817384652313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000572 (n + 1) - (n + 2 : ℤ)

end

end A184589.P17477378817384652313

namespace A184589

/-- `A000572(n+1)-(n+2)` -/
def P17477378817384652313.Spec : Prop :=
  ∀ n, P17477378817384652313.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P17848763420935101985

`ceil((A022843(n+1)+A022843(n))/2)`
-/

namespace A184589.P17848763420935101985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022843 (n + 1) + A022843 n : ℚ) / 2⌉

end

end A184589.P17848763420935101985

namespace A184589

/-- `ceil((A022843(n+1)+A022843(n))/2)` -/
def P17848763420935101985.Spec : Prop :=
  ∀ n, P17848763420935101985.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P11443707176677479574

`A121384(n+1)-2`
-/

namespace A184589.P11443707176677479574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121384 (n + 1) - 2

end

end A184589.P11443707176677479574

namespace A184589

/-- `A121384(n+1)-2` -/
def P11443707176677479574.Spec : Prop :=
  ∀ n, P11443707176677479574.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P7574197143429553672

`Δ[∑[A022843(n)]-n]`
-/

namespace A184589.P7574197143429553672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184589.P7574197143429553672

namespace A184589

/-- `Δ[∑[A022843(n)]-n]` -/
def P7574197143429553672.Spec : Prop :=
  ∀ n, P7574197143429553672.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P7399002072480142622

`record[A108599(n+1)-1]`
-/

namespace A184589.P7399002072480142622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184589.P7399002072480142622

namespace A184589

/-- `record[A108599(n+1)-1]` -/
def P7399002072480142622.Spec : Prop :=
  ∀ n, P7399002072480142622.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P10778768781026572064

`A108599(A054385(n+1))-1`
-/

namespace A184589.P10778768781026572064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (A054385 (n + 1)).toNat - 1

end

end A184589.P10778768781026572064

namespace A184589

/-- `A108599(A054385(n+1))-1` -/
def P10778768781026572064.Spec : Prop :=
  ∀ n, P10778768781026572064.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P7471349843992659729

`A279607(2*(n+1))-1`
-/

namespace A184589.P7471349843992659729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (2 * (n + 1)) - 1

end

end A184589.P7471349843992659729

namespace A184589

/-- `A279607(2*(n+1))-1` -/
def P7471349843992659729.Spec : Prop :=
  ∀ n, P7471349843992659729.a n = A184589 (n + 1)

end A184589

/-! ## A184589.P10861457065306631421

`eq[A078219(n+1), A225593(n+1)]`
-/

namespace A184589.P10861457065306631421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225593 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184589.P10861457065306631421

namespace A184589

/-- `eq[A078219(n+1), A225593(n+1)]` -/
def P10861457065306631421.Spec : Prop :=
  ∀ n, (P10861457065306631421.a n : ℤ) = A184589 (n + 1)

end A184589

/-! ## A184589.P8416324939623511531

`lt[2*A108599(n+1), A008486(n)]`
-/

namespace A184589.P8416324939623511531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A184589.P8416324939623511531

namespace A184589

/-- `lt[2*A108599(n+1), A008486(n)]` -/
def P8416324939623511531.Spec : Prop :=
  ∀ n, (P8416324939623511531.a n : ℤ) = A184589 (n + 1)

end A184589

/-! ## A184589.P4152347588150700673

`lt[A108599(n+1), A005590(n)+n]`
-/

namespace A184589.P4152347588150700673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A184589.P4152347588150700673

namespace A184589

/-- `lt[A108599(n+1), A005590(n)+n]` -/
def P4152347588150700673.Spec : Prop :=
  ∀ n, (P4152347588150700673.a n : ℤ) = A184589 (n + 1)

end A184589

/-! ## A184589.P4183874496993145076

`lt[A108599(n+1), A010052(n)+n]`
-/

namespace A184589.P4183874496993145076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A184589.P4183874496993145076

namespace A184589

/-- `lt[A108599(n+1), A010052(n)+n]` -/
def P4183874496993145076.Spec : Prop :=
  ∀ n, (P4183874496993145076.a n : ℤ) = A184589 (n + 1)

end A184589

/-! ## A184589.P15783126538078403192

`lt[A108599(n+1), A000005(n+1)+n]`
-/

namespace A184589.P15783126538078403192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A184589.P15783126538078403192

namespace A184589

/-- `lt[A108599(n+1), A000005(n+1)+n]` -/
def P15783126538078403192.Spec : Prop :=
  ∀ n, (P15783126538078403192.a n : ℤ) = A184589 (n + 1)

end A184589

/-! ## A184589.P10415882567800892519

`lt[A108599(n+1)+A008683(n+1), n]`
-/

namespace A184589.P10415882567800892519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108599 (n + 1) + A008683 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A184589.P10415882567800892519

namespace A184589

/-- `lt[A108599(n+1)+A008683(n+1), n]` -/
def P10415882567800892519.Spec : Prop :=
  ∀ n, (P10415882567800892519.a n : ℤ) = A184589 (n + 1)

end A184589

/-! ## A184589.P17200279380040626691

`lt[A288156(n)+A108599(n+1), n+1]`
-/

namespace A184589.P17200279380040626691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 n + A108599 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A184589.P17200279380040626691

namespace A184589

/-- `lt[A288156(n)+A108599(n+1), n+1]` -/
def P17200279380040626691.Spec : Prop :=
  ∀ n, (P17200279380040626691.a n : ℤ) = A184589 (n + 1)

end A184589

/-!
# A184590: floor[(n*e+1)/(e-1)]; complement of A184589.

The programs for A184590, the canonical program `A184590.P14811025334315729903` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184590 has offset 1).

The definition of A184590 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((n+1)*e+1)/(e-1))` (program `A184590.P14811025334315729903`, by `A184590.P14811025334315729903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184590.P14811025334315729903

`floor(((n+1)*e+1)/(e-1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184590

/-- `floor(((n+1)*e+1)/(e-1))` -/
def P14811025334315729903.Spec : Prop :=
  ∀ n, P14811025334315729903.a n = A184590 (n + 1)

theorem P14811025334315729903.correct : P14811025334315729903.Spec := by
  intro n
  simp only [A184590, Nat.add_sub_cancel]

end A184590

/-! ## A184590.P14854168015249472107

`comp[A022843(n)-2]+1`
-/

namespace A184590.P14854168015249472107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184590.P14854168015249472107

namespace A184590

/-- `comp[A022843(n)-2]+1` -/
def P14854168015249472107.Spec : Prop :=
  ∀ n, (P14854168015249472107.a n : ℤ) = A184590 (n + 1)

end A184590

/-! ## A184590.P13166626591891418081

`comp[A184589(n+1)-1]+1`
-/

namespace A184590.P13166626591891418081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184589 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184590.P13166626591891418081

namespace A184590

/-- `comp[A184589(n+1)-1]+1` -/
def P13166626591891418081.Spec : Prop :=
  ∀ n, (P13166626591891418081.a n : ℤ) = A184590 (n + 1)

end A184590

/-! ## A184590.P3600489573253109280

`A054385(n+2)-1`
-/

namespace A184590.P3600489573253109280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 2) - 1

end

end A184590.P3600489573253109280

namespace A184590

/-- `A054385(n+2)-1` -/
def P3600489573253109280.Spec : Prop :=
  ∀ n, P3600489573253109280.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P2843809439149563432

`∑[abs(Δ[A054385(n+1)])]`
-/

namespace A184590.P2843809439149563432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P2843809439149563432

namespace A184590

/-- `∑[abs(Δ[A054385(n+1)])]` -/
def P2843809439149563432.Spec : Prop :=
  ∀ n, P2843809439149563432.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P3370696668409221816

`A292664(n+2)-(n+3)`
-/

namespace A184590.P3370696668409221816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 2) - (n + 3 : ℤ)

end

end A184590.P3370696668409221816

namespace A184590

/-- `A292664(n+2)-(n+3)` -/
def P3370696668409221816.Spec : Prop :=
  ∀ n, P3370696668409221816.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P16436240671122154789

`∑[round(Δ[A330179(n+1)/3])]`
-/

namespace A184590.P16436240671122154789
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330179 (n + 1) : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P16436240671122154789

namespace A184590

/-- `∑[round(Δ[A330179(n+1)/3])]` -/
def P16436240671122154789.Spec : Prop :=
  ∀ n, P16436240671122154789.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P6262064634413821994

`∑[A000005(Δ[A054385(n+1)])]`
-/

namespace A184590.P6262064634413821994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P6262064634413821994

namespace A184590

/-- `∑[A000005(Δ[A054385(n+1)])]` -/
def P6262064634413821994.Spec : Prop :=
  ∀ n, P6262064634413821994.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P15808129066862952673

`∑[A000041(Δ[A054385(n+1)])]`
-/

namespace A184590.P15808129066862952673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P15808129066862952673

namespace A184590

/-- `∑[A000041(Δ[A054385(n+1)])]` -/
def P15808129066862952673.Spec : Prop :=
  ∀ n, P15808129066862952673.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P16576719466300806460

`∑[A000108(Δ[A054385(n+1)])]`
-/

namespace A184590.P16576719466300806460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P16576719466300806460

namespace A184590

/-- `∑[A000108(Δ[A054385(n+1)])]` -/
def P16576719466300806460.Spec : Prop :=
  ∀ n, P16576719466300806460.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P12009641383387991532

`∑[A005117(Δ[A054385(n+1)])]`
-/

namespace A184590.P12009641383387991532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P12009641383387991532

namespace A184590

/-- `∑[A005117(Δ[A054385(n+1)])]` -/
def P12009641383387991532.Spec : Prop :=
  ∀ n, P12009641383387991532.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P14836222282675116474

`∑[A006530(Δ[A054385(n+1)])]`
-/

namespace A184590.P14836222282675116474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P14836222282675116474

namespace A184590

/-- `∑[A006530(Δ[A054385(n+1)])]` -/
def P14836222282675116474.Spec : Prop :=
  ∀ n, P14836222282675116474.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P12354034523061431540

`∑[A014963(Δ[A054385(n+1)])]`
-/

namespace A184590.P12354034523061431540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P12354034523061431540

namespace A184590

/-- `∑[A014963(Δ[A054385(n+1)])]` -/
def P12354034523061431540.Spec : Prop :=
  ∀ n, P12354034523061431540.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P3301589649776296306

`∑[A055498(Δ[A054385(n+1)])]`
-/

namespace A184590.P3301589649776296306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P3301589649776296306

namespace A184590

/-- `∑[A055498(Δ[A054385(n+1)])]` -/
def P3301589649776296306.Spec : Prop :=
  ∀ n, P3301589649776296306.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P9024390238097917066

`∑[A294849(Δ[A054385(n+1)])]`
-/

namespace A184590.P9024390238097917066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294849 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P9024390238097917066

namespace A184590

/-- `∑[A294849(Δ[A054385(n+1)])]` -/
def P9024390238097917066.Spec : Prop :=
  ∀ n, P9024390238097917066.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P9252436469834251500

`∑[A000196(Δ[A054385(n+1)]²)]`
-/

namespace A184590.P9252436469834251500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P9252436469834251500

namespace A184590

/-- `∑[A000196(Δ[A054385(n+1)]²)]` -/
def P9252436469834251500.Spec : Prop :=
  ∀ n, P9252436469834251500.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P737632103692921634

`∑[A001222(Δ[A054385(n+1)])+1]`
-/

namespace A184590.P737632103692921634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P737632103692921634

namespace A184590

/-- `∑[A001222(Δ[A054385(n+1)])+1]` -/
def P737632103692921634.Spec : Prop :=
  ∀ n, P737632103692921634.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P2639398780617627232

`∑[A002620(Δ[A054385(n+1)]+1)]`
-/

namespace A184590.P2639398780617627232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P2639398780617627232

namespace A184590

/-- `∑[A002620(Δ[A054385(n+1)]+1)]` -/
def P2639398780617627232.Spec : Prop :=
  ∀ n, P2639398780617627232.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P1864092140188330364

`∑[A000196(Δ[A054385(n+1)]+2)]`
-/

namespace A184590.P1864092140188330364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184590.P1864092140188330364

namespace A184590

/-- `∑[A000196(Δ[A054385(n+1)]+2)]` -/
def P1864092140188330364.Spec : Prop :=
  ∀ n, P1864092140188330364.a n = A184590 (n + 1)

end A184590

/-! ## A184590.P7765889361230216047

`A022806(n+2)-A121384(n+2)`
-/

namespace A184590.P7765889361230216047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022806 (n + 2) - A121384 (n + 2)

end

end A184590.P7765889361230216047

namespace A184590

/-- `A022806(n+2)-A121384(n+2)` -/
def P7765889361230216047.Spec : Prop :=
  ∀ n, P7765889361230216047.a n = A184590 (n + 1)

end A184590

/-!
# A184591: a(n) = floor(n*(Pi-1)-1); complement of A184592.

The programs for A184591, the canonical program `A184591.P17823725030191139967` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184591 has offset 1).

The definition of A184591 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*(π-1)-1)` (program `A184591.P17823725030191139967`, by `A184591.P17823725030191139967.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184591.P17823725030191139967

`floor((n+1)*(π-1)-1)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184591

/-- `floor((n+1)*(π-1)-1)` -/
def P17823725030191139967.Spec : Prop :=
  ∀ n, P17823725030191139967.a n = A184591 (n + 1)

theorem P17823725030191139967.correct : P17823725030191139967.Spec := by
  intro n
  simp only [A184591, Nat.add_sub_cancel]

end A184591

/-! ## A184591.P78843493576748005

`A022844(n+1)-(n+2)`
-/

namespace A184591.P78843493576748005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) - (n + 2 : ℤ)

end

end A184591.P78843493576748005

namespace A184591

/-- `A022844(n+1)-(n+2)` -/
def P78843493576748005.Spec : Prop :=
  ∀ n, P78843493576748005.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P18376614976859145869

`A063459(n+1)-1`
-/

namespace A184591.P18376614976859145869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 (n + 1) - 1

end

end A184591.P18376614976859145869

namespace A184591

/-- `A063459(n+1)-1` -/
def P18376614976859145869.Spec : Prop :=
  ∀ n, P18376614976859145869.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P14344032721317529397

`A187320(n+1)+n`
-/

namespace A184591.P14344032721317529397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 (n + 1) + (n : ℤ)

end

end A184591.P14344032721317529397

namespace A184591

/-- `A187320(n+1)+n` -/
def P14344032721317529397.Spec : Prop :=
  ∀ n, P14344032721317529397.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P11630428710693796590

`Δ[∑[A063459(n)]-n]`
-/

namespace A184591.P11630428710693796590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184591.P11630428710693796590

namespace A184591

/-- `Δ[∑[A063459(n)]-n]` -/
def P11630428710693796590.Spec : Prop :=
  ∀ n, P11630428710693796590.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P13909843164458142590

`A121381(n+1)-(n+3)`
-/

namespace A184591.P13909843164458142590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n + 1) - (n + 3 : ℤ)

end

end A184591.P13909843164458142590

namespace A184591

/-- `A121381(n+1)-(n+3)` -/
def P13909843164458142590.Spec : Prop :=
  ∀ n, P13909843164458142590.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P13265565365149699056

`A004084(n+2)-(n+3)`
-/

namespace A184591.P13265565365149699056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 2) - (n + 3 : ℤ)

end

end A184591.P13265565365149699056

namespace A184591

/-- `A004084(n+2)-(n+3)` -/
def P13265565365149699056.Spec : Prop :=
  ∀ n, P13265565365149699056.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P9866449983696907929

`A063460(A187320(n+1))`
-/

namespace A184591.P9866449983696907929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (A187320 (n + 1)).toNat

end

end A184591.P9866449983696907929

namespace A184591

/-- `A063460(A187320(n+1))` -/
def P9866449983696907929.Spec : Prop :=
  ∀ n, P9866449983696907929.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P466172750717797216

`A108591(A054386(n+1))-(n+2)`
-/

namespace A184591.P466172750717797216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A054386 (n + 1)).toNat - (n + 2 : ℤ)

end

end A184591.P466172750717797216

namespace A184591

/-- `A108591(A054386(n+1))-(n+2)` -/
def P466172750717797216.Spec : Prop :=
  ∀ n, P466172750717797216.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P18300820677524783464

`A023443(A063459(n+1))`
-/

namespace A184591.P18300820677524783464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063459 (n + 1)).toNat

end

end A184591.P18300820677524783464

namespace A184591

/-- `A023443(A063459(n+1))` -/
def P18300820677524783464.Spec : Prop :=
  ∀ n, P18300820677524783464.a n = A184591 (n + 1)

end A184591

/-! ## A184591.P17686212229401172973

`∑[(char[7*n]+1)*A165573(n²)+1]`
-/

namespace A184591.P17686212229401172973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A165573 (n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184591.P17686212229401172973

namespace A184591

/-- `∑[(char[7*n]+1)*A165573(n²)+1]` -/
def P17686212229401172973.Spec : Prop :=
  ∀ n, P17686212229401172973.a n = A184591 (n + 1)

end A184591

/-!
# A184592: a(n) = floor((n*(Pi-1) + 1)/(Pi-2)); complement of A184591.

The programs for A184592, the canonical program `A184592.P1519198869280651758` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184592 has offset 1).

The definition of A184592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((n+1)*(π-1)+1)/(π-2))` (program `A184592.P1519198869280651758`, by `A184592.P1519198869280651758.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184592.P1519198869280651758

`floor(((n+1)*(π-1)+1)/(π-2))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A184592

/-- `floor(((n+1)*(π-1)+1)/(π-2))` -/
def P1519198869280651758.Spec : Prop :=
  ∀ n, P1519198869280651758.a n = A184592 (n + 1)

theorem P1519198869280651758.correct : P1519198869280651758.Spec := by
  intro n
  simp only [A184592, Nat.add_sub_cancel]

end A184592

/-! ## A184592.P14200769731300645607

`comp[A063459(n)-2]+1`
-/

namespace A184592.P14200769731300645607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184592.P14200769731300645607

namespace A184592

/-- `comp[A063459(n)-2]+1` -/
def P14200769731300645607.Spec : Prop :=
  ∀ n, (P14200769731300645607.a n : ℤ) = A184592 (n + 1)

end A184592

/-! ## A184592.P14324982712862829025

`comp[A184591(n+1)-1]+1`
-/

namespace A184592.P14324982712862829025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184591 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184592.P14324982712862829025

namespace A184592

/-- `comp[A184591(n+1)-1]+1` -/
def P14324982712862829025.Spec : Prop :=
  ∀ n, (P14324982712862829025.a n : ℤ) = A184592 (n + 1)

end A184592

/-! ## A184592.P2394412060457675030

`comp[A022844(n+1)-(n+3)]+1`
-/

namespace A184592.P2394412060457675030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n + 1) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A184592.P2394412060457675030

namespace A184592

/-- `comp[A022844(n+1)-(n+3)]+1` -/
def P2394412060457675030.Spec : Prop :=
  ∀ n, (P2394412060457675030.a n : ℤ) = A184592 (n + 1)

end A184592

/-! ## A184592.P10323883439202703910

`comp[A063459(n)+A057428(n)]`
-/

namespace A184592.P10323883439202703910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n + A057428 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184592.P10323883439202703910

namespace A184592

/-- `comp[A063459(n)+A057428(n)]` -/
def P10323883439202703910.Spec : Prop :=
  ∀ n, (P10323883439202703910.a n : ℤ) = A184592 (n + 1)

end A184592

/-! ## A184592.P7221604272315234148

`comp[A063459(n)-A057427(n)]`
-/

namespace A184592.P7221604272315234148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063459 n - A057427 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184592.P7221604272315234148

namespace A184592

/-- `comp[A063459(n)-A057427(n)]` -/
def P7221604272315234148.Spec : Prop :=
  ∀ n, (P7221604272315234148.a n : ℤ) = A184592 (n + 1)

end A184592

/-! ## A184592.P17960516356024410883

`A063460(n+2)-1`
-/

namespace A184592.P17960516356024410883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 2) - 1

end

end A184592.P17960516356024410883

namespace A184592

/-- `A063460(n+2)-1` -/
def P17960516356024410883.Spec : Prop :=
  ∀ n, P17960516356024410883.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P12365175558042051803

`∑[abs(Δ[A063460(n+1)])]`
-/

namespace A184592.P12365175558042051803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P12365175558042051803

namespace A184592

/-- `∑[abs(Δ[A063460(n+1)])]` -/
def P12365175558042051803.Spec : Prop :=
  ∀ n, P12365175558042051803.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P8080400413978963895

`∑[A000005(Δ[A063460(n+1)])]`
-/

namespace A184592.P8080400413978963895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P8080400413978963895

namespace A184592

/-- `∑[A000005(Δ[A063460(n+1)])]` -/
def P8080400413978963895.Spec : Prop :=
  ∀ n, P8080400413978963895.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P5327682518723320301

`∑[A000015(Δ[A063460(n+1)])]`
-/

namespace A184592.P5327682518723320301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P5327682518723320301

namespace A184592

/-- `∑[A000015(Δ[A063460(n+1)])]` -/
def P5327682518723320301.Spec : Prop :=
  ∀ n, P5327682518723320301.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P6596380979942564581

`∑[A001651(Δ[A063460(n+1)])]`
-/

namespace A184592.P6596380979942564581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P6596380979942564581

namespace A184592

/-- `∑[A001651(Δ[A063460(n+1)])]` -/
def P6596380979942564581.Spec : Prop :=
  ∀ n, P6596380979942564581.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P12165596342976897381

`∑[A002605(Δ[A063460(n+1)])]`
-/

namespace A184592.P12165596342976897381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P12165596342976897381

namespace A184592

/-- `∑[A002605(Δ[A063460(n+1)])]` -/
def P12165596342976897381.Spec : Prop :=
  ∀ n, P12165596342976897381.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P16879581413577282211

`∑[A006530(Δ[A063460(n+1)])]`
-/

namespace A184592.P16879581413577282211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P16879581413577282211

namespace A184592

/-- `∑[A006530(Δ[A063460(n+1)])]` -/
def P16879581413577282211.Spec : Prop :=
  ∀ n, P16879581413577282211.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P5878703823138600513

`∑[A014963(Δ[A063460(n+1)])]`
-/

namespace A184592.P5878703823138600513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063460 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P5878703823138600513

namespace A184592

/-- `∑[A014963(Δ[A063460(n+1)])]` -/
def P5878703823138600513.Spec : Prop :=
  ∀ n, P5878703823138600513.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P633402530901898540

`A023443(A063460(n+2))`
-/

namespace A184592.P633402530901898540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063460 (n + 2)).toNat

end

end A184592.P633402530901898540

namespace A184592

/-- `A023443(A063460(n+2))` -/
def P633402530901898540.Spec : Prop :=
  ∀ n, P633402530901898540.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P9441956795790487257

`A289207(A063460(n+2)+1)`
-/

namespace A184592.P9441956795790487257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A063460 (n + 2) + 1).toNat

end

end A184592.P9441956795790487257

namespace A184592

/-- `A289207(A063460(n+2)+1)` -/
def P9441956795790487257.Spec : Prop :=
  ∀ n, P9441956795790487257.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P5438799197272101518

`∑[A003842(A140670(n+1)²)]`
-/

namespace A184592.P5438799197272101518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A140670 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P5438799197272101518

namespace A184592

/-- `∑[A003842(A140670(n+1)²)]` -/
def P5438799197272101518.Spec : Prop :=
  ∀ n, P5438799197272101518.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P7715739846555979585

`∑[1-A016251(A276391(n+1))]`
-/

namespace A184592.P7715739846555979585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A016251 (A276391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P7715739846555979585

namespace A184592

/-- `∑[1-A016251(A276391(n+1))]` -/
def P7715739846555979585.Spec : Prop :=
  ∀ n, P7715739846555979585.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P2995697280331193338

`∑[A049705(A180642(xor(n, n+1)))]`
-/

namespace A184592.P2995697280331193338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A180642 (Nat.xor n (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P2995697280331193338

namespace A184592

/-- `∑[A049705(A180642(xor(n, n+1)))]` -/
def P2995697280331193338.Spec : Prop :=
  ∀ n, P2995697280331193338.a n = A184592 (n + 1)

end A184592

/-! ## A184592.P11119436104308846022

`∑[A040001(A266629(xor(n, n+1)))]`
-/

namespace A184592.P11119436104308846022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A266629 (Nat.xor n (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184592.P11119436104308846022

namespace A184592

/-- `∑[A040001(A266629(xor(n, n+1)))]` -/
def P11119436104308846022.Spec : Prop :=
  ∀ n, P11119436104308846022.a n = A184592 (n + 1)

end A184592

/-!
# A184593: 5n - A101306: sum_{i=1..n} the last digit of prime(i).

The programs for A184593, the canonical program `A184593.P9834984849118974199` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184593 has offset 1).

The definition of A184593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184593.P5136902549746165154

`∑[A277097(n+1)]`
-/

namespace A184593.P5136902549746165154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P5136902549746165154

namespace A184593

/-- `∑[A277097(n+1)]` -/
def P5136902549746165154.Spec : Prop :=
  ∀ n, P5136902549746165154.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P9834984849118974199

`∑[5-A007652(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A184593

/-- `∑[5-A007652(n+1)]` -/
def P9834984849118974199.Spec : Prop :=
  ∀ n, P9834984849118974199.a n = A184593 (n + 1)

theorem P9834984849118974199.correct : P9834984849118974199.Spec := by
  intro n
  simp only [A184593, Nat.add_sub_cancel]

end A184593

/-! ## A184593.P6012291219042755189

`∑[A072003(n+1)-5]`
-/

namespace A184593.P6012291219042755189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072003 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P6012291219042755189

namespace A184593

/-- `∑[A072003(n+1)-5]` -/
def P6012291219042755189.Spec : Prop :=
  ∀ n, P6012291219042755189.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P8359662093709532347

`∑[5-A000040(n+1)%10]`
-/

namespace A184593.P8359662093709532347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (A000040 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P8359662093709532347

namespace A184593

/-- `∑[5-A000040(n+1)%10]` -/
def P8359662093709532347.Spec : Prop :=
  ∀ n, P8359662093709532347.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P6512079350612566758

`5*(n+1)-A101306(n+1)`
-/

namespace A184593.P6512079350612566758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A101306 (n + 1)

end

end A184593.P6512079350612566758

namespace A184593

/-- `5*(n+1)-A101306(n+1)` -/
def P6512079350612566758.Spec : Prop :=
  ∀ n, P6512079350612566758.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P16895646652275996472

`A122754(n+1)-5*(n+1)`
-/

namespace A184593.P16895646652275996472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122754 (n + 1) - (5 * (n + 1) : ℤ)

end

end A184593.P16895646652275996472

namespace A184593

/-- `A122754(n+1)-5*(n+1)` -/
def P16895646652275996472.Spec : Prop :=
  ∀ n, P16895646652275996472.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P3088097802314697186

`∑[4-record[A000010(n+1)]%10]`
-/

namespace A184593.P3088097802314697186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P3088097802314697186

namespace A184593

/-- `∑[4-record[A000010(n+1)]%10]` -/
def P3088097802314697186.Spec : Prop :=
  ∀ n, P3088097802314697186.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P4453884693309054786

`∑[5-record[A006530(n+2)]%10]`
-/

namespace A184593.P4453884693309054786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P4453884693309054786

namespace A184593

/-- `∑[5-record[A006530(n+2)]%10]` -/
def P4453884693309054786.Spec : Prop :=
  ∀ n, P4453884693309054786.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P13428332785393515093

`∑[5-record[A020639(n+2)]%10]`
-/

namespace A184593.P13428332785393515093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P13428332785393515093

namespace A184593

/-- `∑[5-record[A020639(n+2)]%10]` -/
def P13428332785393515093.Spec : Prop :=
  ∀ n, P13428332785393515093.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P17666432772605955747

`∑[5-record[A014963(n+2)]%10]`
-/

namespace A184593.P17666432772605955747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P17666432772605955747

namespace A184593

/-- `∑[5-record[A014963(n+2)]%10]` -/
def P17666432772605955747.Spec : Prop :=
  ∀ n, P17666432772605955747.a n = A184593 (n + 1)

end A184593

/-! ## A184593.P2476170569997635122

`∑[5-A065881(A000040(n+1))]`
-/

namespace A184593.P2476170569997635122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A065881 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184593.P2476170569997635122

namespace A184593

/-- `∑[5-A065881(A000040(n+1))]` -/
def P2476170569997635122.Spec : Prop :=
  ∀ n, P2476170569997635122.a n = A184593 (n + 1)

end A184593

/-!
# A184595: 1/4 the number of (n+1) X (n+1) binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184595, there is no canonical definition to state claims against.
-/

/-! ## A184595.P6858765909768062025

`A184604((n+1)²+n²)`
-/

namespace A184595.P6858765909768062025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 ((n + 1) ^ 2 + n ^ 2)

end

end A184595.P6858765909768062025

/-! ## A184595.P13411584522506028334

`record[A184604(n+1)*A203994(n+1)]`
-/

namespace A184595.P13411584522506028334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (n + 1) * A203994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184595.P13411584522506028334

/-! ## A184595.P5439070634205786478

`A184604(A001844(n))+A034486(n+1)`
-/

namespace A184595.P5439070634205786478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A001844 n).toNat + A034486 (n + 1)

end

end A184595.P5439070634205786478

/-! ## A184595.P4389189272612836085

`A184604(A001844(n))%A184612(3*n+5)`
-/

namespace A184595.P4389189272612836085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184604 (A001844 n).toNat) (A184612 (3 * n + 5))

end

end A184595.P4389189272612836085

/-!
# A184596: 1/4 the number of (n+1) X 2 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184596, there is no canonical definition to state claims against.
-/

/-! ## A184596.P16044029851649029955

`A184604(∑[n]+1)`
-/

namespace A184596.P16044029851649029955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184596.P16044029851649029955

/-! ## A184596.P16995514212484226874

`record[A010054(n)*A184604(n+1)]`
-/

namespace A184596.P16995514212484226874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184596.P16995514212484226874

/-! ## A184596.P2037148589711535824

`record[root(A184604(n+1), A176151(n))]`
-/

namespace A184596.P2037148589711535824
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184604 (n + 1) : ℝ) ^ (1 / (A176151 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184596.P2037148589711535824

/-! ## A184596.P5971597483797830718

`record[gcd(A002262(n), A184604(n+1))]`
-/

namespace A184596.P5971597483797830718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184604 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184596.P5971597483797830718

/-! ## A184596.P3676744311771728896

`record[root(A184604(n+1), A008292(n+1))]`
-/

namespace A184596.P3676744311771728896
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184604 (n + 1) : ℝ) ^ (1 / (A008292 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184596.P3676744311771728896

/-!
# A184597: 1/4 the number of (n+1) X 3 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184597, there is no canonical definition to state claims against.
-/

/-! ## A184597.P7249121388930129370

`A184604(∑[n+1]+2)`
-/

namespace A184597.P7249121388930129370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184597.P7249121388930129370

/-! ## A184597.P8575056809062724307

`record[A010054(n)*A184604(n+2)]`
-/

namespace A184597.P8575056809062724307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184604 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184597.P8575056809062724307

/-! ## A184597.P3973283963517653775

`record[gcd(A002262(n), A184604(n+2))]`
-/

namespace A184597.P3973283963517653775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A184604 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184597.P3973283963517653775

/-! ## A184597.P14349664243216235645

`record[gcd(A184604(n+3), A206306(n+1))]`
-/

namespace A184597.P14349664243216235645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184604 (n + 3)) (A206306 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184597.P14349664243216235645

/-!
# A184598: 1/4 the number of (n+1) X 4 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184598, there is no canonical definition to state claims against.
-/

/-! ## A184598.P4616692260910076990

`A184604(∑[n+2]+4)`
-/

namespace A184598.P4616692260910076990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184598.P4616692260910076990

/-! ## A184598.P3898519548027577151

`lcm((-1)^n, A184604(A167614(n+1)))`
-/

namespace A184598.P3898519548027577151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A184604 (A167614 (n + 1)).toNat)

end

end A184598.P3898519548027577151

/-! ## A184598.P2797231540594728420

`A185238(n)+A184604(A167614(n+1))`
-/

namespace A184598.P2797231540594728420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A184604 (A167614 (n + 1)).toNat

end

end A184598.P2797231540594728420

/-! ## A184598.P15268148142825711970

`A184604(A167614(n+1))%A184599(n+1)`
-/

namespace A184598.P15268148142825711970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184604 (A167614 (n + 1)).toNat) (A184599 (n + 1))

end

end A184598.P15268148142825711970

/-! ## A184598.P15080838171439109845

`A184604(A034856(n+2))%A165402(2*(n+1))`
-/

namespace A184598.P15080838171439109845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184604 (A034856 (n + 2)).toNat) (A165402 (2 * (n + 1)))

end

end A184598.P15080838171439109845

/-!
# A184599: 1/4 the number of (n+1) X 5 binary arrays with equal numbers of 2 X 2 subblocks with sums 1 and 3.

The programs for A184599, there is no canonical definition to state claims against.
-/

/-! ## A184599.P9869159381450043100

`A184604(A374004(n+1))`
-/

namespace A184599.P9869159381450043100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A374004 (n + 1)).toNat

end

end A184599.P9869159381450043100

/-! ## A184599.P10546484276966826403

`A184604(A141214(n)+7)`
-/

namespace A184599.P10546484276966826403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A141214 n + 7).toNat

end

end A184599.P10546484276966826403

/-! ## A184599.P12824027105090344255

`A184604(A052905(n)+9)`
-/

namespace A184599.P12824027105090344255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A052905 n + 9).toNat

end

end A184599.P12824027105090344255

/-! ## A184599.P8101540342742306054

`A184604(A055999(n)+10)`
-/

namespace A184599.P8101540342742306054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A055999 n + 10).toNat

end

end A184599.P8101540342742306054

/-! ## A184599.P15837463830398676637

`A184604(A167614(n+2)+1)`
-/

namespace A184599.P15837463830398676637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184604 (A167614 (n + 2) + 1).toNat

end

end A184599.P15837463830398676637

