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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A243600: Number of length n+2 0..3 arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..3 introduced in 0..3 order.

The programs for A243600, the canonical program `A243600.P13081447738916890478` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243600 has offset 1).

The definition of A243600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243600.P13081447738916890478

`5*a(n-1)-5*a(n-2)-3*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=4, a(1)=10, a(2)=28, a(3)=85, a(4)=269`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243600

/-- `5*a(n-1)-5*a(n-2)-3*a(n-3)+3*a(n-4)+a(n-5)` -/
def P13081447738916890478.Spec : Prop :=
  ∀ n, P13081447738916890478.a n = A243600 (n + 1)

theorem P13081447738916890478.correct : P13081447738916890478.Spec := by
  intro n
  simp only [A243600, Nat.add_sub_cancel]

end A243600

/-! ## A243600.P8525850170414429734

`A243607(∑[n+3]+1)`
-/

namespace A243600.P8525850170414429734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243600.P8525850170414429734

namespace A243600

/-- `A243607(∑[n+3]+1)` -/
def P8525850170414429734.Spec : Prop :=
  ∀ n, P8525850170414429734.a n = A243600 (n + 1)

end A243600

/-! ## A243600.P7276270536541461375

`lcm(A033999(n), A243607(A034856(n+2)))`
-/

namespace A243600.P7276270536541461375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243607 (A034856 (n + 2)).toNat)

end

end A243600.P7276270536541461375

namespace A243600

/-- `lcm(A033999(n), A243607(A034856(n+2)))` -/
def P7276270536541461375.Spec : Prop :=
  ∀ n, (P7276270536541461375.a n : ℤ) = A243600 (n + 1)

end A243600

/-! ## A243600.P14023447230599273710

`A033999(2*n)*A243607(A034856(n+2))`
-/

namespace A243600.P14023447230599273710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A243607 (A034856 (n + 2)).toNat

end

end A243600.P14023447230599273710

namespace A243600

/-- `A033999(2*n)*A243607(A034856(n+2))` -/
def P14023447230599273710.Spec : Prop :=
  ∀ n, P14023447230599273710.a n = A243600 (n + 1)

end A243600

/-! ## A243600.P5288246155870950162

`or(1, A010054(n))*A243607(A034856(n+2))`
-/

namespace A243600.P5288246155870950162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A010054 n) * A243607 (A034856 (n + 2)).toNat

end

end A243600.P5288246155870950162

namespace A243600

/-- `or(1, A010054(n))*A243607(A034856(n+2))` -/
def P5288246155870950162.Spec : Prop :=
  ∀ n, P5288246155870950162.a n = A243600 (n + 1)

end A243600

/-! ## A243600.P16294887616396072745

`or(1, A286044(n+1))*A243607(A034856(n+2))`
-/

namespace A243600.P16294887616396072745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A286044 (n + 1)) * A243607 (A034856 (n + 2)).toNat

end

end A243600.P16294887616396072745

namespace A243600

/-- `or(1, A286044(n+1))*A243607(A034856(n+2))` -/
def P16294887616396072745.Spec : Prop :=
  ∀ n, P16294887616396072745.a n = A243600 (n + 1)

end A243600

/-! ## A243600.P18293098139453168788

`A243607(A034856(n+2))+A057354(A014963(2*(n+1)))`
-/

namespace A243600.P18293098139453168788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A034856 (n + 2)).toNat + A057354 (A014963 (2 * (n + 1))).toNat

end

end A243600.P18293098139453168788

namespace A243600

/-- `A243607(A034856(n+2))+A057354(A014963(2*(n+1)))` -/
def P18293098139453168788.Spec : Prop :=
  ∀ n, P18293098139453168788.a n = A243600 (n + 1)

end A243600

/-!
# A243601: Number of length n+2 0..4 arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..4 introduced in 0..4 order.

The programs for A243601, there is no canonical definition to state claims against.
-/

/-! ## A243601.P6591962290950025949

`A243607(A027379(n+2))`
-/

namespace A243601.P6591962290950025949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A027379 (n + 2)).toNat

end

end A243601.P6591962290950025949

/-! ## A243601.P4918909346888024293

`A243607(A055998(n+2))`
-/

namespace A243601.P4918909346888024293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A055998 (n + 2)).toNat

end

end A243601.P4918909346888024293

/-! ## A243601.P17174290598655995748

`A243607(A056000(n)+7)`
-/

namespace A243601.P17174290598655995748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A056000 n + 7).toNat

end

end A243601.P17174290598655995748

/-! ## A243601.P14697174048732381911

`A243607(eq[3, A193592(n)])`
-/

namespace A243601.P14697174048732381911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243601.P14697174048732381911

/-! ## A243601.P17018810091467572567

`A243607(A052905(n+1)+2)`
-/

namespace A243601.P17018810091467572567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A052905 (n + 1) + 2).toNat

end

end A243601.P17018810091467572567

/-! ## A243601.P9593398889005137918

`A243607(A167499(n)+A016777(n))`
-/

namespace A243601.P9593398889005137918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A167499 n + A016777 n).toNat

end

end A243601.P9593398889005137918

/-! ## A243601.P704679701047714418

`A243607(A167614(n+1)+A005408(n))`
-/

namespace A243601.P704679701047714418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A167614 (n + 1) + A005408 n).toNat

end

end A243601.P704679701047714418

/-! ## A243601.P15684963203874969191

`A243607(A005408(n)+A167499(n)+n)`
-/

namespace A243601.P15684963203874969191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A005408 n + (A167499 n + (n : ℤ))).toNat

end

end A243601.P15684963203874969191

/-!
# A243602: Number of length n+2 0..5 arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..5 introduced in 0..5 order.

The programs for A243602, there is no canonical definition to state claims against.
-/

/-! ## A243602.P1295806583937987093

`A243607(∑[n+5]+6)`
-/

namespace A243602.P1295806583937987093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A243602.P1295806583937987093

/-! ## A243602.P9541501170112263562

`xor(n, xor(n, A243607(A046691(n+3))))`
-/

namespace A243602.P9541501170112263562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A243607 (A046691 (n + 3)).toNat))

end

end A243602.P9541501170112263562

/-! ## A243602.P12467487416211530712

`lcm(A054977(n), A243607(A046691(n+3)))`
-/

namespace A243602.P12467487416211530712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A243607 (A046691 (n + 3)).toNat)

end

end A243602.P12467487416211530712

/-! ## A243602.P14167002927516858894

`char[A003188(n)]*A243607(A046691(n+3))`
-/

namespace A243602.P14167002927516858894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A243607 (A046691 (n + 3)).toNat

end

end A243602.P14167002927516858894

/-! ## A243602.P17220538130397220629

`A243607(A046691(n+3))+A000007(n+1)`
-/

namespace A243602.P17220538130397220629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A243602.P17220538130397220629

/-! ## A243602.P732234753347495274

`and(A057428(n+1), A243607(A046691(n+3)))`
-/

namespace A243602.P732234753347495274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A243607 (A046691 (n + 3)).toNat)

end

end A243602.P732234753347495274

/-! ## A243602.P6827123961989894322

`A008836(n+1)²*A243607(A046691(n+3))`
-/

namespace A243602.P6827123961989894322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A243607 (A046691 (n + 3)).toNat

end

end A243602.P6827123961989894322

/-! ## A243602.P11072037124492390666

`A243607(A046691(n+3))+A008683(4*(n+1))`
-/

namespace A243602.P11072037124492390666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A046691 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A243602.P11072037124492390666

/-! ## A243602.P15331006044108381833

`A000041(C(2, n+2))*A243607(A046691(n+3))`
-/

namespace A243602.P15331006044108381833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A243607 (A046691 (n + 3)).toNat

end

end A243602.P15331006044108381833

/-! ## A243602.P16650420408375204216

`A243607(A046691(n+3))+A010051(A045979(n+2)+1)`
-/

namespace A243602.P16650420408375204216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A046691 (n + 3)).toNat + A010051 (A045979 (n + 2) + 1).toNat

end

end A243602.P16650420408375204216

/-!
# A243603: Number of length n+2 0..6 arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..6 introduced in 0..6 order.

The programs for A243603, there is no canonical definition to state claims against.
-/

/-! ## A243603.P963937390027732430

`A243607(A052905(n+3))`
-/

namespace A243603.P963937390027732430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A052905 (n + 3)).toNat

end

end A243603.P963937390027732430

/-! ## A243603.P7998314998907828567

`A243607(A060577(n+5)-1)`
-/

namespace A243603.P7998314998907828567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A060577 (n + 5) - 1).toNat

end

end A243603.P7998314998907828567

/-! ## A243603.P11718576096120336603

`A243607(A000217(n+6)-5)`
-/

namespace A243603.P11718576096120336603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A000217 (n + 6) - 5).toNat

end

end A243603.P11718576096120336603

/-! ## A243603.P16658936322530058272

`A243607(A000124(n+6)-6)`
-/

namespace A243603.P16658936322530058272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A000124 (n + 6) - 6).toNat

end

end A243603.P16658936322530058272

/-! ## A243603.P1655118605388084826

`A243607(Δ[A023551(n+1)]+1)`
-/

namespace A243603.P1655118605388084826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (f1 (n + 1) - f1 n + 1).toNat

end

end A243603.P1655118605388084826

/-! ## A243603.P10838179070657384206

`A243607(A167499(n+3)+A005408(n))`
-/

namespace A243603.P10838179070657384206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A167499 (n + 3) + A005408 n).toNat

end

end A243603.P10838179070657384206

/-!
# A243604: Number of length n+2 0..7 arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..7 introduced in 0..7 order.

The programs for A243604, there is no canonical definition to state claims against.
-/

/-! ## A243604.P5035453424046381443

`A243607(A055999(n+4))`
-/

namespace A243604.P5035453424046381443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A055999 (n + 4)).toNat

end

end A243604.P5035453424046381443

/-! ## A243604.P7979124820310587735

`A243607(eq[6, A193592(n)])`
-/

namespace A243604.P7979124820310587735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243604.P7979124820310587735

/-! ## A243604.P5832786386601611594

`A243607(Δ[A023551(n+2)])`
-/

namespace A243604.P5832786386601611594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (f1 (n + 1) - f1 n).toNat

end

end A243604.P5832786386601611594

/-! ## A243604.P2473732664576732064

`A243607(A000217(n+7)-6)`
-/

namespace A243604.P2473732664576732064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A000217 (n + 7) - 6).toNat

end

end A243604.P2473732664576732064

/-! ## A243604.P17424992472392970406

`A243607(A000124(n+7)-7)`
-/

namespace A243604.P17424992472392970406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A000124 (n + 7) - 7).toNat

end

end A243604.P17424992472392970406

/-! ## A243604.P3134117837370529863

`A243607(A034856(n+7)-(n+12))`
-/

namespace A243604.P3134117837370529863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A034856 (n + 7) - (n + 12 : ℤ)).toNat

end

end A243604.P3134117837370529863

/-!
# A243605: Number of length n+2 0..8 arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..8 introduced in 0..8 order.

The programs for A243605, there is no canonical definition to state claims against.
-/

/-! ## A243605.P16997271617605530570

`A243607(A052905(n+5)-2)`
-/

namespace A243605.P16997271617605530570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A052905 (n + 5) - 2).toNat

end

end A243605.P16997271617605530570

/-! ## A243605.P5343698592961180683

`A243607(A000217(n+8)-7)`
-/

namespace A243605.P5343698592961180683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A000217 (n + 8) - 7).toNat

end

end A243605.P5343698592961180683

/-! ## A243605.P14862273426834925959

`A243607(A000124(n+8)-8)`
-/

namespace A243605.P14862273426834925959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A000124 (n + 8) - 8).toNat

end

end A243605.P14862273426834925959

/-! ## A243605.P1706132248937146048

`A243607(A005408(n)+A133263(n+6)+5)`
-/

namespace A243605.P1706132248937146048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A005408 n + (A133263 (n + 6) + 5)).toNat

end

end A243605.P1706132248937146048

/-!
# A243606: Number of length n+2 0..9 arrays with no three elements in a row with pattern aba (with a!=b) and new values 0..9 introduced in 0..9 order.

The programs for A243606, there is no canonical definition to state claims against.
-/

/-! ## A243606.P2843183311604802367

`A243607(eq[8, A193592(n)])`
-/

namespace A243606.P2843183311604802367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243606.P2843183311604802367

/-! ## A243606.P3673048918464965562

`A243607(A055999(n+6)-2)`
-/

namespace A243606.P3673048918464965562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A055999 (n + 6) - 2).toNat

end

end A243606.P3673048918464965562

/-! ## A243606.P15745643186825812825

`A243607(A055998(n+7)-5)`
-/

namespace A243606.P15745643186825812825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A055998 (n + 7) - 5).toNat

end

end A243606.P15745643186825812825

/-! ## A243606.P17514352605932522318

`A243607(A034856(n+7)+n+3)`
-/

namespace A243606.P17514352605932522318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A034856 (n + 7) + (n + 3 : ℤ)).toNat

end

end A243606.P17514352605932522318

/-! ## A243606.P10847391433784682482

`A243607(A023443(n)+A000124(n+8)+1)`
-/

namespace A243606.P10847391433784682482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243607 (A023443 n + A000124 (n + 8) + 1).toNat

end

end A243606.P10847391433784682482

/-!
# A243611: Irregular triangular array of denominators of all rational numbers ordered as in Comments.

The programs for A243611, there is no canonical definition to state claims against.
-/

/-! ## A243611.P15178282779798012363

`gcd(A002033(2*n+1), A346350(A264560(n+1)))`
-/

namespace A243611.P15178282779798012363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002033 (2 * n + 1)) (A346350 (A264560 (n + 1)).toNat)

end

end A243611.P15178282779798012363

/-!
# A243613: Irregular triangular array of denominators of the positive rational numbers ordered as in Comments.

The programs for A243613, there is no canonical definition to state claims against.
-/

/-! ## A243613.P13656974710309747537

`A007305(A074050(n+2))`
-/

namespace A243613.P13656974710309747537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A074050 (n + 2)).toNat

end

end A243613.P13656974710309747537

/-! ## A243613.P15535374777626558757

`A007305(A048679(n+1)+1)`
-/

namespace A243613.P15535374777626558757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A048679 (n + 1) + 1).toNat

end

end A243613.P15535374777626558757

/-! ## A243613.P17679146356396649137

`A000267(A030109(A016116(n)*A334437(n)))`
-/

namespace A243613.P17679146356396649137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A030109 (A016116 n * A334437 n).toNat).toNat

end

end A243613.P17679146356396649137

/-! ## A243613.P5783209114053755112

`A060130(5^A255120(n))+A056557(A255120(n))`
-/

namespace A243613.P5783209114053755112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A255120 n : ℤ))).toNat + A056557 (A255120 n).toNat

end

end A243613.P5783209114053755112

/-! ## A243613.P3594806914248769857

`A206483(A277331(n+1))`
-/

namespace A243613.P3594806914248769857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206483 (A277331 (n + 1)).toNat

end

end A243613.P3594806914248769857

/-!
# A243614: Irregular triangular array of numerators of the positive rational numbers ordered as in Comments.

The programs for A243614, the canonical program `A243614.P16613195315274380214` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243614 has offset 1).

The definition of A243614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243614.P2896078340564540872

`A174980(2*A048679(n+1))`
-/

namespace A243614.P2896078340564540872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (2 * A048679 (n + 1)).toNat

end

end A243614.P2896078340564540872

namespace A243614

/-- `A174980(2*A048679(n+1))` -/
def P2896078340564540872.Spec : Prop :=
  ∀ n, P2896078340564540872.a n = A243614 (n + 1)

end A243614

/-! ## A243614.P16613195315274380214

`A174980(eq[A000120(n), A037227(n+1)])`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A243614

/-- `A174980(eq[A000120(n), A037227(n+1)])` -/
def P16613195315274380214.Spec : Prop :=
  ∀ n, P16613195315274380214.a n = A243614 (n + 1)

theorem P16613195315274380214.correct : P16613195315274380214.Spec := by
  intro n
  simp only [A243614, Nat.add_sub_cancel]

end A243614

/-!
# A243615: Numbers n whose digital sum equals the number of binary digits in its binary expansion.

The programs for A243615, the canonical program `A243615.P8785003313074137621` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243615 has offset 1).

The definition of A243615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 451 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243615.P8785003313074137621

`eq[A007953(n), A070939(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A243615

/-- `eq[A007953(n), A070939(n)]` -/
def P8785003313074137621.Spec : Prop :=
  ∀ n, (P8785003313074137621.a n : ℤ) = A243615 (n + 1)

theorem P8785003313074137621.correct : P8785003313074137621.Spec := by
  intro n
  simp only [A243615, Nat.add_sub_cancel]

end A243615

/-! ## A243615.P9283296465766164140

`eq[A023416(n), A180018(n)]`
-/

namespace A243615.P9283296465766164140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P9283296465766164140

namespace A243615

/-- `eq[A023416(n), A180018(n)]` -/
def P9283296465766164140.Spec : Prop :=
  ∀ n, (P9283296465766164140.a n : ℤ) = A243615 (n + 1)

end A243615

/-! ## A243615.P17551784391326799186

`eq[A070939(n)², A118881(n)]`
-/

namespace A243615.P17551784391326799186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P17551784391326799186

namespace A243615

/-- `eq[A070939(n)², A118881(n)]` -/
def P17551784391326799186.Spec : Prop :=
  ∀ n, (P17551784391326799186.a n : ℤ) = A243615 (n + 1)

end A243615

/-! ## A243615.P9947383427639935128

`eq[A000523(n+1)+1, A007953(n+1)]+1`
-/

namespace A243615.P9947383427639935128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A243615.P9947383427639935128

namespace A243615

/-- `eq[A000523(n+1)+1, A007953(n+1)]+1` -/
def P9947383427639935128.Spec : Prop :=
  ∀ n, (P9947383427639935128.a n : ℤ) = A243615 (n + 1)

end A243615

/-! ## A243615.P15290587170277535520

`eq[A007953(n), A070940(A109613(n))]`
-/

namespace A243615.P15290587170277535520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P15290587170277535520

namespace A243615

/-- `eq[A007953(n), A070940(A109613(n))]` -/
def P15290587170277535520.Spec : Prop :=
  ∀ n, (P15290587170277535520.a n : ℤ) = A243615 (n + 1)

end A243615

/-! ## A243615.P6587779239542517553

`eq[A000523(A028310(n))+1, A007953(n)]`
-/

namespace A243615.P6587779239542517553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A028310 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P6587779239542517553

namespace A243615

/-- `eq[A000523(A028310(n))+1, A007953(n)]` -/
def P6587779239542517553.Spec : Prop :=
  ∀ n, (P6587779239542517553.a n : ℤ) = A243615 (n + 1)

end A243615

/-! ## A243615.P3855813374461212158

`eq[A023416(n)+A000120(n), A007953(n)]`
-/

namespace A243615.P3855813374461212158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P3855813374461212158

namespace A243615

/-- `eq[A023416(n)+A000120(n), A007953(n)]` -/
def P3855813374461212158.Spec : Prop :=
  ∀ n, (P3855813374461212158.a n : ℤ) = A243615 (n + 1)

end A243615

/-! ## A243615.P15724570401494143611

`eq[A000523(2*A028310(n)), A007953(n)]`
-/

namespace A243615.P15724570401494143611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P15724570401494143611

namespace A243615

/-- `eq[A000523(2*A028310(n)), A007953(n)]` -/
def P15724570401494143611.Spec : Prop :=
  ∀ n, (P15724570401494143611.a n : ℤ) = A243615 (n + 1)

end A243615

/-! ## A243615.P2657229472416075043

`eq[A001222(A176893(n)), A007953(n)]`
-/

namespace A243615.P2657229472416075043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A176893 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243615.P2657229472416075043

namespace A243615

/-- `eq[A001222(A176893(n)), A007953(n)]` -/
def P2657229472416075043.Spec : Prop :=
  ∀ n, (P2657229472416075043.a n : ℤ) = A243615 (n + 1)

end A243615

/-!
# A243616: Primes p of the form prime(n) + digitsum(n).

The programs for A243616, the canonical program `A243616.P4113993082893584915` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243616 has offset 1).

The definition of A243616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243616.P10455150622181364815

`p?[A008578(n+1)+∑{digits}[n, #]]`
-/

namespace A243616.P10455150622181364815
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P10455150622181364815

namespace A243616

/-- `p?[A008578(n+1)+∑{digits}[n, #]]` -/
def P10455150622181364815.Spec : Prop :=
  ∀ n, P10455150622181364815.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P5419063106757557049

`p?[A008578(n+1)+A007953(n)]`
-/

namespace A243616.P5419063106757557049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P5419063106757557049

namespace A243616

/-- `p?[A008578(n+1)+A007953(n)]` -/
def P5419063106757557049.Spec : Prop :=
  ∀ n, P5419063106757557049.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P4113993082893584915

`p?[A007953(n+1)+A000040(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A243616

/-- `p?[A007953(n+1)+A000040(n+1)]` -/
def P4113993082893584915.Spec : Prop :=
  ∀ n, P4113993082893584915.a n = A243616 (n + 1)

theorem P4113993082893584915.correct : P4113993082893584915.Spec := by
  intro n
  simp only [A243616, Nat.add_sub_cancel]

end A243616

/-! ## A243616.P16860235991444952100

`p?[A090431(n+1)+A065073(n+1)]`
-/

namespace A243616.P16860235991444952100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090431 (n + 1) + A065073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P16860235991444952100

namespace A243616

/-- `p?[A090431(n+1)+A065073(n+1)]` -/
def P16860235991444952100.Spec : Prop :=
  ∀ n, P16860235991444952100.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P10373131223832536972

`p?[A007953(n+1)+A006093(n+1)+1]`
-/

namespace A243616.P10373131223832536972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P10373131223832536972

namespace A243616

/-- `p?[A007953(n+1)+A006093(n+1)+1]` -/
def P10373131223832536972.Spec : Prop :=
  ∀ n, P10373131223832536972.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P5961394760607643041

`p?[A000040(n+1)+A062028(n+1)-(n+1)]`
-/

namespace A243616.P5961394760607643041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A062028 (n + 1) - (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P5961394760607643041

namespace A243616

/-- `p?[A000040(n+1)+A062028(n+1)-(n+1)]` -/
def P5961394760607643041.Spec : Prop :=
  ∀ n, P5961394760607643041.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P7390411607058543876

`p?[A007953(n+1)+record[A000010(n+1)]+1]`
-/

namespace A243616.P7390411607058543876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P7390411607058543876

namespace A243616

/-- `p?[A007953(n+1)+record[A000010(n+1)]+1]` -/
def P7390411607058543876.Spec : Prop :=
  ∀ n, P7390411607058543876.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P1061608664583320836

`p?[A181363(2*n+1)+A007953(n)]`
-/

namespace A243616.P1061608664583320836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (2 * n + 1) + A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P1061608664583320836

namespace A243616

/-- `p?[A181363(2*n+1)+A007953(n)]` -/
def P1061608664583320836.Spec : Prop :=
  ∀ n, P1061608664583320836.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P11967854715753903060

`p?[A007953(n+1)+p?[A014681(n)]]`
-/

namespace A243616.P11967854715753903060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P11967854715753903060

namespace A243616

/-- `p?[A007953(n+1)+p?[A014681(n)]]` -/
def P11967854715753903060.Spec : Prop :=
  ∀ n, P11967854715753903060.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P16246452043681606076

`p?[A007953(n+1)+p?[A080412(n)]]`
-/

namespace A243616.P16246452043681606076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P16246452043681606076

namespace A243616

/-- `p?[A007953(n+1)+p?[A080412(n)]]` -/
def P16246452043681606076.Spec : Prop :=
  ∀ n, P16246452043681606076.a n = A243616 (n + 1)

end A243616

/-! ## A243616.P14022978227153935443

`p?[A007953(n+1)+p?[A215261(n+1)]]`
-/

namespace A243616.P14022978227153935443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243616.P14022978227153935443

namespace A243616

/-- `p?[A007953(n+1)+p?[A215261(n+1)]]` -/
def P14022978227153935443.Spec : Prop :=
  ∀ n, P14022978227153935443.a n = A243616 (n + 1)

end A243616

/-!
# A243617: Numbers whose sum of digits equals the number of bits in its binary expansion. No zeros allowed in the digital expansion.

The programs for A243617, the canonical program `A243617.P13077696560610616016` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243617 has offset 1).

The definition of A243617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 387 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243617.P13077696560610616016

`∩[A052382(n+1), A243615(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243617

/-- `∩[A052382(n+1), A243615(n+1)]` -/
def P13077696560610616016.Spec : Prop :=
  ∀ n, (P13077696560610616016.a n : ℤ) = A243617 (n + 1)

theorem P13077696560610616016.correct : P13077696560610616016.Spec := by
  intro n
  simp only [A243617, Nat.add_sub_cancel]

end A243617

/-! ## A243617.P13570674468471032176

`eq[A070939(n), A395316(n)]`
-/

namespace A243617.P13570674468471032176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243617.P13570674468471032176

namespace A243617

/-- `eq[A070939(n), A395316(n)]` -/
def P13570674468471032176.Spec : Prop :=
  ∀ n, (P13570674468471032176.a n : ℤ) = A243617 (n + 1)

end A243617

/-! ## A243617.P15202270521850015196

`record[A004719(A243615(n+1))]`
-/

namespace A243617.P15202270521850015196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A243615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243617.P15202270521850015196

namespace A243617

/-- `record[A004719(A243615(n+1))]` -/
def P15202270521850015196.Spec : Prop :=
  ∀ n, P15202270521850015196.a n = A243617 (n + 1)

end A243617

/-! ## A243617.P3665993695912359717

`filter[A243615(n+1), A168046(#)]`
-/

namespace A243617.P3665993695912359717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A243617.P3665993695912359717

namespace A243617

/-- `filter[A243615(n+1), A168046(#)]` -/
def P3665993695912359717.Spec : Prop :=
  ∀ n, P3665993695912359717.a n = A243617 (n + 1)

end A243617

/-!
# A243618: Table read by antidiagonals: T(n,k) is the curvature of a circle in a nested Pappus chain (see Comments for details).

The programs for A243618, there is no canonical definition to state claims against.
-/

/-! ## A243618.P12804126153636372085

`A335262(comp[∑[n-1]])+C(comp[∑[n]]-n, 2)`
-/

namespace A243618.P12804126153636372085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A243618.P12804126153636372085

/-! ## A243618.P17092990321742071104

`A048147(comp[∑[n-1]])+C(comp[∑[n]]-n, 2)-n`
-/

namespace A243618.P17092990321742071104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A243618.P17092990321742071104

/-! ## A243618.P8095189870617092221

`A002378(C(comp[∑[n]]-n, 2)-n)+(n-C(∑[char[∑[n]]], 2))²`
-/

namespace A243618.P8095189870617092221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) + ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)) ^ 2

end

end A243618.P8095189870617092221

/-! ## A243618.P3959028768043833399

`A101447(n)+(A114327(n)+1)²`
-/

namespace A243618.P3959028768043833399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + (A114327 n + 1) ^ 2

end

end A243618.P3959028768043833399

/-! ## A243618.P17019607536431284009

`A101447(n)+(A038722(n+1)-n)²`
-/

namespace A243618.P17019607536431284009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n + (A038722 (n + 1) - (n : ℤ)) ^ 2

end

end A243618.P17019607536431284009

/-! ## A243618.P9839896762110068203

`(n-comp[∑[n]])²-A101447(A007401(n+1))`
-/

namespace A243618.P9839896762110068203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - A101447 (A007401 (n + 1)).toNat

end

end A243618.P9839896762110068203

/-! ## A243618.P2825735899179854172

`A048147(n)+A016789(A025581(n))`
-/

namespace A243618.P2825735899179854172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n + A016789 (A025581 n).toNat

end

end A243618.P2825735899179854172

/-! ## A243618.P5891407824695295264

`A048147(n)+A014682(A099375(n))`
-/

namespace A243618.P5891407824695295264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 n + A014682 (A099375 n).toNat

end

end A243618.P5891407824695295264

/-! ## A243618.P2280929545956994872

`A143844(n)+A002378(A004736(n+1))`
-/

namespace A243618.P2280929545956994872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n + A002378 (A004736 (n + 1)).toNat

end

end A243618.P2280929545956994872

/-! ## A243618.P11156268569931238667

`A002378(A004736(n+1))+A002262(n)²`
-/

namespace A243618.P11156268569931238667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A004736 (n + 1)).toNat + A002262 n ^ 2

end

end A243618.P11156268569931238667

/-!
# A243619: Prime numbers n whose digital sum equals the number of bits in its binary expansion.

The programs for A243619, the canonical program `A243619.P16873152795867746307` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243619 has offset 1).

The definition of A243619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 575 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243619.P16873152795867746307

`p?[A243615(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243619

/-- `p?[A243615(n+1)]` -/
def P16873152795867746307.Spec : Prop :=
  ∀ n, P16873152795867746307.a n = A243619 (n + 1)

theorem P16873152795867746307.correct : P16873152795867746307.Spec := by
  intro n
  simp only [A243619, Nat.add_sub_cancel]

end A243619

/-! ## A243619.P7109644482706123214

`∩[A348283(n+1), A243615(n+1)]`
-/

namespace A243619.P7109644482706123214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P7109644482706123214

namespace A243619

/-- `∩[A348283(n+1), A243615(n+1)]` -/
def P7109644482706123214.Spec : Prop :=
  ∀ n, (P7109644482706123214.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P4852075869710648817

`∩[A000040(n+1), A243615(n+1)]`
-/

namespace A243619.P4852075869710648817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P4852075869710648817

namespace A243619

/-- `∩[A000040(n+1), A243615(n+1)]` -/
def P4852075869710648817.Spec : Prop :=
  ∀ n, (P4852075869710648817.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P376709409078148797

`∩[A045319(n+1), A243615(n+1)]`
-/

namespace A243619.P376709409078148797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P376709409078148797

namespace A243619

/-- `∩[A045319(n+1), A243615(n+1)]` -/
def P376709409078148797.Spec : Prop :=
  ∀ n, (P376709409078148797.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P7665882754983868576

`∩[A045344(n+1), A243615(n+1)]`
-/

namespace A243619.P7665882754983868576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P7665882754983868576

namespace A243619

/-- `∩[A045344(n+1), A243615(n+1)]` -/
def P7665882754983868576.Spec : Prop :=
  ∀ n, (P7665882754983868576.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P11505857332212342893

`∩[A106118(n+1), A243615(n+1)]`
-/

namespace A243619.P11505857332212342893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P11505857332212342893

namespace A243619

/-- `∩[A106118(n+1), A243615(n+1)]` -/
def P11505857332212342893.Spec : Prop :=
  ∀ n, (P11505857332212342893.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P12784117446111469563

`∩[A116974(n+1), A243615(n+1)]`
-/

namespace A243619.P12784117446111469563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P12784117446111469563

namespace A243619

/-- `∩[A116974(n+1), A243615(n+1)]` -/
def P12784117446111469563.Spec : Prop :=
  ∀ n, (P12784117446111469563.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P12541758863451127862

`∩[A138837(n+1), A243615(n+1)]`
-/

namespace A243619.P12541758863451127862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P12541758863451127862

namespace A243619

/-- `∩[A138837(n+1), A243615(n+1)]` -/
def P12541758863451127862.Spec : Prop :=
  ∀ n, (P12541758863451127862.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P10649740332856771600

`∩[A175787(n+1), A243615(n+1)]`
-/

namespace A243619.P10649740332856771600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P10649740332856771600

namespace A243619

/-- `∩[A175787(n+1), A243615(n+1)]` -/
def P10649740332856771600.Spec : Prop :=
  ∀ n, (P10649740332856771600.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P8812171255555462313

`∩[A182986(n+1), A243615(n+1)]`
-/

namespace A243619.P8812171255555462313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P8812171255555462313

namespace A243619

/-- `∩[A182986(n+1), A243615(n+1)]` -/
def P8812171255555462313.Spec : Prop :=
  ∀ n, (P8812171255555462313.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P8625738168095904957

`∩[A243615(n+1), A261123(n+1)]`
-/

namespace A243619.P8625738168095904957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P8625738168095904957

namespace A243619

/-- `∩[A243615(n+1), A261123(n+1)]` -/
def P8625738168095904957.Spec : Prop :=
  ∀ n, (P8625738168095904957.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P5416541582928179489

`∩[A051948(n+1), A243615(n+1)]`
-/

namespace A243619.P5416541582928179489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P5416541582928179489

namespace A243619

/-- `∩[A051948(n+1), A243615(n+1)]` -/
def P5416541582928179489.Spec : Prop :=
  ∀ n, (P5416541582928179489.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P5677797324687236201

`∩[A053813(n+1), A243615(n+1)]`
-/

namespace A243619.P5677797324687236201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P5677797324687236201

namespace A243619

/-- `∩[A053813(n+1), A243615(n+1)]` -/
def P5677797324687236201.Spec : Prop :=
  ∀ n, (P5677797324687236201.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P8105811285337253446

`∩[A243615(n+1), A251595(n+1)]`
-/

namespace A243619.P8105811285337253446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P8105811285337253446

namespace A243619

/-- `∩[A243615(n+1), A251595(n+1)]` -/
def P8105811285337253446.Spec : Prop :=
  ∀ n, (P8105811285337253446.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P2980912434527641150

`∩[A132630(n+1), A243615(n+1)]`
-/

namespace A243619.P2980912434527641150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P2980912434527641150

namespace A243619

/-- `∩[A132630(n+1), A243615(n+1)]` -/
def P2980912434527641150.Spec : Prop :=
  ∀ n, (P2980912434527641150.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P15636205952942018266

`∩[A070159(n+1), A243615(n+1)]`
-/

namespace A243619.P15636205952942018266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243619.P15636205952942018266

namespace A243619

/-- `∩[A070159(n+1), A243615(n+1)]` -/
def P15636205952942018266.Spec : Prop :=
  ∀ n, (P15636205952942018266.a n : ℤ) = A243619 (n + 1)

end A243619

/-! ## A243619.P16371238763503628752

`record[A020639(A243615(n+2))]`
-/

namespace A243619.P16371238763503628752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243615 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243619.P16371238763503628752

namespace A243619

/-- `record[A020639(A243615(n+2))]` -/
def P16371238763503628752.Spec : Prop :=
  ∀ n, P16371238763503628752.a n = A243619 (n + 1)

end A243619

/-! ## A243619.P10614015644603875590

`filter[A243615(n+1), A010051(#)]`
-/

namespace A243619.P10614015644603875590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243619.P10614015644603875590

namespace A243619

/-- `filter[A243615(n+1), A010051(#)]` -/
def P10614015644603875590.Spec : Prop :=
  ∀ n, P10614015644603875590.a n = A243619 (n + 1)

end A243619

/-! ## A243619.P11989686684951078369

`A007947(p?[A243615(1-(n-2*n))])`
-/

namespace A243619.P11989686684951078369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A243619.P11989686684951078369

namespace A243619

/-- `A007947(p?[A243615(1-(n-2*n))])` -/
def P11989686684951078369.Spec : Prop :=
  ∀ n, P11989686684951078369.a n = A243619 (n + 1)

end A243619

/-! ## A243619.P13843632057110394252

`filter[A243615(n+1), A323153(#)]`
-/

namespace A243619.P13843632057110394252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A243619.P13843632057110394252

namespace A243619

/-- `filter[A243615(n+1), A323153(#)]` -/
def P13843632057110394252.Spec : Prop :=
  ∀ n, P13843632057110394252.a n = A243619 (n + 1)

end A243619

/-!
# A243620: Prime numbers whose digital sum equals the number of bits in its binary expansion. No zeros allowed in the decimal expansion.

The programs for A243620, the canonical program `A243620.P13122354162749420895` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243620 has offset 1).

The definition of A243620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243620.P13122354162749420895

`p?[A243617(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A243620

/-- `p?[A243617(n+1)]` -/
def P13122354162749420895.Spec : Prop :=
  ∀ n, P13122354162749420895.a n = A243620 (n + 1)

theorem P13122354162749420895.correct : P13122354162749420895.Spec := by
  intro n
  simp only [A243620, Nat.add_sub_cancel]

end A243620

/-! ## A243620.P7097677435316866994

`∩[A243617(n+1), A243619(n+1)]`
-/

namespace A243620.P7097677435316866994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P7097677435316866994

namespace A243620

/-- `∩[A243617(n+1), A243619(n+1)]` -/
def P7097677435316866994.Spec : Prop :=
  ∀ n, (P7097677435316866994.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P17754041298996290460

`∩[A038618(n+1), A243615(n+1)]`
-/

namespace A243620.P17754041298996290460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P17754041298996290460

namespace A243620

/-- `∩[A038618(n+1), A243615(n+1)]` -/
def P17754041298996290460.Spec : Prop :=
  ∀ n, (P17754041298996290460.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P5565729363599630163

`∩[A038618(n+1), A243617(n+1)]`
-/

namespace A243620.P5565729363599630163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P5565729363599630163

namespace A243620

/-- `∩[A038618(n+1), A243617(n+1)]` -/
def P5565729363599630163.Spec : Prop :=
  ∀ n, (P5565729363599630163.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P5615091272682030809

`∩[A038618(n+1), A243619(n+1)]`
-/

namespace A243620.P5615091272682030809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P5615091272682030809

namespace A243620

/-- `∩[A038618(n+1), A243619(n+1)]` -/
def P5615091272682030809.Spec : Prop :=
  ∀ n, (P5615091272682030809.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P9439909306206132497

`∩[A195943(n+1), A243619(n+1)]`
-/

namespace A243620.P9439909306206132497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P9439909306206132497

namespace A243620

/-- `∩[A195943(n+1), A243619(n+1)]` -/
def P9439909306206132497.Spec : Prop :=
  ∀ n, (P9439909306206132497.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P3715975350818482689

`record[A020639(A243617(n+2))]`
-/

namespace A243620.P3715975350818482689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243617 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243620.P3715975350818482689

namespace A243620

/-- `record[A020639(A243617(n+2))]` -/
def P3715975350818482689.Spec : Prop :=
  ∀ n, P3715975350818482689.a n = A243620 (n + 1)

end A243620

/-! ## A243620.P12370404898077901113

`filter[A243617(n+1), A010051(#)]`
-/

namespace A243620.P12370404898077901113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243620.P12370404898077901113

namespace A243620

/-- `filter[A243617(n+1), A010051(#)]` -/
def P12370404898077901113.Spec : Prop :=
  ∀ n, P12370404898077901113.a n = A243620 (n + 1)

end A243620

/-! ## A243620.P14085332682060870307

`∩[A000040(n+1), A243617(n+1)]`
-/

namespace A243620.P14085332682060870307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P14085332682060870307

namespace A243620

/-- `∩[A000040(n+1), A243617(n+1)]` -/
def P14085332682060870307.Spec : Prop :=
  ∀ n, (P14085332682060870307.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P11902416693111147358

`∩[A045319(n+1), A243617(n+1)]`
-/

namespace A243620.P11902416693111147358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P11902416693111147358

namespace A243620

/-- `∩[A045319(n+1), A243617(n+1)]` -/
def P11902416693111147358.Spec : Prop :=
  ∀ n, (P11902416693111147358.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P7778113377166647938

`∩[A045344(n+1), A243617(n+1)]`
-/

namespace A243620.P7778113377166647938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P7778113377166647938

namespace A243620

/-- `∩[A045344(n+1), A243617(n+1)]` -/
def P7778113377166647938.Spec : Prop :=
  ∀ n, (P7778113377166647938.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P16521741019986190753

`∩[A051948(n+1), A243617(n+1)]`
-/

namespace A243620.P16521741019986190753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P16521741019986190753

namespace A243620

/-- `∩[A051948(n+1), A243617(n+1)]` -/
def P16521741019986190753.Spec : Prop :=
  ∀ n, (P16521741019986190753.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P7526932566151831120

`∩[A053813(n+1), A243617(n+1)]`
-/

namespace A243620.P7526932566151831120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P7526932566151831120

namespace A243620

/-- `∩[A053813(n+1), A243617(n+1)]` -/
def P7526932566151831120.Spec : Prop :=
  ∀ n, (P7526932566151831120.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P14375011949804820934

`∩[A070159(n+1), A243617(n+1)]`
-/

namespace A243620.P14375011949804820934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P14375011949804820934

namespace A243620

/-- `∩[A070159(n+1), A243617(n+1)]` -/
def P14375011949804820934.Spec : Prop :=
  ∀ n, (P14375011949804820934.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P199578242995440957

`∩[A106118(n+1), A243617(n+1)]`
-/

namespace A243620.P199578242995440957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P199578242995440957

namespace A243620

/-- `∩[A106118(n+1), A243617(n+1)]` -/
def P199578242995440957.Spec : Prop :=
  ∀ n, (P199578242995440957.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P17584331277624434979

`∩[A116974(n+1), A243617(n+1)]`
-/

namespace A243620.P17584331277624434979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P17584331277624434979

namespace A243620

/-- `∩[A116974(n+1), A243617(n+1)]` -/
def P17584331277624434979.Spec : Prop :=
  ∀ n, (P17584331277624434979.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P7206803408871037640

`∩[A132630(n+1), A243617(n+1)]`
-/

namespace A243620.P7206803408871037640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P7206803408871037640

namespace A243620

/-- `∩[A132630(n+1), A243617(n+1)]` -/
def P7206803408871037640.Spec : Prop :=
  ∀ n, (P7206803408871037640.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P2749260458717588715

`∩[A138837(n+1), A243617(n+1)]`
-/

namespace A243620.P2749260458717588715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P2749260458717588715

namespace A243620

/-- `∩[A138837(n+1), A243617(n+1)]` -/
def P2749260458717588715.Spec : Prop :=
  ∀ n, (P2749260458717588715.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P17306834965750954146

`∩[A175787(n+1), A243617(n+1)]`
-/

namespace A243620.P17306834965750954146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P17306834965750954146

namespace A243620

/-- `∩[A175787(n+1), A243617(n+1)]` -/
def P17306834965750954146.Spec : Prop :=
  ∀ n, (P17306834965750954146.a n : ℤ) = A243620 (n + 1)

end A243620

/-! ## A243620.P5521783875336078343

`∩[A182986(n+1), A243617(n+1)]`
-/

namespace A243620.P5521783875336078343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243620.P5521783875336078343

namespace A243620

/-- `∩[A182986(n+1), A243617(n+1)]` -/
def P5521783875336078343.Spec : Prop :=
  ∀ n, (P5521783875336078343.a n : ℤ) = A243620 (n + 1)

end A243620

/-!
# A243621: Numbers whose digital sum equals the number of bits in its binary expansion. Repeated digits in decimal expansion are not allowed.

The programs for A243621, the canonical program `A243621.P1145434379709672563` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243621 has offset 1).

The definition of A243621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243621.P1145434379709672563

`∩[A010784(n+1), A243615(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A243621

/-- `∩[A010784(n+1), A243615(n+1)]` -/
def P1145434379709672563.Spec : Prop :=
  ∀ n, (P1145434379709672563.a n : ℤ) = A243621 (n + 1)

theorem P1145434379709672563.correct : P1145434379709672563.Spec := by
  intro n
  simp only [A243621, Nat.add_sub_cancel]

end A243621

/-! ## A243621.P3286490725263319477

`record[A137564(A243615(n+1))]`
-/

namespace A243621.P3286490725263319477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A243615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243621.P3286490725263319477

namespace A243621

/-- `record[A137564(A243615(n+1))]` -/
def P3286490725263319477.Spec : Prop :=
  ∀ n, P3286490725263319477.a n = A243621 (n + 1)

end A243621

/-! ## A243621.P8869702180393802271

`filter[A243615(n+1), A178788(#)]`
-/

namespace A243621.P8869702180393802271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A243621.P8869702180393802271

namespace A243621

/-- `filter[A243615(n+1), A178788(#)]` -/
def P8869702180393802271.Spec : Prop :=
  ∀ n, P8869702180393802271.a n = A243621 (n + 1)

end A243621

/-! ## A243621.P1922896090007973047

`A243615(A325678((n+1)²))`
-/

namespace A243621.P1922896090007973047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (A325678 ((n + 1) ^ 2)).toNat

end

end A243621.P1922896090007973047

namespace A243621

/-- `A243615(A325678((n+1)²))` -/
def P1922896090007973047.Spec : Prop :=
  ∀ n, P1922896090007973047.a n = A243621 (n + 1)

end A243621

/-! ## A243621.P11922634575692159421

`∩[A214432(n+1), A243615(n+1)]`
-/

namespace A243621.P11922634575692159421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243621.P11922634575692159421

namespace A243621

/-- `∩[A214432(n+1), A243615(n+1)]` -/
def P11922634575692159421.Spec : Prop :=
  ∀ n, (P11922634575692159421.a n : ℤ) = A243621 (n + 1)

end A243621

/-!
# A243623: Prime terms in A214829.

The programs for A243623, there is no canonical definition to state claims against.
-/

/-! ## A243623.P4196366857501437398

`A214829(A243622(n+2))`
-/

namespace A243623.P4196366857501437398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 (A243622 (n + 2)).toNat

end

end A243623.P4196366857501437398

/-! ## A243623.P18082798499110651953

`p?[A214829(n+2)]`
-/

namespace A243623.P18082798499110651953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214829 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243623.P18082798499110651953

/-!
# A243624: Numbers that are the sum of 2 different primes, with repetitions.

The programs for A243624, there is no canonical definition to state claims against.
-/

/-! ## A243624.P9471385853595401028

`comp[∑[A117929(n+1)]+n]-n+1`
-/

namespace A243624.P9471385853595401028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A243624.P9471385853595401028

/-! ## A243624.P16551614887387240827

`A306894(n+1)+p?[A154721(A004201(n+1))]`
-/

namespace A243624.P16551614887387240827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A004201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P16551614887387240827

/-! ## A243624.P15481199540762117943

`A306894(n+1)+p?[A154720(A061885(n)+2)]`
-/

namespace A243624.P15481199540762117943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A061885 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P15481199540762117943

/-! ## A243624.P15905690251458464842

`A306894(n+1)+p?[A154720(A004201(n+1)+1)]`
-/

namespace A243624.P15905690251458464842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A004201 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P15905690251458464842

/-! ## A243624.P2531886051733274657

`A306894(n+1)+p?[A154720(A063657(n+1)+1)]`
-/

namespace A243624.P2531886051733274657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A063657 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P2531886051733274657

/-! ## A243624.P10857910201469981558

`A306894(n+1)+p?[A154721(A063657(n+1)+1)]`
-/

namespace A243624.P10857910201469981558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A063657 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P10857910201469981558

/-! ## A243624.P15408366724716735402

`A306894(n+1)+p?[A154721(A078358(2*n+1))]`
-/

namespace A243624.P15408366724716735402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A078358 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P15408366724716735402

/-! ## A243624.P15571629042938283923

`A306894(n+1)+p?[A091453(n)*A154720(n+1)]`
-/

namespace A243624.P15571629042938283923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n * A154720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P15571629042938283923

/-! ## A243624.P372092974047938181

`A306894(n+1)+p?[A118175(n)*A154721(n+1)]`
-/

namespace A243624.P372092974047938181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n * A154721 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306894 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243624.P372092974047938181

/-! ## A243624.P1797581797367633031

`A307701(n+1)+A306894(n+1)`
-/

namespace A243624.P1797581797367633031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 (n + 1) + A306894 (n + 1)

end

end A243624.P1797581797367633031

/-!
# A243626: Expansion of (1-3*x-sqrt(x^2-10*x+1))/(4*x+2).

The programs for A243626, there is no canonical definition to state claims against.
-/

/-! ## A243626.P14614674734742333778

`lt[A328834(n+3), 20]`
-/

namespace A243626.P14614674734742333778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328834 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A243626.P14614674734742333778

/-! ## A243626.P9501417710706602213

`A027868(∏[∏{e}[n+1, #]+∏{p}[n+1, #]])`
-/

namespace A243626.P9501417710706602213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A243626.P9501417710706602213

/-!
# A243627: Primes which are the sum of two consecutive squarefree numbers.

The programs for A243627, the canonical program `A243627.P2516176984596093208` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243627 has offset 1).

The definition of A243627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A243627.P2516176984596093208

`p?[A240603(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A243627

/-- `p?[A240603(n+1)]` -/
def P2516176984596093208.Spec : Prop :=
  ∀ n, P2516176984596093208.a n = A243627 (n + 1)

theorem P2516176984596093208.correct : P2516176984596093208.Spec := by
  intro n
  simp only [A243627, Nat.add_sub_cancel]

end A243627

/-! ## A243627.P1537655952761918270

`filter[A240603(n+1), A010051(#)]`
-/

namespace A243627.P1537655952761918270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A243627.P1537655952761918270

namespace A243627

/-- `filter[A240603(n+1), A010051(#)]` -/
def P1537655952761918270.Spec : Prop :=
  ∀ n, P1537655952761918270.a n = A243627 (n + 1)

end A243627

/-! ## A243627.P284723343647661682

`filter[A240603(n+1), A380467(#)]`
-/

namespace A243627.P284723343647661682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A243627.P284723343647661682

namespace A243627

/-- `filter[A240603(n+1), A380467(#)]` -/
def P284723343647661682.Spec : Prop :=
  ∀ n, P284723343647661682.a n = A243627 (n + 1)

end A243627

/-! ## A243627.P1607676378011534874

`∩[A000040(n+1), A240603(n+1)]`
-/

namespace A243627.P1607676378011534874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P1607676378011534874

namespace A243627

/-- `∩[A000040(n+1), A240603(n+1)]` -/
def P1607676378011534874.Spec : Prop :=
  ∀ n, (P1607676378011534874.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P17278203792312109779

`∩[A001751(n+1), A240603(n+1)]`
-/

namespace A243627.P17278203792312109779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P17278203792312109779

namespace A243627

/-- `∩[A001751(n+1), A240603(n+1)]` -/
def P17278203792312109779.Spec : Prop :=
  ∀ n, (P17278203792312109779.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P10820682541714920939

`∩[A006005(n+1), A240603(n+1)]`
-/

namespace A243627.P10820682541714920939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P10820682541714920939

namespace A243627

/-- `∩[A006005(n+1), A240603(n+1)]` -/
def P10820682541714920939.Spec : Prop :=
  ∀ n, (P10820682541714920939.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P8850885300066292993

`∩[A008578(n+1), A240603(n+1)]`
-/

namespace A243627.P8850885300066292993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P8850885300066292993

namespace A243627

/-- `∩[A008578(n+1), A240603(n+1)]` -/
def P8850885300066292993.Spec : Prop :=
  ∀ n, (P8850885300066292993.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P16203742975122474632

`∩[A033946(n+1), A240603(n+1)]`
-/

namespace A243627.P16203742975122474632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P16203742975122474632

namespace A243627

/-- `∩[A033946(n+1), A240603(n+1)]` -/
def P16203742975122474632.Spec : Prop :=
  ∀ n, (P16203742975122474632.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P6329942335019810892

`∩[A046022(n+1), A240603(n+1)]`
-/

namespace A243627.P6329942335019810892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P6329942335019810892

namespace A243627

/-- `∩[A046022(n+1), A240603(n+1)]` -/
def P6329942335019810892.Spec : Prop :=
  ∀ n, (P6329942335019810892.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P11343878717446639301

`∩[A051948(n+1), A240603(n+1)]`
-/

namespace A243627.P11343878717446639301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P11343878717446639301

namespace A243627

/-- `∩[A051948(n+1), A240603(n+1)]` -/
def P11343878717446639301.Spec : Prop :=
  ∀ n, (P11343878717446639301.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P367266150019046129

`∩[A065091(n+1), A240603(n+1)]`
-/

namespace A243627.P367266150019046129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P367266150019046129

namespace A243627

/-- `∩[A065091(n+1), A240603(n+1)]` -/
def P367266150019046129.Spec : Prop :=
  ∀ n, (P367266150019046129.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P14625179173543516196

`∩[A066050(n+1), A240603(n+1)]`
-/

namespace A243627.P14625179173543516196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P14625179173543516196

namespace A243627

/-- `∩[A066050(n+1), A240603(n+1)]` -/
def P14625179173543516196.Spec : Prop :=
  ∀ n, (P14625179173543516196.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P4669556175535336188

`∩[A067126(n+1), A240603(n+1)]`
-/

namespace A243627.P4669556175535336188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P4669556175535336188

namespace A243627

/-- `∩[A067126(n+1), A240603(n+1)]` -/
def P4669556175535336188.Spec : Prop :=
  ∀ n, (P4669556175535336188.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P16257505800638152275

`∩[A082378(n+1), A240603(n+1)]`
-/

namespace A243627.P16257505800638152275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P16257505800638152275

namespace A243627

/-- `∩[A082378(n+1), A240603(n+1)]` -/
def P16257505800638152275.Spec : Prop :=
  ∀ n, (P16257505800638152275.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P11711475502414448275

`∩[A085118(n+1), A240603(n+1)]`
-/

namespace A243627.P11711475502414448275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P11711475502414448275

namespace A243627

/-- `∩[A085118(n+1), A240603(n+1)]` -/
def P11711475502414448275.Spec : Prop :=
  ∀ n, (P11711475502414448275.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P12006081157297774015

`∩[A116974(n+1), A240603(n+1)]`
-/

namespace A243627.P12006081157297774015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P12006081157297774015

namespace A243627

/-- `∩[A116974(n+1), A240603(n+1)]` -/
def P12006081157297774015.Spec : Prop :=
  ∀ n, (P12006081157297774015.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P16859945561550437417

`∩[A158611(n+1), A240603(n+1)]`
-/

namespace A243627.P16859945561550437417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P16859945561550437417

namespace A243627

/-- `∩[A158611(n+1), A240603(n+1)]` -/
def P16859945561550437417.Spec : Prop :=
  ∀ n, (P16859945561550437417.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P1893234595689877997

`∩[A161346(n+1), A240603(n+1)]`
-/

namespace A243627.P1893234595689877997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P1893234595689877997

namespace A243627

/-- `∩[A161346(n+1), A240603(n+1)]` -/
def P1893234595689877997.Spec : Prop :=
  ∀ n, (P1893234595689877997.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P17896066745897142078

`∩[A175787(n+1), A240603(n+1)]`
-/

namespace A243627.P17896066745897142078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P17896066745897142078

namespace A243627

/-- `∩[A175787(n+1), A240603(n+1)]` -/
def P17896066745897142078.Spec : Prop :=
  ∀ n, (P17896066745897142078.a n : ℤ) = A243627 (n + 1)

end A243627

/-! ## A243627.P18265183384513467927

`∩[A182986(n+1), A240603(n+1)]`
-/

namespace A243627.P18265183384513467927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243627.P18265183384513467927

namespace A243627

/-- `∩[A182986(n+1), A240603(n+1)]` -/
def P18265183384513467927.Spec : Prop :=
  ∀ n, (P18265183384513467927.a n : ℤ) = A243627 (n + 1)

end A243627

/-!
# A243630: Primes p such that 2*p^3 - 3 is also prime.

The programs for A243630, there is no canonical definition to state claims against.
-/

/-! ## A243630.P11602323380865557287

`p?[A144968(∑[∑[n]+3])]`
-/

namespace A243630.P11602323380865557287
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144968 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243630.P11602323380865557287

/-! ## A243630.P12826671359180400176

`p?[∑[A348038(A165765(n+1))]]`
-/

namespace A243630.P12826671359180400176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348038 (A165765 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243630.P12826671359180400176

/-!
# A243631: Square array of Narayana polynomials N_n evaluated at the integers, A(n,k) = N_n(k), n>=0, k>=0, read by antidiagonals.

The programs for A243631, there is no canonical definition to state claims against.
-/

/-! ## A243631.P11870061537319741306

`A008550(∑[2*n]%comp[∑[n]])`
-/

namespace A243631.P11870061537319741306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A243631.P11870061537319741306

/-! ## A243631.P1618216478427445474

`A008550(A061579(n))`
-/

namespace A243631.P1618216478427445474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A061579 n).toNat

end

end A243631.P1618216478427445474

/-! ## A243631.P841000753008935793

`A008550(A038722(n+1)-1)`
-/

namespace A243631.P841000753008935793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A038722 (n + 1) - 1).toNat

end

end A243631.P841000753008935793

/-! ## A243631.P16507087417216040097

`A008550(A185869(n+1)-(3*n+2))`
-/

namespace A243631.P16507087417216040097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A185869 (n + 1) - (3 * n + 2 : ℤ)).toNat

end

end A243631.P16507087417216040097

/-! ## A243631.P15905828548776918283

`A008550(A038722(n+2))`
-/

namespace A243631.P15905828548776918283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008550 (A038722 (n + 2)).toNat

end

end A243631.P15905828548776918283

/-!
# A243632: Expansion of ((1-sqrt(1-4*x))/2-sqrt(((-sqrt(1-4*x)-11)*(1-sqrt(1-4*x)))/4+1)+1)/4.

The programs for A243632, there is no canonical definition to state claims against.
-/

/-! ## A243632.P7188445642552498497

`A028310(A216494(n))-A102893(n)`
-/

namespace A243632.P7188445642552498497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A216494 n).toNat - A102893 n

end

end A243632.P7188445642552498497

/-! ## A243632.P1886904093916459051

`A023443(A216494(n)+1-A102893(n))`
-/

namespace A243632.P1886904093916459051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A216494 n + (1 - A102893 n)).toNat

end

end A243632.P1886904093916459051

/-! ## A243632.P11711307092292950444

`A023443(1-(A102893(n)-A216494(n)))`
-/

namespace A243632.P11711307092292950444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (1 - (A102893 n - A216494 n)).toNat

end

end A243632.P11711307092292950444

/-!
# A243633: Expansion of (4*x^3-6*x^2+4*x-1)/(5*x^3-8*x^2+5*x-1).

The programs for A243633, the canonical program `A243633.P15473729814359446920` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A243633 has offset 0).

The definition of A243633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-4x^3)/(1-5x+8x^2-5x^3))` (program `A243633.P15473729814359446920`, by `A243633.P15473729814359446920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A243633.P15473729814359446920

`ogf((1-4x+6x^2-4x^3)/(1-5x+8x^2-5x^3))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A243633

/-- `ogf((1-4x+6x^2-4x^3)/(1-5x+8x^2-5x^3))` -/
def P15473729814359446920.Spec : Prop :=
  ∀ n, P15473729814359446920.a n = A243633 n

theorem P15473729814359446920.correct : P15473729814359446920.Spec := by
  intro n
  simp only [A243633]

end A243633

/-! ## A243633.P2648167094100723756

`A247913(A304173(n+1))`
-/

namespace A243633.P2648167094100723756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247913 (A304173 (n + 1)).toNat

end

end A243633.P2648167094100723756

namespace A243633

/-- `A247913(A304173(n+1))` -/
def P2648167094100723756.Spec : Prop :=
  ∀ n, P2648167094100723756.a n = A243633 n

end A243633

/-! ## A243633.P15486788128502887946

`A056811(A325453(n))+A002426(n)`
-/

namespace A243633.P15486788128502887946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A325453 n).toNat + A002426 n

end

end A243633.P15486788128502887946

namespace A243633

/-- `A056811(A325453(n))+A002426(n)` -/
def P15486788128502887946.Spec : Prop :=
  ∀ n, P15486788128502887946.a n = A243633 n

end A243633

/-! ## A243633.P12110365109637344073

`A038567(A002293(n)-A090338(n))`
-/

namespace A243633.P12110365109637344073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A002293 n - A090338 n).toNat

end

end A243633.P12110365109637344073

namespace A243633

/-- `A038567(A002293(n)-A090338(n))` -/
def P12110365109637344073.Spec : Prop :=
  ∀ n, P12110365109637344073.a n = A243633 n

end A243633

/-!
# A243634: Number of length n+2 0..n arrays with no three unequal elements in a row and new values 0..n introduced in 0..n order.

The programs for A243634, there is no canonical definition to state claims against.
-/

/-! ## A243634.P1540940681044576467

`A247100(n+2)`
-/

namespace A243634.P1540940681044576467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 (n + 2)

end

end A243634.P1540940681044576467

/-! ## A243634.P8074927129577342833

`record[A247100(abs(2-n))]`
-/

namespace A243634.P8074927129577342833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243634.P8074927129577342833

/-! ## A243634.P3985398088460461484

`A261492(n+3)/2`
-/

namespace A243634.P3985398088460461484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261492 (n + 3) : ℚ) / 2

end

end A243634.P3985398088460461484

/-! ## A243634.P8580918029702781554

`A243641(∑[4*n]+1)`
-/

namespace A243634.P8580918029702781554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A243634.P8580918029702781554

/-! ## A243634.P4555946288727983143

`record[A003982(n)*A243641(n+1)]`
-/

namespace A243634.P4555946288727983143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A243641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243634.P4555946288727983143

/-! ## A243634.P2280177188144996616

`record[root(A243641(n+1), A113881(n+1))]`
-/

namespace A243634.P2280177188144996616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243641 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243634.P2280177188144996616

/-!
# A243635: Number of length n+2 0..4 arrays with no three unequal elements in a row and new values 0..4 introduced in 0..4 order.

The programs for A243635, there is no canonical definition to state claims against.
-/

/-! ## A243635.P13772832012689989202

`A243641(A027379(n+2))`
-/

namespace A243635.P13772832012689989202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A027379 (n + 2)).toNat

end

end A243635.P13772832012689989202

/-! ## A243635.P8805460670739590412

`A243641(A055998(n+2))`
-/

namespace A243635.P8805460670739590412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A055998 (n + 2)).toNat

end

end A243635.P8805460670739590412

/-! ## A243635.P871127046129897862

`A243641(A056000(n)+7)`
-/

namespace A243635.P871127046129897862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A056000 n + 7).toNat

end

end A243635.P871127046129897862

/-! ## A243635.P11424086356926617046

`A243641(A052905(n+1)+2)`
-/

namespace A243635.P11424086356926617046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A052905 (n + 1) + 2).toNat

end

end A243635.P11424086356926617046

/-! ## A243635.P5083181757152427688

`A243641(A000217(n+3)+n+1)`
-/

namespace A243635.P5083181757152427688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000217 (n + 3) + (n + 1 : ℤ)).toNat

end

end A243635.P5083181757152427688

/-! ## A243635.P10179168927625187604

`A243641(A167614(n+1)+Δ[n²])`
-/

namespace A243635.P10179168927625187604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A167614 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A243635.P10179168927625187604

/-!
# A243636: Number of length n+2 0..5 arrays with no three unequal elements in a row and new values 0..5 introduced in 0..5 order.

The programs for A243636, there is no canonical definition to state claims against.
-/

/-! ## A243636.P5765293992878583192

`A243641(A046691(n+3))`
-/

namespace A243636.P5765293992878583192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A046691 (n + 3)).toNat

end

end A243636.P5765293992878583192

/-! ## A243636.P17764269704178466853

`A243641(Δ[A023545(n+1)])`
-/

namespace A243636.P17764269704178466853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (f1 (n + 1) - f1 n).toNat

end

end A243636.P17764269704178466853

/-! ## A243636.P3023762895783671819

`A243641(A167614(n+2)+2*(n+1))`
-/

namespace A243636.P3023762895783671819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A167614 (n + 2) + (2 * (n + 1) : ℤ)).toNat

end

end A243636.P3023762895783671819

/-! ## A243636.P15917305935035864988

`A243641(A166136(n+1)+A016789(n))`
-/

namespace A243636.P15917305935035864988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A166136 (n + 1) + A016789 n).toNat

end

end A243636.P15917305935035864988

/-! ## A243636.P6598003601743218322

`A243641(A161680(n+10)-A016825(n+8))`
-/

namespace A243636.P6598003601743218322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A161680 (n + 10) - A016825 (n + 8)).toNat

end

end A243636.P6598003601743218322

/-!
# A243637: Number of length n+2 0..6 arrays with no three unequal elements in a row and new values 0..6 introduced in 0..6 order.

The programs for A243637, there is no canonical definition to state claims against.
-/

/-! ## A243637.P17928299660472982764

`A243641(A052905(n+3))`
-/

namespace A243637.P17928299660472982764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A052905 (n + 3)).toNat

end

end A243637.P17928299660472982764

/-! ## A243637.P15666920904195935716

`A243641(A056119(n)+16)`
-/

namespace A243637.P15666920904195935716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A056119 n + 16).toNat

end

end A243637.P15666920904195935716

/-! ## A243637.P6986828590923557774

`A243641(A055998(n+4)-2)`
-/

namespace A243637.P6986828590923557774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A055998 (n + 4) - 2).toNat

end

end A243637.P6986828590923557774

/-! ## A243637.P6722723066917002525

`A243641(A000217(n+6)-5)`
-/

namespace A243637.P6722723066917002525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000217 (n + 6) - 5).toNat

end

end A243637.P6722723066917002525

/-! ## A243637.P6314195047748015295

`A243641(A000124(n+6)-6)`
-/

namespace A243637.P6314195047748015295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000124 (n + 6) - 6).toNat

end

end A243637.P6314195047748015295

/-! ## A243637.P7781894090332587505

`A243641(Δ[A023545(n+2)]-1)`
-/

namespace A243637.P7781894090332587505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (f1 (n + 1) - f1 n - 1).toNat

end

end A243637.P7781894090332587505

/-!
# A243638: Number of length n+2 0..7 arrays with no three unequal elements in a row and new values 0..7 introduced in 0..7 order.

The programs for A243638, there is no canonical definition to state claims against.
-/

/-! ## A243638.P16918827028161310648

`A243641(A055999(n+4))`
-/

namespace A243638.P16918827028161310648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A055999 (n + 4)).toNat

end

end A243638.P16918827028161310648

/-! ## A243638.P9401149716793025035

`A243641(A055998(n+5)-3)`
-/

namespace A243638.P9401149716793025035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A055998 (n + 5) - 3).toNat

end

end A243638.P9401149716793025035

/-! ## A243638.P15423744429157243535

`A243641(A000217(n+7)-6)`
-/

namespace A243638.P15423744429157243535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000217 (n + 7) - 6).toNat

end

end A243638.P15423744429157243535

/-! ## A243638.P13194510962358703731

`A243641(A000124(n+7)-7)`
-/

namespace A243638.P13194510962358703731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000124 (n + 7) - 7).toNat

end

end A243638.P13194510962358703731

/-! ## A243638.P16912411576176943412

`A243641(eq[6, A025581(n)]+1)`
-/

namespace A243638.P16912411576176943412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A243638.P16912411576176943412

/-! ## A243638.P15545539698388455206

`A243641(2*n+A000124(n+5)+6)`
-/

namespace A243638.P15545539698388455206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 ((2 * n : ℤ) + (A000124 (n + 5) + 6)).toNat

end

end A243638.P15545539698388455206

/-!
# A243639: Number of length n+2 0..8 arrays with no three unequal elements in a row and new values 0..8 introduced in 0..8 order.

The programs for A243639, there is no canonical definition to state claims against.
-/

/-! ## A243639.P16041554436514510374

`A243641(A000217(n+8)-7)`
-/

namespace A243639.P16041554436514510374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000217 (n + 8) - 7).toNat

end

end A243639.P16041554436514510374

/-! ## A243639.P16508251363502357467

`A243641(A000124(n+8)-8)`
-/

namespace A243639.P16508251363502357467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000124 (n + 8) - 8).toNat

end

end A243639.P16508251363502357467

/-! ## A243639.P14336173515733732450

`A243641(A062545(n+4)+A055998(n+4))`
-/

namespace A243639.P14336173515733732450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A062545 (n + 4) + A055998 (n + 4)).toNat

end

end A243639.P14336173515733732450

/-! ## A243639.P15527342972450803619

`A243641(A152950(n+7)+A005408(n+2))`
-/

namespace A243639.P15527342972450803619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A152950 (n + 7) + A005408 (n + 2)).toNat

end

end A243639.P15527342972450803619

/-! ## A243639.P8243974769104790729

`A243641(A005843(n+4)+A000217(n+6))`
-/

namespace A243639.P8243974769104790729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A005843 (n + 4) + A000217 (n + 6)).toNat

end

end A243639.P8243974769104790729

/-!
# A243640: Number of length n+2 0..9 arrays with no three unequal elements in a row and new values 0..9 introduced in 0..9 order.

The programs for A243640, there is no canonical definition to state claims against.
-/

/-! ## A243640.P2367101801675467807

`A243641(A055998(n+7)-5)`
-/

namespace A243640.P2367101801675467807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A055998 (n + 7) - 5).toNat

end

end A243640.P2367101801675467807

/-! ## A243640.P10433153970897411527

`A243641(A000217(n+9)-8)`
-/

namespace A243640.P10433153970897411527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000217 (n + 9) - 8).toNat

end

end A243640.P10433153970897411527

/-! ## A243640.P3890660256596397942

`A243641(A000124(n+9)-9)`
-/

namespace A243640.P3890660256596397942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000124 (n + 9) - 9).toNat

end

end A243640.P3890660256596397942

/-! ## A243640.P5257620070489869681

`A243641(A000096(n+7)+n+2)`
-/

namespace A243640.P5257620070489869681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A000096 (n + 7) + (n + 2 : ℤ)).toNat

end

end A243640.P5257620070489869681

/-! ## A243640.P9783599040149534147

`A243641(A152950(n+7)+A016777(n+4))`
-/

namespace A243640.P9783599040149534147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243641 (A152950 (n + 7) + A016777 (n + 4)).toNat

end

end A243640.P9783599040149534147

/-!
# A243641: T(n,k)=Number of length n+2 0..k arrays with no three unequal elements in a row and new values 0..k introduced in 0..k order.

The programs for A243641, there is no canonical definition to state claims against.
-/

/-! ## A243641.P16695593430302292027

`A003714(A243729(n+1)%A128335(n+1))`
-/

namespace A243641.P16695593430302292027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (Int.tmod (A243729 (n + 1)) (A128335 (n + 1))).toNat

end

end A243641.P16695593430302292027

/-!
# A243642: Expansion of -(4*x)/((1-sqrt(1-4*x))/2-sqrt(-3*(1-sqrt(1-4*x))+(1-sqrt(1-4*x))^2/4+1)+1).

The programs for A243642, there is no canonical definition to state claims against.
-/

/-! ## A243642.P8585160915467437293

`(n-abs(1-n))*A126759(floor(10^(n-1)))`
-/

namespace A243642.P8585160915467437293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - |1 - (n : ℤ)|) * A126759 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A243642.P8585160915467437293

/-! ## A243642.P17254552592159253603

`A130911(∑[A047863(n)+1]+1)`
-/

namespace A243642.P17254552592159253603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047863 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130911 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A243642.P17254552592159253603

/-!
# A243643: Number of non-degenerate parallelograms in an n X n permutation array.

The programs for A243643, there is no canonical definition to state claims against.
-/

/-! ## A243643.P15780659259470720065

`A164089(∏[A267873(n)])`
-/

namespace A243643.P15780659259470720065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243643.P15780659259470720065

/-! ## A243643.P18055449371205567765

`A324213(A006024(n))-2`
-/

namespace A243643.P18055449371205567765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324213 (A006024 n).toNat - 2

end

end A243643.P18055449371205567765

/-!
# A243644: Expansion of x*log'(((1-sqrt(1-4*x))/2-sqrt(((-sqrt(1-4*x)-11)*(1-sqrt(1-4*x)))/4+1)+1)/4).

The programs for A243644, there is no canonical definition to state claims against.
-/

/-! ## A243644.P5472014531948227119

`A125746(A001554(n))/7`
-/

namespace A243644.P5472014531948227119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125746 (A001554 n).toNat : ℚ) / 7

end

end A243644.P5472014531948227119

/-! ## A243644.P17179765590670982127

`A008619(A331836(n+1)-∑[A033638(n)])`
-/

namespace A243644.P17179765590670982127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A331836 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A243644.P17179765590670982127

/-!
# A243645: Number of ways two L-tiles can be placed on an n X n square.

The programs for A243645, there is no canonical definition to state claims against.
-/

/-! ## A243645.P15446228125267451355

`A307605(A121619(2*(n+1)))%A110306(n)`
-/

namespace A243645.P15446228125267451355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307605 (A121619 (2 * (n + 1))).toNat) (A110306 n)

end

end A243645.P15446228125267451355

/-!
# A243646: Number of ways three L-tiles can be placed on an n X n square.

The programs for A243646, there is no canonical definition to state claims against.
-/

/-! ## A243646.P4027215006235947907

`A029707(A246542(n+1))%A126201(n+1)`
-/

namespace A243646.P4027215006235947907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029707 (A246542 (n + 1)).toNat) (A126201 (n + 1))

end

end A243646.P4027215006235947907

/-! ## A243646.P3715244287664119095

`xor(1, A319909(ceil(2^(n-1))))`
-/

namespace A243646.P3715244287664119095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A319909 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A243646.P3715244287664119095

/-!
# A243647: Number of ways four L-tiles can be placed on an n X n square.

The programs for A243647, there is no canonical definition to state claims against.
-/

/-! ## A243647.P9317742582801666239

`A160162(C(n, 4)²)`
-/

namespace A243647.P9317742582801666239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160162 (Nat.choose n 4 ^ 2)

end

end A243647.P9317742582801666239

/-! ## A243647.P16554434807249488881

`A025428(C(∑[n], 9))`
-/

namespace A243647.P16554434807249488881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 9)

end

end A243647.P16554434807249488881

/-!
# A243648: Number of ways five L-tiles can be placed on an n X n square.

The programs for A243648, there is no canonical definition to state claims against.
-/

/-! ## A243648.P12551290972084617826

`A075095(∏{e}[A095857(n+1)², #])`
-/

namespace A243648.P12551290972084617826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095857 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075095 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A243648.P12551290972084617826

/-! ## A243648.P6289463754382801387

`A075095(A308822(n)+A102276(n))`
-/

namespace A243648.P6289463754382801387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075095 (A308822 n + A102276 n).toNat

end

end A243648.P6289463754382801387

/-! ## A243648.P7675606304646242723

`A075095(A036378(n)-A003415(n))`
-/

namespace A243648.P7675606304646242723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075095 (A036378 n - A003415 n).toNat

end

end A243648.P7675606304646242723

/-!
# A243649: Number of ways six L-tiles can be placed on an n X n square.

The programs for A243649, there is no canonical definition to state claims against.
-/

/-! ## A243649.P15670100088946821037

`A222245(A112315(n!))`
-/

namespace A243649.P15670100088946821037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 (A112315 (Nat.factorial n)).toNat

end

end A243649.P15670100088946821037

/-! ## A243649.P8587826073976625230

`A208734(A115981(n))-1`
-/

namespace A243649.P8587826073976625230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208734 (A115981 n).toNat - 1

end

end A243649.P8587826073976625230

/-! ## A243649.P11086212731832353766

`A078128(floor(sqrt(A118191(n))))`
-/

namespace A243649.P11086212731832353766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (Int.sqrt (A118191 n)).toNat

end

end A243649.P11086212731832353766

/-!
# A243650: Nonnegative integers of the form x^2+xy+12y^2.

The programs for A243650, there is no canonical definition to state claims against.
-/

/-! ## A243650.P17850254332240366921

`lt[0, A033759(4*n)]`
-/

namespace A243650.P17850254332240366921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243650.P17850254332240366921

/-! ## A243650.P18142094147325419011

`lt[1, A033759(A008586(n))+1]`
-/

namespace A243650.P18142094147325419011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (A008586 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243650.P18142094147325419011

/-! ## A243650.P16144964727043089047

`eq[2, A033759(A033759(4*n)²)]`
-/

namespace A243650.P16144964727043089047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (A033759 (4 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243650.P16144964727043089047

/-! ## A243650.P1604102466435418404

`eq[1, A116598(A033759(4*n)+1)]`
-/

namespace A243650.P1604102466435418404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (A033759 (4 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243650.P1604102466435418404

/-! ## A243650.P14975736854476117138

`eq[0, A183918(A033759(4*n)+6)]`
-/

namespace A243650.P14975736854476117138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183918 (A033759 (4 * n) + 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243650.P14975736854476117138

/-! ## A243650.P1108227770126334866

`record[n%A254657(A033759(4*n)²)]`
-/

namespace A243650.P1108227770126334866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A254657 (A033759 (4 * n) ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243650.P1108227770126334866

/-! ## A243650.P4270895704295938318

`record[(n/2)^A178334(A033759(2*n))]`
-/

namespace A243650.P4270895704295938318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2) ^ (A178334 (A033759 (2 * n)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243650.P4270895704295938318

/-!
# A243651: Nonnegative integers of the form x^2+11y^2.

The programs for A243651, there is no canonical definition to state claims against.
-/

/-! ## A243651.P8649883430319635241

`lt[0, A033723(n)]`
-/

namespace A243651.P8649883430319635241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243651.P8649883430319635241

/-! ## A243651.P6452733132422486079

`eq[1, gcd(11, A000145(n))]`
-/

namespace A243651.P6452733132422486079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A000145 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243651.P6452733132422486079

/-! ## A243651.P9391312424802937278

`eq[0, A000038(A033723(n)²)]`
-/

namespace A243651.P9391312424802937278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033723 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243651.P9391312424802937278

/-! ## A243651.P2753723031901912254

`eq[1, A002828(A033723(n)²)]`
-/

namespace A243651.P2753723031901912254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A033723 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243651.P2753723031901912254

/-! ## A243651.P13403598814195558

`eq[2, A000122(A033723(n)²)]`
-/

namespace A243651.P13403598814195558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A033723 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243651.P13403598814195558

/-! ## A243651.P10109731161130831627

`eq[n*A000038(n), A000038(A033723(n))]`
-/

namespace A243651.P10109731161130831627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243651.P10109731161130831627

/-! ## A243651.P18137805245918917871

`eq[A000038(n+1), A000038(A033723(n))]`
-/

namespace A243651.P18137805245918917871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033723 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243651.P18137805245918917871

/-! ## A243651.P18305169736046264669

`eq[1, gcd(A033723(n), A090953(n))]`
-/

namespace A243651.P18305169736046264669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033723 n) (A090953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A243651.P18305169736046264669

/-!
# A243652: Nonnegative integers of the form 2x^2+xy+6y^2.

The programs for A243652, there is no canonical definition to state claims against.
-/

/-! ## A243652.P770800905030392494

`lt[0, A033759(8*n)]`
-/

namespace A243652.P770800905030392494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243652.P770800905030392494

/-! ## A243652.P2142281529472730985

`eq[1, A116598(A033759(8*n)+1)]`
-/

namespace A243652.P2142281529472730985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 (A033759 (8 * n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243652.P2142281529472730985

/-! ## A243652.P13836702885964843290

`record[n*A285978(A033759(8*n)+1)]`
-/

namespace A243652.P13836702885964843290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A285978 (A033759 (8 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243652.P13836702885964843290

/-! ## A243652.P10955271021331767176

`eq[1, A000040(A033759(8*n)+1)%2]`
-/

namespace A243652.P10955271021331767176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A033759 (8 * n) + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243652.P10955271021331767176

/-! ## A243652.P17816181576621402661

`eq[1, A155828(A033759(8*n)+1)^n]`
-/

namespace A243652.P17816181576621402661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (A033759 (8 * n) + 1).toNat ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243652.P17816181576621402661

/-! ## A243652.P2977438881034207209

`eq[1, A316437(A033759(8*n)+1)%2+1]`
-/

namespace A243652.P2977438881034207209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316437 (A033759 (8 * n) + 1).toNat) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243652.P2977438881034207209

/-!
# A243653: Nonnegative integers of the form 3x^2+xy+4y^2.

The programs for A243653, there is no canonical definition to state claims against.
-/

/-! ## A243653.P11153750448218401976

`lt[0, A033759(12*n)]`
-/

namespace A243653.P11153750448218401976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033759 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A243653.P11153750448218401976

/-! ## A243653.P8747522269262478551

`eq[0, A169805(floor(1/(A033759(12*n)+1)))]`
-/

namespace A243653.P8747522269262478551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 ⌊1 / (A033759 (12 * n) + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A243653.P8747522269262478551

/-!
# A243654: Nonnegative numbers represented by the indefinite quadratic form 3x^2+5xy-3y^2, of discriminant 61.

The programs for A243654, there is no canonical definition to state claims against.
-/

/-! ## A243654.P5968778456064798165

`lt[A001221(A230769(n+1)), A001221(3*(n+1))]`
-/

namespace A243654.P5968778456064798165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A230769 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243654.P5968778456064798165

/-! ## A243654.P1000387967081593016

`lt[A111273(A371973(3*n+5)), A240960(n+1)]`
-/

namespace A243654.P1000387967081593016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111273 (A371973 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243654.P1000387967081593016

/-! ## A243654.P9816553769337594874

`lt[A230398(A328189(n+1)), ∑{d}[n+1, 2^(#-1)]]`
-/

namespace A243654.P9816553769337594874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230398 (A328189 (n + 1)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A243654.P9816553769337594874

/-!
# A243655: Positive numbers that are primitively represented by the indefinite quadratic form x^2 - 3y^2 of discriminant 12.

The programs for A243655, there is no canonical definition to state claims against.
-/

/-! ## A243655.P12367311071263191066

`∩[A047431(n+1), A057125(n+1)]`
-/

namespace A243655.P12367311071263191066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243655.P12367311071263191066

/-! ## A243655.P11270535478354909604

`∩[A047432(n+1), A057125(n+1)]`
-/

namespace A243655.P11270535478354909604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243655.P11270535478354909604

/-! ## A243655.P15727901216398524341

`∩[A047438(n+1), A057125(n+1)]`
-/

namespace A243655.P15727901216398524341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243655.P15727901216398524341

/-! ## A243655.P9764461666330128276

`∩[A047439(n+1), A057125(n+1)]`
-/

namespace A243655.P9764461666330128276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243655.P9764461666330128276

/-! ## A243655.P6648871523016546347

`∩[A057125(n+1), A084916(n+1)]`
-/

namespace A243655.P6648871523016546347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243655.P6648871523016546347

/-! ## A243655.P8804642323899928155

`∩[A057125(n+1), A189715(n+1)]`
-/

namespace A243655.P8804642323899928155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243655.P8804642323899928155

/-! ## A243655.P14456089015650954993

`∩[A057125(n+1), A338692(n+1)]`
-/

namespace A243655.P14456089015650954993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A243655.P14456089015650954993

/-!
# A243656: Positive integers primitively represented by x^2+3xy-y^2.

The programs for A243656, there is no canonical definition to state claims against.
-/

/-! ## A243656.P12354785194328355695

`record[gcd(2*round(sqrt(n+1))+1, n*(n+3)-1)]`
-/

namespace A243656.P12354785194328355695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) + 1) ((n * (n + 3) : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243656.P12354785194328355695

/-! ## A243656.P10066663716059529428

`lt[gcd(13, A351301(n+1)), 4]+1`
-/

namespace A243656.P10066663716059529428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A351301 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243656.P10066663716059529428

/-! ## A243656.P5647591570247075569

`lt[A048105(n+1), A035195(n+1)]+1`
-/

namespace A243656.P5647591570247075569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A243656.P5647591570247075569

/-! ## A243656.P13723653149944902703

`lt[A171176(3*(n+1)), A352541(A280998(n+5))]`
-/

namespace A243656.P13723653149944902703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171176 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352541 (A280998 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A243656.P13723653149944902703

/-! ## A243656.P11449183504128043066

`record[A046933(A084968(3*n+5)+21)]`
-/

namespace A243656.P11449183504128043066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A084968 (3 * n + 5) + 21).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243656.P11449183504128043066

/-!
# A243657: Zeroless factorials: a(0)=1; thereafter a(n) = noz(n*a(n-1)), where noz(n) = A004719(n) omits the zeros from n.

The programs for A243657, there is no canonical definition to state claims against.
-/

/-! ## A243657.P6853318047734798538

`A374265(A049872(n))`
-/

namespace A243657.P6853318047734798538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374265 (A049872 n).toNat

end

end A243657.P6853318047734798538

/-! ## A243657.P527312906040408501

`A374265(A062003(n))`
-/

namespace A243657.P527312906040408501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374265 (A062003 n).toNat

end

end A243657.P527312906040408501

/-! ## A243657.P13676776998812624524

`A374265(A062279(n))`
-/

namespace A243657.P13676776998812624524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374265 (A062279 n).toNat

end

end A243657.P13676776998812624524

/-! ## A243657.P8574676527555390640

`A374265(A219209(n))`
-/

namespace A243657.P8574676527555390640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374265 (A219209 n).toNat

end

end A243657.P8574676527555390640

/-! ## A243657.P17236861925624822844

`A374265(A004862(n+1))`
-/

namespace A243657.P17236861925624822844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374265 (A004862 (n + 1)).toNat

end

end A243657.P17236861925624822844

/-!
# A243658: a(0)=0; thereafter a(n) = noz(n+a(n-1)), where noz(n) = A004719(n).

The programs for A243658, there is no canonical definition to state claims against.
-/

/-! ## A243658.P4822743039017192008

`A004719(a(n-1)+n)` with `a(0)=0`
-/

namespace A243658.P4822743039017192008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004719 (a (n - 1) + (n : ℤ)).toNat

end

end A243658.P4822743039017192008

/-! ## A243658.P3526734780323633791

`A004719(n-ceil(-a(n-1)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A243658.P3526734780323633791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004719 ((n : ℤ) - (-a (n - 1))).toNat

end

end A243658.P3526734780323633791

/-! ## A243658.P17327481888811221478

`∑[n]+1-A163139(A000032(n))`
-/

namespace A243658.P17327481888811221478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A163139 (A000032 n).toNat

end

end A243658.P17327481888811221478

/-! ## A243658.P1036441715253862995

`∑[n]-A180599(A008997(n+1))`
-/

namespace A243658.P1036441715253862995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A180599 (A008997 (n + 1)).toNat

end

end A243658.P1036441715253862995

/-! ## A243658.P10930070996798533175

`A000124(n)-A163139(A320271(n+1))`
-/

namespace A243658.P10930070996798533175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A163139 (A320271 (n + 1)).toNat

end

end A243658.P10930070996798533175

/-!
# A243659: Number of Sylvester classes of 3-packed words of degree n.

The programs for A243659, there is no canonical definition to state claims against.
-/

/-! ## A243659.P13372253330715135332

`A336573(∑[n+3]+n+3)`
-/

namespace A243659.P13372253330715135332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A243659.P13372253330715135332

/-!
# A243660: Triangle read by rows: the x = 1+q Narayana triangle at m=2.

The programs for A243660, there is no canonical definition to state claims against.
-/

/-! ## A243660.P14826418671978190386

`A383453(∑[char[∑[n]]]²-n-1)`
-/

namespace A243660.P14826418671978190386
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383453 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A243660.P14826418671978190386

/-! ## A243660.P10100735834627873195

`A152550(lt[A078932(n), A339338(3*n+1)])`
-/

namespace A243660.P10100735834627873195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339338 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152550 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243660.P10100735834627873195

/-!
# A243661: Triangle read by rows: the x = 1+q Narayana triangle at m=3.

The programs for A243661, there is no canonical definition to state claims against.
-/

/-! ## A243661.P2449320621895779043

`A116939(A188403(n+1)^4)*A243662(A059268(n))`
-/

namespace A243661.P2449320621895779043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A188403 (n + 1) ^ 4).toNat * A243662 (A059268 n).toNat

end

end A243661.P2449320621895779043

/-! ## A243661.P18707806816038040

`A116939(A188403(n+1)²²)*A243662(A059268(n))`
-/

namespace A243661.P18707806816038040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 ((A188403 (n + 1) ^ 2) ^ 2).toNat * A243662 (A059268 n).toNat

end

end A243661.P18707806816038040

/-!
# A243662: Triangle read by rows: the reversed x = 1+q Narayana triangle at m=2.

The programs for A243662, there is no canonical definition to state claims against.
-/

/-! ## A243662.P15469767551359009159

`A102537(∑[char[∑[n]]]²-n)`
-/

namespace A243662.P15469767551359009159
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102537 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A243662.P15469767551359009159

/-! ## A243662.P3343821099448931741

`gcd(A000038(n), A102537(A038722(n+1)))`
-/

namespace A243662.P3343821099448931741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A102537 (A038722 (n + 1)).toNat)

end

end A243662.P3343821099448931741

/-! ## A243662.P4704456865816877780

`lcm(A102537(A038722(n+1)), A165326(n))`
-/

namespace A243662.P4704456865816877780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102537 (A038722 (n + 1)).toNat) (A165326 n)

end

end A243662.P4704456865816877780

/-! ## A243662.P833624668122620586

`or(A019590(n+1), A102537(A038722(n+1)))`
-/

namespace A243662.P833624668122620586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 1)) (A102537 (A038722 (n + 1)).toNat)

end

end A243662.P833624668122620586

/-! ## A243662.P9613625262119886765

`A102537(A038722(n+1))%A291804(n+1)`
-/

namespace A243662.P9613625262119886765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102537 (A038722 (n + 1)).toNat) (A291804 (n + 1))

end

end A243662.P9613625262119886765

/-! ## A243662.P7094831975806399897

`A102537(A038722(n+1))%A007689(n)`
-/

namespace A243662.P7094831975806399897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102537 (A038722 (n + 1)).toNat) (A007689 n)

end

end A243662.P7094831975806399897

/-!
# A243663: Triangle read by rows: the reversed x = 1+q Narayana triangle at m=3.

The programs for A243663, there is no canonical definition to state claims against.
-/

/-! ## A243663.P17439155126881648938

`A116939(A188403(n+1)^4)`
-/

namespace A243663.P17439155126881648938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A188403 (n + 1) ^ 4).toNat

end

end A243663.P17439155126881648938

/-! ## A243663.P8569087700671594502

`A116939(A188403(n+1)²²)`
-/

namespace A243663.P8569087700671594502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 ((A188403 (n + 1) ^ 2) ^ 2).toNat

end

end A243663.P8569087700671594502

/-! ## A243663.P4871753838800177815

`A298593(n+1)-A272831(A278301(n))`
-/

namespace A243663.P4871753838800177815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298593 (n + 1) - A272831 (A278301 n).toNat

end

end A243663.P4871753838800177815

/-!
# A243664: Number of 3-packed words of degree n.

The programs for A243664, there is no canonical definition to state claims against.
-/

/-! ## A243664.P2267468522662558800

`A362849(∑[n])`
-/

namespace A243664.P2267468522662558800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243664.P2267468522662558800

/-! ## A243664.P9350888499137858076

`A260883(A141214(n+1))`
-/

namespace A243664.P9350888499137858076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (A141214 (n + 1)).toNat

end

end A243664.P9350888499137858076

/-! ## A243664.P18384717264216511931

`A260883(A155212(n)+5)`
-/

namespace A243664.P18384717264216511931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (A155212 n + 5).toNat

end

end A243664.P18384717264216511931

/-!
# A243665: Number of 4-packed words of degree n.

The programs for A243665, there is no canonical definition to state claims against.
-/

/-! ## A243665.P10028706306539121847

`A260883(∑[n+5]+6)`
-/

namespace A243665.P10028706306539121847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A243665.P10028706306539121847

/-!
# A243666: Number of 5-packed words of degree n.

The programs for A243666, there is no canonical definition to state claims against.
-/

/-! ## A243666.P2568047333810697258

`A260883(A052905(n+3))`
-/

namespace A243666.P2568047333810697258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260883 (A052905 (n + 3)).toNat

end

end A243666.P2568047333810697258

/-!
# A243667: Number of Sylvester classes of 4-packed words of degree n.

The programs for A243667, there is no canonical definition to state claims against.
-/

/-! ## A243667.P8151948643467307549

`A336573(2*n+∑[n+3]+7)`
-/

namespace A243667.P8151948643467307549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A243667.P8151948643467307549

/-! ## A243667.P4037139163066755349

`A046699(A219534(n)-n)`
-/

namespace A243667.P4037139163066755349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A219534 n - (n : ℤ)).toNat

end

end A243667.P4037139163066755349

/-!
# A243668: Number of Sylvester classes of 5-packed words of degree n.

The programs for A243668, there is no canonical definition to state claims against.
-/

/-! ## A243668.P10401923515056866980

`A336573(A055999(n+3))`
-/

namespace A243668.P10401923515056866980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (A055999 (n + 3)).toNat

end

end A243668.P10401923515056866980

/-! ## A243668.P17733119352283456254

`A336573(eq[5, A025581(n)])`
-/

namespace A243668.P17733119352283456254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A243668.P17733119352283456254

/-! ## A243668.P13088326041365771566

`A336573(A155212(n+2)+2)`
-/

namespace A243668.P13088326041365771566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (A155212 (n + 2) + 2).toNat

end

end A243668.P13088326041365771566

/-! ## A243668.P981032567545084016

`A336573(A046691(n+4)-2)`
-/

namespace A243668.P981032567545084016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (A046691 (n + 4) - 2).toNat

end

end A243668.P981032567545084016

/-! ## A243668.P10697466302484408226

`A336573(A000217(n+6)-6)`
-/

namespace A243668.P10697466302484408226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (A000217 (n + 6) - 6).toNat

end

end A243668.P10697466302484408226

/-! ## A243668.P14365009568972341472

`A336573(A000124(n+6)-7)`
-/

namespace A243668.P14365009568972341472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 (A000124 (n + 6) - 7).toNat

end

end A243668.P14365009568972341472

/-! ## A243668.P10129430777913815337

`A336573(2*n+A000217(n+4)+5)`
-/

namespace A243668.P10129430777913815337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A243668.P10129430777913815337

/-!
# A243669: Number of hypo-Sylvester classes of 3-packed words of degree n.

The programs for A243669, there is no canonical definition to state claims against.
-/

/-! ## A243669.P3245507085288085559

`ogf((1-x)/(1-6x+2x^2))`
-/

namespace A243669.P3245507085288085559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 2] n

end

end A243669.P3245507085288085559

/-!
# A243670: Number of hypo-Sylvester classes of 5-packed words of degree n.

The programs for A243670, there is no canonical definition to state claims against.
-/

/-! ## A243670.P1269966785832133825

`ogf((1-x)/(1-8x+2x^2))`
-/

namespace A243670.P1269966785832133825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -8, 2] n

end

end A243670.P1269966785832133825

/-!
# A243671: Number of Sylvester classes of 2-parking functions of length n.

The programs for A243671, there is no canonical definition to state claims against.
-/

/-! ## A243671.P18272844576863304211

`A300861(A117158(n)+4^n)`
-/

namespace A243671.P18272844576863304211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300861 (A117158 n + (4 ^ n : ℤ)).toNat

end

end A243671.P18272844576863304211

/-!
# A243675: Number of hypoplactic classes of 3-parking functions of length n.

The programs for A243675, there is no canonical definition to state claims against.
-/

/-! ## A243675.P15629980216183289663

`ceil(A144097(n)/2)`
-/

namespace A243675.P15629980216183289663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A144097 n : ℚ) / 2⌉

end

end A243675.P15629980216183289663

/-! ## A243675.P10544098903939001792

`A371398((n-1)%(n+1))`
-/

namespace A243675.P10544098903939001792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371398 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A243675.P10544098903939001792

/-! ## A243675.P16709121458783212800

`A144097(n)/(A057427(n)+1)`
-/

namespace A243675.P16709121458783212800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144097 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A243675.P16709121458783212800

/-! ## A243675.P1166808488414688689

`A144097(n)/A000034(A003817(n))`
-/

namespace A243675.P1166808488414688689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144097 n : ℚ) / (A000034 (A003817 n).toNat : ℚ)

end

end A243675.P1166808488414688689

/-! ## A243675.P12436453279868788110

`A144097(n)/A000005(A006530(n+1))`
-/

namespace A243675.P12436453279868788110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144097 n : ℚ) / (A000005 (A006530 (n + 1)).toNat : ℚ)

end

end A243675.P12436453279868788110

/-! ## A243675.P13140456902306105120

`A144097(n)/A067824(A008578(n+1))`
-/

namespace A243675.P13140456902306105120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144097 n : ℚ) / (A067824 (A008578 (n + 1)).toNat : ℚ)

end

end A243675.P13140456902306105120

/-!
# A243676: Number of hypoplactic classes of 4-parking functions of length n.

The programs for A243676, there is no canonical definition to state claims against.
-/

/-! ## A243676.P3121220700723977028

`A336534(A052905(n+2))/A000005(A105560(n+1))`
-/

namespace A243676.P3121220700723977028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336534 (A052905 (n + 2)).toNat : ℚ) / (A000005 (A105560 (n + 1)).toNat : ℚ)

end

end A243676.P3121220700723977028

/-! ## A243676.P8440222804323963711

`A336534(A056115(n)+10)/A000005(A105560(n+1))`
-/

namespace A243676.P8440222804323963711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336534 (A056115 n + 10).toNat : ℚ) / (A000005 (A105560 (n + 1)).toNat : ℚ)

end

end A243676.P8440222804323963711

/-! ## A243676.P5652733119644937840

`A336534(A052905(n+2))/A001511(A005899(n))`
-/

namespace A243676.P5652733119644937840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336534 (A052905 (n + 2)).toNat : ℚ) / (A001511 (A005899 n).toNat : ℚ)

end

end A243676.P5652733119644937840

/-! ## A243676.P5323384496787539025

`A336534(A056115(n)+10)/A001511(A005899(n))`
-/

namespace A243676.P5323384496787539025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336534 (A056115 n + 10).toNat : ℚ) / (A001511 (A005899 n).toNat : ℚ)

end

end A243676.P5323384496787539025

/-!
# A243677: Number of hypoplactic classes of 5-parking functions of length n.

The programs for A243677, there is no canonical definition to state claims against.
-/

/-! ## A243677.P9509164809802407869

`ceil(A363006(n)/2)`
-/

namespace A243677.P9509164809802407869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A363006 n : ℚ) / 2⌉

end

end A243677.P9509164809802407869

/-! ## A243677.P18378990969947866866

`A363006(A028310(n))/2`
-/

namespace A243677.P18378990969947866866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363006 (A028310 n).toNat : ℚ) / 2

end

end A243677.P18378990969947866866

/-! ## A243677.P12463613669984343054

`A363006(n)/A001227(A000040(n+1))`
-/

namespace A243677.P12463613669984343054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363006 n : ℚ) / (A001227 (A000040 (n + 1)).toNat : ℚ)

end

end A243677.P12463613669984343054

/-! ## A243677.P1241345141521120487

`A363006(n)/A006530(A000079(n))`
-/

namespace A243677.P1241345141521120487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363006 n : ℚ) / (A006530 (A000079 n).toNat : ℚ)

end

end A243677.P1241345141521120487

/-!
# A243678: Number of meta-Sylvester classes of 2-parking functions of length n.

The programs for A243678, there is no canonical definition to state claims against.
-/

/-! ## A243678.P9733387794080250768

`∏[4*n+1]-floor(n/4)`
-/

namespace A243678.P9733387794080250768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 4⌋

end

end A243678.P9733387794080250768

/-!
# A243680: Nonnegative integers of the form 2x^2+xy+5y^2.

The programs for A243680, there is no canonical definition to state claims against.
-/

/-! ## A243680.P18155645750781980087

`record[A027656(A243194(n))-1]`
-/

namespace A243680.P18155645750781980087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A243194 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243680.P18155645750781980087

/-! ## A243680.P17257373413362176197

`record[A025480(A243681(n))]`
-/

namespace A243680.P17257373413362176197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A243681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243680.P17257373413362176197

/-! ## A243680.P7776407430704051285

`record[A142150(A243681(n+1))]`
-/

namespace A243680.P7776407430704051285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A243681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243680.P7776407430704051285

/-! ## A243680.P17560775098295068155

`A004526(record[A153733(A243681(n))])`
-/

namespace A243680.P17560775098295068155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A243681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A243680.P17560775098295068155

/-!
# A243681: Nonnegative integers of the form 3x^2+3xy+4y^2.

The programs for A243681, there is no canonical definition to state claims against.
-/

/-! ## A243681.P8659822490944555645

`record[A263390(A243194(n))]`
-/

namespace A243681.P8659822490944555645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A243194 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A243681.P8659822490944555645

/-! ## A243681.P9428217336355002209

`record[A103627(A243194(n+1))]%(4^n)`
-/

namespace A243681.P9428217336355002209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A243194 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (4 ^ n : ℤ)

end

end A243681.P9428217336355002209

/-! ## A243681.P142582335001094583

`record[A103627(A243194(n+1))]-A000007(n)`
-/

namespace A243681.P142582335001094583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A243194 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000007 n

end

end A243681.P142582335001094583

/-! ## A243681.P6309571830498387118

`record[A103627(A243194(n+1))]-A151878(n)`
-/

namespace A243681.P6309571830498387118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A243194 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A151878 n

end

end A243681.P6309571830498387118

/-! ## A243681.P1178771087377125884

`A010439(lt[A106291(n+1), A010419(2*n+1)])`
-/

namespace A243681.P1178771087377125884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010419 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010439 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A243681.P1178771087377125884

/-!
# A243688: Number of Sylvester classes of 1-multiparking functions of length n.

The programs for A243688, there is no canonical definition to state claims against.
-/

/-! ## A243688.P5072173979040439525

`∑[∑[A047309(A366200(n))]]`
-/

namespace A243688.P5072173979040439525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (A366200 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A243688.P5072173979040439525

/-!
# A243689: Number of Sylvester classes of 2-multiparking functions of length n.

The programs for A243689, there is no canonical definition to state claims against.
-/

/-! ## A243689.P7304462687692853384

`A000084(2*n+1)-char[3]`
-/

namespace A243689.P7304462687692853384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000084 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A243689.P7304462687692853384

/-!
# A243690: Number of Sylvester classes of 3-multiparking functions of length n.

The programs for A243690, there is no canonical definition to state claims against.
-/

/-! ## A243690.P16003636819005846954

`A039051(5*a(n-1))-1` with `a(0)=1`
-/

namespace A243690.P16003636819005846954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A039051 (5 * a (n - 1)).toNat - 1

end

end A243690.P16003636819005846954

/-!
# A243691: Number of Sylvester classes of 4-multiparking functions of length n.

The programs for A243691, there is no canonical definition to state claims against.
-/

/-! ## A243691.P2963178020335040433

`A268213(2*n)+comp[A109611(n+1)]`
-/

namespace A243691.P2963178020335040433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268213 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A243691.P2963178020335040433

/-!
# A243692: Number of Sylvester classes of 5-multiparking functions of length n.

The programs for A243692, there is no canonical definition to state claims against.
-/

/-! ## A243692.P7323817782075305693

`or(A000267(n), A222194(A001844(n)))`
-/

namespace A243692.P7323817782075305693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000267 n) (A222194 (A001844 n).toNat)

end

end A243692.P7323817782075305693

/-!
# A243693: Number of Hyposylvester classes of 3-multiparking functions of length n.

The programs for A243693, there is no canonical definition to state claims against.
-/

/-! ## A243693.P17596178799588008764

`A092102(a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A243693.P17596178799588008764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A092102 (a (n - 1)).toNat + (n : ℤ)

end

end A243693.P17596178799588008764

/-!
# A243694: Number of Hyposylvester classes of 4-multiparking functions of length n.

The programs for A243694, there is no canonical definition to state claims against.
-/

/-! ## A243694.P17879085330332205748

`A140199(A033538(n))`
-/

namespace A243694.P17879085330332205748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140199 (A033538 n).toNat

end

end A243694.P17879085330332205748

/-!
# A243695: Number of Hyposylvester classes of 5-multiparking functions of length n.

The programs for A243695, there is no canonical definition to state claims against.
-/

/-! ## A243695.P13093357946260480564

`A060819(A188266(n))`
-/

namespace A243695.P13093357946260480564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A188266 n).toNat

end

end A243695.P13093357946260480564

/-!
# A243696: Number of meta-Sylvester classes of 2-multiparking functions of length n.

The programs for A243696, there is no canonical definition to state claims against.
-/

/-! ## A243696.P1538543763548612087

`A243920(∑[n+1])`
-/

namespace A243696.P1538543763548612087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243920 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A243696.P1538543763548612087

/-! ## A243696.P17131692780533196117

`A243920(A253145(n))+A000007(n)`
-/

namespace A243696.P17131692780533196117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243920 (A253145 n).toNat + A000007 n

end

end A243696.P17131692780533196117

/-! ## A243696.P3979617782506122386

`A243920(A253145(n))+A010894(n)`
-/

namespace A243696.P3979617782506122386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243920 (A253145 n).toNat + A010894 (n + 21)

end

end A243696.P3979617782506122386

/-! ## A243696.P767807426057054735

`lcm(A225631(n), A243920(A000217(n+1)))`
-/

namespace A243696.P767807426057054735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A225631 n) (A243920 (A000217 (n + 1)).toNat)

end

end A243696.P767807426057054735

/-! ## A243696.P13897492274561594000

`gcd(A010894(2*n), A243920(A253145(n)))`
-/

namespace A243696.P13897492274561594000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (2 * n + 21)) (A243920 (A253145 n).toNat)

end

end A243696.P13897492274561594000

/-!
# A243697: Number of meta-Sylvester classes of 3-multiparking functions of length n.

The programs for A243697, there is no canonical definition to state claims against.
-/

/-! ## A243697.P15284605985682787183

`A130386(∏[a(n-1)+4])` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A243697.P15284605985682787183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130386 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A243697.P15284605985682787183

/-!
# A243698: Number of meta-Sylvester classes of 4-multiparking functions of length n.

The programs for A243698, there is no canonical definition to state claims against.
-/

/-! ## A243698.P7017116055150699442

`A242254((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A243698.P7017116055150699442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A242254 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A243698.P7017116055150699442

/-!
# A243699: Number of meta-Sylvester classes of 5-multiparking functions of length n.

The programs for A243699, there is no canonical definition to state claims against.
-/

/-! ## A243699.P11565457328096690376

`∏{p}[A304191(n), A117931(#)]`
-/

namespace A243699.P11565457328096690376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117931 p

end

end A243699.P11565457328096690376

