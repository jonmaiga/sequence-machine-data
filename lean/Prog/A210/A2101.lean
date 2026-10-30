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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A210100: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210100, the canonical program `A210100.P8529661348548323236` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210100 has offset 1).

The definition of A210100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210100.P14295862535864007480

`ogf((7-12x+4x^2)/(1-6x+7x^2-2x^3))`
-/

namespace A210100.P14295862535864007480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -12, 4] [1, -6, 7, -2] n

end

end A210100.P14295862535864007480

namespace A210100

/-- `ogf((7-12x+4x^2)/(1-6x+7x^2-2x^3))` -/
def P14295862535864007480.Spec : Prop :=
  ∀ n, P14295862535864007480.a n = A210100 (n + 1)

end A210100

/-! ## A210100.P8529661348548323236

`6*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=7, a(1)=30, a(2)=135`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A210100

/-- `6*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P8529661348548323236.Spec : Prop :=
  ∀ n, P8529661348548323236.a n = A210100 (n + 1)

theorem P8529661348548323236.correct : P8529661348548323236.Spec := by
  intro n
  simp only [A210100, Nat.add_sub_cancel]

end A210100

/-! ## A210100.P12618477652863597791

`ceil(A052984(n+2)/2)`
-/

namespace A210100.P12618477652863597791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052984 (n + 2) : ℚ) / 2⌉

end

end A210100.P12618477652863597791

namespace A210100

/-- `ceil(A052984(n+2)/2)` -/
def P12618477652863597791.Spec : Prop :=
  ∀ n, P12618477652863597791.a n = A210100 (n + 1)

end A210100

/-! ## A210100.P5104372673372785545

`∑[A107839(n+1)]+2`
-/

namespace A210100.P5104372673372785545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A210100.P5104372673372785545

namespace A210100

/-- `∑[A107839(n+1)]+2` -/
def P5104372673372785545.Spec : Prop :=
  ∀ n, P5104372673372785545.a n = A210100 (n + 1)

end A210100

/-! ## A210100.P10884819947181208936

`∑[∑[A052913(n+1)]]+3+n`
-/

namespace A210100.P10884819947181208936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052913 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 + (n : ℤ)

end

end A210100.P10884819947181208936

namespace A210100

/-- `∑[∑[A052913(n+1)]]+3+n` -/
def P10884819947181208936.Spec : Prop :=
  ∀ n, P10884819947181208936.a n = A210100 (n + 1)

end A210100

/-! ## A210100.P6820472423481842758

`A020698(n+1)-∑[A020698(n)]`
-/

namespace A210100.P6820472423481842758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020698 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210100.P6820472423481842758

namespace A210100

/-- `A020698(n+1)-∑[A020698(n)]` -/
def P6820472423481842758.Spec : Prop :=
  ∀ n, P6820472423481842758.a n = A210100 (n + 1)

end A210100

/-! ## A210100.P1503532340634548551

`Δ[A052984(n+1)]-∑[A052984(n+1)]`
-/

namespace A210100.P1503532340634548551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A210100.P1503532340634548551

namespace A210100

/-- `Δ[A052984(n+1)]-∑[A052984(n+1)]` -/
def P1503532340634548551.Spec : Prop :=
  ∀ n, P1503532340634548551.a n = A210100 (n + 1)

end A210100

/-!
# A210101: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210101, the canonical program `A210101.P12131139202197085780` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210101 has offset 1).

The definition of A210101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210101.P12131139202197085780

`ogf((30-15x-20x^2)/(1-8x+3x^2+4x^3))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A210101

/-- `ogf((30-15x-20x^2)/(1-8x+3x^2+4x^3))` -/
def P12131139202197085780.Spec : Prop :=
  ∀ n, P12131139202197085780.a n = A210101 (n + 1)

theorem P12131139202197085780.correct : P12131139202197085780.Spec := by
  intro n
  simp only [A210101, Nat.add_sub_cancel]

end A210101

/-! ## A210101.P16680703151011003851

`A210128(n+1)-A210080(n+1)`
-/

namespace A210101.P16680703151011003851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210128 (n + 1) - A210080 (n + 1)

end

end A210101.P16680703151011003851

namespace A210101

/-- `A210128(n+1)-A210080(n+1)` -/
def P16680703151011003851.Spec : Prop :=
  ∀ n, P16680703151011003851.a n = A210101 (n + 1)

end A210101

/-! ## A210101.P6092556533670829184

`A210107(∑[n+1]+2)`
-/

namespace A210101.P6092556533670829184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210101.P6092556533670829184

namespace A210101

/-- `A210107(∑[n+1]+2)` -/
def P6092556533670829184.Spec : Prop :=
  ∀ n, P6092556533670829184.a n = A210101 (n + 1)

end A210101

/-! ## A210101.P4661137955695045249

`record[A210107(A101881(n)+1)]`
-/

namespace A210101.P4661137955695045249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210101.P4661137955695045249

namespace A210101

/-- `record[A210107(A101881(n)+1)]` -/
def P4661137955695045249.Spec : Prop :=
  ∀ n, P4661137955695045249.a n = A210101 (n + 1)

end A210101

/-! ## A210101.P13227488800977433826

`A210134(∑[n+1]+2)-A210080(n+1)`
-/

namespace A210101.P13227488800977433826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A210080 (n + 1)

end

end A210101.P13227488800977433826

namespace A210101

/-- `A210134(∑[n+1]+2)-A210080(n+1)` -/
def P13227488800977433826.Spec : Prop :=
  ∀ n, P13227488800977433826.a n = A210101 (n + 1)

end A210101

/-!
# A210102: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210102, there is no canonical definition to state claims against.
-/

/-! ## A210102.P5702859547547628060

`A210107(∑[n+2]+4)`
-/

namespace A210102.P5702859547547628060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210102.P5702859547547628060

/-! ## A210102.P11804391138910652960

`or(2, A210107(A167614(n+1)))`
-/

namespace A210102.P11804391138910652960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A210107 (A167614 (n + 1)).toNat)

end

end A210102.P11804391138910652960

/-! ## A210102.P11223151968292460612

`A210107(A167614(n+1))+A178798(n)`
-/

namespace A210102.P11223151968292460612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A167614 (n + 1)).toNat + A178798 n

end

end A210102.P11223151968292460612

/-! ## A210102.P6726743900410611277

`A210107(A167614(n+1))+A111859(n+1)`
-/

namespace A210102.P6726743900410611277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A167614 (n + 1)).toNat + A111859 (n + 1)

end

end A210102.P6726743900410611277

/-! ## A210102.P9829776251676247817

`A210107(A167614(n+1))%A297370(n+2)`
-/

namespace A210102.P9829776251676247817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210107 (A167614 (n + 1)).toNat) (A297370 (n + 2))

end

end A210102.P9829776251676247817

/-!
# A210103: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210103, there is no canonical definition to state claims against.
-/

/-! ## A210103.P18253438440261548891

`A210107(A374004(n+1))`
-/

namespace A210103.P18253438440261548891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A374004 (n + 1)).toNat

end

end A210103.P18253438440261548891

/-! ## A210103.P7647552268396282803

`A210107(A141214(n)+7)`
-/

namespace A210103.P7647552268396282803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A141214 n + 7).toNat

end

end A210103.P7647552268396282803

/-! ## A210103.P14926871414344846333

`A210107(A052905(n)+9)`
-/

namespace A210103.P14926871414344846333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A052905 n + 9).toNat

end

end A210103.P14926871414344846333

/-! ## A210103.P13602138258305424900

`A210107(A167614(n+2)+1)`
-/

namespace A210103.P13602138258305424900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A167614 (n + 2) + 1).toNat

end

end A210103.P13602138258305424900

/-! ## A210103.P10332983346279854160

`A210107(A025747(n+2)+4)`
-/

namespace A210103.P10332983346279854160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A025747 (n + 2) + 4).toNat

end

end A210103.P10332983346279854160

/-!
# A210104: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210104, there is no canonical definition to state claims against.
-/

/-! ## A210104.P8697921681166173446

`A210107(A374005(n+1))`
-/

namespace A210104.P8697921681166173446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A374005 (n + 1)).toNat

end

end A210104.P8697921681166173446

/-! ## A210104.P12729819220428765497

`A210107(A167499(n+3))`
-/

namespace A210104.P12729819220428765497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A167499 (n + 3)).toNat

end

end A210104.P12729819220428765497

/-! ## A210104.P16172017839651787932

`A210107(A056000(n)+15)`
-/

namespace A210104.P16172017839651787932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A056000 n + 15).toNat

end

end A210104.P16172017839651787932

/-! ## A210104.P8801933079003129501

`A210107(A000217(n+4)+5)`
-/

namespace A210104.P8801933079003129501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A000217 (n + 4) + 5).toNat

end

end A210104.P8801933079003129501

/-! ## A210104.P3413035019035864066

`A210107(Δ[A264443(n)])`
-/

namespace A210104.P3413035019035864066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (f1 (n + 1) - f1 n).toNat

end

end A210104.P3413035019035864066

/-!
# A210105: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210105, there is no canonical definition to state claims against.
-/

/-! ## A210105.P5590867975245166152

`A210107(A374007(n+1))`
-/

namespace A210105.P5590867975245166152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A374007 (n + 1)).toNat

end

end A210105.P5590867975245166152

/-! ## A210105.P1367784268761995890

`A210107(A167499(n+4)+1)`
-/

namespace A210105.P1367784268761995890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A167499 (n + 4) + 1).toNat

end

end A210105.P1367784268761995890

/-! ## A210105.P12077933284800668025

`A210107(A000217(n+5)+6)`
-/

namespace A210105.P12077933284800668025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A000217 (n + 5) + 6).toNat

end

end A210105.P12077933284800668025

/-! ## A210105.P13699804955861555190

`A210107(eq[7, A131818(n+1)])`
-/

namespace A210105.P13699804955861555190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210105.P13699804955861555190

/-! ## A210105.P2715062305232509037

`A210107(A052905(n+3))`
-/

namespace A210105.P2715062305232509037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A052905 (n + 3)).toNat

end

end A210105.P2715062305232509037

/-!
# A210106: Number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210106, there is no canonical definition to state claims against.
-/

/-! ## A210106.P8784038173008193252

`A210133(n+1)-A210085(n+1)`
-/

namespace A210106.P8784038173008193252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210133 (n + 1) - A210085 (n + 1)

end

end A210106.P8784038173008193252

/-! ## A210106.P3217338258049204804

`A210107(A374008(n+1))`
-/

namespace A210106.P3217338258049204804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A374008 (n + 1)).toNat

end

end A210106.P3217338258049204804

/-! ## A210106.P12548347639600743407

`A210107(A167499(n+5)+2)`
-/

namespace A210106.P12548347639600743407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A167499 (n + 5) + 2).toNat

end

end A210106.P12548347639600743407

/-! ## A210106.P10823218009602124497

`A210107(A055999(n+4))`
-/

namespace A210106.P10823218009602124497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A055999 (n + 4)).toNat

end

end A210106.P10823218009602124497

/-!
# A210107: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having one or three distinct values, and new values 0..2 introduced in row major order.

The programs for A210107, there is no canonical definition to state claims against.
-/

/-! ## A210107.P15842855990309591920

`A210134(n+1)-A210086(n+1)`
-/

namespace A210107.P15842855990309591920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (n + 1) - A210086 (n + 1)

end

end A210107.P15842855990309591920

/-! ## A210107.P17931442132648606632

`A210404(n+1)-A210309(n+1)`
-/

namespace A210107.P17931442132648606632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210404 (n + 1) - A210309 (n + 1)

end

end A210107.P17931442132648606632

/-!
# A210108: Left half of Poupard's triangle, A008301.

The programs for A210108, there is no canonical definition to state claims against.
-/

/-! ## A210108.P10451696787173792780

`A008301(A063656(n))`
-/

namespace A210108.P10451696787173792780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (A063656 n).toNat

end

end A210108.P10451696787173792780

/-! ## A210108.P17238704109614921110

`A008301(A061885(n)-A003056(n))`
-/

namespace A210108.P17238704109614921110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (A061885 n - A003056 n).toNat

end

end A210108.P17238704109614921110

/-! ## A210108.P6175814433940535480

`A008301(A061579(n)+A057944(n))`
-/

namespace A210108.P6175814433940535480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (A061579 n + A057944 n).toNat

end

end A210108.P6175814433940535480

/-! ## A210108.P12248863555035324575

`A008301(A061885(A114327(n)+n))`
-/

namespace A210108.P12248863555035324575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (A061885 (A114327 n + (n : ℤ)).toNat).toNat

end

end A210108.P12248863555035324575

/-! ## A210108.P2032893320396614536

`A008301(A093995(n+1)-A002260(n+1))`
-/

namespace A210108.P2032893320396614536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (A093995 (n + 1) - A002260 (n + 1)).toNat

end

end A210108.P2032893320396614536

/-!
# A210109: Number of 3-divided binary sequences (or words) of length n.

The programs for A210109, there is no canonical definition to state claims against.
-/

/-! ## A210109.P10372861273987761660

`2^(n+1)-A210145(n+1)`
-/

namespace A210109.P10372861273987761660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A210145 (n + 1)

end

end A210109.P10372861273987761660

/-! ## A210109.P17408515864853764129

`and(-A210145(n+1), A126646(n))`
-/

namespace A210109.P17408515864853764129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A210145 (n + 1)) (A126646 n)

end

end A210109.P17408515864853764129

/-! ## A210109.P13766514913223335028

`A048578(n)-(A210145(n+1)+1)`
-/

namespace A210109.P13766514913223335028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A210145 (n + 1) + 1)

end

end A210109.P13766514913223335028

/-! ## A210109.P9677256631806026809

`and(-A210145(n+1), ∑[A000079(n)])`
-/

namespace A210109.P9677256631806026809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A210145 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210109.P9677256631806026809

/-! ## A210109.P1290289542998865777

`abs(A000079(n+1)-A210145(n+1))`
-/

namespace A210109.P1290289542998865777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A210145 (n + 1)|

end

end A210109.P1290289542998865777

/-!
# A210110: Primes p such that 2p*(p+1) is the sum of 2 successive primes.

The programs for A210110, there is no canonical definition to state claims against.
-/

/-! ## A210110.P6584980228657569437

`p?[floor(sqrt(A242383(n+1)))]`
-/

namespace A210110.P6584980228657569437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A242383 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210110.P6584980228657569437

/-! ## A210110.P2659119068409350701

`p?[floor(sqrt(A263676(n+1)))]`
-/

namespace A210110.P2659119068409350701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A263676 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210110.P2659119068409350701

/-! ## A210110.P18111420479284413861

`p?[round(sqrt(A263676(2*n+1-n)))]`
-/

namespace A210110.P18111420479284413861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A263676 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210110.P18111420479284413861

/-! ## A210110.P16754066941596019341

`p?[A000194(A242383(n+1))]`
-/

namespace A210110.P16754066941596019341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A242383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210110.P16754066941596019341

/-! ## A210110.P15249096437533615820

`p?[A000194(A263676(n+1))]`
-/

namespace A210110.P15249096437533615820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A263676 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210110.P15249096437533615820

/-!
# A210111: Left half of triangle A125053.

The programs for A210111, there is no canonical definition to state claims against.
-/

/-! ## A210111.P1373090889743243275

`A125053(A063656(n))`
-/

namespace A210111.P1373090889743243275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (A063656 n).toNat

end

end A210111.P1373090889743243275

/-! ## A210111.P7207482718994632410

`abs(record[A125053(n)-A000038(n)])`
-/

namespace A210111.P7207482718994632410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 n - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A210111.P7207482718994632410

/-! ## A210111.P9202018013539044789

`A125053(A061885(n)-A003056(n))`
-/

namespace A210111.P9202018013539044789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (A061885 n - A003056 n).toNat

end

end A210111.P9202018013539044789

/-! ## A210111.P13018294133952707704

`A125053(A004277(n)-A134478(n))`
-/

namespace A210111.P13018294133952707704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (A004277 n - A134478 n).toNat

end

end A210111.P13018294133952707704

/-! ## A210111.P13159942375188469288

`A125053(A061579(n)+A057944(n))`
-/

namespace A210111.P13159942375188469288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (A061579 n + A057944 n).toNat

end

end A210111.P13159942375188469288

/-! ## A210111.P5872061430414151215

`A125053(A061885(A114327(n)+n))`
-/

namespace A210111.P5872061430414151215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (A061885 (A114327 n + (n : ℤ)).toNat).toNat

end

end A210111.P5872061430414151215

/-! ## A210111.P2665941227332155491

`A125053(A093995(n+1)-A002260(n+1))`
-/

namespace A210111.P2665941227332155491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125053 (A093995 (n + 1) - A002260 (n + 1)).toNat

end

end A210111.P2665941227332155491

/-!
# A210112: Floor of the expected value of number of trials until exactly one cell is empty in a random distribution of n balls in n cells.

The programs for A210112, the canonical program `A210112.P12265869878700565938` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210112 has offset 2).

The definition of A210112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210112.P12265869878700565938

`floor(A055775(n+2)/A000217(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A210112

/-- `floor(A055775(n+2)/A000217(n+1))` -/
def P12265869878700565938.Spec : Prop :=
  ∀ n, P12265869878700565938.a n = A210112 (n + 2)

theorem P12265869878700565938.correct : P12265869878700565938.Spec := by
  intro n
  simp only [A210112, Nat.add_sub_cancel]

end A210112

/-! ## A210112.P4777139559345754711

`floor(A073225(n+2)/A000217(n+1))`
-/

namespace A210112.P4777139559345754711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073225 (n + 2) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A210112.P4777139559345754711

namespace A210112

/-- `floor(A073225(n+2)/A000217(n+1))` -/
def P4777139559345754711.Spec : Prop :=
  ∀ n, P4777139559345754711.a n = A210112 (n + 2)

end A210112

/-! ## A210112.P556694514238237948

`floor(A235496(n+2)/A000217(n+1))`
-/

namespace A210112.P556694514238237948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A235496 (n + 2) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A210112.P556694514238237948

namespace A210112

/-- `floor(A235496(n+2)/A000217(n+1))` -/
def P556694514238237948.Spec : Prop :=
  ∀ n, P556694514238237948.a n = A210112 (n + 2)

end A210112

/-! ## A210112.P2624864240803377004

`floor(A055775(n+2)/A161680(n+2))`
-/

namespace A210112.P2624864240803377004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055775 (n + 2) : ℚ) / (A161680 (n + 2) : ℚ)⌋

end

end A210112.P2624864240803377004

namespace A210112

/-- `floor(A055775(n+2)/A161680(n+2))` -/
def P2624864240803377004.Spec : Prop :=
  ∀ n, P2624864240803377004.a n = A210112 (n + 2)

end A210112

/-! ## A210112.P842792219821765244

`floor(A073225(n+2)/A161680(n+2))`
-/

namespace A210112.P842792219821765244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073225 (n + 2) : ℚ) / (A161680 (n + 2) : ℚ)⌋

end

end A210112.P842792219821765244

namespace A210112

/-- `floor(A073225(n+2)/A161680(n+2))` -/
def P842792219821765244.Spec : Prop :=
  ∀ n, P842792219821765244.a n = A210112 (n + 2)

end A210112

/-!
# A210117: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210117, there is no canonical definition to state claims against.
-/

/-! ## A210117.P5304545825003064062

`A210125(∑[4*n]+1)`
-/

namespace A210117.P5304545825003064062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210117.P5304545825003064062

/-!
# A210118: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210118, the canonical program `A210118.P17884981273127460951` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210118 has offset 1).

The definition of A210118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210118.P7734047695479765477

`ogf((8-36x-23x^2)/(1-10x+19x^2+14x^3))`
-/

namespace A210118.P7734047695479765477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -36, -23] [1, -10, 19, 14] n

end

end A210118.P7734047695479765477

namespace A210118

/-- `ogf((8-36x-23x^2)/(1-10x+19x^2+14x^3))` -/
def P7734047695479765477.Spec : Prop :=
  ∀ n, P7734047695479765477.a n = A210118 (n + 1)

end A210118

/-! ## A210118.P17884981273127460951

`10*a(n-1)-19*a(n-2)-14*a(n-3)` with `a(0)=8, a(1)=44, a(2)=265`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A210118

/-- `10*a(n-1)-19*a(n-2)-14*a(n-3)` -/
def P17884981273127460951.Spec : Prop :=
  ∀ n, P17884981273127460951.a n = A210118 (n + 1)

theorem P17884981273127460951.correct : P17884981273127460951.Spec := by
  intro n
  simp only [A210118, Nat.add_sub_cancel]

end A210118

/-! ## A210118.P6926896419280355227

`A210167(n+1)+A209890(n+1)`
-/

namespace A210118.P6926896419280355227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210167 (n + 1) + A209890 (n + 1)

end

end A210118.P6926896419280355227

namespace A210118

/-- `A210167(n+1)+A209890(n+1)` -/
def P6926896419280355227.Spec : Prop :=
  ∀ n, P6926896419280355227.a n = A210118 (n + 1)

theorem P6926896419280355227.correct : P6926896419280355227.Spec := by
  intro n
  simp only [A210118, Nat.add_sub_cancel, A210118.P6926896419280355227.a, A210118.P17884981273127460951.a, A209890, A209890.P16480085255296489386.a, A210167, A210167.P12712980395571066904.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210118

/-! ## A210118.P3523152896386661535

`A210125(∑[n]+1)`
-/

namespace A210118.P3523152896386661535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210118.P3523152896386661535

namespace A210118

/-- `A210125(∑[n]+1)` -/
def P3523152896386661535.Spec : Prop :=
  ∀ n, P3523152896386661535.a n = A210118 (n + 1)

end A210118

/-! ## A210118.P15137278154127478597

`record[root(A210125(n+1), A007318(n))]`
-/

namespace A210118.P15137278154127478597
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210125 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210118.P15137278154127478597

namespace A210118

/-- `record[root(A210125(n+1), A007318(n))]` -/
def P15137278154127478597.Spec : Prop :=
  ∀ n, P15137278154127478597.a n = (A210118 (n + 1) : ℝ)

end A210118

/-!
# A210119: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210119, there is no canonical definition to state claims against.
-/

/-! ## A210119.P17318220340634440162

`A210168(n+1)+A209891(n+1)`
-/

namespace A210119.P17318220340634440162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210168 (n + 1) + A209891 (n + 1)

end

end A210119.P17318220340634440162

/-! ## A210119.P1627156429260073251

`A210168(n+1)+A209897(∑[n+1]+2)`
-/

namespace A210119.P1627156429260073251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210168 (n + 1) + A209897 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210119.P1627156429260073251

/-! ## A210119.P1740258007053192380

`A210125(∑[n+1]+2)`
-/

namespace A210119.P1740258007053192380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210119.P1740258007053192380

/-! ## A210119.P5932044460338496600

`record[gcd(A002262(n), A210125(n+2))]`
-/

namespace A210119.P5932044460338496600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A210125 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210119.P5932044460338496600

/-! ## A210119.P6368378534182237756

`record[A210125(A101881(n)+1)]`
-/

namespace A210119.P6368378534182237756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210119.P6368378534182237756

/-!
# A210120: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210120, there is no canonical definition to state claims against.
-/

/-! ## A210120.P8256531238151069663

`A210125(∑[n+2]+4)`
-/

namespace A210120.P8256531238151069663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210120.P8256531238151069663

/-! ## A210120.P6783963747086537553

`or(1, A210125(A167614(n+1)))`
-/

namespace A210120.P6783963747086537553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210125 (A167614 (n + 1)).toNat)

end

end A210120.P6783963747086537553

/-! ## A210120.P11566238740493470907

`A210125(A167614(n+1))+A185284(n)`
-/

namespace A210120.P11566238740493470907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A167614 (n + 1)).toNat + A185284 n

end

end A210120.P11566238740493470907

/-! ## A210120.P1132264480159125017

`A210125(A167614(n+1))*A309913(n)`
-/

namespace A210120.P1132264480159125017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A167614 (n + 1)).toNat * A309913 n

end

end A210120.P1132264480159125017

/-! ## A210120.P8227629052493852414

`lcm(A033999(n), A210125(A167614(n+1)))`
-/

namespace A210120.P8227629052493852414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A210125 (A167614 (n + 1)).toNat)

end

end A210120.P8227629052493852414

/-!
# A210121: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210121, there is no canonical definition to state claims against.
-/

/-! ## A210121.P7332109455768543492

`A210125(A374004(n+1))`
-/

namespace A210121.P7332109455768543492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A374004 (n + 1)).toNat

end

end A210121.P7332109455768543492

/-! ## A210121.P3732789006113977927

`A210125(A052905(n)+9)`
-/

namespace A210121.P3732789006113977927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A052905 n + 9).toNat

end

end A210121.P3732789006113977927

/-! ## A210121.P604696425866559989

`A210125(A055999(n)+10)`
-/

namespace A210121.P604696425866559989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A055999 n + 10).toNat

end

end A210121.P604696425866559989

/-! ## A210121.P13317695299594755027

`A210125(A167614(n+2)+1)`
-/

namespace A210121.P13317695299594755027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A167614 (n + 2) + 1).toNat

end

end A210121.P13317695299594755027

/-! ## A210121.P13052431415234673090

`A210125(A046691(n+1)+8)`
-/

namespace A210121.P13052431415234673090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A046691 (n + 1) + 8).toNat

end

end A210121.P13052431415234673090

/-!
# A210122: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210122, there is no canonical definition to state claims against.
-/

/-! ## A210122.P13608881434979470451

`A210125(A374005(n+1))`
-/

namespace A210122.P13608881434979470451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A374005 (n + 1)).toNat

end

end A210122.P13608881434979470451

/-! ## A210122.P11718332681012937138

`A210125(A056000(n)+15)`
-/

namespace A210122.P11718332681012937138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A056000 n + 15).toNat

end

end A210122.P11718332681012937138

/-! ## A210122.P9437944457911371846

`A210125(Δ[A264443(n)])`
-/

namespace A210122.P9437944457911371846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (f1 (n + 1) - f1 n).toNat

end

end A210122.P9437944457911371846

/-! ## A210122.P5035826348385450425

`A210125(A046691(n+3))`
-/

namespace A210122.P5035826348385450425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A046691 (n + 3)).toNat

end

end A210122.P5035826348385450425

/-! ## A210122.P11319815461430134891

`A210125(A056115(n)+11)`
-/

namespace A210122.P11319815461430134891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A056115 n + 11).toNat

end

end A210122.P11319815461430134891

/-!
# A210123: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210123, there is no canonical definition to state claims against.
-/

/-! ## A210123.P16483187776440906907

`A210125(A374007(n+1))`
-/

namespace A210123.P16483187776440906907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A374007 (n + 1)).toNat

end

end A210123.P16483187776440906907

/-! ## A210123.P8661064313613432976

`A210125(Δ[Δ[A006504(n+1)]])`
-/

namespace A210123.P8661064313613432976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (f1 (n + 1) - f1 n).toNat

end

end A210123.P8661064313613432976

/-! ## A210123.P7130378263227038753

`A210125(Δ[A264443(n+1)]-1)`
-/

namespace A210123.P7130378263227038753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (f1 (n + 1) - f1 n - 1).toNat

end

end A210123.P7130378263227038753

/-!
# A210124: Number of (n+1)X8 0..3 arrays with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210124, there is no canonical definition to state claims against.
-/

/-! ## A210124.P12053737296218483517

`A210125(A374008(n+1))`
-/

namespace A210124.P12053737296218483517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A374008 (n + 1)).toNat

end

end A210124.P12053737296218483517

/-! ## A210124.P1023954777296550508

`A210125(A056119(n)+28)`
-/

namespace A210124.P1023954777296550508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A056119 n + 28).toNat

end

end A210124.P1023954777296550508

/-! ## A210124.P15957421853456127123

`A210125(A055999(n+4))`
-/

namespace A210124.P15957421853456127123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A055999 (n + 4)).toNat

end

end A210124.P15957421853456127123

/-!
# A210125: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210125, there is no canonical definition to state claims against.
-/

/-! ## A210125.P4512389291872609554

`A210174(n+1)+A209897(n+1)`
-/

namespace A210125.P4512389291872609554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (n + 1) + A209897 (n + 1)

end

end A210125.P4512389291872609554

/-! ## A210125.P13392278770805451565

`A209897(n+1)+A038312(n)+A001065(A327020(n))`
-/

namespace A210125.P13392278770805451565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (n + 1) + (A038312 n + A001065 (A327020 n).toNat)

end

end A210125.P13392278770805451565

/-!
# A210126: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210126, there is no canonical definition to state claims against.
-/

/-! ## A210126.P6661351525780929406

`A210134((n+1)²+n²)`
-/

namespace A210126.P6661351525780929406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 ((n + 1) ^ 2 + n ^ 2)

end

end A210126.P6661351525780929406

/-!
# A210127: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210127, there is no canonical definition to state claims against.
-/

/-! ## A210127.P16515097812144731755

`ogf((8-15x-3x^2)/(1-12x+9x^2+2x^3))`
-/

namespace A210127.P16515097812144731755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -15, -3] [1, -12, 9, 2] n

end

end A210127.P16515097812144731755

/-! ## A210127.P1876609815246560013

`12*a(n-1)-9*a(n-2)-2*a(n-3)` with `a(0)=8, a(1)=81, a(2)=897`
-/

namespace A210127.P1876609815246560013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 81, 897] fun n a =>
  12 * a (n - 1) - 9 * a (n - 2) - 2 * a (n - 3)

end

end A210127.P1876609815246560013

/-! ## A210127.P3353955918544291850

`A210100(n+1)+A210079(n+1)`
-/

namespace A210127.P3353955918544291850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210100 (n + 1) + A210079 (n + 1)

end

end A210127.P3353955918544291850

/-! ## A210127.P7579292589633190243

`A210107(A000124(n))+A210079(n+1)`
-/

namespace A210127.P7579292589633190243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A000124 n).toNat + A210079 (n + 1)

end

end A210127.P7579292589633190243

/-! ## A210127.P15060833246880275630

`A210107(A025747(n)-n)+A210079(n+1)`
-/

namespace A210127.P15060833246880275630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A025747 n - (n : ℤ)).toNat + A210079 (n + 1)

end

end A210127.P15060833246880275630

/-!
# A210128: Number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210128, there is no canonical definition to state claims against.
-/

/-! ## A210128.P6696598107456298446

`A210101(n+1)+A210080(n+1)`
-/

namespace A210128.P6696598107456298446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210101 (n + 1) + A210080 (n + 1)

end

end A210128.P6696598107456298446

/-! ## A210128.P9721638159600474408

`A210107(∑[n+1]+2)+A210080(n+1)`
-/

namespace A210128.P9721638159600474408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A210080 (n + 1)

end

end A210128.P9721638159600474408

/-! ## A210128.P6899357870776120820

`A210080(n+1)+record[A210107(A101881(n)+1)]`
-/

namespace A210128.P6899357870776120820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210080 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210128.P6899357870776120820

/-! ## A210128.P8483210332583061098

`A210134(∑[n+1]+2)`
-/

namespace A210128.P8483210332583061098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210128.P8483210332583061098

/-! ## A210128.P2729780682403352982

`A210101(n+1)+A210086(∑[n+1]+2)`
-/

namespace A210128.P2729780682403352982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210101 (n + 1) + A210086 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210128.P2729780682403352982

/-!
# A210129: Number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210129, there is no canonical definition to state claims against.
-/

/-! ## A210129.P4365054150754709439

`A210102(n+1)+A210081(n+1)`
-/

namespace A210129.P4365054150754709439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210102 (n + 1) + A210081 (n + 1)

end

end A210129.P4365054150754709439

/-! ## A210129.P1813384798292712005

`A210134(4+∑[n+2])`
-/

namespace A210129.P1813384798292712005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (4 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210129.P1813384798292712005

/-! ## A210129.P6454825557291987704

`lcm((-1)^n, A210134(A167614(n+1)))`
-/

namespace A210129.P6454825557291987704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A210134 (A167614 (n + 1)).toNat)

end

end A210129.P6454825557291987704

/-! ## A210129.P14723211857571417742

`A210134(A167614(n+1))+A185284(n)`
-/

namespace A210129.P14723211857571417742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A167614 (n + 1)).toNat + A185284 n

end

end A210129.P14723211857571417742

/-! ## A210129.P829387867731660597

`or(A016389(n), A210134(A167614(n+1)))`
-/

namespace A210129.P829387867731660597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A210134 (A167614 (n + 1)).toNat)

end

end A210129.P829387867731660597

/-!
# A210130: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210130, there is no canonical definition to state claims against.
-/

/-! ## A210130.P11635136546748679009

`A210103(n+1)+A210082(n+1)`
-/

namespace A210130.P11635136546748679009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210103 (n + 1) + A210082 (n + 1)

end

end A210130.P11635136546748679009

/-! ## A210130.P13080775151083532140

`A210134(A374004(n+1))`
-/

namespace A210130.P13080775151083532140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A374004 (n + 1)).toNat

end

end A210130.P13080775151083532140

/-! ## A210130.P14643107918541618564

`A210134(A052905(n)+9)`
-/

namespace A210130.P14643107918541618564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A052905 n + 9).toNat

end

end A210130.P14643107918541618564

/-! ## A210130.P13912593073555624076

`A210134(A055999(n)+10)`
-/

namespace A210130.P13912593073555624076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A055999 n + 10).toNat

end

end A210130.P13912593073555624076

/-! ## A210130.P10726504856622417723

`A210134(A167614(n+2)+1)`
-/

namespace A210130.P10726504856622417723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A167614 (n + 2) + 1).toNat

end

end A210130.P10726504856622417723

/-!
# A210131: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210131, there is no canonical definition to state claims against.
-/

/-! ## A210131.P7170982556328683375

`A210104(n+1)+A210083(n+1)`
-/

namespace A210131.P7170982556328683375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210104 (n + 1) + A210083 (n + 1)

end

end A210131.P7170982556328683375

/-! ## A210131.P15019757488831710953

`A210134(A167499(n+3))`
-/

namespace A210131.P15019757488831710953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A167499 (n + 3)).toNat

end

end A210131.P15019757488831710953

/-! ## A210131.P2090352665515699023

`A210134(A155212(n)+13)`
-/

namespace A210131.P2090352665515699023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A155212 n + 13).toNat

end

end A210131.P2090352665515699023

/-! ## A210131.P2291294244667988849

`A210134(A056000(n)+15)`
-/

namespace A210131.P2291294244667988849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (A056000 n + 15).toNat

end

end A210131.P2291294244667988849

/-! ## A210131.P12620589743097700298

`A210134(eq[6, A131818(n+1)])`
-/

namespace A210131.P12620589743097700298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210131.P12620589743097700298

/-!
# A210132: Number of (n+1) X 7 0..3 arrays with every 2 X 2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210132, there is no canonical definition to state claims against.
-/

/-! ## A210132.P10120197524130729439

`A210105(n+1)+A210084(n+1)`
-/

namespace A210132.P10120197524130729439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210105 (n + 1) + A210084 (n + 1)

end

end A210132.P10120197524130729439

/-!
# A210133: Number of (n+1)X8 0..3 arrays with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210133, there is no canonical definition to state claims against.
-/

/-! ## A210133.P13169420978566044423

`A210106(n+1)+A210085(n+1)`
-/

namespace A210133.P13169420978566044423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210106 (n + 1) + A210085 (n + 1)

end

end A210133.P13169420978566044423

/-! ## A210133.P15240901466518812117

`A210134(eq[8, A131818(n+1)])`
-/

namespace A210133.P15240901466518812117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210134 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210133.P15240901466518812117

/-!
# A210134: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays with every 2X2 subblock having one, three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210134, there is no canonical definition to state claims against.
-/

/-! ## A210134.P1674162242146887480

`A210107(n+1)+A210086(n+1)`
-/

namespace A210134.P1674162242146887480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210107 (n + 1) + A210086 (n + 1)

end

end A210134.P1674162242146887480

/-! ## A210134.P5791195116595398238

`A210086(n+1)+A210404(n+1)-A210309(n+1)`
-/

namespace A210134.P5791195116595398238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210086 (n + 1) + (A210404 (n + 1) - A210309 (n + 1))

end

end A210134.P5791195116595398238

/-!
# A210135: Number of (n+1)X(n+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210135, there is no canonical definition to state claims against.
-/

/-! ## A210135.P17916854455838874653

`A210143(∑[4*n]+1)`
-/

namespace A210135.P17916854455838874653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210135.P17916854455838874653

/-! ## A210135.P16086403493058040045

`xor(A000038(n+2), A210143(A001844(n)))`
-/

namespace A210135.P16086403493058040045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (n + 2)) (A210143 (A001844 n).toNat)

end

end A210135.P16086403493058040045

/-!
# A210136: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210136, the canonical program `A210136.P4525698088877762562` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210136 has offset 1).

The definition of A210136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210136.P4525698088877762562

`A210054(n+1)-A209822(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A210136

/-- `A210054(n+1)-A209822(n+1)` -/
def P4525698088877762562.Spec : Prop :=
  ∀ n, P4525698088877762562.a n = A210136 (n + 1)

theorem P4525698088877762562.correct : P4525698088877762562.Spec := by
  intro n
  simp only [A210136, Nat.add_sub_cancel]

end A210136

/-! ## A210136.P15264096046129156225

`A210143(∑[n]+1)`
-/

namespace A210136.P15264096046129156225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210136.P15264096046129156225

namespace A210136

/-- `A210143(∑[n]+1)` -/
def P15264096046129156225.Spec : Prop :=
  ∀ n, P15264096046129156225.a n = A210136 (n + 1)

end A210136

/-! ## A210136.P2144447705093053292

`record[A010054(n)*A210143(n+1)]`
-/

namespace A210136.P2144447705093053292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210136.P2144447705093053292

namespace A210136

/-- `record[A010054(n)*A210143(n+1)]` -/
def P2144447705093053292.Spec : Prop :=
  ∀ n, P2144447705093053292.a n = A210136 (n + 1)

end A210136

/-! ## A210136.P2131361127010355823

`record[root(A210143(n+1), A007318(n))]`
-/

namespace A210136.P2131361127010355823
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210143 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210136.P2131361127010355823

namespace A210136

/-- `record[root(A210143(n+1), A007318(n))]` -/
def P2131361127010355823.Spec : Prop :=
  ∀ n, P2131361127010355823.a n = (A210136 (n + 1) : ℝ)

end A210136

/-! ## A210136.P9563524726533228039

`record[root(A210143(n+1), A028412(n))]`
-/

namespace A210136.P9563524726533228039
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210143 (n + 1) : ℝ) ^ (1 / (A028412 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210136.P9563524726533228039

namespace A210136

/-- `record[root(A210143(n+1), A028412(n))]` -/
def P9563524726533228039.Spec : Prop :=
  ∀ n, P9563524726533228039.a n = (A210136 (n + 1) : ℝ)

end A210136

/-!
# A210137: Number of (n+1)X3 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210137, there is no canonical definition to state claims against.
-/

/-! ## A210137.P624841080230958382

`A210143(∑[n+1]+2)`
-/

namespace A210137.P624841080230958382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210137.P624841080230958382

/-! ## A210137.P15871387069738552912

`record[A010054(n)*A210143(n+2)]`
-/

namespace A210137.P15871387069738552912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210143 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210137.P15871387069738552912

/-! ## A210137.P4273787315599985079

`record[A210143(Δ[A003453(n+5)])]`
-/

namespace A210137.P4273787315599985079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210137.P4273787315599985079

/-! ## A210137.P8385714514787986076

`or(A160753(n), A210143(A000096(n+1)))`
-/

namespace A210137.P8385714514787986076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160753 n) (A210143 (A000096 (n + 1)).toNat)

end

end A210137.P8385714514787986076

/-! ## A210137.P12812703788616227019

`A210143(A000096(n+1))%A209847(n+1)`
-/

namespace A210137.P12812703788616227019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210143 (A000096 (n + 1)).toNat) (A209847 (n + 1))

end

end A210137.P12812703788616227019

/-!
# A210138: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210138, there is no canonical definition to state claims against.
-/

/-! ## A210138.P13443267978221220666

`A210143(∑[n+2]+4)`
-/

namespace A210138.P13443267978221220666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210138.P13443267978221220666

/-! ## A210138.P13582364654350507261

`lcm((-1)^n, A210143(A167614(n+1)))`
-/

namespace A210138.P13582364654350507261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A210143 (A167614 (n + 1)).toNat)

end

end A210138.P13582364654350507261

/-! ## A210138.P9113017205610333273

`A210143(A167614(n+1))+A025469(n)`
-/

namespace A210138.P9113017205610333273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A167614 (n + 1)).toNat + A025469 n

end

end A210138.P9113017205610333273

/-! ## A210138.P2382364541077441072

`A264668(n)+A210143(A167614(n+1))`
-/

namespace A210138.P2382364541077441072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A210143 (A167614 (n + 1)).toNat

end

end A210138.P2382364541077441072

/-! ## A210138.P16783171645662789091

`or(A000007(n), A210143(A167614(n+1)))`
-/

namespace A210138.P16783171645662789091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A210143 (A167614 (n + 1)).toNat)

end

end A210138.P16783171645662789091

/-!
# A210139: Number of (n+1)X5 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210139, there is no canonical definition to state claims against.
-/

/-! ## A210139.P4546669843102836454

`A210143(A374004(n+1))`
-/

namespace A210139.P4546669843102836454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A374004 (n + 1)).toNat

end

end A210139.P4546669843102836454

/-! ## A210139.P6547769662025969188

`A210143(A141214(n)+7)`
-/

namespace A210139.P6547769662025969188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A141214 n + 7).toNat

end

end A210139.P6547769662025969188

/-! ## A210139.P16204121575952258814

`A210143(A052905(n)+9)`
-/

namespace A210139.P16204121575952258814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A052905 n + 9).toNat

end

end A210139.P16204121575952258814

/-! ## A210139.P5043267299186773194

`A210143(A055999(n)+10)`
-/

namespace A210139.P5043267299186773194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A055999 n + 10).toNat

end

end A210139.P5043267299186773194

/-! ## A210139.P4309694371203702682

`A210143(A167614(n+2)+1)`
-/

namespace A210139.P4309694371203702682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A167614 (n + 2) + 1).toNat

end

end A210139.P4309694371203702682

/-!
# A210140: Number of (n+1)X6 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210140, there is no canonical definition to state claims against.
-/

/-! ## A210140.P2174390614490142429

`A210143(A374005(n+1))`
-/

namespace A210140.P2174390614490142429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A374005 (n + 1)).toNat

end

end A210140.P2174390614490142429

/-! ## A210140.P13637026575591291132

`A210143(Δ[A264443(n)])`
-/

namespace A210140.P13637026575591291132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (f1 (n + 1) - f1 n).toNat

end

end A210140.P13637026575591291132

/-! ## A210140.P14916339284257656410

`A210143(eq[4, A193592(n)])`
-/

namespace A210140.P14916339284257656410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210140.P14916339284257656410

/-! ## A210140.P2583267646409757982

`A210143(abs(A141214(n+2)-1))`
-/

namespace A210140.P2583267646409757982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 |A141214 (n + 2) - 1|.toNat

end

end A210140.P2583267646409757982

/-! ## A210140.P6906679809827841543

`A210143(A264443(n+1)-A264443(n))`
-/

namespace A210140.P6906679809827841543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A264443 (n + 1) - A264443 n).toNat

end

end A210140.P6906679809827841543

/-!
# A210141: Number of (n+1)X7 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210141, there is no canonical definition to state claims against.
-/

/-! ## A210141.P12838998461841934417

`A210143(∑[n+5]+16)`
-/

namespace A210141.P12838998461841934417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A210141.P12838998461841934417

/-!
# A210142: Number of (n+1)X8 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210142, there is no canonical definition to state claims against.
-/

/-! ## A210142.P12948082705671059586

`A210143(eq[4, A219347(n)])`
-/

namespace A210142.P12948082705671059586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210142.P12948082705671059586

/-! ## A210142.P13102571642646153515

`A210143(eq[6, A193592(n)])`
-/

namespace A210142.P13102571642646153515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210142.P13102571642646153515

/-! ## A210142.P11837044625964267032

`A210143(A000217(n+6)+n+1)`
-/

namespace A210142.P11837044625964267032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A210142.P11837044625964267032

/-! ## A210142.P3786693811229000576

`A210143(eq[6, A243060(n+1)])`
-/

namespace A210142.P3786693811229000576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210143 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210142.P3786693811229000576

/-!
# A210143: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having one, two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210143, there is no canonical definition to state claims against.
-/

/-! ## A210143.P10703765746451342375

`A210061(n+1)-A209829(n+1)`
-/

namespace A210143.P10703765746451342375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (n + 1) - A209829 (n + 1)

end

end A210143.P10703765746451342375

/-! ## A210143.P9977864175031662071

`A209969(n+1)+A210061(n+1)-A209848(n+1)`
-/

namespace A210143.P9977864175031662071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209969 (n + 1) + (A210061 (n + 1) - A209848 (n + 1))

end

end A210143.P9977864175031662071

/-! ## A210143.P4400238598734251521

`A210061(n+1)-A001057(A234036(n+1)-A234161(n+1))`
-/

namespace A210143.P4400238598734251521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (n + 1) - A001057 (A234036 (n + 1) - A234161 (n + 1)).toNat

end

end A210143.P4400238598734251521

/-! ## A210143.P8111230525525651768

`A210061(n+1)-A001057(A234184(n+1)-A234036(n+1))`
-/

namespace A210143.P8111230525525651768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (n + 1) - A001057 (A234184 (n + 1) - A234036 (n + 1)).toNat

end

end A210143.P8111230525525651768

/-! ## A210143.P4408723004463143818

`A210061(n+1)-A001057(A234131(n+1)-A234184(n+1))`
-/

namespace A210143.P4408723004463143818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210061 (n + 1) - A001057 (A234131 (n + 1) - A234184 (n + 1)).toNat

end

end A210143.P4408723004463143818

/-!
# A210144: a(n) = least integer m>1 such that the product of the first k primes for k=1,...,n are pairwise distinct modulo m.

The programs for A210144, there is no canonical definition to state claims against.
-/

/-! ## A210144.P12162784416728816209

`p?[A325369(A325371(n+1))-A130091(n+1)]`
-/

namespace A210144.P12162784416728816209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325369 (A325371 (n + 1)).toNat - A130091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210144.P12162784416728816209

/-! ## A210144.P17531050438881289229

`p?[A325369(A325371(n+1))-A319161(n+1)]`
-/

namespace A210144.P17531050438881289229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325369 (A325371 (n + 1)).toNat - A319161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A210144.P17531050438881289229

/-! ## A210144.P1507236450420078472

`A151800(lt[A007814(n+1), A221641(2*n+3)])`
-/

namespace A210144.P1507236450420078472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221641 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210144.P1507236450420078472

/-!
# A210145: a(n) = 2^n - A210109(n).

The programs for A210145, there is no canonical definition to state claims against.
-/

/-! ## A210145.P11684878241779080178

`2^(n+1)-A210109(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210145.P11684878241779080178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A210109 (n + 1)

end

end A210145.P11684878241779080178

/-! ## A210145.P12257494187828901819

`A048578(n)-(A210109(n+1)+1)`
-/

namespace A210145.P12257494187828901819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A210109 (n + 1) + 1)

end

end A210145.P12257494187828901819

/-! ## A210145.P2009597093195481942

`A126646(n)+1-A210109(n+1)`
-/

namespace A210145.P2009597093195481942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A210109 (n + 1))

end

end A210145.P2009597093195481942

/-! ## A210145.P15405245858802963191

`abs(A000079(n+1)-A210109(n+1))`
-/

namespace A210145.P15405245858802963191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 (n + 1) - A210109 (n + 1)|

end

end A210145.P15405245858802963191

/-! ## A210145.P8220005743363662976

`abs(A210109(n+1)-A011782(n+2))`
-/

namespace A210145.P8220005743363662976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210109 (n + 1) - A011782 (n + 2)|

end

end A210145.P8220005743363662976

/-!
# A210146: Number of square fullerenes with 2n vertices.

The programs for A210146, there is no canonical definition to state claims against.
-/

/-! ## A210146.P13919710000720310032

`A042951(n)+Δ[A016389(A022166(n))]`
-/

namespace A210146.P13919710000720310032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n + (f1 (n + 1) - f1 n)

end

end A210146.P13919710000720310032

/-! ## A210146.P10345888000740779095

`A042951(n)-Δ[A025465(A023105(n))]`
-/

namespace A210146.P10345888000740779095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A023105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n - (f1 (n + 1) - f1 n)

end

end A210146.P10345888000740779095

/-! ## A210146.P7800626207256295678

`A042951(n)+Δ[A008683(A237557(n+1))]`
-/

namespace A210146.P7800626207256295678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A237557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042951 n + (f1 (n + 1) - f1 n)

end

end A210146.P7800626207256295678

/-!
# A210147: Numbers expressible as 2*p+q, p and q distinct primes.

The programs for A210147, there is no canonical definition to state claims against.
-/

/-! ## A210147.P2118783065974029735

`A256421(n+4)+2`
-/

namespace A210147.P2118783065974029735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256421 (n + 4) + 2

end

end A210147.P2118783065974029735

/-! ## A210147.P15416970535754210757

`record[A046522(2*n+5)+5]`
-/

namespace A210147.P15416970535754210757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046522 (2 * n + 5) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210147.P15416970535754210757

/-! ## A210147.P15000726389916870254

`A256420(p?[2*n+7])+2`
-/

namespace A210147.P15000726389916870254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256420 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 2

end

end A210147.P15000726389916870254

/-! ## A210147.P13058436533392962742

`lt[(-1)^n, A008683(n+4)+1]+6`
-/

namespace A210147.P13058436533392962742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 6

end

end A210147.P13058436533392962742

/-! ## A210147.P11157333211338131157

`lt[A001222(C(n, 2)%(n+1)+1), 2]+7`
-/

namespace A210147.P11157333211338131157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose n 2 % (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 7

end

end A210147.P11157333211338131157

/-! ## A210147.P11863711460748730284

`A256420(A000040(n+4))+2`
-/

namespace A210147.P11863711460748730284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256420 (A000040 (n + 4)).toNat + 2

end

end A210147.P11863711460748730284

/-! ## A210147.P10041341742617588318

`A256420(A008578(n+5))+2`
-/

namespace A210147.P10041341742617588318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256420 (A008578 (n + 5)).toNat + 2

end

end A210147.P10041341742617588318

/-! ## A210147.P15657692177215289473

`∪[A089241(n+2), A020742(n)]`
-/

namespace A210147.P15657692177215289473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A210147.P15657692177215289473

/-! ## A210147.P12708596297645004965

`lt[A001222(A152271(n)+2), 2]+7`
-/

namespace A210147.P12708596297645004965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A152271 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 7

end

end A210147.P12708596297645004965

/-! ## A210147.P454695121441377861

`eq[1, A001222(A133622(n+1)+1)]+7`
-/

namespace A210147.P454695121441377861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A133622 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 7

end

end A210147.P454695121441377861

/-!
# A210148: 1/4 the number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having one, three or four distinct clockwise edge differences.

The programs for A210148, there is no canonical definition to state claims against.
-/

/-! ## A210148.P6950940122110043009

`A210156((n+1)²+n²)`
-/

namespace A210148.P6950940122110043009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210156 ((n + 1) ^ 2 + n ^ 2)

end

end A210148.P6950940122110043009

/-!
# A210149: 1/4 the number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having one, three or four distinct clockwise edge differences.

The programs for A210149, there is no canonical definition to state claims against.
-/

/-! ## A210149.P14720192605104525239

`ogf((57+193x+141x^2-42x^3-32x^4)/(1-11x-46x^2-36x^3+10x^4+8x^5))`
-/

namespace A210149.P14720192605104525239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [57, 193, 141, -42, -32] [1, -11, -46, -36, 10, 8] n

end

end A210149.P14720192605104525239

/-! ## A210149.P9390046109350335880

`A210156(∑[n]+1)`
-/

namespace A210149.P9390046109350335880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210156 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210149.P9390046109350335880

/-! ## A210149.P8518127222985107037

`record[root(A210156(n+1), A212829(n+1))]`
-/

namespace A210149.P8518127222985107037
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210156 (n + 1) : ℝ) ^ (1 / (A212829 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210149.P8518127222985107037

/-! ## A210149.P17816355788218397603

`A210156(A000124(n))%A210159(n+1)`
-/

namespace A210149.P17816355788218397603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210156 (A000124 n).toNat) (A210159 (n + 1))

end

end A210149.P17816355788218397603

/-! ## A210149.P5106786841083457552

`record[root(A210156(n+1), A099375(n))]`
-/

namespace A210149.P5106786841083457552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210156 (n + 1) : ℝ) ^ (1 / (A099375 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210149.P5106786841083457552

/-!
# A210150: 1/4 the number of (n+1) X 3 0..3 arrays with every 2 X 2 subblock having one, three or four distinct clockwise edge differences.

The programs for A210150, there is no canonical definition to state claims against.
-/

/-! ## A210150.P8152754662107213057

`A210156(∑[n+1]+2)`
-/

namespace A210150.P8152754662107213057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210156 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210150.P8152754662107213057

/-! ## A210150.P16095058952785462982

`record[root(A210156(n+3), A099375(n))]`
-/

namespace A210150.P16095058952785462982
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210156 (n + 3) : ℝ) ^ (1 / (A099375 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210150.P16095058952785462982

/-! ## A210150.P2114267336374785330

`record[root(A210156(n+3), A210211(n+1))]`
-/

namespace A210150.P2114267336374785330
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210156 (n + 3) : ℝ) ^ (1 / (A210211 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210150.P2114267336374785330

/-! ## A210150.P10071258656812814150

`record[root(A210156(n+3), A210213(n+1))]`
-/

namespace A210150.P10071258656812814150
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210156 (n + 3) : ℝ) ^ (1 / (A210213 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210150.P10071258656812814150

/-! ## A210150.P892721370606439419

`record[gcd(A210156(n+2), A284455(n+2))]`
-/

namespace A210150.P892721370606439419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210156 (n + 2)) (A284455 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210150.P892721370606439419

/-!
# A210151: 1/4 the number of (n+1) X 4 0..3 arrays with every 2 X 2 subblock having one, three or four distinct clockwise edge differences.

The programs for A210151, there is no canonical definition to state claims against.
-/

/-! ## A210151.P1483937517492330061

`A210156(∑[n+2]+4)`
-/

namespace A210151.P1483937517492330061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210156 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210151.P1483937517492330061

/-!
# A210152: 1/4 the number of (n+1)X5 0..3 arrays with every 2X2 subblock having one, three or four distinct clockwise edge differences.

The programs for A210152, there is no canonical definition to state claims against.
-/

/-! ## A210152.P1586348126717888690

`A210156(A141214(n)+7)`
-/

namespace A210152.P1586348126717888690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210156 (A141214 n + 7).toNat

end

end A210152.P1586348126717888690

/-!
# A210155: 1/4 the number of (n+1)X8 0..3 arrays with every 2X2 subblock having one, three or four distinct clockwise edge differences.

The programs for A210155, there is no canonical definition to state claims against.
-/

/-! ## A210155.P13672592022377664724

`A210156(A055999(n+4))`
-/

namespace A210155.P13672592022377664724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210156 (A055999 (n + 4)).toNat

end

end A210155.P13672592022377664724

/-!
# A210157: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210157, there is no canonical definition to state claims against.
-/

/-! ## A210157.P2106020658434196347

`A210165((n+1)²+n²)`
-/

namespace A210157.P2106020658434196347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 ((n + 1) ^ 2 + n ^ 2)

end

end A210157.P2106020658434196347

/-!
# A210158: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210158, there is no canonical definition to state claims against.
-/

/-! ## A210158.P15123295364155275664

`A210165(∑[n]+1)`
-/

namespace A210158.P15123295364155275664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210158.P15123295364155275664

/-! ## A210158.P8535545583442639157

`record[A010054(n)*A210165(n+1)]`
-/

namespace A210158.P8535545583442639157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210158.P8535545583442639157

/-! ## A210158.P9144591050674097266

`record[root(A210165(n+1), A123610(n))]`
-/

namespace A210158.P9144591050674097266
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210165 (n + 1) : ℝ) ^ (1 / (A123610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210158.P9144591050674097266

/-! ## A210158.P12454653365726076518

`record[lcm(A106459(n), A210165(n+1))]`
-/

namespace A210158.P12454653365726076518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106459 n) (A210165 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210158.P12454653365726076518

/-! ## A210158.P13441073245617407961

`A210165(A000124(n))%A210159(n+1)`
-/

namespace A210158.P13441073245617407961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210165 (A000124 n).toNat) (A210159 (n + 1))

end

end A210158.P13441073245617407961

/-!
# A210159: Number of (n+1)X3 0..3 arrays with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210159, there is no canonical definition to state claims against.
-/

/-! ## A210159.P5317736018695671037

`A210165(∑[n+1]+2)`
-/

namespace A210159.P5317736018695671037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210159.P5317736018695671037

/-! ## A210159.P5588108830201924776

`record[A010054(n)*A210165(n+2)]`
-/

namespace A210159.P5588108830201924776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210165 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210159.P5588108830201924776

/-! ## A210159.P3443665767750307001

`record[lcm(A106459(n), A210165(n+2))]`
-/

namespace A210159.P3443665767750307001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106459 n) (A210165 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210159.P3443665767750307001

/-! ## A210159.P3573884207058166940

`record[gcd(A210165(n+2), A284455(n+2))]`
-/

namespace A210159.P3573884207058166940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210165 (n + 2)) (A284455 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210159.P3573884207058166940

/-! ## A210159.P2710452318690362971

`or(A210165(A000096(n+1)), A280751(n+1))`
-/

namespace A210159.P2710452318690362971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A210165 (A000096 (n + 1)).toNat) (A280751 (n + 1))

end

end A210159.P2710452318690362971

/-!
# A210160: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210160, there is no canonical definition to state claims against.
-/

/-! ## A210160.P4943613982658806103

`A210165(A167614(n+1))`
-/

namespace A210160.P4943613982658806103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A167614 (n + 1)).toNat

end

end A210160.P4943613982658806103

/-! ## A210160.P8905700229146063484

`A210165(A055998(n)+6)`
-/

namespace A210160.P8905700229146063484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A055998 n + 6).toNat

end

end A210160.P8905700229146063484

/-! ## A210160.P9098849049333302485

`A210165(A167499(n)+n)`
-/

namespace A210160.P9098849049333302485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A167499 n + (n : ℤ)).toNat

end

end A210160.P9098849049333302485

/-! ## A210160.P3656114510513681980

`A210165(A000217(n+2)+3)`
-/

namespace A210160.P3656114510513681980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A000217 (n + 2) + 3).toNat

end

end A210160.P3656114510513681980

/-! ## A210160.P3561712379582770508

`A210165(∑[n+3]+1)`
-/

namespace A210160.P3561712379582770508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210160.P3561712379582770508

/-!
# A210161: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210161, there is no canonical definition to state claims against.
-/

/-! ## A210161.P13190692591141458505

`A210165(A052905(n)+9)`
-/

namespace A210161.P13190692591141458505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A052905 n + 9).toNat

end

end A210161.P13190692591141458505

/-! ## A210161.P10922546743291982815

`A210165(A046691(n+1)+8)`
-/

namespace A210161.P10922546743291982815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A046691 (n + 1) + 8).toNat

end

end A210161.P10922546743291982815

/-! ## A210161.P4631535739199876338

`A210165(A055998(n+2))`
-/

namespace A210161.P4631535739199876338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A055998 (n + 2)).toNat

end

end A210161.P4631535739199876338

/-! ## A210161.P16875153307233987531

`A210165(A056000(n)+7)`
-/

namespace A210161.P16875153307233987531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (A056000 n + 7).toNat

end

end A210161.P16875153307233987531

/-!
# A210162: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having two or three distinct values, and new values 0..3 introduced in row major order.

The programs for A210162, there is no canonical definition to state claims against.
-/

/-! ## A210162.P11824433215017411484

`A210165(∑[n+5]+6)`
-/

namespace A210162.P11824433215017411484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210165 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A210162.P11824433215017411484

/-!
# A210166: Number of (n+1)X(n+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210166, there is no canonical definition to state claims against.
-/

/-! ## A210166.P16138328797982550665

`A210174((n+1)²+n²)`
-/

namespace A210166.P16138328797982550665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 ((n + 1) ^ 2 + n ^ 2)

end

end A210166.P16138328797982550665

/-!
# A210167: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210167, the canonical program `A210167.P12712980395571066904` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210167 has offset 1).

The definition of A210167 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210167.P12712980395571066904

`A210118(n+1)-A209890(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A210167

/-- `A210118(n+1)-A209890(n+1)` -/
def P12712980395571066904.Spec : Prop :=
  ∀ n, P12712980395571066904.a n = A210167 (n + 1)

theorem P12712980395571066904.correct : P12712980395571066904.Spec := by
  intro n
  simp only [A210167, Nat.add_sub_cancel]

end A210167

/-! ## A210167.P17468148671257892867

`A210118(n+1)-A209897(A000124(n))`
-/

namespace A210167.P17468148671257892867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210118 (n + 1) - A209897 (A000124 n).toNat

end

end A210167.P17468148671257892867

namespace A210167

/-- `A210118(n+1)-A209897(A000124(n))` -/
def P17468148671257892867.Spec : Prop :=
  ∀ n, P17468148671257892867.a n = A210167 (n + 1)

end A210167

/-! ## A210167.P2764756093211390917

`A210174(∑[n]+1)`
-/

namespace A210167.P2764756093211390917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210167.P2764756093211390917

namespace A210167

/-- `A210174(∑[n]+1)` -/
def P2764756093211390917.Spec : Prop :=
  ∀ n, P2764756093211390917.a n = A210167 (n + 1)

end A210167

/-! ## A210167.P15496121386208195235

`record[A010054(n)*A210174(n+1)]`
-/

namespace A210167.P15496121386208195235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210167.P15496121386208195235

namespace A210167

/-- `record[A010054(n)*A210174(n+1)]` -/
def P15496121386208195235.Spec : Prop :=
  ∀ n, P15496121386208195235.a n = A210167 (n + 1)

end A210167

/-! ## A210167.P2306904120902491703

`record[root(A210174(n+1), A004070(n))]`
-/

namespace A210167.P2306904120902491703
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210174 (n + 1) : ℝ) ^ (1 / (A004070 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210167.P2306904120902491703

namespace A210167

/-- `record[root(A210174(n+1), A004070(n))]` -/
def P2306904120902491703.Spec : Prop :=
  ∀ n, P2306904120902491703.a n = (A210167 (n + 1) : ℝ)

end A210167

/-!
# A210168: Number of (n+1) X 3 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210168, there is no canonical definition to state claims against.
-/

/-! ## A210168.P7748309967515443065

`A210119(n+1)-A209891(n+1)`
-/

namespace A210168.P7748309967515443065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210119 (n + 1) - A209891 (n + 1)

end

end A210168.P7748309967515443065

/-! ## A210168.P5675017190246892637

`A210119(n+1)-A209897(∑[n+1]+2)`
-/

namespace A210168.P5675017190246892637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210119 (n + 1) - A209897 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210168.P5675017190246892637

/-! ## A210168.P17508528203604280970

`A210119(n+1)-record[A209897(Δ[A003453(n+5)])]`
-/

namespace A210168.P17508528203604280970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209897 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210119 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210168.P17508528203604280970

/-! ## A210168.P6932570542777708725

`A210174(∑[n+1]+2)`
-/

namespace A210168.P6932570542777708725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210168.P6932570542777708725

/-! ## A210168.P2063190101313469108

`record[A010054(n)*A210174(n+2)]`
-/

namespace A210168.P2063190101313469108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210174 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210168.P2063190101313469108

/-!
# A210169: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210169, there is no canonical definition to state claims against.
-/

/-! ## A210169.P12974313466458751790

`A210174(∑[n+2]+4)`
-/

namespace A210169.P12974313466458751790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210169.P12974313466458751790

/-! ## A210169.P14631722062056913487

`or(1, A210174(A167614(n+1)))`
-/

namespace A210169.P14631722062056913487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A210174 (A167614 (n + 1)).toNat)

end

end A210169.P14631722062056913487

/-! ## A210169.P2128147087021521809

`A210174(A167614(n+1))+A025438(n)`
-/

namespace A210169.P2128147087021521809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A167614 (n + 1)).toNat + A025438 n

end

end A210169.P2128147087021521809

/-! ## A210169.P1553075886770307333

`A210174(A167614(n+1))+A185284(n)`
-/

namespace A210169.P1553075886770307333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A167614 (n + 1)).toNat + A185284 n

end

end A210169.P1553075886770307333

/-! ## A210169.P15072425213074708861

`A210125(A167614(n+1))-A209892(n+1)`
-/

namespace A210169.P15072425213074708861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (A167614 (n + 1)).toNat - A209892 (n + 1)

end

end A210169.P15072425213074708861

/-!
# A210170: Number of (n+1)X5 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210170, there is no canonical definition to state claims against.
-/

/-! ## A210170.P3048974755805070371

`A210174(A374004(n+1))`
-/

namespace A210170.P3048974755805070371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A374004 (n + 1)).toNat

end

end A210170.P3048974755805070371

/-! ## A210170.P14726015460843428580

`A210174(A052905(n)+9)`
-/

namespace A210170.P14726015460843428580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A052905 n + 9).toNat

end

end A210170.P14726015460843428580

/-! ## A210170.P529203924067004873

`A210174(A055999(n)+10)`
-/

namespace A210170.P529203924067004873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A055999 n + 10).toNat

end

end A210170.P529203924067004873

/-! ## A210170.P2954433013065024759

`A210174(A167614(n+2)+1)`
-/

namespace A210170.P2954433013065024759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A167614 (n + 2) + 1).toNat

end

end A210170.P2954433013065024759

/-! ## A210170.P2347559097641121640

`A210174(A141214(n+1))`
-/

namespace A210170.P2347559097641121640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A141214 (n + 1)).toNat

end

end A210170.P2347559097641121640

/-!
# A210171: Number of (n+1)X6 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210171, there is no canonical definition to state claims against.
-/

/-! ## A210171.P1153473568072317361

`A210122(n+1)-A209894(n+1)`
-/

namespace A210171.P1153473568072317361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210122 (n + 1) - A209894 (n + 1)

end

end A210171.P1153473568072317361

/-! ## A210171.P12188836121384307754

`A210122(n+1)-A209897(Δ[A023545(n+1)])`
-/

namespace A210171.P12188836121384307754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210122 (n + 1) - A209897 (f1 (n + 1) - f1 n).toNat

end

end A210171.P12188836121384307754

/-! ## A210171.P9567742182479840375

`A210174(A374005(n+1))`
-/

namespace A210171.P9567742182479840375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A374005 (n + 1)).toNat

end

end A210171.P9567742182479840375

/-! ## A210171.P6647116847105785461

`A210174(A155212(n)+13)`
-/

namespace A210171.P6647116847105785461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A155212 n + 13).toNat

end

end A210171.P6647116847105785461

/-! ## A210171.P12001749364056153573

`A210174(A056000(n)+15)`
-/

namespace A210171.P12001749364056153573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A056000 n + 15).toNat

end

end A210171.P12001749364056153573

/-!
# A210172: Number of (n+1)X7 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210172, there is no canonical definition to state claims against.
-/

/-! ## A210172.P2673703981755876784

`A210174(A374007(n+1))`
-/

namespace A210172.P2673703981755876784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A374007 (n + 1)).toNat

end

end A210172.P2673703981755876784

/-! ## A210172.P10732163889425233709

`A210174(A056115(n)+21)`
-/

namespace A210172.P10732163889425233709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A056115 n + 21).toNat

end

end A210172.P10732163889425233709

/-! ## A210172.P16055124041801531599

`A210174(Δ[A023545(n+1)]+10)`
-/

namespace A210172.P16055124041801531599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (f1 (n + 1) - f1 n + 10).toNat

end

end A210172.P16055124041801531599

/-! ## A210172.P7464217547328755465

`A210174(A052905(n+3))`
-/

namespace A210172.P7464217547328755465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A052905 (n + 3)).toNat

end

end A210172.P7464217547328755465

/-! ## A210172.P16957039953923626926

`A210174(eq[5, A193592(n)])`
-/

namespace A210172.P16957039953923626926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210172.P16957039953923626926

/-!
# A210173: Number of (n+1)X8 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210173, there is no canonical definition to state claims against.
-/

/-! ## A210173.P16734058002784121227

`A210174(A374008(n+1))`
-/

namespace A210173.P16734058002784121227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A374008 (n + 1)).toNat

end

end A210173.P16734058002784121227

/-! ## A210173.P986122809168350438

`A210174(A056119(n)+28)`
-/

namespace A210173.P986122809168350438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A056119 n + 28).toNat

end

end A210173.P986122809168350438

/-! ## A210173.P7121721221870208382

`A210174(A000124(n+6)+6)`
-/

namespace A210173.P7121721221870208382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A000124 (n + 6) + 6).toNat

end

end A210173.P7121721221870208382

/-! ## A210173.P1068461525533736704

`A210174(A055999(n+4))`
-/

namespace A210173.P1068461525533736704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (A055999 (n + 4)).toNat

end

end A210173.P1068461525533736704

/-! ## A210173.P4145255391691996854

`A210174(eq[6, A193592(n)])`
-/

namespace A210173.P4145255391691996854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210174 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210173.P4145255391691996854

/-!
# A210174: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having two or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210174, there is no canonical definition to state claims against.
-/

/-! ## A210174.P1340094350297872510

`A210125(n+1)-A209897(n+1)`
-/

namespace A210174.P1340094350297872510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210125 (n + 1) - A209897 (n + 1)

end

end A210174.P1340094350297872510

/-! ## A210174.P10424541976012236862

`A038312(n)+A007814(A005789(n))`
-/

namespace A210174.P10424541976012236862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038312 n + A007814 (A005789 n).toNat

end

end A210174.P10424541976012236862

/-!
# A210175: Number of (n+1)X(n+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210175, there is no canonical definition to state claims against.
-/

/-! ## A210175.P5178531534078209816

`A210183((n+1)²+n²)`
-/

namespace A210175.P5178531534078209816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 ((n + 1) ^ 2 + n ^ 2)

end

end A210175.P5178531534078209816

/-!
# A210176: Number of (n+1) X 2 0..3 arrays containing all values 0..3 with every 2 X 2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210176, there is no canonical definition to state claims against.
-/

/-! ## A210176.P17878940047929486303

`ogf((1+37x+56x^2+20x^3)/(1-14x+26x^2+68x^3+24x^4))`
-/

namespace A210176.P17878940047929486303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 37, 56, 20] [1, -14, 26, 68, 24] n

end

end A210176.P17878940047929486303

/-! ## A210176.P15597992248460902921

`A210406(n+1)-A183603(A000124(n))`
-/

namespace A210176.P15597992248460902921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210406 (n + 1) - A183603 (A000124 n).toNat

end

end A210176.P15597992248460902921

/-! ## A210176.P12834212623279269680

`A210183(∑[n]+1)`
-/

namespace A210176.P12834212623279269680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210176.P12834212623279269680

/-! ## A210176.P2750356344662332337

`record[A010054(n)*A210183(n+1)]`
-/

namespace A210176.P2750356344662332337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210176.P2750356344662332337

/-! ## A210176.P11263289969742260465

`record[root(A210183(n+1), A059268(n))]`
-/

namespace A210176.P11263289969742260465
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210183 (n + 1) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210176.P11263289969742260465

/-!
# A210177: Number of (n+1)X3 0..3 arrays containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210177, there is no canonical definition to state claims against.
-/

/-! ## A210177.P14029806605349734056

`A210183(∑[n+1]+2)`
-/

namespace A210177.P14029806605349734056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A210177.P14029806605349734056

/-! ## A210177.P17777102593841420040

`record[A010054(n)*A210183(n+2)]`
-/

namespace A210177.P17777102593841420040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A210183 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210177.P17777102593841420040

/-! ## A210177.P6885130203134151325

`record[root(A210183(n+2), A059268(n))]`
-/

namespace A210177.P6885130203134151325
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210183 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210177.P6885130203134151325

/-! ## A210177.P274572800024695818

`record[root(A210183(n+2), A124927(n))]`
-/

namespace A210177.P274572800024695818
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A210183 (n + 2) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210177.P274572800024695818

/-! ## A210177.P13855495759005044701

`lcm((-1)^n, A210183(A000096(n)+3))`
-/

namespace A210177.P13855495759005044701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A210183 (A000096 n + 3).toNat)

end

end A210177.P13855495759005044701

/-!
# A210178: Number of (n+1)X4 0..3 arrays containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210178, there is no canonical definition to state claims against.
-/

/-! ## A210178.P7815314659063088415

`A210408(n+1)-A183603(A167614(n+1))`
-/

namespace A210178.P7815314659063088415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210408 (n + 1) - A183603 (A167614 (n + 1)).toNat

end

end A210178.P7815314659063088415

/-! ## A210178.P14521164019201480341

`A210183(∑[n+2]+4)`
-/

namespace A210178.P14521164019201480341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A210178.P14521164019201480341

/-! ## A210178.P17368157954842470492

`lcm(A059268(n), A210183(A167614(n+1)))`
-/

namespace A210178.P17368157954842470492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A210183 (A167614 (n + 1)).toNat)

end

end A210178.P17368157954842470492

/-! ## A210178.P3819976065112774467

`or(A063524(n), A210183(A167614(n+1)))`
-/

namespace A210178.P3819976065112774467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A210183 (A167614 (n + 1)).toNat)

end

end A210178.P3819976065112774467

/-! ## A210178.P6340383457769139151

`A210183(A167614(n+1))%A183589(n+1)`
-/

namespace A210178.P6340383457769139151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210183 (A167614 (n + 1)).toNat) (A183589 (n + 1))

end

end A210178.P6340383457769139151

/-!
# A210179: Number of (n+1)X5 0..3 arrays containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210179, there is no canonical definition to state claims against.
-/

/-! ## A210179.P14747726422079241092

`A210183(A167614(n+2)+1)`
-/

namespace A210179.P14747726422079241092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (A167614 (n + 2) + 1).toNat

end

end A210179.P14747726422079241092

/-! ## A210179.P18209234725759007292

`A210183(A027379(n+2))`
-/

namespace A210179.P18209234725759007292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (A027379 (n + 2)).toNat

end

end A210179.P18209234725759007292

/-! ## A210179.P9029364281462405063

`A210183(A055998(n+2))`
-/

namespace A210179.P9029364281462405063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (A055998 (n + 2)).toNat

end

end A210179.P9029364281462405063

/-! ## A210179.P13794826692941621252

`A210183(A056000(n)+7)`
-/

namespace A210179.P13794826692941621252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (A056000 n + 7).toNat

end

end A210179.P13794826692941621252

/-! ## A210179.P3528812616362812427

`A210183(eq[3, A193592(n)])`
-/

namespace A210179.P3528812616362812427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210179.P3528812616362812427

/-!
# A210180: Number of (n+1)X6 0..3 arrays containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210180, there is no canonical definition to state claims against.
-/

/-! ## A210180.P12591782123885702012

`A210183(A167614(n+3)+2)`
-/

namespace A210180.P12591782123885702012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (A167614 (n + 3) + 2).toNat

end

end A210180.P12591782123885702012

/-! ## A210180.P7405019741767444081

`A210183(A055998(n+2)+8)`
-/

namespace A210180.P7405019741767444081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (A055998 (n + 2) + 8).toNat

end

end A210180.P7405019741767444081

/-!
# A210182: Number of (n+1)X8 0..3 arrays containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210182, there is no canonical definition to state claims against.
-/

/-! ## A210182.P16837368393542197188

`A210183(eq[7, A004736(n+1)]+1)`
-/

namespace A210182.P16837368393542197188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210182.P16837368393542197188

/-!
# A210183: T(n,k)=Number of (n+1)X(k+1) 0..3 arrays containing all values 0..3 with every 2X2 subblock having three or four distinct values, and new values 0..3 introduced in row major order.

The programs for A210183, there is no canonical definition to state claims against.
-/

/-! ## A210183.P5588508649703477840

`A210413(n+1)-A183603(n+1)`
-/

namespace A210183.P5588508649703477840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210413 (n + 1) - A183603 (n + 1)

end

end A210183.P5588508649703477840

/-! ## A210183.P795610676098461348

`A210267(n+1)+A210413(n+1)-A183594(n+1)`
-/

namespace A210183.P795610676098461348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210267 (n + 1) + (A210413 (n + 1) - A183594 (n + 1))

end

end A210183.P795610676098461348

/-!
# A210184: Number of distinct residues of all factorials mod prime(n).

The programs for A210184, there is no canonical definition to state claims against.
-/

/-! ## A210184.P11360394333226484758

`A038203(p?[comp[n²]])`
-/

namespace A210184.P11360394333226484758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A210184.P11360394333226484758

/-! ## A210184.P8571843655310721386

`A038203(A000040(n+1))`
-/

namespace A210184.P8571843655310721386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (A000040 (n + 1)).toNat

end

end A210184.P8571843655310721386

/-! ## A210184.P15642376859449250139

`A038203(A008578(n+2))`
-/

namespace A210184.P15642376859449250139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (A008578 (n + 2)).toNat

end

end A210184.P15642376859449250139

/-! ## A210184.P7657195753752237989

`A038203(A182986(n+2))`
-/

namespace A210184.P7657195753752237989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (A182986 (n + 2)).toNat

end

end A210184.P7657195753752237989

/-! ## A210184.P17566036414115724826

`A038203(record[A006530(n+2)])`
-/

namespace A210184.P17566036414115724826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210184.P17566036414115724826

/-! ## A210184.P15187537576999425457

`A038203(record[A014963(n+2)])`
-/

namespace A210184.P15187537576999425457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210184.P15187537576999425457

/-! ## A210184.P5154409327637431194

`A038203(record[A020639(n+2)])`
-/

namespace A210184.P5154409327637431194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A210184.P5154409327637431194

/-! ## A210184.P15720174755428025484

`A038203(A073582(n+1))-1`
-/

namespace A210184.P15720174755428025484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038203 (A073582 (n + 1)).toNat - 1

end

end A210184.P15720174755428025484

/-!
# A210188: Triangle of coefficients of polynomials v(n,x) jointly generated with A210187; see the Formula section.

The programs for A210188, the canonical program `A210188.P4006108130984620707` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210188 has offset 1).

The definition of A210188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210188.P4006108130984620707

`A078812(n)+A085478(n)-A010054(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A210188

/-- `A078812(n)+A085478(n)-A010054(n)` -/
def P4006108130984620707.Spec : Prop :=
  ∀ n, P4006108130984620707.a n = A210188 (n + 1)

theorem P4006108130984620707.correct : P4006108130984620707.Spec := by
  intro n
  simp only [A210188, Nat.add_sub_cancel]

end A210188

/-! ## A210188.P18128024867740994660

`A207621(n+1)+A165253(n)-A010054(n)`
-/

namespace A210188.P18128024867740994660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207621 (n + 1) + (A165253 n - A010054 n)

end

end A210188.P18128024867740994660

namespace A210188

/-- `A207621(n+1)+A165253(n)-A010054(n)` -/
def P18128024867740994660.Spec : Prop :=
  ∀ n, P18128024867740994660.a n = A210188 (n + 1)

theorem P18128024867740994660.correct : P18128024867740994660.Spec := by
  intro n
  simp only [A210188, Nat.add_sub_cancel, A210188.P18128024867740994660.a, A210188.P4006108130984620707.a, A010054, A010054.P18347828677204923252.a, A078812, A078812.P9928716860580034230.a, A085478, A085478.P11759972136797087667.a, A165253, A165253.P14569316113602558688.a, A207621, A207621.P2290235971314170358.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A210188

/-! ## A210188.P5913091204145775856

`A078812(n)+A085478(n)%A207607(n+1)`
-/

namespace A210188.P5913091204145775856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n + Int.tmod (A085478 n) (A207607 (n + 1))

end

end A210188.P5913091204145775856

namespace A210188

/-- `A078812(n)+A085478(n)%A207607(n+1)` -/
def P5913091204145775856.Spec : Prop :=
  ∀ n, P5913091204145775856.a n = A210188 (n + 1)

end A210188

/-! ## A210188.P8887666607999836698

`A207620(n+1)+A078812(n)-A207606(n+1)`
-/

namespace A210188.P8887666607999836698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207620 (n + 1) + (A078812 n - A207606 (n + 1))

end

end A210188.P8887666607999836698

namespace A210188

/-- `A207620(n+1)+A078812(n)-A207606(n+1)` -/
def P8887666607999836698.Spec : Prop :=
  ∀ n, P8887666607999836698.a n = A210188 (n + 1)

end A210188

/-! ## A210188.P2778842614740278503

`A207606(n+2)-char[∑[n]]`
-/

namespace A210188.P2778842614740278503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207606 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210188.P2778842614740278503

namespace A210188

/-- `A207606(n+2)-char[∑[n]]` -/
def P2778842614740278503.Spec : Prop :=
  ∀ n, P2778842614740278503.a n = A210188 (n + 1)

end A210188

/-!
# A210189: Triangle of coefficients of polynomials u(n,x) jointly generated with A210190; see the Formula section.

The programs for A210189, the canonical program `A210189.P11192886446134679088` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210189 has offset 1).

The definition of A210189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210189.P11192886446134679088

`A011782(A122197(n+1))*A210039(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A210189

/-- `A011782(A122197(n+1))*A210039(n+1)` -/
def P11192886446134679088.Spec : Prop :=
  ∀ n, P11192886446134679088.a n = A210189 (n + 1)

theorem P11192886446134679088.correct : P11192886446134679088.Spec := by
  intro n
  simp only [A210189, Nat.add_sub_cancel]

end A210189

/-! ## A210189.P13477961447177803523

`A207536(A049068(n+1))/2`
-/

namespace A210189.P13477961447177803523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207536 (A049068 (n + 1)).toNat : ℚ) / 2

end

end A210189.P13477961447177803523

namespace A210189

/-- `A207536(A049068(n+1))/2` -/
def P13477961447177803523.Spec : Prop :=
  ∀ n, P13477961447177803523.a n = (A210189 (n + 1) : ℚ)

end A210189

/-! ## A210189.P15531520833301183353

`A059268(A091018(n))*A210039(n+1)`
-/

namespace A210189.P15531520833301183353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A091018 n).toNat * A210039 (n + 1)

end

end A210189.P15531520833301183353

namespace A210189

/-- `A059268(A091018(n))*A210039(n+1)` -/
def P15531520833301183353.Spec : Prop :=
  ∀ n, P15531520833301183353.a n = A210189 (n + 1)

end A210189

/-! ## A210189.P980399919509807883

`A007318(A161827(n+1)+n)*A059268(A091018(n))`
-/

namespace A210189.P980399919509807883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161827 (n + 1) + (n : ℤ)).toNat * A059268 (A091018 n).toNat

end

end A210189.P980399919509807883

namespace A210189

/-- `A007318(A161827(n+1)+n)*A059268(A091018(n))` -/
def P980399919509807883.Spec : Prop :=
  ∀ n, P980399919509807883.a n = A210189 (n + 1)

end A210189

/-! ## A210189.P4779894695111685925

`A208520(A000037(n+1)+1+n)`
-/

namespace A210189.P4779894695111685925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208520 (A000037 (n + 1) + 1 + (n : ℤ)).toNat

end

end A210189.P4779894695111685925

namespace A210189

/-- `A208520(A000037(n+1)+1+n)` -/
def P4779894695111685925.Spec : Prop :=
  ∀ n, P4779894695111685925.a n = A210189 (n + 1)

end A210189

/-! ## A210189.P17118999565535861751

`gcd(A135610(n+1), A277513(n+3))`
-/

namespace A210189.P17118999565535861751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135610 (n + 1)) (A277513 (n + 3))

end

end A210189.P17118999565535861751

namespace A210189

/-- `gcd(A135610(n+1), A277513(n+3))` -/
def P17118999565535861751.Spec : Prop :=
  ∀ n, (P17118999565535861751.a n : ℤ) = A210189 (n + 1)

end A210189

/-!
# A210190: Triangle of coefficients of polynomials v(n,x) jointly generated with A210189; see the Formula section.

The programs for A210190, the canonical program `A210190.P939011334498092116` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210190 has offset 1).

The definition of A210190 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210190.P939011334498092116

`A105070(Δ[A055087(n)]+n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A210190

/-- `A105070(Δ[A055087(n)]+n+1)` -/
def P939011334498092116.Spec : Prop :=
  ∀ n, P939011334498092116.a n = A210190 (n + 1)

theorem P939011334498092116.correct : P939011334498092116.Spec := by
  intro n
  simp only [A210190, Nat.add_sub_cancel]

end A210190

/-! ## A210190.P7628449246946949274

`A105070(n+2)-Δ[A135034(4*n+2)]`
-/

namespace A210190.P7628449246946949274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (4 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105070 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210190.P7628449246946949274

namespace A210190

/-- `A105070(n+2)-Δ[A135034(4*n+2)]` -/
def P7628449246946949274.Spec : Prop :=
  ∀ n, P7628449246946949274.a n = A210190 (n + 1)

end A210190

/-! ## A210190.P13442150444661818436

`A145596(lt[1, A117297(2*(n+2))])`
-/

namespace A210190.P13442150444661818436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117297 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210190.P13442150444661818436

namespace A210190

/-- `A145596(lt[1, A117297(2*(n+2))])` -/
def P13442150444661818436.Spec : Prop :=
  ∀ n, P13442150444661818436.a n = A210190 (n + 1)

end A210190

/-! ## A210190.P2117252173430694881

`A186753((1-(∑{digits}[n, #]-n))*A051382(n+1))`
-/

namespace A210190.P2117252173430694881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186753 ((1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))) * A051382 (n + 1)).toNat

end

end A210190.P2117252173430694881

namespace A210190

/-- `A186753((1-(∑{digits}[n, #]-n))*A051382(n+1))` -/
def P2117252173430694881.Spec : Prop :=
  ∀ n, P2117252173430694881.a n = A210190 (n + 1)

end A210190

/-! ## A210190.P14405862569658556764

`A186753(A051382(n+1)^(1-(∑{digits}[n, #]-n)))`
-/

namespace A210190.P14405862569658556764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186753 (SequenceMachineLib.roundAway ((A051382 (n + 1) : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A210190.P14405862569658556764

namespace A210190

/-- `A186753(A051382(n+1)^(1-(∑{digits}[n, #]-n)))` -/
def P14405862569658556764.Spec : Prop :=
  ∀ n, P14405862569658556764.a n = A210190 (n + 1)

end A210190

/-!
# A210192: Triangle of coefficients of polynomials v(n,x) jointly generated with A210191; see the Formula section.

The programs for A210192, the canonical program `A210192.P2569907558330454829` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210192 has offset 1).

The definition of A210192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210192.P12258223376418832163

`A266213(n)+A102662(n+1)-char[∑[n]]`
-/

namespace A210192.P12258223376418832163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n + A102662 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210192.P12258223376418832163

namespace A210192

/-- `A266213(n)+A102662(n+1)-char[∑[n]]` -/
def P12258223376418832163.Spec : Prop :=
  ∀ n, P12258223376418832163.a n = A210192 (n + 1)

end A210192

/-! ## A210192.P2569907558330454829

`A035607(n)+A008288(n)%A193722(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A210192

/-- `A035607(n)+A008288(n)%A193722(n)` -/
def P2569907558330454829.Spec : Prop :=
  ∀ n, P2569907558330454829.a n = A210192 (n + 1)

theorem P2569907558330454829.correct : P2569907558330454829.Spec := by
  intro n
  simp only [A210192, Nat.add_sub_cancel]

end A210192

/-! ## A210192.P17036355447807582531

`A008288(n)+A035607(n)-A197870(n)²`
-/

namespace A210192.P17036355447807582531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A035607 n - A197870 n ^ 2)

end

end A210192.P17036355447807582531

namespace A210192

/-- `A008288(n)+A035607(n)-A197870(n)²` -/
def P17036355447807582531.Spec : Prop :=
  ∀ n, P17036355447807582531.a n = A210192 (n + 1)

end A210192

/-! ## A210192.P4551358520596261964

`A008288(n)+A035607(n)-char[A000217(n)]`
-/

namespace A210192.P4551358520596261964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A035607 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A210192.P4551358520596261964

namespace A210192

/-- `A008288(n)+A035607(n)-char[A000217(n)]` -/
def P4551358520596261964.Spec : Prop :=
  ∀ n, P4551358520596261964.a n = A210192 (n + 1)

end A210192

/-! ## A210192.P13501387958722162166

`gcd(A266213(n)+A102662(n+1), A133089(n))`
-/

namespace A210192.P13501387958722162166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A266213 n + A102662 (n + 1)) (A133089 n)

end

end A210192.P13501387958722162166

namespace A210192

/-- `gcd(A266213(n)+A102662(n+1), A133089(n))` -/
def P13501387958722162166.Spec : Prop :=
  ∀ n, (P13501387958722162166.a n : ℤ) = A210192 (n + 1)

end A210192

/-! ## A210192.P10226541191467406578

`A008288(n)+A035607(n)-A000007(A002262(n))`
-/

namespace A210192.P10226541191467406578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + (A035607 n - A000007 (A002262 n).toNat)

end

end A210192.P10226541191467406578

namespace A210192

/-- `A008288(n)+A035607(n)-A000007(A002262(n))` -/
def P10226541191467406578.Spec : Prop :=
  ∀ n, P10226541191467406578.a n = A210192 (n + 1)

end A210192

/-! ## A210192.P10378658768909530018

`A008288(n)+A035607(n)%A013613(n)`
-/

namespace A210192.P10378658768909530018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n + Int.tmod (A035607 n) (A013613 n)

end

end A210192.P10378658768909530018

namespace A210192

/-- `A008288(n)+A035607(n)%A013613(n)` -/
def P10378658768909530018.Spec : Prop :=
  ∀ n, P10378658768909530018.a n = A210192 (n + 1)

end A210192

/-! ## A210192.P1817594919406127386

`(A035607(n)+A008288(n))/A000034(A331843(n))`
-/

namespace A210192.P1817594919406127386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035607 n + A008288 n : ℚ) / (A000034 (A331843 n).toNat : ℚ)

end

end A210192.P1817594919406127386

namespace A210192

/-- `(A035607(n)+A008288(n))/A000034(A331843(n))` -/
def P1817594919406127386.Spec : Prop :=
  ∀ n, P1817594919406127386.a n = (A210192 (n + 1) : ℚ)

end A210192

/-! ## A210192.P10496342091057946964

`A000265(A035607(n)+A008288(n))`
-/

namespace A210192.P10496342091057946964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A035607 n + A008288 n).toNat

end

end A210192.P10496342091057946964

namespace A210192

/-- `A000265(A035607(n)+A008288(n))` -/
def P10496342091057946964.Spec : Prop :=
  ∀ n, P10496342091057946964.a n = A210192 (n + 1)

end A210192

/-! ## A210192.P2894072491405278260

`A000265(A266213(n)+A102662(n+1))`
-/

namespace A210192.P2894072491405278260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A266213 n + A102662 (n + 1)).toNat

end

end A210192.P2894072491405278260

namespace A210192

/-- `A000265(A266213(n)+A102662(n+1))` -/
def P2894072491405278260.Spec : Prop :=
  ∀ n, P2894072491405278260.a n = A210192 (n + 1)

end A210192

/-!
# A210194: Triangle of coefficients of polynomials v(n,x) jointly generated with A210193; see the Formula section.

The programs for A210194, there is no canonical definition to state claims against.
-/

/-! ## A210194.P14006395209108485108

`A207608(n+2)-char[∑[n]]`
-/

namespace A210194.P14006395209108485108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207608 (n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210194.P14006395209108485108

/-! ## A210194.P7616149119290905697

`A028310(A207608(n+2)-A010054(n))`
-/

namespace A210194.P7616149119290905697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A207608 (n + 2) - A010054 n).toNat

end

end A210194.P7616149119290905697

/-!
# A210195: Triangle of coefficients of polynomials u(n,x) jointly generated with A210196; see the Formula section.

The programs for A210195, there is no canonical definition to state claims against.
-/

/-! ## A210195.P5685844757801696703

`A210042(n+1)*A210221(n+1)/A076791(n)`
-/

namespace A210195.P5685844757801696703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210042 (n + 1) * A210221 (n + 1) : ℚ) / (A076791 n : ℚ)

end

end A210195.P5685844757801696703

/-! ## A210195.P3133280976414860355

`A210035(n+1)/A210033(n+1)*A210042(n+1)`
-/

namespace A210195.P3133280976414860355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210035 (n + 1) : ℚ) / (A210033 (n + 1) : ℚ) * (A210042 (n + 1) : ℚ)

end

end A210195.P3133280976414860355

/-!
# A210196: Triangle of coefficients of polynomials v(n,x) jointly generated with A210195; see the Formula section.

The programs for A210196, the canonical program `A210196.P11515123120557541586` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210196 has offset 1).

The definition of A210196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210196.P1397417943119986709

`T(n-1,k)+2*(T(1, T(n-1,k-1)-1)+T(n-1,k-1))` with `a(0)=1`
-/

namespace A210196.P1397417943119986709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triAt a 1 (((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ) - 1) + SequenceMachineLib.triUpLeft a n)

end

end A210196.P1397417943119986709

namespace A210196

/-- `T(n-1,k)+2*(T(1, T(n-1,k-1)-1)+T(n-1,k-1))` -/
def P1397417943119986709.Spec : Prop :=
  ∀ n, (P1397417943119986709.a n : ℤ) = A210196 (n + 1)

end A210196

/-! ## A210196.P370422198089605170

`2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A210196.P370422198089605170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n - 2 * SequenceMachineLib.triUp2Left a n

end

end A210196.P370422198089605170

namespace A210196

/-- `2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)-2*T(n-2,k-1)` -/
def P370422198089605170.Spec : Prop :=
  ∀ n, P370422198089605170.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P6586602607945068384

`(2-char[∑[n]])²*A082137(n)`
-/

namespace A210196.P6586602607945068384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2 * A082137 n

end

end A210196.P6586602607945068384

namespace A210196

/-- `(2-char[∑[n]])²*A082137(n)` -/
def P6586602607945068384.Spec : Prop :=
  ∀ n, P6586602607945068384.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P11515123120557541586

`A059268(n)*A124927(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210196

/-- `A059268(n)*A124927(n)` -/
def P11515123120557541586.Spec : Prop :=
  ∀ n, P11515123120557541586.a n = A210196 (n + 1)

theorem P11515123120557541586.correct : P11515123120557541586.Spec := by
  intro n
  simp only [A210196, Nat.add_sub_cancel]

end A210196

/-! ## A210196.P15638978538640110464

`A013609(n)*A238303(n)`
-/

namespace A210196.P15638978538640110464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A238303 n

end

end A210196.P15638978538640110464

namespace A210196

/-- `A013609(n)*A238303(n)` -/
def P15638978538640110464.Spec : Prop :=
  ∀ n, P15638978538640110464.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P7399002422011022568

`A013611(n)/A232089(n)`
-/

namespace A210196.P7399002422011022568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (A232089 n : ℚ)

end

end A210196.P7399002422011022568

namespace A210196

/-- `A013611(n)/A232089(n)` -/
def P7399002422011022568.Spec : Prop :=
  ∀ n, P7399002422011022568.a n = (A210196 (n + 1) : ℚ)

end A210196

/-! ## A210196.P4392220913624369219

`(2-A010054(n))*A013609(n)`
-/

namespace A210196.P4392220913624369219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010054 n) * A013609 n

end

end A210196.P4392220913624369219

namespace A210196

/-- `(2-A010054(n))*A013609(n)` -/
def P4392220913624369219.Spec : Prop :=
  ∀ n, P4392220913624369219.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P12564567517841047969

`2*A013609(n)/A035214(n)`
-/

namespace A210196.P12564567517841047969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A013609 n : ℚ) / (A035214 n : ℚ))

end

end A210196.P12564567517841047969

namespace A210196

/-- `2*A013609(n)/A035214(n)` -/
def P12564567517841047969.Spec : Prop :=
  ∀ n, P12564567517841047969.a n = (A210196 (n + 1) : ℚ)

end A210196

/-! ## A210196.P5193502525346196140

`A124929(n+1)+A007318(n)-char[∑[n]]`
-/

namespace A210196.P5193502525346196140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124929 (n + 1) + A007318 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A210196.P5193502525346196140

namespace A210196

/-- `A124929(n+1)+A007318(n)-char[∑[n]]` -/
def P5193502525346196140.Spec : Prop :=
  ∀ n, P5193502525346196140.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P16684974715846945465

`A000079(A002262(n))*A124927(n)`
-/

namespace A210196.P16684974715846945465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A124927 n

end

end A210196.P16684974715846945465

namespace A210196

/-- `A000079(A002262(n))*A124927(n)` -/
def P16684974715846945465.Spec : Prop :=
  ∀ n, P16684974715846945465.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P2430620692689953685

`A011782(A002260(n+1))*A124927(n)`
-/

namespace A210196.P2430620692689953685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A124927 n

end

end A210196.P2430620692689953685

namespace A210196

/-- `A011782(A002260(n+1))*A124927(n)` -/
def P2430620692689953685.Spec : Prop :=
  ∀ n, P2430620692689953685.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P14669117586443624236

`A013609(n)*A040001(2*A002262(n))`
-/

namespace A210196.P14669117586443624236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A040001 (2 * A002262 n).toNat

end

end A210196.P14669117586443624236

namespace A210196

/-- `A013609(n)*A040001(2*A002262(n))` -/
def P14669117586443624236.Spec : Prop :=
  ∀ n, P14669117586443624236.a n = A210196 (n + 1)

end A210196

/-! ## A210196.P7999023672883496958

`A013609(n)/A082137(n)*A013609(n)`
-/

namespace A210196.P7999023672883496958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A082137 n : ℚ) * (A013609 n : ℚ)

end

end A210196.P7999023672883496958

namespace A210196

/-- `A013609(n)/A082137(n)*A013609(n)` -/
def P7999023672883496958.Spec : Prop :=
  ∀ n, P7999023672883496958.a n = (A210196 (n + 1) : ℚ)

end A210196

/-! ## A210196.P8718874639026991681

`A013611(n)/gcd(A013611(n), A166692(n))`
-/

namespace A210196.P8718874639026991681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013611 n : ℚ) / (Int.gcd (A013611 n) (A166692 n) : ℚ)

end

end A210196.P8718874639026991681

namespace A210196

/-- `A013611(n)/gcd(A013611(n), A166692(n))` -/
def P8718874639026991681.Spec : Prop :=
  ∀ n, P8718874639026991681.a n = (A210196 (n + 1) : ℚ)

end A210196

/-! ## A210196.P16879207405016891827

`gcd(2*A013613(n), A013611(n))`
-/

namespace A210196.P16879207405016891827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A013613 n) (A013611 n)

end

end A210196.P16879207405016891827

namespace A210196

/-- `gcd(2*A013613(n), A013611(n))` -/
def P16879207405016891827.Spec : Prop :=
  ∀ n, (P16879207405016891827.a n : ℤ) = A210196 (n + 1)

end A210196

/-! ## A210196.P18398137772961182946

`A013609(n)²/A082137(n)`
-/

namespace A210196.P18398137772961182946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n ^ 2 : ℚ) / (A082137 n : ℚ)

end

end A210196.P18398137772961182946

namespace A210196

/-- `A013609(n)²/A082137(n)` -/
def P18398137772961182946.Spec : Prop :=
  ∀ n, P18398137772961182946.a n = (A210196 (n + 1) : ℚ)

end A210196

/-! ## A210196.P15695434591266965335

`gcd(2*A303872(n), A303872(n)²)`
-/

namespace A210196.P15695434591266965335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A303872 n) (A303872 n ^ 2)

end

end A210196.P15695434591266965335

namespace A210196

/-- `gcd(2*A303872(n), A303872(n)²)` -/
def P15695434591266965335.Spec : Prop :=
  ∀ n, (P15695434591266965335.a n : ℤ) = A210196 (n + 1)

end A210196

/-! ## A210196.P11077882009132460167

`gcd(2*A013617(n), A013615(n))`
-/

namespace A210196.P11077882009132460167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A013617 n) (A013615 n)

end

end A210196.P11077882009132460167

namespace A210196

/-- `gcd(2*A013617(n), A013615(n))` -/
def P11077882009132460167.Spec : Prop :=
  ∀ n, (P11077882009132460167.a n : ℤ) = A210196 (n + 1)

end A210196

/-! ## A210196.P4592474061795786280

`gcd(2*A038292(n), A038270(n))`
-/

namespace A210196.P4592474061795786280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A038292 n) (A038270 n)

end

end A210196.P4592474061795786280

namespace A210196

/-- `gcd(2*A038292(n), A038270(n))` -/
def P4592474061795786280.Spec : Prop :=
  ∀ n, (P4592474061795786280.a n : ℤ) = A210196 (n + 1)

end A210196

/-! ## A210196.P4801040326799594784

`gcd(2*A038244(n), A013619(n))`
-/

namespace A210196.P4801040326799594784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A038244 n) (A013619 n)

end

end A210196.P4801040326799594784

namespace A210196

/-- `gcd(2*A038244(n), A013619(n))` -/
def P4801040326799594784.Spec : Prop :=
  ∀ n, (P4801040326799594784.a n : ℤ) = A210196 (n + 1)

end A210196

/-!
# A210197: Triangle of coefficients of polynomials u(n,x) jointly generated with A210198; see the Formula section.

The programs for A210197, the canonical program `A210197.P2839348897359410372` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210197 has offset 1).

The definition of A210197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210197.P2839348897359410372

`A193845(A091018(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A210197

/-- `A193845(A091018(n))` -/
def P2839348897359410372.Spec : Prop :=
  ∀ n, P2839348897359410372.a n = A210197 (n + 1)

theorem P2839348897359410372.correct : P2839348897359410372.Spec := by
  intro n
  simp only [A210197, Nat.add_sub_cancel]

end A210197

/-! ## A210197.P11897159085879943632

`A193845(A056536(1+n)-1)`
-/

namespace A210197.P11897159085879943632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193845 (A056536 (1 + n) - 1).toNat

end

end A210197.P11897159085879943632

namespace A210197

/-- `A193845(A056536(1+n)-1)` -/
def P11897159085879943632.Spec : Prop :=
  ∀ n, P11897159085879943632.a n = A210197 (n + 1)

end A210197

/-! ## A210197.P3680336974841579989

`abs(A257597(comp[floor((n/2)²)]))`
-/

namespace A210197.P3680336974841579989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257597 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A210197.P3680336974841579989

namespace A210197

/-- `abs(A257597(comp[floor((n/2)²)]))` -/
def P3680336974841579989.Spec : Prop :=
  ∀ n, P3680336974841579989.a n = A210197 (n + 1)

end A210197

/-! ## A210197.P228190179191322555

`A210037(lt[A075217(n+1), A269152(2*n+1)])`
-/

namespace A210197.P228190179191322555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269152 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A210197.P228190179191322555

namespace A210197

/-- `A210037(lt[A075217(n+1), A269152(2*n+1)])` -/
def P228190179191322555.Spec : Prop :=
  ∀ n, P228190179191322555.a n = A210197 (n + 1)

end A210197

/-!
# A210198: Triangle of coefficients of polynomials v(n,x) jointly generated with A210197; see the Formula section.

The programs for A210198, the canonical program `A210198.P1741042711181140859` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210198 has offset 1).

The definition of A210198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210198.P1741042711181140859

`A207538(n+2)-Δ[A000267(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A210198

/-- `A207538(n+2)-Δ[A000267(n)]` -/
def P1741042711181140859.Spec : Prop :=
  ∀ n, P1741042711181140859.a n = A210198 (n + 1)

theorem P1741042711181140859.correct : P1741042711181140859.Spec := by
  intro n
  simp only [A210198, Nat.add_sub_cancel]

end A210198

/-! ## A210198.P6094589195221043152

`A207538(n+2)-and(1, A128099(n+1))`
-/

namespace A210198.P6094589195221043152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (n + 2) - Int.land 1 (A128099 (n + 1))

end

end A210198.P6094589195221043152

namespace A210198

/-- `A207538(n+2)-and(1, A128099(n+1))` -/
def P6094589195221043152.Spec : Prop :=
  ∀ n, P6094589195221043152.a n = A210198 (n + 1)

end A210198

/-! ## A210198.P17776409481604254819

`A207538(n+2)+A104895(Δ[A000267(n)])`
-/

namespace A210198.P17776409481604254819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (n + 2) + A104895 (f1 (n + 1) - f1 n).toNat

end

end A210198.P17776409481604254819

namespace A210198

/-- `A207538(n+2)+A104895(Δ[A000267(n)])` -/
def P17776409481604254819.Spec : Prop :=
  ∀ n, P17776409481604254819.a n = A210198 (n + 1)

end A210198

/-! ## A210198.P2542234476495596155

`A207538(n+2)-A063524(A207536(n+1))`
-/

namespace A210198.P2542234476495596155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207538 (n + 2) - A063524 (A207536 (n + 1)).toNat

end

end A210198.P2542234476495596155

namespace A210198

/-- `A207538(n+2)-A063524(A207536(n+1))` -/
def P2542234476495596155.Spec : Prop :=
  ∀ n, P2542234476495596155.a n = A210198 (n + 1)

end A210198

/-! ## A210198.P3992411015170068620

`A179745(C(A345167(n+4), A055642(n)))`
-/

namespace A210198.P3992411015170068620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179745 (Nat.choose (A345167 (n + 4)).toNat (A055642 n).toNat)

end

end A210198.P3992411015170068620

namespace A210198

/-- `A179745(C(A345167(n+4), A055642(n)))` -/
def P3992411015170068620.Spec : Prop :=
  ∀ n, P3992411015170068620.a n = A210198 (n + 1)

end A210198

/-!
# A210199: Triangle of coefficients of polynomials u(n,x) jointly generated with A210200; see the Formula section.

The programs for A210199, there is no canonical definition to state claims against.
-/

/-! ## A210199.P17215793209269678074

`A209748(n+1)+A210200(n+1)-A210229(n+1)`
-/

namespace A210199.P17215793209269678074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209748 (n + 1) + (A210200 (n + 1) - A210229 (n + 1))

end

end A210199.P17215793209269678074

