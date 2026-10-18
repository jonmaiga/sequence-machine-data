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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A264500: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264500, there is no canonical definition to state claims against.
-/

/-! ## A264500.P1872704151760854170

`A264506(∑[4*n]+1)`
-/

namespace A264500.P1872704151760854170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264500.P1872704151760854170

/-! ## A264500.P955884139885312915

`record[gcd(A264506(n+1), A323833(n))]`
-/

namespace A264500.P955884139885312915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264506 (n + 1)) (A323833 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264500.P955884139885312915

/-! ## A264500.P16234962893511454123

`record[A264506(2*n+1)-A323833(2*n)²]`
-/

namespace A264500.P16234962893511454123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (2 * n + 1) - A323833 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264500.P16234962893511454123

/-! ## A264500.P10731786137131135968

`gcd(A017904(n), A264506(A001844(n)))`
-/

namespace A264500.P10731786137131135968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017904 n) (A264506 (A001844 n).toNat)

end

end A264500.P10731786137131135968

/-! ## A264500.P16293758610694728318

`lcm(A264506(A001844(n)), A274859(n))`
-/

namespace A264500.P16293758610694728318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A264506 (A001844 n).toNat) (A274859 n)

end

end A264500.P16293758610694728318

/-!
# A264501: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264501, there is no canonical definition to state claims against.
-/

/-! ## A264501.P7730379261357975420

`A264521(2*(n+1))/a(A023443(n))` with `a(0)=3`
-/

namespace A264501.P7730379261357975420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A264521 (2 * (n + 1)) : ℚ) / a (A023443 n).toNat

end

end A264501.P7730379261357975420

/-! ## A264501.P2281985298552439375

`A264521(2*(n+1))/sqrt(A264521(2*n+1))`
-/

namespace A264501.P2281985298552439375
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264521 (2 * (n + 1)) : ℝ) / Real.sqrt (A264521 (2 * n + 1) : ℝ)

end

end A264501.P2281985298552439375

/-! ## A264501.P17712894142015350935

`sqrt(A264521(2*n+3))`
-/

namespace A264501.P17712894142015350935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264521 (2 * n + 3) : ℝ)

end

end A264501.P17712894142015350935

/-! ## A264501.P4734988866863659843

`A264521(2*n+3)^2^A008683(A092627(n+1))`
-/

namespace A264501.P4734988866863659843
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264521 (2 * n + 3) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ) : ℝ)

end

end A264501.P4734988866863659843

/-! ## A264501.P16496965344244951271

`A264506(∑[n+3]+1)`
-/

namespace A264501.P16496965344244951271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264501.P16496965344244951271

/-!
# A264502: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264502, there is no canonical definition to state claims against.
-/

/-! ## A264502.P12512426454908217540

`A264506(A141214(n+1))`
-/

namespace A264502.P12512426454908217540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A141214 (n + 1)).toNat

end

end A264502.P12512426454908217540

/-! ## A264502.P5750129830454009659

`A264506(A027379(n+2))`
-/

namespace A264502.P5750129830454009659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A027379 (n + 2)).toNat

end

end A264502.P5750129830454009659

/-! ## A264502.P9669847844405832055

`A264506(A056000(n)+7)`
-/

namespace A264502.P9669847844405832055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A056000 n + 7).toNat

end

end A264502.P9669847844405832055

/-! ## A264502.P8398779254964698621

`A264506(eq[2, A054123(n)])`
-/

namespace A264502.P8398779254964698621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264502.P8398779254964698621

/-! ## A264502.P5041140617499912598

`A264506(eq[2, A152157(n)])`
-/

namespace A264502.P5041140617499912598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264502.P5041140617499912598

/-!
# A264503: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264503, there is no canonical definition to state claims against.
-/

/-! ## A264503.P12341216918148878104

`A264506(Δ[A264443(n)])`
-/

namespace A264503.P12341216918148878104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (f1 (n + 1) - f1 n).toNat

end

end A264503.P12341216918148878104

/-! ## A264503.P8512135009353540482

`A264506(eq[3, A152157(n)])`
-/

namespace A264503.P8512135009353540482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264503.P8512135009353540482

/-! ## A264503.P8021978103118604692

`A264506(eq[4, A193592(n)])`
-/

namespace A264503.P8021978103118604692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264503.P8021978103118604692

/-! ## A264503.P16234075492603163852

`A264506(Δ[A023545(n+1)])`
-/

namespace A264503.P16234075492603163852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (f1 (n + 1) - f1 n).toNat

end

end A264503.P16234075492603163852

/-! ## A264503.P8068201939144613860

`A264506(eq[5, A194921(n+1)])`
-/

namespace A264503.P8068201939144613860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264503.P8068201939144613860

/-!
# A264504: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264504, there is no canonical definition to state claims against.
-/

/-! ## A264504.P1541415902960996127

`A264506(eq[3, A219347(n)])`
-/

namespace A264504.P1541415902960996127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264504.P1541415902960996127

/-! ## A264504.P9212719825556159305

`A264506(eq[5, A193592(n)])`
-/

namespace A264504.P9212719825556159305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264504.P9212719825556159305

/-! ## A264504.P1881979599295211340

`A264506(A046691(n+4)-1)`
-/

namespace A264504.P1881979599295211340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A046691 (n + 4) - 1).toNat

end

end A264504.P1881979599295211340

/-! ## A264504.P16341563393866083776

`A264506(A027379(n+4)-2)`
-/

namespace A264504.P16341563393866083776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A027379 (n + 4) - 2).toNat

end

end A264504.P16341563393866083776

/-! ## A264504.P16091610435668670218

`A264506(A000217(n+6)-5)`
-/

namespace A264504.P16091610435668670218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A000217 (n + 6) - 5).toNat

end

end A264504.P16091610435668670218

/-!
# A264505: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264505, there is no canonical definition to state claims against.
-/

/-! ## A264505.P12534322766915552526

`A264506(eq[4, A219347(n)])`
-/

namespace A264505.P12534322766915552526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264505.P12534322766915552526

/-! ## A264505.P12890799924514826881

`A264506(eq[6, A193592(n)])`
-/

namespace A264505.P12890799924514826881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264505.P12890799924514826881

/-! ## A264505.P1350007400428205434

`A264506(eq[7, A200370(n+1)])`
-/

namespace A264505.P1350007400428205434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264505.P1350007400428205434

/-! ## A264505.P17883653527823941917

`A264506(A166136(n+4)+2*n+1)`
-/

namespace A264505.P17883653527823941917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A166136 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A264505.P17883653527823941917

/-! ## A264505.P17782273750682018215

`A264506(2*n+A000217(n+5)+7)`
-/

namespace A264505.P17782273750682018215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 ((2 * n : ℤ) + (A000217 (n + 5) + 7)).toNat

end

end A264505.P17782273750682018215

/-!
# A264507: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264507, the canonical program `A264507.P12627177098187913317` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264507 has offset 1).

The definition of A264507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264507.P12627177098187913317

`A080013(2*(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A264507

/-- `A080013(2*(n+2))` -/
def P12627177098187913317.Spec : Prop :=
  ∀ n, P12627177098187913317.a n = A264507 (n + 1)

theorem P12627177098187913317.correct : P12627177098187913317.Spec := by
  intro n
  simp only [A264507, Nat.add_sub_cancel]

end A264507

/-! ## A264507.P7475990821894796717

`A143438(2*n+1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A264507.P7475990821894796717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A143438 (2 * n + 1) + a (n - 2)

end

end A264507.P7475990821894796717

namespace A264507

/-- `A143438(2*n+1)+a(n-2)` -/
def P7475990821894796717.Spec : Prop :=
  ∀ n, P7475990821894796717.a n = A264507 (n + 1)

end A264507

/-! ## A264507.P2323541170265238254

`Δ[A143438(2*(n+1))]`
-/

namespace A264507.P2323541170265238254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264507.P2323541170265238254

namespace A264507

/-- `Δ[A143438(2*(n+1))]` -/
def P2323541170265238254.Spec : Prop :=
  ∀ n, P2323541170265238254.a n = A264507 (n + 1)

end A264507

/-! ## A264507.P8659078042190672287

`A253412(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A264507.P8659078042190672287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253412 (2 * n + 1) - a (n - 1)

end

end A264507.P8659078042190672287

namespace A264507

/-- `A253412(2*n+1)-a(n-1)` -/
def P8659078042190672287.Spec : Prop :=
  ∀ n, P8659078042190672287.a n = A264507 (n + 1)

end A264507

/-! ## A264507.P5512003521813204010

`Δ[Δ[A253412(2*n)]]`
-/

namespace A264507.P5512003521813204010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264507.P5512003521813204010

namespace A264507

/-- `Δ[Δ[A253412(2*n)]]` -/
def P5512003521813204010.Spec : Prop :=
  ∀ n, P5512003521813204010.a n = A264507 (n + 1)

end A264507

/-! ## A264507.P18128403785819661059

`sqrt(A264515(n+1))`
-/

namespace A264507.P18128403785819661059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264515 (n + 1) : ℝ)

end

end A264507.P18128403785819661059

namespace A264507

/-- `sqrt(A264515(n+1))` -/
def P18128403785819661059.Spec : Prop :=
  ∀ n, P18128403785819661059.a n = (A264507 (n + 1) : ℝ)

end A264507

/-! ## A264507.P2242688321137557290

`A264516(n+1)/A264508(n+1)`
-/

namespace A264507.P2242688321137557290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℚ) / (A264508 (n + 1) : ℚ)

end

end A264507.P2242688321137557290

namespace A264507

/-- `A264516(n+1)/A264508(n+1)` -/
def P2242688321137557290.Spec : Prop :=
  ∀ n, P2242688321137557290.a n = (A264507 (n + 1) : ℚ)

end A264507

/-! ## A264507.P6359277161913517835

`A264516(n+1)/sqrt(A264517(n+1))`
-/

namespace A264507.P6359277161913517835
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℝ) / Real.sqrt (A264517 (n + 1) : ℝ)

end

end A264507.P6359277161913517835

namespace A264507

/-- `A264516(n+1)/sqrt(A264517(n+1))` -/
def P6359277161913517835.Spec : Prop :=
  ∀ n, P6359277161913517835.a n = (A264507 (n + 1) : ℝ)

end A264507

/-!
# A264508: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264508, there is no canonical definition to state claims against.
-/

/-! ## A264508.P12928779016340593891

`A264516(n+1)/A264507(n+1)`
-/

namespace A264508.P12928779016340593891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℚ) / (A264507 (n + 1) : ℚ)

end

end A264508.P12928779016340593891

/-! ## A264508.P10060966360492761602

`A264516(n+1)/sqrt(A264515(n+1))`
-/

namespace A264508.P10060966360492761602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℝ) / Real.sqrt (A264515 (n + 1) : ℝ)

end

end A264508.P10060966360492761602

/-! ## A264508.P14359560749240018360

`A264516(n+1)/A080013(2*(n+2))`
-/

namespace A264508.P14359560749240018360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℚ) / (A080013 (2 * (n + 2)) : ℚ)

end

end A264508.P14359560749240018360

/-! ## A264508.P6657111656193381990

`A264516(n+1)/Δ[A143438(2*(n+1))]`
-/

namespace A264508.P6657111656193381990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A264508.P6657111656193381990

/-! ## A264508.P9565330249446775326

`sqrt(A264517(n+1))`
-/

namespace A264508.P9565330249446775326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264517 (n + 1) : ℝ)

end

end A264508.P9565330249446775326

/-! ## A264508.P482880112600513564

`A264518(n+1)/A264509(n+1)`
-/

namespace A264508.P482880112600513564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264518 (n + 1) : ℚ) / (A264509 (n + 1) : ℚ)

end

end A264508.P482880112600513564

/-! ## A264508.P13245983998889720265

`A264518(n+1)/sqrt(A264519(n+1))`
-/

namespace A264508.P13245983998889720265
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264518 (n + 1) : ℝ) / Real.sqrt (A264519 (n + 1) : ℝ)

end

end A264508.P13245983998889720265

/-!
# A264509: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264509, there is no canonical definition to state claims against.
-/

/-! ## A264509.P7747120990684833096

`A264518(n+1)/A264508(n+1)`
-/

namespace A264509.P7747120990684833096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264518 (n + 1) : ℚ) / (A264508 (n + 1) : ℚ)

end

end A264509.P7747120990684833096

/-! ## A264509.P462582272853784532

`A264518(n+1)/sqrt(A264517(n+1))`
-/

namespace A264509.P462582272853784532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264518 (n + 1) : ℝ) / Real.sqrt (A264517 (n + 1) : ℝ)

end

end A264509.P462582272853784532

/-! ## A264509.P1688164483682551149

`sqrt(A264519(n+1))`
-/

namespace A264509.P1688164483682551149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264519 (n + 1) : ℝ)

end

end A264509.P1688164483682551149

/-! ## A264509.P15820198956140202951

`A264506(∑[n+2]+4)`
-/

namespace A264509.P15820198956140202951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264509.P15820198956140202951

/-! ## A264509.P6822681200342944537

`A264506(A167614(n+1))+A185284(n)`
-/

namespace A264509.P6822681200342944537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A167614 (n + 1)).toNat + A185284 n

end

end A264509.P6822681200342944537

/-!
# A264510: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264510, there is no canonical definition to state claims against.
-/

/-! ## A264510.P3206836940874588666

`A264506(A141214(n)+7)`
-/

namespace A264510.P3206836940874588666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A141214 n + 7).toNat

end

end A264510.P3206836940874588666

/-! ## A264510.P13000967875241685765

`A264506(A052905(n)+9)`
-/

namespace A264510.P13000967875241685765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A052905 n + 9).toNat

end

end A264510.P13000967875241685765

/-! ## A264510.P8715503064749648640

`A264506(A055999(n)+10)`
-/

namespace A264510.P8715503064749648640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A055999 n + 10).toNat

end

end A264510.P8715503064749648640

/-! ## A264510.P17963643963986982849

`A264506(A167614(n+2)+1)`
-/

namespace A264510.P17963643963986982849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A167614 (n + 2) + 1).toNat

end

end A264510.P17963643963986982849

/-! ## A264510.P10432687590332989115

`A264506(A166136(n+2)-2)`
-/

namespace A264510.P10432687590332989115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A166136 (n + 2) - 2).toNat

end

end A264510.P10432687590332989115

/-!
# A264511: Number of (5+1) X (n+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264511, there is no canonical definition to state claims against.
-/

/-! ## A264511.P6961627159193162352

`A264506(A167499(n+3))`
-/

namespace A264511.P6961627159193162352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A167499 (n + 3)).toNat

end

end A264511.P6961627159193162352

/-! ## A264511.P4695818136025905604

`A264506(A155212(n)+13)`
-/

namespace A264511.P4695818136025905604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A155212 n + 13).toNat

end

end A264511.P4695818136025905604

/-! ## A264511.P10471260197269392293

`A264506(A000217(n+4)+5)`
-/

namespace A264511.P10471260197269392293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A000217 (n + 4) + 5).toNat

end

end A264511.P10471260197269392293

/-! ## A264511.P2175465424308594458

`A264506(A027379(n+2)+8)`
-/

namespace A264511.P2175465424308594458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A027379 (n + 2) + 8).toNat

end

end A264511.P2175465424308594458

/-! ## A264511.P11838316450606433820

`A264506(eq[6, A131818(n+1)])`
-/

namespace A264511.P11838316450606433820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264511.P11838316450606433820

/-!
# A264512: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264512, there is no canonical definition to state claims against.
-/

/-! ## A264512.P17259844546587776105

`A264506(A166136(n+4))`
-/

namespace A264512.P17259844546587776105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A166136 (n + 4)).toNat

end

end A264512.P17259844546587776105

/-! ## A264512.P8805805685823333

`A264506(A000124(n+5)+5)`
-/

namespace A264512.P8805805685823333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A000124 (n + 5) + 5).toNat

end

end A264512.P8805805685823333

/-! ## A264512.P2124154133236613087

`A264506(eq[7, A131818(n+1)])`
-/

namespace A264512.P2124154133236613087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264512.P2124154133236613087

/-! ## A264512.P8086821873164726430

`A264506(eq[4, A219347(n)]-(2*n+1))`
-/

namespace A264512.P8086821873164726430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (2 * n + 1))

end

end A264512.P8086821873164726430

/-! ## A264512.P4957002515233074242

`A264506(A161618(n+1)+A000217(n+5)+5)`
-/

namespace A264512.P4957002515233074242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A161618 (n + 1) + (A000217 (n + 5) + 5)).toNat

end

end A264512.P4957002515233074242

/-!
# A264513: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

The programs for A264513, there is no canonical definition to state claims against.
-/

/-! ## A264513.P9442310597243701587

`A264506(A056119(n)+28)`
-/

namespace A264513.P9442310597243701587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A056119 n + 28).toNat

end

end A264513.P9442310597243701587

/-! ## A264513.P12280443387450993266

`A264506(eq[11, A066657(n)])`
-/

namespace A264513.P12280443387450993266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264513.P12280443387450993266

/-! ## A264513.P6880479125998187005

`A264506(A167499(n+5)+2)`
-/

namespace A264513.P6880479125998187005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A167499 (n + 5) + 2).toNat

end

end A264513.P6880479125998187005

/-! ## A264513.P942263042696764655

`A264506(A000217(n+6)+7)`
-/

namespace A264513.P942263042696764655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (A000217 (n + 6) + 7).toNat

end

end A264513.P942263042696764655

/-! ## A264513.P15824022052645062074

`A264506(eq[8, A131818(n+1)])`
-/

namespace A264513.P15824022052645062074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264513.P15824022052645062074

/-!
# A264514: Number of (2n) X (2+1) arrays of permutations of 0..n*6-1 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264514, the canonical program `A264514.P17377703999448308121` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264514 has offset 1).

The definition of A264514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264514.P17377703999448308121

`A264507(Δ[n²])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A264514

/-- `A264507(Δ[n²])` -/
def P17377703999448308121.Spec : Prop :=
  ∀ n, P17377703999448308121.a n = A264514 (n + 1)

theorem P17377703999448308121.correct : P17377703999448308121.Spec := by
  intro n
  simp only [A264514, Nat.add_sub_cancel]

end A264514

/-! ## A264514.P5552359890816645777

`A080013(4*(n+1))`
-/

namespace A264514.P5552359890816645777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (4 * (n + 1))

end

end A264514.P5552359890816645777

namespace A264514

/-- `A080013(4*(n+1))` -/
def P5552359890816645777.Spec : Prop :=
  ∀ n, P5552359890816645777.a n = A264514 (n + 1)

end A264514

/-! ## A264514.P1914713373639838936

`∑[A143438(4*n+1)]+1`
-/

namespace A264514.P1914713373639838936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A264514.P1914713373639838936

namespace A264514

/-- `∑[A143438(4*n+1)]+1` -/
def P1914713373639838936.Spec : Prop :=
  ∀ n, P1914713373639838936.a n = A264514 (n + 1)

end A264514

/-! ## A264514.P7205618709777399819

`abs(1-A264507(2*n+1))+1`
-/

namespace A264514.P7205618709777399819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A264507 (2 * n + 1)| + 1

end

end A264514.P7205618709777399819

namespace A264514

/-- `abs(1-A264507(2*n+1))+1` -/
def P7205618709777399819.Spec : Prop :=
  ∀ n, P7205618709777399819.a n = A264514 (n + 1)

end A264514

/-! ## A264514.P12170307603387683876

`record[A264507(A029579(n))]`
-/

namespace A264514.P12170307603387683876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264507 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264514.P12170307603387683876

namespace A264514

/-- `record[A264507(A029579(n))]` -/
def P12170307603387683876.Spec : Prop :=
  ∀ n, P12170307603387683876.a n = A264514 (n + 1)

end A264514

/-! ## A264514.P17328308959628788354

`∑[A143438(A008486(n)+1+n)]`
-/

namespace A264514.P17328308959628788354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (A008486 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264514.P17328308959628788354

namespace A264514

/-- `∑[A143438(A008486(n)+1+n)]` -/
def P17328308959628788354.Spec : Prop :=
  ∀ n, P17328308959628788354.a n = A264514 (n + 1)

end A264514

/-! ## A264514.P17191222683444520206

`A143438(4*(n+1))-A143438(4*n+2)`
-/

namespace A264514.P17191222683444520206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (4 * (n + 1)) - A143438 (4 * n + 2)

end

end A264514.P17191222683444520206

namespace A264514

/-- `A143438(4*(n+1))-A143438(4*n+2)` -/
def P17191222683444520206.Spec : Prop :=
  ∀ n, P17191222683444520206.a n = A264514 (n + 1)

end A264514

/-! ## A264514.P2621516097009081326

`A264507(2*n+1)/a(A266246(A266249(n))-1)` with `a(0)=1`
-/

namespace A264514.P2621516097009081326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A264507 (2 * n + 1) : ℚ) / a (A266246 (A266249 n).toNat - 1).toNat

end

end A264514.P2621516097009081326

namespace A264514

/-- `A264507(2*n+1)/a(A266246(A266249(n))-1)` -/
def P2621516097009081326.Spec : Prop :=
  ∀ n, P2621516097009081326.a n = (A264514 (n + 1) : ℚ)

end A264514

/-! ## A264514.P18413469438468335702

`sqrt(A264515(Δ[n²]))`
-/

namespace A264514.P18413469438468335702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264515 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A264514.P18413469438468335702

namespace A264514

/-- `sqrt(A264515(Δ[n²]))` -/
def P18413469438468335702.Spec : Prop :=
  ∀ n, P18413469438468335702.a n = (A264514 (n + 1) : ℝ)

end A264514

/-! ## A264514.P15373406416015572896

`A264515(2*n+1)/A264507(2*n+1)`
-/

namespace A264514.P15373406416015572896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264515 (2 * n + 1) : ℚ) / (A264507 (2 * n + 1) : ℚ)

end

end A264514.P15373406416015572896

namespace A264514

/-- `A264515(2*n+1)/A264507(2*n+1)` -/
def P15373406416015572896.Spec : Prop :=
  ∀ n, P15373406416015572896.a n = (A264514 (n + 1) : ℚ)

end A264514

/-!
# A264515: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264515, the canonical program `A264515.P6654015843554446290` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264515 has offset 1).

The definition of A264515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264515.P6654015843554446290

`A264507(n+1)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A264515

/-- `A264507(n+1)²` -/
def P6654015843554446290.Spec : Prop :=
  ∀ n, P6654015843554446290.a n = A264515 (n + 1)

theorem P6654015843554446290.correct : P6654015843554446290.Spec := by
  intro n
  simp only [A264515, Nat.add_sub_cancel]

end A264515

/-! ## A264515.P4507498678782705912

`A080013(2*(n+2))²`
-/

namespace A264515.P4507498678782705912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (2 * (n + 2)) ^ 2

end

end A264515.P4507498678782705912

namespace A264515

/-- `A080013(2*(n+2))²` -/
def P4507498678782705912.Spec : Prop :=
  ∀ n, P4507498678782705912.a n = A264515 (n + 1)

end A264515

/-! ## A264515.P7903808464432422368

`Δ[Δ[A253412(2*n)]]²`
-/

namespace A264515.P7903808464432422368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264515.P7903808464432422368

namespace A264515

/-- `Δ[Δ[A253412(2*n)]]²` -/
def P7903808464432422368.Spec : Prop :=
  ∀ n, P7903808464432422368.a n = A264515 (n + 1)

end A264515

/-! ## A264515.P14672472923378084165

`Δ[A143438(2*(n+1))]²`
-/

namespace A264515.P14672472923378084165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A264515.P14672472923378084165

namespace A264515

/-- `Δ[A143438(2*(n+1))]²` -/
def P14672472923378084165.Spec : Prop :=
  ∀ n, P14672472923378084165.a n = A264515 (n + 1)

end A264515

/-! ## A264515.P14226198579642217653

`A264507(n+1)^(2%A052034(n+1))`
-/

namespace A264515.P14226198579642217653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264507 (n + 1) : ℚ) ^ (Int.tmod 2 (A052034 (n + 1)) : ℤ)

end

end A264515.P14226198579642217653

namespace A264515

/-- `A264507(n+1)^(2%A052034(n+1))` -/
def P14226198579642217653.Spec : Prop :=
  ∀ n, P14226198579642217653.a n = (A264515 (n + 1) : ℚ)

end A264515

/-! ## A264515.P9499401242622500456

`A264507(n+1)^A014963(A001316(n))`
-/

namespace A264515.P9499401242622500456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264507 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A264515.P9499401242622500456

namespace A264515

/-- `A264507(n+1)^A014963(A001316(n))` -/
def P9499401242622500456.Spec : Prop :=
  ∀ n, P9499401242622500456.a n = (A264515 (n + 1) : ℚ)

end A264515

/-! ## A264515.P11742248918227539517

`A264507(n+1)*A264507(A005408(n)-n)`
-/

namespace A264515.P11742248918227539517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264507 (n + 1) * A264507 (A005408 n - (n : ℤ)).toNat

end

end A264515.P11742248918227539517

namespace A264515

/-- `A264507(n+1)*A264507(A005408(n)-n)` -/
def P11742248918227539517.Spec : Prop :=
  ∀ n, P11742248918227539517.a n = A264515 (n + 1)

end A264515

/-! ## A264515.P1120446071938485081

`(A264516(n+1)/A264508(n+1))²`
-/

namespace A264515.P1120446071938485081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A264516 (n + 1) : ℚ) / (A264508 (n + 1) : ℚ)) ^ 2

end

end A264515.P1120446071938485081

namespace A264515

/-- `(A264516(n+1)/A264508(n+1))²` -/
def P1120446071938485081.Spec : Prop :=
  ∀ n, P1120446071938485081.a n = (A264515 (n + 1) : ℚ)

end A264515

/-! ## A264515.P5093653083955852237

`A264516(n+1)/A264517(n+1)*A264516(n+1)`
-/

namespace A264515.P5093653083955852237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℚ) / (A264517 (n + 1) : ℚ) * (A264516 (n + 1) : ℚ)

end

end A264515.P5093653083955852237

namespace A264515

/-- `A264516(n+1)/A264517(n+1)*A264516(n+1)` -/
def P5093653083955852237.Spec : Prop :=
  ∀ n, P5093653083955852237.a n = (A264515 (n + 1) : ℚ)

end A264515

/-! ## A264515.P15122546733381650308

`A264516(n+1)²/A264517(n+1)`
-/

namespace A264515.P15122546733381650308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) ^ 2 : ℚ) / (A264517 (n + 1) : ℚ)

end

end A264515.P15122546733381650308

namespace A264515

/-- `A264516(n+1)²/A264517(n+1)` -/
def P15122546733381650308.Spec : Prop :=
  ∀ n, P15122546733381650308.a n = (A264515 (n + 1) : ℚ)

end A264515

/-!
# A264516: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264516, there is no canonical definition to state claims against.
-/

/-! ## A264516.P10266187022543708757

`A264507(n+1)*A264508(n+1)`
-/

namespace A264516.P10266187022543708757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264507 (n + 1) * A264508 (n + 1)

end

end A264516.P10266187022543708757

/-! ## A264516.P8568076157603053966

`sqrt(A264515(n+1))*A264508(n+1)`
-/

namespace A264516.P8568076157603053966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264515 (n + 1) : ℝ) * (A264508 (n + 1) : ℝ)

end

end A264516.P8568076157603053966

/-! ## A264516.P6768784073219727268

`A080013(2*(n+2))*A264508(n+1)`
-/

namespace A264516.P6768784073219727268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (2 * (n + 2)) * A264508 (n + 1)

end

end A264516.P6768784073219727268

/-! ## A264516.P12765076851034393529

`Δ[A143438(2*(n+1))]*A264508(n+1)`
-/

namespace A264516.P12765076851034393529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143438 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A264508 (n + 1)

end

end A264516.P12765076851034393529

/-! ## A264516.P13240657737792055793

`sqrt(A264515(n+1))*sqrt(A264517(n+1))`
-/

namespace A264516.P13240657737792055793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264515 (n + 1) : ℝ) * Real.sqrt (A264517 (n + 1) : ℝ)

end

end A264516.P13240657737792055793

/-! ## A264516.P17386635608975238780

`sqrt(A264515(n+1)*A264517(n+1))`
-/

namespace A264516.P17386635608975238780
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264515 (n + 1) * A264517 (n + 1) : ℝ)

end

end A264516.P17386635608975238780

/-!
# A264517: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264517, there is no canonical definition to state claims against.
-/

/-! ## A264517.P6131479548897070657

`A264508(n+1)²`
-/

namespace A264517.P6131479548897070657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264508 (n + 1) ^ 2

end

end A264517.P6131479548897070657

/-! ## A264517.P52575987379235992

`(A264516(n+1)/A264507(n+1))²`
-/

namespace A264517.P52575987379235992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A264516 (n + 1) : ℚ) / (A264507 (n + 1) : ℚ)) ^ 2

end

end A264517.P52575987379235992

/-! ## A264517.P11195856992655939805

`A264508(n+1)^A000005(A002476(n+1))`
-/

namespace A264517.P11195856992655939805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264508 (n + 1) : ℚ) ^ (A000005 (A002476 (n + 1)).toNat : ℤ)

end

end A264517.P11195856992655939805

/-! ## A264517.P10132767970750425199

`A264508(n+1)^A020639(A074400(n+1))`
-/

namespace A264517.P10132767970750425199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264508 (n + 1) : ℚ) ^ (A020639 (A074400 (n + 1)).toNat : ℤ)

end

end A264517.P10132767970750425199

/-! ## A264517.P16440603301183384601

`A264508(n+1)^A000005(A107006(n+1))`
-/

namespace A264517.P16440603301183384601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264508 (n + 1) : ℚ) ^ (A000005 (A107006 (n + 1)).toNat : ℤ)

end

end A264517.P16440603301183384601

/-! ## A264517.P4044821053767235665

`A264508(n+1)^A020639(A241179(n+1))`
-/

namespace A264517.P4044821053767235665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264508 (n + 1) : ℚ) ^ (A020639 (A241179 (n + 1)).toNat : ℤ)

end

end A264517.P4044821053767235665

/-! ## A264517.P9505792199622588743

`A264508(n+1)^A020639(2*A153152(n+1))`
-/

namespace A264517.P9505792199622588743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264508 (n + 1) : ℚ) ^ (A020639 (2 * A153152 (n + 1)).toNat : ℤ)

end

end A264517.P9505792199622588743

/-! ## A264517.P5848562379280694824

`A264516(n+1)/A264515(n+1)*A264516(n+1)`
-/

namespace A264517.P5848562379280694824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264516 (n + 1) : ℚ) / (A264515 (n + 1) : ℚ) * (A264516 (n + 1) : ℚ)

end

end A264517.P5848562379280694824

/-! ## A264517.P7842021657751414004

`(A264518(n+1)/A264509(n+1))²`
-/

namespace A264517.P7842021657751414004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A264518 (n + 1) : ℚ) / (A264509 (n + 1) : ℚ)) ^ 2

end

end A264517.P7842021657751414004

/-! ## A264517.P10316807108634301650

`A264518(n+1)/A264519(n+1)*A264518(n+1)`
-/

namespace A264517.P10316807108634301650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264518 (n + 1) : ℚ) / (A264519 (n + 1) : ℚ) * (A264518 (n + 1) : ℚ)

end

end A264517.P10316807108634301650

/-!
# A264518: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264518, there is no canonical definition to state claims against.
-/

/-! ## A264518.P16058360069501465719

`A264508(n+1)*A264509(n+1)`
-/

namespace A264518.P16058360069501465719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264508 (n + 1) * A264509 (n + 1)

end

end A264518.P16058360069501465719

/-! ## A264518.P4996766099512390838

`sqrt(A264517(n+1))*A264509(n+1)`
-/

namespace A264518.P4996766099512390838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264517 (n + 1) : ℝ) * (A264509 (n + 1) : ℝ)

end

end A264518.P4996766099512390838

/-! ## A264518.P4153849279967840362

`A264509(n+1)/A264507(n+1)*A264516(n+1)`
-/

namespace A264518.P4153849279967840362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264509 (n + 1) : ℚ) / (A264507 (n + 1) : ℚ) * (A264516 (n + 1) : ℚ)

end

end A264518.P4153849279967840362

/-! ## A264518.P15633060369652680059

`sqrt(A264517(n+1))*sqrt(A264519(n+1))`
-/

namespace A264518.P15633060369652680059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264517 (n + 1) : ℝ) * Real.sqrt (A264519 (n + 1) : ℝ)

end

end A264518.P15633060369652680059

/-! ## A264518.P8155103541553904006

`sqrt(A264517(n+1)*A264519(n+1))`
-/

namespace A264518.P8155103541553904006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264517 (n + 1) * A264519 (n + 1) : ℝ)

end

end A264518.P8155103541553904006

/-!
# A264519: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264519, there is no canonical definition to state claims against.
-/

/-! ## A264519.P16319374556296039241

`A264509(n+1)²`
-/

namespace A264519.P16319374556296039241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264509 (n + 1) ^ 2

end

end A264519.P16319374556296039241

/-! ## A264519.P9269897133056597249

`(A264518(n+1)/A264508(n+1))²`
-/

namespace A264519.P9269897133056597249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A264518 (n + 1) : ℚ) / (A264508 (n + 1) : ℚ)) ^ 2

end

end A264519.P9269897133056597249

/-! ## A264519.P3684102246251769162

`A264509(n+1)^(2%A023854(n+1))`
-/

namespace A264519.P3684102246251769162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264509 (n + 1) : ℚ) ^ (Int.tmod 2 (A023854 (n + 1)) : ℤ)

end

end A264519.P3684102246251769162

/-! ## A264519.P16962962382406421836

`A264509(n+1)^A020639(A017293(n))`
-/

namespace A264519.P16962962382406421836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264509 (n + 1) : ℚ) ^ (A020639 (A017293 n).toNat : ℤ)

end

end A264519.P16962962382406421836

/-! ## A264519.P12062212669460850591

`A264518(n+1)/A264517(n+1)*A264518(n+1)`
-/

namespace A264519.P12062212669460850591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264518 (n + 1) : ℚ) / (A264517 (n + 1) : ℚ) * (A264518 (n + 1) : ℚ)

end

end A264519.P12062212669460850591

/-! ## A264519.P12890619383511763547

`A264509(n+1)%A264518(n+1)*A264509(n+1)`
-/

namespace A264519.P12890619383511763547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264509 (n + 1)) (A264518 (n + 1)) * A264509 (n + 1)

end

end A264519.P12890619383511763547

/-! ## A264519.P17873532955618184

`A264509(n+1)^A020639(A036689(n+1))`
-/

namespace A264519.P17873532955618184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264509 (n + 1) : ℚ) ^ (A020639 (A036689 (n + 1)).toNat : ℤ)

end

end A264519.P17873532955618184

/-!
# A264520: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264520, there is no canonical definition to state claims against.
-/

/-! ## A264520.P1039260234318565047

`A033761(∑[A169646(n+1)!])`
-/

namespace A264520.P1039260234318565047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A169646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264520.P1039260234318565047

/-! ## A264520.P15664227507841128948

`A263482(n+4)%(A341976(n)+2)`
-/

namespace A264520.P15664227507841128948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263482 (n + 4)) (A341976 (n + 18) + 2)

end

end A264520.P15664227507841128948

/-! ## A264520.P15186714757701070598

`A054054(A008896(n)+A008887(n))`
-/

namespace A264520.P15186714757701070598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A008896 n + A008887 n).toNat

end

end A264520.P15186714757701070598

/-! ## A264520.P15743721648551655944

`A028310(n)%A107573(A247290(n))`
-/

namespace A264520.P15743721648551655944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 n) (A107573 (A247290 n).toNat)

end

end A264520.P15743721648551655944

/-! ## A264520.P13034941512130228429

`A004768(n)%A358134(A381835(n))`
-/

namespace A264520.P13034941512130228429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004768 n) (A358134 (A381835 n).toNat)

end

end A264520.P13034941512130228429

/-!
# A264521: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264521, there is no canonical definition to state claims against.
-/

/-! ## A264521.P8066957418156103136

`A264520(∑[n+2]+4)`
-/

namespace A264521.P8066957418156103136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264521.P8066957418156103136

/-! ## A264521.P647777026886531208

`record[A264520(A016028(n+1))]`
-/

namespace A264521.P647777026886531208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A016028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264521.P647777026886531208

/-! ## A264521.P8749411158228025451

`and(-1, A264520(A167614(n+1)))`
-/

namespace A264521.P8749411158228025451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A264520 (A167614 (n + 1)).toNat)

end

end A264521.P8749411158228025451

/-! ## A264521.P4127952669798181025

`A264520(A055998(n)+6)+char[16]`
-/

namespace A264521.P4127952669798181025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264521.P4127952669798181025

/-! ## A264521.P4162228122836551663

`A264520(A167614(n+1))+A011738(n)`
-/

namespace A264521.P4162228122836551663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A167614 (n + 1)).toNat + A011738 n

end

end A264521.P4162228122836551663

/-!
# A264522: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264522, there is no canonical definition to state claims against.
-/

/-! ## A264522.P14113274255907696027

`A264520(∑[n+3]+7)`
-/

namespace A264522.P14113274255907696027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264522.P14113274255907696027

/-! ## A264522.P1121492669774371568

`A264520(A052905(n)+9)+char[15]`
-/

namespace A264522.P1121492669774371568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264522.P1121492669774371568

/-! ## A264522.P15853566243814721551

`A264520(A034856(n+2)+6)+char[16]`
-/

namespace A264522.P15853566243814721551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264522.P15853566243814721551

/-! ## A264522.P1193283235290862982

`A000108(C(2, n))*A264520(A052905(n)+9)`
-/

namespace A264522.P1193283235290862982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 n) * A264520 (A052905 n + 9).toNat

end

end A264522.P1193283235290862982

/-! ## A264522.P16335095883720154620

`A264520(A052905(n)+9)%A000108(n+9)`
-/

namespace A264522.P16335095883720154620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264520 (A052905 n + 9).toNat) (A000108 (n + 9))

end

end A264522.P16335095883720154620

/-!
# A264523: Number of (5+1) X (n+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264523, there is no canonical definition to state claims against.
-/

/-! ## A264523.P17022694643833063800

`A264520(A167499(n+3))`
-/

namespace A264523.P17022694643833063800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A167499 (n + 3)).toNat

end

end A264523.P17022694643833063800

/-! ## A264523.P3494755597772256656

`A264520(A155212(n)+13)`
-/

namespace A264523.P3494755597772256656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A155212 n + 13).toNat

end

end A264523.P3494755597772256656

/-! ## A264523.P16541242531610184148

`A264520(A056000(n)+15)`
-/

namespace A264523.P16541242531610184148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A056000 n + 15).toNat

end

end A264523.P16541242531610184148

/-! ## A264523.P13815019192589253686

`A264520(eq[7, A066657(n)])`
-/

namespace A264523.P13815019192589253686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264523.P13815019192589253686

/-! ## A264523.P2322061578907061013

`A264520(A167614(n+3)+2)`
-/

namespace A264523.P2322061578907061013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A167614 (n + 3) + 2).toNat

end

end A264523.P2322061578907061013

/-!
# A264524: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264524, there is no canonical definition to state claims against.
-/

/-! ## A264524.P9701042249809544914

`A264520(A056115(n)+21)`
-/

namespace A264524.P9701042249809544914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A056115 n + 21).toNat

end

end A264524.P9701042249809544914

/-! ## A264524.P7076553078685082905

`A264520(A167499(n+4)+1)`
-/

namespace A264524.P7076553078685082905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A167499 (n + 4) + 1).toNat

end

end A264524.P7076553078685082905

/-! ## A264524.P3609802108613781646

`A264520(A000124(n+5)+5)`
-/

namespace A264524.P3609802108613781646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A000124 (n + 5) + 5).toNat

end

end A264524.P3609802108613781646

/-! ## A264524.P4731245349191183205

`A264520(A055998(n+3)+9)`
-/

namespace A264524.P4731245349191183205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A055998 (n + 3) + 9).toNat

end

end A264524.P4731245349191183205

/-! ## A264524.P11578403773764638040

`A264520(A246172(n+1)+20)`
-/

namespace A264524.P11578403773764638040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A246172 (n + 1) + 20).toNat

end

end A264524.P11578403773764638040

/-!
# A264525: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,0 0,2 -1,-2 or 1,0.

The programs for A264525, there is no canonical definition to state claims against.
-/

/-! ## A264525.P1976472489585128631

`A264520(eq[11, A066657(n)])`
-/

namespace A264525.P1976472489585128631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264525.P1976472489585128631

/-! ## A264525.P4625322907258090091

`A264520(A000124(n+6)+6)`
-/

namespace A264525.P4625322907258090091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A000124 (n + 6) + 6).toNat

end

end A264525.P4625322907258090091

/-! ## A264525.P14495591327775069929

`A264520(A000217(n+6)+7)`
-/

namespace A264525.P14495591327775069929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (A000217 (n + 6) + 7).toNat

end

end A264525.P14495591327775069929

/-! ## A264525.P5241698673332667771

`A264520(eq[8, A131818(n+1)])`
-/

namespace A264525.P5241698673332667771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264520 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264525.P5241698673332667771

/-!
# A264526: Smallest number m such that both 2*n-m and 2*n+m are primes.

The programs for A264526, there is no canonical definition to state claims against.
-/

/-! ## A264526.P3998904921678645265

`A082467(2*(n+2))`
-/

namespace A264526.P3998904921678645265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (2 * (n + 2))

end

end A264526.P3998904921678645265

/-! ## A264526.P1475824994538006587

`sqrt(A143697(2*(n+2)))`
-/

namespace A264526.P1475824994538006587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143697 (2 * (n + 2)) : ℝ)

end

end A264526.P1475824994538006587

/-! ## A264526.P5446813774952777

`A078496(2*(n+2))%(n+2)`
-/

namespace A264526.P5446813774952777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078496 (2 * (n + 2))) (n + 2 : ℤ)

end

end A264526.P5446813774952777

/-! ## A264526.P17367792009573345833

`2*(n+2)-A078587(2*(n+2))`
-/

namespace A264526.P17367792009573345833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A078587 (2 * (n + 2))

end

end A264526.P17367792009573345833

/-! ## A264526.P4272129006204046505

`A078496(2*(n+2))+1-A062545(n+1)`
-/

namespace A264526.P4272129006204046505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (2 * (n + 2)) + (1 - A062545 (n + 1))

end

end A264526.P4272129006204046505

/-! ## A264526.P6064938171085056527

`A078496(2*(n+2))-(A005843(n+1)+2)`
-/

namespace A264526.P6064938171085056527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (2 * (n + 2)) - (A005843 (n + 1) + 2)

end

end A264526.P6064938171085056527

/-! ## A264526.P8700372344644713318

`A078496(2*n+4)-2*A000027(n+2)`
-/

namespace A264526.P8700372344644713318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (2 * n + 4) - 2 * A000027 (n + 2)

end

end A264526.P8700372344644713318

/-! ## A264526.P2397450069146244541

`filter[A082467(n+4), A000035(#)]`
-/

namespace A264526.P2397450069146244541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A264526.P2397450069146244541

/-! ## A264526.P10138990677258282351

`A005843(n+2)-A002374(2*(n+2))`
-/

namespace A264526.P10138990677258282351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) - A002374 (2 * (n + 2))

end

end A264526.P10138990677258282351

/-! ## A264526.P8711764584779547689

`A078496(2*(n+2))-A020705(2*n)`
-/

namespace A264526.P8711764584779547689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (2 * (n + 2)) - A020705 (2 * n)

end

end A264526.P8711764584779547689

/-! ## A264526.P4841095679503639589

`A078496(2*(n+2))-A020744(2*n)/2`
-/

namespace A264526.P4841095679503639589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078496 (2 * (n + 2)) : ℚ) - (A020744 (2 * n) : ℚ) / 2

end

end A264526.P4841095679503639589

/-! ## A264526.P8013899199004796459

`A047160(2*(n+2))`
-/

namespace A264526.P8013899199004796459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (2 * (n + 2))

end

end A264526.P8013899199004796459

/-! ## A264526.P14007324395337537790

`A325142(2*(n+2))`
-/

namespace A264526.P14007324395337537790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (2 * (n + 2))

end

end A264526.P14007324395337537790

/-! ## A264526.P18045183303249394446

`A066285(2*(n+2))/2`
-/

namespace A264526.P18045183303249394446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (2 * (n + 2)) : ℚ) / 2

end

end A264526.P18045183303249394446

/-! ## A264526.P8313062136838953222

`filter[A047160(n+2), A000035(#)]`
-/

namespace A264526.P8313062136838953222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A264526.P8313062136838953222

/-! ## A264526.P8234361751696865548

`filter[A325142(n+2), A000035(#)]`
-/

namespace A264526.P8234361751696865548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A264526.P8234361751696865548

/-! ## A264526.P18175605176087248048

`A260689(∑[A069360(n+1)]+1)`
-/

namespace A264526.P18175605176087248048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260689 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A264526.P18175605176087248048

/-!
# A264527: Largest number m such that (2*n-m, 2*n+m) is a prime pair.

The programs for A264527, there is no canonical definition to state claims against.
-/

/-! ## A264527.P9733888611465772065

`∑[2-Δ[A020481(2*(n+1))]]`
-/

namespace A264527.P9733888611465772065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264527.P9733888611465772065

/-! ## A264527.P8916236324148168372

`∑[Δ[A020482(2*(n+1))]-2]`
-/

namespace A264527.P8916236324148168372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264527.P8916236324148168372

/-! ## A264527.P9826490516620954708

`2*(n+2)-A020481(2*(n+2))`
-/

namespace A264527.P9826490516620954708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A020481 (2 * (n + 2))

end

end A264527.P9826490516620954708

/-! ## A264527.P4831350011439673977

`A020482(2*(n+2))-A005843(n+2)`
-/

namespace A264527.P4831350011439673977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (2 * (n + 2)) - A005843 (n + 2)

end

end A264527.P4831350011439673977

/-! ## A264527.P16762301105059524700

`A159482(2*(n+2))-A005843(n+2)`
-/

namespace A264527.P16762301105059524700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (2 * (n + 2)) - A005843 (n + 2)

end

end A264527.P16762301105059524700

/-! ## A264527.P2388500685872007665

`A005843(n+2)-A002373(2*(n+2))`
-/

namespace A264527.P2388500685872007665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 2) - A002373 (2 * (n + 2))

end

end A264527.P2388500685872007665

/-! ## A264527.P8621310197717073250

`A005408(n+1)+1-A002373(2*(n+2))`
-/

namespace A264527.P8621310197717073250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1) + (1 - A002373 (2 * (n + 2)))

end

end A264527.P8621310197717073250

/-! ## A264527.P18266963346443488964

`A020482(A020705(2*n))-A020705(2*n)`
-/

namespace A264527.P18266963346443488964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A020705 (2 * n)).toNat - A020705 (2 * n)

end

end A264527.P18266963346443488964

/-! ## A264527.P17185164249324732192

`A052905(2*n+1)-(A052905(2*n)+A002373(2*(n+2)))`
-/

namespace A264527.P17185164249324732192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (2 * n + 1) - (A052905 (2 * n) + A002373 (2 * (n + 2)))

end

end A264527.P17185164249324732192

/-! ## A264527.P151154627202763604

`A047949(2*(n+2))`
-/

namespace A264527.P151154627202763604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (2 * (n + 2))

end

end A264527.P151154627202763604

/-! ## A264527.P3662170868366673505

`A303603(2*(n+2))/2`
-/

namespace A264527.P3662170868366673505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303603 (2 * (n + 2)) : ℚ) / 2

end

end A264527.P3662170868366673505

/-! ## A264527.P13801420842056420152

`filter[A047949(n+2), A000035(#)]`
-/

namespace A264527.P13801420842056420152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047949 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A264527.P13801420842056420152

/-! ## A264527.P14418343741573658927

`A112824(2*(n+2))+A047160(2*(n+2))`
-/

namespace A264527.P14418343741573658927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112824 (2 * (n + 2)) + A047160 (2 * (n + 2))

end

end A264527.P14418343741573658927

/-! ## A264527.P16461964946893780241

`A252463(A303603(2*(n+2)))`
-/

namespace A264527.P16461964946893780241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A303603 (2 * (n + 2))).toNat

end

end A264527.P16461964946893780241

/-! ## A264527.P16517028786517455787

`A260689(∑[A069360(n+2)]+1)`
-/

namespace A264527.P16517028786517455787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069360 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260689 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A264527.P16517028786517455787

/-!
# A264528: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264528, there is no canonical definition to state claims against.
-/

/-! ## A264528.P13306809646390557499

`A264534(∑[n+2])`
-/

namespace A264528.P13306809646390557499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264528.P13306809646390557499

/-! ## A264528.P16533464545214341703

`gcd(n, n+1)*A264534(A000096(n+1))`
-/

namespace A264528.P16533464545214341703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A264534 (A000096 (n + 1)).toNat

end

end A264528.P16533464545214341703

/-! ## A264528.P4539045194502342944

`A264534(A000096(n+1))*A280865(n)`
-/

namespace A264528.P4539045194502342944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A000096 (n + 1)).toNat * A280865 n

end

end A264528.P4539045194502342944

/-! ## A264528.P5742449825999354663

`A264534(A000096(n+1))+A000038(n+1)`
-/

namespace A264528.P5742449825999354663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A264528.P5742449825999354663

/-! ## A264528.P1029406323043333282

`A264534(A000096(n+1))+A138364(2*n)`
-/

namespace A264528.P1029406323043333282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A000096 (n + 1)).toNat + A138364 (2 * n)

end

end A264528.P1029406323043333282

/-!
# A264529: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264529, there is no canonical definition to state claims against.
-/

/-! ## A264529.P11354275878968540301

`A264534(∑[n+3]+1)`
-/

namespace A264529.P11354275878968540301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264529.P11354275878968540301

/-! ## A264529.P10153064545396430861

`record[char[A055998(n)]*A264534(n+1)]`
-/

namespace A264529.P10153064545396430861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A264534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264529.P10153064545396430861

/-! ## A264529.P5665129384911692146

`record[A264534(n+1)/A013615(n+3)]`
-/

namespace A264529.P5665129384911692146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264534 (n + 1) : ℚ) / (A013615 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264529.P5665129384911692146

/-! ## A264529.P12047152473092061493

`A264534(A034856(n+2))%C(2*(n+5), 9)`
-/

namespace A264529.P12047152473092061493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264534 (A034856 (n + 2)).toNat) (Nat.choose (2 * (n + 5)) 9 : ℤ)

end

end A264529.P12047152473092061493

/-! ## A264529.P10087983875318101815

`A264534(A034856(n+2))%A196790(n)`
-/

namespace A264529.P10087983875318101815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264534 (A034856 (n + 2)).toNat) (A196790 (n + 10))

end

end A264529.P10087983875318101815

/-!
# A264530: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264530, there is no canonical definition to state claims against.
-/

/-! ## A264530.P3278672632960729344

`A264534(∑[n+4]+3)`
-/

namespace A264530.P3278672632960729344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A264530.P3278672632960729344

/-! ## A264530.P11059087991574513059

`A264534(A141214(n+1))%A067381(n+1)`
-/

namespace A264530.P11059087991574513059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264534 (A141214 (n + 1)).toNat) (A067381 (n + 1))

end

end A264530.P11059087991574513059

/-! ## A264530.P10220368301992647274

`A264534(A155212(n)+5)/a(A000038(n))` with `a(0)=1`
-/

namespace A264530.P10220368301992647274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A264534 (A155212 n + 5).toNat : ℚ) / a (A000038 n).toNat

end

end A264530.P10220368301992647274

/-!
# A264531: Number of (n+1) X (5+1) arrays of permutations of 0..n*6+5 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264531, there is no canonical definition to state claims against.
-/

/-! ## A264531.P5239483687193917198

`A264534(∑[n+5]+6)`
-/

namespace A264531.P5239483687193917198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A264531.P5239483687193917198

/-! ## A264531.P12404792484560775536

`record[A264534(n+1)^A156241(n+5)]`
-/

namespace A264531.P12404792484560775536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264534 (n + 1) : ℚ) ^ (A156241 (n + 5) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264531.P12404792484560775536

/-! ## A264531.P1126355423843891792

`A264534(A000217(n+5)-4)%A238276(n+3)`
-/

namespace A264531.P1126355423843891792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264534 (A000217 (n + 5) - 4).toNat) (A238276 (n + 3))

end

end A264531.P1126355423843891792

/-!
# A264532: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264532, there is no canonical definition to state claims against.
-/

/-! ## A264532.P15745072954862107943

`A264534(A052905(n+3))`
-/

namespace A264532.P15745072954862107943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A052905 (n + 3)).toNat

end

end A264532.P15745072954862107943

/-! ## A264532.P1162255381747690016

`A264534(A056119(n)+16)`
-/

namespace A264532.P1162255381747690016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A056119 n + 16).toNat

end

end A264532.P1162255381747690016

/-! ## A264532.P4890541168556045185

`A264534(eq[3, A219347(n)])`
-/

namespace A264532.P4890541168556045185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264532.P4890541168556045185

/-! ## A264532.P922428938676109290

`A264534(eq[5, A152157(n)])`
-/

namespace A264532.P922428938676109290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264532.P922428938676109290

/-! ## A264532.P1176527173236836207

`A264534(eq[5, A193592(n)])`
-/

namespace A264532.P1176527173236836207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264532.P1176527173236836207

/-!
# A264533: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264533, there is no canonical definition to state claims against.
-/

/-! ## A264533.P2616870690377083238

`A264534(A055999(n+4))`
-/

namespace A264533.P2616870690377083238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A055999 (n + 4)).toNat

end

end A264533.P2616870690377083238

/-! ## A264533.P7330909730374275217

`A264534(eq[4, A219347(n)])`
-/

namespace A264533.P7330909730374275217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264533.P7330909730374275217

/-! ## A264533.P10236884230938756975

`A264534(eq[6, A193592(n)])`
-/

namespace A264533.P10236884230938756975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264533.P10236884230938756975

/-! ## A264533.P5246316026309330240

`A264534(eq[7, A152157(n)])`
-/

namespace A264533.P5246316026309330240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264533.P5246316026309330240

/-! ## A264533.P15037759887270361689

`record[A264534(∑[A022293(n)])]`
-/

namespace A264533.P15037759887270361689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022293 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264533.P15037759887270361689

/-!
# A264535: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264535, the canonical program `A264535.P7812606658906319396` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264535 has offset 1).

The definition of A264535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264535.P7812606658906319396

`4*a(n-3)+2*a(n-4)+2*a(n-5)-2*a(n-9)-a(n-10)` with `a(0)=0, a(1)=4, a(2)=2, a(3)=1, a(4)=16, a(5)=16, a(6)=16, a(7)=68, a(8)=97, a(9)=128`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A264535

/-- `4*a(n-3)+2*a(n-4)+2*a(n-5)-2*a(n-9)-a(n-10)` -/
def P7812606658906319396.Spec : Prop :=
  ∀ n, P7812606658906319396.a n = A264535 (n + 1)

theorem P7812606658906319396.correct : P7812606658906319396.Spec := by
  intro n
  simp only [A264535, Nat.add_sub_cancel]

end A264535

/-! ## A264535.P4517196102103499837

`A264534(∑[n+1]+2)`
-/

namespace A264535.P4517196102103499837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264535.P4517196102103499837

namespace A264535

/-- `A264534(∑[n+1]+2)` -/
def P4517196102103499837.Spec : Prop :=
  ∀ n, P4517196102103499837.a n = A264535 (n + 1)

end A264535

/-! ## A264535.P5340922052653434316

`A264534(A167499(n)-3)+char[15]`
-/

namespace A264535.P5340922052653434316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A167499 n - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264535.P5340922052653434316

namespace A264535

/-- `A264534(A167499(n)-3)+char[15]` -/
def P5340922052653434316.Spec : Prop :=
  ∀ n, P5340922052653434316.a n = A264535 (n + 1)

end A264535

/-! ## A264535.P14469666359473038346

`A007318(∑[n])*A264534(A167499(n)-3)`
-/

namespace A264535.P14469666359473038346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A264534 (A167499 n - 3).toNat

end

end A264535.P14469666359473038346

namespace A264535

/-- `A007318(∑[n])*A264534(A167499(n)-3)` -/
def P14469666359473038346.Spec : Prop :=
  ∀ n, P14469666359473038346.a n = A264535 (n + 1)

end A264535

/-! ## A264535.P6103676392446392733

`char[A007318(n)]*A264534(A167499(n)-3)`
-/

namespace A264535.P6103676392446392733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A264534 (A167499 n - 3).toNat

end

end A264535.P6103676392446392733

namespace A264535

/-- `char[A007318(n)]*A264534(A167499(n)-3)` -/
def P6103676392446392733.Spec : Prop :=
  ∀ n, P6103676392446392733.a n = A264535 (n + 1)

end A264535

/-!
# A264536: Number of (3+1) X (n+1) arrays of permutations of 0..n*4+3 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264536, the canonical program `A264536.P10252500003327820807` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264536 has offset 1).

The definition of A264536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264536.P10252500003327820807

`a(n-1)+12*a(n-3)+16*a(n-5)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=29, a(4)=89`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A264536

/-- `a(n-1)+12*a(n-3)+16*a(n-5)` -/
def P10252500003327820807.Spec : Prop :=
  ∀ n, (P10252500003327820807.a n : ℤ) = A264536 (n + 1)

theorem P10252500003327820807.correct : P10252500003327820807.Spec := by
  intro n
  simp only [A264536, Nat.add_sub_cancel]

end A264536

/-! ## A264536.P17578425816669450254

`A264534(∑[n+2]+4)`
-/

namespace A264536.P17578425816669450254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264536.P17578425816669450254

namespace A264536

/-- `A264534(∑[n+2]+4)` -/
def P17578425816669450254.Spec : Prop :=
  ∀ n, P17578425816669450254.a n = A264536 (n + 1)

end A264536

/-! ## A264536.P3940974247011781138

`lcm((-1)^n, A264534(A167614(n+1)))`
-/

namespace A264536.P3940974247011781138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A264534 (A167614 (n + 1)).toNat)

end

end A264536.P3940974247011781138

namespace A264536

/-- `lcm((-1)^n, A264534(A167614(n+1)))` -/
def P3940974247011781138.Spec : Prop :=
  ∀ n, (P3940974247011781138.a n : ℤ) = A264536 (n + 1)

end A264536

/-! ## A264536.P4574649604084745224

`A264534(A167614(n+1))+A011731(n)`
-/

namespace A264536.P4574649604084745224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A167614 (n + 1)).toNat + A011731 n

end

end A264536.P4574649604084745224

namespace A264536

/-- `A264534(A167614(n+1))+A011731(n)` -/
def P4574649604084745224.Spec : Prop :=
  ∀ n, P4574649604084745224.a n = A264536 (n + 1)

end A264536

/-! ## A264536.P8878994999561791245

`A264534(A167614(n+1))+A011736(n)`
-/

namespace A264536.P8878994999561791245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A167614 (n + 1)).toNat + A011736 n

end

end A264536.P8878994999561791245

namespace A264536

/-- `A264534(A167614(n+1))+A011736(n)` -/
def P8878994999561791245.Spec : Prop :=
  ∀ n, P8878994999561791245.a n = A264536 (n + 1)

end A264536

/-!
# A264537: Number of (4+1) X (n+1) arrays of permutations of 0..n*5+4 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264537, there is no canonical definition to state claims against.
-/

/-! ## A264537.P5168504261343033401

`A264534(C(n+5, 2)-n)`
-/

namespace A264537.P5168504261343033401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (Nat.choose (n + 5) 2 - n)

end

end A264537.P5168504261343033401

/-! ## A264537.P826858806819347017

`A264534(A141214(n)+7)`
-/

namespace A264537.P826858806819347017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A141214 n + 7).toNat

end

end A264537.P826858806819347017

/-! ## A264537.P1385551500906452525

`A264534(A052905(n)+9)`
-/

namespace A264537.P1385551500906452525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A052905 n + 9).toNat

end

end A264537.P1385551500906452525

/-! ## A264537.P6671307337449862689

`A264534(A055999(n)+10)`
-/

namespace A264537.P6671307337449862689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A055999 n + 10).toNat

end

end A264537.P6671307337449862689

/-! ## A264537.P10521557330396399113

`A264534(eq[5, A066657(n)])`
-/

namespace A264537.P10521557330396399113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264537.P10521557330396399113

/-!
# A264538: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264538, there is no canonical definition to state claims against.
-/

/-! ## A264538.P17461226498732828492

`A264534(∑[n+4]+11)`
-/

namespace A264538.P17461226498732828492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A264538.P17461226498732828492

/-!
# A264539: Number of (6+1) X (n+1) arrays of permutations of 0..n*7+6 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264539, there is no canonical definition to state claims against.
-/

/-! ## A264539.P10612987594881204937

`A264534(∑[n+5]+16)`
-/

namespace A264539.P10612987594881204937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A264539.P10612987594881204937

/-! ## A264539.P9894174741709231567

`A264534(A166136(n+4))+A105514(n)`
-/

namespace A264539.P9894174741709231567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A166136 (n + 4)).toNat + A105514 n

end

end A264539.P9894174741709231567

/-! ## A264539.P10799819945582690407

`A264534(A166136(n+4))%A264531(n+4)`
-/

namespace A264539.P10799819945582690407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264534 (A166136 (n + 4)).toNat) (A264531 (n + 4))

end

end A264539.P10799819945582690407

/-!
# A264540: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change -2,-2 -1,0 0,1 or 1,0.

The programs for A264540, there is no canonical definition to state claims against.
-/

/-! ## A264540.P219290534966966566

`A264534(A056119(n)+28)`
-/

namespace A264540.P219290534966966566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A056119 n + 28).toNat

end

end A264540.P219290534966966566

/-! ## A264540.P5824744559437890615

`A264534(eq[11, A066657(n)])`
-/

namespace A264540.P5824744559437890615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264540.P5824744559437890615

/-! ## A264540.P6870593121483912455

`A264534(A166136(n+5)+1)`
-/

namespace A264540.P6870593121483912455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A166136 (n + 5) + 1).toNat

end

end A264540.P6870593121483912455

/-! ## A264540.P4399336587409617991

`A264534(A167499(n+5)+2)`
-/

namespace A264540.P4399336587409617991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A167499 (n + 5) + 2).toNat

end

end A264540.P4399336587409617991

/-! ## A264540.P3767977089343367841

`A264534(A133263(n+6)+5)`
-/

namespace A264540.P3767977089343367841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264534 (A133263 (n + 6) + 5).toNat

end

end A264540.P3767977089343367841

/-!
# A264541: a(n) = numerator(Jtilde3(n)).

The programs for A264541, there is no canonical definition to state claims against.
-/

/-! ## A264541.P18336304013528191616

`A326303(and(n²+n, -2)+2)%A358013(3*n)`
-/

namespace A264541.P18336304013528191616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326303 (Int.land (n ^ 2 + n : ℤ) (-2) + 2).toNat) (A358013 (3 * n))

end

end A264541.P18336304013528191616

/-! ## A264541.P9112334760809666349

`record[A326303(2*(n+1))%A326262(n)]`
-/

namespace A264541.P9112334760809666349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326303 (2 * (n + 1))) (A326262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264541.P9112334760809666349

/-! ## A264541.P13288961949936787640

`record[A326303(2*(n+2))%A127102(n+1)]`
-/

namespace A264541.P13288961949936787640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326303 (2 * (n + 2))) (A127102 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264541.P13288961949936787640

/-!
# A264542: a(n) = denominator(Jtilde3(n)).

The programs for A264542, there is no canonical definition to state claims against.
-/

/-! ## A264542.P15597663839239928458

`A002866(n)*A028310(A354335(n))`
-/

namespace A264542.P15597663839239928458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n * A028310 (A354335 n).toNat

end

end A264542.P15597663839239928458

/-!
# A264543: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264543, there is no canonical definition to state claims against.
-/

/-! ## A264543.P14355130728244127612

`A264550(∑[4*n]+1)`
-/

namespace A264543.P14355130728244127612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264543.P14355130728244127612

/-! ## A264543.P13970550303550472873

`lcm(2, A264550(A001844(n)))`
-/

namespace A264543.P13970550303550472873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A264550 (A001844 n).toNat)

end

end A264543.P13970550303550472873

/-! ## A264543.P6180976389785371461

`A264550(A001844(n))+A185284(n)`
-/

namespace A264543.P6180976389785371461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A001844 n).toNat + A185284 n

end

end A264543.P6180976389785371461

/-! ## A264543.P1993340540686262137

`A308977(n)+A264550(A001844(n))`
-/

namespace A264543.P1993340540686262137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308977 n + A264550 (A001844 n).toNat

end

end A264543.P1993340540686262137

/-! ## A264543.P1679124556715771048

`A057427(n)*A264550(A001844(n))`
-/

namespace A264543.P1679124556715771048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A264550 (A001844 n).toNat

end

end A264543.P1679124556715771048

/-!
# A264544: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264544, the canonical program `A264544.P13248643358970042654` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264544 has offset 1).

The definition of A264544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264544.P13248643358970042654

`2*a(n-1)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A264544

/-- `2*a(n-1)+a(n-4)` -/
def P13248643358970042654.Spec : Prop :=
  ∀ n, (P13248643358970042654.a n : ℤ) = A264544 (n + 1)

theorem P13248643358970042654.correct : P13248643358970042654.Spec := by
  intro n
  simp only [A264544, Nat.add_sub_cancel]

end A264544

/-! ## A264544.P9089477002265176032

`a(n-1)+a(n-1)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`
-/

namespace A264544.P9089477002265176032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 10] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 4))

end

end A264544.P9089477002265176032

namespace A264544

/-- `a(n-1)+a(n-1)+a(n-4)` -/
def P9089477002265176032.Spec : Prop :=
  ∀ n, (P9089477002265176032.a n : ℤ) = A264544 (n + 1)

theorem P9089477002265176032.correct : P9089477002265176032.Spec := by
  intro n
  simp only [A264544, Nat.add_sub_cancel, A264544.P9089477002265176032.a, A264544.P13248643358970042654.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A264544

/-! ## A264544.P17467261081206950015

`Δ[Δ[A008999(n)]]`
-/

namespace A264544.P17467261081206950015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264544.P17467261081206950015

namespace A264544

/-- `Δ[Δ[A008999(n)]]` -/
def P17467261081206950015.Spec : Prop :=
  ∀ n, P17467261081206950015.a n = A264544 (n + 1)

end A264544

/-! ## A264544.P13339848661649161165

`(A008999(n+2)+A008999(n))%A008999(n+1)`
-/

namespace A264544.P13339848661649161165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008999 (n + 2) + A008999 n) (A008999 (n + 1))

end

end A264544.P13339848661649161165

namespace A264544

/-- `(A008999(n+2)+A008999(n))%A008999(n+1)` -/
def P13339848661649161165.Spec : Prop :=
  ∀ n, P13339848661649161165.a n = A264544 (n + 1)

end A264544

/-!
# A264545: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264545, there is no canonical definition to state claims against.
-/

/-! ## A264545.P18306651831741270838

`A264550(∑[n+3]+1)`
-/

namespace A264545.P18306651831741270838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264545.P18306651831741270838

/-! ## A264545.P7420774755297951933

`record[Δ[A264550(A130297(n+1))]]`
-/

namespace A264545.P7420774755297951933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A130297 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264545.P7420774755297951933

/-!
# A264546: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264546, there is no canonical definition to state claims against.
-/

/-! ## A264546.P13595505764780547940

`A264550(A141214(n+1))`
-/

namespace A264546.P13595505764780547940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A141214 (n + 1)).toNat

end

end A264546.P13595505764780547940

/-! ## A264546.P1264152844090478180

`A264550(A027379(n+2))`
-/

namespace A264546.P1264152844090478180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A027379 (n + 2)).toNat

end

end A264546.P1264152844090478180

/-! ## A264546.P1358496302340578588

`A264550(A155212(n)+5)`
-/

namespace A264546.P1358496302340578588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A155212 n + 5).toNat

end

end A264546.P1358496302340578588

/-! ## A264546.P2482201660247403376

`A264550(A052905(n+1)+2)`
-/

namespace A264546.P2482201660247403376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A052905 (n + 1) + 2).toNat

end

end A264546.P2482201660247403376

/-! ## A264546.P1139784138455114272

`A264550(eq[2, A332954(n)]+1)`
-/

namespace A264546.P1139784138455114272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A264546.P1139784138455114272

/-!
# A264547: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264547, there is no canonical definition to state claims against.
-/

/-! ## A264547.P10456197964990322534

`A264550(Δ[A023545(n+1)])`
-/

namespace A264547.P10456197964990322534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (f1 (n + 1) - f1 n).toNat

end

end A264547.P10456197964990322534

/-! ## A264547.P951664792838984822

`record[A264550(A052905(n)+1)]`
-/

namespace A264547.P951664792838984822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A052905 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264547.P951664792838984822

/-! ## A264547.P2194133800002345010

`record[A264550(A055999(n)+2)]`
-/

namespace A264547.P2194133800002345010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A055999 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264547.P2194133800002345010

/-! ## A264547.P14754295330307972382

`record[A264550(A141214(n)-1)]`
-/

namespace A264547.P14754295330307972382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A141214 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264547.P14754295330307972382

/-! ## A264547.P7164655107859176004

`A264550(A167487(n+4)-11)`
-/

namespace A264547.P7164655107859176004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A167487 (n + 4) - 11).toNat

end

end A264547.P7164655107859176004

/-!
# A264548: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264548, there is no canonical definition to state claims against.
-/

/-! ## A264548.P6595050107704111266

`A264550(eq[3, A219347(n)])`
-/

namespace A264548.P6595050107704111266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264548.P6595050107704111266

/-! ## A264548.P6972280761220175344

`A264550(eq[5, A193592(n)])`
-/

namespace A264548.P6972280761220175344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264548.P6972280761220175344

/-! ## A264548.P17962816138205839095

`A264550(eq[8, A258709(n)])`
-/

namespace A264548.P17962816138205839095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264548.P17962816138205839095

/-! ## A264548.P2162910544519355493

`A264550(A055999(n+3)+1)`
-/

namespace A264548.P2162910544519355493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A055999 (n + 3) + 1).toNat

end

end A264548.P2162910544519355493

/-! ## A264548.P10345311966394354998

`A264550(eq[6, A200370(n+1)])`
-/

namespace A264548.P10345311966394354998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264548.P10345311966394354998

/-!
# A264549: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264549, there is no canonical definition to state claims against.
-/

/-! ## A264549.P5719991627469175675

`A264550(eq[4, A219347(n)])`
-/

namespace A264549.P5719991627469175675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264549.P5719991627469175675

/-! ## A264549.P8018943357986568458

`A264550(eq[5, A332954(n)])`
-/

namespace A264549.P8018943357986568458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264549.P8018943357986568458

/-! ## A264549.P15770445448479248913

`A264550(eq[6, A193592(n)])`
-/

namespace A264549.P15770445448479248913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264549.P15770445448479248913

/-! ## A264549.P12692246567008179851

`A264550(eq[7, A200370(n+1)])`
-/

namespace A264549.P12692246567008179851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264549.P12692246567008179851

/-! ## A264549.P10481728600964410644

`A264550(eq[10, A185782(n+1)])`
-/

namespace A264549.P10481728600964410644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264549.P10481728600964410644

/-!
# A264550: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264550, there is no canonical definition to state claims against.
-/

/-! ## A264550.P18388720182521724304

`A059905(A140774(n+1)*A140805(n+1))`
-/

namespace A264550.P18388720182521724304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A140774 (n + 1) * A140805 (n + 1)).toNat

end

end A264550.P18388720182521724304

/-! ## A264550.P16159853690552722698

`A059905(lcm(A140774(n+1), A140805(n+1)))`
-/

namespace A264550.P16159853690552722698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (Int.lcm (A140774 (n + 1)) (A140805 (n + 1)))

end

end A264550.P16159853690552722698

/-! ## A264550.P18445400942406903775

`A059905(A140774(n+1)+A140805(n+1)-1)`
-/

namespace A264550.P18445400942406903775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A140774 (n + 1) + (A140805 (n + 1) - 1)).toNat

end

end A264550.P18445400942406903775

/-! ## A264550.P5803418265796179228

`xor(A077655(A097083(2*n+1)), A342981(n+1))`
-/

namespace A264550.P5803418265796179228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077655 (A097083 (2 * n + 1)).toNat) (A342981 (n + 1))

end

end A264550.P5803418265796179228

/-!
# A264551: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264551, the canonical program `A264551.P1806395327726589184` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264551 has offset 1).

The definition of A264551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264551.P1806395327726589184

`2*a(n-1)+8*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=16`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A264551

/-- `2*a(n-1)+8*a(n-4)` -/
def P1806395327726589184.Spec : Prop :=
  ∀ n, (P1806395327726589184.a n : ℤ) = A264551 (n + 1)

theorem P1806395327726589184.correct : P1806395327726589184.Spec := by
  intro n
  simp only [A264551, Nat.add_sub_cancel]

end A264551

/-! ## A264551.P11912116709817825565

`A264570(n+3)/4`
-/

namespace A264551.P11912116709817825565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264570 (n + 3) : ℚ) / 4

end

end A264551.P11912116709817825565

namespace A264551

/-- `A264570(n+3)/4` -/
def P11912116709817825565.Spec : Prop :=
  ∀ n, P11912116709817825565.a n = (A264551 (n + 1) : ℚ)

end A264551

/-! ## A264551.P3305889330343926373

`A264550(∑[n+1]+2)`
-/

namespace A264551.P3305889330343926373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264551.P3305889330343926373

namespace A264551

/-- `A264550(∑[n+1]+2)` -/
def P3305889330343926373.Spec : Prop :=
  ∀ n, P3305889330343926373.a n = A264551 (n + 1)

end A264551

/-! ## A264551.P8382875851857732699

`record[gcd(A264405(n), A264550(n+1))]`
-/

namespace A264551.P8382875851857732699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A264405 n) (A264550 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264551.P8382875851857732699

namespace A264551

/-- `record[gcd(A264405(n), A264550(n+1))]` -/
def P8382875851857732699.Spec : Prop :=
  ∀ n, (P8382875851857732699.a n : ℤ) = A264551 (n + 1)

end A264551

/-!
# A264552: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264552, there is no canonical definition to state claims against.
-/

/-! ## A264552.P2880778279842650350

`A264550(∑[n+2]+4)`
-/

namespace A264552.P2880778279842650350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264552.P2880778279842650350

/-! ## A264552.P3994793961370382206

`or(char[1], A264550(A167614(n+1)))`
-/

namespace A264552.P3994793961370382206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264550 (A167614 (n + 1)).toNat)

end

end A264552.P3994793961370382206

/-! ## A264552.P96702182881283788

`or(char[1], A264550(A046691(n)+7))`
-/

namespace A264552.P96702182881283788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A264550 (A046691 n + 7).toNat)

end

end A264552.P96702182881283788

/-! ## A264552.P586594437612823420

`A264550(A167614(n+1))^A006530(gcd(n, n+1))`
-/

namespace A264552.P586594437612823420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264550 (A167614 (n + 1)).toNat : ℚ) ^ (A006530 (Nat.gcd n (n + 1)) : ℤ)

end

end A264552.P586594437612823420

/-! ## A264552.P16363994877478349525

`A000041(((-1)^n)²)*A264550(A167614(n+1))`
-/

namespace A264552.P16363994877478349525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A264550 (A167614 (n + 1)).toNat

end

end A264552.P16363994877478349525

/-!
# A264553: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264553, there is no canonical definition to state claims against.
-/

/-! ## A264553.P10857852494955752545

`A264550(A141214(n)+7)`
-/

namespace A264553.P10857852494955752545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A141214 n + 7).toNat

end

end A264553.P10857852494955752545

/-! ## A264553.P14215596909681448775

`A264550(A052905(n)+9)`
-/

namespace A264553.P14215596909681448775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A052905 n + 9).toNat

end

end A264553.P14215596909681448775

/-! ## A264553.P12947004335636767018

`A264550(A055999(n)+10)`
-/

namespace A264553.P12947004335636767018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A055999 n + 10).toNat

end

end A264553.P12947004335636767018

/-! ## A264553.P48435678683736983

`A264550(A167614(n+2)+1)`
-/

namespace A264553.P48435678683736983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A167614 (n + 2) + 1).toNat

end

end A264553.P48435678683736983

/-! ## A264553.P9663914283611342252

`A264550(A166136(n+2)-2)`
-/

namespace A264553.P9663914283611342252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A166136 (n + 2) - 2).toNat

end

end A264553.P9663914283611342252

/-!
# A264554: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264554, there is no canonical definition to state claims against.
-/

/-! ## A264554.P12756525080588589265

`A264550(A167499(n+3))`
-/

namespace A264554.P12756525080588589265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A167499 (n + 3)).toNat

end

end A264554.P12756525080588589265

/-! ## A264554.P11784243350403899108

`A264550(A155212(n)+13)`
-/

namespace A264554.P11784243350403899108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A155212 n + 13).toNat

end

end A264554.P11784243350403899108

/-! ## A264554.P805545898881973792

`A264550(A056000(n)+15)`
-/

namespace A264554.P805545898881973792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A056000 n + 15).toNat

end

end A264554.P805545898881973792

/-! ## A264554.P7275776640089889724

`A264550(eq[6, A131818(n+1)])`
-/

namespace A264554.P7275776640089889724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264554.P7275776640089889724

/-! ## A264554.P13670622036989868485

`A264550(A004767(n+3)+A000217(n))`
-/

namespace A264554.P13670622036989868485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A004767 (n + 3) + A000217 n).toNat

end

end A264554.P13670622036989868485

/-!
# A264555: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264555, there is no canonical definition to state claims against.
-/

/-! ## A264555.P14590056476293475969

`A264550(A166136(n+4))`
-/

namespace A264555.P14590056476293475969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A166136 (n + 4)).toNat

end

end A264555.P14590056476293475969

/-! ## A264555.P7960940263859162294

`A264550(A056115(n)+21)`
-/

namespace A264555.P7960940263859162294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A056115 n + 21).toNat

end

end A264555.P7960940263859162294

/-! ## A264555.P14459584071638417862

`A264550(eq[6, A256910(n)])`
-/

namespace A264555.P14459584071638417862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264555.P14459584071638417862

/-! ## A264555.P13002146094816657639

`A264550(eq[7, A131818(n+1)])`
-/

namespace A264555.P13002146094816657639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264555.P13002146094816657639

/-! ## A264555.P13255890394780687930

`A264550(Δ[A023545(n+1)]+10)`
-/

namespace A264555.P13255890394780687930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (f1 (n + 1) - f1 n + 10).toNat

end

end A264555.P13255890394780687930

/-!
# A264556: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change -1,1 -1,2 1,0 or 0,-1.

The programs for A264556, there is no canonical definition to state claims against.
-/

/-! ## A264556.P18171929505635014337

`A264550(A056119(n)+28)`
-/

namespace A264556.P18171929505635014337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A056119 n + 28).toNat

end

end A264556.P18171929505635014337

/-! ## A264556.P15748934791229084203

`A264550(eq[11, A066657(n)])`
-/

namespace A264556.P15748934791229084203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264556.P15748934791229084203

/-! ## A264556.P3573192122898801357

`A264550(eq[8, A131818(n+1)])`
-/

namespace A264556.P3573192122898801357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264556.P3573192122898801357

/-! ## A264556.P9315818859088504930

`A264550(A000124(n+7)-(n+1))`
-/

namespace A264556.P9315818859088504930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A264556.P9315818859088504930

/-! ## A264556.P15892694916918293150

`A264550(A155212(n+4)-A005843(n))`
-/

namespace A264556.P15892694916918293150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264550 (A155212 (n + 4) - A005843 n).toNat

end

end A264556.P15892694916918293150

/-!
# A264557: Number of n X 1 arrays of permutations of 0..n*1-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 3.

The programs for A264557, there is no canonical definition to state claims against.
-/

/-! ## A264557.P17521067294828706860

`∏[∑[char[3*n]]]`
-/

namespace A264557.P17521067294828706860
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264557.P17521067294828706860

/-! ## A264557.P13098738081655264827

`a(n-1)*∑[char[3*n]]` with `a(0)=1`
-/

namespace A264557.P13098738081655264827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264557.P13098738081655264827

/-! ## A264557.P2812466396585986312

`floor(∏[a(n-3)+1])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A264557.P2812466396585986312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A264557.P2812466396585986312

/-! ## A264557.P421132516009274895

`(floor(n/3)+1)*a(n-1)` with `a(0)=1`
-/

namespace A264557.P421132516009274895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (⌊(n : ℚ) / 3⌋ + 1) * a (n - 1)

end

end A264557.P421132516009274895

/-! ## A264557.P10537057570201817756

`∏[floor(n/3)+1]^ceil(sin(n)²)`
-/

namespace A264557.P10537057570201817756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A264557.P10537057570201817756

/-! ## A264557.P5989990216194919627

`a(n-1)-floor((2-n)/3)*a(n-1)` with `a(0)=1`
-/

namespace A264557.P5989990216194919627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(2 - (n : ℤ) : ℚ) / 3⌋ * a (n - 1)

end

end A264557.P5989990216194919627

/-! ## A264557.P14537652046546699612

`∏[A086161(n)]/A086161(n)`
-/

namespace A264557.P14537652046546699612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A086161 n : ℚ)

end

end A264557.P14537652046546699612

/-! ## A264557.P1221087754886540625

`∏[A008620(n+1)]/A008620(n+1)`
-/

namespace A264557.P1221087754886540625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008620 (n + 1) : ℚ)

end

end A264557.P1221087754886540625

/-! ## A264557.P377787100283373431

`A000142(n+1)/A022916(n+1)`
-/

namespace A264557.P377787100283373431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A022916 (n + 1) : ℚ)

end

end A264557.P377787100283373431

/-! ## A264557.P16165287363275587920

`sqrt(∏[A075561(n+1)])`
-/

namespace A264557.P16165287363275587920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A264557.P16165287363275587920

/-!
# A264558: Number of nX2 arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 3.

The programs for A264558, there is no canonical definition to state claims against.
-/

/-! ## A264558.P1203487380148486859

`A264560(∑[n+2])`
-/

namespace A264558.P1203487380148486859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264558.P1203487380148486859

/-! ## A264558.P13745836767825379747

`record[A264560(∑[A152271(n)])]`
-/

namespace A264558.P13745836767825379747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264560 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264558.P13745836767825379747

/-!
# A264559: Number of nX3 arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 3.

The programs for A264559, there is no canonical definition to state claims against.
-/

/-! ## A264559.P18343512324920986350

`A264560(∑[n+3]+1)`
-/

namespace A264559.P18343512324920986350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264560 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264559.P18343512324920986350

/-!
# A264561: Number of 2Xn arrays of permutations of 0..n*2-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 3.

The programs for A264561, there is no canonical definition to state claims against.
-/

/-! ## A264561.P928067874201957999

`A264560(∑[n+1]+2)`
-/

namespace A264561.P928067874201957999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264560 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264561.P928067874201957999

/-! ## A264561.P14055759442256775677

`record[A264560(A286235(n+1)+1)]`
-/

namespace A264561.P14055759442256775677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264560 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264561.P14055759442256775677

/-! ## A264561.P3823144339552617216

`record[A264560(n+3)/A113097(n)]`
-/

namespace A264561.P3823144339552617216
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264560 (n + 3) : ℚ) / (A113097 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264561.P3823144339552617216

/-!
# A264562: Number of 3Xn arrays of permutations of 0..n*3-1 with rows nondecreasing modulo 2 and columns nondecreasing modulo 3.

The programs for A264562, there is no canonical definition to state claims against.
-/

/-! ## A264562.P7958848630750911748

`A264560(∑[n+2]+4)`
-/

namespace A264562.P7958848630750911748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264560 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264562.P7958848630750911748

/-! ## A264562.P9125365459046208248

`A264560(A167614(n+1))+and(8, n)`
-/

namespace A264562.P9125365459046208248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264560 (A167614 (n + 1)).toNat + (Nat.land 8 n : ℤ)

end

end A264562.P9125365459046208248

/-!
# A264563: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264563, there is no canonical definition to state claims against.
-/

/-! ## A264563.P15132751660890149319

`A264569(∑[4*n]+1)`
-/

namespace A264563.P15132751660890149319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264563.P15132751660890149319

/-! ## A264563.P2098711268758738101

`record[A264569(Δ[A235355(n)])]`
-/

namespace A264563.P2098711268758738101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264563.P2098711268758738101

/-! ## A264563.P14357739219069785790

`record[A264569(A330613(n+1))]`
-/

namespace A264563.P14357739219069785790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264563.P14357739219069785790

/-! ## A264563.P16298201927284719738

`A264569(A001844(n))+char[10]`
-/

namespace A264563.P16298201927284719738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264563.P16298201927284719738

/-! ## A264563.P16438732355204353329

`record[gcd(A037012(n), A264569(n+1))]`
-/

namespace A264563.P16438732355204353329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A264569 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264563.P16438732355204353329

/-!
# A264564: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264564, there is no canonical definition to state claims against.
-/

/-! ## A264564.P13789897285648094096

`A264569(∑[n+3]+1)`
-/

namespace A264564.P13789897285648094096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264564.P13789897285648094096

/-! ## A264564.P13185008974970138387

`A264569(A052905(n)+3)+char[21]`
-/

namespace A264564.P13185008974970138387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A264564.P13185008974970138387

/-! ## A264564.P6879873232140907639

`or(A000007(n), A264569(A052905(n)+3))`
-/

namespace A264564.P6879873232140907639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A264569 (A052905 n + 3).toNat)

end

end A264564.P6879873232140907639

/-! ## A264564.P4998609939820488796

`A000034(2*n)*A264569(A052905(n)+3)`
-/

namespace A264564.P4998609939820488796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A264569 (A052905 n + 3).toNat

end

end A264564.P4998609939820488796

/-! ## A264564.P16683623343565043596

`(1-2*A000035(n))²*A264569(A052905(n)+3)`
-/

namespace A264564.P16683623343565043596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 * A264569 (A052905 n + 3).toNat

end

end A264564.P16683623343565043596

/-!
# A264565: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264565, there is no canonical definition to state claims against.
-/

/-! ## A264565.P843681403087214147

`A264569(A141214(n+1))`
-/

namespace A264565.P843681403087214147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A141214 (n + 1)).toNat

end

end A264565.P843681403087214147

/-! ## A264565.P9552811926274387558

`A264569(A055998(n+2))`
-/

namespace A264565.P9552811926274387558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A055998 (n + 2)).toNat

end

end A264565.P9552811926274387558

/-! ## A264565.P14674328246695919700

`A264569(A155212(n)+5)`
-/

namespace A264565.P14674328246695919700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A155212 n + 5).toNat

end

end A264565.P14674328246695919700

/-! ## A264565.P7073902517287438292

`A264569(eq[3, A215977(n)])`
-/

namespace A264565.P7073902517287438292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264565.P7073902517287438292

/-! ## A264565.P15924419641142654540

`A264569(A052905(n+1)+2)`
-/

namespace A264565.P15924419641142654540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A052905 (n + 1) + 2).toNat

end

end A264565.P15924419641142654540

/-!
# A264566: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264566, there is no canonical definition to state claims against.
-/

/-! ## A264566.P10004372672783045812

`A264569(Δ[A264443(n)])`
-/

namespace A264566.P10004372672783045812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (f1 (n + 1) - f1 n).toNat

end

end A264566.P10004372672783045812

/-! ## A264566.P5137258388815271767

`A264569(eq[4, A193592(n)])`
-/

namespace A264566.P5137258388815271767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264566.P5137258388815271767

/-! ## A264566.P2863618501007832539

`A264569(Δ[A023545(n+1)])`
-/

namespace A264566.P2863618501007832539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (f1 (n + 1) - f1 n).toNat

end

end A264566.P2863618501007832539

/-! ## A264566.P220429847781841513

`A264569(A246172(n+1)+10)`
-/

namespace A264566.P220429847781841513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A246172 (n + 1) + 10).toNat

end

end A264566.P220429847781841513

/-! ## A264566.P13051671109980118100

`A264569(eq[8, A057728(n+1)])`
-/

namespace A264566.P13051671109980118100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264566.P13051671109980118100

/-!
# A264567: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264567, there is no canonical definition to state claims against.
-/

/-! ## A264567.P9699353313803224903

`A264569(A052905(n+3))`
-/

namespace A264567.P9699353313803224903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A052905 (n + 3)).toNat

end

end A264567.P9699353313803224903

/-! ## A264567.P10934572127368516647

`A264569(eq[3, A219347(n)])`
-/

namespace A264567.P10934572127368516647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264567.P10934572127368516647

/-! ## A264567.P9518042692270300810

`A264569(eq[5, A193592(n)])`
-/

namespace A264567.P9518042692270300810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264567.P9518042692270300810

/-! ## A264567.P3290588925484105435

`A264569(eq[8, A258709(n)])`
-/

namespace A264567.P3290588925484105435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264567.P3290588925484105435

/-! ## A264567.P8422602062357298030

`A264569(A089071(n+8)-7)`
-/

namespace A264567.P8422602062357298030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A089071 (n + 8) - 7).toNat

end

end A264567.P8422602062357298030

/-!
# A264568: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264568, there is no canonical definition to state claims against.
-/

/-! ## A264568.P16538269651380437175

`A264569(eq[4, A219347(n)])`
-/

namespace A264568.P16538269651380437175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264568.P16538269651380437175

/-! ## A264568.P495475519791440252

`A264569(eq[6, A193592(n)])`
-/

namespace A264568.P495475519791440252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264568.P495475519791440252

/-! ## A264568.P9546524179227482647

`A264569(eq[7, A200370(n+1)])`
-/

namespace A264568.P9546524179227482647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264568.P9546524179227482647

/-! ## A264568.P15156112946616363266

`A264569(eq[10, A185782(n+1)])`
-/

namespace A264568.P15156112946616363266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264568.P15156112946616363266

/-! ## A264568.P5865349433318289368

`A264569(A089071(n+8)+n-1)`
-/

namespace A264568.P5865349433318289368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A089071 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A264568.P5865349433318289368

/-!
# A264569: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264569, there is no canonical definition to state claims against.
-/

/-! ## A264569.P15248263588725771430

`A097291(A198285(n+1))`
-/

namespace A264569.P15248263588725771430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097291 (A198285 (n + 1)).toNat

end

end A264569.P15248263588725771430

/-! ## A264569.P9048820935575179899

`A147981(A184271(n+1))`
-/

namespace A264569.P9048820935575179899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A184271 (n + 1)).toNat

end

end A264569.P9048820935575179899

/-! ## A264569.P13876985797825357485

`A000010(A103298(A214775(n)))`
-/

namespace A264569.P13876985797825357485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A103298 (A214775 n).toNat).toNat

end

end A264569.P13876985797825357485

/-!
# A264570: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264570, the canonical program `A264570.P11362510428778450365` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264570 has offset 1).

The definition of A264570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264570.P11362510428778450365

`2*a(n-1)+8*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A264570

/-- `2*a(n-1)+8*a(n-4)` -/
def P11362510428778450365.Spec : Prop :=
  ∀ n, (P11362510428778450365.a n : ℤ) = A264570 (n + 1)

theorem P11362510428778450365.correct : P11362510428778450365.Spec := by
  intro n
  simp only [A264570, Nat.add_sub_cancel]

end A264570

/-! ## A264570.P14909199800244310771

`A264551(n+3)/2-A264551(n+2)`
-/

namespace A264570.P14909199800244310771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264551 (n + 3) : ℚ) / 2 - (A264551 (n + 2) : ℚ)

end

end A264570.P14909199800244310771

namespace A264570

/-- `A264551(n+3)/2-A264551(n+2)` -/
def P14909199800244310771.Spec : Prop :=
  ∀ n, P14909199800244310771.a n = (A264570 (n + 1) : ℚ)

end A264570

/-! ## A264570.P10306821559572243398

`A264569(∑[n+1]+2)`
-/

namespace A264570.P10306821559572243398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264570.P10306821559572243398

namespace A264570

/-- `A264569(∑[n+1]+2)` -/
def P10306821559572243398.Spec : Prop :=
  ∀ n, P10306821559572243398.a n = A264570 (n + 1)

end A264570

/-! ## A264570.P11585579647500550337

`record[A264569(A117142(n+1)+2)]`
-/

namespace A264570.P11585579647500550337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A117142 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264570.P11585579647500550337

namespace A264570

/-- `record[A264569(A117142(n+1)+2)]` -/
def P11585579647500550337.Spec : Prop :=
  ∀ n, P11585579647500550337.a n = A264570 (n + 1)

end A264570

/-!
# A264571: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264571, there is no canonical definition to state claims against.
-/

/-! ## A264571.P14787763388123479671

`A264569(∑[n+2]+4)`
-/

namespace A264571.P14787763388123479671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264571.P14787763388123479671

/-! ## A264571.P4982206192951050255

`gcd(round(1/(n+2)), A264569(A167614(n+1)))`
-/

namespace A264571.P4982206192951050255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (1 / (n + 2 : ℚ))) (A264569 (A167614 (n + 1)).toNat)

end

end A264571.P4982206192951050255

/-! ## A264571.P17592392533235560774

`lcm(A033999(n), A264569(A167614(n+1)))`
-/

namespace A264571.P17592392533235560774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A264569 (A167614 (n + 1)).toNat)

end

end A264571.P17592392533235560774

/-! ## A264571.P16152386004471769646

`A264569(A167614(n+1))%A224176(n+1)`
-/

namespace A264571.P16152386004471769646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264569 (A167614 (n + 1)).toNat) (A224176 (n + 1))

end

end A264571.P16152386004471769646

/-! ## A264571.P17527505820155334018

`A264569(A000124(n+2)+2)%A133472(n)`
-/

namespace A264571.P17527505820155334018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264569 (A000124 (n + 2) + 2).toNat) (A133472 n)

end

end A264571.P17527505820155334018

/-!
# A264572: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264572, there is no canonical definition to state claims against.
-/

/-! ## A264572.P7370045473858845738

`A264569(A141214(n)+7)`
-/

namespace A264572.P7370045473858845738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A141214 n + 7).toNat

end

end A264572.P7370045473858845738

/-! ## A264572.P5959367086915306780

`A264569(A052905(n)+9)`
-/

namespace A264572.P5959367086915306780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A052905 n + 9).toNat

end

end A264572.P5959367086915306780

/-! ## A264572.P1929657136401902391

`A264569(A055999(n)+10)`
-/

namespace A264572.P1929657136401902391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A055999 n + 10).toNat

end

end A264572.P1929657136401902391

/-! ## A264572.P8548795223675077289

`A264569(A167614(n+2)+1)`
-/

namespace A264572.P8548795223675077289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A167614 (n + 2) + 1).toNat

end

end A264572.P8548795223675077289

/-! ## A264572.P10673814720368489027

`A264569(A112355(n+1)+4)`
-/

namespace A264572.P10673814720368489027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A112355 (n + 1) + 4).toNat

end

end A264572.P10673814720368489027

/-!
# A264573: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264573, there is no canonical definition to state claims against.
-/

/-! ## A264573.P8538465397340654828

`A264569(A155212(n)+13)`
-/

namespace A264573.P8538465397340654828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A155212 n + 13).toNat

end

end A264573.P8538465397340654828

/-! ## A264573.P3147243230995682656

`A264569(A056000(n)+15)`
-/

namespace A264573.P3147243230995682656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A056000 n + 15).toNat

end

end A264573.P3147243230995682656

/-! ## A264573.P16255362315321130870

`A264569(eq[7, A066657(n)])`
-/

namespace A264573.P16255362315321130870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264573.P16255362315321130870

/-! ## A264573.P1815624475445664138

`A264569(A051936(n+4)+14)`
-/

namespace A264573.P1815624475445664138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A051936 (n + 4) + 14).toNat

end

end A264573.P1815624475445664138

/-! ## A264573.P8846339047221887651

`A264569(eq[6, A131818(n+1)])`
-/

namespace A264573.P8846339047221887651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264573.P8846339047221887651

/-!
# A264574: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264574, there is no canonical definition to state claims against.
-/

/-! ## A264574.P1601830054839753545

`A264569(A056115(n)+21)`
-/

namespace A264574.P1601830054839753545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A056115 n + 21).toNat

end

end A264574.P1601830054839753545

/-! ## A264574.P4009184481118322556

`A264569(A246172(n+1)+20)`
-/

namespace A264574.P4009184481118322556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A246172 (n + 1) + 20).toNat

end

end A264574.P4009184481118322556

/-! ## A264574.P12794403391301940394

`A264569(eq[7, A131818(n+1)])`
-/

namespace A264574.P12794403391301940394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264574.P12794403391301940394

/-! ## A264574.P3692257104548804395

`A264569(Δ[A023545(n+1)]+10)`
-/

namespace A264574.P3692257104548804395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (f1 (n + 1) - f1 n + 10).toNat

end

end A264574.P3692257104548804395

/-! ## A264574.P4881729532748506958

`A264569(A089071(n+8)-(n+2))`
-/

namespace A264574.P4881729532748506958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A089071 (n + 8) - (n + 2 : ℤ)).toNat

end

end A264574.P4881729532748506958

/-!
# A264575: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 1,0 1,1 0,-1 or -1,1.

The programs for A264575, there is no canonical definition to state claims against.
-/

/-! ## A264575.P263506222482432986

`A264569(eq[11, A066657(n)])`
-/

namespace A264575.P263506222482432986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264575.P263506222482432986

/-! ## A264575.P13368339515753497084

`A264569(A055998(n+4)+10)`
-/

namespace A264575.P13368339515753497084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A055998 (n + 4) + 10).toNat

end

end A264575.P13368339515753497084

/-! ## A264575.P16994589844675596316

`A264569(A155212(n+2)+15)`
-/

namespace A264575.P16994589844675596316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A155212 (n + 2) + 15).toNat

end

end A264575.P16994589844675596316

/-! ## A264575.P10123893025044168985

`A264569(eq[8, A131818(n+1)])`
-/

namespace A264575.P10123893025044168985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264575.P10123893025044168985

/-! ## A264575.P12755848831150984615

`A264569(A000124(n+7)-(n+1))`
-/

namespace A264575.P12755848831150984615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264569 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A264575.P12755848831150984615

/-!
# A264576: Prime numbers such that sum of digits in base 8 equals product of digits in base 8.

The programs for A264576, there is no canonical definition to state claims against.
-/

/-! ## A264576.P16135060367928577111

`p?[eq[A053829(n), A309959(n)]]`
-/

namespace A264576.P16135060367928577111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053829 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309959 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A264576.P16135060367928577111

/-! ## A264576.P528538151231926410

`A006203(a(n-2)-1)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A264576.P528538151231926410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  A006203 (a (n - 2) - 1).toNat

end

end A264576.P528538151231926410

/-!
# A264578: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264578, there is no canonical definition to state claims against.
-/

/-! ## A264578.P9420597823042944515

`A264583(∑[n+3]+1)`
-/

namespace A264578.P9420597823042944515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264578.P9420597823042944515

/-! ## A264578.P2854715004839046082

`A326684(n)+A264583(A034856(n+2))`
-/

namespace A264578.P2854715004839046082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A264583 (A034856 (n + 2)).toNat

end

end A264578.P2854715004839046082

/-! ## A264578.P17463165002028322497

`A264583(A034856(n+2))+A000038(n+1)`
-/

namespace A264578.P17463165002028322497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A264578.P17463165002028322497

/-! ## A264578.P15673311283413313657

`A019431(2*n)*A264583(A034856(n+2))`
-/

namespace A264578.P15673311283413313657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019431 (2 * n) * A264583 (A034856 (n + 2)).toNat

end

end A264578.P15673311283413313657

/-! ## A264578.P16799643180031224809

`A059841(2*n)*A264583(A034856(n+2))`
-/

namespace A264578.P16799643180031224809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A264583 (A034856 (n + 2)).toNat

end

end A264578.P16799643180031224809

/-!
# A264579: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264579, there is no canonical definition to state claims against.
-/

/-! ## A264579.P1179474511277310922

`A264583(∑[n+4]+3)`
-/

namespace A264579.P1179474511277310922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A264579.P1179474511277310922

/-!
# A264580: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264580, there is no canonical definition to state claims against.
-/

/-! ## A264580.P16550525943376898254

`A264583(Δ[A264443(n)])`
-/

namespace A264580.P16550525943376898254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (f1 (n + 1) - f1 n).toNat

end

end A264580.P16550525943376898254

/-! ## A264580.P5935316641046162924

`A264583(A046691(n+3))`
-/

namespace A264580.P5935316641046162924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A046691 (n + 3)).toNat

end

end A264580.P5935316641046162924

/-! ## A264580.P2949262595663365058

`A264583(A056115(n)+11)`
-/

namespace A264580.P2949262595663365058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A056115 n + 11).toNat

end

end A264580.P2949262595663365058

/-! ## A264580.P5711864483032401073

`A264583(eq[2, A092921(n)])`
-/

namespace A264580.P5711864483032401073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264580.P5711864483032401073

/-! ## A264580.P17006667817997780523

`A264583(eq[3, A152157(n)])`
-/

namespace A264580.P17006667817997780523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264580.P17006667817997780523

/-!
# A264581: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264581, there is no canonical definition to state claims against.
-/

/-! ## A264581.P11541820432973585115

`A264583(A052905(n+3))`
-/

namespace A264581.P11541820432973585115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A052905 (n + 3)).toNat

end

end A264581.P11541820432973585115

/-! ## A264581.P1686798584387767159

`A264583(A302537(n)+15)`
-/

namespace A264581.P1686798584387767159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A302537 n + 15).toNat

end

end A264581.P1686798584387767159

/-! ## A264581.P3647992776607932369

`A264583(A056119(n)+16)`
-/

namespace A264581.P3647992776607932369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A056119 n + 16).toNat

end

end A264581.P3647992776607932369

/-! ## A264581.P15451809325113981010

`A264583(eq[3, A219347(n)])`
-/

namespace A264581.P15451809325113981010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264581.P15451809325113981010

/-! ## A264581.P5847419998334193577

`A264583(eq[5, A193592(n)])`
-/

namespace A264581.P5847419998334193577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264581.P5847419998334193577

/-!
# A264582: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264582, there is no canonical definition to state claims against.
-/

/-! ## A264582.P15190700110682244282

`A264583(eq[4, A219347(n)])`
-/

namespace A264582.P15190700110682244282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264582.P15190700110682244282

/-! ## A264582.P8509154519425049052

`A264583(eq[6, A193592(n)])`
-/

namespace A264582.P8509154519425049052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264582.P8509154519425049052

/-! ## A264582.P17325858819648571711

`A264583(A052905(n+4)-1)`
-/

namespace A264582.P17325858819648571711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A052905 (n + 4) - 1).toNat

end

end A264582.P17325858819648571711

/-! ## A264582.P17996584496388109011

`A264583(A046691(n+5)-2)`
-/

namespace A264582.P17996584496388109011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A046691 (n + 5) - 2).toNat

end

end A264582.P17996584496388109011

/-! ## A264582.P12709066898851598106

`A264583(eq[7, A200370(n+1)])`
-/

namespace A264582.P12709066898851598106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264582.P12709066898851598106

/-!
# A264583: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264583, there is no canonical definition to state claims against.
-/

/-! ## A264583.P5797751209561284034

`A287372(A000716(n))+A264655(n+1)`
-/

namespace A264583.P5797751209561284034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A000716 n).toNat + A264655 (n + 1)

end

end A264583.P5797751209561284034

/-! ## A264583.P6955516444551768609

`A264655(n+1)+A045701(A264638(n+5))`
-/

namespace A264583.P6955516444551768609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264655 (n + 1) + A045701 (A264638 (n + 5)).toNat

end

end A264583.P6955516444551768609

/-! ## A264583.P16997346238075694970

`and(A001263(n+1), A220658(A137582(n+1)))`
-/

namespace A264583.P16997346238075694970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001263 (n + 1)) (A220658 (A137582 (n + 1)).toNat)

end

end A264583.P16997346238075694970

/-! ## A264583.P10017609114141270553

`and(gcd(n, ∑[n]), A057978(n+1))`
-/

namespace A264583.P10017609114141270553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) (A057978 (n + 1))

end

end A264583.P10017609114141270553

/-! ## A264583.P5205715065561085516

`and(A026741(n), A057978(n+1))`
-/

namespace A264583.P5205715065561085516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026741 n) (A057978 (n + 1))

end

end A264583.P5205715065561085516

/-!
# A264584: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264584, the canonical program `A264584.P17939676009575011583` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264584 has offset 1).

The definition of A264584 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264584.P17939676009575011583

`a(n-3)+a(n-4)+2*a(n-5)-a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1, a(5)=1, a(6)=3, a(7)=1, a(8)=3, a(9)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A264584

/-- `a(n-3)+a(n-4)+2*a(n-5)-a(n-9)-a(n-10)` -/
def P17939676009575011583.Spec : Prop :=
  ∀ n, P17939676009575011583.a n = A264584 (n + 1)

theorem P17939676009575011583.correct : P17939676009575011583.Spec := by
  intro n
  simp only [A264584, Nat.add_sub_cancel]

end A264584

/-! ## A264584.P4047683721052315009

`A264583(∑[n]+1)`
-/

namespace A264584.P4047683721052315009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264584.P4047683721052315009

namespace A264584

/-- `A264583(∑[n]+1)` -/
def P4047683721052315009.Spec : Prop :=
  ∀ n, P4047683721052315009.a n = A264584 (n + 1)

end A264584

/-! ## A264584.P7678572710594078979

`A264583(A000124(n))%26`
-/

namespace A264584.P7678572710594078979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264583 (A000124 n).toNat) 26

end

end A264584.P7678572710594078979

namespace A264584

/-- `A264583(A000124(n))%26` -/
def P7678572710594078979.Spec : Prop :=
  ∀ n, P7678572710594078979.a n = A264584 (n + 1)

end A264584

/-! ## A264584.P12338209366129397369

`A057427(n)*A264583(A000124(n))`
-/

namespace A264584.P12338209366129397369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A264583 (A000124 n).toNat

end

end A264584.P12338209366129397369

namespace A264584

/-- `A057427(n)*A264583(A000124(n))` -/
def P12338209366129397369.Spec : Prop :=
  ∀ n, P12338209366129397369.a n = A264584 (n + 1)

end A264584

/-! ## A264584.P82117608614811446

`∑{d}[A264583(A000124(n)), A000010(#)]`
-/

namespace A264584.P82117608614811446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A264584.P82117608614811446

namespace A264584

/-- `∑{d}[A264583(A000124(n)), A000010(#)]` -/
def P82117608614811446.Spec : Prop :=
  ∀ n, P82117608614811446.a n = A264584 (n + 1)

end A264584

/-!
# A264585: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264585, there is no canonical definition to state claims against.
-/

/-! ## A264585.P17584693795990667698

`A264583(∑[n+1]+2)`
-/

namespace A264585.P17584693795990667698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264585.P17584693795990667698

/-! ## A264585.P7946762997952828440

`and(-1, A264583(A133263(n+1)))`
-/

namespace A264585.P7946762997952828440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A264583 (A133263 (n + 1)).toNat)

end

end A264585.P7946762997952828440

/-! ## A264585.P7441842417000258371

`record[A010054(n)*A264583(n+2)]`
-/

namespace A264585.P7441842417000258371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264583 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264585.P7441842417000258371

/-! ## A264585.P1332805036966835756

`record[A103452(n)*A264583(n+3)]`
-/

namespace A264585.P1332805036966835756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A264583 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264585.P1332805036966835756

/-! ## A264585.P11926589782254617885

`record[A264583(n+2)/A117401(n)]`
-/

namespace A264585.P11926589782254617885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264583 (n + 2) : ℚ) / (A117401 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264585.P11926589782254617885

/-!
# A264586: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264586, there is no canonical definition to state claims against.
-/

/-! ## A264586.P4866039643079918023

`A264583(∑[n+2]+4)`
-/

namespace A264586.P4866039643079918023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264586.P4866039643079918023

/-! ## A264586.P289826305390739491

`A264583(A167614(n+1))+C(n, 64)`
-/

namespace A264586.P289826305390739491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167614 (n + 1)).toNat + (Nat.choose n 64 : ℤ)

end

end A264586.P289826305390739491

/-! ## A264586.P4900815606978218257

`A264583(A167614(n+1))+A011730(n)`
-/

namespace A264586.P4900815606978218257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167614 (n + 1)).toNat + A011730 n

end

end A264586.P4900815606978218257

/-! ## A264586.P1319154047721024921

`A264583(A167614(n+1))+A025469(n)`
-/

namespace A264586.P1319154047721024921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167614 (n + 1)).toNat + A025469 n

end

end A264586.P1319154047721024921

/-! ## A264586.P8601479253482030865

`A264583(A167614(n+1))+A184955(n)`
-/

namespace A264586.P8601479253482030865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167614 (n + 1)).toNat + A184955 n

end

end A264586.P8601479253482030865

/-!
# A264587: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264587, there is no canonical definition to state claims against.
-/

/-! ## A264587.P8374025563866177707

`A264583(C(n+5, 2)-n)`
-/

namespace A264587.P8374025563866177707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (Nat.choose (n + 5) 2 - n)

end

end A264587.P8374025563866177707

/-! ## A264587.P5932292532249138163

`A264583(A145018(n+4))`
-/

namespace A264587.P5932292532249138163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A145018 (n + 4)).toNat

end

end A264587.P5932292532249138163

/-! ## A264587.P5501984528166599589

`A264583(A141214(n)+7)`
-/

namespace A264587.P5501984528166599589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A141214 n + 7).toNat

end

end A264587.P5501984528166599589

/-! ## A264587.P17518205977403854679

`A264583(A052905(n)+9)`
-/

namespace A264587.P17518205977403854679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A052905 n + 9).toNat

end

end A264587.P17518205977403854679

/-! ## A264587.P17531730485518901288

`A264583(A055999(n)+10)`
-/

namespace A264587.P17531730485518901288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A055999 n + 10).toNat

end

end A264587.P17531730485518901288

/-!
# A264588: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264588, there is no canonical definition to state claims against.
-/

/-! ## A264588.P7922264524224667827

`A264583(A167499(n+3))`
-/

namespace A264588.P7922264524224667827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167499 (n + 3)).toNat

end

end A264588.P7922264524224667827

/-! ## A264588.P15188673122289600243

`A264583(A155212(n)+13)`
-/

namespace A264588.P15188673122289600243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A155212 n + 13).toNat

end

end A264588.P15188673122289600243

/-! ## A264588.P16450080937133898344

`A264583(A056000(n)+15)`
-/

namespace A264588.P16450080937133898344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A056000 n + 15).toNat

end

end A264588.P16450080937133898344

/-! ## A264588.P13496864479644041492

`A264583(eq[7, A066657(n)])`
-/

namespace A264588.P13496864479644041492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264588.P13496864479644041492

/-! ## A264588.P7589214412041165778

`A264583(A167614(n+3)+2)`
-/

namespace A264588.P7589214412041165778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167614 (n + 3) + 2).toNat

end

end A264588.P7589214412041165778

/-!
# A264589: Number of (6+1)X(n+1) arrays of permutations of 0..n*7+6 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264589, there is no canonical definition to state claims against.
-/

/-! ## A264589.P7728569497298071620

`A264583(A166136(n+4))`
-/

namespace A264589.P7728569497298071620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A166136 (n + 4)).toNat

end

end A264589.P7728569497298071620

/-! ## A264589.P4046362248424784371

`A264583(A056115(n)+21)`
-/

namespace A264589.P4046362248424784371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A056115 n + 21).toNat

end

end A264589.P4046362248424784371

/-! ## A264589.P7795836261243118366

`A264583(A167499(n+4)+1)`
-/

namespace A264589.P7795836261243118366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167499 (n + 4) + 1).toNat

end

end A264589.P7795836261243118366

/-! ## A264589.P15728400201192461669

`A264583(A167614(n+4)+3)`
-/

namespace A264589.P15728400201192461669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167614 (n + 4) + 3).toNat

end

end A264589.P15728400201192461669

/-! ## A264589.P3970325168995171247

`A264583(A000217(n+5)+6)`
-/

namespace A264589.P3970325168995171247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A000217 (n + 5) + 6).toNat

end

end A264589.P3970325168995171247

/-!
# A264590: Number of (7+1)X(n+1) arrays of permutations of 0..n*8+7 with each element having directed index change 1,0 0,-1 1,2 or -1,1.

The programs for A264590, there is no canonical definition to state claims against.
-/

/-! ## A264590.P3451577177561968912

`A264583(A167487(n+5))`
-/

namespace A264590.P3451577177561968912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167487 (n + 5)).toNat

end

end A264590.P3451577177561968912

/-! ## A264590.P5867660933137086599

`A264583(A056119(n)+28)`
-/

namespace A264590.P5867660933137086599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A056119 n + 28).toNat

end

end A264590.P5867660933137086599

/-! ## A264590.P3721119324494267873

`A264583(eq[11, A066657(n)])`
-/

namespace A264590.P3721119324494267873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264590.P3721119324494267873

/-! ## A264590.P1246491077070641739

`A264583(A166136(n+5)+1)`
-/

namespace A264590.P1246491077070641739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A166136 (n + 5) + 1).toNat

end

end A264590.P1246491077070641739

/-! ## A264590.P982057997804274575

`A264583(A167499(n+5)+2)`
-/

namespace A264590.P982057997804274575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264583 (A167499 (n + 5) + 2).toNat

end

end A264590.P982057997804274575

/-!
# A264591: Let G[1](q) denote the g.f. for A003114 and G[2](q) the g.f. for A003106 (the two Rogers-Ramanujan identities). For i>=3, let G[i](q) = (G[i-1](q)-G[i-2](q))/q^(i-2). Sequence gives coefficients of G[4](q).

The programs for A264591, there is no canonical definition to state claims against.
-/

/-! ## A264591.P17882089499242739549

`A003106(n+2)-A006141(n+3)`
-/

namespace A264591.P17882089499242739549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 2) - A006141 (n + 3)

end

end A264591.P17882089499242739549

/-! ## A264591.P13740256662969295444

`A003114(n+2)-(A006141(n+2)+A006141(n+3))`
-/

namespace A264591.P13740256662969295444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 (n + 2) - (A006141 (n + 2) + A006141 (n + 3))

end

end A264591.P13740256662969295444

/-! ## A264591.P17783980146367834960

`A003106(n+2)+A003106(n+3)-A003114(n+3)`
-/

namespace A264591.P17783980146367834960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 2) + (A003106 (n + 3) - A003114 (n + 3))

end

end A264591.P17783980146367834960

/-! ## A264591.P8692191426964162311

`A048766(A339104(A042948(n)))`
-/

namespace A264591.P8692191426964162311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A339104 (A042948 n).toNat).toNat

end

end A264591.P8692191426964162311

/-! ## A264591.P3784975868818167508

`A026801(lt[A320018(n+1), A185317(n)])`
-/

namespace A264591.P3784975868818167508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026801 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264591.P3784975868818167508

/-!
# A264592: Let G[1](q) denote the g.f. for A003114 and G[2](q) the g.f. for A003106 (the two Rogers-Ramanujan identities). For i>=3, let G[i](q) = (G[i-1](q)-G[i-2](q))/q^(i-2). Sequence gives coefficients of G[5](q).

The programs for A264592, there is no canonical definition to state claims against.
-/

/-! ## A264592.P9257308842656517079

`A006141(n+4)-A264591(n+3)`
-/

namespace A264592.P9257308842656517079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 4) - A264591 (n + 3)

end

end A264592.P9257308842656517079

/-! ## A264592.P8139709942312240368

`A003106(n+3)-(A264591(n+1)+A264591(n+3))`
-/

namespace A264592.P8139709942312240368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 3) - (A264591 (n + 1) + A264591 (n + 3))

end

end A264592.P8139709942312240368

/-! ## A264592.P9219852108488037811

`A185329(lt[A378981(2*n+3), A114640(2*n)])`
-/

namespace A264592.P9219852108488037811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378981 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114640 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264592.P9219852108488037811

/-! ## A264592.P8436717603339084263

`A025152(lt[A185329(2*(n+1)), A339169(2*(n+1))+1])`
-/

namespace A264592.P8436717603339084263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339169 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264592.P8436717603339084263

/-! ## A264592.P18417356995861649948

`A185329(lt[A324221(n), A324204(n+3)])`
-/

namespace A264592.P18417356995861649948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324204 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264592.P18417356995861649948

/-!
# A264593: Let G[1](q) denote the g.f. for A003114 and G[2](q) the g.f. for A003106 (the two Rogers-Ramanujan identities). For i>=3, let G[i](q) = (G[i-1](q)-G[i-2](q))/q^(i-2). Sequence gives coefficients of G[6](q).

The programs for A264593, there is no canonical definition to state claims against.
-/

/-! ## A264593.P13681571472791014696

`A264591(n+4)-A264592(n+4)`
-/

namespace A264593.P13681571472791014696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264591 (n + 4) - A264592 (n + 4)

end

end A264593.P13681571472791014696

/-! ## A264593.P2075830598396714239

`A025153(lt[A026831(n+1), A008616(n)])`
-/

namespace A264593.P2075830598396714239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264593.P2075830598396714239

/-! ## A264593.P2133207852578083875

`A025153(lt[A339172(n), A029205(n)])`
-/

namespace A264593.P2133207852578083875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339172 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264593.P2133207852578083875

/-! ## A264593.P4325035749537254177

`A025153(lt[A160239(n), A270339(n+5)])`
-/

namespace A264593.P4325035749537254177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264593.P4325035749537254177

/-! ## A264593.P3045662473243359041

`A025153(lt[A283474(n), A334887(n+3)])`
-/

namespace A264593.P3045662473243359041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283474 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334887 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264593.P3045662473243359041

/-!
# A264594: Let G[1](q) denote the g.f. for A003114 and G[2](q) the g.f. for A003106 (the two Rogers-Ramanujan identities). For i>=3, let G[i](q) = (G[i-1](q)-G[i-2](q))/q^(i-2). Sequence gives coefficients of G[7](q).

The programs for A264594, there is no canonical definition to state claims against.
-/

/-! ## A264594.P3156975457382708772

`A264592(n+5)-A264593(n+5)`
-/

namespace A264594.P3156975457382708772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264592 (n + 5) - A264593 (n + 5)

end

end A264594.P3156975457382708772

/-! ## A264594.P9938334405259572829

`A025154(lt[A339172(n), A029205(n)])`
-/

namespace A264594.P9938334405259572829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339172 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264594.P9938334405259572829

/-! ## A264594.P17900103990867377892

`A025154(lt[A339172(n), A029206(n)])`
-/

namespace A264594.P17900103990867377892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339172 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264594.P17900103990867377892

/-! ## A264594.P12118243298587216403

`A025154(lt[A007318(3*n), A056781(n+1)])`
-/

namespace A264594.P12118243298587216403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025154 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264594.P12118243298587216403

/-!
# A264595: Let G[1](q) denote the g.f. for A003114 and G[2](q) the g.f. for A003106 (the two Rogers-Ramanujan identities). For i>=3, let G[i](q) = (G[i-1](q)-G[i-2](q))/q^(i-2). Sequence gives coefficients of G[8](q).

The programs for A264595, there is no canonical definition to state claims against.
-/

/-! ## A264595.P14873414146531459895

`A264593(n+6)-A264594(n+6)`
-/

namespace A264595.P14873414146531459895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264593 (n + 6) - A264594 (n + 6)

end

end A264595.P14873414146531459895

/-! ## A264595.P2372368257824360369

`A025155(lt[A341334(2*n+5), A122843(3*n+4)])`
-/

namespace A264595.P2372368257824360369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341334 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264595.P2372368257824360369

/-! ## A264595.P2760277844496406894

`A025155(lt[A180997(n+1), A258208(3*n+5)])`
-/

namespace A264595.P2760277844496406894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258208 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264595.P2760277844496406894

/-! ## A264595.P4365071412099601108

`A025155(lt[A109466(2*n+3), A346412(n+1)])`
-/

namespace A264595.P4365071412099601108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264595.P4365071412099601108

/-! ## A264595.P16420527324722809492

`A025155(lt[A329291(3*n+4), A004086(2*(n+2))])`
-/

namespace A264595.P16420527324722809492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329291 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025155 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264595.P16420527324722809492

/-!
# A264596: Let S_n be the list of the first n nonnegative numbers written in binary, with least significant bits on the left, and sorted into lexicographic order; a(n) = position of n in S_n, starting indexing at 0.

The programs for A264596, the canonical program `A264596.P18285612338467113733` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264596 has offset 0).

The definition of A264596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264596.P18285612338467113733

`a(floor(n/2))+n-floor(n/(n%2+1))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A264596

/-- `a(floor(n/2))+n-floor(n/(n%2+1))` -/
def P18285612338467113733.Spec : Prop :=
  ∀ n, P18285612338467113733.a n = A264596 n

theorem P18285612338467113733.correct : P18285612338467113733.Spec := by
  intro n
  simp only [A264596]

end A264596

/-! ## A264596.P13955560503787355761

`n-A233931(n)`
-/

namespace A264596.P13955560503787355761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A233931 n

end

end A264596.P13955560503787355761

namespace A264596

/-- `n-A233931(n)` -/
def P13955560503787355761.Spec : Prop :=
  ∀ n, P13955560503787355761.a n = A264596 n

end A264596

/-! ## A264596.P7068652496111934753

`A088371(n+1)-1`
-/

namespace A264596.P7068652496111934753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088371 (n + 1) - 1

end

end A264596.P7068652496111934753

namespace A264596

/-- `A088371(n+1)-1` -/
def P7068652496111934753.Spec : Prop :=
  ∀ n, P7068652496111934753.a n = A264596 n

end A264596

/-! ## A264596.P2948027017953166253

`n-(A354158(n+1)+1)`
-/

namespace A264596.P2948027017953166253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A354158 (n + 1) + 1)

end

end A264596.P2948027017953166253

namespace A264596

/-- `n-(A354158(n+1)+1)` -/
def P2948027017953166253.Spec : Prop :=
  ∀ n, P2948027017953166253.a n = A264596 n

end A264596

/-! ## A264596.P11755517188566948165

`A004483(A088371(n+1))`
-/

namespace A264596.P11755517188566948165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A088371 (n + 1)).toNat

end

end A264596.P11755517188566948165

namespace A264596

/-- `A004483(A088371(n+1))` -/
def P11755517188566948165.Spec : Prop :=
  ∀ n, P11755517188566948165.a n = A264596 n

end A264596

/-! ## A264596.P17728742675473252774

`A233905(n)+A000120(n)`
-/

namespace A264596.P17728742675473252774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + A000120 n

end

end A264596.P17728742675473252774

namespace A264596

/-- `A233905(n)+A000120(n)` -/
def P17728742675473252774.Spec : Prop :=
  ∀ n, P17728742675473252774.a n = A264596 n

end A264596

/-! ## A264596.P3789147915042878781

`A228451(n)-A233905(n)`
-/

namespace A264596.P3789147915042878781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228451 n - A233905 n

end

end A264596.P3789147915042878781

namespace A264596

/-- `A228451(n)-A233905(n)` -/
def P3789147915042878781.Spec : Prop :=
  ∀ n, P3789147915042878781.a n = A264596 n

end A264596

/-! ## A264596.P9357704349024931980

`A233905(n)+log2(A001316(n))`
-/

namespace A264596.P9357704349024931980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A233905 n : ℝ) + Real.logb 2 (A001316 n : ℝ)

end

end A264596.P9357704349024931980

namespace A264596

/-- `A233905(n)+log2(A001316(n))` -/
def P9357704349024931980.Spec : Prop :=
  ∀ n, P9357704349024931980.a n = (A264596 n : ℝ)

end A264596

/-! ## A264596.P15835287980175995001

`A023443(n-A354158(n+1))`
-/

namespace A264596.P15835287980175995001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n : ℤ) - A354158 (n + 1)).toNat

end

end A264596.P15835287980175995001

namespace A264596

/-- `A023443(n-A354158(n+1))` -/
def P15835287980175995001.Spec : Prop :=
  ∀ n, P15835287980175995001.a n = A264596 n

end A264596

/-! ## A264596.P14389032217091546663

`A233905(n)+n-A011371(n)`
-/

namespace A264596.P14389032217091546663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((n : ℤ) - A011371 n)

end

end A264596.P14389032217091546663

namespace A264596

/-- `A233905(n)+n-A011371(n)` -/
def P14389032217091546663.Spec : Prop :=
  ∀ n, P14389032217091546663.a n = A264596 n

end A264596

/-! ## A264596.P8560597915286079020

`A233904(n)+n-A233905(n)`
-/

namespace A264596.P8560597915286079020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233904 n + ((n : ℤ) - A233905 n)

end

end A264596.P8560597915286079020

namespace A264596

/-- `A233904(n)+n-A233905(n)` -/
def P8560597915286079020.Spec : Prop :=
  ∀ n, P8560597915286079020.a n = A264596 n

end A264596

/-! ## A264596.P9773324951280109386

`A233905(n)+∑{e}[A071044(n), #]`
-/

namespace A264596.P9773324951280109386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A264596.P9773324951280109386

namespace A264596

/-- `A233905(n)+∑{e}[A071044(n), #]` -/
def P9773324951280109386.Spec : Prop :=
  ∀ n, P9773324951280109386.a n = A264596 n

end A264596

/-! ## A264596.P14961771078499238717

`A063787(n+1)+A233905(n)-1`
-/

namespace A264596.P14961771078499238717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) + (A233905 n - 1)

end

end A264596.P14961771078499238717

namespace A264596

/-- `A063787(n+1)+A233905(n)-1` -/
def P14961771078499238717.Spec : Prop :=
  ∀ n, P14961771078499238717.a n = A264596 n

end A264596

/-! ## A264596.P4682535697447247541

`(A233904(n)+n+A000120(n))/2`
-/

namespace A264596.P4682535697447247541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233904 n + (n : ℤ) + A000120 n : ℚ) / 2

end

end A264596.P4682535697447247541

namespace A264596

/-- `(A233904(n)+n+A000120(n))/2` -/
def P4682535697447247541.Spec : Prop :=
  ∀ n, P4682535697447247541.a n = (A264596 n : ℚ)

end A264596

/-! ## A264596.P6595658640542025024

`A233905(n)+2*n-A005187(n)`
-/

namespace A264596.P6595658640542025024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((2 * n : ℤ) - A005187 n)

end

end A264596.P6595658640542025024

namespace A264596

/-- `A233905(n)+2*n-A005187(n)` -/
def P6595658640542025024.Spec : Prop :=
  ∀ n, P6595658640542025024.a n = A264596 n

end A264596

/-! ## A264596.P14579042540849880954

`A233905(n)+A001222(A071044(n))`
-/

namespace A264596.P14579042540849880954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + A001222 (A071044 n).toNat

end

end A264596.P14579042540849880954

namespace A264596

/-- `A233905(n)+A001222(A071044(n))` -/
def P14579042540849880954.Spec : Prop :=
  ∀ n, P14579042540849880954.a n = A264596 n

end A264596

/-! ## A264596.P14866238259929660179

`A354158(A001316(n))+A088371(n+1)`
-/

namespace A264596.P14866238259929660179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354158 (A001316 n).toNat + A088371 (n + 1)

end

end A264596.P14866238259929660179

namespace A264596

/-- `A354158(A001316(n))+A088371(n+1)` -/
def P14866238259929660179.Spec : Prop :=
  ∀ n, P14866238259929660179.a n = A264596 n

end A264596

/-! ## A264596.P911640755329257284

`A160383(n)+A233905(n)+A160385(n)`
-/

namespace A264596.P911640755329257284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n + (A233905 n + A160385 n)

end

end A264596.P911640755329257284

namespace A264596

/-- `A160383(n)+A233905(n)+A160385(n)` -/
def P911640755329257284.Spec : Prop :=
  ∀ n, P911640755329257284.a n = A264596 n

end A264596

/-! ## A264596.P15819936523532349104

`A233905(n)+n-∑[A007814(A302436(n))]`
-/

namespace A264596.P15819936523532349104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A302436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264596.P15819936523532349104

namespace A264596

/-- `A233905(n)+n-∑[A007814(A302436(n))]` -/
def P15819936523532349104.Spec : Prop :=
  ∀ n, P15819936523532349104.a n = A264596 n

end A264596

/-! ## A264596.P3047126533273937476

`A233905(n)+n+1-A057427(n+1)-A005187(n)+n`
-/

namespace A264596.P3047126533273937476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 n + ((n + 1 : ℤ) - A057427 (n + 1) - A005187 n + (n : ℤ))

end

end A264596.P3047126533273937476

namespace A264596

/-- `A233905(n)+n+1-A057427(n+1)-A005187(n)+n` -/
def P3047126533273937476.Spec : Prop :=
  ∀ n, P3047126533273937476.a n = A264596 n

end A264596

/-!
# A264597: Triangle T(n,m) (n >= 2, 0 <= m <= n-1) read by rows, defined in Comments.

The programs for A264597, there is no canonical definition to state claims against.
-/

/-! ## A264597.P14596751849279799940

`A295665(eq[0, A147599(n)])`
-/

namespace A264597.P14596751849279799940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264597.P14596751849279799940

/-! ## A264597.P13452772335348426303

`A295665(eq[0, A284316(n)])`
-/

namespace A264597.P13452772335348426303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264597.P13452772335348426303

/-! ## A264597.P6968547346361990032

`A295665(lt[A147599(n), 1])`
-/

namespace A264597.P6968547346361990032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147599 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A264597.P6968547346361990032

/-! ## A264597.P4887425180814829692

`A120454(A121336(n)^A080586(n))`
-/

namespace A264597.P4887425180814829692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (SequenceMachineLib.roundAway ((A121336 n : ℚ) ^ (A080586 n : ℤ))).toNat

end

end A264597.P4887425180814829692

/-! ## A264597.P2224951825572114088

`A120454(A121336(n)*A348948(n+1))`
-/

namespace A264597.P2224951825572114088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (A121336 n * A348948 (n + 1)).toNat

end

end A264597.P2224951825572114088

/-!
# A264598: Row sums of triangle in A264597.

The programs for A264598, there is no canonical definition to state claims against.
-/

/-! ## A264598.P212549477554016702

`2*A257007(n+3)`
-/

namespace A264598.P212549477554016702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257007 (n + 3)

end

end A264598.P212549477554016702

/-! ## A264598.P1347655823956809126

`Δ[2*A264599(n+2)]`
-/

namespace A264598.P1347655823956809126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264598.P1347655823956809126

/-! ## A264598.P6545016679451364790

`A004277(A257007(n+3))`
-/

namespace A264598.P6545016679451364790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A257007 (n + 3)).toNat

end

end A264598.P6545016679451364790

/-! ## A264598.P16908833691960218259

`A000267(A257007(n+3)²)`
-/

namespace A264598.P16908833691960218259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A257007 (n + 3) ^ 2).toNat

end

end A264598.P16908833691960218259

/-! ## A264598.P5981345797847370139

`A005843(Δ[A264599(n+2)])`
-/

namespace A264598.P5981345797847370139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A264598.P5981345797847370139

/-!
# A264599: Partial sums of A257007.

The programs for A264599, there is no canonical definition to state claims against.
-/

/-! ## A264599.P17136988343465201012

`∑[A257007(n+1)]`
-/

namespace A264599.P17136988343465201012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264599.P17136988343465201012

/-! ## A264599.P8054219402869533239

`∑{d}[A011782(n), A257007(A000005(#)+1)]`
-/

namespace A264599.P8054219402869533239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A257007 (A000005 d + 1).toNat

end

end A264599.P8054219402869533239

/-! ## A264599.P5854680967478761277

`A089867(n²)-A006218(n)`
-/

namespace A264599.P5854680967478761277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (n ^ 2) - A006218 n

end

end A264599.P5854680967478761277

/-! ## A264599.P16006062670975397805

`A011371(A091225(n)+A003192(n+1))`
-/

namespace A264599.P16006062670975397805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A091225 n + A003192 (n + 1)).toNat

end

end A264599.P16006062670975397805

