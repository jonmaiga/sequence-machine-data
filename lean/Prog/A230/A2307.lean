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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A230700: Number of (n+3)X(n+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230700, there is no canonical definition to state claims against.
-/

/-! ## A230700.P15008790676960032306

`A230708(∑[4*n]+1)`
-/

namespace A230700.P15008790676960032306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230700.P15008790676960032306

/-! ## A230700.P4139762505864998342

`lcm(2, A230708(A001844(n)))`
-/

namespace A230700.P4139762505864998342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230708 (A001844 n).toNat)

end

end A230700.P4139762505864998342

/-! ## A230700.P3647153208784459286

`record[gcd(A214292(n), A230708(n+1))]`
-/

namespace A230700.P3647153208784459286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A230708 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230700.P3647153208784459286

/-! ## A230700.P6634922197790536574

`A007318(∑[n])*A230708(A001844(n))`
-/

namespace A230700.P6634922197790536574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A230708 (A001844 n).toNat

end

end A230700.P6634922197790536574

/-! ## A230700.P13056019933754427378

`A000010(gcd(n, n+1))*A230708(A001844(n))`
-/

namespace A230700.P13056019933754427378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A230708 (A001844 n).toNat

end

end A230700.P13056019933754427378

/-!
# A230701: Number of (n+3) X (1+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230701, the canonical program `A230701.P1955058878905862822` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230701 has offset 1).

The definition of A230701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230701.P3327319593430820355

`∑[ogf((2+2x)/(1-2x-5x^2+x^3+x^4))]`
-/

namespace A230701.P3327319593430820355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -2, -5, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230701.P3327319593430820355

namespace A230701

/-- `∑[ogf((2+2x)/(1-2x-5x^2+x^3+x^4))]` -/
def P3327319593430820355.Spec : Prop :=
  ∀ n, P3327319593430820355.a n = A230701 (n + 1)

end A230701

/-! ## A230701.P4410067983726403484

`ogf((2+2x)/(1-3x-3x^2+6x^3-x^5))`
-/

namespace A230701.P4410067983726403484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -3, -3, 6, 0, -1] n

end

end A230701.P4410067983726403484

namespace A230701

/-- `ogf((2+2x)/(1-3x-3x^2+6x^3-x^5))` -/
def P4410067983726403484.Spec : Prop :=
  ∀ n, P4410067983726403484.a n = A230701 (n + 1)

end A230701

/-! ## A230701.P1955058878905862822

`3*a(n-1)+3*a(n-2)-6*a(n-3)+a(n-5)` with `a(0)=2, a(1)=8, a(2)=30, a(3)=102, a(4)=348`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230701

/-- `3*a(n-1)+3*a(n-2)-6*a(n-3)+a(n-5)` -/
def P1955058878905862822.Spec : Prop :=
  ∀ n, P1955058878905862822.a n = A230701 (n + 1)

theorem P1955058878905862822.correct : P1955058878905862822.Spec := by
  intro n
  simp only [A230701, Nat.add_sub_cancel]

end A230701

/-! ## A230701.P9667446074325146135

`sqrt(A230750(n+1)/3)`
-/

namespace A230701.P9667446074325146135
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A230750 (n + 1) : ℚ) / 3 : ℝ)

end

end A230701.P9667446074325146135

namespace A230701

/-- `sqrt(A230750(n+1)/3)` -/
def P9667446074325146135.Spec : Prop :=
  ∀ n, P9667446074325146135.a n = (A230701 (n + 1) : ℝ)

end A230701

/-! ## A230701.P14101990179733441677

`A230708(∑[n]+1)`
-/

namespace A230701.P14101990179733441677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230701.P14101990179733441677

namespace A230701

/-- `A230708(∑[n]+1)` -/
def P14101990179733441677.Spec : Prop :=
  ∀ n, P14101990179733441677.a n = A230701 (n + 1)

end A230701

/-!
# A230702: Number of (n+3)X(2+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230702, there is no canonical definition to state claims against.
-/

/-! ## A230702.P3097959636476163550

`A230751(n+1)/(3*A230736(n+1))`
-/

namespace A230702.P3097959636476163550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230751 (n + 1) : ℚ) / (3 * A230736 (n + 1) : ℚ)

end

end A230702.P3097959636476163550

/-! ## A230702.P4672572476606781698

`A230708(∑[n+1]+2)`
-/

namespace A230702.P4672572476606781698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230702.P4672572476606781698

/-! ## A230702.P17318536690369094519

`record[gcd(A136431(n), A230708(n+2))]`
-/

namespace A230702.P17318536690369094519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136431 n) (A230708 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230702.P17318536690369094519

/-! ## A230702.P16742646413815239728

`record[A230708(abs(A201163(n)))]`
-/

namespace A230702.P16742646413815239728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230702.P16742646413815239728

/-! ## A230702.P198601274621335286

`record[gcd(A230675(n+1), A230708(n+3))]`
-/

namespace A230702.P198601274621335286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230675 (n + 1)) (A230708 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230702.P198601274621335286

/-!
# A230703: Number of (n+3) X (3+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230703, there is no canonical definition to state claims against.
-/

/-! ## A230703.P2331833601459111148

`sqrt(A230752(n+1)/3)`
-/

namespace A230703.P2331833601459111148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A230752 (n + 1) : ℚ) / 3 : ℝ)

end

end A230703.P2331833601459111148

/-! ## A230703.P744792231220595732

`A230708(∑[n+2]+4)`
-/

namespace A230703.P744792231220595732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230703.P744792231220595732

/-! ## A230703.P745819020108558371

`lcm(2, A230708(A167614(n+1)))`
-/

namespace A230703.P745819020108558371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230708 (A167614 (n + 1)).toNat)

end

end A230703.P745819020108558371

/-! ## A230703.P9368112796791058690

`A230708(A167614(n+1))+A230686(n+1)`
-/

namespace A230703.P9368112796791058690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A167614 (n + 1)).toNat + A230686 (n + 1)

end

end A230703.P9368112796791058690

/-! ## A230703.P6736926388149656053

`A230708(A167614(n+1))%A230753(n+1)`
-/

namespace A230703.P6736926388149656053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230708 (A167614 (n + 1)).toNat) (A230753 (n + 1))

end

end A230703.P6736926388149656053

/-!
# A230704: Number of (n+3)X(4+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230704, there is no canonical definition to state claims against.
-/

/-! ## A230704.P13966683456024867077

`A230708(A374004(n+1))`
-/

namespace A230704.P13966683456024867077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A374004 (n + 1)).toNat

end

end A230704.P13966683456024867077

/-! ## A230704.P12466036426787966306

`A230708(A141214(n)+7)`
-/

namespace A230704.P12466036426787966306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A141214 n + 7).toNat

end

end A230704.P12466036426787966306

/-! ## A230704.P9803429994707332201

`A230708(A052905(n)+9)`
-/

namespace A230704.P9803429994707332201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A052905 n + 9).toNat

end

end A230704.P9803429994707332201

/-! ## A230704.P8781706423691913034

`A230708(A167614(n+2)+1)`
-/

namespace A230704.P8781706423691913034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A167614 (n + 2) + 1).toNat

end

end A230704.P8781706423691913034

/-! ## A230704.P3920700131783663790

`A230708(A000217(n+3)+4)`
-/

namespace A230704.P3920700131783663790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A000217 (n + 3) + 4).toNat

end

end A230704.P3920700131783663790

/-!
# A230705: Number of (n+3)X(5+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230705, there is no canonical definition to state claims against.
-/

/-! ## A230705.P12874406982650891666

`sqrt(A230754(n+1)/3)`
-/

namespace A230705.P12874406982650891666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A230754 (n + 1) : ℚ) / 3 : ℝ)

end

end A230705.P12874406982650891666

/-! ## A230705.P15100760819431056931

`A230708(A374005(n+1))`
-/

namespace A230705.P15100760819431056931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A374005 (n + 1)).toNat

end

end A230705.P15100760819431056931

/-! ## A230705.P15106583366399354033

`A230708(A167499(n+3))`
-/

namespace A230705.P15106583366399354033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A167499 (n + 3)).toNat

end

end A230705.P15106583366399354033

/-! ## A230705.P9135579530981303639

`A230708(A155212(n)+13)`
-/

namespace A230705.P9135579530981303639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A155212 n + 13).toNat

end

end A230705.P9135579530981303639

/-! ## A230705.P15422675033380435465

`A230708(A000217(n+4)+5)`
-/

namespace A230705.P15422675033380435465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A000217 (n + 4) + 5).toNat

end

end A230705.P15422675033380435465

/-!
# A230706: Number of (n+3)X(6+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230706, there is no canonical definition to state claims against.
-/

/-! ## A230706.P8641931312123046492

`A230708(A374007(n+1))`
-/

namespace A230706.P8641931312123046492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A374007 (n + 1)).toNat

end

end A230706.P8641931312123046492

/-! ## A230706.P17070998244433317691

`A230708(eq[7, A131818(n+1)])`
-/

namespace A230706.P17070998244433317691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230706.P17070998244433317691

/-! ## A230706.P5270724290650218653

`A230708(A052905(n+3))`
-/

namespace A230706.P5270724290650218653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A052905 (n + 3)).toNat

end

end A230706.P5270724290650218653

/-! ## A230706.P1977302146147437996

`A230708(eq[3, A219347(n)])`
-/

namespace A230706.P1977302146147437996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230706.P1977302146147437996

/-! ## A230706.P15700262186255848691

`A230708(eq[6, A200370(n+1)])`
-/

namespace A230706.P15700262186255848691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230706.P15700262186255848691

/-!
# A230707: Number of (n+3)X(7+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230707, there is no canonical definition to state claims against.
-/

/-! ## A230707.P6314573622241248479

`A230708(A374008(n+1))`
-/

namespace A230707.P6314573622241248479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A374008 (n + 1)).toNat

end

end A230707.P6314573622241248479

/-! ## A230707.P9070199834073180465

`A230708(A161680(n+7)+7)`
-/

namespace A230707.P9070199834073180465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (A161680 (n + 7) + 7).toNat

end

end A230707.P9070199834073180465

/-! ## A230707.P712639657775895941

`A230708(eq[8, A131818(n+1)])`
-/

namespace A230707.P712639657775895941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230707.P712639657775895941

/-! ## A230707.P7077255262503457161

`A230708(eq[4, A219347(n)])`
-/

namespace A230707.P7077255262503457161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230707.P7077255262503457161

/-! ## A230707.P11228780681438606041

`A230708(eq[6, A193592(n)])`
-/

namespace A230707.P11228780681438606041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230707.P11228780681438606041

/-!
# A230708: T(n,k)=Number of (n+3)X(k+3) 0..2 white square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230708, there is no canonical definition to state claims against.
-/

/-! ## A230708.P715254378280370852

`A230757(n+1)/(3*A230739(n+1))`
-/

namespace A230708.P715254378280370852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230757 (n + 1) : ℚ) / (3 * A230739 (n + 1) : ℚ)

end

end A230708.P715254378280370852

/-! ## A230708.P693350547627501971

`A230757(n+1)/A008486(A230739(n+1))`
-/

namespace A230708.P693350547627501971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230757 (n + 1) : ℚ) / (A008486 (A230739 (n + 1)).toNat : ℚ)

end

end A230708.P693350547627501971

/-! ## A230708.P16508148816824229103

`A002264(A230757(n+1)/A230739(n+1))`
-/

namespace A230708.P16508148816824229103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A230757 (n + 1) : ℚ) / (A230739 (n + 1) : ℚ))).toNat

end

end A230708.P16508148816824229103

/-! ## A230708.P5952464061554894192

`A230739(n+1)%A006881(A029731(2*n+3))`
-/

namespace A230708.P5952464061554894192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230739 (n + 1)) (A006881 (A029731 (2 * n + 3)).toNat)

end

end A230708.P5952464061554894192

/-!
# A230709: Union of even odious (cf. A128309) and evil numbers (cf. A001969).

The programs for A230709, the canonical program `A230709.P17708540381434539187` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230709 has offset 1).

The definition of A230709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230709.P7171443664220331366

`comp[xor(4*n, Δ[n²])]`
-/

namespace A230709.P7171443664220331366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230709.P7171443664220331366

namespace A230709

/-- `comp[xor(4*n, Δ[n²])]` -/
def P7171443664220331366.Spec : Prop :=
  ∀ n, (P7171443664220331366.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P12715931460356741384

`comp[2*xor(n, 2*n)+1]`
-/

namespace A230709.P12715931460356741384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (2 * n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230709.P12715931460356741384

namespace A230709

/-- `comp[2*xor(n, 2*n)+1]` -/
def P12715931460356741384.Spec : Prop :=
  ∀ n, (P12715931460356741384.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P9666697015700359050

`comp[or(1, 2*xor(n, 2*n))]`
-/

namespace A230709.P9666697015700359050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * Nat.xor n (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A230709.P9666697015700359050

namespace A230709

/-- `comp[or(1, 2*xor(n, 2*n))]` -/
def P9666697015700359050.Spec : Prop :=
  ∀ n, (P9666697015700359050.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P17708540381434539187

`lt[-a(and(n, n-1)), gcd(n, n%2)+1]` with `a(0)=-2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230709

/-- `lt[-a(and(n, n-1)), gcd(n, n%2)+1]` -/
def P17708540381434539187.Spec : Prop :=
  ∀ n, (P17708540381434539187.a n : ℤ) = A230709 (n + 1)

theorem P17708540381434539187.correct : P17708540381434539187.Spec := by
  intro n
  simp only [A230709, Nat.add_sub_cancel]

end A230709

/-! ## A230709.P18118024568533996380

`eq[0, A228495(n)]`
-/

namespace A230709.P18118024568533996380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230709.P18118024568533996380

namespace A230709

/-- `eq[0, A228495(n)]` -/
def P18118024568533996380.Spec : Prop :=
  ∀ n, (P18118024568533996380.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P6477606315577027150

`eq[1, A254377(n)]`
-/

namespace A230709.P6477606315577027150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230709.P6477606315577027150

namespace A230709

/-- `eq[1, A254377(n)]` -/
def P6477606315577027150.Spec : Prop :=
  ∀ n, (P6477606315577027150.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P4575381533458807410

`comp[A048726(n)+1]`
-/

namespace A230709.P4575381533458807410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048726 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230709.P4575381533458807410

namespace A230709

/-- `comp[A048726(n)+1]` -/
def P4575381533458807410.Spec : Prop :=
  ∀ n, (P4575381533458807410.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P7673874626282174957

`comp[A092246(n+1)]`
-/

namespace A230709.P7673874626282174957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230709.P7673874626282174957

namespace A230709

/-- `comp[A092246(n+1)]` -/
def P7673874626282174957.Spec : Prop :=
  ∀ n, (P7673874626282174957.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P2441869858660397537

`comp[A114389(n+1)]`
-/

namespace A230709.P2441869858660397537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230709.P2441869858660397537

namespace A230709

/-- `comp[A114389(n+1)]` -/
def P2441869858660397537.Spec : Prop :=
  ∀ n, (P2441869858660397537.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P4358252583283076063

`lt[and(n, A010060(n)), 1]`
-/

namespace A230709.P4358252583283076063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A010060 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230709.P4358252583283076063

namespace A230709

/-- `lt[and(n, A010060(n)), 1]` -/
def P4358252583283076063.Spec : Prop :=
  ∀ n, (P4358252583283076063.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P10815564460827545832

`comp[xor(n, A048727(n))+1]`
-/

namespace A230709.P10815564460827545832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A048727 n) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A230709.P10815564460827545832

namespace A230709

/-- `comp[xor(n, A048727(n))+1]` -/
def P10815564460827545832.Spec : Prop :=
  ∀ n, (P10815564460827545832.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P12621037696207878853

`lt[and(n, A254379(2*n)), 1]`
-/

namespace A230709.P12621037696207878853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A254379 (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A230709.P12621037696207878853

namespace A230709

/-- `lt[and(n, A254379(2*n)), 1]` -/
def P12621037696207878853.Spec : Prop :=
  ∀ n, (P12621037696207878853.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P2134400842067312575

`∪[2*n, A001969(n+1)]`
-/

namespace A230709.P2134400842067312575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230709.P2134400842067312575

namespace A230709

/-- `∪[2*n, A001969(n+1)]` -/
def P2134400842067312575.Spec : Prop :=
  ∀ n, (P2134400842067312575.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P12576592081216349916

`∪[2*n, A091785(n+1)]`
-/

namespace A230709.P12576592081216349916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230709.P12576592081216349916

namespace A230709

/-- `∪[2*n, A091785(n+1)]` -/
def P12576592081216349916.Spec : Prop :=
  ∀ n, (P12576592081216349916.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P16537580195535832675

`∪[2*n, A129771(n+1)]`
-/

namespace A230709.P16537580195535832675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230709.P16537580195535832675

namespace A230709

/-- `∪[2*n, A129771(n+1)]` -/
def P16537580195535832675.Spec : Prop :=
  ∀ n, (P16537580195535832675.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P9938169019129433730

`∪[2*n, A181155(n+1)]`
-/

namespace A230709.P9938169019129433730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230709.P9938169019129433730

namespace A230709

/-- `∪[2*n, A181155(n+1)]` -/
def P9938169019129433730.Spec : Prop :=
  ∀ n, (P9938169019129433730.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P207881473285871054

`∪[2*n, A195609(n+1)]`
-/

namespace A230709.P207881473285871054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230709.P207881473285871054

namespace A230709

/-- `∪[2*n, A195609(n+1)]` -/
def P207881473285871054.Spec : Prop :=
  ∀ n, (P207881473285871054.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P521383079273758975

`eq[A010060(n), A254379(n)]`
-/

namespace A230709.P521383079273758975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230709.P521383079273758975

namespace A230709

/-- `eq[A010060(n), A254379(n)]` -/
def P521383079273758975.Spec : Prop :=
  ∀ n, (P521383079273758975.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P3495611373726320302

`∪[A001969(n+1), A005843(n)]`
-/

namespace A230709.P3495611373726320302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230709.P3495611373726320302

namespace A230709

/-- `∪[A001969(n+1), A005843(n)]` -/
def P3495611373726320302.Spec : Prop :=
  ∀ n, (P3495611373726320302.a n : ℤ) = A230709 (n + 1)

end A230709

/-! ## A230709.P18400691780253760517

`∪[A001969(n+1), A128309(n+1)]`
-/

namespace A230709.P18400691780253760517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230709.P18400691780253760517

namespace A230709

/-- `∪[A001969(n+1), A128309(n+1)]` -/
def P18400691780253760517.Spec : Prop :=
  ∀ n, (P18400691780253760517.a n : ℤ) = A230709 (n + 1)

end A230709

/-!
# A230710: Values of x such that x^2 + y^2 = 5^n with x and y coprime and 0 < x < y.

The programs for A230710, there is no canonical definition to state claims against.
-/

/-! ## A230710.P16907288182023671179

`abs(A066770(n+1)/(2*A230711(n+1)))`
-/

namespace A230710.P16907288182023671179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A066770 (n + 1) : ℚ) / (2 * A230711 (n + 1) : ℚ)|

end

end A230710.P16907288182023671179

/-! ## A230710.P13924227414498560914

`sqrt(A094423(2*(n+1)))%A094384(2*(n+2))/A230711(n+1)`
-/

namespace A230710.P13924227414498560914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A094423 (2 * (n + 1)) : ℝ))) (A094384 (2 * (n + 2))) : ℚ) / (A230711 (n + 1) : ℚ)

end

end A230710.P13924227414498560914

/-! ## A230710.P1039697662230736868

`A205406(floor(A093378(n+1)/A230711(n+1)))`
-/

namespace A230710.P1039697662230736868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 ⌊(A093378 (n + 1) : ℚ) / (A230711 (n + 1) : ℚ)⌋.toNat

end

end A230710.P1039697662230736868

/-! ## A230710.P1316246545980269539

`A205406(ceil(A093378(n+1)/A230711(n+1)))`
-/

namespace A230710.P1316246545980269539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 ⌈(A093378 (n + 1) : ℚ) / (A230711 (n + 1) : ℚ)⌉.toNat

end

end A230710.P1316246545980269539

/-! ## A230710.P17863413824134375394

`filter[A121705(2*n), A011558(#)]`
-/

namespace A230710.P17863413824134375394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121705 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A230710.P17863413824134375394

/-!
# A230711: Values of y such that x^2 + y^2 = 5^n with x and y coprime and 0 < x < y.

The programs for A230711, there is no canonical definition to state claims against.
-/

/-! ## A230711.P13648904362869768595

`abs(A066770(n+1)/(2*A230710(n+1)))`
-/

namespace A230711.P13648904362869768595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A066770 (n + 1) : ℚ) / (2 * A230710 (n + 1) : ℚ)|

end

end A230711.P13648904362869768595

/-! ## A230711.P10629544856656260660

`sqrt(A094423(2*(n+1)))%A094384(2*(n+2))/A230710(n+1)`
-/

namespace A230711.P10629544856656260660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A094423 (2 * (n + 1)) : ℝ))) (A094384 (2 * (n + 2))) : ℚ) / (A230710 (n + 1) : ℚ)

end

end A230711.P10629544856656260660

/-! ## A230711.P5074537253578094851

`A205406(floor(A093378(n+1)/A230710(n+1)))`
-/

namespace A230711.P5074537253578094851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 ⌊(A093378 (n + 1) : ℚ) / (A230710 (n + 1) : ℚ)⌋.toNat

end

end A230711.P5074537253578094851

/-! ## A230711.P7829097866939936664

`A205406(ceil(A093378(n+1)/A230710(n+1)))`
-/

namespace A230711.P7829097866939936664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 ⌈(A093378 (n + 1) : ℚ) / (A230710 (n + 1) : ℚ)⌉.toNat

end

end A230711.P7829097866939936664

/-!
# A230714: a(n) = lcm(1,2,...,n)*a(floor(n/2))^2 for n > 0, a(0) = 1.

The programs for A230714, the canonical program `A230714.P17564723223337425468` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230714 has offset 0).

The definition of A230714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230714.P17564723223337425468

`n!*A205958(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230714

/-- `n!*A205958(n)` -/
def P17564723223337425468.Spec : Prop :=
  ∀ n, P17564723223337425468.a n = A230714 n

theorem P17564723223337425468.correct : P17564723223337425468.Spec := by
  intro n
  simp only [A230714]

end A230714

/-! ## A230714.P5390283838305336004

`A000142(n)*A205958(n)`
-/

namespace A230714.P5390283838305336004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A205958 n

end

end A230714.P5390283838305336004

namespace A230714

/-- `A000142(n)*A205958(n)` -/
def P5390283838305336004.Spec : Prop :=
  ∀ n, P5390283838305336004.a n = A230714 n

end A230714

/-! ## A230714.P14447651665633798228

`A132159(A161680(n))*A205958(n)`
-/

namespace A230714.P14447651665633798228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 (A161680 n).toNat * A205958 n

end

end A230714.P14447651665633798228

namespace A230714

/-- `A132159(A161680(n))*A205958(n)` -/
def P14447651665633798228.Spec : Prop :=
  ∀ n, P14447651665633798228.a n = A230714 n

end A230714

/-! ## A230714.P6847620248437568779

`A002944(n+1)*A025527(n+1)*A205958(n)`
-/

namespace A230714.P6847620248437568779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) * A025527 (n + 1) * A205958 n

end

end A230714.P6847620248437568779

namespace A230714

/-- `A002944(n+1)*A025527(n+1)*A205958(n)` -/
def P6847620248437568779.Spec : Prop :=
  ∀ n, P6847620248437568779.a n = A230714 n

end A230714

/-!
# A230715: Smallest numbers in a set of 4 consecutive odd numbers that are primes or pseudoprime (base 2).

The programs for A230715, there is no canonical definition to state claims against.
-/

/-! ## A230715.P17029900405374561690

`∩[A230808(n+1)-2, A230808(n+1)]`
-/

namespace A230715.P17029900405374561690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230715.P17029900405374561690

/-! ## A230715.P1241410104097680283

`A228575(A292125(n+1))-4`
-/

namespace A230715.P1241410104097680283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228575 (A292125 (n + 1)).toNat - 4

end

end A230715.P1241410104097680283

/-!
# A230716: Numbers whose square is both a sum and a difference of two positive cubes.

The programs for A230716, there is no canonical definition to state claims against.
-/

/-! ## A230716.P11954752066874837645

`sqrt(A230717(n+1))`
-/

namespace A230716.P11954752066874837645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A230717 (n + 1) : ℝ)

end

end A230716.P11954752066874837645

/-! ## A230716.P9646289276568969516

`root(A230717(n+1), 2%A001358(n+1))`
-/

namespace A230716.P9646289276568969516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A230717 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A001358 (n + 1)) : ℝ))

end

end A230716.P9646289276568969516

/-! ## A230716.P17435782954544339043

`root(A230717(n+1), A001316(A001316(n)))`
-/

namespace A230716.P17435782954544339043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A230717 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A230716.P17435782954544339043

/-! ## A230716.P10873517623159236643

`A230717(n+1)^(A093178(n)/A005843(A093178(n)))`
-/

namespace A230716.P10873517623159236643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A230717 (n + 1) : ℝ) ^ ((A093178 n : ℚ) / (A005843 (A093178 n).toNat : ℚ) : ℝ)

end

end A230716.P10873517623159236643

/-! ## A230716.P1185986272050931549

`A230717(n+1)^(A139553(n)/A005843(A139553(n)))`
-/

namespace A230716.P1185986272050931549
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A230717 (n + 1) : ℝ) ^ ((A139553 n : ℚ) / (A005843 (A139553 n).toNat : ℚ) : ℝ)

end

end A230716.P1185986272050931549

/-! ## A230716.P10220957808196090174

`root(A230717(n+1), dr(A038648(n+1)))`
-/

namespace A230716.P10220957808196090174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A230717 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A038648 (n + 1)) : ℝ))

end

end A230716.P10220957808196090174

/-! ## A230716.P12031917432402950153

`∩[A038597(n+1), A050801(n+1)]`
-/

namespace A230716.P12031917432402950153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230716.P12031917432402950153

/-! ## A230716.P4492534920141910192

`∩[A038597(n+1), A217248(n+1)]`
-/

namespace A230716.P4492534920141910192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230716.P4492534920141910192

/-!
# A230717: Squares that are both a sum and a difference of two positive cubes.

The programs for A230717, there is no canonical definition to state claims against.
-/

/-! ## A230717.P9276483328106708293

`A230716(n+1)²`
-/

namespace A230717.P9276483328106708293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230716 (n + 1) ^ 2

end

end A230717.P9276483328106708293

/-! ## A230717.P1007272967144589468

`A230716(n+1)^(2%A014439(n+1))`
-/

namespace A230717.P1007272967144589468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230716 (n + 1) : ℚ) ^ (Int.tmod 2 (A014439 (n + 1)) : ℤ)

end

end A230717.P1007272967144589468

/-! ## A230717.P6959707795555425636

`A230716(n+1)%A014441(n+1)*A230716(n+1)`
-/

namespace A230717.P6959707795555425636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230716 (n + 1)) (A014441 (n + 1)) * A230716 (n + 1)

end

end A230717.P6959707795555425636

/-! ## A230717.P6034104299703945171

`A230716(n+1)^val(A038596(n+1), A038597(n+1))`
-/

namespace A230717.P6034104299703945171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230716 (n + 1) ^ SequenceMachineLib.valuation (A038596 (n + 1)).toNat (A038597 (n + 1)).toNat

end

end A230717.P6034104299703945171

/-! ## A230717.P18367704775066307470

`A230716(n+1)^val(A050802(n+1), A050801(n+1))`
-/

namespace A230717.P18367704775066307470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230716 (n + 1) ^ SequenceMachineLib.valuation (A050802 (n + 1)).toNat (A050801 (n + 1)).toNat

end

end A230717.P18367704775066307470

/-! ## A230717.P1882491172490930739

`∩[A038596(n+1), A050802(n+1)]`
-/

namespace A230717.P1882491172490930739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230717.P1882491172490930739

/-! ## A230717.P5151049643417842055

`∩[A038596(n+1), A267088(n+1)]`
-/

namespace A230717.P5151049643417842055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230717.P5151049643417842055

/-! ## A230717.P7658115016336973293

`∩[A038596(n+1), A267416(n+1)]`
-/

namespace A230717.P7658115016336973293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230717.P7658115016336973293

/-! ## A230717.P3891468133965189539

`∩[A038597(n+1), A050801(n+1)]²`
-/

namespace A230717.P3891468133965189539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A230717.P3891468133965189539

/-! ## A230717.P9464078788298726633

`∩[A038597(n+1), A217248(n+1)]²`
-/

namespace A230717.P9464078788298726633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A230717.P9464078788298726633

/-!
# A230718: Smallest n-th power equal to a sum of some consecutive, immediately preceding, positive n-th powers, or 0 if none.

The programs for A230718, there is no canonical definition to state claims against.
-/

/-! ## A230718.P5383004437179776658

`C(comp[n²], comp[or(2, n)])^n`
-/

namespace A230718.P5383004437179776658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) ^ n

end

end A230718.P5383004437179776658

/-!
# A230720: Even sorting numbers, cf. A003071.

The programs for A230720, the canonical program `A230720.P14814653341307924643` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230720 has offset 1).

The definition of A230720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230720.P14814653341307924643

`A003071(A092246(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230720

/-- `A003071(A092246(n+1))` -/
def P14814653341307924643.Spec : Prop :=
  ∀ n, P14814653341307924643.a n = A230720 (n + 1)

theorem P14814653341307924643.correct : P14814653341307924643.Spec := by
  intro n
  simp only [A230720, Nat.add_sub_cancel]

end A230720

/-! ## A230720.P14698690638807737129

`A003071(eq[1, A228495(n)])`
-/

namespace A230720.P14698690638807737129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230720.P14698690638807737129

namespace A230720

/-- `A003071(eq[1, A228495(n)])` -/
def P14698690638807737129.Spec : Prop :=
  ∀ n, P14698690638807737129.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P6970709574328718565

`A003071(A125592(n+1)+1)`
-/

namespace A230720.P6970709574328718565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A125592 (n + 1) + 1).toNat

end

end A230720.P6970709574328718565

namespace A230720

/-- `A003071(A125592(n+1)+1)` -/
def P6970709574328718565.Spec : Prop :=
  ∀ n, P6970709574328718565.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P5696467591254433513

`A003071(A006364(2*(n+1)))`
-/

namespace A230720.P5696467591254433513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A006364 (2 * (n + 1))).toNat

end

end A230720.P5696467591254433513

namespace A230720

/-- `A003071(A006364(2*(n+1)))` -/
def P5696467591254433513.Spec : Prop :=
  ∀ n, P5696467591254433513.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P7136757410601300671

`A003071(xor(2, A129771(n+1)))`
-/

namespace A230720.P7136757410601300671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (Int.xor 2 (A129771 (n + 1))).toNat

end

end A230720.P7136757410601300671

namespace A230720

/-- `A003071(xor(2, A129771(n+1)))` -/
def P7136757410601300671.Spec : Prop :=
  ∀ n, P7136757410601300671.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P9064872250411331924

`A003071(xor(3, A128309(n+1)))`
-/

namespace A230720.P9064872250411331924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (Int.xor 3 (A128309 (n + 1))).toNat

end

end A230720.P9064872250411331924

namespace A230720

/-- `A003071(xor(3, A128309(n+1)))` -/
def P9064872250411331924.Spec : Prop :=
  ∀ n, P9064872250411331924.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P3754688718182045460

`A003071(2*A001969(n+1)+1)`
-/

namespace A230720.P3754688718182045460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (2 * A001969 (n + 1) + 1).toNat

end

end A230720.P3754688718182045460

namespace A230720

/-- `A003071(2*A001969(n+1)+1)` -/
def P3754688718182045460.Spec : Prop :=
  ∀ n, P3754688718182045460.a n = A230720 (n + 1)

theorem P3754688718182045460.correct : P3754688718182045460.Spec := by
  intro n
  simp only [A230720, Nat.add_sub_cancel, A230720.P3754688718182045460.a, A230720.P14814653341307924643.a, A001969, A001969.P9139304774861292784.a, A003071, A003071.P4419298609567822883.a, A092246, A092246.P10064573919626078015.a, A000120, A000120.P2816527436160941581.a, A006519, A006519.P10435570611646570274.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230720

/-! ## A230720.P9502739033797879182

`A003071(2*A026147(n+1)-1)`
-/

namespace A230720.P9502739033797879182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (2 * A026147 (n + 1) - 1).toNat

end

end A230720.P9502739033797879182

namespace A230720

/-- `A003071(2*A026147(n+1)-1)` -/
def P9502739033797879182.Spec : Prop :=
  ∀ n, P9502739033797879182.a n = A230720 (n + 1)

theorem P9502739033797879182.correct : P9502739033797879182.Spec := by
  intro n
  simp only [A230720, Nat.add_sub_cancel, A230720.P9502739033797879182.a, A230720.P14814653341307924643.a, A003071, A003071.P4419298609567822883.a, A026147, A026147.P16575442085374687038.a, A092246, A092246.P10064573919626078015.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A006519, A006519.P10435570611646570274.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230720

/-! ## A230720.P5680987457526311226

`record[and(1, A029886(n))*A003071(n+1)]`
-/

namespace A230720.P5680987457526311226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A029886 n) * A003071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230720.P5680987457526311226

namespace A230720

/-- `record[and(1, A029886(n))*A003071(n+1)]` -/
def P5680987457526311226.Spec : Prop :=
  ∀ n, P5680987457526311226.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P14353170927105595776

`A003071(A000069(A026147(n+1)))`
-/

namespace A230720.P14353170927105595776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A000069 (A026147 (n + 1)).toNat).toNat

end

end A230720.P14353170927105595776

namespace A230720

/-- `A003071(A000069(A026147(n+1)))` -/
def P14353170927105595776.Spec : Prop :=
  ∀ n, P14353170927105595776.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P4672080821880277929

`A003071(A102393(A125592(n+1)))`
-/

namespace A230720.P4672080821880277929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A102393 (A125592 (n + 1)).toNat).toNat

end

end A230720.P4672080821880277929

namespace A230720

/-- `A003071(A102393(A125592(n+1)))` -/
def P4672080821880277929.Spec : Prop :=
  ∀ n, P4672080821880277929.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P6963756544518429001

`A003071(A102393(2*A001969(n+1)))`
-/

namespace A230720.P6963756544518429001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A102393 (2 * A001969 (n + 1)).toNat).toNat

end

end A230720.P6963756544518429001

namespace A230720

/-- `A003071(A102393(2*A001969(n+1)))` -/
def P6963756544518429001.Spec : Prop :=
  ∀ n, P6963756544518429001.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P9872844804304451805

`A003071(A000069(A001285(n)+2*n))`
-/

namespace A230720.P9872844804304451805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A000069 (A001285 n + (2 * n : ℤ)).toNat).toNat

end

end A230720.P9872844804304451805

namespace A230720

/-- `A003071(A000069(A001285(n)+2*n))` -/
def P9872844804304451805.Spec : Prop :=
  ∀ n, P9872844804304451805.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P7214705040272012306

`A003071(A026147(n+1)+A001969(n+1))`
-/

namespace A230720.P7214705040272012306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A026147 (n + 1) + A001969 (n + 1)).toNat

end

end A230720.P7214705040272012306

namespace A230720

/-- `A003071(A026147(n+1)+A001969(n+1))` -/
def P7214705040272012306.Spec : Prop :=
  ∀ n, P7214705040272012306.a n = A230720 (n + 1)

theorem P7214705040272012306.correct : P7214705040272012306.Spec := by
  intro n
  simp only [A230720, Nat.add_sub_cancel, A230720.P7214705040272012306.a, A230720.P14814653341307924643.a, A001969, A001969.P9139304774861292784.a, A003071, A003071.P4419298609567822883.a, A026147, A026147.P16575442085374687038.a, A092246, A092246.P10064573919626078015.a, A000120, A000120.P2816527436160941581.a, A006519, A006519.P10435570611646570274.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230720

/-! ## A230720.P6096972690001485362

`A003071(A026430(A001969(n+1))+n+1)`
-/

namespace A230720.P6096972690001485362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A026430 (A001969 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A230720.P6096972690001485362

namespace A230720

/-- `A003071(A026430(A001969(n+1))+n+1)` -/
def P6096972690001485362.Spec : Prop :=
  ∀ n, P6096972690001485362.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P8177606042396391614

`A003071(A001969(n+1)+A001969(n+1)+1)`
-/

namespace A230720.P8177606042396391614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A001969 (n + 1) + (A001969 (n + 1) + 1)).toNat

end

end A230720.P8177606042396391614

namespace A230720

/-- `A003071(A001969(n+1)+A001969(n+1)+1)` -/
def P8177606042396391614.Spec : Prop :=
  ∀ n, P8177606042396391614.a n = A230720 (n + 1)

theorem P8177606042396391614.correct : P8177606042396391614.Spec := by
  intro n
  simp only [A230720, Nat.add_sub_cancel, A230720.P8177606042396391614.a, A230720.P14814653341307924643.a, A001969, A001969.P9139304774861292784.a, A003071, A003071.P4419298609567822883.a, A092246, A092246.P10064573919626078015.a, A000120, A000120.P2816527436160941581.a, A006519, A006519.P10435570611646570274.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230720

/-! ## A230720.P11334442391211497707

`A003071(A026147(n+1)+A026147(n+1)-1)`
-/

namespace A230720.P11334442391211497707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (A026147 (n + 1) + (A026147 (n + 1) - 1)).toNat

end

end A230720.P11334442391211497707

namespace A230720

/-- `A003071(A026147(n+1)+A026147(n+1)-1)` -/
def P11334442391211497707.Spec : Prop :=
  ∀ n, P11334442391211497707.a n = A230720 (n + 1)

theorem P11334442391211497707.correct : P11334442391211497707.Spec := by
  intro n
  simp only [A230720, Nat.add_sub_cancel, A230720.P11334442391211497707.a, A230720.P14814653341307924643.a, A003071, A003071.P4419298609567822883.a, A026147, A026147.P16575442085374687038.a, A092246, A092246.P10064573919626078015.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A006519, A006519.P10435570611646570274.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A005187, A005187.P3874015513960485494.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A230720

/-! ## A230720.P10678995511601793741

`A003071(eq[A000265(n+1)+n+1, A000069(n+2)]+1)`
-/

namespace A230720.P10678995511601793741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A230720.P10678995511601793741

namespace A230720

/-- `A003071(eq[A000265(n+1)+n+1, A000069(n+2)]+1)` -/
def P10678995511601793741.Spec : Prop :=
  ∀ n, P10678995511601793741.a n = A230720 (n + 1)

end A230720

/-! ## A230720.P15718616148512304743

`∩[2*n, A003071(n+1)]`
-/

namespace A230720.P15718616148512304743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230720.P15718616148512304743

namespace A230720

/-- `∩[2*n, A003071(n+1)]` -/
def P15718616148512304743.Spec : Prop :=
  ∀ n, (P15718616148512304743.a n : ℤ) = A230720 (n + 1)

end A230720

/-! ## A230720.P17340252133480024197

`∩[A003071(n+1), A005843(n)]`
-/

namespace A230720.P17340252133480024197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230720.P17340252133480024197

namespace A230720

/-- `∩[A003071(n+1), A005843(n)]` -/
def P17340252133480024197.Spec : Prop :=
  ∀ n, (P17340252133480024197.a n : ℤ) = A230720 (n + 1)

end A230720

/-!
# A230721: Odd sorting numbers, cf. A003071.

The programs for A230721, the canonical program `A230721.P1031067549909490488` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230721 has offset 1).

The definition of A230721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230721.P1031067549909490488

`A003071(A230709(n+2))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A230721

/-- `A003071(A230709(n+2))` -/
def P1031067549909490488.Spec : Prop :=
  ∀ n, P1031067549909490488.a n = A230721 (n + 1)

theorem P1031067549909490488.correct : P1031067549909490488.Spec := by
  intro n
  simp only [A230721, Nat.add_sub_cancel]

end A230721

/-! ## A230721.P5869396669189517725

`A003071(record[n^and(1, A003071(n+1))]+1)`
-/

namespace A230721.P5869396669189517725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (Int.land 1 (A003071 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A230721.P5869396669189517725

namespace A230721

/-- `A003071(record[n^and(1, A003071(n+1))]+1)` -/
def P5869396669189517725.Spec : Prop :=
  ∀ n, P5869396669189517725.a n = A230721 (n + 1)

end A230721

/-! ## A230721.P1273368467576174123

`A003071(record[(n+1)*A003071(n+2)%2]+1)`
-/

namespace A230721.P1273368467576174123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A003071 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A230721.P1273368467576174123

namespace A230721

/-- `A003071(record[(n+1)*A003071(n+2)%2]+1)` -/
def P1273368467576174123.Spec : Prop :=
  ∀ n, P1273368467576174123.a n = A230721 (n + 1)

end A230721

/-! ## A230721.P11414145930425611098

`A003071(record[(n+1)*and(1, A003071(n+2))]+1)`
-/

namespace A230721.P11414145930425611098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A003071 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A230721.P11414145930425611098

namespace A230721

/-- `A003071(record[(n+1)*and(1, A003071(n+2))]+1)` -/
def P11414145930425611098.Spec : Prop :=
  ∀ n, P11414145930425611098.a n = A230721 (n + 1)

end A230721

/-! ## A230721.P7100559320038239098

`∩[2*n+1, A003071(n+1)]`
-/

namespace A230721.P7100559320038239098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230721.P7100559320038239098

namespace A230721

/-- `∩[2*n+1, A003071(n+1)]` -/
def P7100559320038239098.Spec : Prop :=
  ∀ n, (P7100559320038239098.a n : ℤ) = A230721 (n + 1)

end A230721

/-! ## A230721.P12742326425791623540

`A003071(lt[A268717(2*n), A001969(n+1)])`
-/

namespace A230721.P12742326425791623540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268717 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A230721.P12742326425791623540

namespace A230721

/-- `A003071(lt[A268717(2*n), A001969(n+1)])` -/
def P12742326425791623540.Spec : Prop :=
  ∀ n, P12742326425791623540.a n = A230721 (n + 1)

end A230721

/-! ## A230721.P11248700453288308259

`∩[A003071(n+1), A060747(n)]`
-/

namespace A230721.P11248700453288308259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230721.P11248700453288308259

namespace A230721

/-- `∩[A003071(n+1), A060747(n)]` -/
def P11248700453288308259.Spec : Prop :=
  ∀ n, (P11248700453288308259.a n : ℤ) = A230721 (n + 1)

end A230721

/-! ## A230721.P13060230350857745375

`∩[A003071(n+1), A004280(n+1)]`
-/

namespace A230721.P13060230350857745375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230721.P13060230350857745375

namespace A230721

/-- `∩[A003071(n+1), A004280(n+1)]` -/
def P13060230350857745375.Spec : Prop :=
  ∀ n, (P13060230350857745375.a n : ℤ) = A230721 (n + 1)

end A230721

/-! ## A230721.P8063400972003166806

`∩[A003071(n+1), A005843(n)+1]`
-/

namespace A230721.P8063400972003166806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230721.P8063400972003166806

namespace A230721

/-- `∩[A003071(n+1), A005843(n)+1]` -/
def P8063400972003166806.Spec : Prop :=
  ∀ n, (P8063400972003166806.a n : ℤ) = A230721 (n + 1)

end A230721

/-! ## A230721.P6946291263888826923

`∩[A003071(n+1), A004281(n)]`
-/

namespace A230721.P6946291263888826923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230721.P6946291263888826923

namespace A230721

/-- `∩[A003071(n+1), A004281(n)]` -/
def P6946291263888826923.Spec : Prop :=
  ∀ n, (P6946291263888826923.a n : ℤ) = A230721 (n + 1)

end A230721

/-! ## A230721.P18127645467168610434

`record[A029579(A003071(n+1))]`
-/

namespace A230721.P18127645467168610434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A003071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230721.P18127645467168610434

namespace A230721

/-- `record[A029579(A003071(n+1))]` -/
def P18127645467168610434.Spec : Prop :=
  ∀ n, P18127645467168610434.a n = A230721 (n + 1)

end A230721

/-! ## A230721.P13288120642020166558

`filter[A003071(n+1), A000035(#)]`
-/

namespace A230721.P13288120642020166558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A230721.P13288120642020166558

namespace A230721

/-- `filter[A003071(n+1), A000035(#)]` -/
def P13288120642020166558.Spec : Prop :=
  ∀ n, P13288120642020166558.a n = A230721 (n + 1)

end A230721

/-! ## A230721.P15578851791664902365

`filter[A003071(n+2), A267256(#)]`
-/

namespace A230721.P15578851791664902365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A230721.P15578851791664902365

namespace A230721

/-- `filter[A003071(n+2), A267256(#)]` -/
def P15578851791664902365.Spec : Prop :=
  ∀ n, P15578851791664902365.a n = A230721 (n + 1)

end A230721

/-!
# A230723: Number of non-equivalent ways to choose three points in an equilateral triangle grid of side n.

The programs for A230723, the canonical program `A230723.P8132187016885984254` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230723 has offset 1).

The definition of A230723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A230723.P8132187016885984254

`ogf((x+3x^2+7x^3+19x^4+16x^5+12x^6+x^7+2x^8-x^9)/(1-3x+7x^3-3x^4-6x^5+6x^7+3x^8-7x^9+3x^11-x^12))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230723

/-- `ogf((x+3x^2+7x^3+19x^4+16x^5+12x^6+x^7+2x^8-x^9)/(1-3x+7x^3-3x^4-6x^5+6x^7+3x^8-7x^9+3x^11-x^12))` -/
def P8132187016885984254.Spec : Prop :=
  ∀ n, P8132187016885984254.a n = A230723 (n + 1)

theorem P8132187016885984254.correct : P8132187016885984254.Spec := by
  intro n
  simp only [A230723, Nat.add_sub_cancel]

end A230723

/-! ## A230723.P35311906195489417

`A058389(n)-A101427(n)`
-/

namespace A230723.P35311906195489417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058389 n - A101427 n

end

end A230723.P35311906195489417

namespace A230723

/-- `A058389(n)-A101427(n)` -/
def P35311906195489417.Spec : Prop :=
  ∀ n, P35311906195489417.a n = A230723 (n + 1)

end A230723

/-! ## A230723.P15888947200141453537

`A001840(n)+A058389(n)-∑[A059329(n)]`
-/

namespace A230723.P15888947200141453537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059329 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n + (A058389 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230723.P15888947200141453537

namespace A230723

/-- `A001840(n)+A058389(n)-∑[A059329(n)]` -/
def P15888947200141453537.Spec : Prop :=
  ∀ n, P15888947200141453537.a n = A230723 (n + 1)

end A230723

/-! ## A230723.P15178448093289981332

`A058389(n)-(2*A257464(n)-A008796(n))`
-/

namespace A230723.P15178448093289981332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058389 n - (2 * A257464 n - A008796 n)

end

end A230723.P15178448093289981332

namespace A230723

/-- `A058389(n)-(2*A257464(n)-A008796(n))` -/
def P15178448093289981332.Spec : Prop :=
  ∀ n, P15178448093289981332.a n = A230723 (n + 1)

end A230723

/-! ## A230723.P16268915184985691853

`A058389(n)+A008683(A014442(n+1))*A101427(n)`
-/

namespace A230723.P16268915184985691853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058389 n + A008683 (A014442 (n + 1)).toNat * A101427 n

end

end A230723.P16268915184985691853

namespace A230723

/-- `A058389(n)+A008683(A014442(n+1))*A101427(n)` -/
def P16268915184985691853.Spec : Prop :=
  ∀ n, P16268915184985691853.a n = A230723 (n + 1)

end A230723

/-!
# A230724: Digital sum of tribonacci numbers with a(0)=a(1)=0, a(2)=1.

The programs for A230724, the canonical program `A230724.P11052356802034479438` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230724 has offset 0).

The definition of A230724 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230724.P11052356802034479438

`A007953(A000073(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230724

/-- `A007953(A000073(n))` -/
def P11052356802034479438.Spec : Prop :=
  ∀ n, P11052356802034479438.a n = A230724 n

theorem P11052356802034479438.correct : P11052356802034479438.Spec := by
  intro n
  simp only [A230724]

end A230724

/-! ## A230724.P9825278460924795870

`∑{digits}[2*a(n-1)-a(n-4), #]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A230724.P9825278460924795870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230724.P9825278460924795870

namespace A230724

/-- `∑{digits}[2*a(n-1)-a(n-4), #]` -/
def P9825278460924795870.Spec : Prop :=
  ∀ n, (P9825278460924795870.a n : ℤ) = A230724 n

end A230724

/-! ## A230724.P5187434378129058066

`∑{digits}[a(n-1)+a(n-2)+a(n-3), #]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A230724.P5187434378129058066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A230724.P5187434378129058066

namespace A230724

/-- `∑{digits}[a(n-1)+a(n-2)+a(n-3), #]` -/
def P5187434378129058066.Spec : Prop :=
  ∀ n, (P5187434378129058066.a n : ℤ) = A230724 n

end A230724

/-! ## A230724.P2301960573555226101

`∑{digits}[A000073(n), #]`
-/

namespace A230724.P2301960573555226101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230724.P2301960573555226101

namespace A230724

/-- `∑{digits}[A000073(n), #]` -/
def P2301960573555226101.Spec : Prop :=
  ∀ n, (P2301960573555226101.a n : ℤ) = A230724 n

end A230724

/-! ## A230724.P4812085144932962945

`∑{digits}[Δ[A192804(n)], #]`
-/

namespace A230724.P4812085144932962945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230724.P4812085144932962945

namespace A230724

/-- `∑{digits}[Δ[A192804(n)], #]` -/
def P4812085144932962945.Spec : Prop :=
  ∀ n, (P4812085144932962945.a n : ℤ) = A230724 n

end A230724

/-! ## A230724.P16082701956436484322

`∑{digits}[A000213(n)-A081172(n), #]`
-/

namespace A230724.P16082701956436484322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A081172 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230724.P16082701956436484322

namespace A230724

/-- `∑{digits}[A000213(n)-A081172(n), #]` -/
def P16082701956436484322.Spec : Prop :=
  ∀ n, (P16082701956436484322.a n : ℤ) = A230724 n

end A230724

/-! ## A230724.P16890896161661591646

`∑{digits}[A007486(n+1)-A214825(n), #]`
-/

namespace A230724.P16890896161661591646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007486 (n + 1) - A214825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230724.P16890896161661591646

namespace A230724

/-- `∑{digits}[A007486(n+1)-A214825(n), #]` -/
def P16890896161661591646.Spec : Prop :=
  ∀ n, (P16890896161661591646.a n : ℤ) = A230724 n

end A230724

/-! ## A230724.P7555258789074402468

`∑{digits}[sqrt(A085697(n)), #]`
-/

namespace A230724.P7555258789074402468
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085697 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A230724.P7555258789074402468

namespace A230724

/-- `∑{digits}[sqrt(A085697(n)), #]` -/
def P7555258789074402468.Spec : Prop :=
  ∀ n, (P7555258789074402468.a n : ℤ) = A230724 n

end A230724

/-!
# A230725: Digital sum of tribonacci numbers with a(0)=a(1)=a(2)=1.

The programs for A230725, the canonical program `A230725.P18115786073558631145` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230725 has offset 0).

The definition of A230725 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230725.P18115786073558631145

`A007953(A000213(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230725

/-- `A007953(A000213(n))` -/
def P18115786073558631145.Spec : Prop :=
  ∀ n, P18115786073558631145.a n = A230725 n

theorem P18115786073558631145.correct : P18115786073558631145.Spec := by
  intro n
  simp only [A230725]

end A230725

/-! ## A230725.P423727036924589102

`∑{digits}[2*a(n-1)-a(n-4), #]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A230725.P423727036924589102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230725.P423727036924589102

namespace A230725

/-- `∑{digits}[2*a(n-1)-a(n-4), #]` -/
def P423727036924589102.Spec : Prop :=
  ∀ n, (P423727036924589102.a n : ℤ) = A230725 n

end A230725

/-! ## A230725.P17099539908840116148

`∑{digits}[a(n-1)+a(n-2)+a(n-3), #]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A230725.P17099539908840116148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A230725.P17099539908840116148

namespace A230725

/-- `∑{digits}[a(n-1)+a(n-2)+a(n-3), #]` -/
def P17099539908840116148.Spec : Prop :=
  ∀ n, (P17099539908840116148.a n : ℤ) = A230725 n

end A230725

/-! ## A230725.P6216764875197377620

`∑{digits}[A000213(n), #]`
-/

namespace A230725.P6216764875197377620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230725.P6216764875197377620

namespace A230725

/-- `∑{digits}[A000213(n), #]` -/
def P6216764875197377620.Spec : Prop :=
  ∀ n, (P6216764875197377620.a n : ℤ) = A230725 n

end A230725

/-! ## A230725.P14614739268397693765

`∑{digits}[A081172(n)+A000073(n), #]`
-/

namespace A230725.P14614739268397693765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A000073 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230725.P14614739268397693765

namespace A230725

/-- `∑{digits}[A081172(n)+A000073(n), #]` -/
def P14614739268397693765.Spec : Prop :=
  ∀ n, (P14614739268397693765.a n : ℤ) = A230725 n

end A230725

/-! ## A230725.P16079045468092871505

`∑{digits}[Δ[A001590(n+2)], #]`
-/

namespace A230725.P16079045468092871505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230725.P16079045468092871505

namespace A230725

/-- `∑{digits}[Δ[A001590(n+2)], #]` -/
def P16079045468092871505.Spec : Prop :=
  ∀ n, (P16079045468092871505.a n : ℤ) = A230725 n

end A230725

/-! ## A230725.P14139021229217494742

`∑{digits}[A268410(n)%A145027(n+1), #]`
-/

namespace A230725.P14139021229217494742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268410 n) (A145027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A230725.P14139021229217494742

namespace A230725

/-- `∑{digits}[A268410(n)%A145027(n+1), #]` -/
def P14139021229217494742.Spec : Prop :=
  ∀ n, (P14139021229217494742.a n : ℤ) = A230725 n

end A230725

/-! ## A230725.P1371811864262877110

`∑{digits}[sqrt(A141583(n)), #]`
-/

namespace A230725.P1371811864262877110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A141583 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A230725.P1371811864262877110

namespace A230725

/-- `∑{digits}[sqrt(A141583(n)), #]` -/
def P1371811864262877110.Spec : Prop :=
  ∀ n, (P1371811864262877110.a n : ℤ) = A230725 n

end A230725

/-!
# A230726: Number of n X 4 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230726, there is no canonical definition to state claims against.
-/

/-! ## A230726.P2103370795570013218

`ogf((2x-2x^2-60x^3+62x^4-2x^5)/(1-16x+12x^2-87x^3+918x^4-61x^5+x^6))`
-/

namespace A230726.P2103370795570013218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, -60, 62, -2] [1, -16, 12, -87, 918, -61, 1] n

end

end A230726.P2103370795570013218

/-! ## A230726.P10988968811763252123

`A230730(A141214(n+1))`
-/

namespace A230726.P10988968811763252123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A141214 (n + 1)).toNat

end

end A230726.P10988968811763252123

/-! ## A230726.P16834895653292264623

`A230730(A155212(n)+5)`
-/

namespace A230726.P16834895653292264623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A155212 n + 5).toNat

end

end A230726.P16834895653292264623

/-! ## A230726.P16022016794931077761

`A230730(A056000(n)+7)`
-/

namespace A230726.P16022016794931077761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A056000 n + 7).toNat

end

end A230726.P16022016794931077761

/-! ## A230726.P3518148710641674666

`A230730(eq[2, A054123(n)])`
-/

namespace A230726.P3518148710641674666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230726.P3518148710641674666

/-!
# A230727: Number of n X 5 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230727, there is no canonical definition to state claims against.
-/

/-! ## A230727.P14806132680395001938

`A230730(Δ[A264443(n)])`
-/

namespace A230727.P14806132680395001938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (f1 (n + 1) - f1 n).toNat

end

end A230727.P14806132680395001938

/-! ## A230727.P5890151958180001336

`A230730(A046691(n+3))`
-/

namespace A230727.P5890151958180001336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A046691 (n + 3)).toNat

end

end A230727.P5890151958180001336

/-! ## A230727.P3259220649943702784

`A230730(eq[3, A152157(n)])`
-/

namespace A230727.P3259220649943702784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230727.P3259220649943702784

/-! ## A230727.P11818879926525839016

`A230730(eq[4, A054123(n)])`
-/

namespace A230727.P11818879926525839016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230727.P11818879926525839016

/-! ## A230727.P4223015704934444911

`A230730(eq[4, A193592(n)])`
-/

namespace A230727.P4223015704934444911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230727.P4223015704934444911

/-!
# A230728: Number of nX6 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230728, there is no canonical definition to state claims against.
-/

/-! ## A230728.P11805631825784812844

`A230730(A052905(n+3))`
-/

namespace A230728.P11805631825784812844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A052905 (n + 3)).toNat

end

end A230728.P11805631825784812844

/-! ## A230728.P10533847669117090598

`A230730(eq[5, A152157(n)])`
-/

namespace A230728.P10533847669117090598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230728.P10533847669117090598

/-! ## A230728.P16181758409358571229

`A230730(eq[5, A193592(n)])`
-/

namespace A230728.P16181758409358571229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230728.P16181758409358571229

/-! ## A230728.P15304142936265368999

`A230730(A000096(n+5)-4)`
-/

namespace A230728.P15304142936265368999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A000096 (n + 5) - 4).toNat

end

end A230728.P15304142936265368999

/-! ## A230728.P15938454375248419588

`A230730(eq[6, A200370(n+1)])`
-/

namespace A230728.P15938454375248419588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230728.P15938454375248419588

/-!
# A230729: Number of nX7 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230729, there is no canonical definition to state claims against.
-/

/-! ## A230729.P12567997984104536868

`A230730(eq[6, A193592(n)])`
-/

namespace A230729.P12567997984104536868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230729.P12567997984104536868

/-! ## A230729.P5603645154475398788

`A230730(eq[7, A152157(n)])`
-/

namespace A230729.P5603645154475398788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230729.P5603645154475398788

/-! ## A230729.P6744600784731753336

`A230730(eq[6, A243060(n+1)])`
-/

namespace A230729.P6744600784731753336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230729.P6744600784731753336

/-! ## A230729.P10699038245990809341

`A230730(eq[7, A200370(n+1)])`
-/

namespace A230729.P10699038245990809341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230729.P10699038245990809341

/-! ## A230729.P8149102597318875520

`A230730(eq[10, A185782(n+1)])`
-/

namespace A230729.P8149102597318875520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230729.P8149102597318875520

/-!
# A230731: Number of 3Xn 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230731, there is no canonical definition to state claims against.
-/

/-! ## A230731.P11923650460134845135

`A230730(∑[n+2]+4)`
-/

namespace A230731.P11923650460134845135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230731.P11923650460134845135

/-! ## A230731.P9978854064758863830

`lcm(2, A230730(A167614(n+1)))`
-/

namespace A230731.P9978854064758863830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230730 (A167614 (n + 1)).toNat)

end

end A230731.P9978854064758863830

/-! ## A230731.P14573329512006108279

`A230730(A167614(n+1))+A055967(n)`
-/

namespace A230731.P14573329512006108279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A167614 (n + 1)).toNat + A055967 n

end

end A230731.P14573329512006108279

/-! ## A230731.P5979611797103345761

`A054977(n)*A230730(A167614(n+1))`
-/

namespace A230731.P5979611797103345761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A230730 (A167614 (n + 1)).toNat

end

end A230731.P5979611797103345761

/-! ## A230731.P12321389570907815324

`A057427(n)*A230730(A167614(n+1))`
-/

namespace A230731.P12321389570907815324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A230730 (A167614 (n + 1)).toNat

end

end A230731.P12321389570907815324

/-!
# A230732: Number of 4 X n 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230732, there is no canonical definition to state claims against.
-/

/-! ## A230732.P16935468380811909269

`A230730(A141214(n)+7)`
-/

namespace A230732.P16935468380811909269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A141214 n + 7).toNat

end

end A230732.P16935468380811909269

/-! ## A230732.P18279274895891885782

`A230730(A052905(n)+9)`
-/

namespace A230732.P18279274895891885782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A052905 n + 9).toNat

end

end A230732.P18279274895891885782

/-! ## A230732.P9336029018116912409

`A230730(A055999(n)+10)`
-/

namespace A230732.P9336029018116912409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A055999 n + 10).toNat

end

end A230732.P9336029018116912409

/-! ## A230732.P8048120846276255583

`A230730(A167614(n+2)+1)`
-/

namespace A230732.P8048120846276255583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A167614 (n + 2) + 1).toNat

end

end A230732.P8048120846276255583

/-! ## A230732.P13680019961845983854

`A230730(A112355(n+1)+4)`
-/

namespace A230732.P13680019961845983854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A112355 (n + 1) + 4).toNat

end

end A230732.P13680019961845983854

/-!
# A230733: Number of 5Xn 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230733, there is no canonical definition to state claims against.
-/

/-! ## A230733.P449182019717776180

`A230730(A167499(n+3))`
-/

namespace A230733.P449182019717776180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A167499 (n + 3)).toNat

end

end A230733.P449182019717776180

/-! ## A230733.P354368440148199992

`A230730(A155212(n)+13)`
-/

namespace A230733.P354368440148199992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A155212 n + 13).toNat

end

end A230733.P354368440148199992

/-! ## A230733.P10637126213323038572

`A230730(A056000(n)+15)`
-/

namespace A230733.P10637126213323038572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A056000 n + 15).toNat

end

end A230733.P10637126213323038572

/-! ## A230733.P11759760903980637681

`A230730(eq[6, A131818(n+1)])`
-/

namespace A230733.P11759760903980637681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230733.P11759760903980637681

/-! ## A230733.P14828834866062216575

`A230730(eq[6, A135223(n+1)])`
-/

namespace A230733.P14828834866062216575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230733.P14828834866062216575

/-!
# A230734: Number of 6Xn 0..5 arrays x(i,j) with each element horizontally or antidiagonally next to at least one element with value (x(i,j)+1) mod 6, and upper left element zero.

The programs for A230734, there is no canonical definition to state claims against.
-/

/-! ## A230734.P15641669141180631839

`A230730(A166136(n+4))`
-/

namespace A230734.P15641669141180631839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A166136 (n + 4)).toNat

end

end A230734.P15641669141180631839

/-! ## A230734.P7353269063541217301

`A230730(A056115(n)+21)`
-/

namespace A230734.P7353269063541217301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A056115 n + 21).toNat

end

end A230734.P7353269063541217301

/-! ## A230734.P9117290468720318158

`A230730(eq[6, A256910(n)])`
-/

namespace A230734.P9117290468720318158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230734.P9117290468720318158

/-! ## A230734.P2088281077208230452

`A230730(A167499(n+4)+1)`
-/

namespace A230734.P2088281077208230452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A167499 (n + 4) + 1).toNat

end

end A230734.P2088281077208230452

/-! ## A230734.P10367068033459340194

`A230730(A000124(n+5)+5)`
-/

namespace A230734.P10367068033459340194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230730 (A000124 (n + 5) + 5).toNat

end

end A230734.P10367068033459340194

/-!
# A230735: Number of (n+3)X(n+3) 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230735, there is no canonical definition to state claims against.
-/

/-! ## A230735.P7894453093442847495

`A230739(∑[4*n]+1)`
-/

namespace A230735.P7894453093442847495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230735.P7894453093442847495

/-! ## A230735.P1708807133298051550

`lcm(2, A230739(A001844(n)))`
-/

namespace A230735.P1708807133298051550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230739 (A001844 n).toNat)

end

end A230735.P1708807133298051550

/-! ## A230735.P14348059057391014509

`record[gcd(A049581(n), A230739(n+1))]`
-/

namespace A230735.P14348059057391014509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A230739 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230735.P14348059057391014509

/-! ## A230735.P15749778940098570276

`A036086(n)%2*A230739(A001844(n))`
-/

namespace A230735.P15749778940098570276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036086 n) 2 * A230739 (A001844 n).toNat

end

end A230735.P15749778940098570276

/-! ## A230735.P17301818314944225840

`A014963(A143572(n))*A230739(A001844(n))`
-/

namespace A230735.P17301818314944225840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A143572 n).toNat * A230739 (A001844 n).toNat

end

end A230735.P17301818314944225840

/-!
# A230736: Number of (n+3)X(2+3) 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230736, there is no canonical definition to state claims against.
-/

/-! ## A230736.P13217899926269181035

`A230751(n+1)/(3*A230702(n+1))`
-/

namespace A230736.P13217899926269181035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230751 (n + 1) : ℚ) / (3 * A230702 (n + 1) : ℚ)

end

end A230736.P13217899926269181035

/-! ## A230736.P5932681295568564432

`A230739(∑[n+1]+2)`
-/

namespace A230736.P5932681295568564432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230736.P5932681295568564432

/-! ## A230736.P11544498880693845353

`record[gcd(A188333(n+1), A230739(n+2))]`
-/

namespace A230736.P11544498880693845353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188333 (n + 1)) (A230739 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230736.P11544498880693845353

/-! ## A230736.P17889460433779856612

`record[A230739(abs(A201163(n)))]`
-/

namespace A230736.P17889460433779856612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230736.P17889460433779856612

/-! ## A230736.P17686292393533160944

`record[A230739(Δ[A003453(n+5)])]`
-/

namespace A230736.P17686292393533160944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230736.P17686292393533160944

/-!
# A230737: Number of (n+3)X(4+3) 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230737, there is no canonical definition to state claims against.
-/

/-! ## A230737.P9468652125157581717

`A230739(A141214(n)+7)`
-/

namespace A230737.P9468652125157581717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A141214 n + 7).toNat

end

end A230737.P9468652125157581717

/-! ## A230737.P7028386248817922543

`A230739(A052905(n)+9)`
-/

namespace A230737.P7028386248817922543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A052905 n + 9).toNat

end

end A230737.P7028386248817922543

/-! ## A230737.P5573313030060388102

`A230739(A167614(n+2)+1)`
-/

namespace A230737.P5573313030060388102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A167614 (n + 2) + 1).toNat

end

end A230737.P5573313030060388102

/-! ## A230737.P11280115155815050350

`A230739(A000217(n+3)+4)`
-/

namespace A230737.P11280115155815050350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A000217 (n + 3) + 4).toNat

end

end A230737.P11280115155815050350

/-! ## A230737.P1348035237999986583

`A230739(eq[5, A131818(n+1)])`
-/

namespace A230737.P1348035237999986583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230737.P1348035237999986583

/-!
# A230738: Number of (n+3)X(6+3) 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230738, there is no canonical definition to state claims against.
-/

/-! ## A230738.P11746478996552660995

`A230739(A167499(n+4)+1)`
-/

namespace A230738.P11746478996552660995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A167499 (n + 4) + 1).toNat

end

end A230738.P11746478996552660995

/-! ## A230738.P15799418026698364970

`A230739(A167487(n+4)-1)`
-/

namespace A230738.P15799418026698364970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A167487 (n + 4) - 1).toNat

end

end A230738.P15799418026698364970

/-! ## A230738.P11295701073819684398

`A230739(A000124(n+5)+5)`
-/

namespace A230738.P11295701073819684398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A000124 (n + 5) + 5).toNat

end

end A230738.P11295701073819684398

/-! ## A230738.P17405709553843478130

`A230739(eq[7, A131818(n+1)])`
-/

namespace A230738.P17405709553843478130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230738.P17405709553843478130

/-! ## A230738.P8136143321727531381

`A230739(A374007(n+1))`
-/

namespace A230738.P8136143321727531381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230739 (A374007 (n + 1)).toNat

end

end A230738.P8136143321727531381

/-!
# A230739: T(n,k)=Number of (n+3)X(k+3) 0..2 black square subarrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230739, there is no canonical definition to state claims against.
-/

/-! ## A230739.P10354828067882814891

`A230757(n+1)/(3*A230708(n+1))`
-/

namespace A230739.P10354828067882814891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230757 (n + 1) : ℚ) / (3 * A230708 (n + 1) : ℚ)

end

end A230739.P10354828067882814891

/-! ## A230739.P7208191995765170935

`A230757(n+1)/A008486(A230708(n+1))`
-/

namespace A230739.P7208191995765170935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230757 (n + 1) : ℚ) / (A008486 (A230708 (n + 1)).toNat : ℚ)

end

end A230739.P7208191995765170935

/-! ## A230739.P12247671869118369594

`A002264(A230757(n+1)/A230708(n+1))`
-/

namespace A230739.P12247671869118369594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A230757 (n + 1) : ℚ) / (A230708 (n + 1) : ℚ))).toNat

end

end A230739.P12247671869118369594

/-!
# A230740: O.g.f.: Sum_{n>=0} x^n * Product_{k=1..n} (k*(k+1)/2 + x) / (1 + k*(k+1)/2*x).

The programs for A230740, there is no canonical definition to state claims against.
-/

/-! ## A230740.P17547578293320926067

`A340764(A005012(n))+1`
-/

namespace A230740.P17547578293320926067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A005012 n).toNat + 1

end

end A230740.P17547578293320926067

/-! ## A230740.P2690567810234238906

`A375433(A062024(n)+A000079(n))`
-/

namespace A230740.P2690567810234238906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375433 (A062024 n + A000079 n).toNat

end

end A230740.P2690567810234238906

/-!
# A230741: O.g.f.: Sum_{n>=0} x^n * (n + x)^n / (1 + n*x)^n.

The programs for A230741, there is no canonical definition to state claims against.
-/

/-! ## A230741.P11489188720266151100

`A123108(A177249(n+1))+A000142(n)`
-/

namespace A230741.P11489188720266151100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A177249 (n + 1)).toNat + A000142 n

end

end A230741.P11489188720266151100

/-! ## A230741.P3008945621472107620

`A063951(A001333(n))-eq[0, val(n+1, 2)%2]%2`
-/

namespace A230741.P3008945621472107620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063951 (A001333 n).toNat - ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n % 2 : ℕ) : ℤ)

end

end A230741.P3008945621472107620

/-!
# A230745: Odious Loeschian numbers.

The programs for A230745, the canonical program `A230745.P17335340068142128914` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230745 has offset 1).

The definition of A230745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3697 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230745.P13716272747313954324

`record[A268669(A003136(n+2))]`
-/

namespace A230745.P13716272747313954324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A003136 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230745.P13716272747313954324

namespace A230745

/-- `record[A268669(A003136(n+2))]` -/
def P13716272747313954324.Spec : Prop :=
  ∀ n, P13716272747313954324.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P17335340068142128914

`filter[A091855(n+1), A353816(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230745

/-- `filter[A091855(n+1), A353816(#)]` -/
def P17335340068142128914.Spec : Prop :=
  ∀ n, P17335340068142128914.a n = A230745 (n + 1)

theorem P17335340068142128914.correct : P17335340068142128914.Spec := by
  intro n
  simp only [A230745, Nat.add_sub_cancel]

end A230745

/-! ## A230745.P12951281684143539696

`∩[A003136(n+1), A091855(n+1)]`
-/

namespace A230745.P12951281684143539696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230745.P12951281684143539696

namespace A230745

/-- `∩[A003136(n+1), A091855(n+1)]` -/
def P12951281684143539696.Spec : Prop :=
  ∀ n, (P12951281684143539696.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P13680874076293825958

`∩[A035246(n+1), A091855(n+1)]`
-/

namespace A230745.P13680874076293825958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230745.P13680874076293825958

namespace A230745

/-- `∩[A035246(n+1), A091855(n+1)]` -/
def P13680874076293825958.Spec : Prop :=
  ∀ n, (P13680874076293825958.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P4628732052062315869

`filter[A000069(n+1), A353816(#)]`
-/

namespace A230745.P4628732052062315869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P4628732052062315869

namespace A230745

/-- `filter[A000069(n+1), A353816(#)]` -/
def P4628732052062315869.Spec : Prop :=
  ∀ n, P4628732052062315869.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P13677439937734401698

`filter[A026147(n+1), A353816(#)]`
-/

namespace A230745.P13677439937734401698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P13677439937734401698

namespace A230745

/-- `filter[A026147(n+1), A353816(#)]` -/
def P13677439937734401698.Spec : Prop :=
  ∀ n, P13677439937734401698.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P4769257167616274220

`∩[A000069(n+1), A003136(n+1)]`
-/

namespace A230745.P4769257167616274220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230745.P4769257167616274220

namespace A230745

/-- `∩[A000069(n+1), A003136(n+1)]` -/
def P4769257167616274220.Spec : Prop :=
  ∀ n, (P4769257167616274220.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P8806481456005284880

`∩[A003136(n+1), A026147(n+1)]`
-/

namespace A230745.P8806481456005284880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230745.P8806481456005284880

namespace A230745

/-- `∩[A003136(n+1), A026147(n+1)]` -/
def P8806481456005284880.Spec : Prop :=
  ∀ n, (P8806481456005284880.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P7478758406766635642

`eq[A277822(n), A353816(n)]`
-/

namespace A230745.P7478758406766635642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230745.P7478758406766635642

namespace A230745

/-- `eq[A277822(n), A353816(n)]` -/
def P7478758406766635642.Spec : Prop :=
  ∀ n, (P7478758406766635642.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P10147384849185015945

`filter[A003136(n+1), A010060(#)]`
-/

namespace A230745.P10147384849185015945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A230745.P10147384849185015945

namespace A230745

/-- `filter[A003136(n+1), A010060(#)]` -/
def P10147384849185015945.Spec : Prop :=
  ∀ n, P10147384849185015945.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P6831093725921571852

`filter[A003159(2*n+1), A353816(#)]`
-/

namespace A230745.P6831093725921571852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P6831093725921571852

namespace A230745

/-- `filter[A003159(2*n+1), A353816(#)]` -/
def P6831093725921571852.Spec : Prop :=
  ∀ n, P6831093725921571852.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P11993257776115583582

`eq[A010060(n), A051699(A004016(n))]`
-/

namespace A230745.P11993257776115583582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A004016 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230745.P11993257776115583582

namespace A230745

/-- `eq[A010060(n), A051699(A004016(n))]` -/
def P11993257776115583582.Spec : Prop :=
  ∀ n, (P11993257776115583582.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P429451184116124817

`eq[A019428(A004016(n)), A277822(n)]`
-/

namespace A230745.P429451184116124817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A004016 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230745.P429451184116124817

namespace A230745

/-- `eq[A019428(A004016(n)), A277822(n)]` -/
def P429451184116124817.Spec : Prop :=
  ∀ n, (P429451184116124817.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P14300612901121594775

`filter[A143579(2*n), A353816(#)]`
-/

namespace A230745.P14300612901121594775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P14300612901121594775

namespace A230745

/-- `filter[A143579(2*n), A353816(#)]` -/
def P14300612901121594775.Spec : Prop :=
  ∀ n, P14300612901121594775.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P1944283570435609986

`filter[A160017(2*n+1), A353816(#)]`
-/

namespace A230745.P1944283570435609986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P1944283570435609986

namespace A230745

/-- `filter[A160017(2*n+1), A353816(#)]` -/
def P1944283570435609986.Spec : Prop :=
  ∀ n, P1944283570435609986.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P2243847201031387141

`eq[A178334(A113062(n)), A277822(n)]`
-/

namespace A230745.P2243847201031387141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A113062 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230745.P2243847201031387141

namespace A230745

/-- `eq[A178334(A113062(n)), A277822(n)]` -/
def P2243847201031387141.Spec : Prop :=
  ∀ n, (P2243847201031387141.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P2295580363657714149

`filter[A159481(3*n), A353816(#)]`
-/

namespace A230745.P2295580363657714149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230745.P2295580363657714149

namespace A230745

/-- `filter[A159481(3*n), A353816(#)]` -/
def P2295580363657714149.Spec : Prop :=
  ∀ n, P2295580363657714149.a n = A230745 (n + 1)

end A230745

/-! ## A230745.P17145284739033714089

`eq[A127802(A244339(2*n)), A268865(2*n)]`
-/

namespace A230745.P17145284739033714089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (A244339 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230745.P17145284739033714089

namespace A230745

/-- `eq[A127802(A244339(2*n)), A268865(2*n)]` -/
def P17145284739033714089.Spec : Prop :=
  ∀ n, (P17145284739033714089.a n : ℤ) = A230745 (n + 1)

end A230745

/-! ## A230745.P6767588353026035154

`eq[A244339(A244339(2*n)²), A268865(2*n)]`
-/

namespace A230745.P6767588353026035154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244339 (A244339 (2 * n) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268865 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230745.P6767588353026035154

namespace A230745

/-- `eq[A244339(A244339(2*n)²), A268865(2*n)]` -/
def P6767588353026035154.Spec : Prop :=
  ∀ n, (P6767588353026035154.a n : ℤ) = A230745 (n + 1)

end A230745

/-!
# A230746: Carmichael numbers of the form (30*k + 1)*(120*k + 1)*(150*k + 1), where 30*k + 1, 120*k + 1 and 150*k + 1 are all primes.

The programs for A230746, there is no canonical definition to state claims against.
-/

/-! ## A230746.P8421072428978343079

`A230722(eq[A002487(n), A286220(n)])`
-/

namespace A230746.P8421072428978343079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230722 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A230746.P8421072428978343079

/-!
# A230747: Number of ways to write n = x + y + 2*z with 0 < x <= y and z > 0 such that x^2 + y^2 + 2*z^2 is a square.

The programs for A230747, there is no canonical definition to state claims against.
-/

/-! ## A230747.P218829680553223285

`A331302(A208976(n)+4+n)`
-/

namespace A230747.P218829680553223285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331302 (A208976 n + 4 + (n : ℤ)).toNat

end

end A230747.P218829680553223285

/-! ## A230747.P13659823247663250006

`A086971(or(A052823(n), A129338(n+1)))`
-/

namespace A230747.P13659823247663250006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (Int.lor (A052823 n) (A129338 (n + 1))).toNat

end

end A230747.P13659823247663250006

/-! ## A230747.P6218421510233264708

`A007814(A344344(n+1)+A196001(n+1))`
-/

namespace A230747.P6218421510233264708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A344344 (n + 1) + A196001 (n + 1)).toNat

end

end A230747.P6218421510233264708

/-! ## A230747.P11521565759252256753

`A018252(A106444(4*n+2))%A106491(4*n+3)`
-/

namespace A230747.P11521565759252256753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (A106444 (4 * n + 2)).toNat) (A106491 (4 * n + 3))

end

end A230747.P11521565759252256753

/-! ## A230747.P13114420440066978935

`ceil(A210703(5*n+2)/A337674(4*n+1))`
-/

namespace A230747.P13114420440066978935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A210703 (5 * n + 2) : ℚ) / (A337674 (4 * n + 1) : ℚ)⌉

end

end A230747.P13114420440066978935

/-!
# A230749: Number of (n+3)X(n+3) 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230749, there is no canonical definition to state claims against.
-/

/-! ## A230749.P7976066935076694326

`A230757((n+1)²+n²)`
-/

namespace A230749.P7976066935076694326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 ((n + 1) ^ 2 + n ^ 2)

end

end A230749.P7976066935076694326

/-! ## A230749.P130892425099696452

`lcm(2, A230757(A001844(n)))`
-/

namespace A230749.P130892425099696452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230757 (A001844 n).toNat)

end

end A230749.P130892425099696452

/-! ## A230749.P17695669619677831247

`record[gcd(A214292(n), A230757(n+1))]`
-/

namespace A230749.P17695669619677831247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214292 n) (A230757 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230749.P17695669619677831247

/-!
# A230750: Number of (n+3)X(1+3) 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230750, there is no canonical definition to state claims against.
-/

/-! ## A230750.P10008223771979718178

`3*A230701(n+1)²`
-/

namespace A230750.P10008223771979718178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230701 (n + 1) ^ 2

end

end A230750.P10008223771979718178

/-! ## A230750.P11941759715803172987

`3*A230708(∑[n]+1)²`
-/

namespace A230750.P11941759715803172987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230708 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A230750.P11941759715803172987

/-! ## A230750.P15416137055068596546

`3*A230739(∑[n]+1)²`
-/

namespace A230750.P15416137055068596546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230739 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A230750.P15416137055068596546

/-! ## A230750.P14166523049671801240

`A230757(∑[n]+1)`
-/

namespace A230750.P14166523049671801240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230750.P14166523049671801240

/-! ## A230750.P15455807847831122400

`record[A176270(n)*A230757(n+1)]`
-/

namespace A230750.P15455807847831122400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A230757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230750.P15455807847831122400

/-!
# A230751: Number of (n+3)X(2+3) 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230751, there is no canonical definition to state claims against.
-/

/-! ## A230751.P3936111332550040001

`A230757(∑[n+1]+2)`
-/

namespace A230751.P3936111332550040001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230751.P3936111332550040001

/-! ## A230751.P3868961056318505411

`record[A230757(n+3)^A055137(n)]`
-/

namespace A230751.P3868961056318505411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230757 (n + 3) : ℚ) ^ (A055137 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230751.P3868961056318505411

/-! ## A230751.P3248983779807231301

`record[gcd(A188333(n+1), A230757(n+2))]`
-/

namespace A230751.P3248983779807231301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188333 (n + 1)) (A230757 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230751.P3248983779807231301

/-! ## A230751.P145149597533921736

`record[A230757(abs(A201163(n)))]`
-/

namespace A230751.P145149597533921736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230751.P145149597533921736

/-!
# A230752: Number of (n+3) X (3+3) 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230752, there is no canonical definition to state claims against.
-/

/-! ## A230752.P11132290440767290527

`3*A230703(n+1)²`
-/

namespace A230752.P11132290440767290527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230703 (n + 1) ^ 2

end

end A230752.P11132290440767290527

/-! ## A230752.P12896494847583040533

`A230757(∑[n+2]+4)`
-/

namespace A230752.P12896494847583040533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230752.P12896494847583040533

/-! ## A230752.P1554049563826183024

`lcm(2, A230757(A167614(n+1)))`
-/

namespace A230752.P1554049563826183024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230757 (A167614 (n + 1)).toNat)

end

end A230752.P1554049563826183024

/-! ## A230752.P2848968468553210795

`C(A230757(A167614(n+1)), A014826(n))`
-/

namespace A230752.P2848968468553210795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A230757 (A167614 (n + 1)).toNat).toNat (A014826 n).toNat

end

end A230752.P2848968468553210795

/-! ## A230752.P15559971300597481852

`A230757(A167614(n+1))+A034462(n+1)`
-/

namespace A230752.P15559971300597481852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A167614 (n + 1)).toNat + A034462 (n + 1)

end

end A230752.P15559971300597481852

/-!
# A230753: Number of (n+3)X(4+3) 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230753, there is no canonical definition to state claims against.
-/

/-! ## A230753.P9041783576084319661

`A230757(A141214(n)+7)`
-/

namespace A230753.P9041783576084319661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A141214 n + 7).toNat

end

end A230753.P9041783576084319661

/-! ## A230753.P5426143614154194097

`A230757(A052905(n)+9)`
-/

namespace A230753.P5426143614154194097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A052905 n + 9).toNat

end

end A230753.P5426143614154194097

/-! ## A230753.P17760862052167386995

`A230757(A167614(n+2)+1)`
-/

namespace A230753.P17760862052167386995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A167614 (n + 2) + 1).toNat

end

end A230753.P17760862052167386995

/-! ## A230753.P1311523445892946894

`A230757(eq[5, A131818(n+1)])`
-/

namespace A230753.P1311523445892946894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230753.P1311523445892946894

/-! ## A230753.P18066781687837742318

`A230757(A141214(n+1))`
-/

namespace A230753.P18066781687837742318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A141214 (n + 1)).toNat

end

end A230753.P18066781687837742318

/-!
# A230754: Number of (n+3)X(5+3) 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230754, there is no canonical definition to state claims against.
-/

/-! ## A230754.P7302707484472723089

`3*A230705(n+1)²`
-/

namespace A230754.P7302707484472723089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230705 (n + 1) ^ 2

end

end A230754.P7302707484472723089

/-! ## A230754.P10308610110631058145

`A230757(A374005(n+1))`
-/

namespace A230754.P10308610110631058145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A374005 (n + 1)).toNat

end

end A230754.P10308610110631058145

/-! ## A230754.P13825486877176885235

`A230757(A167499(n+3))`
-/

namespace A230754.P13825486877176885235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A167499 (n + 3)).toNat

end

end A230754.P13825486877176885235

/-! ## A230754.P6920751581893033723

`A230757(A155212(n)+13)`
-/

namespace A230754.P6920751581893033723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A155212 n + 13).toNat

end

end A230754.P6920751581893033723

/-! ## A230754.P12319371553964380132

`A230757(eq[6, A131818(n+1)])`
-/

namespace A230754.P12319371553964380132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230754.P12319371553964380132

/-!
# A230755: 

The programs for A230755, there is no canonical definition to state claims against.
-/

/-! ## A230755.P2169717881217887269

`A230757(eq[7, A131818(n+1)])`
-/

namespace A230755.P2169717881217887269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230755.P2169717881217887269

/-! ## A230755.P3596602862578532708

`A230757(eq[3, A219347(n)])`
-/

namespace A230755.P3596602862578532708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230755.P3596602862578532708

/-! ## A230755.P8545335480583308059

`A230757(A000096(n+5)-4)`
-/

namespace A230755.P8545335480583308059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (A000096 (n + 5) - 4).toNat

end

end A230755.P8545335480583308059

/-!
# A230756: 

The programs for A230756, there is no canonical definition to state claims against.
-/

/-! ## A230756.P10380432618865709271

`3*A230707(n+1)²`
-/

namespace A230756.P10380432618865709271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230707 (n + 1) ^ 2

end

end A230756.P10380432618865709271

/-! ## A230756.P17778678379911850545

`A230757(eq[8, A131818(n+1)])`
-/

namespace A230756.P17778678379911850545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230756.P17778678379911850545

/-! ## A230756.P1262976649895380988

`A230757(eq[4, A219347(n)])`
-/

namespace A230756.P1262976649895380988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230757 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230756.P1262976649895380988

/-!
# A230757: T(n,k)=Number of (n+3)X(k+3) 0..2 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 3, and upper left element zero.

The programs for A230757, there is no canonical definition to state claims against.
-/

/-! ## A230757.P11229081646055390484

`3*A230708(n+1)*A230739(n+1)`
-/

namespace A230757.P11229081646055390484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A230708 (n + 1) * A230739 (n + 1))

end

end A230757.P11229081646055390484

/-! ## A230757.P15223575391168914548

`A008486(A230708(n+1))*A230739(n+1)`
-/

namespace A230757.P15223575391168914548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A230708 (n + 1)).toNat * A230739 (n + 1)

end

end A230757.P15223575391168914548

/-!
# A230762: List of commonest number of decompositions of 2k into an unordered sum of two odd primes in range 3 <= k <= m, integer m >= 3, where m is explained below.

The programs for A230762, there is no canonical definition to state claims against.
-/

/-! ## A230762.P1866399984834206460

`A061357(A230822(n+1))+A010051(A230822(n+1))`
-/

namespace A230762.P1866399984834206460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A230822 (n + 1)).toNat + A010051 (A230822 (n + 1)).toNat

end

end A230762.P1866399984834206460

/-! ## A230762.P999082335891134664

`A002375(A230822(n+1))`
-/

namespace A230762.P999082335891134664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A230822 (n + 1)).toNat

end

end A230762.P999082335891134664

/-! ## A230762.P4664277261817814895

`A045917(A230822(n+1)+char[1])`
-/

namespace A230762.P4664277261817814895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A230822 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A230762.P4664277261817814895

/-! ## A230762.P7357796133273941103

`A045917(A230822(2*n+1-n))`
-/

namespace A230762.P7357796133273941103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A230822 (2 * n + 1 - n)).toNat

end

end A230762.P7357796133273941103

/-! ## A230762.P3062027044543157968

`A045917(A054977(n)*A230822(n+1))`
-/

namespace A230762.P3062027044543157968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A054977 n * A230822 (n + 1)).toNat

end

end A230762.P3062027044543157968

/-!
# A230766: Numbers with more than one prime factor and, in the ordered factorization, the exponent never decreases when read from left to right.

The programs for A230766, there is no canonical definition to state claims against.
-/

/-! ## A230766.P9324380142769565612

`∩[A057714(n+1), A304678(n+1)]`
-/

namespace A230766.P9324380142769565612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230766.P9324380142769565612

/-! ## A230766.P17448023699477733794

`∩[A085232(n+1), A304678(n+1)]`
-/

namespace A230766.P17448023699477733794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230766.P17448023699477733794

/-! ## A230766.P12287803528087114660

`∩[A085234(n+1), A304678(n+1)]`
-/

namespace A230766.P12287803528087114660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230766.P12287803528087114660

/-! ## A230766.P17539528801578887053

`∩[A024619(n+1), A304678(n+1)]`
-/

namespace A230766.P17539528801578887053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230766.P17539528801578887053

/-! ## A230766.P16870074768566165483

`filter[A304678(n+1), A143731(#)]`
-/

namespace A230766.P16870074768566165483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A230766.P16870074768566165483

/-! ## A230766.P8089394076302544923

`eq[A074591(n+1), A085079(n+1)]+1`
-/

namespace A230766.P8089394076302544923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230766.P8089394076302544923

/-! ## A230766.P6102750579397378229

`eq[1, char[A085079(A097318(n+1))]]`
-/

namespace A230766.P6102750579397378229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A097318 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230766.P6102750579397378229

/-! ## A230766.P4616583769908515074

`eq[1, char[A085079(A024619(n+1))]]`
-/

namespace A230766.P4616583769908515074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A024619 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230766.P4616583769908515074

/-!
# A230770: Numbers n such that sigma(n) + phi(n) is a composite number of the form p^k where p is a prime.

The programs for A230770, there is no canonical definition to state claims against.
-/

/-! ## A230770.P2053323701608446096

`A381272(n)+A351902(A003695(n+1))`
-/

namespace A230770.P2053323701608446096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381272 n + A351902 (A003695 (n + 1)).toNat

end

end A230770.P2053323701608446096

/-! ## A230770.P5299718947748554902

`A192533(n+1)-A102673(A192552(n))`
-/

namespace A230770.P5299718947748554902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192533 (n + 1) - A102673 (A192552 n).toNat

end

end A230770.P5299718947748554902

/-!
# A230771: Union of Fibonacci numbers and powers of 2.

The programs for A230771, the canonical program `A230771.P1390251623776861171` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230771 has offset 1).

The definition of A230771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 808 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230771.P1390251623776861171

`∪[A000079(n), A020695(n)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230771

/-- `∪[A000079(n), A020695(n)]` -/
def P1390251623776861171.Spec : Prop :=
  ∀ n, (P1390251623776861171.a n : ℤ) = A230771 (n + 1)

theorem P1390251623776861171.correct : P1390251623776861171.Spec := by
  intro n
  simp only [A230771, Nat.add_sub_cancel]

end A230771

/-! ## A230771.P18197092523124493672

`∪[A000079(n), A020701(n)]`
-/

namespace A230771.P18197092523124493672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230771.P18197092523124493672

namespace A230771

/-- `∪[A000079(n), A020701(n)]` -/
def P18197092523124493672.Spec : Prop :=
  ∀ n, (P18197092523124493672.a n : ℤ) = A230771 (n + 1)

end A230771

/-! ## A230771.P17251403476304787635

`∪[A000079(n), A071679(n+1)]`
-/

namespace A230771.P17251403476304787635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230771.P17251403476304787635

namespace A230771

/-- `∪[A000079(n), A071679(n+1)]` -/
def P17251403476304787635.Spec : Prop :=
  ∀ n, (P17251403476304787635.a n : ℤ) = A230771 (n + 1)

end A230771

/-! ## A230771.P5965821052787236856

`∪[A020695(n), A151821(n+1)]`
-/

namespace A230771.P5965821052787236856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230771.P5965821052787236856

namespace A230771

/-- `∪[A020695(n), A151821(n+1)]` -/
def P5965821052787236856.Spec : Prop :=
  ∀ n, (P5965821052787236856.a n : ℤ) = A230771 (n + 1)

end A230771

/-! ## A230771.P1699339486133380571

`∪[A000045(n+2), A000079(n)]`
-/

namespace A230771.P1699339486133380571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230771.P1699339486133380571

namespace A230771

/-- `∪[A000045(n+2), A000079(n)]` -/
def P1699339486133380571.Spec : Prop :=
  ∀ n, (P1699339486133380571.a n : ℤ) = A230771 (n + 1)

end A230771

/-!
# A230772: Number of primes in the half-open interval [n, 3*n/2).

The programs for A230772, the canonical program `A230772.P15398795437404776816` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230772 has offset 1).

The definition of A230772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230772.P4026884157818658683

`A000720(A001651(n+1))-A230980(n)`
-/

namespace A230772.P4026884157818658683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001651 (n + 1)).toNat - A230980 n

end

end A230772.P4026884157818658683

namespace A230772

/-- `A000720(A001651(n+1))-A230980(n)` -/
def P4026884157818658683.Spec : Prop :=
  ∀ n, P4026884157818658683.a n = A230772 (n + 1)

end A230772

/-! ## A230772.P13684424682926900766

`A000720(comp[3*n])-A000720(A000007(n)+n)`
-/

namespace A230772.P13684424682926900766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A000720 (A000007 n + (n : ℤ)).toNat

end

end A230772.P13684424682926900766

namespace A230772

/-- `A000720(comp[3*n])-A000720(A000007(n)+n)` -/
def P13684424682926900766.Spec : Prop :=
  ∀ n, P13684424682926900766.a n = A230772 (n + 1)

end A230772

/-! ## A230772.P15398795437404776816

`A230980(comp[3*n])-A230980(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230772

/-- `A230980(comp[3*n])-A230980(n)` -/
def P15398795437404776816.Spec : Prop :=
  ∀ n, P15398795437404776816.a n = A230772 (n + 1)

theorem P15398795437404776816.correct : P15398795437404776816.Spec := by
  intro n
  simp only [A230772, Nat.add_sub_cancel]

end A230772

/-! ## A230772.P16596924393910106719

`A056172(A047230(n+1))-A230980(n)`
-/

namespace A230772.P16596924393910106719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A047230 (n + 1)).toNat - A230980 n

end

end A230772.P16596924393910106719

namespace A230772

/-- `A056172(A047230(n+1))-A230980(n)` -/
def P16596924393910106719.Spec : Prop :=
  ∀ n, P16596924393910106719.a n = A230772 (n + 1)

end A230772

/-! ## A230772.P7125505887691737693

`A056172(3*n+2)-A230980(n)`
-/

namespace A230772.P7125505887691737693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (3 * n + 2) - A230980 n

end

end A230772.P7125505887691737693

namespace A230772

/-- `A056172(3*n+2)-A230980(n)` -/
def P7125505887691737693.Spec : Prop :=
  ∀ n, P7125505887691737693.a n = A230772 (n + 1)

end A230772

/-! ## A230772.P9902137802243013145

`A055679(3*n+2)-A230980(n)`
-/

namespace A230772.P9902137802243013145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (3 * n + 2) - A230980 n

end

end A230772.P9902137802243013145

namespace A230772

/-- `A055679(3*n+2)-A230980(n)` -/
def P9902137802243013145.Spec : Prop :=
  ∀ n, P9902137802243013145.a n = A230772 (n + 1)

end A230772

/-!
# A230773: Minimum number of steps in an alternate definition of the Sieve of Eratosthenes needed to identify n as prime or composite.

The programs for A230773, there is no canonical definition to state claims against.
-/

/-! ## A230773.P13624340432329295518

`A004216(A353851(n)*A359507(2*n+3))`
-/

namespace A230773.P13624340432329295518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A353851 n * A359507 (2 * n + 3)).toNat

end

end A230773.P13624340432329295518

/-! ## A230773.P9044747143073662310

`A092523(A077957(n)+A001222(n+1))`
-/

namespace A230773.P9044747143073662310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (A077957 n + A001222 (n + 1)).toNat

end

end A230773.P9044747143073662310

/-! ## A230773.P8974455861508599717

`gcd(A056811(n+1), A151899(A074323(n)))`
-/

namespace A230773.P8974455861508599717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056811 (n + 1)) (A151899 (A074323 n).toNat)

end

end A230773.P8974455861508599717

/-! ## A230773.P8412582914586518837

`A001222(A012265(n+4))%A292127(3*n+1)`
-/

namespace A230773.P8412582914586518837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A012265 (n + 4)).toNat) (A292127 (3 * n + 1))

end

end A230773.P8412582914586518837

/-! ## A230773.P16286120854154331251

`A321013(A029746(n+1))`
-/

namespace A230773.P16286120854154331251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321013 (A029746 (n + 1)).toNat

end

end A230773.P16286120854154331251

/-!
# A230774: Number of primes less than first prime above square root of n.

The programs for A230774, the canonical program `A230774.P14716185316073664911` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230774 has offset 1).

The definition of A230774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230774.P5688327019676773078

`∑[A302048(n)]+1`
-/

namespace A230774.P5688327019676773078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P5688327019676773078

namespace A230774

/-- `∑[A302048(n)]+1` -/
def P5688327019676773078.Spec : Prop :=
  ∀ n, P5688327019676773078.a n = A230774 (n + 1)

end A230774

/-! ## A230774.P11477345248579923903

`∑[char[A331044(n)²]]`
-/

namespace A230774.P11477345248579923903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230774.P11477345248579923903

namespace A230774

/-- `∑[char[A331044(n)²]]` -/
def P11477345248579923903.Spec : Prop :=
  ∀ n, (P11477345248579923903.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P2339775225887994949

`A230980(floor(sqrt(n)))+1`
-/

namespace A230774.P2339775225887994949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Nat.sqrt n) + 1

end

end A230774.P2339775225887994949

namespace A230774

/-- `A230980(floor(sqrt(n)))+1` -/
def P2339775225887994949.Spec : Prop :=
  ∀ n, P2339775225887994949.a n = A230774 (n + 1)

end A230774

/-! ## A230774.P11885181889943456683

`∑[char[A007918(n)²]]+1`
-/

namespace A230774.P11885181889943456683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P11885181889943456683

namespace A230774

/-- `∑[char[A007918(n)²]]+1` -/
def P11885181889943456683.Spec : Prop :=
  ∀ n, (P11885181889943456683.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P10803412456207965171

`∑[char[A051698(n)²]]+1`
-/

namespace A230774.P10803412456207965171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P10803412456207965171

namespace A230774

/-- `∑[char[A051698(n)²]]+1` -/
def P10803412456207965171.Spec : Prop :=
  ∀ n, (P10803412456207965171.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P1949243789662225392

`∑[char[A061397(n+1)²]]`
-/

namespace A230774.P1949243789662225392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230774.P1949243789662225392

namespace A230774

/-- `∑[char[A061397(n+1)²]]` -/
def P1949243789662225392.Spec : Prop :=
  ∀ n, (P1949243789662225392.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P16558402926694618312

`∑[char[A062584(n)²]]+1`
-/

namespace A230774.P16558402926694618312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P16558402926694618312

namespace A230774

/-- `∑[char[A062584(n)²]]+1` -/
def P16558402926694618312.Spec : Prop :=
  ∀ n, (P16558402926694618312.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P7317950082678431539

`∑[char[A075860(n+1)²]]`
-/

namespace A230774.P7317950082678431539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230774.P7317950082678431539

namespace A230774

/-- `∑[char[A075860(n+1)²]]` -/
def P7317950082678431539.Spec : Prop :=
  ∀ n, (P7317950082678431539.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P3495529576449378410

`∑[char[A120007(n+1)²]]`
-/

namespace A230774.P3495529576449378410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230774.P3495529576449378410

namespace A230774

/-- `∑[char[A120007(n+1)²]]` -/
def P3495529576449378410.Spec : Prop :=
  ∀ n, (P3495529576449378410.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P6587301294104547792

`∑[char[A151800(n)²]]+1`
-/

namespace A230774.P6587301294104547792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P6587301294104547792

namespace A230774

/-- `∑[char[A151800(n)²]]+1` -/
def P6587301294104547792.Spec : Prop :=
  ∀ n, (P6587301294104547792.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P3055500225252464411

`∑[char[A182986(n+1)²]]`
-/

namespace A230774.P3055500225252464411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230774.P3055500225252464411

namespace A230774

/-- `∑[char[A182986(n+1)²]]` -/
def P3055500225252464411.Spec : Prop :=
  ∀ n, (P3055500225252464411.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P17099862350471432799

`∑[char[comp[A018252(n+1)]²]]`
-/

namespace A230774.P17099862350471432799
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A230774.P17099862350471432799

namespace A230774

/-- `∑[char[comp[A018252(n+1)]²]]` -/
def P17099862350471432799.Spec : Prop :=
  ∀ n, (P17099862350471432799.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P13700047126455204090

`∑[char[A000040(n+1)²]]+1`
-/

namespace A230774.P13700047126455204090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P13700047126455204090

namespace A230774

/-- `∑[char[A000040(n+1)²]]+1` -/
def P13700047126455204090.Spec : Prop :=
  ∀ n, (P13700047126455204090.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P12375951461911308678

`∑[char[A000705(n+1)²]]+1`
-/

namespace A230774.P12375951461911308678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P12375951461911308678

namespace A230774

/-- `∑[char[A000705(n+1)²]]+1` -/
def P12375951461911308678.Spec : Prop :=
  ∀ n, (P12375951461911308678.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P10230959453961761314

`∑[char[A030291(n+1)²]]+1`
-/

namespace A230774.P10230959453961761314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P10230959453961761314

namespace A230774

/-- `∑[char[A030291(n+1)²]]+1` -/
def P10230959453961761314.Spec : Prop :=
  ∀ n, (P10230959453961761314.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P5221771305699804549

`∑[char[A006530(n+2)²]]+1`
-/

namespace A230774.P5221771305699804549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P5221771305699804549

namespace A230774

/-- `∑[char[A006530(n+2)²]]+1` -/
def P5221771305699804549.Spec : Prop :=
  ∀ n, (P5221771305699804549.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P3037588771941762146

`∑[char[A020639(n+2)²]]+1`
-/

namespace A230774.P3037588771941762146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A230774.P3037588771941762146

namespace A230774

/-- `∑[char[A020639(n+2)²]]+1` -/
def P3037588771941762146.Spec : Prop :=
  ∀ n, (P3037588771941762146.a n : ℤ) = A230774 (n + 1)

end A230774

/-! ## A230774.P14716185316073664911

`a(n-1)+val(n, A000040(a(n-1))²)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A230774

/-- `a(n-1)+val(n, A000040(a(n-1))²)` -/
def P14716185316073664911.Spec : Prop :=
  ∀ n, (P14716185316073664911.a n : ℤ) = A230774 (n + 1)

theorem P14716185316073664911.correct : P14716185316073664911.Spec := by
  intro n
  simp only [A230774, Nat.add_sub_cancel]

end A230774

/-! ## A230774.P14335589551189644446

`A056172(A000267(n))+1`
-/

namespace A230774.P14335589551189644446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A000267 n).toNat + 1

end

end A230774.P14335589551189644446

namespace A230774

/-- `A056172(A000267(n))+1` -/
def P14335589551189644446.Spec : Prop :=
  ∀ n, P14335589551189644446.a n = A230774 (n + 1)

end A230774

/-! ## A230774.P5873840951262440938

`A000720(A230775(n+1))`
-/

namespace A230774.P5873840951262440938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A230775 (n + 1)).toNat

end

end A230774.P5873840951262440938

namespace A230774

/-- `A000720(A230775(n+1))` -/
def P5873840951262440938.Spec : Prop :=
  ∀ n, P5873840951262440938.a n = A230774 (n + 1)

end A230774

/-!
# A230775: Smallest prime number greater than or equal to the square root of n.

The programs for A230775, the canonical program `A230775.P17462288336970000234` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230775 has offset 1).

The definition of A230775 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A230774, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A230775.P17462288336970000234

`A000040(A230774(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230775

/-- `A000040(A230774(n+1))` -/
def P17462288336970000234.Spec : Prop :=
  ∀ n, P17462288336970000234.a n = A230775 (n + 1)

theorem P17462288336970000234.correct : P17462288336970000234.Spec := by
  intro n
  simp only [A230775, Nat.add_sub_cancel]

end A230775

/-! ## A230775.P15043832261205514306

`A151800(floor(sqrt(n)))`
-/

namespace A230775.P15043832261205514306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Nat.sqrt n)

end

end A230775.P15043832261205514306

namespace A230775

/-- `A151800(floor(sqrt(n)))` -/
def P15043832261205514306.Spec : Prop :=
  ∀ n, P15043832261205514306.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P15304457483018238724

`A007918(∑[char[n²]])`
-/

namespace A230775.P15304457483018238724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230775.P15304457483018238724

namespace A230775

/-- `A007918(∑[char[n²]])` -/
def P15304457483018238724.Spec : Prop :=
  ∀ n, P15304457483018238724.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P16178678354880515846

`sqrt(A069549(ceil(sqrt(n+1))))`
-/

namespace A230775.P16178678354880515846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069549 ⌈Real.sqrt (n + 1 : ℝ)⌉.toNat : ℝ)

end

end A230775.P16178678354880515846

namespace A230775

/-- `sqrt(A069549(ceil(sqrt(n+1))))` -/
def P16178678354880515846.Spec : Prop :=
  ∀ n, P16178678354880515846.a n = (A230775 (n + 1) : ℝ)

end A230775

/-! ## A230775.P17605093505840540844

`A308052(A001650(n+1))`
-/

namespace A230775.P17605093505840540844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A001650 (n + 1)).toNat

end

end A230775.P17605093505840540844

namespace A230775

/-- `A308052(A001650(n+1))` -/
def P17605093505840540844.Spec : Prop :=
  ∀ n, P17605093505840540844.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P1784814583047290216

`A308052(A027434(n+1))`
-/

namespace A230775.P1784814583047290216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A027434 (n + 1)).toNat

end

end A230775.P1784814583047290216

namespace A230775

/-- `A308052(A027434(n+1))` -/
def P1784814583047290216.Spec : Prop :=
  ∀ n, P1784814583047290216.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P18187643212457061032

`A308052(A130819(n+1))`
-/

namespace A230775.P18187643212457061032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A130819 (n + 1)).toNat

end

end A230775.P18187643212457061032

namespace A230775

/-- `A308052(A130819(n+1))` -/
def P18187643212457061032.Spec : Prop :=
  ∀ n, P18187643212457061032.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P2249929122092740280

`A008578(A230774(n+1)+1)`
-/

namespace A230775.P2249929122092740280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230774 (n + 1) + 1).toNat

end

end A230775.P2249929122092740280

namespace A230775

/-- `A008578(A230774(n+1)+1)` -/
def P2249929122092740280.Spec : Prop :=
  ∀ n, P2249929122092740280.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P8264625468977190219

`A000040(∑[char[A075860(n+1)²]])`
-/

namespace A230775.P8264625468977190219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075860 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A230775.P8264625468977190219

namespace A230775

/-- `A000040(∑[char[A075860(n+1)²]])` -/
def P8264625468977190219.Spec : Prop :=
  ∀ n, P8264625468977190219.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P17549730626242882665

`A055398(A230774(2*n+1-n))`
-/

namespace A230775.P17549730626242882665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (A230774 (2 * n + 1 - n)).toNat

end

end A230775.P17549730626242882665

namespace A230775

/-- `A055398(A230774(2*n+1-n))` -/
def P17549730626242882665.Spec : Prop :=
  ∀ n, P17549730626242882665.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P2733252909583079136

`A000040(∑[char[A000040(n+1)²]]+1)`
-/

namespace A230775.P2733252909583079136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230775.P2733252909583079136

namespace A230775

/-- `A000040(∑[char[A000040(n+1)²]]+1)` -/
def P2733252909583079136.Spec : Prop :=
  ∀ n, P2733252909583079136.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P2156773811392644348

`A040976(∑[char[A006530(n+2)²]]+1)+2`
-/

namespace A230775.P2156773811392644348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2

end

end A230775.P2156773811392644348

namespace A230775

/-- `A040976(∑[char[A006530(n+2)²]]+1)+2` -/
def P2156773811392644348.Spec : Prop :=
  ∀ n, P2156773811392644348.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P12876306536150557477

`A040976(∑[char[A020639(n+2)²]]+1)+2`
-/

namespace A230775.P12876306536150557477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 2

end

end A230775.P12876306536150557477

namespace A230775

/-- `A040976(∑[char[A020639(n+2)²]]+1)+2` -/
def P12876306536150557477.Spec : Prop :=
  ∀ n, P12876306536150557477.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P195211907119897509

`A014963(A007918(A003059(n+1)))`
-/

namespace A230775.P195211907119897509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007918 (A003059 (n + 1)).toNat).toNat

end

end A230775.P195211907119897509

namespace A230775

/-- `A014963(A007918(A003059(n+1)))` -/
def P195211907119897509.Spec : Prop :=
  ∀ n, P195211907119897509.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P12838708037869457306

`A020639(A055398(A230774(n+1))²)`
-/

namespace A230775.P12838708037869457306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055398 (A230774 (n + 1)).toNat ^ 2).toNat

end

end A230775.P12838708037869457306

namespace A230775

/-- `A020639(A055398(A230774(n+1))²)` -/
def P12838708037869457306.Spec : Prop :=
  ∀ n, P12838708037869457306.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P17692884717406708172

`A308052(2*A135034(n+1))`
-/

namespace A230775.P17692884717406708172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (2 * A135034 (n + 1)).toNat

end

end A230775.P17692884717406708172

namespace A230775

/-- `A308052(2*A135034(n+1))` -/
def P17692884717406708172.Spec : Prop :=
  ∀ n, P17692884717406708172.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P15466454548985995057

`A308052(A135034(n+1)+A135034(n))`
-/

namespace A230775.P15466454548985995057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A135034 (n + 1) + A135034 n).toNat

end

end A230775.P15466454548985995057

namespace A230775

/-- `A308052(A135034(n+1)+A135034(n))` -/
def P15466454548985995057.Spec : Prop :=
  ∀ n, P15466454548985995057.a n = A230775 (n + 1)

end A230775

/-! ## A230775.P6236919244130971124

`A308052(A360924(n+1))`
-/

namespace A230775.P6236919244130971124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A360924 (n + 1)).toNat

end

end A230775.P6236919244130971124

namespace A230775

/-- `A308052(A360924(n+1))` -/
def P6236919244130971124.Spec : Prop :=
  ∀ n, P6236919244130971124.a n = A230775 (n + 1)

end A230775

/-!
# A230777: Indices of record values in A228098.

The programs for A230777, there is no canonical definition to state claims against.
-/

/-! ## A230777.P12040395460358719347

`A344582(A230776(n+1))`
-/

namespace A230777.P12040395460358719347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344582 (A230776 (n + 1)).toNat

end

end A230777.P12040395460358719347

/-! ## A230777.P3978761272918176063

`A344582(A063065(n)+A004862(n+1))`
-/

namespace A230777.P3978761272918176063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344582 (A063065 n + A004862 (n + 1)).toNat

end

end A230777.P3978761272918176063

/-! ## A230777.P12153621101289713458

`A344582(A063065(n)+A004873(n+1))`
-/

namespace A230777.P12153621101289713458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344582 (A063065 n + A004873 (n + 1)).toNat

end

end A230777.P12153621101289713458

/-! ## A230777.P8838432782949804987

`A344582(A063065(n)+A004884(n+1))`
-/

namespace A230777.P8838432782949804987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344582 (A063065 n + A004884 (n + 1)).toNat

end

end A230777.P8838432782949804987

/-! ## A230777.P4518935472113464988

`A344582(A063065(n)+A004895(n+1))`
-/

namespace A230777.P4518935472113464988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344582 (A063065 n + A004895 (n + 1)).toNat

end

end A230777.P4518935472113464988

/-!
# A230778: Record prime numbers for A228098.

The programs for A230778, there is no canonical definition to state claims against.
-/

/-! ## A230778.P8437110439686674624

`A001748(A230777(n+1))/3`
-/

namespace A230778.P8437110439686674624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A230777 (n + 1)).toNat : ℚ) / 3

end

end A230778.P8437110439686674624

/-! ## A230778.P10752823180395886585

`A000040(A230777(n+1))`
-/

namespace A230778.P10752823180395886585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230777 (n + 1)).toNat

end

end A230778.P10752823180395886585

/-! ## A230778.P10544098318204332696

`A000040(A344582(n+1))`
-/

namespace A230778.P10544098318204332696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A344582 (n + 1)).toNat

end

end A230778.P10544098318204332696

/-! ## A230778.P2352520905359398009

`A008578(A230777(n+1)+1)`
-/

namespace A230778.P2352520905359398009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A230777 (n + 1) + 1).toNat

end

end A230778.P2352520905359398009

/-! ## A230778.P8211402189437074852

`A008578(A344582(n+1)+1)`
-/

namespace A230778.P8211402189437074852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A344582 (n + 1) + 1).toNat

end

end A230778.P8211402189437074852

/-!
# A230779: Numbers which are uniquely decomposable into a sum of two squares, the unique decomposition being with two distinct nonzero squares.

The programs for A230779, the canonical program `A230779.P6211119904163911017` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230779 has offset 1).

The definition of A230779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230779.P6161918913802226520

`filter[A143575(n+2), A353812(#)]`
-/

namespace A230779.P6161918913802226520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A230779.P6161918913802226520

namespace A230779

/-- `filter[A143575(n+2), A353812(#)]` -/
def P6161918913802226520.Spec : Prop :=
  ∀ n, P6161918913802226520.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P6211119904163911017

`filter[A143575(n+2), A353814(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A230779

/-- `filter[A143575(n+2), A353814(#)]` -/
def P6211119904163911017.Spec : Prop :=
  ∀ n, P6211119904163911017.a n = A230779 (n + 1)

theorem P6211119904163911017.correct : P6211119904163911017.Spec := by
  intro n
  simp only [A230779, Nat.add_sub_cancel]

end A230779

/-! ## A230779.P17481499443454339188

`filter[A025302(n+1), A353812(#)]`
-/

namespace A230779.P17481499443454339188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A230779.P17481499443454339188

namespace A230779

/-- `filter[A025302(n+1), A353812(#)]` -/
def P17481499443454339188.Spec : Prop :=
  ∀ n, P17481499443454339188.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P14280331404367743041

`∩[A025302(n+1), A143575(n+1)]`
-/

namespace A230779.P14280331404367743041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230779.P14280331404367743041

namespace A230779

/-- `∩[A025302(n+1), A143575(n+1)]` -/
def P14280331404367743041.Spec : Prop :=
  ∀ n, (P14280331404367743041.a n : ℤ) = A230779 (n + 1)

end A230779

/-! ## A230779.P11910484749456804251

`filter[A025284(n+1), A353812(#)]`
-/

namespace A230779.P11910484749456804251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A230779.P11910484749456804251

namespace A230779

/-- `filter[A025284(n+1), A353812(#)]` -/
def P11910484749456804251.Spec : Prop :=
  ∀ n, P11910484749456804251.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P8280528445489231132

`∩[A025284(n+1), A143575(n+1)]`
-/

namespace A230779.P8280528445489231132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230779.P8280528445489231132

namespace A230779

/-- `∩[A025284(n+1), A143575(n+1)]` -/
def P8280528445489231132.Spec : Prop :=
  ∀ n, (P8280528445489231132.a n : ℤ) = A230779 (n + 1)

end A230779

/-! ## A230779.P11289664382856959566

`filter[A125022(n+2), A353812(#)]`
-/

namespace A230779.P11289664382856959566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A230779.P11289664382856959566

namespace A230779

/-- `filter[A125022(n+2), A353812(#)]` -/
def P11289664382856959566.Spec : Prop :=
  ∀ n, P11289664382856959566.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P10476143169335727718

`filter[A125022(n+2), A353814(#)]`
-/

namespace A230779.P10476143169335727718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A230779.P10476143169335727718

namespace A230779

/-- `filter[A125022(n+2), A353814(#)]` -/
def P10476143169335727718.Spec : Prop :=
  ∀ n, P10476143169335727718.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P11995484900347049692

`∩[A025302(n+1), A125022(n+1)]`
-/

namespace A230779.P11995484900347049692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230779.P11995484900347049692

namespace A230779

/-- `∩[A025302(n+1), A125022(n+1)]` -/
def P11995484900347049692.Spec : Prop :=
  ∀ n, (P11995484900347049692.a n : ℤ) = A230779 (n + 1)

end A230779

/-! ## A230779.P17535169627810274232

`filter[A025284(n+1), A354032(#)]`
-/

namespace A230779.P17535169627810274232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A230779.P17535169627810274232

namespace A230779

/-- `filter[A025284(n+1), A354032(#)]` -/
def P17535169627810274232.Spec : Prop :=
  ∀ n, P17535169627810274232.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P11680322730808877288

`filter[A025302(n+1), A354032(#)]`
-/

namespace A230779.P11680322730808877288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A230779.P11680322730808877288

namespace A230779

/-- `filter[A025302(n+1), A354032(#)]` -/
def P11680322730808877288.Spec : Prop :=
  ∀ n, P11680322730808877288.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P13745779588900109787

`filter[A143575(n+2), A049240(#)]`
-/

namespace A230779.P13745779588900109787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A230779.P13745779588900109787

namespace A230779

/-- `filter[A143575(n+2), A049240(#)]` -/
def P13745779588900109787.Spec : Prop :=
  ∀ n, P13745779588900109787.a n = A230779 (n + 1)

end A230779

/-! ## A230779.P14725080313777295802

`filter[A125022(n+3), A354032(#)]`
-/

namespace A230779.P14725080313777295802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354032 (f1 j).toNat = 1) n)

end

end A230779.P14725080313777295802

namespace A230779

/-- `filter[A125022(n+3), A354032(#)]` -/
def P14725080313777295802.Spec : Prop :=
  ∀ n, P14725080313777295802.a n = A230779 (n + 1)

end A230779

/-!
# A230780: Positive numbers without a prime factor congruent to 1 (mod 6).

The programs for A230780, the canonical program `A230780.P4087628453053372881` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230780 has offset 1).

The definition of A230780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230780.P7597538047486154424

`∪[A004612(n+1), A316860(n+1)]`
-/

namespace A230780.P7597538047486154424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230780.P7597538047486154424

namespace A230780

/-- `∪[A004612(n+1), A316860(n+1)]` -/
def P7597538047486154424.Spec : Prop :=
  ∀ n, (P7597538047486154424.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P2729958256426322807

`∪[A088232(n+1), A316860(n+1)]`
-/

namespace A230780.P2729958256426322807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230780.P2729958256426322807

namespace A230780

/-- `∪[A088232(n+1), A316860(n+1)]` -/
def P2729958256426322807.Spec : Prop :=
  ∀ n, (P2729958256426322807.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P4087628453053372881

`lt[gcd(3, A023900(n+1)), 2]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A230780

/-- `lt[gcd(3, A023900(n+1)), 2]+1` -/
def P4087628453053372881.Spec : Prop :=
  ∀ n, (P4087628453053372881.a n : ℤ) = A230780 (n + 1)

theorem P4087628453053372881.correct : P4087628453053372881.Spec := by
  intro n
  simp only [A230780, Nat.add_sub_cancel]

end A230780

/-! ## A230780.P14180727818432303405

`eq[1, A100063(A003958(n+1))]+1`
-/

namespace A230780.P14180727818432303405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A003958 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230780.P14180727818432303405

namespace A230780

/-- `eq[1, A100063(A003958(n+1))]+1` -/
def P14180727818432303405.Spec : Prop :=
  ∀ n, (P14180727818432303405.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P11919003005844552934

`eq[0, A005071(n+1)]+1`
-/

namespace A230780.P11919003005844552934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005071 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230780.P11919003005844552934

namespace A230780

/-- `eq[0, A005071(n+1)]+1` -/
def P11919003005844552934.Spec : Prop :=
  ∀ n, (P11919003005844552934.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P15053219544749109525

`eq[0, A005088(n+1)]+1`
-/

namespace A230780.P15053219544749109525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230780.P15053219544749109525

namespace A230780

/-- `eq[0, A005088(n+1)]+1` -/
def P15053219544749109525.Spec : Prop :=
  ∀ n, (P15053219544749109525.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P6283131245394519226

`eq[1, A115069(n+1)]+1`
-/

namespace A230780.P6283131245394519226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230780.P6283131245394519226

namespace A230780

/-- `eq[1, A115069(n+1)]+1` -/
def P6283131245394519226.Spec : Prop :=
  ∀ n, (P6283131245394519226.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P6728481252410963808

`eq[1, A170824(n+1)]+1`
-/

namespace A230780.P6728481252410963808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230780.P6728481252410963808

namespace A230780

/-- `eq[1, A170824(n+1)]+1` -/
def P6728481252410963808.Spec : Prop :=
  ∀ n, (P6728481252410963808.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P7233975154374355709

`eq[1, A248909(n+1)]+1`
-/

namespace A230780.P7233975154374355709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A230780.P7233975154374355709

namespace A230780

/-- `eq[1, A248909(n+1)]+1` -/
def P7233975154374355709.Spec : Prop :=
  ∀ n, (P7233975154374355709.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P16559878441490912622

`lt[A005072(n+1), 1]+1`
-/

namespace A230780.P16559878441490912622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005072 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A230780.P16559878441490912622

namespace A230780

/-- `lt[A005072(n+1), 1]+1` -/
def P16559878441490912622.Spec : Prop :=
  ∀ n, (P16559878441490912622.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P2996382566158114736

`lt[A005073(n+1), 1]+1`
-/

namespace A230780.P2996382566158114736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005073 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A230780.P2996382566158114736

namespace A230780

/-- `lt[A005073(n+1), 1]+1` -/
def P2996382566158114736.Spec : Prop :=
  ∀ n, (P2996382566158114736.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P9640236059943217254

`record[(n+1)/A000010(A248909(n+1)+1)]`
-/

namespace A230780.P9640236059943217254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (A248909 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230780.P9640236059943217254

namespace A230780

/-- `record[(n+1)/A000010(A248909(n+1)+1)]` -/
def P9640236059943217254.Spec : Prop :=
  ∀ n, P9640236059943217254.a n = (A230780 (n + 1) : ℚ)

end A230780

/-! ## A230780.P16785438604411853164

`eq[A005070(n+1)², A005070(n+1)]+1`
-/

namespace A230780.P16785438604411853164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A230780.P16785438604411853164

namespace A230780

/-- `eq[A005070(n+1)², A005070(n+1)]+1` -/
def P16785438604411853164.Spec : Prop :=
  ∀ n, (P16785438604411853164.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P11280208826859584921

`eq[A059841(n), A387908(n)]`
-/

namespace A230780.P11280208826859584921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230780.P11280208826859584921

namespace A230780

/-- `eq[A059841(n), A387908(n)]` -/
def P11280208826859584921.Spec : Prop :=
  ∀ n, (P11280208826859584921.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P8608913614231768059

`eq[1, A387908(2*n)]`
-/

namespace A230780.P8608913614231768059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230780.P8608913614231768059

namespace A230780

/-- `eq[1, A387908(2*n)]` -/
def P8608913614231768059.Spec : Prop :=
  ∀ n, (P8608913614231768059.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P1494475039479238979

`lt[A248909(2*(n+1)), 2]+1`
-/

namespace A230780.P1494475039479238979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A230780.P1494475039479238979

namespace A230780

/-- `lt[A248909(2*(n+1)), 2]+1` -/
def P1494475039479238979.Spec : Prop :=
  ∀ n, (P1494475039479238979.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P5293850108641718312

`record[A003602(n+1)/A170824(n+2)]`
-/

namespace A230780.P5293850108641718312
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) / (A170824 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230780.P5293850108641718312

namespace A230780

/-- `record[A003602(n+1)/A170824(n+2)]` -/
def P5293850108641718312.Spec : Prop :=
  ∀ n, P5293850108641718312.a n = (A230780 (n + 1) : ℚ)

end A230780

/-! ## A230780.P13888232832515136160

`record[A003602(n+1)/A248909(n+2)]`
-/

namespace A230780.P13888232832515136160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (n + 1) : ℚ) / (A248909 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230780.P13888232832515136160

namespace A230780

/-- `record[A003602(n+1)/A248909(n+2)]` -/
def P13888232832515136160.Spec : Prop :=
  ∀ n, P13888232832515136160.a n = (A230780 (n + 1) : ℚ)

end A230780

/-! ## A230780.P15422286992898859811

`eq[A033716(n²), A040008(n)]`
-/

namespace A230780.P15422286992898859811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230780.P15422286992898859811

namespace A230780

/-- `eq[A033716(n²), A040008(n)]` -/
def P15422286992898859811.Spec : Prop :=
  ∀ n, (P15422286992898859811.a n : ℤ) = A230780 (n + 1)

end A230780

/-! ## A230780.P4931590882954348266

`eq[A217220(n²), A226294(n)]`
-/

namespace A230780.P4931590882954348266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226294 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230780.P4931590882954348266

namespace A230780

/-- `eq[A217220(n²), A226294(n)]` -/
def P4931590882954348266.Spec : Prop :=
  ∀ n, (P4931590882954348266.a n : ℤ) = A230780 (n + 1)

end A230780

/-!
# A230781: Squared radii of circles centered at a grid point in a triangular lattice hitting exactly 6 points. Squares or triple of squares that are not expressible as x^2+xy+y^2 with y > x > 0.

The programs for A230781, the canonical program `A230781.P11223862249852391792` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230781 has offset 1).

The definition of A230781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230781.P9740167227209600031

`filter[A198772(n+2), A373585(#)]`
-/

namespace A230781.P9740167227209600031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A230781.P9740167227209600031

namespace A230781

/-- `filter[A198772(n+2), A373585(#)]` -/
def P9740167227209600031.Spec : Prop :=
  ∀ n, P9740167227209600031.a n = A230781 (n + 1)

end A230781

/-! ## A230781.P11459043613656375391

`filter[A198772(n+2), A374107(#)]`
-/

namespace A230781.P11459043613656375391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374107 (f1 j).toNat = 1) n)

end

end A230781.P11459043613656375391

namespace A230781

/-- `filter[A198772(n+2), A374107(#)]` -/
def P11459043613656375391.Spec : Prop :=
  ∀ n, P11459043613656375391.a n = A230781 (n + 1)

end A230781

/-! ## A230781.P8807167197606910596

`filter[A198772(n+2), A374113(#)]`
-/

namespace A230781.P8807167197606910596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374113 (f1 j).toNat = 1) n)

end

end A230781.P8807167197606910596

namespace A230781

/-- `filter[A198772(n+2), A374113(#)]` -/
def P8807167197606910596.Spec : Prop :=
  ∀ n, P8807167197606910596.a n = A230781 (n + 1)

end A230781

/-! ## A230781.P8180529311264795245

`filter[A198772(n+2), A145377(#)]`
-/

namespace A230781.P8180529311264795245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A230781.P8180529311264795245

namespace A230781

/-- `filter[A198772(n+2), A145377(#)]` -/
def P8180529311264795245.Spec : Prop :=
  ∀ n, P8180529311264795245.a n = A230781 (n + 1)

end A230781

/-! ## A230781.P1251828921436837497

`A003136(eq[6, A035019(n)]+1)`
-/

namespace A230781.P1251828921436837497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A230781.P1251828921436837497

namespace A230781

/-- `A003136(eq[6, A035019(n)]+1)` -/
def P1251828921436837497.Spec : Prop :=
  ∀ n, P1251828921436837497.a n = A230781 (n + 1)

end A230781

/-! ## A230781.P8893488606230880029

`∩[A198772(n+1), A374114(n+1)]`
-/

namespace A230781.P8893488606230880029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P8893488606230880029

namespace A230781

/-- `∩[A198772(n+1), A374114(n+1)]` -/
def P8893488606230880029.Spec : Prop :=
  ∀ n, (P8893488606230880029.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P8491951001361877579

`∩[A198772(n+1), A374108(n+1)]`
-/

namespace A230781.P8491951001361877579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P8491951001361877579

namespace A230781

/-- `∩[A198772(n+1), A374108(n+1)]` -/
def P8491951001361877579.Spec : Prop :=
  ∀ n, (P8491951001361877579.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P9823555212131508334

`filter[A230780(n+1), A145377(#)]`
-/

namespace A230781.P9823555212131508334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145377 (f1 j).toNat = 1) n)

end

end A230781.P9823555212131508334

namespace A230781

/-- `filter[A230780(n+1), A145377(#)]` -/
def P9823555212131508334.Spec : Prop :=
  ∀ n, P9823555212131508334.a n = A230781 (n + 1)

end A230781

/-! ## A230781.P11223862249852391792

`filter[A230780(n+1), A353815(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A230781

/-- `filter[A230780(n+1), A353815(#)]` -/
def P11223862249852391792.Spec : Prop :=
  ∀ n, P11223862249852391792.a n = A230781 (n + 1)

theorem P11223862249852391792.correct : P11223862249852391792.Spec := by
  intro n
  simp only [A230781, Nat.add_sub_cancel]

end A230781

/-! ## A230781.P8480472313736831290

`filter[A230780(n+1), A353816(#)]`
-/

namespace A230781.P8480472313736831290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A230781.P8480472313736831290

namespace A230781

/-- `filter[A230780(n+1), A353816(#)]` -/
def P8480472313736831290.Spec : Prop :=
  ∀ n, P8480472313736831290.a n = A230781 (n + 1)

end A230781

/-! ## A230781.P17422278314267957885

`∩[A003136(n+1), A230780(n+1)]`
-/

namespace A230781.P17422278314267957885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P17422278314267957885

namespace A230781

/-- `∩[A003136(n+1), A230780(n+1)]` -/
def P17422278314267957885.Spec : Prop :=
  ∀ n, (P17422278314267957885.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P10644822425672096875

`∩[A034022(n+1), A230780(n+1)]`
-/

namespace A230781.P10644822425672096875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P10644822425672096875

namespace A230781

/-- `∩[A034022(n+1), A230780(n+1)]` -/
def P10644822425672096875.Spec : Prop :=
  ∀ n, (P10644822425672096875.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P1288006381432336322

`∩[A155564(n+1), A230780(n+1)]`
-/

namespace A230781.P1288006381432336322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P1288006381432336322

namespace A230781

/-- `∩[A155564(n+1), A230780(n+1)]` -/
def P1288006381432336322.Spec : Prop :=
  ∀ n, (P1288006381432336322.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P11139411167431782142

`∩[A198772(n+1), A230780(n+1)]`
-/

namespace A230781.P11139411167431782142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P11139411167431782142

namespace A230781

/-- `∩[A198772(n+1), A230780(n+1)]` -/
def P11139411167431782142.Spec : Prop :=
  ∀ n, (P11139411167431782142.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P6602747902563564416

`∩[A230780(n+1), A329963(n+1)]`
-/

namespace A230781.P6602747902563564416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P6602747902563564416

namespace A230781

/-- `∩[A230780(n+1), A329963(n+1)]` -/
def P6602747902563564416.Spec : Prop :=
  ∀ n, (P6602747902563564416.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P13687319466892339955

`∩[A198772(n+1), A373586(n+1)]`
-/

namespace A230781.P13687319466892339955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A230781.P13687319466892339955

namespace A230781

/-- `∩[A198772(n+1), A373586(n+1)]` -/
def P13687319466892339955.Spec : Prop :=
  ∀ n, (P13687319466892339955.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P18165987291038395530

`eq[A033716(n), A040008(n)]`
-/

namespace A230781.P18165987291038395530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230781.P18165987291038395530

namespace A230781

/-- `eq[A033716(n), A040008(n)]` -/
def P18165987291038395530.Spec : Prop :=
  ∀ n, (P18165987291038395530.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P9805952076099186164

`eq[2*A033716(n), A040032(n)]`
-/

namespace A230781.P9805952076099186164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A230781.P9805952076099186164

namespace A230781

/-- `eq[2*A033716(n), A040032(n)]` -/
def P9805952076099186164.Spec : Prop :=
  ∀ n, (P9805952076099186164.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P3529018057602748643

`eq[6, A033716(4*n)]`
-/

namespace A230781.P3529018057602748643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230781.P3529018057602748643

namespace A230781

/-- `eq[6, A033716(4*n)]` -/
def P3529018057602748643.Spec : Prop :=
  ∀ n, (P3529018057602748643.a n : ℤ) = A230781 (n + 1)

end A230781

/-! ## A230781.P540839380960448682

`eq[2, A119395(2*n)]/2`
-/

namespace A230781.P540839380960448682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A230781.P540839380960448682

namespace A230781

/-- `eq[2, A119395(2*n)]/2` -/
def P540839380960448682.Spec : Prop :=
  ∀ n, P540839380960448682.a n = (A230781 (n + 1) : ℚ)

end A230781

/-!
# A230782: Number of n X 2 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230782, the canonical program `A230782.P16318741094752617268` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A230782 has offset 1).

The definition of A230782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A230782.P16318741094752617268

`ogf((6x+26x^2-22x^3-52x^4-48x^5)/(1-10x+3x^2-44x^3+40x^4-8x^5+192x^6))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A230782

/-- `ogf((6x+26x^2-22x^3-52x^4-48x^5)/(1-10x+3x^2-44x^3+40x^4-8x^5+192x^6))` -/
def P16318741094752617268.Spec : Prop :=
  ∀ n, P16318741094752617268.a n = A230782 (n + 1)

theorem P16318741094752617268.correct : P16318741094752617268.Spec := by
  intro n
  simp only [A230782, Nat.add_sub_cancel]

end A230782

/-! ## A230782.P8984495374456718866

`A230787(∑[n+1]+2)`
-/

namespace A230782.P8984495374456718866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230782.P8984495374456718866

namespace A230782

/-- `A230787(∑[n+1]+2)` -/
def P8984495374456718866.Spec : Prop :=
  ∀ n, P8984495374456718866.a n = A230782 (n + 1)

end A230782

/-! ## A230782.P17474668256779937097

`record[A010054(n)*A230787(n+2)]`
-/

namespace A230782.P17474668256779937097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230782.P17474668256779937097

namespace A230782

/-- `record[A010054(n)*A230787(n+2)]` -/
def P17474668256779937097.Spec : Prop :=
  ∀ n, P17474668256779937097.a n = A230782 (n + 1)

end A230782

/-! ## A230782.P16169604137260436278

`record[A230787(n+2)/A158117(n)]`
-/

namespace A230782.P16169604137260436278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230787 (n + 2) : ℚ) / (A158117 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230782.P16169604137260436278

namespace A230782

/-- `record[A230787(n+2)/A158117(n)]` -/
def P16169604137260436278.Spec : Prop :=
  ∀ n, P16169604137260436278.a n = (A230782 (n + 1) : ℚ)

end A230782

/-! ## A230782.P4048640172782602638

`record[Δ[A230787(n+1)]-A230787(n+1)²]`
-/

namespace A230782.P4048640172782602638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A230787 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230782.P4048640172782602638

namespace A230782

/-- `record[Δ[A230787(n+1)]-A230787(n+1)²]` -/
def P4048640172782602638.Spec : Prop :=
  ∀ n, P4048640172782602638.a n = A230782 (n + 1)

end A230782

/-!
# A230783: Number of nX3 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230783, there is no canonical definition to state claims against.
-/

/-! ## A230783.P4823508914694552544

`A230787(∑[n+2]+4)`
-/

namespace A230783.P4823508914694552544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A230783.P4823508914694552544

/-! ## A230783.P16939368882714409215

`lcm(2, A230787(A167499(n)+n))`
-/

namespace A230783.P16939368882714409215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230787 (A167499 n + (n : ℤ)).toNat)

end

end A230783.P16939368882714409215

/-! ## A230783.P15580229501718252950

`A230787(A167614(n+1))+A188510(2*n)`
-/

namespace A230783.P15580229501718252950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A167614 (n + 1)).toNat + A188510 (2 * n)

end

end A230783.P15580229501718252950

/-! ## A230783.P6589184510651408080

`record[char[A141214(n)]*A230787(n+1)]`
-/

namespace A230783.P6589184510651408080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A230787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230783.P6589184510651408080

/-! ## A230783.P14493853723149325288

`record[A194702(n+1)*A230787(n+1)]`
-/

namespace A230783.P14493853723149325288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194702 (n + 1) * A230787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230783.P14493853723149325288

/-!
# A230784: Number of nX4 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230784, there is no canonical definition to state claims against.
-/

/-! ## A230784.P4939641087003369167

`A230787(A374004(n+1))`
-/

namespace A230784.P4939641087003369167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A374004 (n + 1)).toNat

end

end A230784.P4939641087003369167

/-! ## A230784.P16638085570862970968

`A230787(A055999(n)+10)`
-/

namespace A230784.P16638085570862970968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A055999 n + 10).toNat

end

end A230784.P16638085570862970968

/-! ## A230784.P6950123145561101678

`A230787(A167614(n+2)+1)`
-/

namespace A230784.P6950123145561101678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A167614 (n + 2) + 1).toNat

end

end A230784.P6950123145561101678

/-! ## A230784.P7588313045341665384

`A230787(Δ[A023545(n+1)-n²])`
-/

namespace A230784.P7588313045341665384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (f1 (n + 1) - f1 n).toNat

end

end A230784.P7588313045341665384

/-! ## A230784.P2514084240630231088

`A230787(A141214(n+1))`
-/

namespace A230784.P2514084240630231088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A141214 (n + 1)).toNat

end

end A230784.P2514084240630231088

/-!
# A230785: Number of nX5 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230785, there is no canonical definition to state claims against.
-/

/-! ## A230785.P12454611232100051061

`A230787(A374005(n+1))`
-/

namespace A230785.P12454611232100051061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A374005 (n + 1)).toNat

end

end A230785.P12454611232100051061

/-! ## A230785.P15486275347248282705

`A230787(Δ[A023545(n+1)])`
-/

namespace A230785.P15486275347248282705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (f1 (n + 1) - f1 n).toNat

end

end A230785.P15486275347248282705

/-! ## A230785.P12145290673014977351

`record[A230787(A080605(n+1)+A013322(n+1))]`
-/

namespace A230785.P12145290673014977351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A080605 (n + 1) + A013322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230785.P12145290673014977351

/-!
# A230786: Number of nX6 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230786, there is no canonical definition to state claims against.
-/

/-! ## A230786.P18352110697071685234

`A230787(A374007(n+1))`
-/

namespace A230786.P18352110697071685234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A374007 (n + 1)).toNat

end

end A230786.P18352110697071685234

/-! ## A230786.P7809908629591437128

`A230787(A000217(n+5)+6)`
-/

namespace A230786.P7809908629591437128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (A000217 (n + 5) + 6).toNat

end

end A230786.P7809908629591437128

/-! ## A230786.P6126258309846186124

`A230787(eq[6, A200370(n+1)])`
-/

namespace A230786.P6126258309846186124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230786.P6126258309846186124

/-!
# A230787: T(n,k)=Number of nXk 0..3 arrays x(i,j) with each element horizontally, vertically, diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230787, there is no canonical definition to state claims against.
-/

/-! ## A230787.P14726644474812988705

`A022173(n)-A010877(A022183(n))`
-/

namespace A230787.P14726644474812988705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 n - A010877 (A022183 n).toNat

end

end A230787.P14726644474812988705

/-! ## A230787.P12300914202314635250

`A120647(lcm(4, A120641(n+1)))`
-/

namespace A230787.P12300914202314635250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120647 (Int.lcm 4 (A120641 (n + 1)))

end

end A230787.P12300914202314635250

/-! ## A230787.P14296567804305270922

`(A212083(2*n+3)+1)%A176627(n)`
-/

namespace A230787.P14296567804305270922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212083 (2 * n + 3) + 1) (A176627 n)

end

end A230787.P14296567804305270922

/-! ## A230787.P16830430533771216802

`lcm(A005578(n), A286133(A045723(n)))`
-/

namespace A230787.P16830430533771216802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005578 n) (A286133 (A045723 n).toNat)

end

end A230787.P16830430533771216802

/-! ## A230787.P16513879083572247996

`and(A138484(A014337(n)), A157150(n))`
-/

namespace A230787.P16513879083572247996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A138484 (A014337 n).toNat) (A157150 n)

end

end A230787.P16513879083572247996

/-!
# A230788: 

The programs for A230788, there is no canonical definition to state claims against.
-/

/-! ## A230788.P16631197062466198622

`A230796((n+1)²+n²)`
-/

namespace A230788.P16631197062466198622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 ((n + 1) ^ 2 + n ^ 2)

end

end A230788.P16631197062466198622

/-! ## A230788.P1369082720654014786

`lcm(2, A230796(A001844(n)))`
-/

namespace A230788.P1369082720654014786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A230796 (A001844 n).toNat)

end

end A230788.P1369082720654014786

/-! ## A230788.P15751627346286324398

`record[A230796(A330613(n+1))]`
-/

namespace A230788.P15751627346286324398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230788.P15751627346286324398

/-!
# A230789: Number of (n+3)X(1+3) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230789, there is no canonical definition to state claims against.
-/

/-! ## A230789.P1104065524383582874

`(2*A230942(n+1))²`
-/

namespace A230789.P1104065524383582874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230942 (n + 1)) ^ 2

end

end A230789.P1104065524383582874

/-! ## A230789.P16529159829773407173

`(A230942(n+1)+A230942(A051597(∑[n])))²`
-/

namespace A230789.P16529159829773407173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230942 (n + 1) + A230942 (A051597 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) ^ 2

end

end A230789.P16529159829773407173

/-! ## A230789.P11353270138118522575

`(2*A231023(∑[n]+1))²`
-/

namespace A230789.P11353270138118522575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A231023 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ^ 2

end

end A230789.P11353270138118522575

/-! ## A230789.P4858215691227018611

`A230796(∑[n]+1)`
-/

namespace A230789.P4858215691227018611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230789.P4858215691227018611

/-! ## A230789.P8278752640577363585

`record[A010054(n)*A230796(n+1)]`
-/

namespace A230789.P8278752640577363585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230789.P8278752640577363585

/-!
# A230790: Number of (n+3)X(2+3) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230790, there is no canonical definition to state claims against.
-/

/-! ## A230790.P18444425233108152395

`4*A230943(n+1)*A231020(n+1)`
-/

namespace A230790.P18444425233108152395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A230943 (n + 1) * A231020 (n + 1))

end

end A230790.P18444425233108152395

/-! ## A230790.P14158694214271501298

`A230796(∑[n+1]+2)`
-/

namespace A230790.P14158694214271501298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A230790.P14158694214271501298

/-! ## A230790.P10835299954308273850

`record[A010054(n)*A230796(n+2)]`
-/

namespace A230790.P10835299954308273850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A230796 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230790.P10835299954308273850

/-! ## A230790.P4953209291876181709

`record[A230796(Δ[A003453(n+5)])]`
-/

namespace A230790.P4953209291876181709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230790.P4953209291876181709

/-! ## A230790.P6517776717007081964

`record[gcd(A230796(n+2), A295028(n+3))]`
-/

namespace A230790.P6517776717007081964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A230796 (n + 2)) (A295028 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230790.P6517776717007081964

/-!
# A230791: Number of (n+3)X(3+3) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230791, there is no canonical definition to state claims against.
-/

/-! ## A230791.P13049197362819193842

`(2*A230944(n+1))²`
-/

namespace A230791.P13049197362819193842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230944 (n + 1)) ^ 2

end

end A230791.P13049197362819193842

/-! ## A230791.P5286004689536798228

`A230796(A167614(n+1))`
-/

namespace A230791.P5286004689536798228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A167614 (n + 1)).toNat

end

end A230791.P5286004689536798228

/-! ## A230791.P566584671586495686

`A230796(eq[2, A002262(abs(n-1))])`
-/

namespace A230791.P566584671586495686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A230791.P566584671586495686

/-! ## A230791.P9625940011131390613

`A230796(∑[n+3]+1)`
-/

namespace A230791.P9625940011131390613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A230791.P9625940011131390613

/-!
# A230792: Number of (n+3)X(4+3) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230792, there is no canonical definition to state claims against.
-/

/-! ## A230792.P12337359806109401200

`A230796(A141214(n)+7)`
-/

namespace A230792.P12337359806109401200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A141214 n + 7).toNat

end

end A230792.P12337359806109401200

/-! ## A230792.P5130211376924480875

`A230796(A141214(n+1))`
-/

namespace A230792.P5130211376924480875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A141214 (n + 1)).toNat

end

end A230792.P5130211376924480875

/-! ## A230792.P9025739563744622101

`A230796(A155212(n)+5)`
-/

namespace A230792.P9025739563744622101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A155212 n + 5).toNat

end

end A230792.P9025739563744622101

/-! ## A230792.P11080392697113549940

`A230796(A056000(n)+7)`
-/

namespace A230792.P11080392697113549940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A056000 n + 7).toNat

end

end A230792.P11080392697113549940

/-! ## A230792.P5477142980827386822

`A230796(A115744(n+1)+4)`
-/

namespace A230792.P5477142980827386822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A115744 (n + 1) + 4).toNat

end

end A230792.P5477142980827386822

/-!
# A230793: 

The programs for A230793, there is no canonical definition to state claims against.
-/

/-! ## A230793.P14604305559289716376

`(2*A230946(n+1))²`
-/

namespace A230793.P14604305559289716376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230946 (n + 1)) ^ 2

end

end A230793.P14604305559289716376

/-! ## A230793.P9554950190996738229

`(2*A230946(n+1))^A014963(A020707(n))`
-/

namespace A230793.P9554950190996738229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A230946 (n + 1) : ℚ) ^ (A014963 (A020707 n).toNat : ℤ)

end

end A230793.P9554950190996738229

/-! ## A230793.P9298956260634427012

`A230796(Δ[A264443(n)])`
-/

namespace A230793.P9298956260634427012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (f1 (n + 1) - f1 n).toNat

end

end A230793.P9298956260634427012

/-!
# A230795: 

The programs for A230795, there is no canonical definition to state claims against.
-/

/-! ## A230795.P17147323019670127979

`(2*A230948(n+1))²`
-/

namespace A230795.P17147323019670127979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A230948 (n + 1)) ^ 2

end

end A230795.P17147323019670127979

/-! ## A230795.P14264303345164327814

`A230796(A055999(n+4))`
-/

namespace A230795.P14264303345164327814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A055999 (n + 4)).toNat

end

end A230795.P14264303345164327814

/-! ## A230795.P1702284889184472842

`A230796(Δ[A026054(n+4)])`
-/

namespace A230795.P1702284889184472842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (f1 (n + 1) - f1 n).toNat

end

end A230795.P1702284889184472842

/-! ## A230795.P3373316109912146100

`A230796(A000217(n+6)+7)`
-/

namespace A230795.P3373316109912146100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230796 (A000217 (n + 6) + 7).toNat

end

end A230795.P3373316109912146100

/-!
# A230796: T(n,k)=Number of (n+3)X(k+3) 0..3 arrays x(i,j) with each element diagonally or antidiagonally next to at least one element with value (x(i,j)+1) mod 4, and upper left element zero.

The programs for A230796, there is no canonical definition to state claims against.
-/

/-! ## A230796.P14913532562203698413

`4*A230949(n+1)*A231023(n+1)`
-/

namespace A230796.P14913532562203698413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A230949 (n + 1) * A231023 (n + 1))

end

end A230796.P14913532562203698413

/-! ## A230796.P13709277957717543942

`A008574(A230949(n+1))*A231023(n+1)`
-/

namespace A230796.P13709277957717543942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A230949 (n + 1)).toNat * A231023 (n + 1)

end

end A230796.P13709277957717543942

/-! ## A230796.P15552782751535946376

`4*A231023(n+1)%A227041(A204076(n+1))*A231023(n+1)`
-/

namespace A230796.P15552782751535946376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (Int.tmod (A231023 (n + 1)) (A227041 (A204076 (n + 1)).toNat) * A231023 (n + 1))

end

end A230796.P15552782751535946376

/-! ## A230796.P15585803076220075926

`A231023(n+1)%A101884(A231023(n+2))*A008574(A231023(n+1))`
-/

namespace A230796.P15585803076220075926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A231023 (n + 1)) (A101884 (A231023 (n + 2)).toNat) * A008574 (A231023 (n + 1)).toNat

end

end A230796.P15585803076220075926

/-!
# A230797: Number T(n,k) of permutations of [n] with exactly k (possibly overlapping) occurrences of the consecutive step pattern up, down, up, down; triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-3)/2)), read by rows.

The programs for A230797, there is no canonical definition to state claims against.
-/

/-! ## A230797.P1565010069900546726

`and(n!, A004275(A294506(n)))`
-/

namespace A230797.P1565010069900546726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A004275 (A294506 n).toNat)

end

end A230797.P1565010069900546726

/-! ## A230797.P12239231590660831321

`and(n!, A198277(A198273(2*(n+1))))`
-/

namespace A230797.P12239231590660831321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A198277 (A198273 (2 * (n + 1))).toNat)

end

end A230797.P12239231590660831321

/-! ## A230797.P2603634704847592132

`and(A000142(n), A233279(A048631(n)))`
-/

namespace A230797.P2603634704847592132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000142 n) (A233279 (A048631 n).toNat)

end

end A230797.P2603634704847592132

/-! ## A230797.P18035830008456484459

`and(A000142(n), A004275(A294506(n)))`
-/

namespace A230797.P18035830008456484459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000142 n) (A004275 (A294506 n).toNat)

end

end A230797.P18035830008456484459

/-!
# A230798: The number of distinct coefficients in the n-th cyclotomic polynomial.

The programs for A230798, there is no canonical definition to state claims against.
-/

/-! ## A230798.P5903908289609379646

`A001227(n+1)-A049347(A029744(n+1))`
-/

namespace A230798.P5903908289609379646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A049347 (A029744 (n + 1)).toNat

end

end A230798.P5903908289609379646

/-! ## A230798.P17488166753636779807

`A318874(n+1)-A049347(A029744(n+1))`
-/

namespace A230798.P17488166753636779807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1) - A049347 (A029744 (n + 1)).toNat

end

end A230798.P17488166753636779807

/-! ## A230798.P9830130509530635195

`A010892(A027383(n))+∑{d}[n+1, #%2]`
-/

namespace A230798.P9830130509530635195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A027383 n).toNat + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A230798.P9830130509530635195

/-! ## A230798.P15370674344697980309

`A001227(n+1)-A010892(A162255(n+1))`
-/

namespace A230798.P15370674344697980309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A010892 (A162255 (n + 1)).toNat

end

end A230798.P15370674344697980309

/-! ## A230798.P18080566256088560609

`A327500(6*A319352(n+1))`
-/

namespace A230798.P18080566256088560609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (6 * A319352 (n + 1)).toNat

end

end A230798.P18080566256088560609

/-!
# A230799: The number of distinct nonzero coefficients in the n-th cyclotomic polynomial.

The programs for A230799, there is no canonical definition to state claims against.
-/

/-! ## A230799.P820737789171493576

`A028310(A345079(n+1))`
-/

namespace A230799.P820737789171493576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A345079 (n + 1)).toNat

end

end A230799.P820737789171493576

/-! ## A230799.P5438023185504465554

`A345079(n+1)+A010051(n+1)`
-/

namespace A230799.P5438023185504465554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345079 (n + 1) + A010051 (n + 1)

end

end A230799.P5438023185504465554

/-! ## A230799.P9732099222283601126

`A000005(A000010(2^A345079(n+1)))`
-/

namespace A230799.P9732099222283601126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A345079 (n + 1) : ℤ))).toNat).toNat

end

end A230799.P9732099222283601126

/-! ## A230799.P2641920756514670959

`A000196(A345079(n+1)*A345079(n+1)+1)`
-/

namespace A230799.P2641920756514670959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A345079 (n + 1) * A345079 (n + 1) + 1).toNat

end

end A230799.P2641920756514670959

/-! ## A230799.P4365245886571094262

`A001221(A008292(A048669(n+1)²+1)+5)`
-/

namespace A230799.P4365245886571094262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008292 (A048669 (n + 1) ^ 2 + 1).toNat + 5).toNat

end

end A230799.P4365245886571094262

/-! ## A230799.P9705603412235256818

`A001221(A048669(n+1)+4^A048669(n+1)+1)`
-/

namespace A230799.P9705603412235256818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A048669 (n + 1) : ℚ) + (4 : ℚ) ^ (A048669 (n + 1) : ℤ) + 1)).toNat

end

end A230799.P9705603412235256818

/-! ## A230799.P1970307393861651138

`gcd(A345079(n+1), A351708(n+1))`
-/

namespace A230799.P1970307393861651138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345079 (n + 1)) (A351708 (n + 1))

end

end A230799.P1970307393861651138

/-! ## A230799.P530721902731696993

`A120614(12^A345079(n+1))`
-/

namespace A230799.P530721902731696993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120614 (SequenceMachineLib.roundAway ((12 : ℚ) ^ (A345079 (n + 1) : ℤ))).toNat

end

end A230799.P530721902731696993

/-! ## A230799.P3870074094061333911

`A001684(A345079(n+1)^A345079(n+1))`
-/

namespace A230799.P3870074094061333911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001684 (SequenceMachineLib.roundAway ((A345079 (n + 1) : ℚ) ^ (A345079 (n + 1) : ℤ))).toNat

end

end A230799.P3870074094061333911

/-! ## A230799.P15295350034888088980

`A007421(A140651(n+1))`
-/

namespace A230799.P15295350034888088980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (A140651 (n + 1)).toNat

end

end A230799.P15295350034888088980

/-! ## A230799.P1810997540960846895

`A345079((n+1)²)`
-/

namespace A230799.P1810997540960846895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345079 ((n + 1) ^ 2)

end

end A230799.P1810997540960846895

/-! ## A230799.P14958011819775811332

`2-A346485((n+1)²)`
-/

namespace A230799.P14958011819775811332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A346485 ((n + 1) ^ 2)

end

end A230799.P14958011819775811332

/-! ## A230799.P3826702665751198776

`ceil(cot(tanh(A014963(n+1))))`
-/

namespace A230799.P3826702665751198776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (Real.tanh (A014963 (n + 1) : ℝ))⌉

end

end A230799.P3826702665751198776

/-! ## A230799.P2740056095866860895

`dr(A345079(∑[2*n+1]))`
-/

namespace A230799.P2740056095866860895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A345079 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A230799.P2740056095866860895

/-! ## A230799.P17394711315962312913

`A007423(A066048(n+1))`
-/

namespace A230799.P17394711315962312913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A066048 (n + 1)).toNat

end

end A230799.P17394711315962312913

/-! ## A230799.P1665284263508270407

`A007423(A014963(n+1)²)`
-/

namespace A230799.P1665284263508270407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A014963 (n + 1) ^ 2).toNat

end

end A230799.P1665284263508270407

/-! ## A230799.P15565141658619654251

`A035214(A014963(n+1)²)`
-/

namespace A230799.P15565141658619654251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A014963 (n + 1) ^ 2).toNat

end

end A230799.P15565141658619654251

/-! ## A230799.P13344148793685616541

`A007423(A100994((n+1)²))`
-/

namespace A230799.P13344148793685616541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A100994 ((n + 1) ^ 2)).toNat

end

end A230799.P13344148793685616541

/-! ## A230799.P2743864319196002212

`A096226(A014963(n+1)²)`
-/

namespace A230799.P2743864319196002212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096226 (A014963 (n + 1) ^ 2).toNat

end

end A230799.P2743864319196002212

