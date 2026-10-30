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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C001
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A220700: a(0)=0, a(1)=0; for n>1, a(n) = a(n-1) + (n+3)*a(n-2) + 1.

The programs for A220700, the canonical program `A220700.P12575094306340624663` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220700 has offset 0).

The definition of A220700 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)+(n+3)*a(n-2)` (program `A220700.P12575094306340624663`, by `A220700.P12575094306340624663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220700.P12575094306340624663

`1+a(n-1)+(n+3)*a(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220700

/-- `1+a(n-1)+(n+3)*a(n-2)` -/
def P12575094306340624663.Spec : Prop :=
  ∀ n, (P12575094306340624663.a n : ℤ) = A220700 n

theorem P12575094306340624663.correct : P12575094306340624663.Spec := by
  intro n
  simp only [A220700]

end A220700

/-! ## A220700.P5934563879002690019

`a(n-1)+(n+3)*a(n-2)+1` with `a(0)=0, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A220700.P5934563879002690019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) + (n + 3) * a (n - 2) + 1

end

end A220700.P5934563879002690019

namespace A220700

/-- `a(n-1)+(n+3)*a(n-2)+1` -/
def P5934563879002690019.Spec : Prop :=
  ∀ n, (P5934563879002690019.a n : ℤ) = A220700 n

theorem P5934563879002690019.correct : P5934563879002690019.Spec := by
  intro n
  simp only [A220700, Nat.add_sub_cancel, A220700.P5934563879002690019.a, A220700.P12575094306340624663.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A220700

/-! ## A220700.P14394035398859041686

`A237291(A134762(n))`
-/

namespace A220700.P14394035398859041686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237291 (A134762 n).toNat

end

end A220700.P14394035398859041686

namespace A220700

/-- `A237291(A134762(n))` -/
def P14394035398859041686.Spec : Prop :=
  ∀ n, P14394035398859041686.a n = A220700 n

end A220700

/-!
# A220702: Numbers n such that n^5 + 5*n + 5^n is prime.

The programs for A220702, there is no canonical definition to state claims against.
-/

/-! ## A220702.P4416759199231794539

`∑[A226762(A324507(n+1)^(n-2)+1)]`
-/

namespace A220702.P4416759199231794539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (SequenceMachineLib.roundAway ((A324507 (n + 1) : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220702.P4416759199231794539

/-!
# A220703: Numbers k such that k^7 + 7*k + 7^k is prime.

The programs for A220703, there is no canonical definition to state claims against.
-/

/-! ## A220703.P6613157308822037498

`A229170(A301325(n+1))`
-/

namespace A220703.P6613157308822037498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229170 (A301325 (n + 1)).toNat

end

end A220703.P6613157308822037498

/-!
# A220704: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220704, there is no canonical definition to state claims against.
-/

/-! ## A220704.P17150301054164639225

`A220708(∑[4*n]+1)`
-/

namespace A220704.P17150301054164639225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220704.P17150301054164639225

/-! ## A220704.P2988450938653510598

`lcm(A057077(n), A220708(A001844(n)))`
-/

namespace A220704.P2988450938653510598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A220708 (A001844 n).toNat)

end

end A220704.P2988450938653510598

/-! ## A220704.P14726657803511117453

`or(A000007(n), A220708(A001844(n)))`
-/

namespace A220704.P14726657803511117453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A220708 (A001844 n).toNat)

end

end A220704.P14726657803511117453

/-! ## A220704.P11136230935873339427

`A033999(n)²*A220708(A001844(n))`
-/

namespace A220704.P11136230935873339427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A220708 (A001844 n).toNat

end

end A220704.P11136230935873339427

/-! ## A220704.P12237618394623850815

`A220708(A001844(n))+A000007(n+1)`
-/

namespace A220704.P12237618394623850815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A001844 n).toNat + A000007 (n + 1)

end

end A220704.P12237618394623850815

/-!
# A220705: Number of ways to reciprocally link elements of an n X 5 array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220705, the canonical program `A220705.P14645560554847151225` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220705 has offset 1).

The definition of A220705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220705.P14671509204532417277

`ogf((1+3x-x^2-2x^3-2x^4-x^5)/(1-2x-3x^2+x^4+2x^5+x^6))`
-/

namespace A220705.P14671509204532417277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -1, -2, -2, -1] [1, -2, -3, 0, 1, 2, 1] n

end

end A220705.P14671509204532417277

namespace A220705

/-- `ogf((1+3x-x^2-2x^3-2x^4-x^5)/(1-2x-3x^2+x^4+2x^5+x^6))` -/
def P14671509204532417277.Spec : Prop :=
  ∀ n, P14671509204532417277.a n = A220705 (n + 1)

end A220705

/-! ## A220705.P14645560554847151225

`2*a(n-1)+3*a(n-2)-a(n-4)-2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=37, a(4)=107, a(5)=317`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220705

/-- `2*a(n-1)+3*a(n-2)-a(n-4)-2*a(n-5)-a(n-6)` -/
def P14645560554847151225.Spec : Prop :=
  ∀ n, P14645560554847151225.a n = A220705 (n + 1)

theorem P14645560554847151225.correct : P14645560554847151225.Spec := by
  intro n
  simp only [A220705, Nat.add_sub_cancel]

end A220705

/-! ## A220705.P12936386734746040090

`A220708(Δ[A264443(n)])`
-/

namespace A220705.P12936386734746040090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (f1 (n + 1) - f1 n).toNat

end

end A220705.P12936386734746040090

namespace A220705

/-- `A220708(Δ[A264443(n)])` -/
def P12936386734746040090.Spec : Prop :=
  ∀ n, P12936386734746040090.a n = A220705 (n + 1)

end A220705

/-! ## A220705.P3938933353326658723

`A220708(A046691(n+3))`
-/

namespace A220705.P3938933353326658723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A046691 (n + 3)).toNat

end

end A220705.P3938933353326658723

namespace A220705

/-- `A220708(A046691(n+3))` -/
def P3938933353326658723.Spec : Prop :=
  ∀ n, P3938933353326658723.a n = A220705 (n + 1)

end A220705

/-! ## A220705.P16593385672124468416

`A220708(A060577(n+4))`
-/

namespace A220705.P16593385672124468416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A060577 (n + 4)).toNat

end

end A220705.P16593385672124468416

namespace A220705

/-- `A220708(A060577(n+4))` -/
def P16593385672124468416.Spec : Prop :=
  ∀ n, P16593385672124468416.a n = A220705 (n + 1)

end A220705

/-!
# A220706: Number of ways to reciprocally link elements of an n X 6 array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220706, the canonical program `A220706.P3087498977288887195` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220706 has offset 1).

The definition of A220706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220706.P3087498977288887195

`ogf((1+5x-5x^2-4x^3-2x^5+4x^6+x^7-x^8-x^9)/(1-3x-5x^2+3x^3+6x^4+x^5+x^6-4x^7-x^8+x^9+x^10))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220706

/-- `ogf((1+5x-5x^2-4x^3-2x^5+4x^6+x^7-x^8-x^9)/(1-3x-5x^2+3x^3+6x^4+x^5+x^6-4x^7-x^8+x^9+x^10))` -/
def P3087498977288887195.Spec : Prop :=
  ∀ n, P3087498977288887195.a n = A220706 (n + 1)

theorem P3087498977288887195.correct : P3087498977288887195.Spec := by
  intro n
  simp only [A220706, Nat.add_sub_cancel]

end A220706

/-! ## A220706.P11313540294644787100

`A220708(A052905(n+3))`
-/

namespace A220706.P11313540294644787100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A052905 (n + 3)).toNat

end

end A220706.P11313540294644787100

namespace A220706

/-- `A220708(A052905(n+3))` -/
def P11313540294644787100.Spec : Prop :=
  ∀ n, P11313540294644787100.a n = A220706 (n + 1)

end A220706

/-! ## A220706.P7993484556906334940

`A220708(Δ[A264443(n+1)]-1)`
-/

namespace A220706.P7993484556906334940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (f1 (n + 1) - f1 n - 1).toNat

end

end A220706.P7993484556906334940

namespace A220706

/-- `A220708(Δ[A264443(n+1)]-1)` -/
def P7993484556906334940.Spec : Prop :=
  ∀ n, P7993484556906334940.a n = A220706 (n + 1)

end A220706

/-! ## A220706.P976101478745865733

`record[A220708(A052905(A002262(n)))]`
-/

namespace A220706.P976101478745865733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A052905 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220706.P976101478745865733

namespace A220706

/-- `record[A220708(A052905(A002262(n)))]` -/
def P976101478745865733.Spec : Prop :=
  ∀ n, P976101478745865733.a n = A220706 (n + 1)

end A220706

/-! ## A220706.P8119736043679722767

`record[A220708(A052905(A025581(n)))]`
-/

namespace A220706.P8119736043679722767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A052905 (A025581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220706.P8119736043679722767

namespace A220706

/-- `record[A220708(A052905(A025581(n)))]` -/
def P8119736043679722767.Spec : Prop :=
  ∀ n, P8119736043679722767.a n = A220706 (n + 1)

end A220706

/-!
# A220707: Number of ways to reciprocally link elements of an n X 7 array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220707, there is no canonical definition to state claims against.
-/

/-! ## A220707.P5941615222530800678

`A220708(A055999(n+4))`
-/

namespace A220707.P5941615222530800678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A055999 (n + 4)).toNat

end

end A220707.P5941615222530800678

/-! ## A220707.P13993397573338559097

`A220708(A046691(n+5)-2)`
-/

namespace A220707.P13993397573338559097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A046691 (n + 5) - 2).toNat

end

end A220707.P13993397573338559097

/-! ## A220707.P1825295322844769634

`A220708(A000096(n+6)-5)`
-/

namespace A220707.P1825295322844769634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A000096 (n + 6) - 5).toNat

end

end A220707.P1825295322844769634

/-! ## A220707.P17948209937043269644

`A220708(A000124(n+7)-7)`
-/

namespace A220707.P17948209937043269644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A000124 (n + 7) - 7).toNat

end

end A220707.P17948209937043269644

/-! ## A220707.P5424326119030678337

`A220708(A167614(n+6)-9)`
-/

namespace A220707.P5424326119030678337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A167614 (n + 6) - 9).toNat

end

end A220707.P5424326119030678337

/-!
# A220708: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220708, there is no canonical definition to state claims against.
-/

/-! ## A220708.P5273877488930122741

`A285189(A307847(n+1))`
-/

namespace A220708.P5273877488930122741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A307847 (n + 1)).toNat

end

end A220708.P5273877488930122741

/-! ## A220708.P16372078773280194429

`A072645(A089759(n))`
-/

namespace A220708.P16372078773280194429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072645 (A089759 n).toNat

end

end A220708.P16372078773280194429

/-! ## A220708.P3949183514906504718

`A002636(A322706(n+1))`
-/

namespace A220708.P3949183514906504718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 (A322706 (n + 1)).toNat

end

end A220708.P3949183514906504718

/-! ## A220708.P12440596579717984785

`A216320(A173018(n)+1)`
-/

namespace A220708.P12440596579717984785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216320 (A173018 n + 1).toNat

end

end A220708.P12440596579717984785

/-! ## A220708.P13936643094190683683

`A216320(or(3, A173018(n)))`
-/

namespace A220708.P13936643094190683683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216320 (Int.lor 3 (A173018 n)).toNat

end

end A220708.P13936643094190683683

/-!
# A220709: Number of ways to reciprocally link elements of a 4 X n array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220709, the canonical program `A220709.P15836422790786148861` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220709 has offset 1).

The definition of A220709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220709.P1090168400169764552

`ogf((1-2x^2+2x^3-3x^5+x^6)/(1-x-6x^2+6x^4+x^5-x^6))`
-/

namespace A220709.P1090168400169764552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 2, 0, -3, 1] [1, -1, -6, 0, 6, 1, -1] n

end

end A220709.P1090168400169764552

namespace A220709

/-- `ogf((1-2x^2+2x^3-3x^5+x^6)/(1-x-6x^2+6x^4+x^5-x^6))` -/
def P1090168400169764552.Spec : Prop :=
  ∀ n, P1090168400169764552.a n = A220709 (n + 1)

end A220709

/-! ## A220709.P15836422790786148861

`a(n-1)+6*a(n-2)-6*a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=13, a(4)=37, a(5)=105, a(6)=298`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220709

/-- `a(n-1)+6*a(n-2)-6*a(n-4)-a(n-5)+a(n-6)` -/
def P15836422790786148861.Spec : Prop :=
  ∀ n, P15836422790786148861.a n = A220709 (n + 1)

theorem P15836422790786148861.correct : P15836422790786148861.Spec := by
  intro n
  simp only [A220709, Nat.add_sub_cancel]

end A220709

/-! ## A220709.P6777127839208001005

`A220708(A141214(n)+7)`
-/

namespace A220709.P6777127839208001005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A141214 n + 7).toNat

end

end A220709.P6777127839208001005

namespace A220709

/-- `A220708(A141214(n)+7)` -/
def P6777127839208001005.Spec : Prop :=
  ∀ n, P6777127839208001005.a n = A220709 (n + 1)

end A220709

/-! ## A220709.P8625641529778447888

`A220708(A055999(n)+10)`
-/

namespace A220709.P8625641529778447888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A055999 n + 10).toNat

end

end A220709.P8625641529778447888

namespace A220709

/-- `A220708(A055999(n)+10)` -/
def P8625641529778447888.Spec : Prop :=
  ∀ n, P8625641529778447888.a n = A220709 (n + 1)

end A220709

/-! ## A220709.P16281969766100596980

`A220708(A167614(n+2)+1)`
-/

namespace A220709.P16281969766100596980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A167614 (n + 2) + 1).toNat

end

end A220709.P16281969766100596980

namespace A220709

/-- `A220708(A167614(n+2)+1)` -/
def P16281969766100596980.Spec : Prop :=
  ∀ n, P16281969766100596980.a n = A220709 (n + 1)

end A220709

/-!
# A220710: Number of ways to reciprocally link elements of an 5 X n array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220710, the canonical program `A220710.P10433223323639722126` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220710 has offset 1).

The definition of A220710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220710.P10433223323639722126

`ogf((1-2x-2x^2+11x^3-8x^4-6x^5+14x^6-18x^7-3x^8+18x^9-8x^10)/(1-3x-7x^2+14x^3+11x^4-17x^5-5x^6+6x^7))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220710

/-- `ogf((1-2x-2x^2+11x^3-8x^4-6x^5+14x^6-18x^7-3x^8+18x^9-8x^10)/(1-3x-7x^2+14x^3+11x^4-17x^5-5x^6+6x^7))` -/
def P10433223323639722126.Spec : Prop :=
  ∀ n, P10433223323639722126.a n = A220710 (n + 1)

theorem P10433223323639722126.correct : P10433223323639722126.Spec := by
  intro n
  simp only [A220710, Nat.add_sub_cancel]

end A220710

/-! ## A220710.P11098785373824109248

`A220708(A167499(n+3))`
-/

namespace A220710.P11098785373824109248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A167499 (n + 3)).toNat

end

end A220710.P11098785373824109248

namespace A220710

/-- `A220708(A167499(n+3))` -/
def P11098785373824109248.Spec : Prop :=
  ∀ n, P11098785373824109248.a n = A220710 (n + 1)

end A220710

/-! ## A220710.P1906839174355915808

`A220708(A155212(n)+13)`
-/

namespace A220710.P1906839174355915808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A155212 n + 13).toNat

end

end A220710.P1906839174355915808

namespace A220710

/-- `A220708(A155212(n)+13)` -/
def P1906839174355915808.Spec : Prop :=
  ∀ n, P1906839174355915808.a n = A220710 (n + 1)

end A220710

/-! ## A220710.P7312507065805710847

`A220708(A167614(n+3)+2)`
-/

namespace A220710.P7312507065805710847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A167614 (n + 3) + 2).toNat

end

end A220710.P7312507065805710847

namespace A220710

/-- `A220708(A167614(n+3)+2)` -/
def P7312507065805710847.Spec : Prop :=
  ∀ n, P7312507065805710847.a n = A220710 (n + 1)

end A220710

/-! ## A220710.P14389604784055015249

`A220708(A000217(n+4)+5)`
-/

namespace A220710.P14389604784055015249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A000217 (n + 4) + 5).toNat

end

end A220710.P14389604784055015249

namespace A220710

/-- `A220708(A000217(n+4)+5)` -/
def P14389604784055015249.Spec : Prop :=
  ∀ n, P14389604784055015249.a n = A220710 (n + 1)

end A220710

/-!
# A220711: Number of ways to reciprocally link elements of an 6Xn array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220711, there is no canonical definition to state claims against.
-/

/-! ## A220711.P11655522729931626235

`A220708(A056115(n)+21)`
-/

namespace A220711.P11655522729931626235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A056115 n + 21).toNat

end

end A220711.P11655522729931626235

/-! ## A220711.P17706712843017280796

`A220708(A000217(n+5)+6)`
-/

namespace A220711.P17706712843017280796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A000217 (n + 5) + 6).toNat

end

end A220711.P17706712843017280796

/-! ## A220711.P14733402677171586705

`A220708(A038722(A052905(n+3)))`
-/

namespace A220711.P14733402677171586705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A220711.P14733402677171586705

/-! ## A220711.P15328292900092607131

`A220708(A000096(n+5)-A023443(n))`
-/

namespace A220711.P15328292900092607131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A000096 (n + 5) - A023443 n).toNat

end

end A220711.P15328292900092607131

/-! ## A220711.P7832263489095550753

`A220708(A052905(n+4)-A005843(n+1))`
-/

namespace A220711.P7832263489095550753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A052905 (n + 4) - A005843 (n + 1)).toNat

end

end A220711.P7832263489095550753

/-!
# A220712: Number of ways to reciprocally link elements of an 7 X n array either to themselves or to exactly two horizontal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220712, there is no canonical definition to state claims against.
-/

/-! ## A220712.P5714671278516474732

`A220708(A167487(n+5))`
-/

namespace A220712.P5714671278516474732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A167487 (n + 5)).toNat

end

end A220712.P5714671278516474732

/-! ## A220712.P902055393674974889

`A220708(A167499(n+5)+2)`
-/

namespace A220712.P902055393674974889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A167499 (n + 5) + 2).toNat

end

end A220712.P902055393674974889

/-! ## A220712.P15115733076084906860

`A220708(A167614(n+5)+4)`
-/

namespace A220712.P15115733076084906860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A167614 (n + 5) + 4).toNat

end

end A220712.P15115733076084906860

/-! ## A220712.P5037310597204624467

`A220708(A000217(n+6)+7)`
-/

namespace A220712.P5037310597204624467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A000217 (n + 6) + 7).toNat

end

end A220712.P5037310597204624467

/-! ## A220712.P5714318133660813863

`A220708(A000096(n+7)-A005408(n+3))`
-/

namespace A220712.P5714318133660813863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220708 (A000096 (n + 7) - A005408 (n + 3)).toNat

end

end A220712.P5714318133660813863

/-!
# A220713: Number of ways to reciprocally link elements of an n X 2 array either to themselves or to exactly two king-move neighbors, without consecutive collinear links.

The programs for A220713, the canonical program `A220713.P9640700952276686048` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220713 has offset 1).

The definition of A220713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220713.P9640700952276686048

`ogf((1+6x+2x^2-x^3-3x^4+x^5)/(1-2x-8x^2-3x^3+2x^4+3x^5-x^6))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220713

/-- `ogf((1+6x+2x^2-x^3-3x^4+x^5)/(1-2x-8x^2-3x^3+2x^4+3x^5-x^6))` -/
def P9640700952276686048.Spec : Prop :=
  ∀ n, P9640700952276686048.a n = A220713 (n + 1)

theorem P9640700952276686048.correct : P9640700952276686048.Spec := by
  intro n
  simp only [A220713, Nat.add_sub_cancel]

end A220713

/-! ## A220713.P15545257609847827014

`record[ratio[A220718(n+1)]]`
-/

namespace A220713.P15545257609847827014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220713.P15545257609847827014

namespace A220713

/-- `record[ratio[A220718(n+1)]]` -/
def P15545257609847827014.Spec : Prop :=
  ∀ n, P15545257609847827014.a n = (A220713 (n + 1) : ℚ)

end A220713

/-! ## A220713.P2193291874974626429

`A220718(∑[n+1]+2)`
-/

namespace A220713.P2193291874974626429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220713.P2193291874974626429

namespace A220713

/-- `A220718(∑[n+1]+2)` -/
def P2193291874974626429.Spec : Prop :=
  ∀ n, P2193291874974626429.a n = A220713 (n + 1)

end A220713

/-! ## A220713.P5655932100736980756

`record[A220718(A252460(n+1))]`
-/

namespace A220713.P5655932100736980756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220713.P5655932100736980756

namespace A220713

/-- `record[A220718(A252460(n+1))]` -/
def P5655932100736980756.Spec : Prop :=
  ∀ n, P5655932100736980756.a n = A220713 (n + 1)

end A220713

/-! ## A220713.P1594969222847957389

`record[A220718(A256998(n+1))]`
-/

namespace A220713.P1594969222847957389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A256998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220713.P1594969222847957389

namespace A220713

/-- `record[A220718(A256998(n+1))]` -/
def P1594969222847957389.Spec : Prop :=
  ∀ n, P1594969222847957389.a n = A220713 (n + 1)

end A220713

/-!
# A220714: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly two king-move neighbors, without consecutive collinear links.

The programs for A220714, there is no canonical definition to state claims against.
-/

/-! ## A220714.P7465391048034440864

`A220718(∑[n+2]+4)`
-/

namespace A220714.P7465391048034440864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220714.P7465391048034440864

/-! ## A220714.P4156362403090787604

`record[A220718(A252460(2*n+1)+2)]`
-/

namespace A220714.P4156362403090787604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A252460 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220714.P4156362403090787604

/-! ## A220714.P15990189753089043714

`A220718(A167614(n+1))+A025469(n)`
-/

namespace A220714.P15990189753089043714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A167614 (n + 1)).toNat + A025469 n

end

end A220714.P15990189753089043714

/-! ## A220714.P11726265572255433145

`A220718(A167614(n+1))+A064459(n)`
-/

namespace A220714.P11726265572255433145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A167614 (n + 1)).toNat + A064459 n

end

end A220714.P11726265572255433145

/-! ## A220714.P6412472883658705733

`A220718(A167614(n+1))+A090620(n)`
-/

namespace A220714.P6412472883658705733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A167614 (n + 1)).toNat + A090620 n

end

end A220714.P6412472883658705733

/-!
# A220715: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly two king-move neighbors, without consecutive collinear links.

The programs for A220715, there is no canonical definition to state claims against.
-/

/-! ## A220715.P4352224349402448703

`A220718(A374004(n+1))`
-/

namespace A220715.P4352224349402448703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A374004 (n + 1)).toNat

end

end A220715.P4352224349402448703

/-! ## A220715.P5053070371790030023

`A220718(A141214(n)+7)`
-/

namespace A220715.P5053070371790030023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A141214 n + 7).toNat

end

end A220715.P5053070371790030023

/-! ## A220715.P7476323141746296013

`A220718(A052905(n)+9)`
-/

namespace A220715.P7476323141746296013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A052905 n + 9).toNat

end

end A220715.P7476323141746296013

/-! ## A220715.P11502701047852002512

`A220718(A055999(n)+10)`
-/

namespace A220715.P11502701047852002512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A055999 n + 10).toNat

end

end A220715.P11502701047852002512

/-! ## A220715.P2932171834021361700

`A220718(eq[5, A066657(n)])`
-/

namespace A220715.P2932171834021361700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220715.P2932171834021361700

/-!
# A220716: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two king-move neighbors, without consecutive collinear links.

The programs for A220716, there is no canonical definition to state claims against.
-/

/-! ## A220716.P1197837950475230095

`A220718(A374005(n+1))`
-/

namespace A220716.P1197837950475230095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A374005 (n + 1)).toNat

end

end A220716.P1197837950475230095

/-! ## A220716.P10886382734772722944

`A220718(A167499(n+3))`
-/

namespace A220716.P10886382734772722944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A167499 (n + 3)).toNat

end

end A220716.P10886382734772722944

/-! ## A220716.P12441550198981758536

`A220718(A155212(n)+13)`
-/

namespace A220716.P12441550198981758536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A155212 n + 13).toNat

end

end A220716.P12441550198981758536

/-! ## A220716.P187403079472403466

`A220718(A056000(n)+15)`
-/

namespace A220716.P187403079472403466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A056000 n + 15).toNat

end

end A220716.P187403079472403466

/-! ## A220716.P336689860819329292

`A220718(eq[7, A066657(n)])`
-/

namespace A220716.P336689860819329292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220716.P336689860819329292

/-!
# A220717: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two king-move neighbors, without consecutive collinear links.

The programs for A220717, there is no canonical definition to state claims against.
-/

/-! ## A220717.P8826241998405589907

`A220718(A374007(n+1))`
-/

namespace A220717.P8826241998405589907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A374007 (n + 1)).toNat

end

end A220717.P8826241998405589907

/-! ## A220717.P5581326357920293396

`A220718(A056115(n)+21)`
-/

namespace A220717.P5581326357920293396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A056115 n + 21).toNat

end

end A220717.P5581326357920293396

/-! ## A220717.P16981854520703374827

`A220718(A000096(n+4)+7)`
-/

namespace A220717.P16981854520703374827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (A000096 (n + 4) + 7).toNat

end

end A220717.P16981854520703374827

/-! ## A220717.P13893108231376094104

`A220718(eq[7, A123229(n+1)])`
-/

namespace A220717.P13893108231376094104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220717.P13893108231376094104

/-!
# A220718: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two king-move neighbors, without consecutive collinear links.

The programs for A220718, there is no canonical definition to state claims against.
-/

/-! ## A220718.P15799141670705771798

`A134875(A174187(n))`
-/

namespace A220718.P15799141670705771798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134875 (A174187 n).toNat

end

end A220718.P15799141670705771798

/-! ## A220718.P10839977022975503473

`A002260(A157118(n)²)`
-/

namespace A220718.P10839977022975503473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A157118 n ^ 2).toNat

end

end A220718.P10839977022975503473

/-! ## A220718.P3162280920000978901

`A135986(A142596(n+1))`
-/

namespace A220718.P3162280920000978901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135986 (A142596 (n + 1)).toNat

end

end A220718.P3162280920000978901

/-! ## A220718.P10972899105529546174

`A335678(A056941(n)+2)`
-/

namespace A220718.P10972899105529546174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335678 (A056941 n + 2).toNat

end

end A220718.P10972899105529546174

/-! ## A220718.P5860292247812447364

`A002260(A157118(n)*A157118(n))`
-/

namespace A220718.P5860292247812447364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A157118 n * A157118 n).toNat

end

end A220718.P5860292247812447364

/-!
# A220719: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220719, there is no canonical definition to state claims against.
-/

/-! ## A220719.P2047810724788489764

`A220725(∑[4*n]+1)`
-/

namespace A220719.P2047810724788489764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220719.P2047810724788489764

/-! ## A220719.P13167107478557645310

`record[A220725(∑[A113072(n)])]`
-/

namespace A220719.P13167107478557645310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220719.P13167107478557645310

/-! ## A220719.P10748100946344754077

`record[A220725(∑[A266981(n)])]`
-/

namespace A220719.P10748100946344754077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220719.P10748100946344754077

/-!
# A220720: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220720, the canonical program `A220720.P9113540548383853370` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220720 has offset 1).

The definition of A220720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220720.P9113540548383853370

`ogf((1+4x+5x^2+3x^3-2x^4)/(1-3x-4x^2-5x^3-3x^4+2x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220720

/-- `ogf((1+4x+5x^2+3x^3-2x^4)/(1-3x-4x^2-5x^3-3x^4+2x^5))` -/
def P9113540548383853370.Spec : Prop :=
  ∀ n, P9113540548383853370.a n = A220720 (n + 1)

theorem P9113540548383853370.correct : P9113540548383853370.Spec := by
  intro n
  simp only [A220720, Nat.add_sub_cancel]

end A220720

/-! ## A220720.P1666147561939613930

`A220725(∑[n+3]+1)`
-/

namespace A220720.P1666147561939613930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220720.P1666147561939613930

namespace A220720

/-- `A220725(∑[n+3]+1)` -/
def P1666147561939613930.Spec : Prop :=
  ∀ n, P1666147561939613930.a n = A220720 (n + 1)

end A220720

/-! ## A220720.P2261663198384512754

`record[A220725(gcd(n, A055106(n+2)))]`
-/

namespace A220720.P2261663198384512754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (Int.gcd (n : ℤ) (A055106 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220720.P2261663198384512754

namespace A220720

/-- `record[A220725(gcd(n, A055106(n+2)))]` -/
def P2261663198384512754.Spec : Prop :=
  ∀ n, P2261663198384512754.a n = A220720 (n + 1)

end A220720

/-!
# A220721: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220721, there is no canonical definition to state claims against.
-/

/-! ## A220721.P4344873551067176063

`A220725(A141214(n+1))`
-/

namespace A220721.P4344873551067176063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A141214 (n + 1)).toNat

end

end A220721.P4344873551067176063

/-! ## A220721.P9547515704061715132

`A220725(A027379(n+2))`
-/

namespace A220721.P9547515704061715132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A027379 (n + 2)).toNat

end

end A220721.P9547515704061715132

/-! ## A220721.P12993998440326722904

`A220725(A056000(n)+7)`
-/

namespace A220721.P12993998440326722904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A056000 n + 7).toNat

end

end A220721.P12993998440326722904

/-! ## A220721.P16114935712334713865

`A220725(eq[2, A152157(n)])`
-/

namespace A220721.P16114935712334713865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220721.P16114935712334713865

/-! ## A220721.P12324092427824323422

`A220725(eq[3, A193592(n)])`
-/

namespace A220721.P12324092427824323422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220721.P12324092427824323422

/-!
# A220722: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220722, there is no canonical definition to state claims against.
-/

/-! ## A220722.P5772375533128748511

`A220725(Δ[A264443(n)])`
-/

namespace A220722.P5772375533128748511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (f1 (n + 1) - f1 n).toNat

end

end A220722.P5772375533128748511

/-! ## A220722.P8940908817690177254

`A220725(eq[3, A152157(n)])`
-/

namespace A220722.P8940908817690177254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220722.P8940908817690177254

/-! ## A220722.P3657453410116923166

`A220725(eq[4, A193592(n)])`
-/

namespace A220722.P3657453410116923166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220722.P3657453410116923166

/-! ## A220722.P7795129400182753802

`A220725(eq[5, A239144(n)])`
-/

namespace A220722.P7795129400182753802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220722.P7795129400182753802

/-! ## A220722.P11945189864177814443

`A220725(Δ[A023545(n+1)])`
-/

namespace A220722.P11945189864177814443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (f1 (n + 1) - f1 n).toNat

end

end A220722.P11945189864177814443

/-!
# A220723: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220723, there is no canonical definition to state claims against.
-/

/-! ## A220723.P451523720744662883

`A220725(eq[3, A219347(n)])`
-/

namespace A220723.P451523720744662883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220723.P451523720744662883

/-! ## A220723.P884285428064285212

`A220725(eq[3, A274661(n)])`
-/

namespace A220723.P884285428064285212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220723.P884285428064285212

/-! ## A220723.P17280352305756871152

`A220725(eq[5, A152157(n)])`
-/

namespace A220723.P17280352305756871152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220723.P17280352305756871152

/-! ## A220723.P13496946078359259116

`A220725(eq[5, A193592(n)])`
-/

namespace A220723.P13496946078359259116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220723.P13496946078359259116

/-! ## A220723.P7614943729241092947

`A220725(eq[6, A200370(n+1)])`
-/

namespace A220723.P7614943729241092947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220723.P7614943729241092947

/-!
# A220724: Number of ways to reciprocally link elements of an n X 7 array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220724, there is no canonical definition to state claims against.
-/

/-! ## A220724.P17391550578023738752

`A220725(A055999(n+4))`
-/

namespace A220724.P17391550578023738752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A055999 (n + 4)).toNat

end

end A220724.P17391550578023738752

/-! ## A220724.P6577138539693268990

`A220725(A168106(n)-6)`
-/

namespace A220724.P6577138539693268990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A168106 n - 6).toNat

end

end A220724.P6577138539693268990

/-! ## A220724.P17641716170161954386

`A220725(A056121(n)+22)`
-/

namespace A220724.P17641716170161954386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A056121 n + 22).toNat

end

end A220724.P17641716170161954386

/-! ## A220724.P9918145872061605707

`A220725(eq[4, A219347(n)])`
-/

namespace A220724.P9918145872061605707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220724.P9918145872061605707

/-!
# A220725: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220725, there is no canonical definition to state claims against.
-/

/-! ## A220725.P2412718253870810575

`A194920(A140204(A039755(n)))`
-/

namespace A220725.P2412718253870810575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A140204 (A039755 n).toNat).toNat

end

end A220725.P2412718253870810575

/-!
# A220726: Number of ways to reciprocally link elements of a 2 X n array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220726, the canonical program `A220726.P1426422003500373055` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220726 has offset 1).

The definition of A220726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220726.P531295243871972865

`ogf((-1+x+2x^3)/(-1+3x+x^2-2x^4))`
-/

namespace A220726.P531295243871972865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -2] [1, -3, -1, 0, 2] n

end

end A220726.P531295243871972865

namespace A220726

/-- `ogf((-1+x+2x^3)/(-1+3x+x^2-2x^4))` -/
def P531295243871972865.Spec : Prop :=
  ∀ n, P531295243871972865.a n = A220726 (n + 1)

end A220726

/-! ## A220726.P1426422003500373055

`3*a(n-1)+a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=21`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220726

/-- `3*a(n-1)+a(n-2)-2*a(n-4)` -/
def P1426422003500373055.Spec : Prop :=
  ∀ n, P1426422003500373055.a n = A220726 (n + 1)

theorem P1426422003500373055.correct : P1426422003500373055.Spec := by
  intro n
  simp only [A220726, Nat.add_sub_cancel]

end A220726

/-! ## A220726.P16068010174315608349

`record[ratio[A220725(n+1)]]`
-/

namespace A220726.P16068010174315608349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220726.P16068010174315608349

namespace A220726

/-- `record[ratio[A220725(n+1)]]` -/
def P16068010174315608349.Spec : Prop :=
  ∀ n, P16068010174315608349.a n = (A220726 (n + 1) : ℚ)

end A220726

/-! ## A220726.P5567642706012501164

`A220725(∑[n+1]+2)`
-/

namespace A220726.P5567642706012501164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220726.P5567642706012501164

namespace A220726

/-- `A220725(∑[n+1]+2)` -/
def P5567642706012501164.Spec : Prop :=
  ∀ n, P5567642706012501164.a n = A220726 (n + 1)

end A220726

/-! ## A220726.P12742981345695399294

`record[root(A220725(n+1), A287216(n))]`
-/

namespace A220726.P12742981345695399294
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220725 (n + 1) : ℝ) ^ (1 / (A287216 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220726.P12742981345695399294

namespace A220726

/-- `record[root(A220725(n+1), A287216(n))]` -/
def P12742981345695399294.Spec : Prop :=
  ∀ n, P12742981345695399294.a n = (A220726 (n + 1) : ℝ)

end A220726

/-!
# A220727: Number of ways to reciprocally link elements of an 3Xn array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220727, there is no canonical definition to state claims against.
-/

/-! ## A220727.P1958492335899168462

`A220725(∑[n+2]+4)`
-/

namespace A220727.P1958492335899168462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220727.P1958492335899168462

/-! ## A220727.P3180636207806934739

`A220725(A167614(n+1))^ceil(acot(n))`
-/

namespace A220727.P3180636207806934739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220725 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A220727.P3180636207806934739

/-! ## A220727.P18050210669646438647

`record[A220725(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A220727.P18050210669646438647
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220727.P18050210669646438647

/-! ## A220727.P15407094513388088309

`gcd(A000038(n), A220725(A167614(n+1)))`
-/

namespace A220727.P15407094513388088309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A220725 (A167614 (n + 1)).toNat)

end

end A220727.P15407094513388088309

/-! ## A220727.P6741611857000046412

`lcm(A020985(n), A220725(A167614(n+1)))`
-/

namespace A220727.P6741611857000046412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A220725 (A167614 (n + 1)).toNat)

end

end A220727.P6741611857000046412

/-!
# A220728: Number of ways to reciprocally link elements of an 4Xn array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220728, there is no canonical definition to state claims against.
-/

/-! ## A220728.P1001601374739657292

`A220725(A141214(n)+7)`
-/

namespace A220728.P1001601374739657292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A141214 n + 7).toNat

end

end A220728.P1001601374739657292

/-! ## A220728.P3815261508813725859

`A220725(A052905(n)+9)`
-/

namespace A220728.P3815261508813725859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A052905 n + 9).toNat

end

end A220728.P3815261508813725859

/-! ## A220728.P18102667175804054729

`A220725(A055999(n)+10)`
-/

namespace A220728.P18102667175804054729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A055999 n + 10).toNat

end

end A220728.P18102667175804054729

/-! ## A220728.P4272387798366525841

`A220725(A167614(n+2)+1)`
-/

namespace A220728.P4272387798366525841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A167614 (n + 2) + 1).toNat

end

end A220728.P4272387798366525841

/-! ## A220728.P15686379174137222419

`A220725(A167487(n+2)-3)`
-/

namespace A220728.P15686379174137222419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A167487 (n + 2) - 3).toNat

end

end A220728.P15686379174137222419

/-!
# A220729: Number of ways to reciprocally link elements of an 5Xn array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220729, there is no canonical definition to state claims against.
-/

/-! ## A220729.P6587081873271340415

`A220725(A167499(n+3))`
-/

namespace A220729.P6587081873271340415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A167499 (n + 3)).toNat

end

end A220729.P6587081873271340415

/-! ## A220729.P14747511266162291492

`A220725(A155212(n)+13)`
-/

namespace A220729.P14747511266162291492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A155212 n + 13).toNat

end

end A220729.P14747511266162291492

/-! ## A220729.P10716587610793085326

`A220725(A056000(n)+15)`
-/

namespace A220729.P10716587610793085326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A056000 n + 15).toNat

end

end A220729.P10716587610793085326

/-! ## A220729.P12620364830041641125

`A220725(A000217(n+4)+5)`
-/

namespace A220729.P12620364830041641125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A000217 (n + 4) + 5).toNat

end

end A220729.P12620364830041641125

/-! ## A220729.P18042858522333608018

`A220725(eq[6, A131818(n+1)])`
-/

namespace A220729.P18042858522333608018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220729.P18042858522333608018

/-!
# A220730: Number of ways to reciprocally link elements of an 6Xn array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220730, there is no canonical definition to state claims against.
-/

/-! ## A220730.P10241494837079065614

`A220725(A167499(n+4)+1)`
-/

namespace A220730.P10241494837079065614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A167499 (n + 4) + 1).toNat

end

end A220730.P10241494837079065614

/-! ## A220730.P8045206177599701243

`A220725(A000124(n+5)+5)`
-/

namespace A220730.P8045206177599701243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A000124 (n + 5) + 5).toNat

end

end A220730.P8045206177599701243

/-! ## A220730.P10820309187036474914

`A220725(A000217(n+5)+6)`
-/

namespace A220730.P10820309187036474914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A000217 (n + 5) + 6).toNat

end

end A220730.P10820309187036474914

/-! ## A220730.P3165261860117354752

`A220725(eq[7, A131818(n+1)])`
-/

namespace A220730.P3165261860117354752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220730.P3165261860117354752

/-! ## A220730.P9401885600703629918

`A220725(Δ[A023545(n+1)]+10)`
-/

namespace A220730.P9401885600703629918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (f1 (n + 1) - f1 n + 10).toNat

end

end A220730.P9401885600703629918

/-!
# A220731: Number of ways to reciprocally link elements of an 7Xn array either to themselves or to exactly two horizontal, diagonal or antidiagonal neighbors.

The programs for A220731, there is no canonical definition to state claims against.
-/

/-! ## A220731.P12113821260908149487

`A220725(A167487(n+5))`
-/

namespace A220731.P12113821260908149487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A167487 (n + 5)).toNat

end

end A220731.P12113821260908149487

/-! ## A220731.P12139074032739116322

`A220725(A056119(n)+28)`
-/

namespace A220731.P12139074032739116322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A056119 n + 28).toNat

end

end A220731.P12139074032739116322

/-! ## A220731.P18049337824803628838

`A220725(eq[11, A066657(n)])`
-/

namespace A220731.P18049337824803628838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220731.P18049337824803628838

/-! ## A220731.P18125234876473428671

`A220725(A168106(n)-n)`
-/

namespace A220731.P18125234876473428671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220725 (A168106 n - (n : ℤ)).toNat

end

end A220731.P18125234876473428671

/-!
# A220732: Number of ways to reciprocally link elements of an n X n array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220732, there is no canonical definition to state claims against.
-/

/-! ## A220732.P5422739670712945500

`A220738(∑[4*n]+1)`
-/

namespace A220732.P5422739670712945500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220732.P5422739670712945500

/-! ## A220732.P2949867550507448574

`record[A220738(∑[A113072(n)])]`
-/

namespace A220732.P2949867550507448574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220732.P2949867550507448574

/-! ## A220732.P1723863095610557239

`A220738(A001844(n))+char[8]`
-/

namespace A220732.P1723863095610557239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220732.P1723863095610557239

/-! ## A220732.P3967988732915058456

`record[A003982(n)*A220738(n+1)]`
-/

namespace A220732.P3967988732915058456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A220738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220732.P3967988732915058456

/-!
# A220733: Number of ways to reciprocally link elements of an n X 3 array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220733, the canonical program `A220733.P13054146623245733818` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220733 has offset 1).

The definition of A220733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220733.P3160706841936177135

`ogf((1+3x+9x^2+4x^3-x^4)/(1-2x-3x^2-9x^3-4x^4+x^5))`
-/

namespace A220733.P3160706841936177135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 9, 4, -1] [1, -2, -3, -9, -4, 1] n

end

end A220733.P3160706841936177135

namespace A220733

/-- `ogf((1+3x+9x^2+4x^3-x^4)/(1-2x-3x^2-9x^3-4x^4+x^5))` -/
def P3160706841936177135.Spec : Prop :=
  ∀ n, P3160706841936177135.a n = A220733 (n + 1)

end A220733

/-! ## A220733.P13054146623245733818

`2*a(n-1)+3*a(n-2)+9*a(n-3)+4*a(n-4)-a(n-5)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=72, a(4)=258`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220733

/-- `2*a(n-1)+3*a(n-2)+9*a(n-3)+4*a(n-4)-a(n-5)` -/
def P13054146623245733818.Spec : Prop :=
  ∀ n, P13054146623245733818.a n = A220733 (n + 1)

theorem P13054146623245733818.correct : P13054146623245733818.Spec := by
  intro n
  simp only [A220733, Nat.add_sub_cancel]

end A220733

/-! ## A220733.P315002150890410362

`A220738(∑[n+3]+1)`
-/

namespace A220733.P315002150890410362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220733.P315002150890410362

namespace A220733

/-- `A220738(∑[n+3]+1)` -/
def P315002150890410362.Spec : Prop :=
  ∀ n, P315002150890410362.a n = A220733 (n + 1)

end A220733

/-! ## A220733.P231670927259473744

`record[A010054(n+3)*A220738(n+1)]`
-/

namespace A220733.P231670927259473744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A220738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220733.P231670927259473744

namespace A220733

/-- `record[A010054(n+3)*A220738(n+1)]` -/
def P231670927259473744.Spec : Prop :=
  ∀ n, P231670927259473744.a n = A220733 (n + 1)

end A220733

/-! ## A220733.P11278200337797288141

`record[A220738(n+1)/A263989(n+3)]`
-/

namespace A220733.P11278200337797288141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220738 (n + 1) : ℚ) / (A263989 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220733.P11278200337797288141

namespace A220733

/-- `record[A220738(n+1)/A263989(n+3)]` -/
def P11278200337797288141.Spec : Prop :=
  ∀ n, P11278200337797288141.a n = (A220733 (n + 1) : ℚ)

end A220733

/-!
# A220734: Number of ways to reciprocally link elements of an nX4 array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220734, there is no canonical definition to state claims against.
-/

/-! ## A220734.P5619250741603454664

`A220738(∑[n+5]-(n-2))`
-/

namespace A220734.P5619250741603454664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 2)).toNat

end

end A220734.P5619250741603454664

/-! ## A220734.P16291159364526827316

`record[A220738(∑[A160700(n+3)])]`
-/

namespace A220734.P16291159364526827316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160700 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220734.P16291159364526827316

/-! ## A220734.P10780479360891186267

`and(-1, A220738(A141214(n+1)))`
-/

namespace A220734.P10780479360891186267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220738 (A141214 (n + 1)).toNat)

end

end A220734.P10780479360891186267

/-! ## A220734.P3485932936124598637

`or(A109151(n), A220738(A141214(n+1)))`
-/

namespace A220734.P3485932936124598637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109151 n) (A220738 (A141214 (n + 1)).toNat)

end

end A220734.P3485932936124598637

/-! ## A220734.P770444396187414709

`or(A049320(n+1), A220738(A141214(n+1)))`
-/

namespace A220734.P770444396187414709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049320 (n + 1)) (A220738 (A141214 (n + 1)).toNat)

end

end A220734.P770444396187414709

/-!
# A220735: Number of ways to reciprocally link elements of an nX5 array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220735, there is no canonical definition to state claims against.
-/

/-! ## A220735.P15399125822931311054

`A220738(∑[n+5]+6)`
-/

namespace A220735.P15399125822931311054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A220735.P15399125822931311054

/-!
# A220736: Number of ways to reciprocally link elements of an nX6 array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220736, there is no canonical definition to state claims against.
-/

/-! ## A220736.P8847089029691365483

`A220738(A052905(n+3))`
-/

namespace A220736.P8847089029691365483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A052905 (n + 3)).toNat

end

end A220736.P8847089029691365483

/-! ## A220736.P10532640244934336597

`A220738(eq[3, A219347(n)])`
-/

namespace A220736.P10532640244934336597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220736.P10532640244934336597

/-! ## A220736.P14593291145756600180

`A220738(eq[5, A152157(n)])`
-/

namespace A220736.P14593291145756600180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220736.P14593291145756600180

/-! ## A220736.P9968323930080665680

`A220738(eq[5, A193592(n)])`
-/

namespace A220736.P9968323930080665680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220736.P9968323930080665680

/-! ## A220736.P15566045101215997179

`A220738(eq[8, A258709(n)])`
-/

namespace A220736.P15566045101215997179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220736.P15566045101215997179

/-!
# A220737: Number of ways to reciprocally link elements of an nX7 array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220737, there is no canonical definition to state claims against.
-/

/-! ## A220737.P6692683756510141144

`A220738(C(n+7, 2)+n+1)`
-/

namespace A220737.P6692683756510141144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (Nat.choose (n + 7) 2 + (n + 1))

end

end A220737.P6692683756510141144

/-! ## A220737.P875864841480042791

`A220738(A055999(n+4))`
-/

namespace A220737.P875864841480042791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A055999 (n + 4)).toNat

end

end A220737.P875864841480042791

/-! ## A220737.P6972024641706254908

`A220738(eq[4, A219347(n)])`
-/

namespace A220737.P6972024641706254908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220737.P6972024641706254908

/-! ## A220737.P14961039529910921162

`A220738(eq[6, A193592(n)])`
-/

namespace A220737.P14961039529910921162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220737.P14961039529910921162

/-! ## A220737.P6941581773740942707

`A220738(eq[7, A152157(n)])`
-/

namespace A220737.P6941581773740942707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220737.P6941581773740942707

/-!
# A220738: T(n,k)=Number of ways to reciprocally link elements of an nXk array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220738, there is no canonical definition to state claims against.
-/

/-! ## A220738.P8256648613546136204

`A111660(A097712(n))+1`
-/

namespace A220738.P8256648613546136204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A097712 n).toNat + 1

end

end A220738.P8256648613546136204

/-! ## A220738.P17072218274389719133

`A094182(A330490(n+1))`
-/

namespace A220738.P17072218274389719133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094182 (A330490 (n + 1)).toNat

end

end A220738.P17072218274389719133

/-! ## A220738.P15344377375442525307

`A054429(A008278(n+1)%A050248(n+1))`
-/

namespace A220738.P15344377375442525307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (Int.tmod (A008278 (n + 1)) (A050248 (n + 1))).toNat

end

end A220738.P15344377375442525307

/-! ## A220738.P10060163310690607150

`A054429(A008278(n+1))%A182633(3*n+2)`
-/

namespace A220738.P10060163310690607150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054429 (A008278 (n + 1)).toNat) (A182633 (3 * n + 2))

end

end A220738.P10060163310690607150

/-!
# A220739: Number of ways to reciprocally link elements of an 2 X n array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220739, the canonical program `A220739.P12314115713351589134` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220739 has offset 1).

The definition of A220739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220739.P2212140724751961376

`ogf((1-x^2-x^3-2x^4+x^5)/(1-2x-2x^2+2x^4+2x^5-x^6))`
-/

namespace A220739.P2212140724751961376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1, -2, 1] [1, -2, -2, 0, 2, 2, -1] n

end

end A220739.P2212140724751961376

namespace A220739

/-- `ogf((1-x^2-x^3-2x^4+x^5)/(1-2x-2x^2+2x^4+2x^5-x^6))` -/
def P2212140724751961376.Spec : Prop :=
  ∀ n, P2212140724751961376.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P12314115713351589134

`2*a(n-1)+2*a(n-2)-2*a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=13, a(4)=32, a(5)=85`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220739

/-- `2*a(n-1)+2*a(n-2)-2*a(n-4)-2*a(n-5)+a(n-6)` -/
def P12314115713351589134.Spec : Prop :=
  ∀ n, P12314115713351589134.a n = A220739 (n + 1)

theorem P12314115713351589134.correct : P12314115713351589134.Spec := by
  intro n
  simp only [A220739, Nat.add_sub_cancel]

end A220739

/-! ## A220739.P14108226639414219096

`A087953(n)+A001654(n)`
-/

namespace A220739.P14108226639414219096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 n + A001654 n

end

end A220739.P14108226639414219096

namespace A220739

/-- `A087953(n)+A001654(n)` -/
def P14108226639414219096.Spec : Prop :=
  ∀ n, P14108226639414219096.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P14748456498019706632

`A087953(n)+A000045(n+1)*A000045(n)`
-/

namespace A220739.P14748456498019706632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087953 n + A000045 (n + 1) * A000045 n

end

end A220739.P14748456498019706632

namespace A220739

/-- `A087953(n)+A000045(n+1)*A000045(n)` -/
def P14748456498019706632.Spec : Prop :=
  ∀ n, P14748456498019706632.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P14198365774201637987

`ceil((A080097(n)+1)/2)`
-/

namespace A220739.P14198365774201637987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080097 n + 1 : ℚ) / 2⌉

end

end A220739.P14198365774201637987

namespace A220739

/-- `ceil((A080097(n)+1)/2)` -/
def P14198365774201637987.Spec : Prop :=
  ∀ n, P14198365774201637987.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P14768583207133592827

`floor(A245306(n+2)/2)`
-/

namespace A220739.P14768583207133592827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245306 (n + 2) : ℚ) / 2⌋

end

end A220739.P14768583207133592827

namespace A220739

/-- `floor(A245306(n+2)/2)` -/
def P14768583207133592827.Spec : Prop :=
  ∀ n, P14768583207133592827.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P10569172521812447826

`ceil(A007598(n+2)/2)`
-/

namespace A220739.P10569172521812447826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007598 (n + 2) : ℚ) / 2⌉

end

end A220739.P10569172521812447826

namespace A220739

/-- `ceil(A007598(n+2)/2)` -/
def P10569172521812447826.Spec : Prop :=
  ∀ n, P10569172521812447826.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P3735804466938252232

`round(Δ[A020695(n)]²/2)`
-/

namespace A220739.P3735804466938252232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2)

end

end A220739.P3735804466938252232

namespace A220739

/-- `round(Δ[A020695(n)]²/2)` -/
def P3735804466938252232.Spec : Prop :=
  ∀ n, P3735804466938252232.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P16885014864607782690

`ceil(A000045(n+2)²/2)`
-/

namespace A220739.P16885014864607782690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (n + 2) ^ 2 : ℚ) / 2⌉

end

end A220739.P16885014864607782690

namespace A220739

/-- `ceil(A000045(n+2)²/2)` -/
def P16885014864607782690.Spec : Prop :=
  ∀ n, P16885014864607782690.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P6020736240036300785

`round(A096748(2*n)²/2)`
-/

namespace A220739.P6020736240036300785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A096748 (2 * n) ^ 2 : ℚ) / 2)

end

end A220739.P6020736240036300785

namespace A220739

/-- `round(A096748(2*n)²/2)` -/
def P6020736240036300785.Spec : Prop :=
  ∀ n, P6020736240036300785.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P11521645261906486619

`round(Δ[A001654(n+1)/2])`
-/

namespace A220739.P11521645261906486619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001654 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A220739.P11521645261906486619

namespace A220739

/-- `round(Δ[A001654(n+1)/2])` -/
def P11521645261906486619.Spec : Prop :=
  ∀ n, P11521645261906486619.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P10487979793247405971

`record[ceil(Δ[A000045(n)]²/2)]`
-/

namespace A220739.P10487979793247405971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f2 (n + 1) - f2 n) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220739.P10487979793247405971

namespace A220739

/-- `record[ceil(Δ[A000045(n)]²/2)]` -/
def P10487979793247405971.Spec : Prop :=
  ∀ n, P10487979793247405971.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P1067312102524970635

`ceil(record[Δ[A001611(n)]²]/2)`
-/

namespace A220739.P1067312102524970635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2⌉

end

end A220739.P1067312102524970635

namespace A220739

/-- `ceil(record[Δ[A001611(n)]²]/2)` -/
def P1067312102524970635.Spec : Prop :=
  ∀ n, P1067312102524970635.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P18255341766068385440

`ceil(A195971(2*n+1)/2)`
-/

namespace A220739.P18255341766068385440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195971 (2 * n + 1) : ℚ) / 2⌉

end

end A220739.P18255341766068385440

namespace A220739

/-- `ceil(A195971(2*n+1)/2)` -/
def P18255341766068385440.Spec : Prop :=
  ∀ n, P18255341766068385440.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P6847688578598188035

`ceil((A001611(n+2)-1)²/2)`
-/

namespace A220739.P6847688578598188035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A001611 (n + 2) - 1) ^ 2 : ℚ) / 2⌉

end

end A220739.P6847688578598188035

namespace A220739

/-- `ceil((A001611(n+2)-1)²/2)` -/
def P6847688578598188035.Spec : Prop :=
  ∀ n, P6847688578598188035.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P10992235112164824272

`ceil(A053602(2*n+1)²/2)`
-/

namespace A220739.P10992235112164824272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053602 (2 * n + 1) ^ 2 : ℚ) / 2⌉

end

end A220739.P10992235112164824272

namespace A220739

/-- `ceil(A053602(2*n+1)²/2)` -/
def P10992235112164824272.Spec : Prop :=
  ∀ n, P10992235112164824272.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P13278506336023695838

`floor((Δ[A000045(n+3)]²+1)/2)`
-/

namespace A220739.P13278506336023695838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) - f1 n) ^ 2 + 1 : ℚ) / 2⌋

end

end A220739.P13278506336023695838

namespace A220739

/-- `floor((Δ[A000045(n+3)]²+1)/2)` -/
def P13278506336023695838.Spec : Prop :=
  ∀ n, P13278506336023695838.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P13614215848257866203

`ceil(A006498(A103517(n))/2)`
-/

namespace A220739.P13614215848257866203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006498 (A103517 n).toNat : ℚ) / 2⌉

end

end A220739.P13614215848257866203

namespace A220739

/-- `ceil(A006498(A103517(n))/2)` -/
def P13614215848257866203.Spec : Prop :=
  ∀ n, P13614215848257866203.a n = A220739 (n + 1)

end A220739

/-! ## A220739.P15416646760957982747

`round(record[(A000032(n)-A000045(n))²]/8)`
-/

namespace A220739.P15416646760957982747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A000045 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 8)

end

end A220739.P15416646760957982747

namespace A220739

/-- `round(record[(A000032(n)-A000045(n))²]/8)` -/
def P15416646760957982747.Spec : Prop :=
  ∀ n, P15416646760957982747.a n = A220739 (n + 1)

end A220739

/-!
# A220740: Number of ways to reciprocally link elements of an 3Xn array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220740, there is no canonical definition to state claims against.
-/

/-! ## A220740.P5873109670952162140

`A220738(∑[n+2]+4)`
-/

namespace A220740.P5873109670952162140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220740.P5873109670952162140

/-! ## A220740.P15332708668658136894

`record[A010054(n)*A220738(n+3)]`
-/

namespace A220740.P15332708668658136894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220738 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220740.P15332708668658136894

/-! ## A220740.P9522243002638640475

`lcm(1-and(2, n), A220738(A167614(n+1)))`
-/

namespace A220740.P9522243002638640475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A220738 (A167614 (n + 1)).toNat)

end

end A220740.P9522243002638640475

/-! ## A220740.P616375801674496045

`A220738(A167614(n+1))+A025442(n)`
-/

namespace A220740.P616375801674496045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A167614 (n + 1)).toNat + A025442 n

end

end A220740.P616375801674496045

/-! ## A220740.P13645441576722611680

`A220738(A167614(n+1))+A025466(n)`
-/

namespace A220740.P13645441576722611680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A167614 (n + 1)).toNat + A025466 n

end

end A220740.P13645441576722611680

/-!
# A220741: Number of ways to reciprocally link elements of an 4Xn array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220741, there is no canonical definition to state claims against.
-/

/-! ## A220741.P304662195047408973

`A220738(∑[n+3]+7)`
-/

namespace A220741.P304662195047408973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220741.P304662195047408973

/-! ## A220741.P4669605169103136547

`record[gcd(A220738(n+5), A320079(n))]`
-/

namespace A220741.P4669605169103136547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220738 (n + 5)) (A320079 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220741.P4669605169103136547

/-!
# A220742: Number of ways to reciprocally link elements of an 5 X n array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220742, there is no canonical definition to state claims against.
-/

/-! ## A220742.P14491409694979494709

`A220738(A167499(n+3))`
-/

namespace A220742.P14491409694979494709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A167499 (n + 3)).toNat

end

end A220742.P14491409694979494709

/-! ## A220742.P15122709777079736734

`A220738(A155212(n)+13)`
-/

namespace A220742.P15122709777079736734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A155212 n + 13).toNat

end

end A220742.P15122709777079736734

/-! ## A220742.P18427474700273023392

`A220738(A056000(n)+15)`
-/

namespace A220742.P18427474700273023392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A056000 n + 15).toNat

end

end A220742.P18427474700273023392

/-! ## A220742.P12188120617190154719

`A220738(eq[7, A066657(n)])`
-/

namespace A220742.P12188120617190154719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220742.P12188120617190154719

/-! ## A220742.P9329481636001164179

`A220738(A167614(n+3)+2)`
-/

namespace A220742.P9329481636001164179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A167614 (n + 3) + 2).toNat

end

end A220742.P9329481636001164179

/-!
# A220743: Number of ways to reciprocally link elements of an 6 X n array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220743, there is no canonical definition to state claims against.
-/

/-! ## A220743.P14583683967006241877

`A220738(A166136(n+4))`
-/

namespace A220743.P14583683967006241877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A166136 (n + 4)).toNat

end

end A220743.P14583683967006241877

/-! ## A220743.P12784957259650553129

`A220738(A000124(n+5)+5)`
-/

namespace A220743.P12784957259650553129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A000124 (n + 5) + 5).toNat

end

end A220743.P12784957259650553129

/-! ## A220743.P2984091219806703984

`A220738(A246172(n+1)+20)`
-/

namespace A220743.P2984091219806703984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A246172 (n + 1) + 20).toNat

end

end A220743.P2984091219806703984

/-! ## A220743.P9039913635685165381

`A220738(eq[7, A131818(n+1)])`
-/

namespace A220743.P9039913635685165381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220743.P9039913635685165381

/-! ## A220743.P14105571738906457949

`A220738(Δ[A023545(n+1)]+10)`
-/

namespace A220743.P14105571738906457949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (f1 (n + 1) - f1 n + 10).toNat

end

end A220743.P14105571738906457949

/-!
# A220744: Number of ways to reciprocally link elements of an 7 X n array either to themselves or to exactly two horizontal, diagonal and antidiagonal neighbors, without consecutive collinear links.

The programs for A220744, there is no canonical definition to state claims against.
-/

/-! ## A220744.P7144159956259911702

`A220738(A167487(n+5))`
-/

namespace A220744.P7144159956259911702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A167487 (n + 5)).toNat

end

end A220744.P7144159956259911702

/-! ## A220744.P13702901038442133355

`A220738(A056119(n)+28)`
-/

namespace A220744.P13702901038442133355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A056119 n + 28).toNat

end

end A220744.P13702901038442133355

/-! ## A220744.P1593526799209192303

`A220738(eq[11, A066657(n)])`
-/

namespace A220744.P1593526799209192303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220744.P1593526799209192303

/-! ## A220744.P16977601845160406047

`A220738(A167499(n+5)+2)`
-/

namespace A220744.P16977601845160406047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A167499 (n + 5) + 2).toNat

end

end A220744.P16977601845160406047

/-! ## A220744.P13979657205023408704

`A220738(A000124(n+6)+6)`
-/

namespace A220744.P13979657205023408704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220738 (A000124 (n + 6) + 6).toNat

end

end A220744.P13979657205023408704

/-!
# A220745: "Complement" of Pol's E-toothpick sequence after n iterations.

The programs for A220745, there is no canonical definition to state claims against.
-/

/-! ## A220745.P17843886336043638955

`3*n²-A161330(n)`
-/

namespace A220745.P17843886336043638955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) - A161330 n

end

end A220745.P17843886336043638955

/-! ## A220745.P15574462160687811882

`3*n²+A024000(A161330(n)+1)`
-/

namespace A220745.P15574462160687811882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) + A024000 (A161330 n + 1).toNat

end

end A220745.P15574462160687811882

/-! ## A220745.P6567723761864071790

`3*n²+A161334(n)*(1-6/2)`
-/

namespace A220745.P6567723761864071790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℚ) + (A161334 n : ℚ) * (1 - (6 : ℚ) / 2)

end

end A220745.P6567723761864071790

/-! ## A220745.P14264292487035345714

`A033428(n)-2*A161334(n)`
-/

namespace A220745.P14264292487035345714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n - 2 * A161334 n

end

end A220745.P14264292487035345714

/-! ## A220745.P13399803058481591138

`A008585(n²)-2*A161334(n)`
-/

namespace A220745.P13399803058481591138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n ^ 2) - 2 * A161334 n

end

end A220745.P13399803058481591138

/-! ## A220745.P13218549243479109465

`A005918(n)-A103517(A161334(n))`
-/

namespace A220745.P13218549243479109465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A103517 (A161334 n).toNat

end

end A220745.P13218549243479109465

/-!
# A220746: Numbers n such that n and n + 10 are prime and there is a power of two in the interval (n, n+10).

The programs for A220746, there is no canonical definition to state claims against.
-/

/-! ## A220746.P4849639827907920234

`record[p?[xor(n, A046146(n))]]`
-/

namespace A220746.P4849639827907920234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A046146 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220746.P4849639827907920234

/-! ## A220746.P12004381767946922537

`p?[Δ[∑[A123199(n)]²]]`
-/

namespace A220746.P12004381767946922537
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123199 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220746.P12004381767946922537

/-! ## A220746.P16234744278898749066

`p?[or(2^n-3, A129297(n+1))]`
-/

namespace A220746.P16234744278898749066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - 3) (A129297 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A220746.P16234744278898749066

/-!
# A220747: a(n) = (2*n+1)!! / ((floor((n-1)/3)*2+1))!!

The programs for A220747, there is no canonical definition to state claims against.
-/

/-! ## A220747.P16291014658539481342

`∏[2*n^abs(1-n%3)+1]`
-/

namespace A220747.P16291014658539481342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (n : ℚ) ^ (|1 - ((n % 3 : ℕ) : ℤ)| : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A220747.P16291014658539481342

/-! ## A220747.P16610029679957805065

`∏[A267068(2*n)]`
-/

namespace A220747.P16610029679957805065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267068 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A220747.P16610029679957805065

/-! ## A220747.P1612652349552721348

`∏[A244477(A244477(2*(n+1))+1)]`
-/

namespace A220747.P1612652349552721348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244477 (A244477 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A220747.P1612652349552721348

/-! ## A220747.P17157992743082910938

`∏[A005408(n)/A006083(2*n+1)]`
-/

namespace A220747.P17157992743082910938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A006083 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A220747.P17157992743082910938

/-! ## A220747.P5989848740489132542

`∏[A005408(A057979(A098486(n+1)))]`
-/

namespace A220747.P5989848740489132542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A057979 (A098486 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A220747.P5989848740489132542

/-!
# A220748: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..3 nX3 array.

The programs for A220748, there is no canonical definition to state claims against.
-/

/-! ## A220748.P6994975996583698477

`A220751(∑[n+2]+4)`
-/

namespace A220748.P6994975996583698477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220748.P6994975996583698477

/-! ## A220748.P3069292460386731105

`record[A100218(n)*A220751(n+4)]`
-/

namespace A220748.P3069292460386731105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100218 n * A220751 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220748.P3069292460386731105

/-! ## A220748.P16423608022104433786

`record[gcd(A092921(n), A220751(n+4))]`
-/

namespace A220748.P16423608022104433786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A220751 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220748.P16423608022104433786

/-! ## A220748.P3629266601767903598

`A220751(A167614(n+1))+A025465(n)`
-/

namespace A220748.P3629266601767903598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A167614 (n + 1)).toNat + A025465 n

end

end A220748.P3629266601767903598

/-! ## A220748.P2739852351506944763

`A220751(A167614(n+1))+A025466(n)`
-/

namespace A220748.P2739852351506944763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A167614 (n + 1)).toNat + A025466 n

end

end A220748.P2739852351506944763

/-!
# A220749: Equals one maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..3 n X 4 array.

The programs for A220749, there is no canonical definition to state claims against.
-/

/-! ## A220749.P17813490453122822476

`A220751(A374004(n+1))`
-/

namespace A220749.P17813490453122822476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A374004 (n + 1)).toNat

end

end A220749.P17813490453122822476

/-! ## A220749.P13661378245849468079

`A220751(A141214(n)+7)`
-/

namespace A220749.P13661378245849468079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A141214 n + 7).toNat

end

end A220749.P13661378245849468079

/-! ## A220749.P11328242488401391099

`A220751(A052905(n)+9)`
-/

namespace A220749.P11328242488401391099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A052905 n + 9).toNat

end

end A220749.P11328242488401391099

/-! ## A220749.P14522442142183375493

`A220751(A055999(n)+10)`
-/

namespace A220749.P14522442142183375493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A055999 n + 10).toNat

end

end A220749.P14522442142183375493

/-!
# A220750: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and vertical neighbors in a random 0..3 nX5 array.

The programs for A220750, there is no canonical definition to state claims against.
-/

/-! ## A220750.P3530779597761414638

`A220751(A374005(n+1))`
-/

namespace A220750.P3530779597761414638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A374005 (n + 1)).toNat

end

end A220750.P3530779597761414638

/-! ## A220750.P17519680216789979928

`A220751(A167499(n+3))`
-/

namespace A220750.P17519680216789979928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A167499 (n + 3)).toNat

end

end A220750.P17519680216789979928

/-! ## A220750.P3372989920462064419

`A220751(A155212(n)+13)`
-/

namespace A220750.P3372989920462064419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220751 (A155212 n + 13).toNat

end

end A220750.P3372989920462064419

/-!
# A220753: Expansion of (1+4*x+5*x^2-x^3)/((1-x)*(1+x)*(1-2*x^2)).

The programs for A220753, the canonical program `A220753.P17164166992255779045` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220753 has offset 0).

The definition of A220753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+5x^2-x^3)/(1-3x^2+2x^4))` (program `A220753.P17164166992255779045`, by `A220753.P17164166992255779045.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220753.P17164166992255779045

`ogf((1+4x+5x^2-x^3)/(1-3x^2+2x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220753

/-- `ogf((1+4x+5x^2-x^3)/(1-3x^2+2x^4))` -/
def P17164166992255779045.Spec : Prop :=
  ∀ n, P17164166992255779045.a n = A220753 n

theorem P17164166992255779045.correct : P17164166992255779045.Spec := by
  intro n
  simp only [A220753]

end A220753

/-! ## A220753.P7627680079505463563

`7*2^floor(n/2)-3/2*(3+(-1)^n)`
-/

namespace A220753.P7627680079505463563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) - (3 : ℚ) / 2 * (3 + (-1) ^ n : ℚ)

end

end A220753.P7627680079505463563

namespace A220753

/-- `7*2^floor(n/2)-3/2*(3+(-1)^n)` -/
def P7627680079505463563.Spec : Prop :=
  ∀ n, P7627680079505463563.a n = (A220753 n : ℚ)

end A220753

/-! ## A220753.P1157843168422371728

`3*a(n-2)-2*a(n-4)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=11`
-/

namespace A220753.P1157843168422371728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 8, 11] fun n a =>
  3 * a (n - 2) - 2 * a (n - 4)

end

end A220753.P1157843168422371728

namespace A220753

/-- `3*a(n-2)-2*a(n-4)` -/
def P1157843168422371728.Spec : Prop :=
  ∀ n, P1157843168422371728.a n = A220753 n

end A220753

/-! ## A220753.P11542972540198128312

`A047290(A083416(n+1))`
-/

namespace A220753.P11542972540198128312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047290 (A083416 (n + 1)).toNat

end

end A220753.P11542972540198128312

namespace A220753

/-- `A047290(A083416(n+1))` -/
def P11542972540198128312.Spec : Prop :=
  ∀ n, P11542972540198128312.a n = A220753 n

end A220753

/-! ## A220753.P16563839526308177532

`3*gcd(2, n)+2*a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A220753.P16563839526308177532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * Nat.gcd 2 n + 2 * a (n - 2)

end

end A220753.P16563839526308177532

namespace A220753

/-- `3*gcd(2, n)+2*a(n-2)` -/
def P16563839526308177532.Spec : Prop :=
  ∀ n, (P16563839526308177532.a n : ℤ) = A220753 n

end A220753

/-! ## A220753.P7711075916362073551

`a(n-1)+gcd(a(n-1)-2, n%2)+2` with `a(0)=1`
-/

namespace A220753.P7711075916362073551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd ((a (n - 1) : ℤ) - 2) ((n % 2 : ℕ) : ℤ) + 2

end

end A220753.P7711075916362073551

namespace A220753

/-- `a(n-1)+gcd(a(n-1)-2, n%2)+2` -/
def P7711075916362073551.Spec : Prop :=
  ∀ n, (P7711075916362073551.a n : ℤ) = A220753 n

end A220753

/-! ## A220753.P3062149093401564305

`∪[A048489(n), A156127(n)]`
-/

namespace A220753.P3062149093401564305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156127 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A220753.P3062149093401564305

namespace A220753

/-- `∪[A048489(n), A156127(n)]` -/
def P3062149093401564305.Spec : Prop :=
  ∀ n, (P3062149093401564305.a n : ℤ) = A220753 n

end A220753

/-! ## A220753.P2092860810240323339

`A048489(A110654(n))/A000034(n)`
-/

namespace A220753.P2092860810240323339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048489 (A110654 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A220753.P2092860810240323339

namespace A220753

/-- `A048489(A110654(n))/A000034(n)` -/
def P2092860810240323339.Spec : Prop :=
  ∀ n, P2092860810240323339.a n = (A220753 n : ℚ)

end A220753

/-! ## A220753.P12910692593007933500

`A048489(A110654(n))/A006530(or(n, n+1)-n)`
-/

namespace A220753.P12910692593007933500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048489 (A110654 n).toNat : ℚ) / (A006530 (Nat.lor n (n + 1) - n) : ℚ)

end

end A220753.P12910692593007933500

namespace A220753

/-- `A048489(A110654(n))/A006530(or(n, n+1)-n)` -/
def P12910692593007933500.Spec : Prop :=
  ∀ n, P12910692593007933500.a n = (A220753 n : ℚ)

end A220753

/-! ## A220753.P5269449620868944189

`(A224692(n)+A123208(n))/2`
-/

namespace A220753.P5269449620868944189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224692 n + A123208 n : ℚ) / 2

end

end A220753.P5269449620868944189

namespace A220753

/-- `(A224692(n)+A123208(n))/2` -/
def P5269449620868944189.Spec : Prop :=
  ∀ n, P5269449620868944189.a n = (A220753 n : ℚ)

end A220753

/-!
# A220754: Number of ordered triples (a,b,c) of elements of the symmetric group S_n such that the triple a,b,c generates a transitive group.

The programs for A220754, there is no canonical definition to state claims against.
-/

/-! ## A220754.P1993001350388314676

`n!*A027837(n+1)`
-/

namespace A220754.P1993001350388314676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A027837 (n + 1)

end

end A220754.P1993001350388314676

/-! ## A220754.P6336862210273370880

`A000142(n)*A027837(n+1)`
-/

namespace A220754.P6336862210273370880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A027837 (n + 1)

end

end A220754.P6336862210273370880

/-! ## A220754.P16360990325135405241

`sqrt(A001044(n))*A027837(n+1)`
-/

namespace A220754.P16360990325135405241
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001044 n : ℝ) * (A027837 (n + 1) : ℝ)

end

end A220754.P16360990325135405241

/-! ## A220754.P12489327528858712716

`A027837(n+1)/A000079(n)*A000165(n)`
-/

namespace A220754.P12489327528858712716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027837 (n + 1) : ℚ) / (A000079 n : ℚ) * (A000165 n : ℚ)

end

end A220754.P12489327528858712716

/-!
# A220755: Numbers n such that n^2 + n(n+1)/2 is an oblong number (A002378).

The programs for A220755, the canonical program `A220755.P6797710479310938819` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220755 has offset 1).

The definition of A220755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220755.P6797710479310938819

`ogf((x+27x^2-9x^3-3x^4)/(1-x-98x^2+98x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220755

/-- `ogf((x+27x^2-9x^3-3x^4)/(1-x-98x^2+98x^3+x^4-x^5))` -/
def P6797710479310938819.Spec : Prop :=
  ∀ n, P6797710479310938819.a n = A220755 (n + 1)

theorem P6797710479310938819.correct : P6797710479310938819.Spec := by
  intro n
  simp only [A220755, Nat.add_sub_cancel]

end A220755

/-! ## A220755.P15360647520265185909

`A077291(comp[or(2, n)])/3`
-/

namespace A220755.P15360647520265185909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077291 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 3

end

end A220755.P15360647520265185909

namespace A220755

/-- `A077291(comp[or(2, n)])/3` -/
def P15360647520265185909.Spec : Prop :=
  ∀ n, P15360647520265185909.a n = (A220755 (n + 1) : ℚ)

end A220755

/-! ## A220755.P15861475956785634028

`A077291(A042948(n))/3`
-/

namespace A220755.P15861475956785634028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077291 (A042948 n).toNat : ℚ) / 3

end

end A220755.P15861475956785634028

namespace A220755

/-- `A077291(A042948(n))/3` -/
def P15861475956785634028.Spec : Prop :=
  ∀ n, P15861475956785634028.a n = (A220755 (n + 1) : ℚ)

end A220755

/-! ## A220755.P2283112973598383957

`(A046182(n+1)+1)%A046181(n+1)`
-/

namespace A220755.P2283112973598383957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046182 (n + 1) + 1) (A046181 (n + 1))

end

end A220755.P2283112973598383957

namespace A220755

/-- `(A046182(n+1)+1)%A046181(n+1)` -/
def P2283112973598383957.Spec : Prop :=
  ∀ n, P2283112973598383957.a n = A220755 (n + 1)

end A220755

/-! ## A220755.P3363601862344914780

`A046181(n+1)/A046182(n+1)*A251793(n+1)`
-/

namespace A220755.P3363601862344914780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046181 (n + 1) : ℚ) / (A046182 (n + 1) : ℚ) * (A251793 (n + 1) : ℚ)

end

end A220755.P3363601862344914780

namespace A220755

/-- `A046181(n+1)/A046182(n+1)*A251793(n+1)` -/
def P3363601862344914780.Spec : Prop :=
  ∀ n, P3363601862344914780.a n = (A220755 (n + 1) : ℚ)

end A220755

/-!
# A220756: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 n X n array.

The programs for A220756, there is no canonical definition to state claims against.
-/

/-! ## A220756.P17184121468601157758

`A220761(∑[4*n]+1)`
-/

namespace A220756.P17184121468601157758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220756.P17184121468601157758

/-!
# A220757: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A220757, there is no canonical definition to state claims against.
-/

/-! ## A220757.P12817120427676082040

`A220761(∑[n+3]+1)`
-/

namespace A220757.P12817120427676082040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220757.P12817120427676082040

/-! ## A220757.P18023669669087889993

`record[A220761(A198464(n+1))]`
-/

namespace A220757.P18023669669087889993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220757.P18023669669087889993

/-! ## A220757.P8696097314905505538

`A220761(A034856(n+2))+C(n, 64)`
-/

namespace A220757.P8696097314905505538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A034856 (n + 2)).toNat + (Nat.choose n 64 : ℤ)

end

end A220757.P8696097314905505538

/-! ## A220757.P2742341928360220327

`A001222(A308052(n+1))*A220761(A034856(n+2))`
-/

namespace A220757.P2742341928360220327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A308052 (n + 1)).toNat * A220761 (A034856 (n + 2)).toNat

end

end A220757.P2742341928360220327

/-!
# A220758: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A220758, there is no canonical definition to state claims against.
-/

/-! ## A220758.P12733127370356965136

`A220761(∑[n+4]+3)`
-/

namespace A220758.P12733127370356965136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220758.P12733127370356965136

/-!
# A220759: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A220759, there is no canonical definition to state claims against.
-/

/-! ## A220759.P10547445182151028685

`A220761(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A220759.P10547445182151028685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A220759.P10547445182151028685

/-! ## A220759.P10879299676782805959

`A220761(Δ[A264443(n)])^A219347(n)`
-/

namespace A220759.P10879299676782805959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220761 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A219347 n : ℤ)

end

end A220759.P10879299676782805959

/-!
# A220760: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 nX6 array.

The programs for A220760, there is no canonical definition to state claims against.
-/

/-! ## A220760.P7970711912751100176

`A220761(A052905(n+3))`
-/

namespace A220760.P7970711912751100176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A052905 (n + 3)).toNat

end

end A220760.P7970711912751100176

/-! ## A220760.P14470328527914236592

`A220761(A056119(n)+16)`
-/

namespace A220760.P14470328527914236592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A056119 n + 16).toNat

end

end A220760.P14470328527914236592

/-!
# A220762: Number of 2Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 2Xn array.

The programs for A220762, there is no canonical definition to state claims against.
-/

/-! ## A220762.P8631872041584499025

`A220761(∑[n+1]+2)`
-/

namespace A220762.P8631872041584499025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220762.P8631872041584499025

/-! ## A220762.P2230060382970271743

`lcm(2, A220761(A133263(n+1)))`
-/

namespace A220762.P2230060382970271743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220761 (A133263 (n + 1)).toNat)

end

end A220762.P2230060382970271743

/-! ## A220762.P989515390929169076

`record[A220761(n+3)/A067425(n)]`
-/

namespace A220762.P989515390929169076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220761 (n + 3) : ℚ) / (A067425 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220762.P989515390929169076

/-! ## A220762.P1086839173819418603

`record[A220761(n+3)/A108441(n)]`
-/

namespace A220762.P1086839173819418603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220761 (n + 3) : ℚ) / (A108441 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220762.P1086839173819418603

/-! ## A220762.P8760080498971467530

`A220761(A133263(n+1))+A185284(n)`
-/

namespace A220762.P8760080498971467530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A133263 (n + 1)).toNat + A185284 n

end

end A220762.P8760080498971467530

/-!
# A220763: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A220763, there is no canonical definition to state claims against.
-/

/-! ## A220763.P8051783052388128662

`A220761(∑[n+2]+4)`
-/

namespace A220763.P8051783052388128662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220763.P8051783052388128662

/-! ## A220763.P6817336802085750592

`lcm(2, A220761(A167614(n+1)))`
-/

namespace A220763.P6817336802085750592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220761 (A167614 (n + 1)).toNat)

end

end A220763.P6817336802085750592

/-! ## A220763.P9216122898800648475

`A220761(A167614(n+1))+A025443(n)`
-/

namespace A220763.P9216122898800648475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A167614 (n + 1)).toNat + A025443 n

end

end A220763.P9216122898800648475

/-! ## A220763.P8396865429600335501

`A220761(A167614(n+1))+A064459(n)`
-/

namespace A220763.P8396865429600335501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A167614 (n + 1)).toNat + A064459 n

end

end A220763.P8396865429600335501

/-! ## A220763.P1094988467035531393

`A220761(A167614(n+1))+A066035(n)`
-/

namespace A220763.P1094988467035531393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A167614 (n + 1)).toNat + A066035 n

end

end A220763.P1094988467035531393

/-!
# A220764: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 4Xn array.

The programs for A220764, there is no canonical definition to state claims against.
-/

/-! ## A220764.P6874309871269783857

`A220761(∑[n+3]+7)`
-/

namespace A220764.P6874309871269783857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220764.P6874309871269783857

/-! ## A220764.P14317787729457774994

`A220761(A052905(n)+9)%A052734(n+4)`
-/

namespace A220764.P14317787729457774994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220761 (A052905 n + 9).toNat) (A052734 (n + 4))

end

end A220764.P14317787729457774994

/-! ## A220764.P13762292439095938631

`A220761(A167614(n+2)+1)+A000038(3*n+2)`
-/

namespace A220764.P13762292439095938631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A167614 (n + 2) + 1).toNat + A000038 (3 * n + 2)

end

end A220764.P13762292439095938631

/-!
# A220765: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 5Xn array.

The programs for A220765, there is no canonical definition to state claims against.
-/

/-! ## A220765.P16792774965252819389

`A220761(A167499(n+3))`
-/

namespace A220765.P16792774965252819389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A167499 (n + 3)).toNat

end

end A220765.P16792774965252819389

/-! ## A220765.P2126782950749771287

`A220761(A155212(n)+13)`
-/

namespace A220765.P2126782950749771287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A155212 n + 13).toNat

end

end A220765.P2126782950749771287

/-! ## A220765.P15680906942726824012

`A220761(A056000(n)+15)`
-/

namespace A220765.P15680906942726824012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A056000 n + 15).toNat

end

end A220765.P15680906942726824012

/-! ## A220765.P5753036266109430322

`A220761(eq[7, A066657(n)])`
-/

namespace A220765.P5753036266109430322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220765.P5753036266109430322

/-!
# A220766: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 6Xn array.

The programs for A220766, there is no canonical definition to state claims against.
-/

/-! ## A220766.P11294095870406835980

`A220761(A166136(n+4))`
-/

namespace A220766.P11294095870406835980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A166136 (n + 4)).toNat

end

end A220766.P11294095870406835980

/-!
# A220767: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, diagonal or antidiagonal neighbors in a random 0..3 7Xn array.

The programs for A220767, there is no canonical definition to state claims against.
-/

/-! ## A220767.P7475726419878657929

`A220761(A302537(n)+27)`
-/

namespace A220767.P7475726419878657929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220761 (A302537 n + 27).toNat

end

end A220767.P7475726419878657929

/-!
# A220768: Number of tilings of a 2 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220768, the canonical program `A220768.P15389986771423682204` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220768 has offset 0).

The definition of A220768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220768.P15389986771423682204

`∑{d}[A004277(n), A000045(A158416(#))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A220768

/-- `∑{d}[A004277(n), A000045(A158416(#))]` -/
def P15389986771423682204.Spec : Prop :=
  ∀ n, P15389986771423682204.a n = A220768 n

theorem P15389986771423682204.correct : P15389986771423682204.Spec := by
  intro n
  simp only [A220768]

end A220768

/-! ## A220768.P4047028777890413488

`A220777(∑[n+3])`
-/

namespace A220768.P4047028777890413488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220768.P4047028777890413488

namespace A220768

/-- `A220777(∑[n+3])` -/
def P4047028777890413488.Spec : Prop :=
  ∀ n, P4047028777890413488.a n = A220768 n

end A220768

/-! ## A220768.P963931604152202016

`record[root(A220777(n), A096811(n))]`
-/

namespace A220768.P963931604152202016
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220777 n : ℝ) ^ (1 / (A096811 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220768.P963931604152202016

namespace A220768

/-- `record[root(A220777(n), A096811(n))]` -/
def P963931604152202016.Spec : Prop :=
  ∀ n, P963931604152202016.a n = (A220768 n : ℝ)

end A220768

/-! ## A220768.P10308121460991690814

`record[root(A220777(n+2), A193592(n))]`
-/

namespace A220768.P10308121460991690814
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220777 (n + 2) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220768.P10308121460991690814

namespace A220768

/-- `record[root(A220777(n+2), A193592(n))]` -/
def P10308121460991690814.Spec : Prop :=
  ∀ n, P10308121460991690814.a n = (A220768 n : ℝ)

end A220768

/-! ## A220768.P10820112902481626965

`record[A220777(A027379(A008611(n)))]`
-/

namespace A220768.P10820112902481626965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A027379 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220768.P10820112902481626965

namespace A220768

/-- `record[A220777(A027379(A008611(n)))]` -/
def P10820112902481626965.Spec : Prop :=
  ∀ n, P10820112902481626965.a n = A220768 n

end A220768

/-!
# A220769: Number of tilings of a 3 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220769, there is no canonical definition to state claims against.
-/

/-! ## A220769.P17587846233106011698

`A220777(∑[n+3]+n+3)`
-/

namespace A220769.P17587846233106011698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A220769.P17587846233106011698

/-! ## A220769.P14309751610178909855

`A220777(A046691(n+2))+A011744(n)`
-/

namespace A220769.P14309751610178909855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A046691 (n + 2)).toNat + A011744 n

end

end A220769.P14309751610178909855

/-! ## A220769.P4410785632358962412

`C(A220777(A046691(n+2)), A178334(n))`
-/

namespace A220769.P4410785632358962412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A220777 (A046691 (n + 2)).toNat).toNat (A178334 n).toNat

end

end A220769.P4410785632358962412

/-! ## A220769.P6540877317148310724

`A220777(A046691(n+2))%A208779(n+1)`
-/

namespace A220769.P6540877317148310724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220777 (A046691 (n + 2)).toNat) (A208779 (n + 1))

end

end A220769.P6540877317148310724

/-! ## A220769.P4681130595074752869

`lcm(A178334(n+2), A220777(A046691(n+2)))`
-/

namespace A220769.P4681130595074752869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178334 (n + 2)) (A220777 (A046691 (n + 2)).toNat)

end

end A220769.P4681130595074752869

/-!
# A220770: Number of tilings of a 4 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220770, there is no canonical definition to state claims against.
-/

/-! ## A220770.P14350335789065285352

`A220777(A052905(n+2))`
-/

namespace A220770.P14350335789065285352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A052905 (n + 2)).toNat

end

end A220770.P14350335789065285352

/-! ## A220770.P12447574246854596304

`A220777(A155212(n)+12)`
-/

namespace A220770.P12447574246854596304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A155212 n + 12).toNat

end

end A220770.P12447574246854596304

/-! ## A220770.P2896576885496263494

`A220777(eq[4, A002262(n)])`
-/

namespace A220770.P2896576885496263494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220770.P2896576885496263494

/-! ## A220770.P2203182378609641711

`A220777(eq[4, A025581(n)])`
-/

namespace A220770.P2203182378609641711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220770.P2203182378609641711

/-! ## A220770.P15164292704116096036

`A220777(A056000(n+1)+5)`
-/

namespace A220770.P15164292704116096036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A056000 (n + 1) + 5).toNat

end

end A220770.P15164292704116096036

/-!
# A220771: Number of tilings of a 5 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220771, there is no canonical definition to state claims against.
-/

/-! ## A220771.P17400158147044260037

`A220777(A055999(n+3))`
-/

namespace A220771.P17400158147044260037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A055999 (n + 3)).toNat

end

end A220771.P17400158147044260037

/-! ## A220771.P9718792697901338420

`A220777(eq[5, A002262(n)])`
-/

namespace A220771.P9718792697901338420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220771.P9718792697901338420

/-! ## A220771.P7189038280704321666

`A220777(A052905(n+3)-1)`
-/

namespace A220771.P7189038280704321666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A052905 (n + 3) - 1).toNat

end

end A220771.P7189038280704321666

/-! ## A220771.P12598216398606474427

`A220777(A027379(n+4)-3)`
-/

namespace A220771.P12598216398606474427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A027379 (n + 4) - 3).toNat

end

end A220771.P12598216398606474427

/-! ## A220771.P13038702155973405526

`A220777(Δ[A023545(n+2)]-2)`
-/

namespace A220771.P13038702155973405526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (f1 (n + 1) - f1 n - 2).toNat

end

end A220771.P13038702155973405526

/-!
# A220772: Number of tilings of a 6 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220772, there is no canonical definition to state claims against.
-/

/-! ## A220772.P12614751223343842457

`record[A220777(A027379(n)+9)]`
-/

namespace A220772.P12614751223343842457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A027379 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220772.P12614751223343842457

/-! ## A220772.P13251594043666799398

`A220777(A022856(n+10)+4)`
-/

namespace A220772.P13251594043666799398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A022856 (n + 10) + 4).toNat

end

end A220772.P13251594043666799398

/-! ## A220772.P14618081108070067011

`A220777(eq[7, A002260(n+1)])`
-/

namespace A220772.P14618081108070067011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220772.P14618081108070067011

/-! ## A220772.P8809557829124506494

`A220777((n+11)²-A052905(n+11))`
-/

namespace A220772.P8809557829124506494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (((n + 11) ^ 2 : ℤ) - A052905 (n + 11)).toNat

end

end A220772.P8809557829124506494

/-! ## A220772.P4341846847935202977

`record[A220777(n+9)/A039599(n+2)]`
-/

namespace A220772.P4341846847935202977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220777 (n + 9) : ℚ) / (A039599 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220772.P4341846847935202977

/-!
# A220773: Number of tilings of a 7 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220773, there is no canonical definition to state claims against.
-/

/-! ## A220773.P6092813099356620251

`A220777(A167487(n+6))`
-/

namespace A220773.P6092813099356620251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A167487 (n + 6)).toNat

end

end A220773.P6092813099356620251

/-! ## A220773.P7529366998804638564

`A220777(eq[7, A002262(n)])`
-/

namespace A220773.P7529366998804638564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220773.P7529366998804638564

/-! ## A220773.P1144614208164421015

`A220777(eq[7, A025581(n)])`
-/

namespace A220773.P1144614208164421015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220773.P1144614208164421015

/-! ## A220773.P3408598995261279794

`A220777(A046691(n+6)-4)`
-/

namespace A220773.P3408598995261279794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A046691 (n + 6) - 4).toNat

end

end A220773.P3408598995261279794

/-! ## A220773.P5002906534869505102

`A220777(eq[8, A002260(n+1)])`
-/

namespace A220773.P5002906534869505102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220773.P5002906534869505102

/-!
# A220774: Number of tilings of an 8 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220774, there is no canonical definition to state claims against.
-/

/-! ## A220774.P4127742727353682534

`A220777(A027379(n+7)-6)`
-/

namespace A220774.P4127742727353682534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A027379 (n + 7) - 6).toNat

end

end A220774.P4127742727353682534

/-! ## A220774.P16350365910664527093

`A220777(A000124(n+8)+7)`
-/

namespace A220774.P16350365910664527093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A000124 (n + 8) + 7).toNat

end

end A220774.P16350365910664527093

/-! ## A220774.P2710744472821549653

`A220777(A000217(n+9)-9)`
-/

namespace A220774.P2710744472821549653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A000217 (n + 9) - 9).toNat

end

end A220774.P2710744472821549653

/-! ## A220774.P399397475845086174

`record[A220777(Δ[A051937(n+4)])]`
-/

namespace A220774.P399397475845086174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051937 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220774.P399397475845086174

/-! ## A220774.P2733096529461386761

`record[A220777(A027379(n)+A005408(n))]`
-/

namespace A220774.P2733096529461386761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A027379 n + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220774.P2733096529461386761

/-!
# A220775: Number of tilings of a 9 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220775, there is no canonical definition to state claims against.
-/

/-! ## A220775.P16193144490330042911

`A220777(A056000(n+6))`
-/

namespace A220775.P16193144490330042911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A056000 (n + 6)).toNat

end

end A220775.P16193144490330042911

/-! ## A220775.P80366992163380564

`A220777(A052905(n+7)-5)`
-/

namespace A220775.P80366992163380564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A052905 (n + 7) - 5).toNat

end

end A220775.P80366992163380564

/-! ## A220775.P11937504722819705258

`A220777(A000124(n+9)+8)`
-/

namespace A220775.P11937504722819705258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A000124 (n + 9) + 8).toNat

end

end A220775.P11937504722819705258

/-! ## A220775.P10029913360227173092

`A220777(A000096(n+8)+10)`
-/

namespace A220775.P10029913360227173092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A000096 (n + 8) + 10).toNat

end

end A220775.P10029913360227173092

/-! ## A220775.P2294346490851566751

`A220777(A000217(n+9)+9)`
-/

namespace A220775.P2294346490851566751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A000217 (n + 9) + 9).toNat

end

end A220775.P2294346490851566751

/-!
# A220776: Number of tilings of a 10 X n rectangle using integer-sided rectangular tiles of equal area.

The programs for A220776, there is no canonical definition to state claims against.
-/

/-! ## A220776.P11075167262489264404

`A220777(eq[10, A002262(n)])`
-/

namespace A220776.P11075167262489264404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220776.P11075167262489264404

/-! ## A220776.P11816340332048607184

`A220777(A000217(n+11)-11)`
-/

namespace A220776.P11816340332048607184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A000217 (n + 11) - 11).toNat

end

end A220776.P11816340332048607184

/-! ## A220776.P8356052385028464660

`A220777(eq[11, A002260(n+1)])`
-/

namespace A220776.P8356052385028464660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220776.P8356052385028464660

/-! ## A220776.P15511948476304520218

`A220777(eq[11, A004736(n+1)])`
-/

namespace A220776.P15511948476304520218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220776.P15511948476304520218

/-! ## A220776.P10448805402297542378

`A220777(A052905(n+11)-A031193(n+15))`
-/

namespace A220776.P10448805402297542378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (A052905 (n + 11) - A031193 (n + 15)).toNat

end

end A220776.P10448805402297542378

/-!
# A220777: Number A(n,k) of tilings of a k X n rectangle using integer-sided rectangular tiles of equal area; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A220777, there is no canonical definition to state claims against.
-/

/-! ## A220777.P5235765897093118082

`A356876(A157243(n))`
-/

namespace A220777.P5235765897093118082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356876 (A157243 n).toNat

end

end A220777.P5235765897093118082

/-! ## A220777.P388246363112516724

`A222818(A081577(n)+1)`
-/

namespace A220777.P388246363112516724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222818 (A081577 n + 1).toNat

end

end A220777.P388246363112516724

/-! ## A220777.P13129329306067963588

`A270594(A331315(n)+2)`
-/

namespace A220777.P13129329306067963588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270594 (A331315 n + 2).toNat

end

end A220777.P13129329306067963588

/-! ## A220777.P566643603257817844

`A319841(lcm(2, A361745(n)))`
-/

namespace A220777.P566643603257817844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319841 (Int.lcm 2 (A361745 n))

end

end A220777.P566643603257817844

/-! ## A220777.P7904021594645256048

`A034851(n)-A341995(A000032(n))`
-/

namespace A220777.P7904021594645256048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 n - A341995 (A000032 n).toNat

end

end A220777.P7904021594645256048

/-!
# A220778: Number of tilings of an n X n square using integer-sided rectangular tiles of equal area.

The programs for A220778, there is no canonical definition to state claims against.
-/

/-! ## A220778.P2567804488946389527

`A220777(∑[4*n])`
-/

namespace A220778.P2567804488946389527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220778.P2567804488946389527

/-! ## A220778.P7961333323744900917

`A043568(n)*A220777(A046092(n))`
-/

namespace A220778.P7961333323744900917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n * A220777 (A046092 n).toNat

end

end A220778.P7961333323744900917

/-! ## A220778.P13394350401277038669

`gcd(A000038(n), A220777(A046092(n)))`
-/

namespace A220778.P13394350401277038669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A220777 (A046092 n).toNat)

end

end A220778.P13394350401277038669

/-! ## A220778.P3020013741453957838

`or(A000007(n), A220777(A046092(n)))`
-/

namespace A220778.P3020013741453957838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A220777 (A046092 n).toNat)

end

end A220778.P3020013741453957838

/-! ## A220778.P7040001211151413947

`or(A023533(n), A220777(A046092(n)))`
-/

namespace A220778.P7040001211151413947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023533 n) (A220777 (A046092 n).toNat)

end

end A220778.P7040001211151413947

/-!
# A220779: Exponent of highest power of 2 dividing the sum 1^n + 2^n + ... + n^n.

The programs for A220779, the canonical program `A220779.P7318353324358969135` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220779 has offset 1).

The definition of A220779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220779.P7318353324358969135

`val(∑[∑[lcm(2, n)+1]], 2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220779

/-- `val(∑[∑[lcm(2, n)+1]], 2)` -/
def P7318353324358969135.Spec : Prop :=
  ∀ n, (P7318353324358969135.a n : ℤ) = A220779 (n + 1)

theorem P7318353324358969135.correct : P7318353324358969135.Spec := by
  intro n
  simp only [A220779, Nat.add_sub_cancel]

end A220779

/-! ## A220779.P16724758050446879557

`gcd(2, n)*val(∑[n+1], 2)`
-/

namespace A220779.P16724758050446879557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A220779.P16724758050446879557

namespace A220779

/-- `gcd(2, n)*val(∑[n+1], 2)` -/
def P16724758050446879557.Spec : Prop :=
  ∀ n, (P16724758050446879557.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P11051370215650808649

`val((2*n)^val(∑[n+1], 2), 2)`
-/

namespace A220779.P11051370215650808649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((2 * n) ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2) 2

end

end A220779.P11051370215650808649

namespace A220779

/-- `val((2*n)^val(∑[n+1], 2), 2)` -/
def P11051370215650808649.Spec : Prop :=
  ∀ n, (P11051370215650808649.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P18190742926419128269

`(char[2*n]+1)*val(∑[n+1], 2)`
-/

namespace A220779.P18190742926419128269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A220779.P18190742926419128269

namespace A220779

/-- `(char[2*n]+1)*val(∑[n+1], 2)` -/
def P18190742926419128269.Spec : Prop :=
  ∀ n, (P18190742926419128269.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P888381279621330840

`val(∑[∑[n*(1+n%2)+1]], 2)`
-/

namespace A220779.P888381279621330840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (1 + n % 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A220779.P888381279621330840

namespace A220779

/-- `val(∑[∑[n*(1+n%2)+1]], 2)` -/
def P888381279621330840.Spec : Prop :=
  ∀ n, (P888381279621330840.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P13744692763745073566

`val(∑[∑[n+1]+∑[1-a(n-1)]²], 2)` with `a(0)=0`
-/

namespace A220779.P13744692763745073566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  1 - f3 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A220779.P13744692763745073566

namespace A220779

/-- `val(∑[∑[n+1]+∑[1-a(n-1)]²], 2)` -/
def P13744692763745073566.Spec : Prop :=
  ∀ n, (P13744692763745073566.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P11590369824043990860

`val(A051494(n)², 4)`
-/

namespace A220779.P11590369824043990860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051494 n ^ 2).toNat 4

end

end A220779.P11590369824043990860

namespace A220779

/-- `val(A051494(n)², 4)` -/
def P11590369824043990860.Spec : Prop :=
  ∀ n, (P11590369824043990860.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P7658175471246910838

`val(A132122(n+1), 2)`
-/

namespace A220779.P7658175471246910838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A132122 (n + 1)).toNat 2

end

end A220779.P7658175471246910838

namespace A220779

/-- `val(A132122(n+1), 2)` -/
def P7658175471246910838.Spec : Prop :=
  ∀ n, (P7658175471246910838.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P14736559158200182517

`val(A199771(n+1), 2)`
-/

namespace A220779.P14736559158200182517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A199771 (n + 1)).toNat 2

end

end A220779.P14736559158200182517

namespace A220779

/-- `val(A199771(n+1), 2)` -/
def P14736559158200182517.Spec : Prop :=
  ∀ n, (P14736559158200182517.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P3548012322678239344

`val(A359366(n+1), 2)`
-/

namespace A220779.P3548012322678239344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A359366 (n + 1)).toNat 2

end

end A220779.P3548012322678239344

namespace A220779

/-- `val(A359366(n+1), 2)` -/
def P3548012322678239344.Spec : Prop :=
  ∀ n, (P3548012322678239344.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P8043426622714128714

`val(A212561(n+2), 2)`
-/

namespace A220779.P8043426622714128714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A212561 (n + 2)).toNat 2

end

end A220779.P8043426622714128714

namespace A220779

/-- `val(A212561(n+2), 2)` -/
def P8043426622714128714.Spec : Prop :=
  ∀ n, (P8043426622714128714.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P2921828424360035616

`val(A288962(n+2), 2)`
-/

namespace A220779.P2921828424360035616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A288962 (n + 2)).toNat 2

end

end A220779.P2921828424360035616

namespace A220779

/-- `val(A288962(n+2), 2)` -/
def P2921828424360035616.Spec : Prop :=
  ∀ n, (P2921828424360035616.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P16093410489468275281

`gcd(2, n)*A050605(n)`
-/

namespace A220779.P16093410489468275281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A050605 n

end

end A220779.P16093410489468275281

namespace A220779

/-- `gcd(2, n)*A050605(n)` -/
def P16093410489468275281.Spec : Prop :=
  ∀ n, P16093410489468275281.a n = A220779 (n + 1)

end A220779

/-! ## A220779.P609252023121165885

`val(A107965(2*n+1), 2)`
-/

namespace A220779.P609252023121165885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A107965 (2 * n + 1)).toNat 2

end

end A220779.P609252023121165885

namespace A220779

/-- `val(A107965(2*n+1), 2)` -/
def P609252023121165885.Spec : Prop :=
  ∀ n, (P609252023121165885.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P16880652200866769006

`val(A110650(2*n+1), 2)`
-/

namespace A220779.P16880652200866769006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110650 (2 * n + 1)).toNat 2

end

end A220779.P16880652200866769006

namespace A220779

/-- `val(A110650(2*n+1), 2)` -/
def P16880652200866769006.Spec : Prop :=
  ∀ n, (P16880652200866769006.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P2935150635790407576

`val(A110653(2*n+1), 2)`
-/

namespace A220779.P2935150635790407576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A110653 (2 * n + 1)).toNat 2

end

end A220779.P2935150635790407576

namespace A220779

/-- `val(A110653(2*n+1), 2)` -/
def P2935150635790407576.Spec : Prop :=
  ∀ n, (P2935150635790407576.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P12819171612002012622

`val(A346006(2*n+1), 4)`
-/

namespace A220779.P12819171612002012622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A346006 (2 * n + 1)).toNat 4

end

end A220779.P12819171612002012622

namespace A220779

/-- `val(A346006(2*n+1), 4)` -/
def P12819171612002012622.Spec : Prop :=
  ∀ n, (P12819171612002012622.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P5554683063570154476

`val((∑[∑[n]-n]+1)*A000217(n+1), 2)`
-/

namespace A220779.P5554683063570154476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((∑ j ∈ Finset.range (n + 1), f1 j + 1) * A000217 (n + 1)).toNat 2

end

end A220779.P5554683063570154476

namespace A220779

/-- `val((∑[∑[n]-n]+1)*A000217(n+1), 2)` -/
def P5554683063570154476.Spec : Prop :=
  ∀ n, (P5554683063570154476.a n : ℤ) = A220779 (n + 1)

end A220779

/-! ## A220779.P5233367248841954888

`A007877(n)*A050605(n)`
-/

namespace A220779.P5233367248841954888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n * A050605 n

end

end A220779.P5233367248841954888

namespace A220779

/-- `A007877(n)*A050605(n)` -/
def P5233367248841954888.Spec : Prop :=
  ∀ n, P5233367248841954888.a n = A220779 (n + 1)

end A220779

/-! ## A220779.P1645087971587761234

`A010123(n)*A050605(n)`
-/

namespace A220779.P1645087971587761234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 n * A050605 n

end

end A220779.P1645087971587761234

namespace A220779

/-- `A010123(n)*A050605(n)` -/
def P1645087971587761234.Spec : Prop :=
  ∀ n, P1645087971587761234.a n = A220779 (n + 1)

end A220779

/-!
# A220780: Nonzero terms of A220779: exponent of highest power of 2 dividing an even sum 1^n + 2^n + ... + n^n.

The programs for A220780, the canonical program `A220780.P4297854939430567020` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220780 has offset 1).

The definition of A220780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220780.P4297854939430567020

`val(∑[∑[6*n+4]], 2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220780

/-- `val(∑[∑[6*n+4]], 2)` -/
def P4297854939430567020.Spec : Prop :=
  ∀ n, (P4297854939430567020.a n : ℤ) = A220780 (n + 1)

theorem P4297854939430567020.correct : P4297854939430567020.Spec := by
  intro n
  simp only [A220780, Nat.add_sub_cancel]

end A220780

/-! ## A220780.P6552329110010700598

`gcd(2, n)*val(or(1, n)+1, 2)`
-/

namespace A220780.P6552329110010700598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * SequenceMachineLib.valuation (Nat.lor 1 n + 1) 2

end

end A220780.P6552329110010700598

namespace A220780

/-- `gcd(2, n)*val(or(1, n)+1, 2)` -/
def P6552329110010700598.Spec : Prop :=
  ∀ n, (P6552329110010700598.a n : ℤ) = A220780 (n + 1)

end A220780

/-! ## A220780.P11104377936515238014

`val(n+1, 2)+val((n+2)², 2)`
-/

namespace A220780.P11104377936515238014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + SequenceMachineLib.valuation ((n + 2) ^ 2) 2

end

end A220780.P11104377936515238014

namespace A220780

/-- `val(n+1, 2)+val((n+2)², 2)` -/
def P11104377936515238014.Spec : Prop :=
  ∀ n, (P11104377936515238014.a n : ℤ) = A220780 (n + 1)

end A220780

/-! ## A220780.P179382656718131669

`val(n+1, 2)+2*val(n+2, 2)`
-/

namespace A220780.P179382656718131669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 2 * SequenceMachineLib.valuation (n + 2) 2

end

end A220780.P179382656718131669

namespace A220780

/-- `val(n+1, 2)+2*val(n+2, 2)` -/
def P179382656718131669.Spec : Prop :=
  ∀ n, (P179382656718131669.a n : ℤ) = A220780 (n + 1)

end A220780

/-! ## A220780.P1211867620246732706

`abs(Δ[val(n+1, 2)]+val(n+2, 2))`
-/

namespace A220780.P1211867620246732706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + (SequenceMachineLib.valuation (n + 2) 2 : ℤ)|

end

end A220780.P1211867620246732706

namespace A220780

/-- `abs(Δ[val(n+1, 2)]+val(n+2, 2))` -/
def P1211867620246732706.Spec : Prop :=
  ∀ n, P1211867620246732706.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P4884310667823792086

`val(n+1, 2)+val(n+2, 2)+val(n+2, 2)`
-/

namespace A220780.P4884310667823792086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + (SequenceMachineLib.valuation (n + 2) 2 + SequenceMachineLib.valuation (n + 2) 2)

end

end A220780.P4884310667823792086

namespace A220780

/-- `val(n+1, 2)+val(n+2, 2)+val(n+2, 2)` -/
def P4884310667823792086.Spec : Prop :=
  ∀ n, (P4884310667823792086.a n : ℤ) = A220780 (n + 1)

end A220780

/-! ## A220780.P13326040759896799798

`gcd(2, n)*A050603(n)`
-/

namespace A220780.P13326040759896799798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A050603 n

end

end A220780.P13326040759896799798

namespace A220780

/-- `gcd(2, n)*A050603(n)` -/
def P13326040759896799798.Spec : Prop :=
  ∀ n, P13326040759896799798.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P9365745331731109884

`val(A093353(n+1), 2)+1`
-/

namespace A220780.P9365745331731109884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A093353 (n + 1)).toNat 2 + 1

end

end A220780.P9365745331731109884

namespace A220780

/-- `val(A093353(n+1), 2)+1` -/
def P9365745331731109884.Spec : Prop :=
  ∀ n, (P9365745331731109884.a n : ℤ) = A220780 (n + 1)

end A220780

/-! ## A220780.P4264143660156263679

`val(A114242(2*n+1), 2)+1`
-/

namespace A220780.P4264143660156263679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A114242 (2 * n + 1)).toNat 2 + 1

end

end A220780.P4264143660156263679

namespace A220780

/-- `val(A114242(2*n+1), 2)+1` -/
def P4264143660156263679.Spec : Prop :=
  ∀ n, (P4264143660156263679.a n : ℤ) = A220780 (n + 1)

end A220780

/-! ## A220780.P14282330347964240446

`A050605(n)+A001511(n+2)`
-/

namespace A220780.P14282330347964240446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n + A001511 (n + 2)

end

end A220780.P14282330347964240446

namespace A220780

/-- `A050605(n)+A001511(n+2)` -/
def P14282330347964240446.Spec : Prop :=
  ∀ n, P14282330347964240446.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P1433150743549123906

`A050603(n)+A007814(n+2)`
-/

namespace A220780.P1433150743549123906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n + A007814 (n + 2)

end

end A220780.P1433150743549123906

namespace A220780

/-- `A050603(n)+A007814(n+2)` -/
def P1433150743549123906.Spec : Prop :=
  ∀ n, P1433150743549123906.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P13859369750351057540

`A094267(n)*A168361(n+1)`
-/

namespace A220780.P13859369750351057540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A168361 (n + 1)

end

end A220780.P13859369750351057540

namespace A220780

/-- `A094267(n)*A168361(n+1)` -/
def P13859369750351057540.Spec : Prop :=
  ∀ n, P13859369750351057540.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P3136019046527638252

`A136480(n+1)+A007814(n+2)`
-/

namespace A220780.P3136019046527638252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1) + A007814 (n + 2)

end

end A220780.P3136019046527638252

namespace A220780

/-- `A136480(n+1)+A007814(n+2)` -/
def P3136019046527638252.Spec : Prop :=
  ∀ n, P3136019046527638252.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P3376572000269034017

`A324468(n+1)-A094267(n+1)`
-/

namespace A220780.P3376572000269034017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (n + 1) - A094267 (n + 1)

end

end A220780.P3376572000269034017

namespace A220780

/-- `A324468(n+1)-A094267(n+1)` -/
def P3376572000269034017.Spec : Prop :=
  ∀ n, P3376572000269034017.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P16324934561518998109

`A378992(n+1)+A001511(n+2)-A378992(n)`
-/

namespace A220780.P16324934561518998109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378992 (n + 1) + (A001511 (n + 2) - A378992 n)

end

end A220780.P16324934561518998109

namespace A220780

/-- `A378992(n+1)+A001511(n+2)-A378992(n)` -/
def P16324934561518998109.Spec : Prop :=
  ∀ n, P16324934561518998109.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P6460877294792817724

`A007814(n+1)+A007814(n+2)*A010693(n)`
-/

namespace A220780.P6460877294792817724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) * A010693 n

end

end A220780.P6460877294792817724

namespace A220780

/-- `A007814(n+1)+A007814(n+2)*A010693(n)` -/
def P6460877294792817724.Spec : Prop :=
  ∀ n, P6460877294792817724.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P9591944579964788735

`A007814(n+1)+A007814(n+2)*A085058(n)`
-/

namespace A220780.P9591944579964788735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) * A085058 n

end

end A220780.P9591944579964788735

namespace A220780

/-- `A007814(n+1)+A007814(n+2)*A085058(n)` -/
def P9591944579964788735.Spec : Prop :=
  ∀ n, P9591944579964788735.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P861920146080621753

`A007814(n+1)+A007814(n+2)*A087229(n)`
-/

namespace A220780.P861920146080621753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) * A087229 n

end

end A220780.P861920146080621753

namespace A220780

/-- `A007814(n+1)+A007814(n+2)*A087229(n)` -/
def P861920146080621753.Spec : Prop :=
  ∀ n, P861920146080621753.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P13759823201755934667

`A007814(n+1)+A007814(n+2)*A326810(n)`
-/

namespace A220780.P13759823201755934667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (n + 2) * A326810 n

end

end A220780.P13759823201755934667

namespace A220780

/-- `A007814(n+1)+A007814(n+2)*A326810(n)` -/
def P13759823201755934667.Spec : Prop :=
  ∀ n, P13759823201755934667.a n = A220780 (n + 1)

end A220780

/-! ## A220780.P13223054898452079534

`A007814(n+1)+A318655(n+2)+A318652(n+2)`
-/

namespace A220780.P13223054898452079534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A318655 (n + 2) + A318652 (n + 2))

end

end A220780.P13223054898452079534

namespace A220780

/-- `A007814(n+1)+A318655(n+2)+A318652(n+2)` -/
def P13223054898452079534.Spec : Prop :=
  ∀ n, P13223054898452079534.a n = A220780 (n + 1)

end A220780

/-!
# A220783: Agreement numbers: number of n X 2 arrays of the count of horizontal and vertical neighbors equal to the corresponding element in a random 0..3 n X 2 array.

The programs for A220783, the canonical program `A220783.P78174013819023145` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220783 has offset 1).

The definition of A220783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220783.P10174313104054325230

`ogf((2+x-x^2)/(1-5x-6x^2+4x^3))`
-/

namespace A220783.P10174313104054325230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -1] [1, -5, -6, 4] n

end

end A220783.P10174313104054325230

namespace A220783

/-- `ogf((2+x-x^2)/(1-5x-6x^2+4x^3))` -/
def P10174313104054325230.Spec : Prop :=
  ∀ n, P10174313104054325230.a n = A220783 (n + 1)

end A220783

/-! ## A220783.P78174013819023145

`5*a(n-1)+6*a(n-2)-4*a(n-3)` with `a(0)=2, a(1)=11, a(2)=66`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A220783

/-- `5*a(n-1)+6*a(n-2)-4*a(n-3)` -/
def P78174013819023145.Spec : Prop :=
  ∀ n, P78174013819023145.a n = A220783 (n + 1)

theorem P78174013819023145.correct : P78174013819023145.Spec := by
  intro n
  simp only [A220783, Nat.add_sub_cancel]

end A220783

/-! ## A220783.P16133689751754504938

`A220786(∑[n+1]+2)`
-/

namespace A220783.P16133689751754504938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220786 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220783.P16133689751754504938

namespace A220783

/-- `A220786(∑[n+1]+2)` -/
def P16133689751754504938.Spec : Prop :=
  ∀ n, P16133689751754504938.a n = A220783 (n + 1)

end A220783

/-! ## A220783.P9938315148610828497

`A220800(∑[n+1]+2)`
-/

namespace A220783.P9938315148610828497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220783.P9938315148610828497

namespace A220783

/-- `A220800(∑[n+1]+2)` -/
def P9938315148610828497.Spec : Prop :=
  ∀ n, P9938315148610828497.a n = A220783 (n + 1)

end A220783

/-! ## A220783.P15629003831786845016

`record[gcd(A002262(n), A220786(n+2))]`
-/

namespace A220783.P15629003831786845016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A220786 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220783.P15629003831786845016

namespace A220783

/-- `record[gcd(A002262(n), A220786(n+2))]` -/
def P15629003831786845016.Spec : Prop :=
  ∀ n, (P15629003831786845016.a n : ℤ) = A220783 (n + 1)

end A220783

/-!
# A220784: Agreement numbers: number of nX3 arrays of the count of horizontal and vertical neighbors equal to the corresponding element in a random 0..3 nX3 array.

The programs for A220784, there is no canonical definition to state claims against.
-/

/-! ## A220784.P16048115814916162661

`A220786(∑[n+2]+4)`
-/

namespace A220784.P16048115814916162661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220786 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220784.P16048115814916162661

/-! ## A220784.P11607055677874549858

`record[A220786(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A220784.P11607055677874549858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220786 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220784.P11607055677874549858

/-! ## A220784.P16744783812167405883

`A220786(A167614(n+1))+A045887(n)`
-/

namespace A220784.P16744783812167405883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220786 (A167614 (n + 1)).toNat + A045887 n

end

end A220784.P16744783812167405883

/-!
# A220785: Agreement numbers: number of nX4 arrays of the count of horizontal and vertical neighbors equal to the corresponding element in a random 0..3 nX4 array.

The programs for A220785, there is no canonical definition to state claims against.
-/

/-! ## A220785.P12264758754293580886

`A220786(∑[n+3]+7)`
-/

namespace A220785.P12264758754293580886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220786 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220785.P12264758754293580886

/-!
# A220786: T(n,k)=Agreement numbers: number of nXk arrays of the count of horizontal and vertical neighbors equal to the corresponding element in a random 0..3 nXk array.

The programs for A220786, there is no canonical definition to state claims against.
-/

/-! ## A220786.P15197001689847876014

`A220800(A193897(∑[n]))`
-/

namespace A220786.P15197001689847876014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A193897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A220786.P15197001689847876014

/-! ## A220786.P1173742205469554639

`A220800(A043317(n+1))`
-/

namespace A220786.P1173742205469554639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A043317 (n + 1)).toNat

end

end A220786.P1173742205469554639

/-! ## A220786.P7665201072267491761

`A220800(A044914(n+1))`
-/

namespace A220786.P7665201072267491761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A044914 (n + 1)).toNat

end

end A220786.P7665201072267491761

/-! ## A220786.P6094648801278379628

`A220800(A049872(n)+1)`
-/

namespace A220786.P6094648801278379628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A049872 n + 1).toNat

end

end A220786.P6094648801278379628

/-! ## A220786.P15292344100487592540

`A220800(A055648(n+1))`
-/

namespace A220786.P15292344100487592540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A055648 (n + 1)).toNat

end

end A220786.P15292344100487592540

/-!
# A220789: Numbers n such that 2*prime(n)^2 - 1 is not prime.

The programs for A220789, the canonical program `A220789.P11763178928776331104` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220789 has offset 1).

The definition of A220789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220789.P11763178928776331104

`comp[A092058(n+1)-2]+2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A220789

/-- `comp[A092058(n+1)-2]+2` -/
def P11763178928776331104.Spec : Prop :=
  ∀ n, (P11763178928776331104.a n : ℤ) = A220789 (n + 1)

theorem P11763178928776331104.correct : P11763178928776331104.Spec := by
  intro n
  simp only [A220789, Nat.add_sub_cancel]

end A220789

/-! ## A220789.P507597326306718242

`comp[eq[1, A224489(n+1)]]+1`
-/

namespace A220789.P507597326306718242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224489 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A220789.P507597326306718242

namespace A220789

/-- `comp[eq[1, A224489(n+1)]]+1` -/
def P507597326306718242.Spec : Prop :=
  ∀ n, (P507597326306718242.a n : ℤ) = A220789 (n + 1)

end A220789

/-! ## A220789.P3276584318845705007

`A000720(A152912(n+1))`
-/

namespace A220789.P3276584318845705007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A152912 (n + 1)).toNat

end

end A220789.P3276584318845705007

namespace A220789

/-- `A000720(A152912(n+1))` -/
def P3276584318845705007.Spec : Prop :=
  ∀ n, P3276584318845705007.a n = A220789 (n + 1)

end A220789

/-! ## A220789.P6217828053754352845

`lt[1, A224489(A028310(n))]`
-/

namespace A220789.P6217828053754352845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224489 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A220789.P6217828053754352845

namespace A220789

/-- `lt[1, A224489(A028310(n))]` -/
def P6217828053754352845.Spec : Prop :=
  ∀ n, (P6217828053754352845.a n : ℤ) = A220789 (n + 1)

end A220789

/-! ## A220789.P9959387941729279053

`A061395(2*A152912(n+1))`
-/

namespace A220789.P9959387941729279053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A152912 (n + 1)).toNat

end

end A220789.P9959387941729279053

namespace A220789

/-- `A061395(2*A152912(n+1))` -/
def P9959387941729279053.Spec : Prop :=
  ∀ n, P9959387941729279053.a n = A220789 (n + 1)

end A220789

/-! ## A220789.P13140593144307682253

`A061395(A152912(n+1)%A017018(n))`
-/

namespace A220789.P13140593144307682253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A152912 (n + 1)) (A017018 n)).toNat

end

end A220789.P13140593144307682253

namespace A220789

/-- `A061395(A152912(n+1)%A017018(n))` -/
def P13140593144307682253.Spec : Prop :=
  ∀ n, P13140593144307682253.a n = A220789 (n + 1)

end A220789

/-! ## A220789.P4378429709313186043

`A061395(A152912(n+1))%A096768(n+1)`
-/

namespace A220789.P4378429709313186043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A152912 (n + 1)).toNat) (A096768 (n + 1))

end

end A220789.P4378429709313186043

namespace A220789

/-- `A061395(A152912(n+1))%A096768(n+1)` -/
def P4378429709313186043.Spec : Prop :=
  ∀ n, P4378429709313186043.a n = A220789 (n + 1)

end A220789

/-! ## A220789.P15517332851087045242

`A082058(or(1, A152912(n+1)))`
-/

namespace A220789.P15517332851087045242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (Int.lor 1 (A152912 (n + 1))).toNat

end

end A220789.P15517332851087045242

namespace A220789

/-- `A082058(or(1, A152912(n+1)))` -/
def P15517332851087045242.Spec : Prop :=
  ∀ n, P15517332851087045242.a n = A220789 (n + 1)

end A220789

/-! ## A220789.P11044151489144875223

`A082058(2*A152912(n+1)-A152912(n+1))`
-/

namespace A220789.P11044151489144875223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (2 * A152912 (n + 1) - A152912 (n + 1)).toNat

end

end A220789.P11044151489144875223

namespace A220789

/-- `A082058(2*A152912(n+1)-A152912(n+1))` -/
def P11044151489144875223.Spec : Prop :=
  ∀ n, P11044151489144875223.a n = A220789 (n + 1)

end A220789

/-!
# A220790: Product(6^n - 6^k, k=0..n-1).

The programs for A220790, there is no canonical definition to state claims against.
-/

/-! ## A220790.P5911011321068280941

`A109354(n)*A027873(n)`
-/

namespace A220790.P5911011321068280941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109354 n * A027873 n

end

end A220790.P5911011321068280941

/-! ## A220790.P13970626365741250144

`A027873(n)*A109354(n)`
-/

namespace A220790.P13970626365741250144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027873 n * A109354 n

end

end A220790.P13970626365741250144

/-!
# A220792: Equals two maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A220792, there is no canonical definition to state claims against.
-/

/-! ## A220792.P4808213794281889769

`A220794(∑[n+3]+1)`
-/

namespace A220792.P4808213794281889769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220792.P4808213794281889769

/-! ## A220792.P444475900691898558

`record[ratio[A220794(A130297(n+1))]]`
-/

namespace A220792.P444475900691898558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (A130297 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220792.P444475900691898558

/-! ## A220792.P15026756874946697098

`lcm(∏{e}[n+1, #], A220794(A034856(n+2)))`
-/

namespace A220792.P15026756874946697098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A220794 (A034856 (n + 2)).toNat)

end

end A220792.P15026756874946697098

/-!
# A220793: Equals two maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A220793, there is no canonical definition to state claims against.
-/

/-! ## A220793.P13640930295221239382

`A220794(∑[n+4]+3)`
-/

namespace A220793.P13640930295221239382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220793.P13640930295221239382

/-!
# A220794: T(n,k)=Equals two maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A220794, there is no canonical definition to state claims against.
-/

/-! ## A220794.P5221176117764514311

`A220959(n+1)%p?[50*(n+1)²+1]`
-/

namespace A220794.P5221176117764514311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50 * (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220959 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A220794.P5221176117764514311

/-! ## A220794.P2493641932432087613

`A100981(A220959(n+1))`
-/

namespace A220794.P2493641932432087613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100981 (A220959 (n + 1)).toNat

end

end A220794.P2493641932432087613

/-! ## A220794.P7178359068839292315

`A220959(A000005(2^n))`
-/

namespace A220794.P7178359068839292315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (A000005 (2 ^ n)).toNat

end

end A220794.P7178359068839292315

/-! ## A220794.P6626662459254367001

`A220959(∑[A278657(n)²])`
-/

namespace A220794.P6626662459254367001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A220794.P6626662459254367001

/-! ## A220794.P13255582638864516787

`A220959(∑[A278657(n)!])`
-/

namespace A220794.P13255582638864516787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A278657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220959 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220794.P13255582638864516787

/-!
# A220795: Equals two maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 2Xn array.

The programs for A220795, there is no canonical definition to state claims against.
-/

/-! ## A220795.P12306388993950655879

`A220794(∑[n+1]+2)`
-/

namespace A220795.P12306388993950655879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220795.P12306388993950655879

/-! ## A220795.P11834356617945881581

`record[ratio[A220794(A080036(n))]]`
-/

namespace A220795.P11834356617945881581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220795.P11834356617945881581

/-! ## A220795.P12078421576275416694

`record[A220794(n+1)/A036073(n)]`
-/

namespace A220795.P12078421576275416694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220794 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220795.P12078421576275416694

/-! ## A220795.P4382050907232792517

`record[A220794(n+1)/A097607(n)]`
-/

namespace A220795.P4382050907232792517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220794 (n + 1) : ℚ) / (A097607 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220795.P4382050907232792517

/-! ## A220795.P12221566833709129940

`record[A220794(n+1)/A156366(n)]`
-/

namespace A220795.P12221566833709129940
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220794 (n + 1) : ℚ) / (A156366 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220795.P12221566833709129940

/-!
# A220796: Equals two maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A220796, there is no canonical definition to state claims against.
-/

/-! ## A220796.P2465882295637981520

`A220794(∑[n+2]+4)`
-/

namespace A220796.P2465882295637981520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220796.P2465882295637981520

/-! ## A220796.P2546333593923180549

`and(-1, A220794(A167614(n+1)))`
-/

namespace A220796.P2546333593923180549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220794 (A167614 (n + 1)).toNat)

end

end A220796.P2546333593923180549

/-! ## A220796.P14041741111391898983

`record[gcd(A220794(n+2), A290317(n))]`
-/

namespace A220796.P14041741111391898983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220794 (n + 2)) (A290317 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220796.P14041741111391898983

/-! ## A220796.P14911548390505898767

`A220794(A167614(n+1))+A025443(n)`
-/

namespace A220796.P14911548390505898767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (A167614 (n + 1)).toNat + A025443 n

end

end A220796.P14911548390505898767

/-!
# A220797: Equals two maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to exactly two of their horizontal, diagonal and antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A220797, there is no canonical definition to state claims against.
-/

/-! ## A220797.P4318132543172357016

`A220794(∑[n+3]+7)`
-/

namespace A220797.P4318132543172357016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220797.P4318132543172357016

/-!
# A220798: Agreement numbers: number of nX3 arrays of the count of horizontal and vertical neighbors equal to the corresponding element in a random 0..2 nX3 array.

The programs for A220798, there is no canonical definition to state claims against.
-/

/-! ## A220798.P5089079296918364151

`A220800(∑[n+2]+4)`
-/

namespace A220798.P5089079296918364151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220798.P5089079296918364151

/-! ## A220798.P17826110184088334969

`and(-1, A220800(A167614(n+1)))`
-/

namespace A220798.P17826110184088334969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A220800 (A167614 (n + 1)).toNat)

end

end A220798.P17826110184088334969

/-! ## A220798.P14073397697757378348

`A220800(A167614(n+1))+A125591(n)`
-/

namespace A220798.P14073397697757378348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A167614 (n + 1)).toNat + A125591 n

end

end A220798.P14073397697757378348

/-! ## A220798.P8706631412648940803

`A220800(A167614(n+1))+A174616(n)`
-/

namespace A220798.P8706631412648940803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A167614 (n + 1)).toNat + A174616 n

end

end A220798.P8706631412648940803

/-!
# A220799: Agreement numbers: number of nX4 arrays of the count of horizontal and vertical neighbors equal to the corresponding element in a random 0..2 nX4 array.

The programs for A220799, there is no canonical definition to state claims against.
-/

/-! ## A220799.P16985998814615357768

`A220800(A141214(n)+7)`
-/

namespace A220799.P16985998814615357768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A141214 n + 7).toNat

end

end A220799.P16985998814615357768

/-! ## A220799.P16614685815686357294

`A220800(A052905(n)+9)`
-/

namespace A220799.P16614685815686357294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A052905 n + 9).toNat

end

end A220799.P16614685815686357294

/-! ## A220799.P8621292264322337189

`A220800(A055999(n)+10)`
-/

namespace A220799.P8621292264322337189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220800 (A055999 n + 10).toNat

end

end A220799.P8621292264322337189

