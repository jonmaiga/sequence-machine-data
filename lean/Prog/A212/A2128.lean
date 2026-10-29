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
import Seq.B000.C022
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
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B011.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A212800: Number of spanning trees of the (n,n)-torus grid graph.

The programs for A212800, there is no canonical definition to state claims against.
-/

/-! ## A212800.P10423928671765397755

`A212796((n+1)²+n²)`
-/

namespace A212800.P10423928671765397755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212796 ((n + 1) ^ 2 + n ^ 2)

end

end A212800.P10423928671765397755

/-! ## A212800.P9255384896143816048

`(n+1)²*A340562(n+1)`
-/

namespace A212800.P9255384896143816048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A340562 (n + 1)

end

end A212800.P9255384896143816048

/-!
# A212801: Square array read by antidiagonals: T(m,n) = number of Eulerian circuits in the Cartesian product of two directed cycles of lengths m and n.

The programs for A212801, there is no canonical definition to state claims against.
-/

/-! ## A212801.P8166051536924831045

`A253672(A378666(n))`
-/

namespace A212801.P8166051536924831045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253672 (A378666 n).toNat

end

end A212801.P8166051536924831045

/-! ## A212801.P3130873735874992486

`A004481(A022173(n)+1)`
-/

namespace A212801.P3130873735874992486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A022173 n + 1).toNat

end

end A212801.P3130873735874992486

/-! ## A212801.P8518584372105864744

`A004481(or(1, A022173(n)))`
-/

namespace A212801.P8518584372105864744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (Int.lor 1 (A022173 n)).toNat

end

end A212801.P8518584372105864744

/-! ## A212801.P3031818420091010986

`A022167(n)-A321797(A156950(n))`
-/

namespace A212801.P3031818420091010986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A321797 (A156950 n).toNat

end

end A212801.P3031818420091010986

/-! ## A212801.P6219241173430636536

`A022167(n)-A321797(A157641(n))`
-/

namespace A212801.P6219241173430636536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n - A321797 (A157641 n).toNat

end

end A212801.P6219241173430636536

/-!
# A212802: Row 5 of array in A212801.

The programs for A212802, there is no canonical definition to state claims against.
-/

/-! ## A212802.P4810202838266879952

`A212801(Δ[A264443(n)])`
-/

namespace A212802.P4810202838266879952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (f1 (n + 1) - f1 n).toNat

end

end A212802.P4810202838266879952

/-! ## A212802.P11711035964450393793

`A212801(A374005(n+1))`
-/

namespace A212802.P11711035964450393793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (A374005 (n + 1)).toNat

end

end A212802.P11711035964450393793

/-! ## A212802.P4354831089883728122

`A212801(eq[4, A193592(n)])`
-/

namespace A212802.P4354831089883728122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212802.P4354831089883728122

/-! ## A212802.P16697923245311145322

`A212801(Δ[A023545(n+1)])`
-/

namespace A212802.P16697923245311145322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (f1 (n + 1) - f1 n).toNat

end

end A212802.P16697923245311145322

/-! ## A212802.P72324210227993578

`A212801(A246172(n+1)+10)`
-/

namespace A212802.P72324210227993578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 (A246172 (n + 1) + 10).toNat

end

end A212802.P72324210227993578

/-!
# A212803: Number of Eulerian circuits in the Cartesian product of two directed cycles of lengths n.

The programs for A212803, there is no canonical definition to state claims against.
-/

/-! ## A212803.P2820933521723281314

`A212801((n+1)²+n²)`
-/

namespace A212803.P2820933521723281314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212801 ((n + 1) ^ 2 + n ^ 2)

end

end A212803.P2820933521723281314

/-! ## A212803.P11082434852044589805

`lcm(n+1, A212801(A001844(n)))`
-/

namespace A212803.P11082434852044589805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A212801 (A001844 n).toNat)

end

end A212803.P11082434852044589805

/-! ## A212803.P2934439811499683806

`A133707(n+1)*A212801(A001844(n))`
-/

namespace A212803.P2934439811499683806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A212801 (A001844 n).toNat

end

end A212803.P2934439811499683806

/-! ## A212803.P4986408687501553717

`and(A001478(n+1), A212801(A001844(n)))`
-/

namespace A212803.P4986408687501553717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001478 (n + 1)) (A212801 (A001844 n).toNat)

end

end A212803.P4986408687501553717

/-! ## A212803.P17266700464102718355

`A212801(A001844(n))^(A000040(n+1)%2)`
-/

namespace A212803.P17266700464102718355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212801 (A001844 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A212803.P17266700464102718355

/-!
# A212804: Expansion of (1 - x)/(1 - x - x^2).

The programs for A212804, the canonical program `A212804.P11720252403142705008` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212804 has offset 0).

The definition of A212804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-x-x^2))` (program `A212804.P11720252403142705008`, by `A212804.P11720252403142705008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212804.P11720252403142705008

`ogf((1-x)/(1-x-x^2))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212804

/-- `ogf((1-x)/(1-x-x^2))` -/
def P11720252403142705008.Spec : Prop :=
  ∀ n, P11720252403142705008.a n = A212804 n

theorem P11720252403142705008.correct : P11720252403142705008.Spec := by
  intro n
  simp only [A212804]

end A212804

/-! ## A212804.P15622913077748466627

`A000045(n+1)-A000045(n)`
-/

namespace A212804.P15622913077748466627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A000045 n

end

end A212804.P15622913077748466627

namespace A212804

/-- `A000045(n+1)-A000045(n)` -/
def P15622913077748466627.Spec : Prop :=
  ∀ n, P15622913077748466627.a n = A212804 n

end A212804

/-! ## A212804.P15373969103650635305

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A212804.P15373969103650635305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A212804.P15373969103650635305

namespace A212804

/-- `round(ϕ*a(n-1))` -/
def P15373969103650635305.Spec : Prop :=
  ∀ n, P15373969103650635305.a n = A212804 n

end A212804

/-! ## A212804.P4981700402857348297

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A212804.P4981700402857348297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + a (n - 2)

end

end A212804.P4981700402857348297

namespace A212804

/-- `a(n-1)+a(n-2)` -/
def P4981700402857348297.Spec : Prop :=
  ∀ n, (P4981700402857348297.a n : ℤ) = A212804 n

end A212804

/-! ## A212804.P8691522331044939007

`a(n-1)-floor(-a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212804.P8691522331044939007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A212804.P8691522331044939007

namespace A212804

/-- `a(n-1)-floor(-a(n-2))` -/
def P8691522331044939007.Spec : Prop :=
  ∀ n, P8691522331044939007.a n = A212804 n

end A212804

/-! ## A212804.P9815597707920291982

`a(n-1)-ceil(-a(n-2))` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A212804.P9815597707920291982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A212804.P9815597707920291982

namespace A212804

/-- `a(n-1)-ceil(-a(n-2))` -/
def P9815597707920291982.Spec : Prop :=
  ∀ n, P9815597707920291982.a n = A212804 n

end A212804

/-! ## A212804.P8287313830075337026

`a(n-1)-round(-a(n-2))` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A212804.P8287313830075337026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A212804.P8287313830075337026

namespace A212804

/-- `a(n-1)-round(-a(n-2))` -/
def P8287313830075337026.Spec : Prop :=
  ∀ n, P8287313830075337026.a n = A212804 n

end A212804

/-! ## A212804.P10376837445514695215

`a(n-1)-(char[1]-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A212804.P10376837445514695215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A212804.P10376837445514695215

namespace A212804

/-- `a(n-1)-(char[1]-a(n-2))` -/
def P10376837445514695215.Spec : Prop :=
  ∀ n, P10376837445514695215.a n = A212804 n

end A212804

/-! ## A212804.P17961164849375283218

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212804.P17961164849375283218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A212804.P17961164849375283218

namespace A212804

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P17961164849375283218.Spec : Prop :=
  ∀ n, P17961164849375283218.a n = A212804 n

end A212804

/-! ## A212804.P16725265171599249592

`n-∑[a(n-1)-(1-a(n-2))]` with `a(0)=-1, a(1)=2`
-/

namespace A212804.P16725265171599249592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212804.P16725265171599249592

namespace A212804

/-- `n-∑[a(n-1)-(1-a(n-2))]` -/
def P16725265171599249592.Spec : Prop :=
  ∀ n, P16725265171599249592.a n = A212804 n

end A212804

/-! ## A212804.P14154234776495236251

`2-(4/2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A212804.P14154234776495236251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2))

end

end A212804.P14154234776495236251

namespace A212804

/-- `2-(4/2-a(n-1)-a(n-2))` -/
def P14154234776495236251.Spec : Prop :=
  ∀ n, P14154234776495236251.a n = (A212804 n : ℚ)

end A212804

/-! ## A212804.P11610308720325338545

`A247049(3*n)`
-/

namespace A212804.P11610308720325338545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (3 * n)

end

end A212804.P11610308720325338545

namespace A212804

/-- `A247049(3*n)` -/
def P11610308720325338545.Spec : Prop :=
  ∀ n, P11610308720325338545.a n = A212804 n

end A212804

/-! ## A212804.P15493593187433142114

`abs(A119282(n)+1)`
-/

namespace A212804.P15493593187433142114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119282 n + 1|

end

end A212804.P15493593187433142114

namespace A212804

/-- `abs(A119282(n)+1)` -/
def P15493593187433142114.Spec : Prop :=
  ∀ n, P15493593187433142114.a n = A212804 n

end A212804

/-! ## A212804.P18421016736913466708

`abs(A152163(n+1))`
-/

namespace A212804.P18421016736913466708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152163 (n + 1)|

end

end A212804.P18421016736913466708

namespace A212804

/-- `abs(A152163(n+1))` -/
def P18421016736913466708.Spec : Prop :=
  ∀ n, P18421016736913466708.a n = A212804 n

end A212804

/-! ## A212804.P16018925870947426493

`A000045(abs(1-n))`
-/

namespace A212804.P16018925870947426493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

end

end A212804.P16018925870947426493

namespace A212804

/-- `A000045(abs(1-n))` -/
def P16018925870947426493.Spec : Prop :=
  ∀ n, P16018925870947426493.a n = A212804 n

end A212804

/-! ## A212804.P9252921688473353130

`A210673(n+1)+n`
-/

namespace A212804.P9252921688473353130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210673 (n + 1) + (n : ℤ)

end

end A212804.P9252921688473353130

namespace A212804

/-- `A210673(n+1)+n` -/
def P9252921688473353130.Spec : Prop :=
  ∀ n, P9252921688473353130.a n = A212804 n

end A212804

/-! ## A212804.P16571318326197535093

`∑{d}[1-n, A007436(#)]`
-/

namespace A212804.P16571318326197535093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007436 d

end

end A212804.P16571318326197535093

namespace A212804

/-- `∑{d}[1-n, A007436(#)]` -/
def P16571318326197535093.Spec : Prop :=
  ∀ n, P16571318326197535093.a n = A212804 n

end A212804

/-! ## A212804.P5348460582805472980

`abs(A051792(2*n+1))`
-/

namespace A212804.P5348460582805472980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051792 (2 * n + 1)|

end

end A212804.P5348460582805472980

namespace A212804

/-- `abs(A051792(2*n+1))` -/
def P5348460582805472980.Spec : Prop :=
  ∀ n, P5348460582805472980.a n = A212804 n

end A212804

/-! ## A212804.P14785224055677463247

`a(and(2, n²))*A000045(n-1)` with `a(0)=1`
-/

namespace A212804.P14785224055677463247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.land 2 (n ^ 2)) * A000045 (n - 1)

end

end A212804.P14785224055677463247

namespace A212804

/-- `a(and(2, n²))*A000045(n-1)` -/
def P14785224055677463247.Spec : Prop :=
  ∀ n, P14785224055677463247.a n = A212804 n

end A212804

/-!
# A212805: a(n) = (1-(n-1)/2^n)*(n!)^n.

The programs for A212805, the canonical program `A212805.P2990887031459960856` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212805 has offset 0).

The definition of A212805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212805.P2990887031459960856

`(1-(n-1)/2^n)*n!^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212805

/-- `(1-(n-1)/2^n)*n!^n` -/
def P2990887031459960856.Spec : Prop :=
  ∀ n, P2990887031459960856.a n = (A212805 n : ℚ)

end A212805

/-!
# A212806: Number of n X n matrices in which each row is a permutation of [1..n] and which contain no column rises.

The programs for A212806, there is no canonical definition to state claims against.
-/

/-! ## A212806.P15892519862638937479

`A212855(∑[4*n]+1)`
-/

namespace A212806.P15892519862638937479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212806.P15892519862638937479

/-! ## A212806.P13662760111922413128

`or(1, A212855(A001844(n)))`
-/

namespace A212806.P13662760111922413128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A212855 (A001844 n).toNat)

end

end A212806.P13662760111922413128

/-!
# A212807: Number of ways to place 2n points on a 2n X 2n square array of points such that no three points are collinear and the configuration has 90-degree rotational symmetry.

The programs for A212807, there is no canonical definition to state claims against.
-/

/-! ## A212807.P1490394033335867193

`A037189(n+1)+char[(n-4)^n]`
-/

namespace A212807.P1490394033335867193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 4) ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037189 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A212807.P1490394033335867193

/-! ## A212807.P6446138394602097692

`xor(char[A374068(n)], A037189(n+1))`
-/

namespace A212807.P6446138394602097692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A037189 (n + 1))

end

end A212807.P6446138394602097692

/-! ## A212807.P5856441417027257074

`A121373(A187062(n+1))+A037189(n+1)`
-/

namespace A212807.P5856441417027257074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A187062 (n + 1)).toNat + A037189 (n + 1)

end

end A212807.P5856441417027257074

/-! ## A212807.P4823457077845460595

`or(A037189(n+1), A363711(A060131(3*n+4)))`
-/

namespace A212807.P4823457077845460595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037189 (n + 1)) (A363711 (A060131 (3 * n + 4)).toNat)

end

end A212807.P4823457077845460595

/-! ## A212807.P2764207736275159205

`A192490(A210068(n))+A037189(n+1)`
-/

namespace A212807.P2764207736275159205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (A210068 n).toNat + A037189 (n + 1)

end

end A212807.P2764207736275159205

/-!
# A212808: Irregular triangle read by rows: row n gives number of cycles of length k in map on Catalan family of size n.

The programs for A212808, there is no canonical definition to state claims against.
-/

/-! ## A212808.P14931349301012504114

`A138352(∑[A106476(2*n+1)])`
-/

namespace A212808.P14931349301012504114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106476 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212808.P14931349301012504114

/-!
# A212810: Iterate the morphism 1->122, 2->1112 starting with 1.

The programs for A212810, there is no canonical definition to state claims against.
-/

/-! ## A212810.P6358106159808935626

`A000002(A007088(n)+n%2+1)`
-/

namespace A212810.P6358106159808935626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A007088 n + ((n % 2 : ℕ) : ℤ) + 1).toNat

end

end A212810.P6358106159808935626

/-! ## A212810.P12205104169678578680

`A000002(A007088(n)+gcd(2, n+1))`
-/

namespace A212810.P12205104169678578680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A007088 n + (Nat.gcd 2 (n + 1) : ℤ)).toNat

end

end A212810.P12205104169678578680

/-! ## A212810.P13273230659662858263

`A000002(A007088(n)+A000034(n))`
-/

namespace A212810.P13273230659662858263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A007088 n + A000034 n).toNat

end

end A212810.P13273230659662858263

/-!
# A212811: Iterate the morphism 1->1123, 2->223, 3->133 starting with 1.

The programs for A212811, there is no canonical definition to state claims against.
-/

/-! ## A212811.P10110850719506655116

`A283319(n+1)+1`
-/

namespace A212811.P10110850719506655116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283319 (n + 1) + 1

end

end A212811.P10110850719506655116

/-! ## A212811.P16739538053445254757

`A023595(lcm(A023579(3*n+2), A023613(n+1)))`
-/

namespace A212811.P16739538053445254757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023595 (Int.lcm (A023579 (3 * n + 2)) (A023613 (n + 1)))

end

end A212811.P16739538053445254757

/-! ## A212811.P9769055721472985275

`and(11, A226343(2*n+3))%7`
-/

namespace A212811.P9769055721472985275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land 11 (A226343 (2 * n + 3))) 7

end

end A212811.P9769055721472985275

/-! ## A212811.P14908820686893952597

`A260449(A052430(n+1)-A052426(n+1))`
-/

namespace A212811.P14908820686893952597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A052430 (n + 1) - A052426 (n + 1)).toNat

end

end A212811.P14908820686893952597

/-! ## A212811.P14084741923570664648

`A108312(A338854(n))%4`
-/

namespace A212811.P14084741923570664648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108312 (A338854 n).toNat) 4

end

end A212811.P14084741923570664648

/-!
# A212813: Number of steps for n to reach 8 under iteration of the map i -> A036288(i), or -1 if 8 is never reached.

The programs for A212813, there is no canonical definition to state claims against.
-/

/-! ## A212813.P10181399097468509930

`A237720(n+1)-A143201(A358730(n+1))`
-/

namespace A212813.P10181399097468509930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237720 (n + 1) - A143201 (A358730 (n + 1)).toNat

end

end A212813.P10181399097468509930

/-!
# A212816: Numbers n such that A212813(n) = 2.

The programs for A212816, there is no canonical definition to state claims against.
-/

/-! ## A212816.P8329694657043987651

`eq[2, A212813(n+1)]+1`
-/

namespace A212816.P8329694657043987651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212816.P8329694657043987651

/-! ## A212816.P1160323400170185771

`eq[2, A212813(A028310(n))]`
-/

namespace A212816.P1160323400170185771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A212816.P1160323400170185771

/-! ## A212816.P4264270011548351420

`A020725(eq[2, A212813(n+1)])`
-/

namespace A212816.P4264270011548351420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212816.P4264270011548351420

/-! ## A212816.P8591366704226544450

`A065475(eq[2, A212813(n+1)])`
-/

namespace A212816.P8591366704226544450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212816.P8591366704226544450

/-! ## A212816.P1359922926174898991

`A114637(eq[2, A212813(n+1)])`
-/

namespace A212816.P1359922926174898991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212816.P1359922926174898991

/-!
# A212817: Theta series of direct sum of 2 copies of 4-dimensional lattice QQF.4.i.

The programs for A212817, there is no canonical definition to state claims against.
-/

/-! ## A212817.P3909370374162864887

`A160171(∑[∑[A143453(n)]])`
-/

namespace A212817.P3909370374162864887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143453 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160171 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212817.P3909370374162864887

/-!
# A212818: Number of numbers up to 10^n with an even number of not necessarily distinct prime factors, or positive Liouville function.

The programs for A212818, there is no canonical definition to state claims against.
-/

/-! ## A212818.P6693473777525939864

`10^n/2+A090410(n)/2`
-/

namespace A212818.P6693473777525939864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / 2 + (A090410 n : ℚ) / 2

end

end A212818.P6693473777525939864

/-! ## A212818.P14476667537430934811

`A011557(n)-A212819(n)`
-/

namespace A212818.P14476667537430934811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A212819 n

end

end A212818.P14476667537430934811

/-!
# A212819: Numbers up to 10^n with an odd number of prime factors, or negative Liouville function.

The programs for A212819, there is no canonical definition to state claims against.
-/

/-! ## A212819.P3268915419490202268

`10^n/2-A090410(n)/2`
-/

namespace A212819.P3268915419490202268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℚ) / 2 - (A090410 n : ℚ) / 2

end

end A212819.P3268915419490202268

/-! ## A212819.P8182008913754192309

`A011557(n)-A212818(n)`
-/

namespace A212819.P8182008913754192309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A212818 n

end

end A212819.P8182008913754192309

/-! ## A212819.P11027352161696518918

`A212818(n)-A090410(n)`
-/

namespace A212819.P11027352161696518918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212818 n - A090410 n

end

end A212819.P11027352161696518918

/-!
# A212820: Balanced primes which are the average of two successive semiprimes.

The programs for A212820, there is no canonical definition to state claims against.
-/

/-! ## A212820.P8281995530756529105

`∩[A006562(n+1), A103654(n+1)]`
-/

namespace A212820.P8281995530756529105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212820.P8281995530756529105

/-! ## A212820.P3672257713082903792

`∩[A103654(n+1), A225494(n+1)]`
-/

namespace A212820.P3672257713082903792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212820.P3672257713082903792

/-! ## A212820.P10094525962239672981

`∩[A075540(n+1), A103654(n+1)]`
-/

namespace A212820.P10094525962239672981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212820.P10094525962239672981

/-! ## A212820.P17078466137473297839

`∩[A103654(n+1), A216124(n+1)]`
-/

namespace A212820.P17078466137473297839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212820.P17078466137473297839

/-! ## A212820.P11166336239980619168

`∩[A006562(n+1), A109403(n+1)]`
-/

namespace A212820.P11166336239980619168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212820.P11166336239980619168

/-!
# A212821: Smallest prime p of the form p = 3^n + k, where k has n prime divisors counted with multiplicity.

The programs for A212821, there is no canonical definition to state claims against.
-/

/-! ## A212821.P17389900856199771261

`p?[A038833(n)%A045359(n+1)]`
-/

namespace A212821.P17389900856199771261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038833 n) (A045359 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A212821.P17389900856199771261

/-!
# A212823: Number of 0..2 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..2 order.

The programs for A212823, the canonical program `A212823.P17659278422770184725` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212823 has offset 1).

The definition of A212823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212823.P3477274412705255805

`ogf((-1+x^2+2x^3+x^4)/(-1+2x+2x^2))`
-/

namespace A212823.P3477274412705255805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -2, -1] [1, -2, -2] n

end

end A212823.P3477274412705255805

namespace A212823

/-- `ogf((-1+x^2+2x^3+x^4)/(-1+2x+2x^2))` -/
def P3477274412705255805.Spec : Prop :=
  ∀ n, P3477274412705255805.a n = A212823 (n + 1)

end A212823

/-! ## A212823.P17659278422770184725

`2*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12, a(4)=33`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212823

/-- `2*a(n-1)+2*a(n-2)` -/
def P17659278422770184725.Spec : Prop :=
  ∀ n, (P17659278422770184725.a n : ℤ) = A212823 (n + 1)

theorem P17659278422770184725.correct : P17659278422770184725.Spec := by
  intro n
  simp only [A212823, Nat.add_sub_cancel]

end A212823

/-! ## A212823.P18370388074659908129

`ceil(3/4*A002605(n+1))`
-/

namespace A212823.P18370388074659908129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) / 4 * (A002605 (n + 1) : ℚ)⌉

end

end A212823.P18370388074659908129

namespace A212823

/-- `ceil(3/4*A002605(n+1))` -/
def P18370388074659908129.Spec : Prop :=
  ∀ n, P18370388074659908129.a n = A212823 (n + 1)

end A212823

/-! ## A212823.P10858212220771071617

`ceil(A121907(n)/2)`
-/

namespace A212823.P10858212220771071617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121907 n : ℚ) / 2⌉

end

end A212823.P10858212220771071617

namespace A212823

/-- `ceil(A121907(n)/2)` -/
def P10858212220771071617.Spec : Prop :=
  ∀ n, P10858212220771071617.a n = A212823 (n + 1)

end A212823

/-! ## A212823.P6170789462016513266

`ceil(Δ[A052945(n)/2])`
-/

namespace A212823.P6170789462016513266
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052945 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A212823.P6170789462016513266

namespace A212823

/-- `ceil(Δ[A052945(n)/2])` -/
def P6170789462016513266.Spec : Prop :=
  ∀ n, P6170789462016513266.a n = A212823 (n + 1)

end A212823

/-! ## A212823.P12168499953593034674

`ceil(A083337(n+1)/4)`
-/

namespace A212823.P12168499953593034674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083337 (n + 1) : ℚ) / 4⌉

end

end A212823.P12168499953593034674

namespace A212823

/-- `ceil(A083337(n+1)/4)` -/
def P12168499953593034674.Spec : Prop :=
  ∀ n, P12168499953593034674.a n = A212823 (n + 1)

end A212823

/-! ## A212823.P12936392330478699855

`ceil(Δ[Δ[A155020(n)/2]])`
-/

namespace A212823.P12936392330478699855
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155020 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A212823.P12936392330478699855

namespace A212823

/-- `ceil(Δ[Δ[A155020(n)/2]])` -/
def P12936392330478699855.Spec : Prop :=
  ∀ n, P12936392330478699855.a n = A212823 (n + 1)

end A212823

/-! ## A212823.P18170184949830438356

`ceil(A232921(n+1)/12)`
-/

namespace A212823.P18170184949830438356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232921 (n + 1) : ℚ) / 12⌉

end

end A212823.P18170184949830438356

namespace A212823

/-- `ceil(A232921(n+1)/12)` -/
def P18170184949830438356.Spec : Prop :=
  ∀ n, P18170184949830438356.a n = A212823 (n + 1)

end A212823

/-! ## A212823.P4017160605743960068

`A212829(∑[n+2])`
-/

namespace A212823.P4017160605743960068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212823.P4017160605743960068

namespace A212823

/-- `A212829(∑[n+2])` -/
def P4017160605743960068.Spec : Prop :=
  ∀ n, P4017160605743960068.a n = A212823 (n + 1)

end A212823

/-!
# A212824: Number of 0..3 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..3 order.

The programs for A212824, the canonical program `A212824.P7299442159545022624` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212824 has offset 1).

The definition of A212824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212824.P8238423275284850448

`ogf((1-2x-4x^2-3x^3+x^4+3x^5+x^6)/(1-4x-x^2+6x^3+3x^4))`
-/

namespace A212824.P8238423275284850448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -4, -3, 1, 3, 1] [1, -4, -1, 6, 3] n

end

end A212824.P8238423275284850448

namespace A212824

/-- `ogf((1-2x-4x^2-3x^3+x^4+3x^5+x^6)/(1-4x-x^2+6x^3+3x^4))` -/
def P8238423275284850448.Spec : Prop :=
  ∀ n, P8238423275284850448.a n = A212824 (n + 1)

end A212824

/-! ## A212824.P7299442159545022624

`4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=13, a(4)=43, a(5)=152, a(6)=559`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212824

/-- `4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` -/
def P7299442159545022624.Spec : Prop :=
  ∀ n, P7299442159545022624.a n = A212824 (n + 1)

theorem P7299442159545022624.correct : P7299442159545022624.Spec := by
  intro n
  simp only [A212824, Nat.add_sub_cancel]

end A212824

/-! ## A212824.P10526369413334659617

`A212829(∑[n+3]+1)`
-/

namespace A212824.P10526369413334659617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212824.P10526369413334659617

namespace A212824

/-- `A212829(∑[n+3]+1)` -/
def P10526369413334659617.Spec : Prop :=
  ∀ n, P10526369413334659617.a n = A212824 (n + 1)

end A212824

/-! ## A212824.P9422149802092816333

`or(char[2], A212829(A052905(n)+3))`
-/

namespace A212824.P9422149802092816333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212829 (A052905 n + 3).toNat)

end

end A212824.P9422149802092816333

namespace A212824

/-- `or(char[2], A212829(A052905(n)+3))` -/
def P9422149802092816333.Spec : Prop :=
  ∀ n, P9422149802092816333.a n = A212824 (n + 1)

end A212824

/-! ## A212824.P11674580765171093913

`A212829(A052905(n)+3)%A002042(n)`
-/

namespace A212824.P11674580765171093913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212829 (A052905 n + 3).toNat) (A002042 n)

end

end A212824.P11674580765171093913

namespace A212824

/-- `A212829(A052905(n)+3)%A002042(n)` -/
def P11674580765171093913.Spec : Prop :=
  ∀ n, P11674580765171093913.a n = A212824 (n + 1)

end A212824

/-! ## A212824.P8085147356348836292

`A212829(A052905(n)+3)+char[A031752(n+1)]`
-/

namespace A212824.P8085147356348836292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A052905 n + 3).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A212824.P8085147356348836292

namespace A212824

/-- `A212829(A052905(n)+3)+char[A031752(n+1)]` -/
def P8085147356348836292.Spec : Prop :=
  ∀ n, P8085147356348836292.a n = A212824 (n + 1)

end A212824

/-! ## A212824.P4091151944700607279

`A133819(A000124(n))*A212829(A052905(n)+3)`
-/

namespace A212824.P4091151944700607279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (A000124 n).toNat * A212829 (A052905 n + 3).toNat

end

end A212824.P4091151944700607279

namespace A212824

/-- `A133819(A000124(n))*A212829(A052905(n)+3)` -/
def P4091151944700607279.Spec : Prop :=
  ∀ n, P4091151944700607279.a n = A212824 (n + 1)

end A212824

/-! ## A212824.P2902374937747465367

`A282230(A184389(n+1))+A212829(A052905(n)+3)`
-/

namespace A212824.P2902374937747465367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A184389 (n + 1)).toNat + A212829 (A052905 n + 3).toNat

end

end A212824.P2902374937747465367

namespace A212824

/-- `A282230(A184389(n+1))+A212829(A052905(n)+3)` -/
def P2902374937747465367.Spec : Prop :=
  ∀ n, P2902374937747465367.a n = A212824 (n + 1)

end A212824

/-!
# A212825: Number of 0..4 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..4 order.

The programs for A212825, the canonical program `A212825.P13394402181509651734` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212825 has offset 1).

The definition of A212825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212825.P13394402181509651734

`ogf((1-5x-2x^2+12x^3+18x^4+6x^5-12x^6-12x^7-3x^8)/(1-7x+7x^2+20x^3-10x^4-24x^5-8x^6))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212825

/-- `ogf((1-5x-2x^2+12x^3+18x^4+6x^5-12x^6-12x^7-3x^8)/(1-7x+7x^2+20x^3-10x^4-24x^5-8x^6))` -/
def P13394402181509651734.Spec : Prop :=
  ∀ n, P13394402181509651734.a n = A212825 (n + 1)

theorem P13394402181509651734.correct : P13394402181509651734.Spec := by
  intro n
  simp only [A212825, Nat.add_sub_cancel]

end A212825

/-! ## A212825.P17353077153251564458

`A212829(A055998(n+2))`
-/

namespace A212825.P17353077153251564458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A055998 (n + 2)).toNat

end

end A212825.P17353077153251564458

namespace A212825

/-- `A212829(A055998(n+2))` -/
def P17353077153251564458.Spec : Prop :=
  ∀ n, P17353077153251564458.a n = A212825 (n + 1)

end A212825

/-! ## A212825.P8121490493861600163

`A212829(A056000(n)+7)`
-/

namespace A212825.P8121490493861600163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A056000 n + 7).toNat

end

end A212825.P8121490493861600163

namespace A212825

/-- `A212829(A056000(n)+7)` -/
def P8121490493861600163.Spec : Prop :=
  ∀ n, P8121490493861600163.a n = A212825 (n + 1)

end A212825

/-! ## A212825.P9192691815529812293

`A212829(Δ[A034857(n+1)])`
-/

namespace A212825.P9192691815529812293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n).toNat

end

end A212825.P9192691815529812293

namespace A212825

/-- `A212829(Δ[A034857(n+1)])` -/
def P9192691815529812293.Spec : Prop :=
  ∀ n, P9192691815529812293.a n = A212825 (n + 1)

end A212825

/-! ## A212825.P15029488693614297930

`A212829(A052905(n+1)+2)`
-/

namespace A212825.P15029488693614297930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A052905 (n + 1) + 2).toNat

end

end A212825.P15029488693614297930

namespace A212825

/-- `A212829(A052905(n+1)+2)` -/
def P15029488693614297930.Spec : Prop :=
  ∀ n, P15029488693614297930.a n = A212825 (n + 1)

end A212825

/-! ## A212825.P6133501953833044988

`A212829(Δ[A008778(n+1)]-1)`
-/

namespace A212825.P6133501953833044988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n - 1).toNat

end

end A212825.P6133501953833044988

namespace A212825

/-- `A212829(Δ[A008778(n+1)]-1)` -/
def P6133501953833044988.Spec : Prop :=
  ∀ n, P6133501953833044988.a n = A212825 (n + 1)

end A212825

/-! ## A212825.P14497766371754444782

`A212829(A167614(n+1)+A005408(n))`
-/

namespace A212825.P14497766371754444782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A167614 (n + 1) + A005408 n).toNat

end

end A212825.P14497766371754444782

namespace A212825

/-- `A212829(A167614(n+1)+A005408(n))` -/
def P14497766371754444782.Spec : Prop :=
  ∀ n, P14497766371754444782.a n = A212825 (n + 1)

end A212825

/-!
# A212826: Number of 0..5 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..5 order.

The programs for A212826, there is no canonical definition to state claims against.
-/

/-! ## A212826.P13269974214495011912

`A212829(Δ[A264443(n)])`
-/

namespace A212826.P13269974214495011912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n).toNat

end

end A212826.P13269974214495011912

/-! ## A212826.P15595841720929871085

`A212829(A046691(n+3))`
-/

namespace A212826.P15595841720929871085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A046691 (n + 3)).toNat

end

end A212826.P15595841720929871085

/-! ## A212826.P5827794983743056595

`A212829(A056115(n)+11)`
-/

namespace A212826.P5827794983743056595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A056115 n + 11).toNat

end

end A212826.P5827794983743056595

/-! ## A212826.P13815992344553228709

`A212829(Δ[A023545(n+1)])`
-/

namespace A212826.P13815992344553228709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n).toNat

end

end A212826.P13815992344553228709

/-! ## A212826.P7021671242124418693

`A212829(A052905(n+2)+1)`
-/

namespace A212826.P7021671242124418693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A052905 (n + 2) + 1).toNat

end

end A212826.P7021671242124418693

/-! ## A212826.P11933991635355796447

`A212829(A000217(n+5)-4)`
-/

namespace A212826.P11933991635355796447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A000217 (n + 5) - 4).toNat

end

end A212826.P11933991635355796447

/-! ## A212826.P8678321080190377421

`A212829(Δ[A034857(n+2)]-1)`
-/

namespace A212826.P8678321080190377421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n - 1).toNat

end

end A212826.P8678321080190377421

/-! ## A212826.P11837288007403054620

`A212829(record[n+12-A212829(n+16)])`
-/

namespace A212826.P11837288007403054620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 12 : ℤ) - A212829 (n + 16)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A212826.P11837288007403054620

/-! ## A212826.P8738565337324654271

`A212829(A264443(n+1)-A264443(n))`
-/

namespace A212826.P8738565337324654271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A264443 (n + 1) - A264443 n).toNat

end

end A212826.P8738565337324654271

/-!
# A212827: Number of 0..6 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..6 order.

The programs for A212827, there is no canonical definition to state claims against.
-/

/-! ## A212827.P6186157935368220909

`A212829(A052905(n+3))`
-/

namespace A212827.P6186157935368220909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A052905 (n + 3)).toNat

end

end A212827.P6186157935368220909

/-! ## A212827.P4243985631287875081

`A212829(A000096(n+5)-4)`
-/

namespace A212827.P4243985631287875081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A000096 (n + 5) - 4).toNat

end

end A212827.P4243985631287875081

/-! ## A212827.P2372738252777930159

`A212829(A000124(n+6)-6)`
-/

namespace A212827.P2372738252777930159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A000124 (n + 6) - 6).toNat

end

end A212827.P2372738252777930159

/-! ## A212827.P16660587926797050550

`A212829(Δ[A023551(n+1)]+1)`
-/

namespace A212827.P16660587926797050550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n + 1).toNat

end

end A212827.P16660587926797050550

/-! ## A212827.P15417240703428397974

`A212829(Δ[A264443(n+1)]-1)`
-/

namespace A212827.P15417240703428397974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n - 1).toNat

end

end A212827.P15417240703428397974

/-! ## A212827.P1560235544149300776

`A212829(Δ[A023545(n+2)]-1)`
-/

namespace A212827.P1560235544149300776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n - 1).toNat

end

end A212827.P1560235544149300776

/-! ## A212827.P17731669173952319963

`A212829(A167499(n+3)+2*n+1)`
-/

namespace A212827.P17731669173952319963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A212827.P17731669173952319963

/-!
# A212828: Number of 0..7 arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..7 order.

The programs for A212828, there is no canonical definition to state claims against.
-/

/-! ## A212828.P14055417145255485170

`A212829(A055999(n+4))`
-/

namespace A212828.P14055417145255485170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A055999 (n + 4)).toNat

end

end A212828.P14055417145255485170

/-! ## A212828.P12291077504823742127

`A212829(A134227(n+5))`
-/

namespace A212828.P12291077504823742127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A134227 (n + 5)).toNat

end

end A212828.P12291077504823742127

/-! ## A212828.P15398928767269257938

`A212829(Δ[A023551(n+2)])`
-/

namespace A212828.P15398928767269257938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (f1 (n + 1) - f1 n).toNat

end

end A212828.P15398928767269257938

/-! ## A212828.P14144377046666234425

`A212829(A000217(n+7)-6)`
-/

namespace A212828.P14144377046666234425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A000217 (n + 7) - 6).toNat

end

end A212828.P14144377046666234425

/-! ## A212828.P6154737286409123098

`A212829(A000124(n+7)-7)`
-/

namespace A212828.P6154737286409123098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A000124 (n + 7) - 7).toNat

end

end A212828.P6154737286409123098

/-! ## A212828.P5600694989726332744

`A212829(A000096(n+5)+n+2)`
-/

namespace A212828.P5600694989726332744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A212828.P5600694989726332744

/-!
# A212829: T(n,k)=Number of 0..k arrays of length n with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..k order.

The programs for A212829, there is no canonical definition to state claims against.
-/

/-! ## A212829.P9061647582234152696

`A225644(A002260(n+1)*A263693(n+1))`
-/

namespace A212829.P9061647582234152696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A002260 (n + 1) * A263693 (n + 1)).toNat

end

end A212829.P9061647582234152696

/-! ## A212829.P103411419813714034

`A225644(A002260(n+1)*A263703(n+1))`
-/

namespace A212829.P103411419813714034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A002260 (n + 1) * A263703 (n + 1)).toNat

end

end A212829.P103411419813714034

/-! ## A212829.P1433705151410232213

`A225644(A002260(n+1)*A263714(n+1))`
-/

namespace A212829.P1433705151410232213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A002260 (n + 1) * A263714 (n + 1)).toNat

end

end A212829.P1433705151410232213

/-! ## A212829.P11518871603873569574

`A225644(A002260(n+1)*A263752(n+1))`
-/

namespace A212829.P11518871603873569574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A002260 (n + 1) * A263752 (n + 1)).toNat

end

end A212829.P11518871603873569574

/-! ## A212829.P6012571414606122086

`A370386(A355257(n))`
-/

namespace A212829.P6012571414606122086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370386 (A355257 n).toNat

end

end A212829.P6012571414606122086

/-!
# A212830: Number of 0..n arrays of length n+1 with no adjacent pair equal to its immediately preceding adjacent pair, and new values introduced in 0..n order.

The programs for A212830, there is no canonical definition to state claims against.
-/

/-! ## A212830.P5238785449144042983

`A212829(∑[4*n]+2)+1`
-/

namespace A212830.P5238785449144042983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1

end

end A212830.P5238785449144042983

/-! ## A212830.P3241259984732865591

`A212829((n+1)²+(n+2)²)`
-/

namespace A212830.P3241259984732865591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A212830.P3241259984732865591

/-! ## A212830.P12313828506329139156

`record[A212829(A001844(val(n+1, 2)+1))]`
-/

namespace A212830.P12313828506329139156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212829 (A001844 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212830.P12313828506329139156

/-!
# A212831: a(4*n) = 2*n, a(2*n+1) = 2*n+1, a(4*n+2) = 2*n+2.

The programs for A212831, the canonical program `A212831.P6323843744347401563` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212831 has offset 0).

The definition of A212831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212831.P17098189670176836262

`ogf((x+2x^2+2x^3+x^5)/(1-x^2-x^4+x^6))`
-/

namespace A212831.P17098189670176836262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 0, 1] [1, 0, -1, 0, -1, 0, 1] n

end

end A212831.P17098189670176836262

namespace A212831

/-- `ogf((x+2x^2+2x^3+x^5)/(1-x^2-x^4+x^6))` -/
def P17098189670176836262.Spec : Prop :=
  ∀ n, P17098189670176836262.a n = A212831 n

end A212831

/-! ## A212831.P6323843744347401563

`a(n-2)+a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=2, a(5)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212831

/-- `a(n-2)+a(n-4)-a(n-6)` -/
def P6323843744347401563.Spec : Prop :=
  ∀ n, P6323843744347401563.a n = A212831 n

theorem P6323843744347401563.correct : P6323843744347401563.Spec := by
  intro n
  simp only [A212831]

end A212831

/-! ## A212831.P4363616820373394496

`1/4*((1+(-1)^n)*(1-(-1)^floor(n/2))+(3-(-1)^n)*n)`
-/

namespace A212831.P4363616820373394496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((1 + (-1) ^ n : ℚ) * (1 - (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) + ((3 - (-1) ^ n) * (n : ℤ) : ℚ))

end

end A212831.P4363616820373394496

namespace A212831

/-- `1/4*((1+(-1)^n)*(1-(-1)^floor(n/2))+(3-(-1)^n)*n)` -/
def P4363616820373394496.Spec : Prop :=
  ∀ n, P4363616820373394496.a n = (A212831 n : ℚ)

end A212831

/-! ## A212831.P4848066519872109068

`char[4*n+2]+gcd(n, ∑[n])`
-/

namespace A212831.P4848066519872109068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A212831.P4848066519872109068

namespace A212831

/-- `char[4*n+2]+gcd(n, ∑[n])` -/
def P4848066519872109068.Spec : Prop :=
  ∀ n, (P4848066519872109068.a n : ℤ) = A212831 n

end A212831

/-! ## A212831.P1102465532421834724

`a(n-2)+and(2, lcm(2, n))` with `a(0)=0, a(1)=1`
-/

namespace A212831.P1102465532421834724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.land 2 (Nat.lcm 2 n)

end

end A212831.P1102465532421834724

namespace A212831

/-- `a(n-2)+and(2, lcm(2, n))` -/
def P1102465532421834724.Spec : Prop :=
  ∀ n, (P1102465532421834724.a n : ℤ) = A212831 n

end A212831

/-! ## A212831.P4150815188841228849

`n-a((n-2)*and(1, n+1))` with `a(0)=0`
-/

namespace A212831.P4150815188841228849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (((n : ℤ) - 2) * (Nat.land 1 (n + 1) : ℤ)).toNat

end

end A212831.P4150815188841228849

namespace A212831

/-- `n-a((n-2)*and(1, n+1))` -/
def P4150815188841228849.Spec : Prop :=
  ∀ n, P4150815188841228849.a n = A212831 n

end A212831

/-! ## A212831.P18368158007430209889

`n-a(n-2)*∑[(-1)^n]` with `a(0)=0, a(1)=1`
-/

namespace A212831.P18368158007430209889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A212831.P18368158007430209889

namespace A212831

/-- `n-a(n-2)*∑[(-1)^n]` -/
def P18368158007430209889.Spec : Prop :=
  ∀ n, P18368158007430209889.a n = A212831 n

end A212831

/-! ## A212831.P17445434490604636147

`a(n-2)+2%(n%4+2)` with `a(0)=0, a(1)=1`
-/

namespace A212831.P17445434490604636147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + 2 % (n % 4 + 2)

end

end A212831.P17445434490604636147

namespace A212831

/-- `a(n-2)+2%(n%4+2)` -/
def P17445434490604636147.Spec : Prop :=
  ∀ n, (P17445434490604636147.a n : ℤ) = A212831 n

end A212831

/-! ## A212831.P15093688683680372347

`n-(n-1)%2*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A212831.P15093688683680372347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - Int.tmod ((n : ℤ) - 1) 2 * a (n - 2)

end

end A212831.P15093688683680372347

namespace A212831

/-- `n-(n-1)%2*a(n-2)` -/
def P15093688683680372347.Spec : Prop :=
  ∀ n, P15093688683680372347.a n = A212831 n

end A212831

/-! ## A212831.P7860323881689692259

`n-lcm(and(1, n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A212831.P7860323881689692259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - (Int.lcm (Int.land 1 ((n : ℤ) - 1)) (a (n - 2)) : ℤ)

end

end A212831.P7860323881689692259

namespace A212831

/-- `n-lcm(and(1, n-1), a(n-2))` -/
def P7860323881689692259.Spec : Prop :=
  ∀ n, P7860323881689692259.a n = A212831 n

end A212831

/-! ## A212831.P15500014837355724136

`(gcd(2, a(n-1))-2)*a(n-2)+n` with `a(0)=0, a(1)=1`
-/

namespace A212831.P15500014837355724136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((Int.gcd 2 (a (n - 1)) : ℤ) - 2) * a (n - 2) + (n : ℤ)

end

end A212831.P15500014837355724136

namespace A212831

/-- `(gcd(2, a(n-1))-2)*a(n-2)+n` -/
def P15500014837355724136.Spec : Prop :=
  ∀ n, P15500014837355724136.a n = A212831 n

end A212831

/-! ## A212831.P6206021018986574898

`n-a((a(n-1)-a(n-1)%2)%a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A212831.P6206021018986574898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n : ℤ) - a (Int.tmod (a (n - 1) - Int.tmod (a (n - 1)) 2) (a (n - 1))).toNat

end

end A212831.P6206021018986574898

namespace A212831

/-- `n-a((a(n-1)-a(n-1)%2)%a(n-1))` -/
def P6206021018986574898.Spec : Prop :=
  ∀ n, P6206021018986574898.a n = A212831 n

end A212831

/-! ## A212831.P13240975000691234984

`(and(n, A280193(n))+n)/2`
-/

namespace A212831.P13240975000691234984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (A280193 n) + (n : ℤ) : ℚ) / 2

end

end A212831.P13240975000691234984

namespace A212831

/-- `(and(n, A280193(n))+n)/2` -/
def P13240975000691234984.Spec : Prop :=
  ∀ n, P13240975000691234984.a n = (A212831 n : ℚ)

end A212831

/-! ## A212831.P385699959701869423

`A026741(n)+char[4*n+2]`
-/

namespace A212831.P385699959701869423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212831.P385699959701869423

namespace A212831

/-- `A026741(n)+char[4*n+2]` -/
def P385699959701869423.Spec : Prop :=
  ∀ n, P385699959701869423.a n = A212831 n

end A212831

/-! ## A212831.P5552595422758661623

`gcd(n, ∑[n])+A249547(n)%2`
-/

namespace A212831.P5552595422758661623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + Int.tmod (A249547 n) 2

end

end A212831.P5552595422758661623

namespace A212831

/-- `gcd(n, ∑[n])+A249547(n)%2` -/
def P5552595422758661623.Spec : Prop :=
  ∀ n, P5552595422758661623.a n = A212831 n

end A212831

/-! ## A212831.P16910531657128769112

`A186421(a(n-1))-a(n-1)+n` with `a(0)=0`
-/

namespace A212831.P16910531657128769112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A186421 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A212831.P16910531657128769112

namespace A212831

/-- `A186421(a(n-1))-a(n-1)+n` -/
def P16910531657128769112.Spec : Prop :=
  ∀ n, P16910531657128769112.a n = A212831 n

end A212831

/-! ## A212831.P9406864104344677066

`A166486(n)+A029578(n)`
-/

namespace A212831.P9406864104344677066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A029578 n

end

end A212831.P9406864104344677066

namespace A212831

/-- `A166486(n)+A029578(n)` -/
def P9406864104344677066.Spec : Prop :=
  ∀ n, P9406864104344677066.a n = A212831 n

end A212831

/-! ## A212831.P16204074891145498154

`A029579(n)-A121262(n)`
-/

namespace A212831.P16204074891145498154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n - A121262 n

end

end A212831.P16204074891145498154

namespace A212831

/-- `A029579(n)-A121262(n)` -/
def P16204074891145498154.Spec : Prop :=
  ∀ n, P16204074891145498154.a n = A212831 n

end A212831

/-! ## A212831.P4995144525163590972

`A215495(n)-A056594(n)`
-/

namespace A212831.P4995144525163590972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215495 n - A056594 n

end

end A212831.P4995144525163590972

namespace A212831

/-- `A215495(n)-A056594(n)` -/
def P4995144525163590972.Spec : Prop :=
  ∀ n, P4995144525163590972.a n = A212831 n

end A212831

/-! ## A212831.P7243548182534580535

`A065530(n)%A134429(n)`
-/

namespace A212831.P7243548182534580535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065530 n) (A134429 n)

end

end A212831.P7243548182534580535

namespace A212831

/-- `A065530(n)%A134429(n)` -/
def P7243548182534580535.Spec : Prop :=
  ∀ n, P7243548182534580535.a n = A212831 n

end A212831

/-!
# A212832: Decimal expansion of 5/24.

The programs for A212832, the canonical program `A212832.P2216871519394017704` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212832 has offset 0).

The definition of A212832 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A212832.anchor (n : ℕ) : A212832 n = ((5 * 10 ^ (n + 1) / 24 % 10 : ℕ) : ℤ)` in `Proof.A212.A212832`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212832.P2216871519394017704

`a(n-1)` with `a(0)=2, a(1)=0, a(2)=8, a(3)=3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212832

/-- `a(n-1)` -/
def P2216871519394017704.Spec : Prop :=
  ∀ n, (P2216871519394017704.a n : ℤ) = A212832 n

theorem P2216871519394017704.correct : P2216871519394017704.Spec := by
  intro n
  simp only [A212832]

end A212832

/-!
# A212833: Number of 0..n arrays of length n+1 with 0 never adjacent to n.

The programs for A212833, there is no canonical definition to state claims against.
-/

/-! ## A212833.P10386187400301411615

`A212835(∑[4*n]+1)`
-/

namespace A212833.P10386187400301411615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A212833.P10386187400301411615

/-! ## A212833.P14007233449641267623

`record[A003982(n)*A212835(n+1)]`
-/

namespace A212833.P14007233449641267623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A212835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212833.P14007233449641267623

/-! ## A212833.P9226616813021801773

`lcm(A057077(n), A212835(A001844(n)))`
-/

namespace A212833.P9226616813021801773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A212835 (A001844 n).toNat)

end

end A212833.P9226616813021801773

/-! ## A212833.P13734513506015410780

`or(A000038(n), A212835(A001844(n)))`
-/

namespace A212833.P13734513506015410780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A212835 (A001844 n).toNat)

end

end A212833.P13734513506015410780

/-! ## A212833.P1700435892015252884

`record[gcd(A156732(n), A212835(n+1))]`
-/

namespace A212833.P1700435892015252884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A156732 n) (A212835 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212833.P1700435892015252884

/-!
# A212834: Number of 0..7 arrays of length n+1 with 0 never adjacent to 7.

The programs for A212834, the canonical program `A212834.P14919900181673040152` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212834 has offset 1).

The definition of A212834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212834.P1271385801804689356

`ogf((62+48x)/(1-7x-6x^2))`
-/

namespace A212834.P1271385801804689356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [62, 48] [1, -7, -6] n

end

end A212834.P1271385801804689356

namespace A212834

/-- `ogf((62+48x)/(1-7x-6x^2))` -/
def P1271385801804689356.Spec : Prop :=
  ∀ n, P1271385801804689356.a n = A212834 (n + 1)

end A212834

/-! ## A212834.P14919900181673040152

`7*a(n-1)+6*a(n-2)` with `a(0)=62, a(1)=482`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212834

/-- `7*a(n-1)+6*a(n-2)` -/
def P14919900181673040152.Spec : Prop :=
  ∀ n, (P14919900181673040152.a n : ℤ) = A212834 (n + 1)

theorem P14919900181673040152.correct : P14919900181673040152.Spec := by
  intro n
  simp only [A212834, Nat.add_sub_cancel]

end A212834

/-! ## A212834.P3697255473820338060

`A287815(n+2)`
-/

namespace A212834.P3697255473820338060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287815 (n + 2)

end

end A212834.P3697255473820338060

namespace A212834

/-- `A287815(n+2)` -/
def P3697255473820338060.Spec : Prop :=
  ∀ n, P3697255473820338060.a n = A212834 (n + 1)

end A212834

/-! ## A212834.P6816422029690319307

`record[A287815(abs(2-n))]`
-/

namespace A212834.P6816422029690319307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287815 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212834.P6816422029690319307

namespace A212834

/-- `record[A287815(abs(2-n))]` -/
def P6816422029690319307.Spec : Prop :=
  ∀ n, P6816422029690319307.a n = A212834 (n + 1)

end A212834

/-! ## A212834.P12845742523141172810

`A212835(A055999(n+4))`
-/

namespace A212834.P12845742523141172810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A055999 (n + 4)).toNat

end

end A212834.P12845742523141172810

namespace A212834

/-- `A212835(A055999(n+4))` -/
def P12845742523141172810.Spec : Prop :=
  ∀ n, P12845742523141172810.a n = A212834 (n + 1)

end A212834

/-! ## A212834.P7886465444265289003

`A212835(A000217(n+7)-6)`
-/

namespace A212834.P7886465444265289003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000217 (n + 7) - 6).toNat

end

end A212834.P7886465444265289003

namespace A212834

/-- `A212835(A000217(n+7)-6)` -/
def P7886465444265289003.Spec : Prop :=
  ∀ n, P7886465444265289003.a n = A212834 (n + 1)

end A212834

/-! ## A212834.P4054193197816681616

`A212835(A000124(n+7)-7)`
-/

namespace A212834.P4054193197816681616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000124 (n + 7) - 7).toNat

end

end A212834.P4054193197816681616

namespace A212834

/-- `A212835(A000124(n+7)-7)` -/
def P4054193197816681616.Spec : Prop :=
  ∀ n, P4054193197816681616.a n = A212834 (n + 1)

end A212834

/-!
# A212836: Number of 0..n arrays of length 3 with 0 never adjacent to n.

The programs for A212836, the canonical program `A212836.P3920559185318840306` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212836 has offset 1).

The definition of A212836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212836.P3920559185318840306

`record[n*(n²-4)+2]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212836

/-- `record[n*(n²-4)+2]` -/
def P3920559185318840306.Spec : Prop :=
  ∀ n, P3920559185318840306.a n = A212836 (n + 1)

theorem P3920559185318840306.correct : P3920559185318840306.Spec := by
  intro n
  simp only [A212836, Nat.add_sub_cancel]

end A212836

/-! ## A212836.P14806451211280546836

`n*((n+3)²-1)+2`
-/

namespace A212836.P14806451211280546836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((n + 3) ^ 2 : ℤ) - 1) + 2

end

end A212836.P14806451211280546836

namespace A212836

/-- `n*((n+3)²-1)+2` -/
def P14806451211280546836.Spec : Prop :=
  ∀ n, P14806451211280546836.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P13761968600845601329

`ogf((2+9x-6x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A212836.P13761968600845601329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9, -6, 1] [1, -4, 6, -4, 1] n

end

end A212836.P13761968600845601329

namespace A212836

/-- `ogf((2+9x-6x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P13761968600845601329.Spec : Prop :=
  ∀ n, P13761968600845601329.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P8311710267771063349

`∑[∑[xor(6*(n+1), char[1])]-4]`
-/

namespace A212836.P8311710267771063349
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (6 * (n + 1)) (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212836.P8311710267771063349

namespace A212836

/-- `∑[∑[xor(6*(n+1), char[1])]-4]` -/
def P8311710267771063349.Spec : Prop :=
  ∀ n, P8311710267771063349.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P10700852843889891747

`abs(n-2-record[(n-3)*n²])`
-/

namespace A212836.P10700852843889891747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A212836.P10700852843889891747

namespace A212836

/-- `abs(n-2-record[(n-3)*n²])` -/
def P10700852843889891747.Spec : Prop :=
  ∀ n, P10700852843889891747.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P2177214548667441030

`abs(2*record[n*(C(n, 2)-n)+1]-n)`
-/

namespace A212836.P2177214548667441030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.choose n 2 : ℤ) - (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)|

end

end A212836.P2177214548667441030

namespace A212836

/-- `abs(2*record[n*(C(n, 2)-n)+1]-n)` -/
def P2177214548667441030.Spec : Prop :=
  ∀ n, P2177214548667441030.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P7740419651136391544

`abs(n-A058794(n))`
-/

namespace A212836.P7740419651136391544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A058794 n|

end

end A212836.P7740419651136391544

namespace A212836

/-- `abs(n-A058794(n))` -/
def P7740419651136391544.Spec : Prop :=
  ∀ n, P7740419651136391544.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P8204543509950794388

`floor(sinh(log(A086113(n+1))))`
-/

namespace A212836.P8204543509950794388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (A086113 (n + 1) : ℝ))⌋

end

end A212836.P8204543509950794388

namespace A212836

/-- `floor(sinh(log(A086113(n+1))))` -/
def P8204543509950794388.Spec : Prop :=
  ∀ n, P8204543509950794388.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P7867647888973686857

`abs(2*Δ[C(A000096(n), 2)]-n)`
-/

namespace A212836.P7867647888973686857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000096 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)|

end

end A212836.P7867647888973686857

namespace A212836

/-- `abs(2*Δ[C(A000096(n), 2)]-n)` -/
def P7867647888973686857.Spec : Prop :=
  ∀ n, P7867647888973686857.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P16903792015061456392

`∑[((n+1)²+n)*A157532(n+1)]`
-/

namespace A212836.P16903792015061456392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * A157532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212836.P16903792015061456392

namespace A212836

/-- `∑[((n+1)²+n)*A157532(n+1)]` -/
def P16903792015061456392.Spec : Prop :=
  ∀ n, P16903792015061456392.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P579524540242590647

`∑[Δ[abs((A028552(n)-1)*2*n-1)]/2]`
-/

namespace A212836.P579524540242590647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A028552 n - 1) * (2 * n : ℤ) - 1|

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212836.P579524540242590647

namespace A212836

/-- `∑[Δ[abs((A028552(n)-1)*2*n-1)]/2]` -/
def P579524540242590647.Spec : Prop :=
  ∀ n, P579524540242590647.a n = (A212836 (n + 1) : ℚ)

end A212836

/-! ## A212836.P17660075033514338518

`abs((A005563(n)+2*n+1)*(n+2)-n)`
-/

namespace A212836.P17660075033514338518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A005563 n + (2 * n + 1 : ℤ)) * (n + 2 : ℤ) - (n : ℤ)|

end

end A212836.P17660075033514338518

namespace A212836

/-- `abs((A005563(n)+2*n+1)*(n+2)-n)` -/
def P17660075033514338518.Spec : Prop :=
  ∀ n, P17660075033514338518.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P855336631614270690

`∑[((n+1)²+n)*(A000005(A076397(n+1))+1)]`
-/

namespace A212836.P855336631614270690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * (A000005 (A076397 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212836.P855336631614270690

namespace A212836

/-- `∑[((n+1)²+n)*(A000005(A076397(n+1))+1)]` -/
def P855336631614270690.Spec : Prop :=
  ∀ n, P855336631614270690.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P18173993345624624502

`∑[A354343(n+1)-4]`
-/

namespace A212836.P18173993345624624502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212836.P18173993345624624502

namespace A212836

/-- `∑[A354343(n+1)-4]` -/
def P18173993345624624502.Spec : Prop :=
  ∀ n, P18173993345624624502.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P5416050102324946784

`Δ[A085490(n)+∑[n]²]`
-/

namespace A212836.P5416050102324946784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085490 n + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212836.P5416050102324946784

namespace A212836

/-- `Δ[A085490(n)+∑[n]²]` -/
def P5416050102324946784.Spec : Prop :=
  ∀ n, P5416050102324946784.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P11915068627112421294

`Δ[A085740(n+1)-(n+1)²]`
-/

namespace A212836.P11915068627112421294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212836.P11915068627112421294

namespace A212836

/-- `Δ[A085740(n+1)-(n+1)²]` -/
def P11915068627112421294.Spec : Prop :=
  ∀ n, P11915068627112421294.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P11858204880484335989

`Δ[A000096(n)²-A002378(n)]`
-/

namespace A212836.P11858204880484335989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n ^ 2 - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212836.P11858204880484335989

namespace A212836

/-- `Δ[A000096(n)²-A002378(n)]` -/
def P11858204880484335989.Spec : Prop :=
  ∀ n, P11858204880484335989.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P366073140046180690

`abs(A162261(n+1)+A046691(n+1))`
-/

namespace A212836.P366073140046180690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A162261 (n + 1) + A046691 (n + 1)|

end

end A212836.P366073140046180690

namespace A212836

/-- `abs(A162261(n+1)+A046691(n+1))` -/
def P366073140046180690.Spec : Prop :=
  ∀ n, P366073140046180690.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P12207567307050757950

`Δ[A302650(n+2)-(n+1)²]`
-/

namespace A212836.P12207567307050757950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302650 (n + 2) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212836.P12207567307050757950

namespace A212836

/-- `Δ[A302650(n+2)-(n+1)²]` -/
def P12207567307050757950.Spec : Prop :=
  ∀ n, P12207567307050757950.a n = A212836 (n + 1)

end A212836

/-! ## A212836.P17925163790131245942

`Δ[C(n+2, 2)²-A001105(n+1)]`
-/

namespace A212836.P17925163790131245942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2 : ℤ) - A001105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212836.P17925163790131245942

namespace A212836

/-- `Δ[C(n+2, 2)²-A001105(n+1)]` -/
def P17925163790131245942.Spec : Prop :=
  ∀ n, P17925163790131245942.a n = A212836 (n + 1)

end A212836

/-!
# A212837: Number of 0..n arrays of length 4 with 0 never adjacent to n.

The programs for A212837, the canonical program `A212837.P10689536641733684465` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212837 has offset 1).

The definition of A212837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212837.P10689536641733684465

`((n+2)²-3)²+4*n+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212837

/-- `((n+2)²-3)²+4*n+1` -/
def P10689536641733684465.Spec : Prop :=
  ∀ n, P10689536641733684465.a n = A212837 (n + 1)

theorem P10689536641733684465.correct : P10689536641733684465.Spec := by
  intro n
  simp only [A212837, Nat.add_sub_cancel]

end A212837

/-! ## A212837.P14900654989766452165

`ogf((2+31x-7x^2-3x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A212837.P14900654989766452165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 31, -7, -3, 1] [1, -5, 10, -10, 5, -1] n

end

end A212837.P14900654989766452165

namespace A212837

/-- `ogf((2+31x-7x^2-3x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14900654989766452165.Spec : Prop :=
  ∀ n, P14900654989766452165.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P10115979615363358482

`abs(A287335(n+1)+(n-1)*n^3)`
-/

namespace A212837.P10115979615363358482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287335 (n + 1) + ((n : ℤ) - 1) * (n ^ 3 : ℤ)|

end

end A212837.P10115979615363358482

namespace A212837

/-- `abs(A287335(n+1)+(n-1)*n^3)` -/
def P10115979615363358482.Spec : Prop :=
  ∀ n, P10115979615363358482.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P3252263156011293522

`abs(A062938(n)+∑[∑[12*n+2]-1])`
-/

namespace A212837.P3252263156011293522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062938 n + ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A212837.P3252263156011293522

namespace A212837

/-- `abs(A062938(n)+∑[∑[12*n+2]-1])` -/
def P3252263156011293522.Spec : Prop :=
  ∀ n, P3252263156011293522.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P8720780792785080391

`floor(A085537(n)+4*C(3*(n+1), 3)/2+n)`
-/

namespace A212837.P8720780792785080391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085537 n : ℚ) + ((4 * Nat.choose (3 * (n + 1)) 3 : ℚ) / 2 + (n : ℚ))⌋

end

end A212837.P8720780792785080391

namespace A212837

/-- `floor(A085537(n)+4*C(3*(n+1), 3)/2+n)` -/
def P8720780792785080391.Spec : Prop :=
  ∀ n, P8720780792785080391.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P15859955175096003896

`floor(A085537(n)+(A016791(n)-2)/3)`
-/

namespace A212837.P15859955175096003896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085537 n : ℚ) + (A016791 n - 2 : ℚ) / 3⌋

end

end A212837.P15859955175096003896

namespace A212837

/-- `floor(A085537(n)+(A016791(n)-2)/3)` -/
def P15859955175096003896.Spec : Prop :=
  ∀ n, P15859955175096003896.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P11633770602419171718

`abs(A187277(n+1)+A183066(n)-n)`
-/

namespace A212837.P11633770602419171718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187277 (n + 1) + (A183066 n - (n : ℤ))|

end

end A212837.P11633770602419171718

namespace A212837

/-- `abs(A187277(n+1)+A183066(n)-n)` -/
def P11633770602419171718.Spec : Prop :=
  ∀ n, P11633770602419171718.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P4028554954003497387

`abs(A187277(n+1)+A166941(n)-A004766(n+1))`
-/

namespace A212837.P4028554954003497387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A187277 (n + 1) + (A166941 n - A004766 (n + 1))|

end

end A212837.P4028554954003497387

namespace A212837

/-- `abs(A187277(n+1)+A166941(n)-A004766(n+1))` -/
def P4028554954003497387.Spec : Prop :=
  ∀ n, P4028554954003497387.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P17897500849240829479

`record[A272870(n)+A016813(n)]`
-/

namespace A212837.P17897500849240829479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272870 n + A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212837.P17897500849240829479

namespace A212837

/-- `record[A272870(n)+A016813(n)]` -/
def P17897500849240829479.Spec : Prop :=
  ∀ n, P17897500849240829479.a n = A212837 (n + 1)

end A212837

/-! ## A212837.P3811272997349949637

`record[A272870(n)+sqrt(A016814(n))]`
-/

namespace A212837.P3811272997349949637
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A272870 n : ℝ) + Real.sqrt (A016814 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212837.P3811272997349949637

namespace A212837

/-- `record[A272870(n)+sqrt(A016814(n))]` -/
def P3811272997349949637.Spec : Prop :=
  ∀ n, P3811272997349949637.a n = (A212837 (n + 1) : ℝ)

end A212837

/-! ## A212837.P8029298710984684540

`record[A272870(n)+A028872(n+2)-n²]`
-/

namespace A212837.P8029298710984684540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272870 n + A028872 (n + 2) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212837.P8029298710984684540

namespace A212837

/-- `record[A272870(n)+A028872(n+2)-n²]` -/
def P8029298710984684540.Spec : Prop :=
  ∀ n, P8029298710984684540.a n = A212837 (n + 1)

end A212837

/-!
# A212838: Number of 0..n arrays of length 5 with 0 never adjacent to n.

The programs for A212838, the canonical program `A212838.P14930408340236803162` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212838 has offset 1).

The definition of A212838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212838.P17532341629627304680

`ogf((2+87x+70x^2-50x^3+12x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A212838.P17532341629627304680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 87, 70, -50, 12, -1] [1, -6, 15, -20, 15, -6, 1] n

end

end A212838.P17532341629627304680

namespace A212838

/-- `ogf((2+87x+70x^2-50x^3+12x^4-x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17532341629627304680.Spec : Prop :=
  ∀ n, P17532341629627304680.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P10968713109988465782

`(n+1)^5+5*(n+1)^4+2*(n+1)^3-8*(n+1)²+n+2`
-/

namespace A212838.P10968713109988465782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 + 5 * (n + 1) ^ 4 + 2 * (n + 1) ^ 3 : ℤ) - (8 * (n + 1) ^ 2 : ℤ) + (n + 2 : ℤ)

end

end A212838.P10968713109988465782

namespace A212838

/-- `(n+1)^5+5*(n+1)^4+2*(n+1)^3-8*(n+1)²+n+2` -/
def P10968713109988465782.Spec : Prop :=
  ∀ n, P10968713109988465782.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P5835713694934546335

`floor(sqrt(A212836(n+1)*A212840(n+1)))`
-/

namespace A212838.P5835713694934546335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A212836 (n + 1) * A212840 (n + 1))

end

end A212838.P5835713694934546335

namespace A212838

/-- `floor(sqrt(A212836(n+1)*A212840(n+1)))` -/
def P5835713694934546335.Spec : Prop :=
  ∀ n, P5835713694934546335.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P14930408340236803162

`round(sqrt(A212837(n+1)*A212839(n+1)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A212838

/-- `round(sqrt(A212837(n+1)*A212839(n+1)))` -/
def P14930408340236803162.Spec : Prop :=
  ∀ n, P14930408340236803162.a n = A212838 (n + 1)

theorem P14930408340236803162.correct : P14930408340236803162.Spec := by
  intro n
  simp only [A212838, Nat.add_sub_cancel]

end A212838

/-! ## A212838.P13982411273090392002

`A212835(A052905(n)+9)`
-/

namespace A212838.P13982411273090392002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A052905 n + 9).toNat

end

end A212838.P13982411273090392002

namespace A212838

/-- `A212835(A052905(n)+9)` -/
def P13982411273090392002.Spec : Prop :=
  ∀ n, P13982411273090392002.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P6095959329755355227

`A212835(A055999(n)+10)`
-/

namespace A212838.P6095959329755355227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A055999 n + 10).toNat

end

end A212838.P6095959329755355227

namespace A212838

/-- `A212835(A055999(n)+10)` -/
def P6095959329755355227.Spec : Prop :=
  ∀ n, P6095959329755355227.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P18364811061296833850

`A212835(A167614(n+2)+1)`
-/

namespace A212838.P18364811061296833850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A167614 (n + 2) + 1).toNat

end

end A212838.P18364811061296833850

namespace A212838

/-- `A212835(A167614(n+2)+1)` -/
def P18364811061296833850.Spec : Prop :=
  ∀ n, P18364811061296833850.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P2003660213905253266

`A212835(A166136(n+2)-2)`
-/

namespace A212838.P2003660213905253266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A166136 (n + 2) - 2).toNat

end

end A212838.P2003660213905253266

namespace A212838

/-- `A212835(A166136(n+2)-2)` -/
def P2003660213905253266.Spec : Prop :=
  ∀ n, P2003660213905253266.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P2837397181122076779

`A212835(A000217(n+3)+4)`
-/

namespace A212838.P2837397181122076779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000217 (n + 3) + 4).toNat

end

end A212838.P2837397181122076779

namespace A212838

/-- `A212835(A000217(n+3)+4)` -/
def P2837397181122076779.Spec : Prop :=
  ∀ n, P2837397181122076779.a n = A212838 (n + 1)

end A212838

/-! ## A212838.P14461013332451038705

`A212835(A166136(n+1)+1+n)`
-/

namespace A212838.P14461013332451038705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A212838.P14461013332451038705

namespace A212838

/-- `A212835(A166136(n+1)+1+n)` -/
def P14461013332451038705.Spec : Prop :=
  ∀ n, P14461013332451038705.a n = A212838 (n + 1)

end A212838

/-!
# A212839: Number of 0..n arrays of length 6 with 0 never adjacent to n.

The programs for A212839, the canonical program `A212839.P8563461364733981249` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212839 has offset 1).

The definition of A212839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212839.P8563461364733981249

`n^3+∑[∑[6*(n+1)]-5]*record[n*(n²-4)+2]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212839

/-- `n^3+∑[∑[6*(n+1)]-5]*record[n*(n²-4)+2]` -/
def P8563461364733981249.Spec : Prop :=
  ∀ n, P8563461364733981249.a n = A212839 (n + 1)

theorem P8563461364733981249.correct : P8563461364733981249.Spec := by
  intro n
  simp only [A212839, Nat.add_sub_cancel]

end A212839

/-! ## A212839.P13428884923111223076

`(n+1)^6+6*(n+1)^5+5*(n+1)^4-12*(n+1)^3-3*(n+1)²+6*(n+1)-1`
-/

namespace A212839.P13428884923111223076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 + 6 * (n + 1) ^ 5 + 5 * (n + 1) ^ 4 : ℤ) - (12 * (n + 1) ^ 3 : ℤ) - (3 * (n + 1) ^ 2 : ℤ) + (6 * (n + 1) : ℤ) - 1

end

end A212839.P13428884923111223076

namespace A212839

/-- `(n+1)^6+6*(n+1)^5+5*(n+1)^4-12*(n+1)^3-3*(n+1)²+6*(n+1)-1` -/
def P13428884923111223076.Spec : Prop :=
  ∀ n, P13428884923111223076.a n = A212839 (n + 1)

end A212839

/-! ## A212839.P12047769713020587932

`A212835(A167499(n+3))`
-/

namespace A212839.P12047769713020587932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A167499 (n + 3)).toNat

end

end A212839.P12047769713020587932

namespace A212839

/-- `A212835(A167499(n+3))` -/
def P12047769713020587932.Spec : Prop :=
  ∀ n, P12047769713020587932.a n = A212839 (n + 1)

end A212839

/-! ## A212839.P8433326780348297396

`A212835(A056000(n)+15)`
-/

namespace A212839.P8433326780348297396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A056000 n + 15).toNat

end

end A212839.P8433326780348297396

namespace A212839

/-- `A212835(A056000(n)+15)` -/
def P8433326780348297396.Spec : Prop :=
  ∀ n, P8433326780348297396.a n = A212839 (n + 1)

end A212839

/-! ## A212839.P7921183236203450014

`A212835(A000124(n+4)+4)`
-/

namespace A212839.P7921183236203450014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000124 (n + 4) + 4).toNat

end

end A212839.P7921183236203450014

namespace A212839

/-- `A212835(A000124(n+4)+4)` -/
def P7921183236203450014.Spec : Prop :=
  ∀ n, P7921183236203450014.a n = A212839 (n + 1)

end A212839

/-! ## A212839.P3845959057848231949

`A212835(A000217(n+4)+5)`
-/

namespace A212839.P3845959057848231949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000217 (n + 4) + 5).toNat

end

end A212839.P3845959057848231949

namespace A212839

/-- `A212835(A000217(n+4)+5)` -/
def P3845959057848231949.Spec : Prop :=
  ∀ n, P3845959057848231949.a n = A212839 (n + 1)

end A212839

/-! ## A212839.P14739750716890414902

`A212835(A038722(Δ[A023545(n+1)]))`
-/

namespace A212839.P14739750716890414902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A212839.P14739750716890414902

namespace A212839

/-- `A212835(A038722(Δ[A023545(n+1)]))` -/
def P14739750716890414902.Spec : Prop :=
  ∀ n, P14739750716890414902.a n = A212839 (n + 1)

end A212839

/-! ## A212839.P8832578466049140435

`A212835(A055998(n)+A005408(n+7))`
-/

namespace A212839.P8832578466049140435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A055998 n + A005408 (n + 7)).toNat

end

end A212839.P8832578466049140435

namespace A212839

/-- `A212835(A055998(n)+A005408(n+7))` -/
def P8832578466049140435.Spec : Prop :=
  ∀ n, P8832578466049140435.a n = A212839 (n + 1)

end A212839

/-!
# A212840: Number of 0..n arrays of length 7 with 0 never adjacent to n.

The programs for A212840, there is no canonical definition to state claims against.
-/

/-! ## A212840.P13663675971174171005

`A212835(A166136(n+4))`
-/

namespace A212840.P13663675971174171005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A166136 (n + 4)).toNat

end

end A212840.P13663675971174171005

/-! ## A212840.P4148465245959892126

`A212835(A000217(n+5)+6)`
-/

namespace A212840.P4148465245959892126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000217 (n + 5) + 6).toNat

end

end A212840.P4148465245959892126

/-! ## A212840.P7259151377040228977

`A212835(A046691(n+3)+10)`
-/

namespace A212840.P7259151377040228977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A046691 (n + 3) + 10).toNat

end

end A212840.P7259151377040228977

/-! ## A212840.P5337909794691361456

`A212835(A027379(n+4)-(n-3))`
-/

namespace A212840.P5337909794691361456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A027379 (n + 4) - ((n : ℤ) - 3)).toNat

end

end A212840.P5337909794691361456

/-! ## A212840.P10773785748049171688

`A212835(A052905(n+4)-2-2*n)`
-/

namespace A212840.P10773785748049171688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A052905 (n + 4) - 2 - (2 * n : ℤ)).toNat

end

end A212840.P10773785748049171688

/-!
# A212841: Number of 0..n arrays of length 8 with 0 never adjacent to n.

The programs for A212841, there is no canonical definition to state claims against.
-/

/-! ## A212841.P11844941925634039661

`A212835(A167499(n+5)+2)`
-/

namespace A212841.P11844941925634039661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A167499 (n + 5) + 2).toNat

end

end A212841.P11844941925634039661

/-! ## A212841.P8055688421914135734

`A212835(A000124(n+6)+6)`
-/

namespace A212841.P8055688421914135734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000124 (n + 6) + 6).toNat

end

end A212841.P8055688421914135734

/-! ## A212841.P13342234941611618833

`A212835(A000217(n+6)+7)`
-/

namespace A212841.P13342234941611618833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A000217 (n + 6) + 7).toNat

end

end A212841.P13342234941611618833

/-! ## A212841.P8358900750186495137

`A212835(A027379(n+4)+10)`
-/

namespace A212841.P8358900750186495137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A027379 (n + 4) + 10).toNat

end

end A212841.P8358900750186495137

/-! ## A212841.P3809438150984864468

`A212835(A020719(n)+A055999(n+2)+12)`
-/

namespace A212841.P3809438150984864468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (A020719 n + (A055999 (n + 2) + 12)).toNat

end

end A212841.P3809438150984864468

/-!
# A212843: Carmichael numbers that have only prime divisors of the form 10k+1.

The programs for A212843, there is no canonical definition to state claims against.
-/

/-! ## A212843.P15981259926630613009

`∩[A094401(A335235(n+1)), A354609(n+1)]`
-/

namespace A212843.P15981259926630613009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (A335235 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212843.P15981259926630613009

/-!
# A212844: a(n) = 2^(n+2) mod n.

The programs for A212844, the canonical program `A212844.P8526045954235936398` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212844 has offset 1).

The definition of A212844 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+3))%(n+1)` (program `A212844.P8526045954235936398`, by `A212844.P8526045954235936398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A212844.P8526045954235936398

`(2^(n+3))%(n+1)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212844

/-- `(2^(n+3))%(n+1)` -/
def P8526045954235936398.Spec : Prop :=
  ∀ n, (P8526045954235936398.a n : ℤ) = A212844 (n + 1)

theorem P8526045954235936398.correct : P8526045954235936398.Spec := by
  intro n
  simp only [A212844, Nat.add_sub_cancel]

end A212844

/-! ## A212844.P14035389183534823088

`abs(A122803(A073423(n)!+n+2)%(n+1))`
-/

namespace A212844.P14035389183534823088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 (Nat.factorial (A073423 n).toNat + n + 2)) (n + 1 : ℤ)|

end

end A212844.P14035389183534823088

namespace A212844

/-- `abs(A122803(A073423(n)!+n+2)%(n+1))` -/
def P14035389183534823088.Spec : Prop :=
  ∀ n, P14035389183534823088.a n = A212844 (n + 1)

end A212844

/-! ## A212844.P10766871152995622025

`abs(Δ[A175161(n)]%(n+1))`
-/

namespace A212844.P10766871152995622025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)|

end

end A212844.P10766871152995622025

namespace A212844

/-- `abs(Δ[A175161(n)]%(n+1))` -/
def P10766871152995622025.Spec : Prop :=
  ∀ n, P10766871152995622025.a n = A212844 (n + 1)

end A212844

/-! ## A212844.P10410338753377950286

`A004526(A171494(n+1)%A103517(n))`
-/

namespace A212844.P10410338753377950286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.tmod (A171494 (n + 1)) (A103517 n)).toNat

end

end A212844.P10410338753377950286

namespace A212844

/-- `A004526(A171494(n+1)%A103517(n))` -/
def P10410338753377950286.Spec : Prop :=
  ∀ n, P10410338753377950286.a n = A212844 (n + 1)

end A212844

/-! ## A212844.P7341291436384717760

`abs(A122803(A319997(n+1)+n+3)%(n+1))`
-/

namespace A212844.P7341291436384717760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A122803 (A319997 (n + 1) + (n + 3 : ℤ)).toNat) (n + 1 : ℤ)|

end

end A212844.P7341291436384717760

namespace A212844

/-- `abs(A122803(A319997(n+1)+n+3)%(n+1))` -/
def P7341291436384717760.Spec : Prop :=
  ∀ n, P7341291436384717760.a n = A212844 (n + 1)

end A212844

/-! ## A212844.P8852432708997943631

`A118759(A000079(n+3)%(n+1))`
-/

namespace A212844.P8852432708997943631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A000079 (n + 3)) (n + 1 : ℤ)).toNat

end

end A212844.P8852432708997943631

namespace A212844

/-- `A118759(A000079(n+3)%(n+1))` -/
def P8852432708997943631.Spec : Prop :=
  ∀ n, P8852432708997943631.a n = A212844 (n + 1)

end A212844

/-!
# A212846: Polylogarithm li(-n,-1/2) multiplied by (3^(n+1))/2.

The programs for A212846, there is no canonical definition to state claims against.
-/

/-! ## A212846.P6511940710301196108

`(-1)^n*A087674(n)`
-/

namespace A212846.P6511940710301196108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A087674 n

end

end A212846.P6511940710301196108

/-! ## A212846.P6268061784441126263

`A087674(n)*A165326(n+1)`
-/

namespace A212846.P6268061784441126263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087674 n * A165326 (n + 1)

end

end A212846.P6268061784441126263

/-! ## A212846.P16728658968309576017

`A087674(n)/A165326(n+3)`
-/

namespace A212846.P16728658968309576017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087674 n : ℚ) / (A165326 (n + 3) : ℚ)

end

end A212846.P16728658968309576017

/-! ## A212846.P942892601495796831

`A087674(n)*A210246(C(n, or(1, n)))`
-/

namespace A212846.P942892601495796831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087674 n * A210246 (Nat.choose n (Nat.lor 1 n))

end

end A212846.P942892601495796831

/-! ## A212846.P5119845816604143082

`A087674(n)*A213127(C(n, or(1, n)))`
-/

namespace A212846.P5119845816604143082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087674 n * A213127 (Nat.choose n (Nat.lor 1 n))

end

end A212846.P5119845816604143082

/-!
# A212848: Least prime factor of n-th central trinomial coefficient (A002426).

The programs for A212848, the canonical program `A212848.P14152639286408544635` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212848 has offset 0).

The definition of A212848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020639, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A212848.P14152639286408544635

`A020639(A002426(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A212848

/-- `A020639(A002426(n))` -/
def P14152639286408544635.Spec : Prop :=
  ∀ n, P14152639286408544635.a n = A212848 n

theorem P14152639286408544635.correct : P14152639286408544635.Spec := by
  intro n
  simp only [A212848]

end A212848

/-! ## A212848.P187496485539927459

`A020639(A005213(2*n)%A185534(n+1))`
-/

namespace A212848.P187496485539927459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (A005213 (2 * n)) (A185534 (n + 1))).toNat

end

end A212848.P187496485539927459

namespace A212848

/-- `A020639(A005213(2*n)%A185534(n+1))` -/
def P187496485539927459.Spec : Prop :=
  ∀ n, P187496485539927459.a n = A212848 n

end A212848

/-! ## A212848.P15805856551172430504

`A020639((2*A097861(n)+1)%A185534(n+1))`
-/

namespace A212848.P15805856551172430504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (2 * A097861 n + 1) (A185534 (n + 1))).toNat

end

end A212848.P15805856551172430504

namespace A212848

/-- `A020639((2*A097861(n)+1)%A185534(n+1))` -/
def P15805856551172430504.Spec : Prop :=
  ∀ n, P15805856551172430504.a n = A212848 n

end A212848

/-! ## A212848.P10067934799098058118

`A020639((2*A257520(n)-1)%A185534(n+1))`
-/

namespace A212848.P10067934799098058118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (2 * A257520 n - 1) (A185534 (n + 1))).toNat

end

end A212848.P10067934799098058118

namespace A212848

/-- `A020639((2*A257520(n)-1)%A185534(n+1))` -/
def P10067934799098058118.Spec : Prop :=
  ∀ n, P10067934799098058118.a n = A212848 n

end A212848

/-! ## A212848.P215048356511208558

`A020639(∑[(1-n)*A167022(n)]%A185534(n+1))`
-/

namespace A212848.P215048356511208558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A185534 (n + 1))).toNat

end

end A212848.P215048356511208558

namespace A212848

/-- `A020639(∑[(1-n)*A167022(n)]%A185534(n+1))` -/
def P215048356511208558.Spec : Prop :=
  ∀ n, P215048356511208558.a n = A212848 n

end A212848

/-!
# A212849: Numbers whose sum of prime factors (counted with multiplicity) is a triangular number.

The programs for A212849, the canonical program `A212849.P18303153871543826406` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212849 has offset 1).

The definition of A212849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 595 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212849.P18303153871543826406

`record[(n+1)*A010054(A001414(n+1))]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A212849

/-- `record[(n+1)*A010054(A001414(n+1))]` -/
def P18303153871543826406.Spec : Prop :=
  ∀ n, P18303153871543826406.a n = A212849 (n + 1)

theorem P18303153871543826406.correct : P18303153871543826406.Spec := by
  intro n
  simp only [A212849, Nat.add_sub_cancel]

end A212849

/-! ## A212849.P10920891205627525136

`record[floor((n+1)/A002260(A036288(n+1)))]`
-/

namespace A212849.P10920891205627525136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A002260 (A036288 (n + 1)).toNat : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212849.P10920891205627525136

namespace A212849

/-- `record[floor((n+1)/A002260(A036288(n+1)))]` -/
def P10920891205627525136.Spec : Prop :=
  ∀ n, P10920891205627525136.a n = A212849 (n + 1)

end A212849

/-! ## A212849.P11359978389766791879

`eq[1, A336574(A001414(n+1))]+1`
-/

namespace A212849.P11359978389766791879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336574 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212849.P11359978389766791879

namespace A212849

/-- `eq[1, A336574(A001414(n+1))]+1` -/
def P11359978389766791879.Spec : Prop :=
  ∀ n, (P11359978389766791879.a n : ℤ) = A212849 (n + 1)

end A212849

/-! ## A212849.P9520647631826127999

`eq[1, A089072(A036288(n+1))]+1`
-/

namespace A212849.P9520647631826127999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089072 (A036288 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A212849.P9520647631826127999

namespace A212849

/-- `eq[1, A089072(A036288(n+1))]+1` -/
def P9520647631826127999.Spec : Prop :=
  ∀ n, (P9520647631826127999.a n : ℤ) = A212849 (n + 1)

end A212849

/-!
# A212850: Number of n X 3 arrays with rows being permutations of 0..2 and no column j greater than column j-1 in all rows.

The programs for A212850, the canonical program `A212850.P839079471810410190` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212850 has offset 1).

The definition of A212850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212850.P839079471810410190

`6^(n+1)-2*3^(n+1)+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212850

/-- `6^(n+1)-2*3^(n+1)+1` -/
def P839079471810410190.Spec : Prop :=
  ∀ n, P839079471810410190.a n = A212850 (n + 1)

theorem P839079471810410190.correct : P839079471810410190.Spec := by
  intro n
  simp only [A212850, Nat.add_sub_cancel]

end A212850

/-! ## A212850.P7582742769148454498

`Δ[∑[A000400(n)]-A060188(n+2)]`
-/

namespace A212850.P7582742769148454498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A060188 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A212850.P7582742769148454498

namespace A212850

/-- `Δ[∑[A000400(n)]-A060188(n+2)]` -/
def P7582742769148454498.Spec : Prop :=
  ∀ n, P7582742769148454498.a n = A212850 (n + 1)

end A212850

/-! ## A212850.P14873383756016086473

`A059116(n+2)/6`
-/

namespace A212850.P14873383756016086473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059116 (n + 2) : ℚ) / 6

end

end A212850.P14873383756016086473

namespace A212850

/-- `A059116(n+2)/6` -/
def P14873383756016086473.Spec : Prop :=
  ∀ n, P14873383756016086473.a n = (A212850 (n + 1) : ℚ)

end A212850

/-! ## A212850.P15769573409652441164

`A089271(n)/abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2`
-/

namespace A212850.P15769573409652441164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089271 n : ℚ) / ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ)

end

end A212850.P15769573409652441164

namespace A212850

/-- `A089271(n)/abs(∏[-a(n-1)])` -/
def P15769573409652441164.Spec : Prop :=
  ∀ n, P15769573409652441164.a n = (A212850 (n + 1) : ℚ)

end A212850

/-! ## A212850.P8557739380822089979

`A089271(n)/A000079(n)`
-/

namespace A212850.P8557739380822089979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089271 n : ℚ) / (A000079 n : ℚ)

end

end A212850.P8557739380822089979

namespace A212850

/-- `A089271(n)/A000079(n)` -/
def P8557739380822089979.Spec : Prop :=
  ∀ n, P8557739380822089979.a n = (A212850 (n + 1) : ℚ)

end A212850

/-! ## A212850.P6629728877805147829

`A089271(n)/record[A059268(n)]`
-/

namespace A212850.P6629728877805147829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089271 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A212850.P6629728877805147829

namespace A212850

/-- `A089271(n)/record[A059268(n)]` -/
def P6629728877805147829.Spec : Prop :=
  ∀ n, P6629728877805147829.a n = (A212850 (n + 1) : ℚ)

end A212850

/-!
# A212851: Number of n X 4 arrays with rows being permutations of 0..3 and no column j greater than column j-1 in all rows.

The programs for A212851, there is no canonical definition to state claims against.
-/

/-! ## A212851.P15253755179819360453

`24^(n+1)+6^(n+1)-3*12^(n+1)+2*4^(n+1)-1`
-/

namespace A212851.P15253755179819360453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (24 ^ (n + 1) + 6 ^ (n + 1) : ℤ) - (3 * 12 ^ (n + 1) : ℤ) + (2 * 4 ^ (n + 1) : ℤ) - 1

end

end A212851.P15253755179819360453

/-! ## A212851.P12945758558280190777

`A212855(A141214(n+1))`
-/

namespace A212851.P12945758558280190777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A141214 (n + 1)).toNat

end

end A212851.P12945758558280190777

/-! ## A212851.P7457465826916057459

`A212855(A055998(n+2))`
-/

namespace A212851.P7457465826916057459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A055998 (n + 2)).toNat

end

end A212851.P7457465826916057459

/-! ## A212851.P3225315718630868831

`A212855(A056000(n)+7)`
-/

namespace A212851.P3225315718630868831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A056000 n + 7).toNat

end

end A212851.P3225315718630868831

/-! ## A212851.P18094076128341721063

`A212855(A052905(n+1)+2)`
-/

namespace A212851.P18094076128341721063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A052905 (n + 1) + 2).toNat

end

end A212851.P18094076128341721063

/-!
# A212852: Number of n X 5 arrays with rows being permutations of 0..4 and no column j greater than column j-1 in all rows.

The programs for A212852, there is no canonical definition to state claims against.
-/

/-! ## A212852.P3632028022188776613

`A212855(Δ[A264443(n)])`
-/

namespace A212852.P3632028022188776613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (f1 (n + 1) - f1 n).toNat

end

end A212852.P3632028022188776613

/-! ## A212852.P8364227293338839115

`A212855(A056115(n)+11)`
-/

namespace A212852.P8364227293338839115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A056115 n + 11).toNat

end

end A212852.P8364227293338839115

/-! ## A212852.P17347930765856947854

`A212855(eq[2, A092921(n)])`
-/

namespace A212852.P17347930765856947854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212852.P17347930765856947854

/-! ## A212852.P12689752000511185435

`A212855(eq[4, A193592(n)])`
-/

namespace A212852.P12689752000511185435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212852.P12689752000511185435

/-! ## A212852.P17399784109054962193

`A212855(eq[5, A239144(n)])`
-/

namespace A212852.P17399784109054962193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212852.P17399784109054962193

/-!
# A212853: Number of n X 6 arrays with rows being permutations of 0..5 and no column j greater than column j-1 in all rows.

The programs for A212853, there is no canonical definition to state claims against.
-/

/-! ## A212853.P14228673873341153734

`A212855(eq[3, A219347(n)])`
-/

namespace A212853.P14228673873341153734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212853.P14228673873341153734

/-! ## A212853.P4674758600806376902

`A212855(Δ[Δ[A006504(n+1)]])`
-/

namespace A212853.P4674758600806376902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (f1 (n + 1) - f1 n).toNat

end

end A212853.P4674758600806376902

/-! ## A212853.P17675153076300714316

`A212855(lt[A212835(n+5), A212868(n+1)])`
-/

namespace A212853.P17675153076300714316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212835 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A212853.P17675153076300714316

/-!
# A212854: 

The programs for A212854, there is no canonical definition to state claims against.
-/

/-! ## A212854.P17750357186118128243

`A212855(A055999(n+4))`
-/

namespace A212854.P17750357186118128243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A055999 (n + 4)).toNat

end

end A212854.P17750357186118128243

/-! ## A212854.P2797101265202766967

`A212855(A134869(n+6)+n)`
-/

namespace A212854.P2797101265202766967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A134869 (n + 6) + (n : ℤ)).toNat

end

end A212854.P2797101265202766967

/-!
# A212855: T(n,k) = number of n X k arrays with rows being permutations of 0..k-1 and no column j greater than column j-1 in all rows (n, k >= 1).

The programs for A212855, there is no canonical definition to state claims against.
-/

/-! ## A212855.P1222520689782995979

`A220522(gcd(A008300(n), A094544(n)))`
-/

namespace A212855.P1222520689782995979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220522 (Int.gcd (A008300 n) (A094544 n))

end

end A212855.P1222520689782995979

/-! ## A212855.P15036306121191110010

`A004247(n)*A034367(A114123(n))+1`
-/

namespace A212855.P15036306121191110010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n * A034367 (A114123 n).toNat + 1

end

end A212855.P15036306121191110010

/-! ## A212855.P5195978747115681820

`A098044(n+1)%A154991(A154980(n))`
-/

namespace A212855.P5195978747115681820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098044 (n + 1)) (A154991 (A154980 n).toNat)

end

end A212855.P5195978747115681820

/-! ## A212855.P4088098997224260155

`A203321(A322264(n+1)%A241559(5*(n+1)))`
-/

namespace A212855.P4088098997224260155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203321 (Int.tmod (A322264 (n + 1)) (A241559 (5 * (n + 1)))).toNat

end

end A212855.P4088098997224260155

/-!
# A212856: Number of 3 X n arrays with rows being permutations of 0..n-1 and no column j greater than column j-1 in all rows.

The programs for A212856, there is no canonical definition to state claims against.
-/

/-! ## A212856.P4830690445020158260

`A334394(∑[abs(1-n)])`
-/

namespace A212856.P4830690445020158260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A212856.P4830690445020158260

/-! ## A212856.P13782654633643334234

`A212855(∑[n+1]+3)`
-/

namespace A212856.P13782654633643334234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A212856.P13782654633643334234

/-! ## A212856.P5186959643476914246

`A212855(A152950(n+2))+A025439(n)`
-/

namespace A212856.P5186959643476914246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A152950 (n + 2)).toNat + A025439 n

end

end A212856.P5186959643476914246

/-! ## A212856.P16348076939466091174

`abs(A216207(∑[n]))`
-/

namespace A212856.P16348076939466091174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A216207 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A212856.P16348076939466091174

/-! ## A212856.P10989233427255511596

`(-1)^n*A216207(A000217(n))`
-/

namespace A212856.P10989233427255511596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A216207 (A000217 n).toNat

end

end A212856.P10989233427255511596

/-!
# A212857: Number of 4 X n arrays with rows being permutations of 0..n-1 and no column j greater than column j-1 in all rows.

The programs for A212857, there is no canonical definition to state claims against.
-/

/-! ## A212857.P12953284844319073403

`A212855(∑[n+2]+5)`
-/

namespace A212857.P12953284844319073403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A212857.P12953284844319073403

/-!
# A212858: Number of 5 X n arrays with rows being permutations of 0..n-1 and no column j greater than column j-1 in all rows.

The programs for A212858, there is no canonical definition to state claims against.
-/

/-! ## A212858.P12564757247521990474

`A212855(A167499(n+2))`
-/

namespace A212858.P12564757247521990474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A167499 (n + 2)).toNat

end

end A212858.P12564757247521990474

/-! ## A212858.P15296565198123671651

`A212855(A141214(n)+8)`
-/

namespace A212858.P15296565198123671651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A141214 n + 8).toNat

end

end A212858.P15296565198123671651

/-! ## A212858.P1855035593801370885

`A212855(A052905(n)+10)`
-/

namespace A212858.P1855035593801370885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A052905 n + 10).toNat

end

end A212858.P1855035593801370885

/-! ## A212858.P5427823162808237046

`A212855(A055999(n)+11)`
-/

namespace A212858.P5427823162808237046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A055999 n + 11).toNat

end

end A212858.P5427823162808237046

/-! ## A212858.P1333884285142502133

`A212855(A034856(n+2)+7)`
-/

namespace A212858.P1333884285142502133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A034856 (n + 2) + 7).toNat

end

end A212858.P1333884285142502133

/-!
# A212859: Number of 6 X n arrays with rows being permutations of 0..n-1 and no column j greater than column j-1 in all rows.

The programs for A212859, there is no canonical definition to state claims against.
-/

/-! ## A212859.P1718570632634988814

`A212855(A055998(n+2)+9)`
-/

namespace A212859.P1718570632634988814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A055998 (n + 2) + 9).toNat

end

end A212859.P1718570632634988814

/-!
# A212860: Number of 7 X n arrays with rows being permutations of 0..n-1 and no column j greater than column j-1 in all rows.

The programs for A212860, there is no canonical definition to state claims against.
-/

/-! ## A212860.P1623218649921798258

`A212855(A134869(n+5)+6)`
-/

namespace A212860.P1623218649921798258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212855 (A134869 (n + 5) + 6).toNat

end

end A212860.P1623218649921798258

/-!
# A212861: Numbers n such that the sum of prime factors of n (counted with repetition) equals three times the largest prime divisor.

The programs for A212861, there is no canonical definition to state claims against.
-/

/-! ## A212861.P13813437412580465017

`eq[A001414(n+1)/3, A006530(n+1)]+1`
-/

namespace A212861.P13813437412580465017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A212861.P13813437412580465017

/-! ## A212861.P5078603135738843480

`A065475(eq[A001414(n+1)/3, A006530(n+1)])`
-/

namespace A212861.P5078603135738843480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (n + 1) : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A212861.P5078603135738843480

/-!
# A212864: Number of nondecreasing sequences of n 1..4 integers with no element dividing the sequence sum.

The programs for A212864, the canonical program `A212864.P9664971102495483700` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212864 has offset 1).

The definition of A212864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212864.P345330838084629182

`∑[∑[char[3*n]]]-char[4*n]`
-/

namespace A212864.P345330838084629182
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A212864.P345330838084629182

namespace A212864

/-- `∑[∑[char[3*n]]]-char[4*n]` -/
def P345330838084629182.Spec : Prop :=
  ∀ n, P345330838084629182.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P9664971102495483700

`∑[∑[gcd(4, 1-n)]-1-ceil(5*n/3)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212864

/-- `∑[∑[gcd(4, 1-n)]-1-ceil(5*n/3)]` -/
def P9664971102495483700.Spec : Prop :=
  ∀ n, P9664971102495483700.a n = A212864 (n + 1)

theorem P9664971102495483700.correct : P9664971102495483700.Spec := by
  intro n
  simp only [A212864, Nat.add_sub_cancel]

end A212864

/-! ## A212864.P7275132724625364217

`ogf((2x+x^2+2x^3-x^4)/(1-x-x^3+x^5+x^7-x^8))`
-/

namespace A212864.P7275132724625364217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 2, -1] [1, -1, 0, -1, 0, 1, 0, 1, -1] n

end

end A212864.P7275132724625364217

namespace A212864

/-- `ogf((2x+x^2+2x^3-x^4)/(1-x-x^3+x^5+x^7-x^8))` -/
def P7275132724625364217.Spec : Prop :=
  ∀ n, P7275132724625364217.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P12211509399426358900

`∑[∑[char[3*n]]-A219977(n)]`
-/

namespace A212864.P12211509399426358900
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A219977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212864.P12211509399426358900

namespace A212864

/-- `∑[∑[char[3*n]]-A219977(n)]` -/
def P12211509399426358900.Spec : Prop :=
  ∀ n, P12211509399426358900.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P5500369371695124379

`∑[A047492(n+1)-A047212(n+1)]`
-/

namespace A212864.P5500369371695124379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047492 (n + 1) - A047212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212864.P5500369371695124379

namespace A212864

/-- `∑[A047492(n+1)-A047212(n+1)]` -/
def P5500369371695124379.Spec : Prop :=
  ∀ n, P5500369371695124379.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P5248177835890788814

`∑[record[A080412(n+1)]-A080412(n+1)]`
-/

namespace A212864.P5248177835890788814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A080412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212864.P5248177835890788814

namespace A212864

/-- `∑[record[A080412(n+1)]-A080412(n+1)]` -/
def P5248177835890788814.Spec : Prop :=
  ∀ n, P5248177835890788814.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P2014704893817750790

`∑[record[A116966(n+1)]-A116966(n+1)]`
-/

namespace A212864.P2014704893817750790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - A116966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212864.P2014704893817750790

namespace A212864

/-- `∑[record[A116966(n+1)]-A116966(n+1)]` -/
def P2014704893817750790.Spec : Prop :=
  ∀ n, P2014704893817750790.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P14703857827752383567

`record[A008726(n)-A266755(n)]`
-/

namespace A212864.P14703857827752383567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 n - A266755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212864.P14703857827752383567

namespace A212864

/-- `record[A008726(n)-A266755(n)]` -/
def P14703857827752383567.Spec : Prop :=
  ∀ n, P14703857827752383567.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P17480336513685403336

`record[A008731(n)-A253513(n)]`
-/

namespace A212864.P17480336513685403336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 n - A253513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212864.P17480336513685403336

namespace A212864

/-- `record[A008731(n)-A253513(n)]` -/
def P17480336513685403336.Spec : Prop :=
  ∀ n, P17480336513685403336.a n = A212864 (n + 1)

end A212864

/-! ## A212864.P7419784283204787735

`∑[A219977(3*n+1)+∑[char[3*n]]]`
-/

namespace A212864.P7419784283204787735
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (3 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212864.P7419784283204787735

namespace A212864

/-- `∑[A219977(3*n+1)+∑[char[3*n]]]` -/
def P7419784283204787735.Spec : Prop :=
  ∀ n, P7419784283204787735.a n = A212864 (n + 1)

end A212864

/-!
# A212865: Number of nondecreasing sequences of n 1..5 integers with no element dividing the sequence sum.

The programs for A212865, there is no canonical definition to state claims against.
-/

/-! ## A212865.P17324539777545465219

`A212868(Δ[A264443(n)])`
-/

namespace A212865.P17324539777545465219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (f1 (n + 1) - f1 n).toNat

end

end A212865.P17324539777545465219

/-! ## A212865.P14081470996276239611

`A212868(A046691(n+3))`
-/

namespace A212865.P14081470996276239611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A046691 (n + 3)).toNat

end

end A212865.P14081470996276239611

/-! ## A212865.P17154133133468605568

`A212868(A056115(n)+11)`
-/

namespace A212865.P17154133133468605568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A056115 n + 11).toNat

end

end A212865.P17154133133468605568

/-! ## A212865.P8644280024892295595

`A212868(eq[4, A193592(n)])`
-/

namespace A212865.P8644280024892295595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212865.P8644280024892295595

/-! ## A212865.P2040503224984112433

`A212868(eq[10, A027421(n)])`
-/

namespace A212865.P2040503224984112433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212865.P2040503224984112433

/-!
# A212866: Number of nondecreasing sequences of n 1..6 integers with no element dividing the sequence sum.

The programs for A212866, there is no canonical definition to state claims against.
-/

/-! ## A212866.P16413786767448826762

`A212868(A052905(n+3))`
-/

namespace A212866.P16413786767448826762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A052905 (n + 3)).toNat

end

end A212866.P16413786767448826762

/-! ## A212866.P298375637924094986

`A212868(A056119(n)+16)`
-/

namespace A212866.P298375637924094986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A056119 n + 16).toNat

end

end A212866.P298375637924094986

/-! ## A212866.P7893610129294815894

`A212868(eq[5, A193592(n)])`
-/

namespace A212866.P7893610129294815894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212866.P7893610129294815894

/-! ## A212866.P17775771304389345602

`A212868(A155212(n+2)+3)`
-/

namespace A212866.P17775771304389345602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A155212 (n + 2) + 3).toNat

end

end A212866.P17775771304389345602

/-! ## A212866.P13106794185126474408

`A212868(A046691(n+4)-1)`
-/

namespace A212866.P13106794185126474408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A046691 (n + 4) - 1).toNat

end

end A212866.P13106794185126474408

/-!
# A212867: Number of nondecreasing sequences of n 1..7 integers with no element dividing the sequence sum.

The programs for A212867, there is no canonical definition to state claims against.
-/

/-! ## A212867.P13530078773422756588

`A212868(A055999(n+4))`
-/

namespace A212867.P13530078773422756588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A055999 (n + 4)).toNat

end

end A212867.P13530078773422756588

/-! ## A212867.P13616604369785580740

`A212868(eq[6, A193592(n)])`
-/

namespace A212867.P13616604369785580740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A212867.P13616604369785580740

/-! ## A212867.P18228708573750976383

`A212868(Δ[A023551(n+2)])`
-/

namespace A212867.P18228708573750976383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (f1 (n + 1) - f1 n).toNat

end

end A212867.P18228708573750976383

/-! ## A212867.P10414544416883544875

`A212868(A155212(n+3)+2)`
-/

namespace A212867.P10414544416883544875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A155212 (n + 3) + 2).toNat

end

end A212867.P10414544416883544875

/-! ## A212867.P10432946599282233941

`A212868(A052905(n+4)-1)`
-/

namespace A212867.P10432946599282233941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A052905 (n + 4) - 1).toNat

end

end A212867.P10432946599282233941

/-!
# A212868: Rectangular array T(n,k) = number of nondecreasing sequences of n 1..k integers with no element dividing the sequence sum (for n, k >= 1), read by decreasing antidiagonals.

The programs for A212868, there is no canonical definition to state claims against.
-/

/-! ## A212868.P18229701596065369750

`A353698(10*A225094(n))`
-/

namespace A212868.P18229701596065369750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353698 (10 * A225094 n).toNat

end

end A212868.P18229701596065369750

/-! ## A212868.P3966228133583261596

`A060789(n+1)%A070939(A265192(n+2))`
-/

namespace A212868.P3966228133583261596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060789 (n + 1)) (A070939 (A265192 (n + 2)).toNat)

end

end A212868.P3966228133583261596

/-! ## A212868.P4871647153423319868

`A007967((A027193(n)+A027187(n))%A227655(n))`
-/

namespace A212868.P4871647153423319868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (Int.tmod (A027193 n + A027187 n) (A227655 n)).toNat

end

end A212868.P4871647153423319868

/-! ## A212868.P8681118092015411210

`A007967((A058984(n)+A004526(n))%A227655(n))`
-/

namespace A212868.P8681118092015411210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (Int.tmod (A058984 n + A004526 n) (A227655 n)).toNat

end

end A212868.P8681118092015411210

/-! ## A212868.P3836274412641785000

`A076869(A256268(n))`
-/

namespace A212868.P3836274412641785000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (A256268 n).toNat

end

end A212868.P3836274412641785000

/-!
# A212869: Number of nondecreasing sequences of n 1..n+1 integers with no element dividing the sequence sum.

The programs for A212869, there is no canonical definition to state claims against.
-/

/-! ## A212869.P13055425424631092150

`A212868(2*(n+1)²)`
-/

namespace A212869.P13055425424631092150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (2 * (n + 1) ^ 2)

end

end A212869.P13055425424631092150

/-! ## A212869.P11441946787790391539

`record[A212868(∑[A266072(n)])]`
-/

namespace A212869.P11441946787790391539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212869.P11441946787790391539

/-! ## A212869.P333171915803902124

`record[A212868(∑[A266285(n)])]`
-/

namespace A212869.P333171915803902124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212869.P333171915803902124

/-! ## A212869.P11201652762875490166

`record[A212868(A093005(n+1))]`
-/

namespace A212869.P11201652762875490166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A093005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212869.P11201652762875490166

/-! ## A212869.P3175838461097427638

`record[A212868(A141675(n+1))]`
-/

namespace A212869.P3175838461097427638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A141675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212869.P3175838461097427638

/-!
# A212870: Number of nondecreasing sequences of 3 1..n integers with no element dividing the sequence sum.

The programs for A212870, there is no canonical definition to state claims against.
-/

/-! ## A212870.P11523311194556810259

`A212868(∑[n+2]+4)`
-/

namespace A212870.P11523311194556810259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A212870.P11523311194556810259

/-! ## A212870.P12549994596841382169

`or(char[2], A212868(A167614(n+1)))`
-/

namespace A212870.P12549994596841382169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212868 (A167614 (n + 1)).toNat)

end

end A212870.P12549994596841382169

/-! ## A212870.P6730858480127577587

`A212868(A167614(n+1))%A001936(n)`
-/

namespace A212870.P6730858480127577587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212868 (A167614 (n + 1)).toNat) (A001936 n)

end

end A212870.P6730858480127577587

/-! ## A212870.P274342041765541875

`lcm(A131561(n), A212868(A167614(n+1)))`
-/

namespace A212870.P274342041765541875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131561 n) (A212868 (A167614 (n + 1)).toNat)

end

end A212870.P274342041765541875

/-!
# A212871: Number of nondecreasing sequences of 4 1..n integers with no element dividing the sequence sum.

The programs for A212871, there is no canonical definition to state claims against.
-/

/-! ## A212871.P13716143186797542225

`A212868(∑[n+3]+7)`
-/

namespace A212871.P13716143186797542225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A212871.P13716143186797542225

/-! ## A212871.P9617248568704787203

`A212868(Δ[A005586(n)]+5)%A008861(n)`
-/

namespace A212871.P9617248568704787203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212868 (f1 (n + 1) - f1 n + 5).toNat) (A008861 n)

end

end A212871.P9617248568704787203

/-! ## A212871.P10602044431149811612

`A212868(A112355(n+1)+4)%A000041(2*n)`
-/

namespace A212871.P10602044431149811612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212868 (A112355 (n + 1) + 4).toNat) (A000041 (2 * n))

end

end A212871.P10602044431149811612

/-! ## A212871.P17933661352022943765

`A007318(C(n, 2))²*A212868(A112355(n+1)+4)`
-/

namespace A212871.P17933661352022943765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A212868 (A112355 (n + 1) + 4).toNat

end

end A212871.P17933661352022943765

/-!
# A212872: Number of nondecreasing sequences of 5 1..n integers with no element dividing the sequence sum.

The programs for A212872, there is no canonical definition to state claims against.
-/

/-! ## A212872.P15222008616660550622

`A212868(A167499(n+3))`
-/

namespace A212872.P15222008616660550622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A167499 (n + 3)).toNat

end

end A212872.P15222008616660550622

/-! ## A212872.P12023875355361103116

`A212868(A155212(n)+13)`
-/

namespace A212872.P12023875355361103116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A155212 n + 13).toNat

end

end A212872.P12023875355361103116

/-! ## A212872.P11638211639874248752

`A212868(A056000(n)+15)`
-/

namespace A212872.P11638211639874248752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A056000 n + 15).toNat

end

end A212872.P11638211639874248752

/-! ## A212872.P17781883571937444060

`A212868(A133263(n+4)+3)`
-/

namespace A212872.P17781883571937444060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A133263 (n + 4) + 3).toNat

end

end A212872.P17781883571937444060

/-! ## A212872.P8143024009497507230

`A212868(A000124(n+4)+4)`
-/

namespace A212872.P8143024009497507230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A000124 (n + 4) + 4).toNat

end

end A212872.P8143024009497507230

/-!
# A212873: Number of nondecreasing sequences of 6 1..n integers with no element dividing the sequence sum.

The programs for A212873, there is no canonical definition to state claims against.
-/

/-! ## A212873.P12028936253250557146

`A212868(∑[n+5]+16)`
-/

namespace A212873.P12028936253250557146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A212873.P12028936253250557146

/-! ## A212873.P5156531961265343235

`or(char[3], A212868(A161680(n+6)+6))`
-/

namespace A212873.P5156531961265343235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212868 (A161680 (n + 6) + 6).toNat)

end

end A212873.P5156531961265343235

/-! ## A212873.P7718311288208738836

`A212868(A000124(n+5)+5)%A000032(n)²`
-/

namespace A212873.P7718311288208738836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212868 (A000124 (n + 5) + 5).toNat) (A000032 n ^ 2)

end

end A212873.P7718311288208738836

/-! ## A212873.P14406937386589513990

`A007318(C(2, n))*A212868(A000124(n+5)+5)`
-/

namespace A212873.P14406937386589513990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212868 (A000124 (n + 5) + 5).toNat

end

end A212873.P14406937386589513990

/-! ## A212873.P17026989926846075204

`A000041(C(n, 64))*A212868(A000124(n+5)+5)`
-/

namespace A212873.P17026989926846075204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A212868 (A000124 (n + 5) + 5).toNat

end

end A212873.P17026989926846075204

/-!
# A212874: Number of nondecreasing sequences of 7 1..n integers with no element dividing the sequence sum.

The programs for A212874, there is no canonical definition to state claims against.
-/

/-! ## A212874.P14776577207889915127

`A212868(A056119(n)+28)`
-/

namespace A212874.P14776577207889915127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A056119 n + 28).toNat

end

end A212874.P14776577207889915127

/-! ## A212874.P12707937122205147262

`A212868(A166136(n+5)+1)`
-/

namespace A212874.P12707937122205147262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A166136 (n + 5) + 1).toNat

end

end A212874.P12707937122205147262

/-! ## A212874.P3965981984771140978

`A212868(A167499(n+5)+2)`
-/

namespace A212874.P3965981984771140978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A167499 (n + 5) + 2).toNat

end

end A212874.P3965981984771140978

/-! ## A212874.P10353502006974286946

`A212868(A167614(n+5)+4)`
-/

namespace A212874.P10353502006974286946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A167614 (n + 5) + 4).toNat

end

end A212874.P10353502006974286946

/-! ## A212874.P14484611222694016696

`A212868(A000124(n+6)+6)`
-/

namespace A212874.P14484611222694016696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212868 (A000124 (n + 6) + 6).toNat

end

end A212874.P14484611222694016696

/-!
# A212875: Primonacci numbers: composite numbers that appear in the Fibonacci-like sequence generated by their own prime factors.

The programs for A212875, there is no canonical definition to state claims against.
-/

/-! ## A212875.P9903137359631458412

`A339594(∑[A049614(n)]+1)`
-/

namespace A212875.P9903137359631458412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339594 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A212875.P9903137359631458412

/-! ## A212875.P4131225931311400813

`record[A339594(A246397(n+1))]`
-/

namespace A212875.P4131225931311400813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339594 (A246397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212875.P4131225931311400813

/-!
# A212876: Numbers of the form n^2+1 such that 3^(m+3)==9 (mod m) where m=n^4-1.

The programs for A212876, there is no canonical definition to state claims against.
-/

/-! ## A212876.P9552694544918588804

`∩[A002496(n+1), A212912(n+1)]`
-/

namespace A212876.P9552694544918588804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212876.P9552694544918588804

/-! ## A212876.P13603457880407604865

`∩[A054754(n+1), A212912(n+1)]`
-/

namespace A212876.P13603457880407604865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212876.P13603457880407604865

/-! ## A212876.P5987417314665125557

`∩[A054755(n+1), A212912(n+1)]`
-/

namespace A212876.P5987417314665125557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212876.P5987417314665125557

/-! ## A212876.P7122148288050333718

`∩[A054964(n+1), A212912(n+1)]`
-/

namespace A212876.P7122148288050333718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212876.P7122148288050333718

/-! ## A212876.P13608801254592299188

`∩[A121326(n+1), A212912(n+1)]`
-/

namespace A212876.P13608801254592299188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A212876.P13608801254592299188

/-!
# A212881: Numbers k such that k^3 - prime(k) is prime.

The programs for A212881, there is no canonical definition to state claims against.
-/

/-! ## A212881.P8614358601133689380

`ceil(root(A229203(n+1), 3))`
-/

namespace A212881.P8614358601133689380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A212881.P8614358601133689380

/-! ## A212881.P5351836666485889912

`round(root(A229203(C(n+1, n)), 3))`
-/

namespace A212881.P5351836666485889912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229203 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (3 : ℝ)))

end

end A212881.P5351836666485889912

/-! ## A212881.P17716827888885716255

`round(root(A229203(Δ[n²]-n), 3))`
-/

namespace A212881.P17716827888885716255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (3 : ℝ)))

end

end A212881.P17716827888885716255

/-! ## A212881.P2330184968894817110

`A000041(((-1)^n)²)*round(root(A229203(n+1), 3))`
-/

namespace A212881.P2330184968894817110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * SequenceMachineLib.roundAway ((A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A212881.P2330184968894817110

/-! ## A212881.P5163391667511343960

`round(root(A229203(n+1), 3))+(4*A005117(n+1))%2`
-/

namespace A212881.P5163391667511343960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) + Int.tmod (4 * A005117 (n + 1)) 2

end

end A212881.P5163391667511343960

/-! ## A212881.P13231131135268170625

`A000007(n+1)+round(root(A229203(n+1), 3))`
-/

namespace A212881.P13231131135268170625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + SequenceMachineLib.roundAway ((A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A212881.P13231131135268170625

/-! ## A212881.P8793214136517733249

`round(root(A229203(n+1), 3))*A014963(6*(n+1))`
-/

namespace A212881.P8793214136517733249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A014963 (6 * (n + 1))

end

end A212881.P8793214136517733249

/-! ## A212881.P12327786040834451544

`round(root(A229203(n+1), 3))%A000032(n+6)`
-/

namespace A212881.P12327786040834451544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A000032 (n + 6))

end

end A212881.P12327786040834451544

/-! ## A212881.P15420203960233889773

`A008574(round(root(A229203(n+1), 3)))/4`
-/

namespace A212881.P15420203960233889773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (SequenceMachineLib.roundAway ((A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat : ℚ) / 4

end

end A212881.P15420203960233889773

/-! ## A212881.P3531986637402392177

`A004525(2*round(root(A229203(n+1), 3)))`
-/

namespace A212881.P3531986637402392177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * SequenceMachineLib.roundAway ((A229203 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A212881.P3531986637402392177

/-!
# A212884: Number of permutations in S_n whose Rothe diagram can be rearranged to give the complement of a skew shape.

The programs for A212884, there is no canonical definition to state claims against.
-/

/-! ## A212884.P9628481368692443210

`A008621(A319850(n+1))`
-/

namespace A212884.P9628481368692443210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A319850 (n + 1)).toNat

end

end A212884.P9628481368692443210

/-! ## A212884.P7225570980704827818

`A154958(or(1, A334642(n)))`
-/

namespace A212884.P7225570980704827818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (Int.lor 1 (A334642 n)).toNat

end

end A212884.P7225570980704827818

/-! ## A212884.P7618930531578401255

`A002265(A319850(n+1)+3)`
-/

namespace A212884.P7618930531578401255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A319850 (n + 1) + 3).toNat

end

end A212884.P7618930531578401255

/-!
# A212885: Expansion of phi(q) * phi(-q)^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A212885, there is no canonical definition to state claims against.
-/

/-! ## A212885.P16332845344088890767

`A087960(n)*A246631(n)`
-/

namespace A212885.P16332845344088890767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A246631 n

end

end A212885.P16332845344088890767

/-! ## A212885.P8898773697349365464

`2*A004013(n)-A246631(n)`
-/

namespace A212885.P8898773697349365464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004013 n - A246631 n

end

end A212885.P8898773697349365464

/-! ## A212885.P3889254198599267470

`2*A246631(n)-A005875(n)`
-/

namespace A212885.P3889254198599267470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A246631 n - A005875 n

end

end A212885.P3889254198599267470

/-! ## A212885.P7489654846595056285

`(2-A084101(n))*A246631(n)`
-/

namespace A212885.P7489654846595056285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A084101 n) * A246631 n

end

end A212885.P7489654846595056285

/-! ## A212885.P7860750315499135296

`A045828(n)*A246631(n)/A246815(n)`
-/

namespace A212885.P7860750315499135296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045828 n * A246631 n : ℚ) / (A246815 n : ℚ)

end

end A212885.P7860750315499135296

/-! ## A212885.P8400938429489395018

`A057077(n+1)*A246631(n)`
-/

namespace A212885.P8400938429489395018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A246631 n

end

end A212885.P8400938429489395018

/-! ## A212885.P17308151851792020169

`A033999(n)*A080965(2*n)`
-/

namespace A212885.P17308151851792020169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A080965 (2 * n)

end

end A212885.P17308151851792020169

/-! ## A212885.P16098908835317556216

`A033999(n)*A083703(2*n)`
-/

namespace A212885.P16098908835317556216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A083703 (2 * n)

end

end A212885.P16098908835317556216

/-! ## A212885.P11048023216351842455

`A009001(2*n)*A080965(2*n)`
-/

namespace A212885.P11048023216351842455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A080965 (2 * n)

end

end A212885.P11048023216351842455

/-! ## A212885.P3619906420986167289

`A009531(2*n+1)*A080965(2*n)`
-/

namespace A212885.P3619906420986167289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A080965 (2 * n)

end

end A212885.P3619906420986167289

/-! ## A212885.P8648530036864629264

`2*A033717(2*n)-A004015(2*n)`
-/

namespace A212885.P8648530036864629264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033717 (2 * n) - A004015 (2 * n)

end

end A212885.P8648530036864629264

/-! ## A212885.P12987584730045809773

`A033999(n)*A319078(n)`
-/

namespace A212885.P12987584730045809773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A319078 n

end

end A212885.P12987584730045809773

/-! ## A212885.P9956215553203034722

`abs(A319078(n))*A087960(n)`
-/

namespace A212885.P9956215553203034722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319078 n| * A087960 n

end

end A212885.P9956215553203034722

/-! ## A212885.P9015065231684573110

`ratio[A057077(n)]*A319078(n)`
-/

namespace A212885.P9015065231684573110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A319078 n : ℚ)

end

end A212885.P9015065231684573110

/-! ## A212885.P8706908145379696109

`A057077(2*n)*A319078(n)`
-/

namespace A212885.P8706908145379696109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A319078 n

end

end A212885.P8706908145379696109

/-! ## A212885.P4944200040105593218

`A319078(n)/A087960(2*n)`
-/

namespace A212885.P4944200040105593218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319078 n : ℚ) / (A087960 (2 * n) : ℚ)

end

end A212885.P4944200040105593218

/-! ## A212885.P8172733683717770155

`A319078(n)/A057077(A057077(n)+n)`
-/

namespace A212885.P8172733683717770155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319078 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A212885.P8172733683717770155

/-! ## A212885.P9970860490084539624

`A213624(n)/A246833(n)*A319078(n)`
-/

namespace A212885.P9970860490084539624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213624 n : ℚ) / (A246833 n : ℚ) * (A319078 n : ℚ)

end

end A212885.P9970860490084539624

/-! ## A212885.P12531622078836984197

`A116597(4*n)`
-/

namespace A212885.P12531622078836984197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116597 (4 * n)

end

end A212885.P12531622078836984197

/-! ## A212885.P9398230514628233690

`A246814(4*n)`
-/

namespace A212885.P9398230514628233690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246814 (4 * n)

end

end A212885.P9398230514628233690

/-!
# A212889: Number of (w,x,y,z) with all terms in {0,...,n} and even range.

The programs for A212889, the canonical program `A212889.P10405451188025400219` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212889 has offset 0).

The definition of A212889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212889.P10405451188025400219

`∑[A007588(or(1, n))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A212889

/-- `∑[A007588(or(1, n))]` -/
def P10405451188025400219.Spec : Prop :=
  ∀ n, P10405451188025400219.a n = A212889 n

theorem P10405451188025400219.correct : P10405451188025400219.Spec := by
  intro n
  simp only [A212889]

end A212889

/-! ## A212889.P11964784511687022586

`(n+1)^4-A212890(n)`
-/

namespace A212889.P11964784511687022586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212890 n

end

end A212889.P11964784511687022586

namespace A212889

/-- `(n+1)^4-A212890(n)` -/
def P11964784511687022586.Spec : Prop :=
  ∀ n, P11964784511687022586.a n = A212889 n

theorem P11964784511687022586.correct : P11964784511687022586.Spec := by
  intro n
  simp only [A212889, Nat.add_sub_cancel, A212889.P11964784511687022586.a, A212889.P10405451188025400219.f1, A212889.P10405451188025400219.a, A007588, A007588.P13302891266756921093.a, A212890, A212890.P12500765985835150325.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212889

/-! ## A212889.P15955696865341181663

`∑[A007588(A109613(n))]`
-/

namespace A212889.P15955696865341181663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P15955696865341181663

namespace A212889

/-- `∑[A007588(A109613(n))]` -/
def P15955696865341181663.Spec : Prop :=
  ∀ n, P15955696865341181663.a n = A212889 n

end A212889

/-! ## A212889.P2550867590529492388

`∑[A193250(A008619(n))]`
-/

namespace A212889.P2550867590529492388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193250 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P2550867590529492388

namespace A212889

/-- `∑[A193250(A008619(n))]` -/
def P2550867590529492388.Spec : Prop :=
  ∀ n, P2550867590529492388.a n = A212889 n

end A212889

/-! ## A212889.P14050528156344794813

`∑[A007588(A052928(n)+1)]`
-/

namespace A212889.P14050528156344794813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A052928 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P14050528156344794813

namespace A212889

/-- `∑[A007588(A052928(n)+1)]` -/
def P14050528156344794813.Spec : Prop :=
  ∀ n, P14050528156344794813.a n = A212889 n

end A212889

/-! ## A212889.P17872317286034791430

`∑[A193250(A004526(n)+1)]`
-/

namespace A212889.P17872317286034791430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193250 (A004526 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P17872317286034791430

namespace A212889

/-- `∑[A193250(A004526(n)+1)]` -/
def P17872317286034791430.Spec : Prop :=
  ∀ n, P17872317286034791430.a n = A212889 n

end A212889

/-! ## A212889.P1838813342660662253

`∑[A007588(A005408(floor(n/2)))]`
-/

namespace A212889.P1838813342660662253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A005408 ⌊(n : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P1838813342660662253

namespace A212889

/-- `∑[A007588(A005408(floor(n/2)))]` -/
def P1838813342660662253.Spec : Prop :=
  ∀ n, P1838813342660662253.a n = A212889 n

end A212889

/-! ## A212889.P10227978244634397155

`∑[A007588(A063196(n+1))]+1`
-/

namespace A212889.P10227978244634397155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A063196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A212889.P10227978244634397155

namespace A212889

/-- `∑[A007588(A063196(n+1))]+1` -/
def P10227978244634397155.Spec : Prop :=
  ∀ n, P10227978244634397155.a n = A212889 n

end A212889

/-! ## A212889.P14180760793634434798

`∑[A007588(Δ[A000982(n)])]`
-/

namespace A212889.P14180760793634434798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P14180760793634434798

namespace A212889

/-- `∑[A007588(Δ[A000982(n)])]` -/
def P14180760793634434798.Spec : Prop :=
  ∀ n, P14180760793634434798.a n = A212889 n

end A212889

/-! ## A212889.P16971853251433156800

`∑[A007588(Δ[A061925(n)])]`
-/

namespace A212889.P16971853251433156800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061925 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P16971853251433156800

namespace A212889

/-- `∑[A007588(Δ[A061925(n)])]` -/
def P16971853251433156800.Spec : Prop :=
  ∀ n, P16971853251433156800.a n = A212889 n

end A212889

/-! ## A212889.P9523560248637639804

`∑[A007588(A000035(n+1)+n)]`
-/

namespace A212889.P9523560248637639804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A000035 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P9523560248637639804

namespace A212889

/-- `∑[A007588(A000035(n+1)+n)]` -/
def P9523560248637639804.Spec : Prop :=
  ∀ n, P9523560248637639804.a n = A212889 n

end A212889

/-! ## A212889.P16850219409812068625

`∑[A007588(A004524(2*n)+1)]`
-/

namespace A212889.P16850219409812068625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A004524 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P16850219409812068625

namespace A212889

/-- `∑[A007588(A004524(2*n)+1)]` -/
def P16850219409812068625.Spec : Prop :=
  ∀ n, P16850219409812068625.a n = A212889 n

end A212889

/-! ## A212889.P527093392601026773

`∑[A007588(A004525(2*n+1))]`
-/

namespace A212889.P527093392601026773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A004525 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P527093392601026773

namespace A212889

/-- `∑[A007588(A004525(2*n+1))]` -/
def P527093392601026773.Spec : Prop :=
  ∀ n, P527093392601026773.a n = A212889 n

end A212889

/-! ## A212889.P7786906531762383246

`∑[A007588(A029579(n*gcd(2, n)))]`
-/

namespace A212889.P7786906531762383246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A029579 (n * Nat.gcd 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P7786906531762383246

namespace A212889

/-- `∑[A007588(A029579(n*gcd(2, n)))]` -/
def P7786906531762383246.Spec : Prop :=
  ∀ n, P7786906531762383246.a n = A212889 n

end A212889

/-! ## A212889.P2759272947304383877

`∑[A004273(A109613(n)²)*A109613(n)]`
-/

namespace A212889.P2759272947304383877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A109613 n ^ 2).toNat * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P2759272947304383877

namespace A212889

/-- `∑[A004273(A109613(n)²)*A109613(n)]` -/
def P2759272947304383877.Spec : Prop :=
  ∀ n, P2759272947304383877.a n = A212889 n

end A212889

/-! ## A212889.P16045933336673935723

`∑[A109613(n)*A266072(A109613(n)²)]`
-/

namespace A212889.P16045933336673935723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A266072 (A109613 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212889.P16045933336673935723

namespace A212889

/-- `∑[A109613(n)*A266072(A109613(n)²)]` -/
def P16045933336673935723.Spec : Prop :=
  ∀ n, P16045933336673935723.a n = A212889 n

end A212889

/-!
# A212890: Number of (w,x,y,z) with all terms in {0,...,n} and odd range.

The programs for A212890, the canonical program `A212890.P12500765985835150325` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212890 has offset 0).

The definition of A212890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212890.P12500765985835150325

`(n+1)^4-A212889(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A212890

/-- `(n+1)^4-A212889(n)` -/
def P12500765985835150325.Spec : Prop :=
  ∀ n, P12500765985835150325.a n = A212890 n

theorem P12500765985835150325.correct : P12500765985835150325.Spec := by
  intro n
  simp only [A212890]

end A212890

/-! ## A212890.P7487373011406576120

`∑[A007588(∑[A010673(n)])]`
-/

namespace A212890.P7487373011406576120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P7487373011406576120

namespace A212890

/-- `∑[A007588(∑[A010673(n)])]` -/
def P7487373011406576120.Spec : Prop :=
  ∀ n, P7487373011406576120.a n = A212890 n

end A212890

/-! ## A212890.P7491592246220053011

`∑[A007588(A000035(n)+n)]`
-/

namespace A212890.P7491592246220053011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A000035 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P7491592246220053011

namespace A212890

/-- `∑[A007588(A000035(n)+n)]` -/
def P7491592246220053011.Spec : Prop :=
  ∀ n, P7491592246220053011.a n = A212890 n

end A212890

/-! ## A212890.P7150427046677848973

`∑[A007588(Δ[A099392(n+1)])]`
-/

namespace A212890.P7150427046677848973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P7150427046677848973

namespace A212890

/-- `∑[A007588(Δ[A099392(n+1)])]` -/
def P7150427046677848973.Spec : Prop :=
  ∀ n, P7150427046677848973.a n = A212890 n

end A212890

/-! ## A212890.P655143111960811106

`∑[A007588(∑[2*A000035(n)])]`
-/

namespace A212890.P655143111960811106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P655143111960811106

namespace A212890

/-- `∑[A007588(∑[2*A000035(n)])]` -/
def P655143111960811106.Spec : Prop :=
  ∀ n, P655143111960811106.a n = A212890 n

end A212890

/-! ## A212890.P4163536587076258934

`∑[A007588(Δ[2*A002620(n)])]`
-/

namespace A212890.P4163536587076258934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002620 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P4163536587076258934

namespace A212890

/-- `∑[A007588(Δ[2*A002620(n)])]` -/
def P4163536587076258934.Spec : Prop :=
  ∀ n, P4163536587076258934.a n = A212890 n

end A212890

/-! ## A212890.P11372083753131073502

`∑[∑[A000035(n)*A005914(n)]]`
-/

namespace A212890.P11372083753131073502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A005914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P11372083753131073502

namespace A212890

/-- `∑[∑[A000035(n)*A005914(n)]]` -/
def P11372083753131073502.Spec : Prop :=
  ∀ n, P11372083753131073502.a n = A212890 n

end A212890

/-! ## A212890.P7541211574253789404

`∑[A007588(A109613(n+1)-1)]`
-/

namespace A212890.P7541211574253789404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A109613 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P7541211574253789404

namespace A212890

/-- `∑[A007588(A109613(n+1)-1)]` -/
def P7541211574253789404.Spec : Prop :=
  ∀ n, P7541211574253789404.a n = A212890 n

end A212890

/-! ## A212890.P4939949487902117303

`∑[A007588(Δ[A007590(n)])]`
-/

namespace A212890.P4939949487902117303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P4939949487902117303

namespace A212890

/-- `∑[A007588(Δ[A007590(n)])]` -/
def P4939949487902117303.Spec : Prop :=
  ∀ n, P4939949487902117303.a n = A212890 n

end A212890

/-! ## A212890.P13777485051023636340

`∑[A007588(A052928(n+1))]`
-/

namespace A212890.P13777485051023636340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A052928 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P13777485051023636340

namespace A212890

/-- `∑[A007588(A052928(n+1))]` -/
def P13777485051023636340.Spec : Prop :=
  ∀ n, P13777485051023636340.a n = A212890 n

end A212890

/-! ## A212890.P17594564311814149860

`∑[A007588(A063196(n+2)-1)]`
-/

namespace A212890.P17594564311814149860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A063196 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P17594564311814149860

namespace A212890

/-- `∑[A007588(A063196(n+2)-1)]` -/
def P17594564311814149860.Spec : Prop :=
  ∀ n, P17594564311814149860.a n = A212890 n

end A212890

/-! ## A212890.P12597827530817330034

`∑[A007588(A004524(A026491(n)))]`
-/

namespace A212890.P12597827530817330034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (A004524 (A026491 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P12597827530817330034

namespace A212890

/-- `∑[A007588(A004524(A026491(n)))]` -/
def P12597827530817330034.Spec : Prop :=
  ∀ n, P12597827530817330034.a n = A212890 n

end A212890

/-! ## A212890.P10285635349226178636

`∑[A007588(log2(A056450(n)))]`
-/

namespace A212890.P10285635349226178636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (SequenceMachineLib.roundAway (Real.logb 2 (A056450 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212890.P10285635349226178636

namespace A212890

/-- `∑[A007588(log2(A056450(n)))]` -/
def P10285635349226178636.Spec : Prop :=
  ∀ n, P10285635349226178636.a n = A212890 n

end A212890

/-!
# A212891: Rectangular array: (row n) = b**c, where b(h) = h, c(h) = (n-1+h)^2, n>=1, h>=1, and ** = convolution.

The programs for A212891, there is no canonical definition to state claims against.
-/

/-! ## A212891.P6751500644798331278

`2*A213548(n+1)-A213500(n+1)`
-/

namespace A212891.P6751500644798331278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213548 (n + 1) - A213500 (n + 1)

end

end A212891.P6751500644798331278

/-! ## A212891.P8980973863480408804

`2*A213564(n+1)-A213505(n+1)`
-/

namespace A212891.P8980973863480408804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213564 (n + 1) - A213505 (n + 1)

end

end A212891.P8980973863480408804

/-! ## A212891.P5844545804225954987

`A213548(n+1)+A213548(n+1)-(A213819(n+1)-A213750(n+1))`
-/

namespace A212891.P5844545804225954987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) + (A213548 (n + 1) - (A213819 (n + 1) - A213750 (n + 1)))

end

end A212891.P5844545804225954987

/-! ## A212891.P15609186846507067451

`A213548(n+1)+A213548(n+1)-(A213821(n+1)-A213751(n+1))`
-/

namespace A212891.P15609186846507067451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213548 (n + 1) + (A213548 (n + 1) - (A213821 (n + 1) - A213751 (n + 1)))

end

end A212891.P15609186846507067451

/-! ## A212891.P13083320202746742155

`A213548(n+1)+A213548(n+1)-(A213751(n+1)+A049777(n+1))/2`
-/

namespace A212891.P13083320202746742155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213548 (n + 1) : ℚ) + ((A213548 (n + 1) : ℚ) - (A213751 (n + 1) + A049777 (n + 1) : ℚ) / 2)

end

end A212891.P13083320202746742155

/-! ## A212891.P10907541091523735950

`A004277(A213548(n+1))-A213500(n+1)`
-/

namespace A212891.P10907541091523735950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213548 (n + 1)).toNat - A213500 (n + 1)

end

end A212891.P10907541091523735950

/-! ## A212891.P7056576444528129219

`A004277(A213548(n+1))+A213750(n+1)-A213819(n+1)`
-/

namespace A212891.P7056576444528129219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213548 (n + 1)).toNat + (A213750 (n + 1) - A213819 (n + 1))

end

end A212891.P7056576444528129219

/-! ## A212891.P6043032141970558514

`A004277(A213548(n+1))-(A213751(n+1)+A049777(n+1))/2`
-/

namespace A212891.P6043032141970558514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A213548 (n + 1)).toNat : ℚ) - (A213751 (n + 1) + A049777 (n + 1) : ℚ) / 2

end

end A212891.P6043032141970558514

/-! ## A212891.P17068360321336849399

`A004277(A213548(n+1))-(2*A213751(n+1)-A213771(n+1))`
-/

namespace A212891.P17068360321336849399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213548 (n + 1)).toNat - (2 * A213751 (n + 1) - A213771 (n + 1))

end

end A212891.P17068360321336849399

/-! ## A212891.P994836285930056842

`A004277(A213564(n+1))-A213505(n+1)`
-/

namespace A212891.P994836285930056842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213564 (n + 1)).toNat - A213505 (n + 1)

end

end A212891.P994836285930056842

/-!
# A212892: a(n) = n^4/8 if n is even, a(n) = (n^2-1)^2/8 if n is odd.

The programs for A212892, the canonical program `A212892.P6581713301442477666` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212892 has offset 0).

The definition of A212892 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212892.P6581713301442477666

`2*floor(n²/4)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212892

/-- `2*floor(n²/4)²` -/
def P6581713301442477666.Spec : Prop :=
  ∀ n, P6581713301442477666.a n = A212892 n

theorem P6581713301442477666.correct : P6581713301442477666.Spec := by
  intro n
  simp only [A212892]

end A212892

/-! ## A212892.P7330771191462959287

`∑[and(n, -2)]²/2`
-/

namespace A212892.P7330771191462959287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A212892.P7330771191462959287

namespace A212892

/-- `∑[and(n, -2)]²/2` -/
def P7330771191462959287.Spec : Prop :=
  ∀ n, P7330771191462959287.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P14351604246090244635

`(n%2-n²)²/8`
-/

namespace A212892.P14351604246090244635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((n % 2 : ℕ) : ℤ) - (n ^ 2 : ℤ)) ^ 2 : ℚ) / 8

end

end A212892.P14351604246090244635

namespace A212892

/-- `(n%2-n²)²/8` -/
def P14351604246090244635.Spec : Prop :=
  ∀ n, P14351604246090244635.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P2263286991770873185

`∑[∑[lcm(2, (1-n)²)]-2]`
-/

namespace A212892.P2263286991770873185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((1 - (n : ℤ)) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212892.P2263286991770873185

namespace A212892

/-- `∑[∑[lcm(2, (1-n)²)]-2]` -/
def P2263286991770873185.Spec : Prop :=
  ∀ n, P2263286991770873185.a n = A212892 n

end A212892

/-! ## A212892.P11153533659710478542

`∑[xor(n, n²%2)]²/2`
-/

namespace A212892.P11153533659710478542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n ^ 2 % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A212892.P11153533659710478542

namespace A212892

/-- `∑[xor(n, n²%2)]²/2` -/
def P11153533659710478542.Spec : Prop :=
  ∀ n, P11153533659710478542.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P18094430788335989885

`∑[a(n-2)+sqrt(2)]²` with `a(0)=0, a(1)=0`
-/

namespace A212892.P18094430788335989885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + Real.sqrt (2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212892.P18094430788335989885

namespace A212892

/-- `∑[a(n-2)+sqrt(2)]²` -/
def P18094430788335989885.Spec : Prop :=
  ∀ n, P18094430788335989885.a n = (A212892 n : ℝ)

end A212892

/-! ## A212892.P2385013895554873031

`∑[gcd(2, n)+n-2]²/2`
-/

namespace A212892.P2385013895554873031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A212892.P2385013895554873031

namespace A212892

/-- `∑[gcd(2, n)+n-2]²/2` -/
def P2385013895554873031.Spec : Prop :=
  ∀ n, P2385013895554873031.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P3479574125600646406

`∑[lcm(n, n-1)*floor(n/2)]`
-/

namespace A212892.P3479574125600646406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℤ) * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212892.P3479574125600646406

namespace A212892

/-- `∑[lcm(n, n-1)*floor(n/2)]` -/
def P3479574125600646406.Spec : Prop :=
  ∀ n, P3479574125600646406.a n = A212892 n

end A212892

/-! ## A212892.P16123446584553838363

`∑[a(n-2)+2]²/2` with `a(0)=0, a(1)=0`
-/

namespace A212892.P16123446584553838363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A212892.P16123446584553838363

namespace A212892

/-- `∑[a(n-2)+2]²/2` -/
def P16123446584553838363.Spec : Prop :=
  ∀ n, P16123446584553838363.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P543392005682893077

`floor(2*∑[a(n-2)+1]²)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212892.P543392005682893077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212892.P543392005682893077

namespace A212892

/-- `floor(2*∑[a(n-2)+1]²)` -/
def P543392005682893077.Spec : Prop :=
  ∀ n, (P543392005682893077.a n : ℤ) = A212892 n

end A212892

/-! ## A212892.P13635240360701752660

`floor(∑[a(n-2)-2]²/2)` with `a(0)=0, a(1)=0`
-/

namespace A212892.P13635240360701752660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2⌋

end

end A212892.P13635240360701752660

namespace A212892

/-- `floor(∑[a(n-2)-2]²/2)` -/
def P13635240360701752660.Spec : Prop :=
  ∀ n, P13635240360701752660.a n = A212892 n

end A212892

/-! ## A212892.P9759878766680406152

`∑[∑[2-a(n-1)]]²/2` with `a(0)=0, a(1)=0`
-/

namespace A212892.P9759878766680406152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A212892.P9759878766680406152

namespace A212892

/-- `∑[∑[2-a(n-1)]]²/2` -/
def P9759878766680406152.Spec : Prop :=
  ∀ n, P9759878766680406152.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P16715681888617200637

`∑[∑[∑[ogf(2x^2/(1+x))]]]²/2`
-/

namespace A212892.P16715681888617200637
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A212892.P16715681888617200637

namespace A212892

/-- `∑[∑[∑[ogf(2x^2/(1+x))]]]²/2` -/
def P16715681888617200637.Spec : Prop :=
  ∀ n, P16715681888617200637.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P14475661055857441776

`floor(2*∑[n-1-a(n-1)]²)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212892.P14475661055857441776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212892.P14475661055857441776

namespace A212892

/-- `floor(2*∑[n-1-a(n-1)]²)` -/
def P14475661055857441776.Spec : Prop :=
  ∀ n, P14475661055857441776.a n = A212892 n

end A212892

/-! ## A212892.P1111202606981354426

`A007590(n)²/2`
-/

namespace A212892.P1111202606981354426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007590 n ^ 2 : ℚ) / 2

end

end A212892.P1111202606981354426

namespace A212892

/-- `A007590(n)²/2` -/
def P1111202606981354426.Spec : Prop :=
  ∀ n, P1111202606981354426.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P16579724157823317340

`∑[A052928(n)]²/2`
-/

namespace A212892.P16579724157823317340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2

end

end A212892.P16579724157823317340

namespace A212892

/-- `∑[A052928(n)]²/2` -/
def P16579724157823317340.Spec : Prop :=
  ∀ n, P16579724157823317340.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P1429476723171963684

`(1-A099392(n+1))²/2`
-/

namespace A212892.P1429476723171963684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - A099392 (n + 1)) ^ 2 : ℚ) / 2

end

end A212892.P1429476723171963684

namespace A212892

/-- `(1-A099392(n+1))²/2` -/
def P1429476723171963684.Spec : Prop :=
  ∀ n, P1429476723171963684.a n = (A212892 n : ℚ)

end A212892

/-! ## A212892.P14086220003198353342

`∑[n*(A031878(n+1)-n)]`
-/

namespace A212892.P14086220003198353342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A031878 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212892.P14086220003198353342

namespace A212892

/-- `∑[n*(A031878(n+1)-n)]` -/
def P14086220003198353342.Spec : Prop :=
  ∀ n, P14086220003198353342.a n = A212892 n

end A212892

/-! ## A212892.P13817196579215638429

`A030179(n)+A030179(n)`
-/

namespace A212892.P13817196579215638429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030179 n + A030179 n

end

end A212892.P13817196579215638429

namespace A212892

/-- `A030179(n)+A030179(n)` -/
def P13817196579215638429.Spec : Prop :=
  ∀ n, P13817196579215638429.a n = A212892 n

theorem P13817196579215638429.correct : P13817196579215638429.Spec := by
  intro n
  simp only [A212892, Nat.add_sub_cancel, A212892.P13817196579215638429.a, A212892.P6581713301442477666.a, A030179, A030179.P12931471110697372176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212892

/-! ## A212892.P13857463732916471542

`A227970(n)+A002620(n)`
-/

namespace A212892.P13857463732916471542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227970 n + A002620 n

end

end A212892.P13857463732916471542

namespace A212892

/-- `A227970(n)+A002620(n)` -/
def P13857463732916471542.Spec : Prop :=
  ∀ n, P13857463732916471542.a n = A212892 n

end A212892

/-!
# A212893: Number of quadruples (w,x,y,z) with all terms in {0,...,n} such that w-x, x-y, and y-z all have the same parity.

The programs for A212893, the canonical program `A212893.P71681876360897335` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212893 has offset 0).

The definition of A212893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212893.P71681876360897335

`ceil((n+1)²/2)²`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212893

/-- `ceil((n+1)²/2)²` -/
def P71681876360897335.Spec : Prop :=
  ∀ n, P71681876360897335.a n = A212893 n

theorem P71681876360897335.correct : P71681876360897335.Spec := by
  intro n
  simp only [A212893]

end A212893

/-! ## A212893.P9673933867268349180

`∑[or(1, n)]²`
-/

namespace A212893.P9673933867268349180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212893.P9673933867268349180

namespace A212893

/-- `∑[or(1, n)]²` -/
def P9673933867268349180.Spec : Prop :=
  ∀ n, (P9673933867268349180.a n : ℤ) = A212893 n

end A212893

/-! ## A212893.P18084563922993001912

`∑[or(1, n)]^2`
-/

namespace A212893.P18084563922993001912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212893.P18084563922993001912

namespace A212893

/-- `∑[or(1, n)]^2` -/
def P18084563922993001912.Spec : Prop :=
  ∀ n, (P18084563922993001912.a n : ℤ) = A212893 n

end A212893

/-! ## A212893.P1588181147598824340

`root(∑[or(1, n)], 1/2)`
-/

namespace A212893.P1588181147598824340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A212893.P1588181147598824340

namespace A212893

/-- `root(∑[or(1, n)], 1/2)` -/
def P1588181147598824340.Spec : Prop :=
  ∀ n, P1588181147598824340.a n = (A212893 n : ℝ)

end A212893

/-! ## A212893.P2107388459221959846

`record[ceil((1-n)²/2)²]`
-/

namespace A212893.P2107388459221959846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A212893.P2107388459221959846

namespace A212893

/-- `record[ceil((1-n)²/2)²]` -/
def P2107388459221959846.Spec : Prop :=
  ∀ n, P2107388459221959846.a n = A212893 n

end A212893

/-! ## A212893.P4420807484714943635

`∑[a(n-2)+2]^2` with `a(0)=1, a(1)=1`
-/

namespace A212893.P4420807484714943635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212893.P4420807484714943635

namespace A212893

/-- `∑[a(n-2)+2]^2` -/
def P4420807484714943635.Spec : Prop :=
  ∀ n, (P4420807484714943635.a n : ℤ) = A212893 n

end A212893

/-! ## A212893.P4916422789075469849

`floor(∑[a(n-2)+2]²)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A212893.P4916422789075469849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212893.P4916422789075469849

namespace A212893

/-- `floor(∑[a(n-2)+2]²)` -/
def P4916422789075469849.Spec : Prop :=
  ∀ n, (P4916422789075469849.a n : ℤ) = A212893 n

end A212893

/-! ## A212893.P16635315484071336421

`ceil(∑[a(n-2)+2]²)` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A212893.P16635315484071336421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212893.P16635315484071336421

namespace A212893

/-- `ceil(∑[a(n-2)+2]²)` -/
def P16635315484071336421.Spec : Prop :=
  ∀ n, (P16635315484071336421.a n : ℤ) = A212893 n

end A212893

/-! ## A212893.P12539255699311448345

`round(∑[a(n-2)+2]²)` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A212893.P12539255699311448345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212893.P12539255699311448345

namespace A212893

/-- `round(∑[a(n-2)+2]²)` -/
def P12539255699311448345.Spec : Prop :=
  ∀ n, (P12539255699311448345.a n : ℤ) = A212893 n

end A212893

/-! ## A212893.P7231797157749688282

`∑[a(n-2)+4]²/4` with `a(0)=2, a(1)=2`
-/

namespace A212893.P7231797157749688282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 4

end

end A212893.P7231797157749688282

namespace A212893

/-- `∑[a(n-2)+4]²/4` -/
def P7231797157749688282.Spec : Prop :=
  ∀ n, P7231797157749688282.a n = (A212893 n : ℚ)

end A212893

/-! ## A212893.P4191921846129725207

`floor(∑[∑[2-a(n-1)]]²)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A212893.P4191921846129725207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A212893.P4191921846129725207

namespace A212893

/-- `floor(∑[∑[2-a(n-1)]]²)` -/
def P4191921846129725207.Spec : Prop :=
  ∀ n, P4191921846129725207.a n = A212893 n

end A212893

/-! ## A212893.P11691510383123120739

`∑[∑[4-a(n-1)]]²/4` with `a(0)=2, a(1)=0`
-/

namespace A212893.P11691510383123120739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A212893.P11691510383123120739

namespace A212893

/-- `∑[∑[4-a(n-1)]]²/4` -/
def P11691510383123120739.Spec : Prop :=
  ∀ n, P11691510383123120739.a n = (A212893 n : ℚ)

end A212893

/-! ## A212893.P17310566913144205053

`1/∑[a(n-2)-2]^(-2)` with `a(0)=-1, a(1)=-1`
-/

namespace A212893.P17310566913144205053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 2) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-2 : ℤ)

end

end A212893.P17310566913144205053

namespace A212893

/-- `1/∑[a(n-2)-2]^(-2)` -/
def P17310566913144205053.Spec : Prop :=
  ∀ n, P17310566913144205053.a n = (A212893 n : ℚ)

end A212893

/-! ## A212893.P17589296222363512098

`A211064(n+1)-A210370(n)`
-/

namespace A212893.P17589296222363512098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211064 (n + 1) - A210370 n

end

end A212893.P17589296222363512098

namespace A212893

/-- `A211064(n+1)-A210370(n)` -/
def P17589296222363512098.Spec : Prop :=
  ∀ n, P17589296222363512098.a n = A212893 n

end A212893

/-! ## A212893.P6365587804269161637

`A210369(n)-A211065(n+1)`
-/

namespace A212893.P6365587804269161637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210369 n - A211065 (n + 1)

end

end A212893.P6365587804269161637

namespace A212893

/-- `A210369(n)-A211065(n+1)` -/
def P6365587804269161637.Spec : Prop :=
  ∀ n, P6365587804269161637.a n = A212893 n

end A212893

/-! ## A212893.P10871437610508098320

`A292051(n+1)+A178946(n+1)`
-/

namespace A212893.P10871437610508098320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292051 (n + 1) + A178946 (n + 1)

end

end A212893.P10871437610508098320

namespace A212893

/-- `A292051(n+1)+A178946(n+1)` -/
def P10871437610508098320.Spec : Prop :=
  ∀ n, P10871437610508098320.a n = A212893 n

end A212893

/-! ## A212893.P15777316422186196887

`∑[abs(Δ[A000982(n)²])]`
-/

namespace A212893.P15777316422186196887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A212893.P15777316422186196887

namespace A212893

/-- `∑[abs(Δ[A000982(n)²])]` -/
def P15777316422186196887.Spec : Prop :=
  ∀ n, P15777316422186196887.a n = A212893 n

end A212893

/-! ## A212893.P457250185604755324

`A000290(A000982(n+1))`
-/

namespace A212893.P457250185604755324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000982 (n + 1)).toNat

end

end A212893.P457250185604755324

namespace A212893

/-- `A000290(A000982(n+1))` -/
def P457250185604755324.Spec : Prop :=
  ∀ n, P457250185604755324.a n = A212893 n

end A212893

/-! ## A212893.P11843843175160179654

`A000290(A061925(n+1)-1)`
-/

namespace A212893.P11843843175160179654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A061925 (n + 1) - 1).toNat

end

end A212893.P11843843175160179654

namespace A212893

/-- `A000290(A061925(n+1)-1)` -/
def P11843843175160179654.Spec : Prop :=
  ∀ n, P11843843175160179654.a n = A212893 n

end A212893

/-! ## A212893.P11006613791913165854

`A000290(A001971(2*(n+1)))`
-/

namespace A212893.P11006613791913165854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A001971 (2 * (n + 1))).toNat

end

end A212893.P11006613791913165854

namespace A212893

/-- `A000290(A001971(2*(n+1)))` -/
def P11006613791913165854.Spec : Prop :=
  ∀ n, P11006613791913165854.a n = A212893 n

end A212893

/-!
# A212894: Number of (w,x,y,z) with all terms in {0,...,n} and (least gapsize)=1.

The programs for A212894, the canonical program `A212894.P5428749820616821002` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212894 has offset 0).

The definition of A212894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212894.P5428749820616821002

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=22, a(3)=92, a(4)=246, a(5)=520`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212894

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5428749820616821002.Spec : Prop :=
  ∀ n, P5428749820616821002.a n = A212894 n

theorem P5428749820616821002.correct : P5428749820616821002.Spec := by
  intro n
  simp only [A212894]

end A212894

/-! ## A212894.P17891951045995662009

`A212896(n)-A005915(n)`
-/

namespace A212894.P17891951045995662009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212896 n - A005915 n

end

end A212894.P17891951045995662009

namespace A212894

/-- `A212896(n)-A005915(n)` -/
def P17891951045995662009.Spec : Prop :=
  ∀ n, P17891951045995662009.a n = A212894 n

end A212894

/-! ## A212894.P4238386012279585220

`A000578(n)+A000583(n)-A212897(n)`
-/

namespace A212894.P4238386012279585220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A000583 n - A212897 n)

end

end A212894.P4238386012279585220

namespace A212894

/-- `A000578(n)+A000583(n)-A212897(n)` -/
def P4238386012279585220.Spec : Prop :=
  ∀ n, P4238386012279585220.a n = A212894 n

end A212894

/-! ## A212894.P17553155229748723094

`A000578(n)+A212896(n)-A005917(n+1)`
-/

namespace A212894.P17553155229748723094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A212896 n - A005917 (n + 1))

end

end A212894.P17553155229748723094

namespace A212894

/-- `A000578(n)+A212896(n)-A005917(n+1)` -/
def P17553155229748723094.Spec : Prop :=
  ∀ n, P17553155229748723094.a n = A212894 n

end A212894

/-! ## A212894.P2405107268738697714

`A212765(2*n)-A212897(n)`
-/

namespace A212894.P2405107268738697714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212765 (2 * n) - A212897 n

end

end A212894.P2405107268738697714

namespace A212894

/-- `A212765(2*n)-A212897(n)` -/
def P2405107268738697714.Spec : Prop :=
  ∀ n, P2405107268738697714.a n = A212894 n

end A212894

/-! ## A212894.P7573302946176867592

`A212896(n)-A266769(A008458(n))`
-/

namespace A212894.P7573302946176867592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212896 n - A266769 (A008458 n).toNat

end

end A212894.P7573302946176867592

namespace A212894

/-- `A212896(n)-A266769(A008458(n))` -/
def P7573302946176867592.Spec : Prop :=
  ∀ n, P7573302946176867592.a n = A212894 n

end A212894

/-! ## A212894.P11437171135239438270

`A212896(n)-A266769(A008588(n))`
-/

namespace A212894.P11437171135239438270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212896 n - A266769 (A008588 n).toNat

end

end A212894.P11437171135239438270

namespace A212894

/-- `A212896(n)-A266769(A008588(n))` -/
def P11437171135239438270.Spec : Prop :=
  ∀ n, P11437171135239438270.a n = A212894 n

end A212894

/-!
# A212895: Number of (w,x,y,z) with all terms in {0,...,n} and (least gapsize)=2.

The programs for A212895, the canonical program `A212895.P11736727764256027544` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212895 has offset 0).

The definition of A212895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212895.P1704064193722887359

`A212898(n)-A212896(n)`
-/

namespace A212895.P1704064193722887359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212898 n - A212896 n

end

end A212895.P1704064193722887359

namespace A212895

/-- `A212898(n)-A212896(n)` -/
def P1704064193722887359.Spec : Prop :=
  ∀ n, P1704064193722887359.a n = A212895 n

end A212895

/-! ## A212895.P11736727764256027544

`A212897(n)-A212899(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A212895

/-- `A212897(n)-A212899(n)` -/
def P11736727764256027544.Spec : Prop :=
  ∀ n, P11736727764256027544.a n = A212895 n

theorem P11736727764256027544.correct : P11736727764256027544.Spec := by
  intro n
  simp only [A212895]

end A212895

/-! ## A212895.P14463458175304049985

`A212898(or(n, char[1]))%A212896(n)`
-/

namespace A212895.P14463458175304049985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212898 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0))) (A212896 n)

end

end A212895.P14463458175304049985

namespace A212895

/-- `A212898(or(n, char[1]))%A212896(n)` -/
def P14463458175304049985.Spec : Prop :=
  ∀ n, P14463458175304049985.a n = A212895 n

end A212895

/-! ## A212895.P11732589790706585577

`A212898(A028310(n))%A212896(n)`
-/

namespace A212895.P11732589790706585577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212898 (A028310 n).toNat) (A212896 n)

end

end A212895.P11732589790706585577

namespace A212895

/-- `A212898(A028310(n))%A212896(n)` -/
def P11732589790706585577.Spec : Prop :=
  ∀ n, P11732589790706585577.a n = A212895 n

end A212895

/-! ## A212895.P7930983371190928016

`A212898(A000038(n)+n)%A212896(n)`
-/

namespace A212895.P7930983371190928016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212898 (A000038 n + (n : ℤ)).toNat) (A212896 n)

end

end A212895.P7930983371190928016

namespace A212895

/-- `A212898(A000038(n)+n)%A212896(n)` -/
def P7930983371190928016.Spec : Prop :=
  ∀ n, P7930983371190928016.a n = A212895 n

end A212895

/-! ## A212895.P17974618955006063628

`(A212898(n)%A212896(n))%A212893(n)`
-/

namespace A212895.P17974618955006063628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A212898 n) (A212896 n)) (A212893 n)

end

end A212895.P17974618955006063628

namespace A212895

/-- `(A212898(n)%A212896(n))%A212893(n)` -/
def P17974618955006063628.Spec : Prop :=
  ∀ n, P17974618955006063628.a n = A212895 n

end A212895

/-! ## A212895.P833667711818073615

`A212898(A123108(2*n))%A212896(n)`
-/

namespace A212895.P833667711818073615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212898 (A123108 (2 * n)).toNat) (A212896 n)

end

end A212895.P833667711818073615

namespace A212895

/-- `A212898(A123108(2*n))%A212896(n)` -/
def P833667711818073615.Spec : Prop :=
  ∀ n, P833667711818073615.a n = A212895 n

end A212895

/-!
# A212896: Number of (w,x,y,z) with all terms in {0,...,n} and (least gapsize)<2.

The programs for A212896, the canonical program `A212896.P104134062645944956` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212896 has offset 0).

The definition of A212896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A212896.P104134062645944956

`(n+1)²²-A212897(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A212896

/-- `(n+1)²²-A212897(n)` -/
def P104134062645944956.Spec : Prop :=
  ∀ n, P104134062645944956.a n = A212896 n

theorem P104134062645944956.correct : P104134062645944956.Spec := by
  intro n
  simp only [A212896]

end A212896

/-! ## A212896.P268842622072538850

`A212894(n)+A005915(n)`
-/

namespace A212896.P268842622072538850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212894 n + A005915 n

end

end A212896.P268842622072538850

namespace A212896

/-- `A212894(n)+A005915(n)` -/
def P268842622072538850.Spec : Prop :=
  ∀ n, P268842622072538850.a n = A212896 n

end A212896

/-! ## A212896.P6547106297885062844

`A212898(n)-A212895(n)`
-/

namespace A212896.P6547106297885062844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212898 n - A212895 n

end

end A212896.P6547106297885062844

namespace A212896

/-- `A212898(n)-A212895(n)` -/
def P6547106297885062844.Spec : Prop :=
  ∀ n, P6547106297885062844.a n = A212896 n

end A212896

/-! ## A212896.P9365518760820349829

`A266769(A008458(n))+A212894(n)`
-/

namespace A212896.P9365518760820349829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (A008458 n).toNat + A212894 n

end

end A212896.P9365518760820349829

namespace A212896

/-- `A266769(A008458(n))+A212894(n)` -/
def P9365518760820349829.Spec : Prop :=
  ∀ n, P9365518760820349829.a n = A212896 n

end A212896

/-! ## A212896.P12819273885206069236

`A266769(A008588(n))+A212894(n)`
-/

namespace A212896.P12819273885206069236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (A008588 n).toNat + A212894 n

end

end A212896.P12819273885206069236

namespace A212896

/-- `A266769(A008588(n))+A212894(n)` -/
def P12819273885206069236.Spec : Prop :=
  ∀ n, P12819273885206069236.a n = A212896 n

end A212896

/-! ## A212896.P15678228157438677325

`A211787(n+1)+A211797(n+1)-A212897(n)`
-/

namespace A212896.P15678228157438677325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 (n + 1) + (A211797 (n + 1) - A212897 n)

end

end A212896.P15678228157438677325

namespace A212896

/-- `A211787(n+1)+A211797(n+1)-A212897(n)` -/
def P15678228157438677325.Spec : Prop :=
  ∀ n, P15678228157438677325.a n = A212896 n

end A212896

/-!
# A212897: Number of (w,x,y,z) with all terms in {0,...,n} and (least gapsize)>1.

The programs for A212897, the canonical program `A212897.P1841018516842207355` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212897 has offset 0).

The definition of A212897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212897.P5797598672952063083

`ogf((2x^2+6x^3+14x^4+2x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A212897.P5797598672952063083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 6, 14, 0, 2] [1, -5, 10, -10, 5, -1] n

end

end A212897.P5797598672952063083

namespace A212897

/-- `ogf((2x^2+6x^3+14x^4+2x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5797598672952063083.Spec : Prop :=
  ∀ n, P5797598672952063083.a n = A212897 n

end A212897

/-! ## A212897.P1841018516842207355

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=16, a(4)=74, a(5)=230, a(6)=562`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212897

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1841018516842207355.Spec : Prop :=
  ∀ n, P1841018516842207355.a n = A212897 n

theorem P1841018516842207355.correct : P1841018516842207355.Spec := by
  intro n
  simp only [A212897]

end A212897

/-! ## A212897.P4763868891202346080

`(n+1)^4-A212896(n)`
-/

namespace A212897.P4763868891202346080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212896 n

end

end A212897.P4763868891202346080

namespace A212897

/-- `(n+1)^4-A212896(n)` -/
def P4763868891202346080.Spec : Prop :=
  ∀ n, P4763868891202346080.a n = A212897 n

theorem P4763868891202346080.correct : P4763868891202346080.Spec := by
  intro n
  simp only [A212897, Nat.add_sub_cancel, A212897.P4763868891202346080.a, A212897.P1841018516842207355.a, A212896, A212896.P104134062645944956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212897

/-! ## A212897.P10223396827613803228

`A212899(n)+A212895(n)`
-/

namespace A212897.P10223396827613803228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212899 n + A212895 n

end

end A212897.P10223396827613803228

namespace A212897

/-- `A212899(n)+A212895(n)` -/
def P10223396827613803228.Spec : Prop :=
  ∀ n, P10223396827613803228.a n = A212897 n

theorem P10223396827613803228.correct : P10223396827613803228.Spec := by
  intro n
  simp only [A212897, Nat.add_sub_cancel, A212897.P10223396827613803228.a, A212897.P1841018516842207355.a, A212895, A212895.P11736727764256027544.a, A212899, A212899.P4339860266088241256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212897

/-! ## A212897.P10124377523007407682

`n²²-(A212896(n)-A005917(n+1))`
-/

namespace A212897.P10124377523007407682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - (A212896 n - A005917 (n + 1))

end

end A212897.P10124377523007407682

namespace A212897

/-- `n²²-(A212896(n)-A005917(n+1))` -/
def P10124377523007407682.Spec : Prop :=
  ∀ n, P10124377523007407682.a n = A212897 n

theorem P10124377523007407682.correct : P10124377523007407682.Spec := by
  intro n
  simp only [A212897, Nat.add_sub_cancel, A212897.P10124377523007407682.a, A212897.P1841018516842207355.a, A005917, A005917.P593194106963301078.a, A212896, A212896.P104134062645944956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212897

/-! ## A212897.P14319372738163018930

`A212889(n)+A212890(n)-A212896(n)`
-/

namespace A212897.P14319372738163018930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212889 n + (A212890 n - A212896 n)

end

end A212897.P14319372738163018930

namespace A212897

/-- `A212889(n)+A212890(n)-A212896(n)` -/
def P14319372738163018930.Spec : Prop :=
  ∀ n, P14319372738163018930.a n = A212897 n

theorem P14319372738163018930.correct : P14319372738163018930.Spec := by
  intro n
  simp only [A212897, Nat.add_sub_cancel, A212897.P14319372738163018930.a, A212897.P1841018516842207355.a, A212889, A212889.P10405451188025400219.f1, A212889.P10405451188025400219.a, A212890, A212890.P12500765985835150325.a, A212896, A212896.P104134062645944956.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212897

/-! ## A212897.P9733289171976781001

`A212765(2*n)-A212894(n)`
-/

namespace A212897.P9733289171976781001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212765 (2 * n) - A212894 n

end

end A212897.P9733289171976781001

namespace A212897

/-- `A212765(2*n)-A212894(n)` -/
def P9733289171976781001.Spec : Prop :=
  ∀ n, P9733289171976781001.a n = A212897 n

end A212897

/-! ## A212897.P17830287117132482457

`A211787(n+1)+A211797(n+1)-A212896(n)`
-/

namespace A212897.P17830287117132482457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 (n + 1) + (A211797 (n + 1) - A212896 n)

end

end A212897.P17830287117132482457

namespace A212897

/-- `A211787(n+1)+A211797(n+1)-A212896(n)` -/
def P17830287117132482457.Spec : Prop :=
  ∀ n, P17830287117132482457.a n = A212897 n

end A212897

/-!
# A212898: Number of (w,x,y,z) with all terms in {0,...,n} and (least gapsize)<=2.

The programs for A212898, the canonical program `A212898.P1417634986437322065` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212898 has offset 0).

The definition of A212898 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212898.P1417634986437322065

`ogf((1+12x+23x^2+22x^3+16x^4+14x^5-2x^6+2x^7+2x^8)/(1-4x+6x^2-4x^3+x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212898

/-- `ogf((1+12x+23x^2+22x^3+16x^4+14x^5-2x^6+2x^7+2x^8)/(1-4x+6x^2-4x^3+x^4))` -/
def P1417634986437322065.Spec : Prop :=
  ∀ n, P1417634986437322065.a n = A212898 n

theorem P1417634986437322065.correct : P1417634986437322065.Spec := by
  intro n
  simp only [A212898]

end A212898

/-! ## A212898.P15796526908144246880

`(n+1)²²-A212899(n)`
-/

namespace A212898.P15796526908144246880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A212899 n

end

end A212898.P15796526908144246880

namespace A212898

/-- `(n+1)²²-A212899(n)` -/
def P15796526908144246880.Spec : Prop :=
  ∀ n, P15796526908144246880.a n = A212898 n

end A212898

/-! ## A212898.P5989930487976051258

`A212896(n)+A212895(n)`
-/

namespace A212898.P5989930487976051258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212896 n + A212895 n

end

end A212898.P5989930487976051258

namespace A212898

/-- `A212896(n)+A212895(n)` -/
def P5989930487976051258.Spec : Prop :=
  ∀ n, P5989930487976051258.a n = A212898 n

end A212898

/-! ## A212898.P1073020983781569214

`A005915(n)+A212895(n)+A212894(n)`
-/

namespace A212898.P1073020983781569214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 n + (A212895 n + A212894 n)

end

end A212898.P1073020983781569214

namespace A212898

/-- `A005915(n)+A212895(n)+A212894(n)` -/
def P1073020983781569214.Spec : Prop :=
  ∀ n, P1073020983781569214.a n = A212898 n

end A212898

/-! ## A212898.P17217651779801928275

`A212889(n)+A212890(n)-A212899(n)`
-/

namespace A212898.P17217651779801928275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212889 n + (A212890 n - A212899 n)

end

end A212898.P17217651779801928275

namespace A212898

/-- `A212889(n)+A212890(n)-A212899(n)` -/
def P17217651779801928275.Spec : Prop :=
  ∀ n, P17217651779801928275.a n = A212898 n

end A212898

/-! ## A212898.P12208721508665388556

`A212896(n)+A212897(n)-A212899(n)`
-/

namespace A212898.P12208721508665388556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212896 n + (A212897 n - A212899 n)

end

end A212898.P12208721508665388556

namespace A212898

/-- `A212896(n)+A212897(n)-A212899(n)` -/
def P12208721508665388556.Spec : Prop :=
  ∀ n, P12208721508665388556.a n = A212898 n

end A212898

/-!
# A212899: Number of (w,x,y,z) with all terms in {0,...,n} and (least gapsize)>2.

The programs for A212899, the canonical program `A212899.P4339860266088241256` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A212899 has offset 0).

The definition of A212899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A212899.P4339860266088241256

`ogf((2x^3+6x^4+2x^5+16x^6-4x^7+2x^9)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A212899

/-- `ogf((2x^3+6x^4+2x^5+16x^6-4x^7+2x^9)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4339860266088241256.Spec : Prop :=
  ∀ n, P4339860266088241256.a n = A212899 n

theorem P4339860266088241256.correct : P4339860266088241256.Spec := by
  intro n
  simp only [A212899]

end A212899

/-! ## A212899.P595921966818004545

`(n+1)^4-A212898(n)`
-/

namespace A212899.P595921966818004545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) - A212898 n

end

end A212899.P595921966818004545

namespace A212899

/-- `(n+1)^4-A212898(n)` -/
def P595921966818004545.Spec : Prop :=
  ∀ n, P595921966818004545.a n = A212899 n

end A212899

/-! ## A212899.P18107742583778798408

`A212897(n)-A212895(n)`
-/

namespace A212899.P18107742583778798408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212897 n - A212895 n

end

end A212899.P18107742583778798408

namespace A212899

/-- `A212897(n)-A212895(n)` -/
def P18107742583778798408.Spec : Prop :=
  ∀ n, P18107742583778798408.a n = A212899 n

theorem P18107742583778798408.correct : P18107742583778798408.Spec := by
  intro n
  simp only [A212899, Nat.add_sub_cancel, A212899.P18107742583778798408.a, A212899.P4339860266088241256.a, A212895, A212895.P11736727764256027544.a, A212897, A212897.P1841018516842207355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212899

/-! ## A212899.P15939782253384747703

`A212889(n)+A212890(n)-A212898(n)`
-/

namespace A212899.P15939782253384747703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212889 n + (A212890 n - A212898 n)

end

end A212899.P15939782253384747703

namespace A212899

/-- `A212889(n)+A212890(n)-A212898(n)` -/
def P15939782253384747703.Spec : Prop :=
  ∀ n, P15939782253384747703.a n = A212899 n

end A212899

/-! ## A212899.P10574857078616227986

`A212896(n)+A212897(n)-A212898(n)`
-/

namespace A212899.P10574857078616227986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212896 n + (A212897 n - A212898 n)

end

end A212899.P10574857078616227986

namespace A212899

/-- `A212896(n)+A212897(n)-A212898(n)` -/
def P10574857078616227986.Spec : Prop :=
  ∀ n, P10574857078616227986.a n = A212899 n

end A212899

/-! ## A212899.P9373576701821808831

`A212889(n)+A212890(n)-(A212896(n)+A212895(n))`
-/

namespace A212899.P9373576701821808831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212889 n + (A212890 n - (A212896 n + A212895 n))

end

end A212899.P9373576701821808831

namespace A212899

/-- `A212889(n)+A212890(n)-(A212896(n)+A212895(n))` -/
def P9373576701821808831.Spec : Prop :=
  ∀ n, P9373576701821808831.a n = A212899 n

theorem P9373576701821808831.correct : P9373576701821808831.Spec := by
  intro n
  simp only [A212899, Nat.add_sub_cancel, A212899.P9373576701821808831.a, A212899.P4339860266088241256.a, A212889, A212889.P10405451188025400219.f1, A212889.P10405451188025400219.a, A212890, A212890.P12500765985835150325.a, A212895, A212895.P11736727764256027544.a, A212896, A212896.P104134062645944956.a, A007588, A007588.P13302891266756921093.a, A212897, A212897.P1841018516842207355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A212899

/-! ## A212899.P10113549306781976077

`A212088(n+1)+A212089(n+1)-A212898(n)`
-/

namespace A212899.P10113549306781976077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 (n + 1) + (A212089 (n + 1) - A212898 n)

end

end A212899.P10113549306781976077

namespace A212899

/-- `A212088(n+1)+A212089(n+1)-A212898(n)` -/
def P10113549306781976077.Spec : Prop :=
  ∀ n, P10113549306781976077.a n = A212899 n

end A212899

/-! ## A212899.P3585267151372340525

`A212249(n+1)+A212250(n+1)-A212898(n)`
-/

namespace A212899.P3585267151372340525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 (n + 1) + (A212250 (n + 1) - A212898 n)

end

end A212899.P3585267151372340525

namespace A212899

/-- `A212249(n+1)+A212250(n+1)-A212898(n)` -/
def P3585267151372340525.Spec : Prop :=
  ∀ n, P3585267151372340525.a n = A212899 n

end A212899

/-! ## A212899.P396511263545185509

`A211787(n+1)+A211797(n+1)-A212898(n)`
-/

namespace A212899.P396511263545185509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 (n + 1) + (A211797 (n + 1) - A212898 n)

end

end A212899.P396511263545185509

namespace A212899

/-- `A211787(n+1)+A211797(n+1)-A212898(n)` -/
def P396511263545185509.Spec : Prop :=
  ∀ n, P396511263545185509.a n = A212899 n

end A212899

/-! ## A212899.P6106745676310800361

`A212104(n+1)+A212105(n+1)-A212898(n)`
-/

namespace A212899.P6106745676310800361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 (n + 1) + (A212105 (n + 1) - A212898 n)

end

end A212899.P6106745676310800361

namespace A212899

/-- `A212104(n+1)+A212105(n+1)-A212898(n)` -/
def P6106745676310800361.Spec : Prop :=
  ∀ n, P6106745676310800361.a n = A212899 n

end A212899

/-! ## A212899.P11066349517361247213

`A212106(n+1)+A212107(n+1)-A212898(n)`
-/

namespace A212899.P11066349517361247213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 (n + 1) + (A212107 (n + 1) - A212898 n)

end

end A212899.P11066349517361247213

namespace A212899

/-- `A212106(n+1)+A212107(n+1)-A212898(n)` -/
def P11066349517361247213.Spec : Prop :=
  ∀ n, P11066349517361247213.a n = A212899 n

end A212899

