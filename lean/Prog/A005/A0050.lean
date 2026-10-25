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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B006.C002
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
# A005001: a(n) = Sum_{k=0..n-1} Bell(k), where the Bell numbers Bell(k) are given in A000110.

The programs for A005001, there is no canonical definition to state claims against.
-/

/-! ## A005001.P12466089598662876219

`A000110(n)-A171859(n)`
-/

namespace A005001.P12466089598662876219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A171859 n

end

end A005001.P12466089598662876219

/-! ## A005001.P7989213986016747651

`∑[∑{d}[n, A034743(#)]]`
-/

namespace A005001.P7989213986016747651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A034743 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005001.P7989213986016747651

/-! ## A005001.P8756897037098412512

`∑[A106436(∑[n]+1)]`
-/

namespace A005001.P8756897037098412512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005001.P8756897037098412512

/-! ## A005001.P2151118473591723322

`∑[A205574(∑[n]+1)]`
-/

namespace A005001.P2151118473591723322
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005001.P2151118473591723322

/-! ## A005001.P663158758621484966

`∑[A011971(C(n, 2))]-1`
-/

namespace A005001.P663158758621484966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005001.P663158758621484966

/-! ## A005001.P1091086127379169578

`∑[A000110(abs(1-n))]-1`
-/

namespace A005001.P1091086127379169578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005001.P1091086127379169578

/-! ## A005001.P10518732149122098903

`∑[A186020(∑[n]-n)]-1`
-/

namespace A005001.P10518732149122098903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005001.P10518732149122098903

/-! ## A005001.P7718341328252862918

`A000110(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A005001.P7718341328252862918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000110 (n - 1) + a (n - 1)

end

end A005001.P7718341328252862918

/-! ## A005001.P12299723089459520801

`∑[A011971(A161680(n))]-1`
-/

namespace A005001.P12299723089459520801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005001.P12299723089459520801

/-! ## A005001.P9850995172357355936

`∑[A095149(A000124(n))]-1`
-/

namespace A005001.P9850995172357355936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A005001.P9850995172357355936

/-!
# A005002: Number of rhyme schemes (see reference for precise definition).

The programs for A005002, there is no canonical definition to state claims against.
-/

/-! ## A005002.P15190254328663355079

`A123346(∑[n])+2*a(n-1)` with `a(0)=1`
-/

namespace A005002.P15190254328663355079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123346 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * a (n - 1)

end

end A005002.P15190254328663355079

/-! ## A005002.P9198865178090616096

`A000110(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A005002.P9198865178090616096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n + 1) + 2 * a (n - 1)

end

end A005002.P9198865178090616096

/-! ## A005002.P8935244553456621478

`A285013(2*n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A005002.P8935244553456621478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A285013 (2 * n + 1) + 2 * a (n - 1)

end

end A005002.P8935244553456621478

/-! ## A005002.P3096648844433315860

`record[A186020(n)]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A005002.P3096648844433315860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (a (n - 1) + a (n - 1))

end

end A005002.P3096648844433315860

/-! ## A005002.P591119417221085523

`record[A205574(n)]+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A005002.P591119417221085523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (a (n - 1) + a (n - 1))

end

end A005002.P591119417221085523

/-! ## A005002.P521854670112793576

`A186020(∑[n+1])+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A005002.P521854670112793576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) + (a (n - 1) + a (n - 1))

end

end A005002.P521854670112793576

/-!
# A005003: Number of rhyme schemes (see reference for precise definition).

The programs for A005003, there is no canonical definition to state claims against.
-/

/-! ## A005003.P13274673643321862881

`A058692(n+2)+3*a(n-1)` with `a(0)=1`
-/

namespace A005003.P13274673643321862881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058692 (n + 2) + 3 * a (n - 1)

end

end A005003.P13274673643321862881

/-!
# A005004: Davenport-Schinzel numbers of degree n on 3 symbols.

The programs for A005004, the canonical program `A005004.P7713551994303709976` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005004 has offset 1).

The definition of A005004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005004.P12782067735992849286

`comp[or(2, n+3)]+1+n`
-/

namespace A005004.P12782067735992849286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 + n

end

end A005004.P12782067735992849286

namespace A005004

/-- `comp[or(2, n+3)]+1+n` -/
def P12782067735992849286.Spec : Prop :=
  ∀ n, (P12782067735992849286.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P7713551994303709976

`a(n-2)+6` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005004

/-- `a(n-2)+6` -/
def P7713551994303709976.Spec : Prop :=
  ∀ n, (P7713551994303709976.a n : ℤ) = A005004 (n + 1)

theorem P7713551994303709976.correct : P7713551994303709976.Spec := by
  intro n
  simp only [A005004, Nat.add_sub_cancel]

end A005004

/-! ## A005004.P2562050094509861426

`∑[2*a(n%2)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A005004.P2562050094509861426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 3] fun n f1 =>
  2 * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005004.P2562050094509861426

namespace A005004

/-- `∑[2*a(n%2)]` -/
def P2562050094509861426.Spec : Prop :=
  ∀ n, (P2562050094509861426.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P2472223213301799049

`eq[1, C(n, and(2, n))]+1+n`
-/

namespace A005004.P2472223213301799049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1 + n

end

end A005004.P2472223213301799049

namespace A005004

/-- `eq[1, C(n, and(2, n))]+1+n` -/
def P2472223213301799049.Spec : Prop :=
  ∀ n, (P2472223213301799049.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P12053130044048056099

`∑[ceil(2^(lcm(2, n)/(n+1)))]`
-/

namespace A005004.P12053130044048056099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℝ) ^ ((Nat.lcm 2 n : ℚ) / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005004.P12053130044048056099

namespace A005004

/-- `∑[ceil(2^(lcm(2, n)/(n+1)))]` -/
def P12053130044048056099.Spec : Prop :=
  ∀ n, P12053130044048056099.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P12042374817009155457

`eq[n, gcd(n, and(2, n))]+n+1`
-/

namespace A005004.P12042374817009155457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.land 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)

end

end A005004.P12042374817009155457

namespace A005004

/-- `eq[n, gcd(n, and(2, n))]+n+1` -/
def P12042374817009155457.Spec : Prop :=
  ∀ n, (P12042374817009155457.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P168054876534506465

`∑[6-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3, a(4)=2`
-/

namespace A005004.P168054876534506465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3, 2] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005004.P168054876534506465

namespace A005004

/-- `∑[6-a(n-1)]` -/
def P168054876534506465.Spec : Prop :=
  ∀ n, P168054876534506465.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P8230965086248531550

`ogf((1+2x+x^2+x^3+x^5)/(1-x-x^2+x^3))`
-/

namespace A005004.P8230965086248531550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, 1, 0, 1] [1, -1, -1, 1] n

end

end A005004.P8230965086248531550

namespace A005004

/-- `ogf((1+2x+x^2+x^3+x^5)/(1-x-x^2+x^3))` -/
def P8230965086248531550.Spec : Prop :=
  ∀ n, P8230965086248531550.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P9779755056913816817

`eq[0, (n-2)*and(2, n)]+n+1`
-/

namespace A005004.P9779755056913816817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 1)

end

end A005004.P9779755056913816817

namespace A005004

/-- `eq[0, (n-2)*and(2, n)]+n+1` -/
def P9779755056913816817.Spec : Prop :=
  ∀ n, (P9779755056913816817.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P13427444395747674135

`eq[0, lcm(n-2, and(2, n))]+n+1`
-/

namespace A005004.P13427444395747674135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 2) (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)

end

end A005004.P13427444395747674135

namespace A005004

/-- `eq[0, lcm(n-2, and(2, n))]+n+1` -/
def P13427444395747674135.Spec : Prop :=
  ∀ n, (P13427444395747674135.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P11331124674294710761

`comp[∑[2*and(1, n)+1]+2]+n+1`
-/

namespace A005004.P11331124674294710761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + 1

end

end A005004.P11331124674294710761

namespace A005004

/-- `comp[∑[2*and(1, n)+1]+2]+n+1` -/
def P11331124674294710761.Spec : Prop :=
  ∀ n, (P11331124674294710761.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P4758899964080808059

`A004275(A065033(n))+2*n`
-/

namespace A005004.P4758899964080808059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A065033 n).toNat + (2 * n : ℤ)

end

end A005004.P4758899964080808059

namespace A005004

/-- `A004275(A065033(n))+2*n` -/
def P4758899964080808059.Spec : Prop :=
  ∀ n, P4758899964080808059.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P8393311009887518610

`A131055(n+1)+A058992(n+1)`
-/

namespace A005004.P8393311009887518610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (n + 1) + A058992 (n + 1)

end

end A005004.P8393311009887518610

namespace A005004

/-- `A131055(n+1)+A058992(n+1)` -/
def P8393311009887518610.Spec : Prop :=
  ∀ n, P8393311009887518610.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P5596700305590601480

`A047524(n+1)-A257542(n+1)`
-/

namespace A005004.P5596700305590601480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1) - A257542 (n + 1)

end

end A005004.P5596700305590601480

namespace A005004

/-- `A047524(n+1)-A257542(n+1)` -/
def P5596700305590601480.Spec : Prop :=
  ∀ n, P5596700305590601480.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P519406844253524622

`comp[A006068(A020639(3*(n+1)))+2*n+1]+1+n`
-/

namespace A005004.P519406844253524622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A020639 (3 * (n + 1))).toNat + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A005004.P519406844253524622

namespace A005004

/-- `comp[A006068(A020639(3*(n+1)))+2*n+1]+1+n` -/
def P519406844253524622.Spec : Prop :=
  ∀ n, (P519406844253524622.a n : ℤ) = A005004 (n + 1)

end A005004

/-! ## A005004.P12445168961069163618

`A004275(n+1)+A004275(A110654(n))`
-/

namespace A005004.P12445168961069163618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) + A004275 (A110654 n).toNat

end

end A005004.P12445168961069163618

namespace A005004

/-- `A004275(n+1)+A004275(A110654(n))` -/
def P12445168961069163618.Spec : Prop :=
  ∀ n, P12445168961069163618.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P10667542656328982703

`Δ[A004526(n)]+A092535(n)+n`
-/

namespace A005004.P10667542656328982703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A092535 n + (n : ℤ))

end

end A005004.P10667542656328982703

namespace A005004

/-- `Δ[A004526(n)]+A092535(n)+n` -/
def P10667542656328982703.Spec : Prop :=
  ∀ n, P10667542656328982703.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P12831457350251852902

`A266249(A109613(n+1))+A109613(n)`
-/

namespace A005004.P12831457350251852902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266249 (A109613 (n + 1)).toNat + A109613 n

end

end A005004.P12831457350251852902

namespace A005004

/-- `A266249(A109613(n+1))+A109613(n)` -/
def P12831457350251852902.Spec : Prop :=
  ∀ n, P12831457350251852902.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P8125959500534395850

`A004275(n+1)+A004275(A004526(n+1))`
-/

namespace A005004.P8125959500534395850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) + A004275 (A004526 (n + 1)).toNat

end

end A005004.P8125959500534395850

namespace A005004

/-- `A004275(n+1)+A004275(A004526(n+1))` -/
def P8125959500534395850.Spec : Prop :=
  ∀ n, P8125959500534395850.a n = A005004 (n + 1)

end A005004

/-! ## A005004.P3831021917158914457

`A004275(n+1)+A004275(A123108(n+1))`
-/

namespace A005004.P3831021917158914457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) + A004275 (A123108 (n + 1)).toNat

end

end A005004.P3831021917158914457

namespace A005004

/-- `A004275(n+1)+A004275(A123108(n+1))` -/
def P3831021917158914457.Spec : Prop :=
  ∀ n, P3831021917158914457.a n = A005004 (n + 1)

end A005004

/-!
# A005005: Davenport-Schinzel numbers of degree n on 4 symbols.

The programs for A005005, the canonical program `A005005.P10080704082404165271` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005005 has offset 1).

The definition of A005005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005005.P10080704082404165271

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=12, a(4)=16, a(5)=23, a(6)=28`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005005

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P10080704082404165271.Spec : Prop :=
  ∀ n, P10080704082404165271.a n = A005005 (n + 1)

theorem P10080704082404165271.correct : P10080704082404165271.Spec := by
  intro n
  simp only [A005005, Nat.add_sub_cancel]

end A005005

/-! ## A005005.P13142638724968956417

`A357778(n+1)+A265283(n)`
-/

namespace A005005.P13142638724968956417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (n + 1) + A265283 n

end

end A005005.P13142638724968956417

namespace A005005

/-- `A357778(n+1)+A265283(n)` -/
def P13142638724968956417.Spec : Prop :=
  ∀ n, P13142638724968956417.a n = A005005 (n + 1)

end A005005

/-! ## A005005.P3315760341412394854

`A033627(n+1)+A004272(A007494(n))`
-/

namespace A005005.P3315760341412394854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1) + A004272 (A007494 n).toNat

end

end A005005.P3315760341412394854

namespace A005005

/-- `A033627(n+1)+A004272(A007494(n))` -/
def P3315760341412394854.Spec : Prop :=
  ∀ n, P3315760341412394854.a n = A005005 (n + 1)

end A005005

/-! ## A005005.P16172352931085408901

`A293137(∑[2*A298029(n)])`
-/

namespace A005005.P16172352931085408901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005005.P16172352931085408901

namespace A005005

/-- `A293137(∑[2*A298029(n)])` -/
def P16172352931085408901.Spec : Prop :=
  ∀ n, P16172352931085408901.a n = A005005 (n + 1)

end A005005

/-! ## A005005.P13926257667161560200

`∑[A000120((n*(n+2))²+n)+1]`
-/

namespace A005005.P13926257667161560200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n * (n + 2)) ^ 2 + n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005005.P13926257667161560200

namespace A005005

/-- `∑[A000120((n*(n+2))²+n)+1]` -/
def P13926257667161560200.Spec : Prop :=
  ∀ n, P13926257667161560200.a n = A005005 (n + 1)

end A005005

/-!
# A005006: Davenport-Schinzel numbers of degree n on 5 symbols.

The programs for A005006, there is no canonical definition to state claims against.
-/

/-! ## A005006.P12461024776758753117

`A328593(n+1)+∑[A184389(n+1)]`
-/

namespace A005006.P12461024776758753117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328593 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005006.P12461024776758753117

/-! ## A005006.P3304358349698449397

`A350396(∑[A350398(∏{e}[n+1, #+1])])`
-/

namespace A005006.P3304358349698449397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350398 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005006.P3304358349698449397

/-! ## A005006.P2986232137597220736

`or(A132883(A374748(2*(n+2))), A177807(2*n+1))`
-/

namespace A005006.P2986232137597220736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132883 (A374748 (2 * (n + 2))).toNat) (A177807 (2 * n + 1))

end

end A005006.P2986232137597220736

/-! ## A005006.P9909105644558107438

`A018805(n+2)-A014675(A024023(n))`
-/

namespace A005006.P9909105644558107438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 2) - A014675 (A024023 n).toNat

end

end A005006.P9909105644558107438

/-!
# A005008: a(n) = n! - n^2.

The programs for A005008, the canonical program `A005008.P5071972375169942658` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005008 has offset 0).

The definition of A005008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n²` (program `A005008.P5071972375169942658`, by `A005008.P5071972375169942658.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005008.P5071972375169942658

`n!-n²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005008

/-- `n!-n²` -/
def P5071972375169942658.Spec : Prop :=
  ∀ n, P5071972375169942658.a n = A005008 n

theorem P5071972375169942658.correct : P5071972375169942658.Spec := by
  intro n
  simp only [A005008]

end A005008

/-! ## A005008.P8361836011792304439

`n!-∑[2*n]+n`
-/

namespace A005008.P8361836011792304439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ)

end

end A005008.P8361836011792304439

namespace A005008

/-- `n!-∑[2*n]+n` -/
def P8361836011792304439.Spec : Prop :=
  ∀ n, P8361836011792304439.a n = A005008 n

end A005008

/-! ## A005008.P5155708689312049902

`n-(∑[2*n]-n!)`
-/

namespace A005008.P5155708689312049902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ))

end

end A005008.P5155708689312049902

namespace A005008

/-- `n-(∑[2*n]-n!)` -/
def P5155708689312049902.Spec : Prop :=
  ∀ n, P5155708689312049902.a n = A005008 n

end A005008

/-! ## A005008.P4049566423653317659

`∏[round(1/acot(n))]-n²`
-/

namespace A005008.P4049566423653317659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A005008.P4049566423653317659

namespace A005008

/-- `∏[round(1/acot(n))]-n²` -/
def P4049566423653317659.Spec : Prop :=
  ∀ n, P4049566423653317659.a n = A005008 n

end A005008

/-! ## A005008.P5069937905842008619

`∏[ceil(abs(γ-n))]-n²`
-/

namespace A005008.P5069937905842008619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A005008.P5069937905842008619

namespace A005008

/-- `∏[ceil(abs(γ-n))]-n²` -/
def P5069937905842008619.Spec : Prop :=
  ∀ n, P5069937905842008619.a n = A005008 n

end A005008

/-! ## A005008.P14454681514512391484

`n*((1-n)²+a(n-1)-n)` with `a(0)=1`
-/

namespace A005008.P14454681514512391484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((1 - (n : ℤ)) ^ 2 + (a (n - 1) - (n : ℤ)))

end

end A005008.P14454681514512391484

namespace A005008

/-- `n*((1-n)²+a(n-1)-n)` -/
def P14454681514512391484.Spec : Prop :=
  ∀ n, P14454681514512391484.a n = A005008 n

end A005008

/-! ## A005008.P17876267716325835379

`n*((1-n)²-(n-a(n-1)))` with `a(0)=1`
-/

namespace A005008.P17876267716325835379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * ((1 - (n : ℤ)) ^ 2 - ((n : ℤ) - a (n - 1)))

end

end A005008.P17876267716325835379

namespace A005008

/-- `n*((1-n)²-(n-a(n-1)))` -/
def P17876267716325835379.Spec : Prop :=
  ∀ n, P17876267716325835379.a n = A005008 n

end A005008

/-!
# A005009: a(n) = 7*2^n.

The programs for A005009, the canonical program `A005009.P8684826204732919887` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005009 has offset 0).

The definition of A005009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*2^n` (program `A005009.P8684826204732919887`, by `A005009.P8684826204732919887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005009.P8684826204732919887

`7*2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005009

/-- `7*2^n` -/
def P8684826204732919887.Spec : Prop :=
  ∀ n, (P8684826204732919887.a n : ℤ) = A005009 n

theorem P8684826204732919887.correct : P8684826204732919887.Spec := by
  intro n
  simp only [A005009]

end A005009

/-!
# A005010: a(n) = 9*2^n.

The programs for A005010, the canonical program `A005010.P13530636184195266107` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005010 has offset 0).

The definition of A005010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*2^n` (program `A005010.P13530636184195266107`, by `A005010.P13530636184195266107.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005010.P13530636184195266107

`9*2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005010

/-- `9*2^n` -/
def P13530636184195266107.Spec : Prop :=
  ∀ n, (P13530636184195266107.a n : ℤ) = A005010 n

theorem P13530636184195266107.correct : P13530636184195266107.Spec := by
  intro n
  simp only [A005010]

end A005010

/-!
# A005011: Shifts one place left under 5th-order binomial transform.

The programs for A005011, there is no canonical definition to state claims against.
-/

/-! ## A005011.P16754311960982894865

`A111673(A167499(n+4))`
-/

namespace A005011.P16754311960982894865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111673 (A167499 (n + 4)).toNat

end

end A005011.P16754311960982894865

/-! ## A005011.P3680769487945759712

`A241578((n+3)²-∑[n])`
-/

namespace A005011.P3680769487945759712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005011.P3680769487945759712

/-! ## A005011.P16960051941179224650

`A241579(A167499(n+3))`
-/

namespace A005011.P16960051941179224650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (A167499 (n + 3)).toNat

end

end A005011.P16960051941179224650

/-!
# A005012: Shifts one place left under 6th-order binomial transform.

The programs for A005012, there is no canonical definition to state claims against.
-/

/-! ## A005012.P4918888578034326478

`A111673(A166136(n+5))`
-/

namespace A005012.P4918888578034326478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111673 (A166136 (n + 5)).toNat

end

end A005012.P4918888578034326478

/-! ## A005012.P16947830539349680556

`A241579(A168104(n)+6)`
-/

namespace A005012.P16947830539349680556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (A168104 n + 6).toNat

end

end A005012.P16947830539349680556

/-!
# A005013: a(n) = 3*a(n-2) - a(n-4), a(0)=0, a(1)=1, a(2)=1, a(3)=4. Alternates Fibonacci (A000045) and Lucas (A000032) sequences for even and odd n.

The programs for A005013, the canonical program `A005013.P6578864195411083068` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005013 has offset 0).

The definition of A005013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)-a(n-4)` (program `A005013.P6578864195411083068`, by `A005013.P6578864195411083068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005013.P6578864195411083068

`3*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005013

/-- `3*a(n-2)-a(n-4)` -/
def P6578864195411083068.Spec : Prop :=
  ∀ n, P6578864195411083068.a n = A005013 n

theorem P6578864195411083068.correct : P6578864195411083068.Spec := by
  intro n
  simp only [A005013]

end A005013

/-! ## A005013.P11453170956066731870

`ogf((x+x^2+x^3)/(1-3x^2+x^4))`
-/

namespace A005013.P11453170956066731870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, 0, -3, 0, 1] n

end

end A005013.P11453170956066731870

namespace A005013

/-- `ogf((x+x^2+x^3)/(1-3x^2+x^4))` -/
def P11453170956066731870.Spec : Prop :=
  ∀ n, P11453170956066731870.a n = A005013 n

end A005013

/-! ## A005013.P13030871425655831474

`abs(Δ[floor(ϕ²*a(n-2))])` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A005013.P13030871425655831474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 2) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005013.P13030871425655831474

namespace A005013

/-- `abs(Δ[floor(ϕ²*a(n-2))])` -/
def P13030871425655831474.Spec : Prop :=
  ∀ n, P13030871425655831474.a n = A005013 n

end A005013

/-! ## A005013.P3444493860535541168

`A210209(2*n)`
-/

namespace A005013.P3444493860535541168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210209 (2 * n)

end

end A005013.P3444493860535541168

namespace A005013

/-- `A210209(2*n)` -/
def P3444493860535541168.Spec : Prop :=
  ∀ n, P3444493860535541168.a n = A005013 n

end A005013

/-! ## A005013.P7265359766610291550

`abs(Δ[A097131(n)])`
-/

namespace A005013.P7265359766610291550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A005013.P7265359766610291550

namespace A005013

/-- `abs(Δ[A097131(n)])` -/
def P7265359766610291550.Spec : Prop :=
  ∀ n, P7265359766610291550.a n = A005013 n

end A005013

/-! ## A005013.P10507537081764439137

`A303427(or(1, n)+n)`
-/

namespace A005013.P10507537081764439137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (Nat.lor 1 n + n)

end

end A005013.P10507537081764439137

namespace A005013

/-- `A303427(or(1, n)+n)` -/
def P10507537081764439137.Spec : Prop :=
  ∀ n, P10507537081764439137.a n = A005013 n

end A005013

/-! ## A005013.P17445720500324479518

`A302126(A014601(n))`
-/

namespace A005013.P17445720500324479518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A014601 n).toNat

end

end A005013.P17445720500324479518

namespace A005013

/-- `A302126(A014601(n))` -/
def P17445720500324479518.Spec : Prop :=
  ∀ n, P17445720500324479518.a n = A005013 n

end A005013

/-! ## A005013.P8519702139490752431

`A303427(A042963(n+1))`
-/

namespace A005013.P8519702139490752431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (A042963 (n + 1)).toNat

end

end A005013.P8519702139490752431

namespace A005013

/-- `A303427(A042963(n+1))` -/
def P8519702139490752431.Spec : Prop :=
  ∀ n, P8519702139490752431.a n = A005013 n

end A005013

/-! ## A005013.P16789186885612776002

`A140833(n)-A000045(n)`
-/

namespace A005013.P16789186885612776002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140833 n - A000045 n

end

end A005013.P16789186885612776002

namespace A005013

/-- `A140833(n)-A000045(n)` -/
def P16789186885612776002.Spec : Prop :=
  ∀ n, P16789186885612776002.a n = A005013 n

end A005013

/-! ## A005013.P10935272221762560820

`A303427(A014601(n+1)-2)`
-/

namespace A005013.P10935272221762560820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (A014601 (n + 1) - 2).toNat

end

end A005013.P10935272221762560820

namespace A005013

/-- `A303427(A014601(n+1)-2)` -/
def P10935272221762560820.Spec : Prop :=
  ∀ n, P10935272221762560820.a n = A005013 n

end A005013

/-! ## A005013.P14587814411817183689

`A302126(A042963(n+2)-2)`
-/

namespace A005013.P14587814411817183689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A042963 (n + 2) - 2).toNat

end

end A005013.P14587814411817183689

namespace A005013

/-- `A302126(A042963(n+2)-2)` -/
def P14587814411817183689.Spec : Prop :=
  ∀ n, P14587814411817183689.a n = A005013 n

end A005013

/-! ## A005013.P5213024348403453808

`A000071(n+1)-A119282(n)`
-/

namespace A005013.P5213024348403453808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) - A119282 n

end

end A005013.P5213024348403453808

namespace A005013

/-- `A000071(n+1)-A119282(n)` -/
def P5213024348403453808.Spec : Prop :=
  ∀ n, P5213024348403453808.a n = A005013 n

end A005013

/-! ## A005013.P7647641776426227688

`A140833(n)+1-A001611(n)`
-/

namespace A005013.P7647641776426227688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140833 n + (1 - A001611 n)

end

end A005013.P7647641776426227688

namespace A005013

/-- `A140833(n)+1-A001611(n)` -/
def P7647641776426227688.Spec : Prop :=
  ∀ n, P7647641776426227688.a n = A005013 n

end A005013

/-! ## A005013.P18230658229751074709

`A133586(n+1)-A094967(n)`
-/

namespace A005013.P18230658229751074709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133586 (n + 1) - A094967 n

end

end A005013.P18230658229751074709

namespace A005013

/-- `A133586(n+1)-A094967(n)` -/
def P18230658229751074709.Spec : Prop :=
  ∀ n, P18230658229751074709.a n = A005013 n

end A005013

/-! ## A005013.P11026953377152192828

`A000045(n+2)-A097131(n)`
-/

namespace A005013.P11026953377152192828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) - A097131 n

end

end A005013.P11026953377152192828

namespace A005013

/-- `A000045(n+2)-A097131(n)` -/
def P11026953377152192828.Spec : Prop :=
  ∀ n, P11026953377152192828.a n = A005013 n

end A005013

/-! ## A005013.P3834110886042039990

`2*A094966(n)-A000045(n)`
-/

namespace A005013.P3834110886042039990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094966 n - A000045 n

end

end A005013.P3834110886042039990

namespace A005013

/-- `2*A094966(n)-A000045(n)` -/
def P3834110886042039990.Spec : Prop :=
  ∀ n, P3834110886042039990.a n = A005013 n

end A005013

/-! ## A005013.P714469643945136723

`A140833(n)-A302126(2*n)`
-/

namespace A005013.P714469643945136723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140833 n - A302126 (2 * n)

end

end A005013.P714469643945136723

namespace A005013

/-- `A140833(n)-A302126(2*n)` -/
def P714469643945136723.Spec : Prop :=
  ∀ n, P714469643945136723.a n = A005013 n

end A005013

/-!
# A005014: Certain subgraphs of a directed graph (inverse binomial transform of A005321).

The programs for A005014, the canonical program `A005014.P17201059711984018674` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005014 has offset 1).

The definition of A005014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005014.P17201059711984018674

`(2^(n+1)-2)*a(n-1)-(-1)^(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005014

/-- `(2^(n+1)-2)*a(n-1)-(-1)^(n+1)` -/
def P17201059711984018674.Spec : Prop :=
  ∀ n, P17201059711984018674.a n = A005014 (n + 1)

theorem P17201059711984018674.correct : P17201059711984018674.Spec := by
  intro n
  simp only [A005014, Nat.add_sub_cancel]

end A005014

/-! ## A005014.P1379342769275050681

`A005327(n+1)+A005327(n+2)`
-/

namespace A005014.P1379342769275050681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005327 (n + 1) + A005327 (n + 2)

end

end A005014.P1379342769275050681

namespace A005014

/-- `A005327(n+1)+A005327(n+2)` -/
def P1379342769275050681.Spec : Prop :=
  ∀ n, P1379342769275050681.a n = A005014 (n + 1)

end A005014

/-! ## A005014.P3073920918498827848

`a(n-1)*A000918(n+1)+A047946(n)-A005248(n)` with `a(0)=1`
-/

namespace A005014.P3073920918498827848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000918 (n + 1) + (A047946 n - A005248 n)

end

end A005014.P3073920918498827848

namespace A005014

/-- `a(n-1)*A000918(n+1)+A047946(n)-A005248(n)` -/
def P3073920918498827848.Spec : Prop :=
  ∀ n, P3073920918498827848.a n = A005014 (n + 1)

end A005014

/-!
# A005015: a(n) = 11*2^n.

The programs for A005015, the canonical program `A005015.P14859435765551798402` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005015 has offset 0).

The definition of A005015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11*2^n` (program `A005015.P14859435765551798402`, by `A005015.P14859435765551798402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005015.P14859435765551798402

`11*2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005015

/-- `11*2^n` -/
def P14859435765551798402.Spec : Prop :=
  ∀ n, (P14859435765551798402.a n : ℤ) = A005015 n

theorem P14859435765551798402.correct : P14859435765551798402.Spec := by
  intro n
  simp only [A005015]

end A005015

/-!
# A005016: Certain subgraphs of a directed graph.

The programs for A005016, there is no canonical definition to state claims against.
-/

/-! ## A005016.P6879614501424945315

`A109606(4*A113147(n))`
-/

namespace A005016.P6879614501424945315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (4 * A113147 n).toNat

end

end A005016.P6879614501424945315

/-! ## A005016.P2427103792727080026

`A062234(A086345(n)+n)`
-/

namespace A005016.P2427103792727080026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (A086345 n + (n : ℤ)).toNat

end

end A005016.P2427103792727080026

/-!
# A005017: Denominator of (binomial(2*n-2,n-1)/n!)^2.

The programs for A005017, there is no canonical definition to state claims against.
-/

/-! ## A005017.P13054616247217670184

`A144187(n)²`
-/

namespace A005017.P13054616247217670184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144187 n ^ 2

end

end A005017.P13054616247217670184

/-! ## A005017.P15699735915919120522

`(n!/gcd(n!, A000108(n)))²`
-/

namespace A005017.P15699735915919120522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℚ) / (Int.gcd (Nat.factorial n : ℤ) (A000108 n) : ℚ)) ^ 2

end

end A005017.P15699735915919120522

/-! ## A005017.P16741391137212978955

`A144187(n)^A020639(A004277(n))`
-/

namespace A005017.P16741391137212978955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144187 n : ℚ) ^ (A020639 (A004277 n).toNat : ℤ)

end

end A005017.P16741391137212978955

/-! ## A005017.P14670064551005712614

`A144187(A004277(n)-n)*A144187(n)`
-/

namespace A005017.P14670064551005712614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144187 (A004277 n - (n : ℤ)).toNat * A144187 n

end

end A005017.P14670064551005712614

/-! ## A005017.P661098469909907612

`(A000142(n)/A000108(n)*A144186(n))²`
-/

namespace A005017.P661098469909907612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000142 n : ℚ) / (A000108 n : ℚ) * (A144186 n : ℚ)) ^ 2

end

end A005017.P661098469909907612

/-!
# A005019: The number of n X n (0,1)-matrices with a 1-width of 1.

The programs for A005019, the canonical program `A005019.P12978937283526509081` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005019 has offset 1).

The definition of A005019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005019.P12978937283526509081

`2^(n+1)²-(2^(n+1)-1)^(n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005019

/-- `2^(n+1)²-(2^(n+1)-1)^(n+1)` -/
def P12978937283526509081.Spec : Prop :=
  ∀ n, P12978937283526509081.a n = A005019 (n + 1)

theorem P12978937283526509081.correct : P12978937283526509081.Spec := by
  intro n
  simp only [A005019, Nat.add_sub_cancel]

end A005019

/-! ## A005019.P4511947626858022009

`abs(A002416(n+1)-A055601(n+1))`
-/

namespace A005019.P4511947626858022009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002416 (n + 1) - A055601 (n + 1)|

end

end A005019.P4511947626858022009

namespace A005019

/-- `abs(A002416(n+1)-A055601(n+1))` -/
def P4511947626858022009.Spec : Prop :=
  ∀ n, P4511947626858022009.a n = A005019 (n + 1)

end A005019

/-! ## A005019.P7361114166656532790

`abs(A046747(n+1)-A116506(n+1))`
-/

namespace A005019.P7361114166656532790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046747 (n + 1) - A116506 (n + 1)|

end

end A005019.P7361114166656532790

namespace A005019

/-- `abs(A046747(n+1)-A116506(n+1))` -/
def P7361114166656532790.Spec : Prop :=
  ∀ n, P7361114166656532790.a n = A005019 (n + 1)

end A005019

/-! ## A005019.P17874297929872597382

`(A046747(n+1)-A116506(n+1))*A250261(n)`
-/

namespace A005019.P17874297929872597382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046747 (n + 1) - A116506 (n + 1)) * A250261 n

end

end A005019.P17874297929872597382

namespace A005019

/-- `(A046747(n+1)-A116506(n+1))*A250261(n)` -/
def P17874297929872597382.Spec : Prop :=
  ∀ n, P17874297929872597382.a n = A005019 (n + 1)

end A005019

/-!
# A005021: Random walks (binomial transform of A006054).

The programs for A005021, the canonical program `A005021.P5798232989793140586` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005021 has offset 0).

The definition of A005021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005021.P5798232989793140586

`5*a(n-1)-6*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=19`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005021

/-- `5*a(n-1)-6*a(n-2)+a(n-3)` -/
def P5798232989793140586.Spec : Prop :=
  ∀ n, P5798232989793140586.a n = A005021 n

theorem P5798232989793140586.correct : P5798232989793140586.Spec := by
  intro n
  simp only [A005021]

end A005021

/-! ## A005021.P227388025699029375

`ogf(1/(1-5x+6x^2-x^3))`
-/

namespace A005021.P227388025699029375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 6, -1] n

end

end A005021.P227388025699029375

namespace A005021

/-- `ogf(1/(1-5x+6x^2-x^3))` -/
def P227388025699029375.Spec : Prop :=
  ∀ n, P227388025699029375.a n = A005021 n

end A005021

/-! ## A005021.P9305450938680877094

`∑[∑[A060557(n)]]`
-/

namespace A005021.P9305450938680877094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005021.P9305450938680877094

namespace A005021

/-- `∑[∑[A060557(n)]]` -/
def P9305450938680877094.Spec : Prop :=
  ∀ n, P9305450938680877094.a n = A005021 n

end A005021

/-! ## A005021.P12889981089072474449

`∑[A094789(n+1)]`
-/

namespace A005021.P12889981089072474449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005021.P12889981089072474449

namespace A005021

/-- `∑[A094789(n+1)]` -/
def P12889981089072474449.Spec : Prop :=
  ∀ n, P12889981089072474449.a n = A005021 n

end A005021

/-! ## A005021.P11310117175035102712

`A052547(2*n+3)`
-/

namespace A005021.P11310117175035102712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (2 * n + 3)

end

end A005021.P11310117175035102712

namespace A005021

/-- `A052547(2*n+3)` -/
def P11310117175035102712.Spec : Prop :=
  ∀ n, P11310117175035102712.a n = A005021 n

end A005021

/-! ## A005021.P3214714179557718562

`A187065(4*(n+2))`
-/

namespace A005021.P3214714179557718562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (4 * (n + 2))

end

end A005021.P3214714179557718562

namespace A005021

/-- `A187065(4*(n+2))` -/
def P3214714179557718562.Spec : Prop :=
  ∀ n, P3214714179557718562.a n = A005021 n

end A005021

/-! ## A005021.P8923441552086502515

`A096976(2*n+5)`
-/

namespace A005021.P8923441552086502515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (2 * n + 5)

end

end A005021.P8923441552086502515

namespace A005021

/-- `A096976(2*n+5)` -/
def P8923441552086502515.Spec : Prop :=
  ∀ n, P8923441552086502515.a n = A005021 n

end A005021

/-! ## A005021.P17283762584592067263

`A187066(4*n+6)`
-/

namespace A005021.P17283762584592067263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 (4 * n + 6)

end

end A005021.P17283762584592067263

namespace A005021

/-- `A187066(4*n+6)` -/
def P17283762584592067263.Spec : Prop :=
  ∀ n, P17283762584592067263.a n = A005021 n

end A005021

/-! ## A005021.P1230835847797605561

`∑[A006053(2*n+3)]`
-/

namespace A005021.P1230835847797605561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005021.P1230835847797605561

namespace A005021

/-- `∑[A006053(2*n+3)]` -/
def P1230835847797605561.Spec : Prop :=
  ∀ n, P1230835847797605561.a n = A005021 n

end A005021

/-! ## A005021.P9807330139805663764

`∑[A187067(4*(n+1))]`
-/

namespace A005021.P9807330139805663764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005021.P9807330139805663764

namespace A005021

/-- `∑[A187067(4*(n+1))]` -/
def P9807330139805663764.Spec : Prop :=
  ∀ n, P9807330139805663764.a n = A005021 n

end A005021

/-! ## A005021.P8052440962069218262

`A265755(3*(n+3)+n)`
-/

namespace A005021.P8052440962069218262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (3 * (n + 3) + n)

end

end A005021.P8052440962069218262

namespace A005021

/-- `A265755(3*(n+3)+n)` -/
def P8052440962069218262.Spec : Prop :=
  ∀ n, P8052440962069218262.a n = A005021 n

end A005021

/-! ## A005021.P4985859389728705547

`∑[∑[A028495(2*n+1)]]`
-/

namespace A005021.P4985859389728705547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005021.P4985859389728705547

namespace A005021

/-- `∑[∑[A028495(2*n+1)]]` -/
def P4985859389728705547.Spec : Prop :=
  ∀ n, P4985859389728705547.a n = A005021 n

end A005021

/-! ## A005021.P6679246893715532792

`record[A052547(A004273(n))]`
-/

namespace A005021.P6679246893715532792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005021.P6679246893715532792

namespace A005021

/-- `record[A052547(A004273(n))]` -/
def P6679246893715532792.Spec : Prop :=
  ∀ n, P6679246893715532792.a n = A005021 n

end A005021

/-! ## A005021.P5812585166249417067

`record[A096976(A026741(n))]`
-/

namespace A005021.P5812585166249417067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005021.P5812585166249417067

namespace A005021

/-- `record[A096976(A026741(n))]` -/
def P5812585166249417067.Spec : Prop :=
  ∀ n, P5812585166249417067.a n = A005021 n

end A005021

/-! ## A005021.P2922036359458124119

`∑[∑[A187067(A004767(n))]]`
-/

namespace A005021.P2922036359458124119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A004767 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005021.P2922036359458124119

namespace A005021

/-- `∑[∑[A187067(A004767(n))]]` -/
def P2922036359458124119.Spec : Prop :=
  ∀ n, P2922036359458124119.a n = A005021 n

end A005021

/-! ## A005021.P9604256531159249569

`A215694(n+1)-A080937(n+1)`
-/

namespace A005021.P9604256531159249569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215694 (n + 1) - A080937 (n + 1)

end

end A005021.P9604256531159249569

namespace A005021

/-- `A215694(n+1)-A080937(n+1)` -/
def P9604256531159249569.Spec : Prop :=
  ∀ n, P9604256531159249569.a n = A005021 n

end A005021

/-! ## A005021.P15854918153567856839

`A060557(n+1)-A080937(n+2)`
-/

namespace A005021.P15854918153567856839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060557 (n + 1) - A080937 (n + 2)

end

end A005021.P15854918153567856839

namespace A005021

/-- `A060557(n+1)-A080937(n+2)` -/
def P15854918153567856839.Spec : Prop :=
  ∀ n, P15854918153567856839.a n = A005021 n

end A005021

/-! ## A005021.P13451814441066651394

`A094789(n+2)-A094790(n+2)`
-/

namespace A005021.P13451814441066651394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094789 (n + 2) - A094790 (n + 2)

end

end A005021.P13451814441066651394

namespace A005021

/-- `A094789(n+2)-A094790(n+2)` -/
def P13451814441066651394.Spec : Prop :=
  ∀ n, P13451814441066651394.a n = A005021 n

end A005021

/-! ## A005021.P14155366562512703458

`A052975(n+2)-A080937(n+3)`
-/

namespace A005021.P14155366562512703458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 2) - A080937 (n + 3)

end

end A005021.P14155366562512703458

namespace A005021

/-- `A052975(n+2)-A080937(n+3)` -/
def P14155366562512703458.Spec : Prop :=
  ∀ n, P14155366562512703458.a n = A005021 n

end A005021

/-! ## A005021.P2790458812109443397

`∑[A287381(2*n)-A094790(n+1)]`
-/

namespace A005021.P2790458812109443397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287381 (2 * n) - A094790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005021.P2790458812109443397

namespace A005021

/-- `∑[A287381(2*n)-A094790(n+1)]` -/
def P2790458812109443397.Spec : Prop :=
  ∀ n, P2790458812109443397.a n = A005021 n

end A005021

/-!
# A005022: Number of walks of length 2n+6 in the path graph P_7 from one end to the other.

The programs for A005022, the canonical program `A005022.P10366534221131520840` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005022 has offset 0).

The definition of A005022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005022.P10366534221131520840

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=6, a(2)=26`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005022

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P10366534221131520840.Spec : Prop :=
  ∀ n, P10366534221131520840.a n = A005022 n

theorem P10366534221131520840.correct : P10366534221131520840.Spec := by
  intro n
  simp only [A005022]

end A005022

/-! ## A005022.P8533659889148547694

`ogf(1/(1-6x+10x^2-4x^3))`
-/

namespace A005022.P8533659889148547694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 10, -4] n

end

end A005022.P8533659889148547694

namespace A005022

/-- `ogf(1/(1-6x+10x^2-4x^3))` -/
def P8533659889148547694.Spec : Prop :=
  ∀ n, P8533659889148547694.a n = A005022 n

end A005022

/-! ## A005022.P17063931686948517922

`Δ[A204090(n)]`
-/

namespace A005022.P17063931686948517922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005022.P17063931686948517922

namespace A005022

/-- `Δ[A204090(n)]` -/
def P17063931686948517922.Spec : Prop :=
  ∀ n, P17063931686948517922.a n = A005022 n

end A005022

/-! ## A005022.P3324469902850562630

`∑[A094806(n+2)]`
-/

namespace A005022.P3324469902850562630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094806 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005022.P3324469902850562630

namespace A005022

/-- `∑[A094806(n+2)]` -/
def P3324469902850562630.Spec : Prop :=
  ∀ n, P3324469902850562630.a n = A005022 n

end A005022

/-! ## A005022.P15329831654800853308

`∑[∑[A094821(n+1)]]`
-/

namespace A005022.P15329831654800853308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005022.P15329831654800853308

namespace A005022

/-- `∑[∑[A094821(n+1)]]` -/
def P15329831654800853308.Spec : Prop :=
  ∀ n, P15329831654800853308.a n = A005022 n

end A005022

/-! ## A005022.P7553033080407971141

`A048580(n)-2^(n+1)`
-/

namespace A005022.P7553033080407971141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048580 n - (2 ^ (n + 1) : ℤ)

end

end A005022.P7553033080407971141

namespace A005022

/-- `A048580(n)-2^(n+1)` -/
def P7553033080407971141.Spec : Prop :=
  ∀ n, P7553033080407971141.a n = A005022 n

end A005022

/-! ## A005022.P5932046207454122652

`A007052(n+1)-2^(n+1)`
-/

namespace A005022.P5932046207454122652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A005022.P5932046207454122652

namespace A005022

/-- `A007052(n+1)-2^(n+1)` -/
def P5932046207454122652.Spec : Prop :=
  ∀ n, P5932046207454122652.a n = A005022 n

end A005022

/-! ## A005022.P4241617842611266206

`A024175(n+3)-2^(n+2)`
-/

namespace A005022.P4241617842611266206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A005022.P4241617842611266206

namespace A005022

/-- `A024175(n+3)-2^(n+2)` -/
def P4241617842611266206.Spec : Prop :=
  ∀ n, P4241617842611266206.a n = A005022 n

end A005022

/-! ## A005022.P2277922378312619701

`2*(A003480(n)+a(n-1))` with `a(0)=1`
-/

namespace A005022.P2277922378312619701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A003480 n + a (n - 1))

end

end A005022.P2277922378312619701

namespace A005022

/-- `2*(A003480(n)+a(n-1))` -/
def P2277922378312619701.Spec : Prop :=
  ∀ n, P2277922378312619701.a n = A005022 n

end A005022

/-! ## A005022.P8477293372882208244

`Δ[A006012(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A005022.P8477293372882208244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A005022.P8477293372882208244

namespace A005022

/-- `Δ[A006012(n)]+2*a(n-1)` -/
def P8477293372882208244.Spec : Prop :=
  ∀ n, P8477293372882208244.a n = A005022 n

end A005022

/-! ## A005022.P10124836102290796470

`a(n-1)+A007070(n)+a(n-1)` with `a(0)=1`
-/

namespace A005022.P10124836102290796470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A007070 n + a (n - 1))

end

end A005022.P10124836102290796470

namespace A005022

/-- `a(n-1)+A007070(n)+a(n-1)` -/
def P10124836102290796470.Spec : Prop :=
  ∀ n, P10124836102290796470.a n = A005022 n

end A005022

/-! ## A005022.P12167620173362146823

`∑[A020727(n)-A000079(n)]`
-/

namespace A005022.P12167620173362146823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005022.P12167620173362146823

namespace A005022

/-- `∑[A020727(n)-A000079(n)]` -/
def P12167620173362146823.Spec : Prop :=
  ∀ n, P12167620173362146823.a n = A005022 n

end A005022

/-! ## A005022.P12119835997822368155

`A204090(n+1)-A204090(n)`
-/

namespace A005022.P12119835997822368155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204090 (n + 1) - A204090 n

end

end A005022.P12119835997822368155

namespace A005022

/-- `A204090(n+1)-A204090(n)` -/
def P12119835997822368155.Spec : Prop :=
  ∀ n, P12119835997822368155.a n = A005022 n

end A005022

/-! ## A005022.P11265379063678999958

`∑[A003480(n+1)-A000079(n)]`
-/

namespace A005022.P11265379063678999958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1) - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005022.P11265379063678999958

namespace A005022

/-- `∑[A003480(n+1)-A000079(n)]` -/
def P11265379063678999958.Spec : Prop :=
  ∀ n, P11265379063678999958.a n = A005022 n

end A005022

/-! ## A005022.P17235337091855677614

`Δ[A007070(n)-A000079(n+1)]`
-/

namespace A005022.P17235337091855677614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005022.P17235337091855677614

namespace A005022

/-- `Δ[A007070(n)-A000079(n+1)]` -/
def P17235337091855677614.Spec : Prop :=
  ∀ n, P17235337091855677614.a n = A005022 n

end A005022

/-! ## A005022.P2811090856693173748

`Δ[A007070(n)-A000225(n+1)]`
-/

namespace A005022.P2811090856693173748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005022.P2811090856693173748

namespace A005022

/-- `Δ[A007070(n)-A000225(n+1)]` -/
def P2811090856693173748.Spec : Prop :=
  ∀ n, P2811090856693173748.a n = A005022 n

end A005022

/-! ## A005022.P1416021534850692899

`Δ[A007070(n)-2*A000079(n)]`
-/

namespace A005022.P1416021534850692899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - 2 * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005022.P1416021534850692899

namespace A005022

/-- `Δ[A007070(n)-2*A000079(n)]` -/
def P1416021534850692899.Spec : Prop :=
  ∀ n, P1416021534850692899.a n = A005022 n

end A005022

/-! ## A005022.P5984982178242788526

`Δ[A007070(n)-2*A000225(n)]`
-/

namespace A005022.P5984982178242788526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - 2 * A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005022.P5984982178242788526

namespace A005022

/-- `Δ[A007070(n)-2*A000225(n)]` -/
def P5984982178242788526.Spec : Prop :=
  ∀ n, P5984982178242788526.a n = A005022 n

end A005022

/-! ## A005022.P5073480915743802438

`A094821(n+2)-A094803(n+2)`
-/

namespace A005022.P5073480915743802438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094821 (n + 2) - A094803 (n + 2)

end

end A005022.P5073480915743802438

namespace A005022

/-- `A094821(n+2)-A094803(n+2)` -/
def P5073480915743802438.Spec : Prop :=
  ∀ n, P5073480915743802438.a n = A005022 n

end A005022

/-! ## A005022.P10931833449011478035

`A006012(n+2)-A024175(n+3)`
-/

namespace A005022.P10931833449011478035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 2) - A024175 (n + 3)

end

end A005022.P10931833449011478035

namespace A005022

/-- `A006012(n+2)-A024175(n+3)` -/
def P10931833449011478035.Spec : Prop :=
  ∀ n, P10931833449011478035.a n = A005022 n

end A005022

/-!
# A005023: Number of walks of length 2n+7 in the path graph P_8 from one end to the other.

The programs for A005023, the canonical program `A005023.P9146085099237408177` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005023 has offset 1).

The definition of A005023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005023.P9146085099237408177

`7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` with `a(0)=7, a(1)=34, a(2)=143, a(3)=560`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005023

/-- `7*a(n-1)-15*a(n-2)+10*a(n-3)-a(n-4)` -/
def P9146085099237408177.Spec : Prop :=
  ∀ n, P9146085099237408177.a n = A005023 (n + 1)

theorem P9146085099237408177.correct : P9146085099237408177.Spec := by
  intro n
  simp only [A005023, Nat.add_sub_cancel]

end A005023

/-! ## A005023.P16673106126545011159

`A094256(n+2)`
-/

namespace A005023.P16673106126545011159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094256 (n + 2)

end

end A005023.P16673106126545011159

namespace A005023

/-- `A094256(n+2)` -/
def P16673106126545011159.Spec : Prop :=
  ∀ n, P16673106126545011159.a n = A005023 (n + 1)

end A005023

/-! ## A005023.P3694613592348169838

`A187495(6*(n+4))`
-/

namespace A005023.P3694613592348169838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187495 (6 * (n + 4))

end

end A005023.P3694613592348169838

namespace A005023

/-- `A187495(6*(n+4))` -/
def P3694613592348169838.Spec : Prop :=
  ∀ n, P3694613592348169838.a n = A005023 (n + 1)

end A005023

/-! ## A005023.P13943427852563801578

`∑[A094829(n+3)]+1`
-/

namespace A005023.P13943427852563801578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094829 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005023.P13943427852563801578

namespace A005023

/-- `∑[A094829(n+3)]+1` -/
def P13943427852563801578.Spec : Prop :=
  ∀ n, P13943427852563801578.a n = A005023 (n + 1)

end A005023

/-! ## A005023.P7806059010767381573

`A187496(Δ[3*(n+3)²])`
-/

namespace A005023.P7806059010767381573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187496 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A005023.P7806059010767381573

namespace A005023

/-- `A187496(Δ[3*(n+3)²])` -/
def P7806059010767381573.Spec : Prop :=
  ∀ n, P7806059010767381573.a n = A005023 (n + 1)

end A005023

/-! ## A005023.P16102459175205090029

`2*A094829(n+3)-A094828(n+3)`
-/

namespace A005023.P16102459175205090029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094829 (n + 3) - A094828 (n + 3)

end

end A005023.P16102459175205090029

namespace A005023

/-- `2*A094829(n+3)-A094828(n+3)` -/
def P16102459175205090029.Spec : Prop :=
  ∀ n, P16102459175205090029.a n = A005023 (n + 1)

end A005023

/-! ## A005023.P14472945409847711466

`A094834(n+3)-A094827(n+3)`
-/

namespace A005023.P14472945409847711466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094834 (n + 3) - A094827 (n + 3)

end

end A005023.P14472945409847711466

namespace A005023

/-- `A094834(n+3)-A094827(n+3)` -/
def P14472945409847711466.Spec : Prop :=
  ∀ n, P14472945409847711466.a n = A005023 (n + 1)

end A005023

/-! ## A005023.P17840915999660205173

`A094829(n+4)-A094828(n+4)`
-/

namespace A005023.P17840915999660205173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094829 (n + 4) - A094828 (n + 4)

end

end A005023.P17840915999660205173

namespace A005023

/-- `A094829(n+4)-A094828(n+4)` -/
def P17840915999660205173.Spec : Prop :=
  ∀ n, P17840915999660205173.a n = A005023 (n + 1)

end A005023

/-!
# A005024: Number of walks of length 2n+8 in the path graph P_9 from one end to the other.

The programs for A005024, the canonical program `A005024.P3841323897555004285` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005024 has offset 1).

The definition of A005024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005024.P3841323897555004285

`8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` with `a(0)=8, a(1)=43, a(2)=196, a(3)=820`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005024

/-- `8*a(n-1)-21*a(n-2)+20*a(n-3)-5*a(n-4)` -/
def P3841323897555004285.Spec : Prop :=
  ∀ n, P3841323897555004285.a n = A005024 (n + 1)

theorem P3841323897555004285.correct : P3841323897555004285.Spec := by
  intro n
  simp only [A005024, Nat.add_sub_cancel]

end A005024

/-! ## A005024.P3048208955911707666

`A094865(n+4)`
-/

namespace A005024.P3048208955911707666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094865 (n + 4)

end

end A005024.P3048208955911707666

namespace A005024

/-- `A094865(n+4)` -/
def P3048208955911707666.Spec : Prop :=
  ∀ n, P3048208955911707666.a n = A005024 (n + 1)

end A005024

/-! ## A005024.P17446502876436622769

`∑[A094825(n+4)]+1`
-/

namespace A005024.P17446502876436622769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094825 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005024.P17446502876436622769

namespace A005024

/-- `∑[A094825(n+4)]+1` -/
def P17446502876436622769.Spec : Prop :=
  ∀ n, P17446502876436622769.a n = A005024 (n + 1)

end A005024

/-! ## A005024.P16973718685929793346

`2*A094825(n+4)-A094788(n+3)`
-/

namespace A005024.P16973718685929793346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094825 (n + 4) - A094788 (n + 3)

end

end A005024.P16973718685929793346

namespace A005024

/-- `2*A094825(n+4)-A094788(n+3)` -/
def P16973718685929793346.Spec : Prop :=
  ∀ n, P16973718685929793346.a n = A005024 (n + 1)

end A005024

/-! ## A005024.P9259583976963088479

`A094825(n+5)-A094788(n+4)`
-/

namespace A005024.P9259583976963088479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094825 (n + 5) - A094788 (n + 4)

end

end A005024.P9259583976963088479

namespace A005024

/-- `A094825(n+5)-A094788(n+4)` -/
def P9259583976963088479.Spec : Prop :=
  ∀ n, P9259583976963088479.a n = A005024 (n + 1)

end A005024

/-! ## A005024.P16223683983469562048

`A259475(A052905(n+7)-4)`
-/

namespace A005024.P16223683983469562048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (A052905 (n + 7) - 4).toNat

end

end A005024.P16223683983469562048

namespace A005024

/-- `A259475(A052905(n+7)-4)` -/
def P16223683983469562048.Spec : Prop :=
  ∀ n, P16223683983469562048.a n = A005024 (n + 1)

end A005024

/-! ## A005024.P4805412120518048271

`A259475(A000124(n+10)-10)`
-/

namespace A005024.P4805412120518048271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259475 (A000124 (n + 10) - 10).toNat

end

end A005024.P4805412120518048271

namespace A005024

/-- `A259475(A000124(n+10)-10)` -/
def P4805412120518048271.Spec : Prop :=
  ∀ n, P4805412120518048271.a n = A005024 (n + 1)

end A005024

/-! ## A005024.P6691373444632758916

`A188843(A167499(n+5)+2)`
-/

namespace A005024.P6691373444632758916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A167499 (n + 5) + 2).toNat

end

end A005024.P6691373444632758916

namespace A005024

/-- `A188843(A167499(n+5)+2)` -/
def P6691373444632758916.Spec : Prop :=
  ∀ n, P6691373444632758916.a n = A005024 (n + 1)

end A005024

/-! ## A005024.P12778831854349867235

`A188843(A000217(n+6)+7)`
-/

namespace A005024.P12778831854349867235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188843 (A000217 (n + 6) + 7).toNat

end

end A005024.P12778831854349867235

namespace A005024

/-- `A188843(A000217(n+6)+7)` -/
def P12778831854349867235.Spec : Prop :=
  ∀ n, P12778831854349867235.a n = A005024 (n + 1)

end A005024

/-!
# A005025: Random walks.

The programs for A005025, the canonical program `A005025.P15515043106583685117` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005025 has offset 1).

The definition of A005025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005025.P2427181035746472711

`A122588(n+2)`
-/

namespace A005025.P2427181035746472711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122588 (n + 2)

end

end A005025.P2427181035746472711

namespace A005025

/-- `A122588(n+2)` -/
def P2427181035746472711.Spec : Prop :=
  ∀ n, P2427181035746472711.a n = A005025 (n + 1)

end A005025

/-! ## A005025.P15515043106583685117

`∑[A370568(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005025

/-- `∑[A370568(n+1)]+1` -/
def P15515043106583685117.Spec : Prop :=
  ∀ n, P15515043106583685117.a n = A005025 (n + 1)

theorem P15515043106583685117.correct : P15515043106583685117.Spec := by
  intro n
  simp only [A005025, Nat.add_sub_cancel]

end A005025

/-! ## A005025.P2476612248542696401

`A370568(n+2)-A370391(n+2)`
-/

namespace A005025.P2476612248542696401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370568 (n + 2) - A370391 (n + 2)

end

end A005025.P2476612248542696401

namespace A005025

/-- `A370568(n+2)-A370391(n+2)` -/
def P2476612248542696401.Spec : Prop :=
  ∀ n, P2476612248542696401.a n = A005025 (n + 1)

end A005025

/-! ## A005025.P10462733765212479189

`record[A122588(A080513(A004442(n)))]`
-/

namespace A005025.P10462733765212479189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122588 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005025.P10462733765212479189

namespace A005025

/-- `record[A122588(A080513(A004442(n)))]` -/
def P10462733765212479189.Spec : Prop :=
  ∀ n, P10462733765212479189.a n = A005025 (n + 1)

end A005025

/-! ## A005025.P8729935990332706033

`record[A122588(A080513(A028242(n)))]`
-/

namespace A005025.P8729935990332706033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122588 (A080513 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005025.P8729935990332706033

namespace A005025

/-- `record[A122588(A080513(A028242(n)))]` -/
def P8729935990332706033.Spec : Prop :=
  ∀ n, P8729935990332706033.a n = A005025 (n + 1)

end A005025

/-! ## A005025.P11784950490163124580

`record[A122588(A133310(A133310(n)))]`
-/

namespace A005025.P11784950490163124580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122588 (A133310 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005025.P11784950490163124580

namespace A005025

/-- `record[A122588(A133310(A133310(n)))]` -/
def P11784950490163124580.Spec : Prop :=
  ∀ n, P11784950490163124580.a n = A005025 (n + 1)

end A005025

/-! ## A005025.P354463108375611335

`record[A122588(A051597(A008795(n)))]`
-/

namespace A005025.P354463108375611335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122588 (A051597 (A008795 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005025.P354463108375611335

namespace A005025

/-- `record[A122588(A051597(A008795(n)))]` -/
def P354463108375611335.Spec : Prop :=
  ∀ n, P354463108375611335.a n = A005025 (n + 1)

end A005025

/-!
# A005027: Number of trivalent maps with n nodes.

The programs for A005027, there is no canonical definition to state claims against.
-/

/-! ## A005027.P15040981206830182588

`(A005028(n+3)+A341855(n+3))/2`
-/

namespace A005027.P15040981206830182588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005028 (n + 3) + A341855 (n + 3) : ℚ) / 2

end

end A005027.P15040981206830182588

/-! ## A005027.P14018136758109675361

`A014682(A341855(n+3)+A005028(n+3))`
-/

namespace A005027.P14018136758109675361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A341855 (n + 3) + A005028 (n + 3)).toNat

end

end A005027.P14018136758109675361

/-! ## A005027.P3382585403812140349

`A273943(A341855(n+3)+A005028(n+3))`
-/

namespace A005027.P3382585403812140349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A341855 (n + 3) + A005028 (n + 3)).toNat

end

end A005027.P3382585403812140349

/-! ## A005027.P12324996489931311991

`A302042(A341855(n+3)+A005028(n+3))`
-/

namespace A005027.P12324996489931311991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A341855 (n + 3) + A005028 (n + 3)).toNat

end

end A005027.P12324996489931311991

/-!
# A005028: Number of symmetric trivalent maps with n nodes.

The programs for A005028, there is no canonical definition to state claims against.
-/

/-! ## A005028.P13085834946308900857

`2*A005027(n+3)-A341855(n+3)`
-/

namespace A005028.P13085834946308900857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005027 (n + 3) - A341855 (n + 3)

end

end A005028.P13085834946308900857

/-! ## A005028.P4071103690935050093

`A335380(A150220(n))`
-/

namespace A005028.P4071103690935050093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A150220 n).toNat

end

end A005028.P4071103690935050093

/-! ## A005028.P6490211654415817838

`A100196(Δ[Δ[A194088(n+1)]])`
-/

namespace A005028.P6490211654415817838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194088 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (f1 (n + 1) - f1 n).toNat

end

end A005028.P6490211654415817838

/-!
# A005029: a(n) = 13*2^n.

The programs for A005029, the canonical program `A005029.P908746192262662913` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005029 has offset 0).

The definition of A005029 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*2^n` (program `A005029.P908746192262662913`, by `A005029.P908746192262662913.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005029.P908746192262662913

`13*2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005029

/-- `13*2^n` -/
def P908746192262662913.Spec : Prop :=
  ∀ n, (P908746192262662913.a n : ℤ) = A005029 n

theorem P908746192262662913.correct : P908746192262662913.Spec := by
  intro n
  simp only [A005029]

end A005029

/-!
# A005030: a(n) = 5*3^n.

The programs for A005030, the canonical program `A005030.P15967928547537346890` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005030 has offset 0).

The definition of A005030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*3^n` (program `A005030.P15967928547537346890`, by `A005030.P15967928547537346890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005030.P15967928547537346890

`5*3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005030

/-- `5*3^n` -/
def P15967928547537346890.Spec : Prop :=
  ∀ n, (P15967928547537346890.a n : ℤ) = A005030 n

theorem P15967928547537346890.correct : P15967928547537346890.Spec := by
  intro n
  simp only [A005030]

end A005030

/-!
# A005032: a(n) = 7*3^n.

The programs for A005032, the canonical program `A005032.P3193663565037443634` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005032 has offset 0).

The definition of A005032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*3^n` (program `A005032.P3193663565037443634`, by `A005032.P3193663565037443634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005032.P3193663565037443634

`7*3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005032

/-- `7*3^n` -/
def P3193663565037443634.Spec : Prop :=
  ∀ n, (P3193663565037443634.a n : ℤ) = A005032 n

theorem P3193663565037443634.correct : P3193663565037443634.Spec := by
  intro n
  simp only [A005032]

end A005032

/-!
# A005033: Number of nonequivalent dissections of a polygon into n quadrilaterals by nonintersecting diagonals rooted at a cell up to rotation.

The programs for A005033, there is no canonical definition to state claims against.
-/

/-! ## A005033.P1538355546763754718

`A295222(∑[n+2])`
-/

namespace A005033.P1538355546763754718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005033.P1538355546763754718

/-! ## A005033.P12860594679696161847

`A047996(A064226(n+1))`
-/

namespace A005033.P12860594679696161847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A064226 (n + 1)).toNat

end

end A005033.P12860594679696161847

/-! ## A005033.P9899317107394850090

`A037306(A081267(n+1)+1)`
-/

namespace A005033.P9899317107394850090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A081267 (n + 1) + 1).toNat

end

end A005033.P9899317107394850090

/-! ## A005033.P8268058285691146391

`A037306(A178977(n)+1+n)`
-/

namespace A005033.P8268058285691146391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A178977 n + 1 + (n : ℤ)).toNat

end

end A005033.P8268058285691146391

/-! ## A005033.P12248399158938553136

`A047996(A060544(n+2)+n)`
-/

namespace A005033.P12248399158938553136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A060544 (n + 2) + (n : ℤ)).toNat

end

end A005033.P12248399158938553136

/-!
# A005034: Number of nonequivalent dissections of a polygon into n quadrilaterals by nonintersecting diagonals up to rotation.

The programs for A005034, there is no canonical definition to state claims against.
-/

/-! ## A005034.P16116162726858513646

`A295224(A212342(n+1))`
-/

namespace A005034.P16116162726858513646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A212342 (n + 1)).toNat

end

end A005034.P16116162726858513646

/-! ## A005034.P12355651563417197487

`A295224(A347553(n+3))`
-/

namespace A005034.P12355651563417197487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A347553 (n + 3)).toNat

end

end A005034.P12355651563417197487

/-! ## A005034.P10602199961587835052

`A295224(A027379(n)-n)`
-/

namespace A005034.P10602199961587835052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A027379 n - (n : ℤ)).toNat

end

end A005034.P10602199961587835052

/-! ## A005034.P9704911275658707478

`A295224(A028310(∑[n]+n))`
-/

namespace A005034.P9704911275658707478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A005034.P9704911275658707478

/-! ## A005034.P1073742934031810777

`A295224(A054254(n+1)+1)`
-/

namespace A005034.P1073742934031810777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A054254 (n + 1) + 1).toNat

end

end A005034.P1073742934031810777

/-! ## A005034.P17891640790609531019

`A295224(A179865(n+1)+n)`
-/

namespace A005034.P17891640790609531019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A005034.P17891640790609531019

/-! ## A005034.P3626280583777335081

`A295224(A278818(A000124(n)))`
-/

namespace A005034.P3626280583777335081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A278818 (A000124 n).toNat).toNat

end

end A005034.P3626280583777335081

/-! ## A005034.P13706576547456301732

`A295224(∑[A008619(A267873(n))])`
-/

namespace A005034.P13706576547456301732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A267873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005034.P13706576547456301732

/-! ## A005034.P4262023655504865008

`A295224(A000096(n)+A028310(n)-n)`
-/

namespace A005034.P4262023655504865008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A000096 n + (A028310 n - (n : ℤ))).toNat

end

end A005034.P4262023655504865008

/-! ## A005034.P12162863467220318410

`A295224(A000096(n)-(n-A028310(n)))`
-/

namespace A005034.P12162863467220318410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A000096 n - ((n : ℤ) - A028310 n)).toNat

end

end A005034.P12162863467220318410

/-!
# A005035: Number of nonequivalent dissections of a polygon into n quadrilaterals by nonintersecting diagonals rooted at a cell up to rotation and reflection.

The programs for A005035, there is no canonical definition to state claims against.
-/

/-! ## A005035.P5465546507772943398

`A295259(∑[n+2])`
-/

namespace A005035.P5465546507772943398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295259 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005035.P5465546507772943398

/-! ## A005035.P14044520018353978347

`or(char[1], A295259(A000096(n+1)))`
-/

namespace A005035.P14044520018353978347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A295259 (A000096 (n + 1)).toNat)

end

end A005035.P14044520018353978347

/-! ## A005035.P9695076494776000424

`A295259(A000096(n+1))+A000038(n+1)`
-/

namespace A005035.P9695076494776000424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295259 (A000096 (n + 1)).toNat + A000038 (n + 1)

end

end A005035.P9695076494776000424

/-! ## A005035.P14985802372310991575

`A007318(A000217(n))*A295259(A000096(n+1))`
-/

namespace A005035.P14985802372310991575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A295259 (A000096 (n + 1)).toNat

end

end A005035.P14985802372310991575

/-! ## A005035.P9826021439158028771

`A007318(A001877(n))*A295259(A000096(n+1))`
-/

namespace A005035.P9826021439158028771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001877 n).toNat * A295259 (A000096 (n + 1)).toNat

end

end A005035.P9826021439158028771

/-!
# A005036: Number of nonequivalent dissections of a polygon into n quadrilaterals by nonintersecting diagonals up to rotation and reflection.

The programs for A005036, there is no canonical definition to state claims against.
-/

/-! ## A005036.P14172118362962983437

`(A005034(n+1)+A047749(n+1))/2`
-/

namespace A005036.P14172118362962983437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005034 (n + 1) + A047749 (n + 1) : ℚ) / 2

end

end A005036.P14172118362962983437

/-! ## A005036.P3147999636170019355

`A295260(∑[n+2])`
-/

namespace A005036.P3147999636170019355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A005036.P3147999636170019355

/-! ## A005036.P8488153302947213070

`or(char[1], A295260(A347553(n+4)))`
-/

namespace A005036.P8488153302947213070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A295260 (A347553 (n + 4)).toNat)

end

end A005036.P8488153302947213070

/-! ## A005036.P16723300883514501377

`A295260(A000096(n+1))%A001003(n+2)`
-/

namespace A005036.P16723300883514501377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295260 (A000096 (n + 1)).toNat) (A001003 (n + 2))

end

end A005036.P16723300883514501377

/-! ## A005036.P992822854861678900

`A295260(A000096(n+1))+A033665(A002262(n))`
-/

namespace A005036.P992822854861678900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (A000096 (n + 1)).toNat + A033665 (A002262 n).toNat

end

end A005036.P992822854861678900

/-!
# A005037: Number of nonequivalent dissections of a polygon into n pentagons by nonintersecting diagonals rooted at a cell up to rotation.

The programs for A005037, there is no canonical definition to state claims against.
-/

/-! ## A005037.P17011083982263826641

`A132892(A001844(2*n+1)+n+2)`
-/

namespace A005037.P17011083982263826641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132892 (A001844 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A005037.P17011083982263826641

/-! ## A005037.P17621583065721592824

`A295222(∑[n+3]+1)`
-/

namespace A005037.P17621583065721592824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295222 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005037.P17621583065721592824

/-! ## A005037.P3691521152123394163

`A295222(Δ[A008778(n)])%A108424(n+2)`
-/

namespace A005037.P3691521152123394163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295222 (f1 (n + 1) - f1 n).toNat) (A108424 (n + 2))

end

end A005037.P3691521152123394163

/-! ## A005037.P4129524491156989981

`A037306(A090288(2*n+1)-n)`
-/

namespace A005037.P4129524491156989981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A090288 (2 * n + 1) - (n : ℤ)).toNat

end

end A005037.P4129524491156989981

/-! ## A005037.P14370439246161756166

`A037306(∑[A017101(2*n+1)]-1)`
-/

namespace A005037.P14370439246161756166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A005037.P14370439246161756166

/-!
# A005038: Number of nonequivalent dissections of a polygon into n pentagons by nonintersecting diagonals up to rotation.

The programs for A005038, there is no canonical definition to state claims against.
-/

/-! ## A005038.P10206175230829976395

`2*A005040(n+1)-A369472(n+1)`
-/

namespace A005038.P10206175230829976395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005040 (n + 1) - A369472 (n + 1)

end

end A005038.P10206175230829976395

/-! ## A005038.P7827319481260077438

`A295224(∑[n+3]+1)`
-/

namespace A005038.P7827319481260077438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005038.P7827319481260077438

/-! ## A005038.P14767491523020951956

`A295224(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A005038.P14767491523020951956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A005038.P14767491523020951956

/-! ## A005038.P5375015423851807366

`A295224(Δ[A008778(n)])+A000038(n)%2`
-/

namespace A005038.P5375015423851807366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (f1 (n + 1) - f1 n).toNat + Int.tmod (A000038 n) 2

end

end A005038.P5375015423851807366

/-! ## A005038.P9600759837003466870

`A295224(A052905(n)+3)+A008683(12*(n+1))`
-/

namespace A005038.P9600759837003466870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295224 (A052905 n + 3).toNat + A008683 (12 * (n + 1))

end

end A005038.P9600759837003466870

/-!
# A005039: Number of nonequivalent dissections of a polygon into n pentagons by nonintersecting diagonals rooted at a cell up to rotation and reflection.

The programs for A005039, there is no canonical definition to state claims against.
-/

/-! ## A005039.P15725662750671934940

`A295259(∑[n+3]+1)`
-/

namespace A005039.P15725662750671934940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295259 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005039.P15725662750671934940

/-! ## A005039.P5472503986997581236

`A295259(A055999(n)+4)+A000007(n+1)`
-/

namespace A005039.P5472503986997581236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295259 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A005039.P5472503986997581236

/-! ## A005039.P7376420198182119266

`A000034(2*n)*A295259(A055999(n)+4)`
-/

namespace A005039.P7376420198182119266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A295259 (A055999 n + 4).toNat

end

end A005039.P7376420198182119266

/-! ## A005039.P12848858071979053429

`A295259(A055999(n)+4)+6%A000034(n)`
-/

namespace A005039.P12848858071979053429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295259 (A055999 n + 4).toNat + Int.tmod 6 (A000034 n)

end

end A005039.P12848858071979053429

/-! ## A005039.P3748520662208520756

`A295259(A055999(n)+4)^A014963(A001157(n+1))`
-/

namespace A005039.P3748520662208520756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295259 (A055999 n + 4).toNat : ℚ) ^ (A014963 (A001157 (n + 1)).toNat : ℤ)

end

end A005039.P3748520662208520756

/-!
# A005040: Number of nonequivalent dissections of a polygon into n pentagons by nonintersecting diagonals up to rotation and reflection.

The programs for A005040, there is no canonical definition to state claims against.
-/

/-! ## A005040.P1194150290740395045

`(A005038(n+1)+A369472(n+1))/2`
-/

namespace A005040.P1194150290740395045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005038 (n + 1) + A369472 (n + 1) : ℚ) / 2

end

end A005040.P1194150290740395045

/-! ## A005040.P6903904975932549515

`A295260(∑[n+3]+1)`
-/

namespace A005040.P6903904975932549515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A005040.P6903904975932549515

/-! ## A005040.P9798866566769887275

`A295260(Δ[A008778(n)])%A199684(n)`
-/

namespace A005040.P9798866566769887275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295260 (f1 (n + 1) - f1 n).toNat) (A199684 n)

end

end A005040.P9798866566769887275

/-! ## A005040.P12617482189635579703

`A010052(n²)*A295260(Δ[A008778(n)])`
-/

namespace A005040.P12617482189635579703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A295260 (f1 (n + 1) - f1 n).toNat

end

end A005040.P12617482189635579703

/-! ## A005040.P5842513697522853735

`A295260(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A005040.P5842513697522853735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A005040.P5842513697522853735

/-!
# A005041: Positive integers k repeated ceiling(k/3) + 1 times.

The programs for A005041, the canonical program `A005041.P6486639920027005482` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005041 has offset 0).

The definition of A005041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005041.P12788109431934835859

`∑[char[∑[floor(n/3)-1]]]`
-/

namespace A005041.P12788109431934835859
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005041.P12788109431934835859

namespace A005041

/-- `∑[char[∑[floor(n/3)-1]]]` -/
def P12788109431934835859.Spec : Prop :=
  ∀ n, (P12788109431934835859.a n : ℤ) = A005041 n

end A005041

/-! ## A005041.P3631605186848807444

`∑[char[∑[A008620(n)+1]]]+1`
-/

namespace A005041.P3631605186848807444
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005041.P3631605186848807444

namespace A005041

/-- `∑[char[∑[A008620(n)+1]]]+1` -/
def P3631605186848807444.Spec : Prop :=
  ∀ n, (P3631605186848807444.a n : ℤ) = A005041 n

end A005041

/-! ## A005041.P16217542287723109474

`∑[char[∑[A002264(n)+2]]]+1`
-/

namespace A005041.P16217542287723109474
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005041.P16217542287723109474

namespace A005041

/-- `∑[char[∑[A002264(n)+2]]]+1` -/
def P16217542287723109474.Spec : Prop :=
  ∀ n, (P16217542287723109474.a n : ℤ) = A005041 n

end A005041

/-! ## A005041.P6486639920027005482

`A073188(n-a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005041

/-- `A073188(n-a(n-1))+1` -/
def P6486639920027005482.Spec : Prop :=
  ∀ n, P6486639920027005482.a n = A005041 n

theorem P6486639920027005482.correct : P6486639920027005482.Spec := by
  intro n
  simp only [A005041]

end A005041

/-! ## A005041.P10428409811975839610

`∑[char[A089108(n+1)-1]]+1`
-/

namespace A005041.P10428409811975839610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089108 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A005041.P10428409811975839610

namespace A005041

/-- `∑[char[A089108(n+1)-1]]+1` -/
def P10428409811975839610.Spec : Prop :=
  ∀ n, (P10428409811975839610.a n : ℤ) = A005041 n

end A005041

/-! ## A005041.P12591771751565763099

`char[A001840(n+1)+n+1]+a(n-1)` with `a(0)=1`
-/

namespace A005041.P12591771751565763099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A005041.P12591771751565763099

namespace A005041

/-- `char[A001840(n+1)+n+1]+a(n-1)` -/
def P12591771751565763099.Spec : Prop :=
  ∀ n, (P12591771751565763099.a n : ℤ) = A005041 n

end A005041

/-! ## A005041.P14299591578131533679

`A073188(n+3)-2`
-/

namespace A005041.P14299591578131533679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (n + 3) - 2

end

end A005041.P14299591578131533679

namespace A005041

/-- `A073188(n+3)-2` -/
def P14299591578131533679.Spec : Prop :=
  ∀ n, P14299591578131533679.a n = A005041 n

end A005041

/-! ## A005041.P3925462906309500026

`A123870(n+4)-8`
-/

namespace A005041.P3925462906309500026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123870 (n + 4) - 8

end

end A005041.P3925462906309500026

namespace A005041

/-- `A123870(n+4)-8` -/
def P3925462906309500026.Spec : Prop :=
  ∀ n, P3925462906309500026.a n = A005041 n

end A005041

/-! ## A005041.P2907343340293601174

`floor(log(A365379(n+2)))`
-/

namespace A005041.P2907343340293601174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A365379 (n + 2) : ℝ)⌋

end

end A005041.P2907343340293601174

namespace A005041

/-- `floor(log(A365379(n+2)))` -/
def P2907343340293601174.Spec : Prop :=
  ∀ n, P2907343340293601174.a n = A005041 n

end A005041

/-!
# A005043: Riordan numbers: a(n) = (n-1)*(2*a(n-1) + 3*a(n-2))/(n+1).

The programs for A005043, the canonical program `A005043.P11838040305800302990` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005043 has offset 0).

The definition of A005043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005043.P11838040305800302990

`A001006(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005043

/-- `A001006(n-1)-a(n-1)` -/
def P11838040305800302990.Spec : Prop :=
  ∀ n, P11838040305800302990.a n = A005043 n

theorem P11838040305800302990.correct : P11838040305800302990.Spec := by
  intro n
  simp only [A005043]

end A005043

/-! ## A005043.P4892537699221286610

`A309303(n)+A309303(n+1)`
-/

namespace A005043.P4892537699221286610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309303 n + A309303 (n + 1)

end

end A005043.P4892537699221286610

namespace A005043

/-- `A309303(n)+A309303(n+1)` -/
def P4892537699221286610.Spec : Prop :=
  ∀ n, P4892537699221286610.a n = A005043 n

end A005043

/-! ## A005043.P13307808907956723271

`(n-1)*(2*a(n-1)+3*a(n-2))/(n+1)` with `a(0)=1, a(1)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005043.P13307808907956723271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (2 * a (n - 1) + 3 * a (n - 2)) / (n + 1 : ℚ)

end

end A005043.P13307808907956723271

namespace A005043

/-- `(n-1)*(2*a(n-1)+3*a(n-2))/(n+1)` -/
def P13307808907956723271.Spec : Prop :=
  ∀ n, P13307808907956723271.a n = (A005043 n : ℚ)

end A005043

/-! ## A005043.P15453946662052036437

`abs(A099323(n+1))`
-/

namespace A005043.P15453946662052036437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 (n + 1)|

end

end A005043.P15453946662052036437

namespace A005043

/-- `abs(A099323(n+1))` -/
def P15453946662052036437.Spec : Prop :=
  ∀ n, P15453946662052036437.a n = A005043 n

end A005043

/-! ## A005043.P12132912377631897089

`abs(A174297(n+2))`
-/

namespace A005043.P12132912377631897089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174297 (n + 2)|

end

end A005043.P12132912377631897089

namespace A005043

/-- `abs(A174297(n+2))` -/
def P12132912377631897089.Spec : Prop :=
  ∀ n, P12132912377631897089.a n = A005043 n

end A005043

/-! ## A005043.P7154238954787193315

`abs(2-∑[A166587(n)])`
-/

namespace A005043.P7154238954787193315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A005043.P7154238954787193315

namespace A005043

/-- `abs(2-∑[A166587(n)])` -/
def P7154238954787193315.Spec : Prop :=
  ∀ n, P7154238954787193315.a n = A005043 n

end A005043

/-! ## A005043.P9794832953108638129

`abs(1-A366403(n+1))`
-/

namespace A005043.P9794832953108638129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A366403 (n + 1)|

end

end A005043.P9794832953108638129

namespace A005043

/-- `abs(1-A366403(n+1))` -/
def P9794832953108638129.Spec : Prop :=
  ∀ n, P9794832953108638129.a n = A005043 n

end A005043

/-! ## A005043.P13052808241172479409

`abs(A372023(n+1)/2)`
-/

namespace A005043.P13052808241172479409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A372023 (n + 1) : ℚ) / 2|

end

end A005043.P13052808241172479409

namespace A005043

/-- `abs(A372023(n+1)/2)` -/
def P13052808241172479409.Spec : Prop :=
  ∀ n, P13052808241172479409.a n = (A005043 n : ℚ)

end A005043

/-! ## A005043.P17683149040309395664

`A105695(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A005043.P17683149040309395664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A105695 n + a (n - 2)

end

end A005043.P17683149040309395664

namespace A005043

/-- `A105695(n)+a(n-2)` -/
def P17683149040309395664.Spec : Prop :=
  ∀ n, P17683149040309395664.a n = A005043 n

end A005043

/-! ## A005043.P14011067380805643544

`A086246(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A005043.P14011067380805643544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086246 (n + 1) - a (n - 1)

end

end A005043.P14011067380805643544

namespace A005043

/-- `A086246(n+1)-a(n-1)` -/
def P14011067380805643544.Spec : Prop :=
  ∀ n, P14011067380805643544.a n = A005043 n

end A005043

/-! ## A005043.P8028765436852350263

`A168049(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A005043.P8028765436852350263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168049 (n + 1) - a (n - 1)

end

end A005043.P8028765436852350263

namespace A005043

/-- `A168049(n+1)-a(n-1)` -/
def P8028765436852350263.Spec : Prop :=
  ∀ n, P8028765436852350263.a n = A005043 n

end A005043

/-! ## A005043.P13337722953275914766

`gcd(A000038(n), A099323(n+1))`
-/

namespace A005043.P13337722953275914766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A099323 (n + 1))

end

end A005043.P13337722953275914766

namespace A005043

/-- `gcd(A000038(n), A099323(n+1))` -/
def P13337722953275914766.Spec : Prop :=
  ∀ n, (P13337722953275914766.a n : ℤ) = A005043 n

end A005043

/-! ## A005043.P15443872599517401021

`lcm(A020985(n), A099323(n+1))`
-/

namespace A005043.P15443872599517401021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A099323 (n + 1))

end

end A005043.P15443872599517401021

namespace A005043

/-- `lcm(A020985(n), A099323(n+1))` -/
def P15443872599517401021.Spec : Prop :=
  ∀ n, (P15443872599517401021.a n : ℤ) = A005043 n

end A005043

/-! ## A005043.P13426303130465045157

`(2-∑[A166587(n)])*A033999(n)`
-/

namespace A005043.P13426303130465045157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A005043.P13426303130465045157

namespace A005043

/-- `(2-∑[A166587(n)])*A033999(n)` -/
def P13426303130465045157.Spec : Prop :=
  ∀ n, P13426303130465045157.a n = A005043 n

end A005043

/-! ## A005043.P11664282847199369481

`A082395(n+1)+A082395(n+1)-A097332(n)`
-/

namespace A005043.P11664282847199369481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1) + (A082395 (n + 1) - A097332 n)

end

end A005043.P11664282847199369481

namespace A005043

/-- `A082395(n+1)+A082395(n+1)-A097332(n)` -/
def P11664282847199369481.Spec : Prop :=
  ∀ n, P11664282847199369481.a n = A005043 n

end A005043

/-! ## A005043.P5041895926942652160

`(A174296(n+1)-A174296(n))*A099323(n+1)`
-/

namespace A005043.P5041895926942652160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174296 (n + 1) - A174296 n) * A099323 (n + 1)

end

end A005043.P5041895926942652160

namespace A005043

/-- `(A174296(n+1)-A174296(n))*A099323(n+1)` -/
def P5041895926942652160.Spec : Prop :=
  ∀ n, P5041895926942652160.a n = A005043 n

end A005043

/-! ## A005043.P13091682839227001013

`A020985(2*n+1)*A020985(n)*A099323(n+1)`
-/

namespace A005043.P13091682839227001013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A020985 n * A099323 (n + 1)

end

end A005043.P13091682839227001013

namespace A005043

/-- `A020985(2*n+1)*A020985(n)*A099323(n+1)` -/
def P13091682839227001013.Spec : Prop :=
  ∀ n, P13091682839227001013.a n = A005043 n

end A005043

/-! ## A005043.P4302223811866567411

`2*A082395(n+1)-A097332(n)`
-/

namespace A005043.P4302223811866567411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082395 (n + 1) - A097332 n

end

end A005043.P4302223811866567411

namespace A005043

/-- `2*A082395(n+1)-A097332(n)` -/
def P4302223811866567411.Spec : Prop :=
  ∀ n, P4302223811866567411.a n = A005043 n

end A005043

/-! ## A005043.P10253522612659613446

`A082395(n+1)+A001006(n)-A082395(n+2)`
-/

namespace A005043.P10253522612659613446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 1) + (A001006 n - A082395 (n + 2))

end

end A005043.P10253522612659613446

namespace A005043

/-- `A082395(n+1)+A001006(n)-A082395(n+2)` -/
def P10253522612659613446.Spec : Prop :=
  ∀ n, P10253522612659613446.a n = A005043 n

end A005043

/-! ## A005043.P12793894009593866011

`A342912(n)-A002026(n)`
-/

namespace A005043.P12793894009593866011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 n - A002026 n

end

end A005043.P12793894009593866011

namespace A005043

/-- `A342912(n)-A002026(n)` -/
def P12793894009593866011.Spec : Prop :=
  ∀ n, P12793894009593866011.a n = A005043 n

end A005043

/-!
# A005044: Alcuin's sequence: expansion of x^3/((1-x^2)*(1-x^3)*(1-x^4)).

The programs for A005044, the canonical program `A005044.P15996777699151766909` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005044 has offset 0).

The definition of A005044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005044.P15996777699151766909

`round(n²/12)-floor(n/4)*floor((n+2)/4)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005044

/-- `round(n²/12)-floor(n/4)*floor((n+2)/4)` -/
def P15996777699151766909.Spec : Prop :=
  ∀ n, P15996777699151766909.a n = A005044 n

theorem P15996777699151766909.correct : P15996777699151766909.Spec := by
  intro n
  simp only [A005044]

end A005044

/-! ## A005044.P2972587643599163218

`round((n+3)²/12)%floor((floor(n/2)/2+1)²)`
-/

namespace A005044.P2972587643599163218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)) ⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋

end

end A005044.P2972587643599163218

namespace A005044

/-- `round((n+3)²/12)%floor((floor(n/2)/2+1)²)` -/
def P2972587643599163218.Spec : Prop :=
  ∀ n, P2972587643599163218.a n = A005044 n

end A005044

/-! ## A005044.P17712602517523578683

`Δ[A026810(n)]`
-/

namespace A005044.P17712602517523578683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005044.P17712602517523578683

namespace A005044

/-- `Δ[A026810(n)]` -/
def P17712602517523578683.Spec : Prop :=
  ∀ n, P17712602517523578683.a n = A005044 n

end A005044

/-! ## A005044.P17853903934458868020

`∑{d}[n, A051493(#)]`
-/

namespace A005044.P17853903934458868020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051493 d

end

end A005044.P17853903934458868020

namespace A005044

/-- `∑{d}[n, A051493(#)]` -/
def P17853903934458868020.Spec : Prop :=
  ∀ n, P17853903934458868020.a n = A005044 n

end A005044

/-! ## A005044.P4394518387866211458

`A069905(A030451(n))`
-/

namespace A005044.P4394518387866211458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A030451 n).toNat

end

end A005044.P4394518387866211458

namespace A005044

/-- `A069905(A030451(n))` -/
def P4394518387866211458.Spec : Prop :=
  ∀ n, P4394518387866211458.a n = A005044 n

end A005044

/-! ## A005044.P14678026618148978210

`A211540(A060762(n+1))`
-/

namespace A005044.P14678026618148978210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A060762 (n + 1)).toNat

end

end A005044.P14678026618148978210

namespace A005044

/-- `A211540(A060762(n+1))` -/
def P14678026618148978210.Spec : Prop :=
  ∀ n, P14678026618148978210.a n = A005044 n

end A005044

/-! ## A005044.P13448447075648526306

`A069905(A052938(n)-1)`
-/

namespace A005044.P13448447075648526306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A052938 n - 1).toNat

end

end A005044.P13448447075648526306

namespace A005044

/-- `A069905(A052938(n)-1)` -/
def P13448447075648526306.Spec : Prop :=
  ∀ n, P13448447075648526306.a n = A005044 n

end A005044

/-! ## A005044.P18432921218436171343

`A069905(1-A028242(n)+n)`
-/

namespace A005044.P18432921218436171343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (1 - A028242 n + (n : ℤ)).toNat

end

end A005044.P18432921218436171343

namespace A005044

/-- `A069905(1-A028242(n)+n)` -/
def P18432921218436171343.Spec : Prop :=
  ∀ n, P18432921218436171343.a n = A005044 n

end A005044

/-! ## A005044.P10262359906915415719

`A069905(1-(A028242(n)-n))`
-/

namespace A005044.P10262359906915415719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (1 - (A028242 n - (n : ℤ))).toNat

end

end A005044.P10262359906915415719

namespace A005044

/-- `A069905(1-(A028242(n)-n))` -/
def P10262359906915415719.Spec : Prop :=
  ∀ n, P10262359906915415719.a n = A005044 n

end A005044

/-! ## A005044.P15632256466949794167

`A069905(A028242(n+1))`
-/

namespace A005044.P15632256466949794167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (A028242 (n + 1)).toNat

end

end A005044.P15632256466949794167

namespace A005044

/-- `A069905(A028242(n+1))` -/
def P15632256466949794167.Spec : Prop :=
  ∀ n, P15632256466949794167.a n = A005044 n

end A005044

/-! ## A005044.P5405955165668382287

`Δ[A309795(n)+A309793(n)]`
-/

namespace A005044.P5405955165668382287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309795 n + A309793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005044.P5405955165668382287

namespace A005044

/-- `Δ[A309795(n)+A309793(n)]` -/
def P5405955165668382287.Spec : Prop :=
  ∀ n, P5405955165668382287.a n = A005044 n

end A005044

/-! ## A005044.P18087479231610385752

`A308066(A004277(n))`
-/

namespace A005044.P18087479231610385752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (A004277 n).toNat

end

end A005044.P18087479231610385752

namespace A005044

/-- `A308066(A004277(n))` -/
def P18087479231610385752.Spec : Prop :=
  ∀ n, P18087479231610385752.a n = A005044 n

end A005044

/-! ## A005044.P5869114580189208862

`A308066(A004275(n+1))`
-/

namespace A005044.P5869114580189208862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (A004275 (n + 1)).toNat

end

end A005044.P5869114580189208862

namespace A005044

/-- `A308066(A004275(n+1))` -/
def P5869114580189208862.Spec : Prop :=
  ∀ n, P5869114580189208862.a n = A005044 n

end A005044

/-! ## A005044.P1777048138994109571

`A308066(A092535(n+1))`
-/

namespace A005044.P1777048138994109571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (A092535 (n + 1)).toNat

end

end A005044.P1777048138994109571

namespace A005044

/-- `A308066(A092535(n+1))` -/
def P1777048138994109571.Spec : Prop :=
  ∀ n, P1777048138994109571.a n = A005044 n

end A005044

/-! ## A005044.P7960051730105049872

`A308066(A316571(n+1))`
-/

namespace A005044.P7960051730105049872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (A316571 (n + 1)).toNat

end

end A005044.P7960051730105049872

namespace A005044

/-- `A308066(A316571(n+1))` -/
def P7960051730105049872.Spec : Prop :=
  ∀ n, P7960051730105049872.a n = A005044 n

end A005044

/-! ## A005044.P5765039923317716416

`A308066(A004278(n+2))`
-/

namespace A005044.P5765039923317716416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (A004278 (n + 2)).toNat

end

end A005044.P5765039923317716416

namespace A005044

/-- `A308066(A004278(n+2))` -/
def P5765039923317716416.Spec : Prop :=
  ∀ n, P5765039923317716416.a n = A005044 n

end A005044

/-! ## A005044.P9911821153805441201

`A308066(A058992(n+2))`
-/

namespace A005044.P9911821153805441201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308066 (A058992 (n + 2)).toNat

end

end A005044.P9911821153805441201

namespace A005044

/-- `A308066(A058992(n+2))` -/
def P9911821153805441201.Spec : Prop :=
  ∀ n, P9911821153805441201.a n = A005044 n

end A005044

/-! ## A005044.P4508331308758593805

`A025865(A022429(n))`
-/

namespace A005044.P4508331308758593805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (A022429 n).toNat

end

end A005044.P4508331308758593805

namespace A005044

/-- `A025865(A022429(n))` -/
def P4508331308758593805.Spec : Prop :=
  ∀ n, P4508331308758593805.a n = A005044 n

end A005044

/-! ## A005044.P2637374154084223243

`A025865(A022433(n))`
-/

namespace A005044.P2637374154084223243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025865 (A022433 n).toNat

end

end A005044.P2637374154084223243

namespace A005044

/-- `A025865(A022433(n))` -/
def P2637374154084223243.Spec : Prop :=
  ∀ n, P2637374154084223243.a n = A005044 n

end A005044

/-! ## A005044.P15821281765894352176

`Δ[A288165(3*n)]`
-/

namespace A005044.P15821281765894352176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005044.P15821281765894352176

namespace A005044

/-- `Δ[A288165(3*n)]` -/
def P15821281765894352176.Spec : Prop :=
  ∀ n, P15821281765894352176.a n = A005044 n

end A005044

/-!
# A005045: Number of restricted 3 X 3 matrices with row and column sums n.

The programs for A005045, the canonical program `A005045.P7569671426427066010` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005045 has offset 0).

The definition of A005045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005045.P7569671426427066010

`∑[A325691(n)+A026810(n+2)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005045

/-- `∑[A325691(n)+A026810(n+2)]` -/
def P7569671426427066010.Spec : Prop :=
  ∀ n, P7569671426427066010.a n = A005045 n

theorem P7569671426427066010.correct : P7569671426427066010.Spec := by
  intro n
  simp only [A005045]

end A005045

/-! ## A005045.P17596593755433328742

`∑[A320592(n+6)-A173151(n)]`
-/

namespace A005045.P17596593755433328742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320592 (n + 6) - A173151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005045.P17596593755433328742

namespace A005045

/-- `∑[A320592(n+6)-A173151(n)]` -/
def P17596593755433328742.Spec : Prop :=
  ∀ n, P17596593755433328742.a n = A005045 n

end A005045

/-! ## A005045.P10248216807643439380

`∑[A325691(n)+∑[A005044(n+1)]]`
-/

namespace A005045.P10248216807643439380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005045.P10248216807643439380

namespace A005045

/-- `∑[A325691(n)+∑[A005044(n+1)]]` -/
def P10248216807643439380.Spec : Prop :=
  ∀ n, P10248216807643439380.a n = A005045 n

end A005045

/-! ## A005045.P13793038619330270192

`∑[a(n-2)+A005044(n+3)+A005044(n)]` with `a(0)=0, a(1)=0`
-/

namespace A005045.P13793038619330270192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + (A005044 (n + 3) + A005044 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005045.P13793038619330270192

namespace A005045

/-- `∑[a(n-2)+A005044(n+3)+A005044(n)]` -/
def P13793038619330270192.Spec : Prop :=
  ∀ n, P13793038619330270192.a n = A005045 n

end A005045

/-! ## A005045.P3474410193976680793

`floor(A226428(n+1)/A004188(2*(n+2)))`
-/

namespace A005045.P3474410193976680793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A226428 (n + 1) : ℚ) / (A004188 (2 * (n + 2)) : ℚ)⌋

end

end A005045.P3474410193976680793

namespace A005045

/-- `floor(A226428(n+1)/A004188(2*(n+2)))` -/
def P3474410193976680793.Spec : Prop :=
  ∀ n, P3474410193976680793.a n = A005045 n

end A005045

/-!
# A005046: Number of partitions of a 2n-set into even blocks.

The programs for A005046, there is no canonical definition to state claims against.
-/

/-! ## A005046.P13210911667750535582

`A081557(abs(1-2*n))`
-/

namespace A005046.P13210911667750535582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081557 |1 - (2 * n : ℤ)|.toNat

end

end A005046.P13210911667750535582

/-! ## A005046.P17529072329752619327

`A059386(n)+A059385(n)`
-/

namespace A005046.P17529072329752619327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059386 n + A059385 n

end

end A005046.P17529072329752619327

/-! ## A005046.P18340666793375242861

`A260884(n)+2*A059385(n)`
-/

namespace A005046.P18340666793375242861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260884 n + 2 * A059385 n

end

end A005046.P18340666793375242861

/-! ## A005046.P7694135430650172445

`2*A059386(n)-A260884(n)`
-/

namespace A005046.P7694135430650172445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059386 n - A260884 n

end

end A005046.P7694135430650172445

/-! ## A005046.P7814779109957761444

`A124321(C(Δ[n²], 2))`
-/

namespace A005046.P7814779109957761444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124321 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2)

end

end A005046.P7814779109957761444

/-!
# A005047: Minimal span of set of n elements with no 3-term arithmetic progression.

The programs for A005047, there is no canonical definition to state claims against.
-/

/-! ## A005047.P14362090598173044415

`A065825(n+1)-1`
-/

namespace A005047.P14362090598173044415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (n + 1) - 1

end

end A005047.P14362090598173044415

/-! ## A005047.P2937760894219329096

`lt[0, Δ[A003002(n)]]`
-/

namespace A005047.P2937760894219329096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A005047.P2937760894219329096

/-! ## A005047.P5797439992260673645

`A023443(A065825(n+1))`
-/

namespace A005047.P5797439992260673645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A065825 (n + 1)).toNat

end

end A005047.P5797439992260673645

/-! ## A005047.P3930821436409302414

`record[A065825(A292267(n))-1]`
-/

namespace A005047.P3930821436409302414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A292267 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005047.P3930821436409302414

/-!
# A005048: Minimal span of set of n elements with no 4-term arithmetic progression.

The programs for A005048, there is no canonical definition to state claims against.
-/

/-! ## A005048.P17715487977885388771

`A225745(n+4)-1`
-/

namespace A005048.P17715487977885388771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225745 (n + 4) - 1

end

end A005048.P17715487977885388771

/-! ## A005048.P17403670836884387012

`A023443(A225745(n+4))`
-/

namespace A005048.P17403670836884387012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A225745 (n + 4)).toNat

end

end A005048.P17403670836884387012

/-! ## A005048.P3036420508089437557

`abs(1-A225745(A020705(n)))`
-/

namespace A005048.P3036420508089437557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A225745 (A020705 n).toNat|

end

end A005048.P3036420508089437557

/-! ## A005048.P15545387289965250330

`A171173(A225745(n+4)²)`
-/

namespace A005048.P15545387289965250330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A225745 (n + 4) ^ 2).toNat

end

end A005048.P15545387289965250330

/-!
# A005049: Minimal span of set of n elements with no 5-term arithmetic progression.

The programs for A005049, there is no canonical definition to state claims against.
-/

/-! ## A005049.P523056569396865826

`A225859(n+5)-1`
-/

namespace A005049.P523056569396865826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (n + 5) - 1

end

end A005049.P523056569396865826

/-! ## A005049.P9165491006431893619

`A023443(A225859(n+5))`
-/

namespace A005049.P9165491006431893619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A225859 (n + 5)).toNat

end

end A005049.P9165491006431893619

/-! ## A005049.P5651911262512264909

`A171173(A225859(n+5)²)`
-/

namespace A005049.P5651911262512264909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A225859 (n + 5) ^ 2).toNat

end

end A005049.P5651911262512264909

/-! ## A005049.P18045673073192729062

`A023444(A225859(n+5)+1)`
-/

namespace A005049.P18045673073192729062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A225859 (n + 5) + 1).toNat

end

end A005049.P18045673073192729062

/-!
# A005050: Minimal span of set of n elements with no 6-term arithmetic progression.

The programs for A005050, there is no canonical definition to state claims against.
-/

/-! ## A005050.P1150095524551985984

`A226066(n+6)-1`
-/

namespace A005050.P1150095524551985984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226066 (n + 6) - 1

end

end A005050.P1150095524551985984

/-! ## A005050.P12208848069752968034

`A023443(A226066(n+6))`
-/

namespace A005050.P12208848069752968034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A226066 (n + 6)).toNat

end

end A005050.P12208848069752968034

/-! ## A005050.P12191562788663932525

`abs(A226066(n+6)+A033999(2*n+1))`
-/

namespace A005050.P12191562788663932525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226066 (n + 6) + A033999 (2 * n + 1)|

end

end A005050.P12191562788663932525

/-! ## A005050.P4150152197544103120

`∑{d}[A233583(A226066(n+6)), A000010(#)]`
-/

namespace A005050.P4150152197544103120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A226066 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A005050.P4150152197544103120

/-! ## A005050.P6911709822258513949

`A007318(∑[n])*A233583(A226066(n+6))`
-/

namespace A005050.P6911709822258513949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A233583 (A226066 (n + 6)).toNat

end

end A005050.P6911709822258513949

/-!
# A005051: a(n) = 8*3^n.

The programs for A005051, the canonical program `A005051.P1587912369668506881` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005051 has offset 0).

The definition of A005051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*3^n` (program `A005051.P1587912369668506881`, by `A005051.P1587912369668506881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005051.P1587912369668506881

`8*3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005051

/-- `8*3^n` -/
def P1587912369668506881.Spec : Prop :=
  ∀ n, (P1587912369668506881.a n : ℤ) = A005051 n

theorem P1587912369668506881.correct : P1587912369668506881.Spec := by
  intro n
  simp only [A005051]

end A005051

/-!
# A005052: a(n) = 10*3^n.

The programs for A005052, the canonical program `A005052.P17482909579821624124` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005052 has offset 0).

The definition of A005052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*3^n` (program `A005052.P17482909579821624124`, by `A005052.P17482909579821624124.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005052.P17482909579821624124

`10*3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005052

/-- `10*3^n` -/
def P17482909579821624124.Spec : Prop :=
  ∀ n, (P17482909579821624124.a n : ℤ) = A005052 n

theorem P17482909579821624124.correct : P17482909579821624124.Spec := by
  intro n
  simp only [A005052]

end A005052

/-!
# A005053: Expansion of g.f. (1 - 2*x)/(1 - 5*x).

The programs for A005053, the canonical program `A005053.P2332909605853977959` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005053 has offset 0).

The definition of A005053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-5x))` (program `A005053.P2332909605853977959`, by `A005053.P2332909605853977959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005053.P2332909605853977959

`ogf((1-2x)/(1-5x))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005053

/-- `ogf((1-2x)/(1-5x))` -/
def P2332909605853977959.Spec : Prop :=
  ∀ n, P2332909605853977959.a n = A005053 n

theorem P2332909605853977959.correct : P2332909605853977959.Spec := by
  intro n
  simp only [A005053]

end A005053

/-! ## A005053.P297430250850478461

`5*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A005053.P297430250850478461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 * a (n - 1)

end

end A005053.P297430250850478461

namespace A005053

/-- `5*a(n-1)` -/
def P297430250850478461.Spec : Prop :=
  ∀ n, (P297430250850478461.a n : ℤ) = A005053 n

end A005053

/-! ## A005053.P14331704132748519568

`ceil(3*5^(n-1))`
-/

namespace A005053.P14331704132748519568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A005053.P14331704132748519568

namespace A005053

/-- `ceil(3*5^(n-1))` -/
def P14331704132748519568.Spec : Prop :=
  ∀ n, P14331704132748519568.a n = A005053 n

end A005053

/-! ## A005053.P15078845091458751166

`or(1, floor(3*5^(n-1)))`
-/

namespace A005053.P15078845091458751166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊3 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A005053.P15078845091458751166

namespace A005053

/-- `or(1, floor(3*5^(n-1)))` -/
def P15078845091458751166.Spec : Prop :=
  ∀ n, P15078845091458751166.a n = A005053 n

end A005053

/-! ## A005053.P5138026498653720472

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A005053.P5138026498653720472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A005053.P5138026498653720472

namespace A005053

/-- `abs(∏[-a(n-1)])` -/
def P5138026498653720472.Spec : Prop :=
  ∀ n, P5138026498653720472.a n = A005053 n

end A005053

/-! ## A005053.P8522204415695169903

`Δ[abs(1-lcm(5, a(n-1)))]` with `a(0)=0`
-/

namespace A005053.P8522204415695169903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  |1 - (Int.lcm 5 (f1 (n - 1)) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005053.P8522204415695169903

namespace A005053

/-- `Δ[abs(1-lcm(5, a(n-1)))]` -/
def P8522204415695169903.Spec : Prop :=
  ∀ n, P8522204415695169903.a n = A005053 n

end A005053

/-! ## A005053.P120907872836358606

`a(n-1)/(1-4/5)` with `a(0)=1, a(1)=3`
-/

namespace A005053.P120907872836358606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A005053.P120907872836358606

namespace A005053

/-- `a(n-1)/(1-4/5)` -/
def P120907872836358606.Spec : Prop :=
  ∀ n, P120907872836358606.a n = (A005053 n : ℚ)

end A005053

/-! ## A005053.P13733468804858832970

`A249512(2*n)`
-/

namespace A005053.P13733468804858832970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249512 (2 * n)

end

end A005053.P13733468804858832970

namespace A005053

/-- `A249512(2*n)` -/
def P13733468804858832970.Spec : Prop :=
  ∀ n, P13733468804858832970.a n = A005053 n

end A005053

/-! ## A005053.P2814933037583292984

`3*A168092(n+1)^(n-1)`
-/

namespace A005053.P2814933037583292984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (A168092 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A005053.P2814933037583292984

namespace A005053

/-- `3*A168092(n+1)^(n-1)` -/
def P2814933037583292984.Spec : Prop :=
  ∀ n, P2814933037583292984.a n = (A005053 n : ℚ)

end A005053

/-! ## A005053.P11207718403859024752

`3*A128999(n+2)^(n-1)`
-/

namespace A005053.P11207718403859024752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (A128999 (n + 2) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A005053.P11207718403859024752

namespace A005053

/-- `3*A128999(n+2)^(n-1)` -/
def P11207718403859024752.Spec : Prop :=
  ∀ n, P11207718403859024752.a n = (A005053 n : ℚ)

end A005053

/-! ## A005053.P2473290207971770759

`3*A210032(n+3)^(n-1)`
-/

namespace A005053.P2473290207971770759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (A210032 (n + 3) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A005053.P2473290207971770759

namespace A005053

/-- `3*A210032(n+3)^(n-1)` -/
def P2473290207971770759.Spec : Prop :=
  ∀ n, P2473290207971770759.a n = (A005053 n : ℚ)

end A005053

/-! ## A005053.P1054887306450320510

`a(n-1)+A189274(n)+a(n-1)` with `a(0)=1`
-/

namespace A005053.P1054887306450320510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A189274 n + a (n - 1))

end

end A005053.P1054887306450320510

namespace A005053

/-- `a(n-1)+A189274(n)+a(n-1)` -/
def P1054887306450320510.Spec : Prop :=
  ∀ n, P1054887306450320510.a n = A005053 n

end A005053

/-! ## A005053.P5838655495946666456

`A005517(A008486(n))`
-/

namespace A005053.P5838655495946666456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A008486 n).toNat

end

end A005053.P5838655495946666456

namespace A005053

/-- `A005517(A008486(n))` -/
def P5838655495946666456.Spec : Prop :=
  ∀ n, P5838655495946666456.a n = A005053 n

end A005053

/-! ## A005053.P546550441528546825

`A056487(A004273(n))`
-/

namespace A005053.P546550441528546825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (A004273 n).toNat

end

end A005053.P546550441528546825

namespace A005053

/-- `A056487(A004273(n))` -/
def P546550441528546825.Spec : Prop :=
  ∀ n, P546550441528546825.a n = A005053 n

end A005053

/-! ## A005053.P3909538764119250211

`A140730(A130824(n))`
-/

namespace A005053.P3909538764119250211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A130824 n).toNat

end

end A005053.P3909538764119250211

namespace A005053

/-- `A140730(A130824(n))` -/
def P3909538764119250211.Spec : Prop :=
  ∀ n, P3909538764119250211.a n = A005053 n

end A005053

/-! ## A005053.P13183204287520058754

`A140730(2*A004273(n))`
-/

namespace A005053.P13183204287520058754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (2 * A004273 n).toNat

end

end A005053.P13183204287520058754

namespace A005053

/-- `A140730(2*A004273(n))` -/
def P13183204287520058754.Spec : Prop :=
  ∀ n, P13183204287520058754.a n = A005053 n

end A005053

/-! ## A005053.P10941980537087033812

`∩[A056487(n), A097111(n)]`
-/

namespace A005053.P10941980537087033812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097111 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005053.P10941980537087033812

namespace A005053

/-- `∩[A056487(n), A097111(n)]` -/
def P10941980537087033812.Spec : Prop :=
  ∀ n, (P10941980537087033812.a n : ℤ) = A005053 n

end A005053

/-! ## A005053.P10791753581091518604

`∩[A056487(n), A132158(n)]`
-/

namespace A005053.P10791753581091518604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132158 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005053.P10791753581091518604

namespace A005053

/-- `∩[A056487(n), A132158(n)]` -/
def P10791753581091518604.Spec : Prop :=
  ∀ n, (P10791753581091518604.a n : ℤ) = A005053 n

end A005053

/-! ## A005053.P7332022254558396939

`∩[A097111(n), A132158(n)]`
-/

namespace A005053.P7332022254558396939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132158 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005053.P7332022254558396939

namespace A005053

/-- `∩[A097111(n), A132158(n)]` -/
def P7332022254558396939.Spec : Prop :=
  ∀ n, (P7332022254558396939.a n : ℤ) = A005053 n

end A005053

/-! ## A005053.P15282926404556393322

`∩[A097111(n), A133335(n)]`
-/

namespace A005053.P15282926404556393322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097111 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005053.P15282926404556393322

namespace A005053

/-- `∩[A097111(n), A133335(n)]` -/
def P15282926404556393322.Spec : Prop :=
  ∀ n, (P15282926404556393322.a n : ℤ) = A005053 n

end A005053

/-!
# A005054: a(0) = 1; a(n) = 4*5^(n-1) for n >= 1.

The programs for A005054, the canonical program `A005054.P4823834915544348338` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005054 has offset 0).

The definition of A005054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005054.P4823834915544348338

`5*a(n-1)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005054

/-- `5*a(n-1)` -/
def P4823834915544348338.Spec : Prop :=
  ∀ n, (P4823834915544348338.a n : ℤ) = A005054 n

theorem P4823834915544348338.correct : P4823834915544348338.Spec := by
  intro n
  simp only [A005054]

end A005054

/-! ## A005054.P14326684241088555686

`ceil(4*5^(n-1))`
-/

namespace A005054.P14326684241088555686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A005054.P14326684241088555686

namespace A005054

/-- `ceil(4*5^(n-1))` -/
def P14326684241088555686.Spec : Prop :=
  ∀ n, P14326684241088555686.a n = A005054 n

end A005054

/-! ## A005054.P10837913096438239861

`A000010(A000351(n))`
-/

namespace A005054.P10837913096438239861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000351 n).toNat

end

end A005054.P10837913096438239861

namespace A005054

/-- `A000010(A000351(n))` -/
def P10837913096438239861.Spec : Prop :=
  ∀ n, P10837913096438239861.a n = A005054 n

end A005054

/-! ## A005054.P12666720226167523600

`ogf((1-x)/(1-5x))`
-/

namespace A005054.P12666720226167523600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5] n

end

end A005054.P12666720226167523600

namespace A005054

/-- `ogf((1-x)/(1-5x))` -/
def P12666720226167523600.Spec : Prop :=
  ∀ n, P12666720226167523600.a n = A005054 n

end A005054

/-! ## A005054.P13861575344674473118

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A005054.P13861575344674473118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A005054.P13861575344674473118

namespace A005054

/-- `abs(∏[-a(n-1)])` -/
def P13861575344674473118.Spec : Prop :=
  ∀ n, P13861575344674473118.a n = A005054 n

end A005054

/-! ## A005054.P10768228235833810980

`a(n-1)/(1-4/5)` with `a(0)=1, a(1)=4`
-/

namespace A005054.P10768228235833810980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A005054.P10768228235833810980

namespace A005054

/-- `a(n-1)/(1-4/5)` -/
def P10768228235833810980.Spec : Prop :=
  ∀ n, P10768228235833810980.a n = (A005054 n : ℚ)

end A005054

/-! ## A005054.P9828801136011007923

`lcm(5^(n-1), a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A005054.P9828801136011007923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A005054.P9828801136011007923

namespace A005054

/-- `lcm(5^(n-1), a(n-1))` -/
def P9828801136011007923.Spec : Prop :=
  ∀ n, (P9828801136011007923.a n : ℤ) = A005054 n

end A005054

/-! ## A005054.P7135670614740423778

`∑[A055842(n)]`
-/

namespace A005054.P7135670614740423778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005054.P7135670614740423778

namespace A005054

/-- `∑[A055842(n)]` -/
def P7135670614740423778.Spec : Prop :=
  ∀ n, P7135670614740423778.a n = A005054 n

end A005054

/-! ## A005054.P278473781522625235

`A026395(2*n)`
-/

namespace A005054.P278473781522625235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 (2 * n)

end

end A005054.P278473781522625235

namespace A005054

/-- `A026395(2*n)` -/
def P278473781522625235.Spec : Prop :=
  ∀ n, P278473781522625235.a n = A005054 n

end A005054

/-! ## A005054.P14966440357102129453

`Δ[record[A133337(n)]]`
-/

namespace A005054.P14966440357102129453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005054.P14966440357102129453

namespace A005054

/-- `Δ[record[A133337(n)]]` -/
def P14966440357102129453.Spec : Prop :=
  ∀ n, P14966440357102129453.a n = A005054 n

end A005054

/-! ## A005054.P13558072675684562980

`Δ[record[A090882(n+1)]]`
-/

namespace A005054.P13558072675684562980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090882 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005054.P13558072675684562980

namespace A005054

/-- `Δ[record[A090882(n+1)]]` -/
def P13558072675684562980.Spec : Prop :=
  ∀ n, P13558072675684562980.a n = A005054 n

end A005054

/-! ## A005054.P14893403018039126560

`A133632(A004277(n))`
-/

namespace A005054.P14893403018039126560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (A004277 n).toNat

end

end A005054.P14893403018039126560

namespace A005054

/-- `A133632(A004277(n))` -/
def P14893403018039126560.Spec : Prop :=
  ∀ n, P14893403018039126560.a n = A005054 n

end A005054

/-! ## A005054.P981204502826410011

`A245478(A008486(n))`
-/

namespace A005054.P981204502826410011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A008486 n).toNat

end

end A005054.P981204502826410011

namespace A005054

/-- `A245478(A008486(n))` -/
def P981204502826410011.Spec : Prop :=
  ∀ n, P981204502826410011.a n = A005054 n

end A005054

/-! ## A005054.P7995142395022955830

`A133632(A004275(n+1))`
-/

namespace A005054.P7995142395022955830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (A004275 (n + 1)).toNat

end

end A005054.P7995142395022955830

namespace A005054

/-- `A133632(A004275(n+1))` -/
def P7995142395022955830.Spec : Prop :=
  ∀ n, P7995142395022955830.a n = A005054 n

end A005054

/-! ## A005054.P6671928546252100135

`A140730(A004273(2*n))`
-/

namespace A005054.P6671928546252100135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A004273 (2 * n)).toNat

end

end A005054.P6671928546252100135

namespace A005054

/-- `A140730(A004273(2*n))` -/
def P6671928546252100135.Spec : Prop :=
  ∀ n, P6671928546252100135.a n = A005054 n

end A005054

/-! ## A005054.P13107034185095672825

`A245478(A267528(2*n+1))`
-/

namespace A005054.P13107034185095672825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A267528 (2 * n + 1)).toNat

end

end A005054.P13107034185095672825

namespace A005054

/-- `A245478(A267528(2*n+1))` -/
def P13107034185095672825.Spec : Prop :=
  ∀ n, P13107034185095672825.a n = A005054 n

end A005054

/-! ## A005054.P549442129301767161

`A245478(A294732(2*(n+1)))`
-/

namespace A005054.P549442129301767161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A294732 (2 * (n + 1))).toNat

end

end A005054.P549442129301767161

namespace A005054

/-- `A245478(A294732(2*(n+1)))` -/
def P549442129301767161.Spec : Prop :=
  ∀ n, P549442129301767161.a n = A005054 n

end A005054

/-! ## A005054.P4858192599711465562

`A140730(A130824(2*n)/2)`
-/

namespace A005054.P4858192599711465562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (SequenceMachineLib.roundAway ((A130824 (2 * n) : ℚ) / 2)).toNat

end

end A005054.P4858192599711465562

namespace A005054

/-- `A140730(A130824(2*n)/2)` -/
def P4858192599711465562.Spec : Prop :=
  ∀ n, P4858192599711465562.a n = A005054 n

end A005054

/-! ## A005054.P17881842576572772721

`∩[A133632(n+1), A026395(n)]`
-/

namespace A005054.P17881842576572772721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A005054.P17881842576572772721

namespace A005054

/-- `∩[A133632(n+1), A026395(n)]` -/
def P17881842576572772721.Spec : Prop :=
  ∀ n, (P17881842576572772721.a n : ℤ) = A005054 n

end A005054

/-! ## A005054.P18340408702242935113

`A123010(n+1)+A123010(n+2)`
-/

namespace A005054.P18340408702242935113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123010 (n + 1) + A123010 (n + 2)

end

end A005054.P18340408702242935113

namespace A005054

/-- `A123010(n+1)+A123010(n+2)` -/
def P18340408702242935113.Spec : Prop :=
  ∀ n, P18340408702242935113.a n = A005054 n

end A005054

/-!
# A005055: a(n) = 7*5^n.

The programs for A005055, the canonical program `A005055.P17090067546905210598` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005055 has offset 0).

The definition of A005055 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*5^n` (program `A005055.P17090067546905210598`, by `A005055.P17090067546905210598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005055.P17090067546905210598

`7*5^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005055

/-- `7*5^n` -/
def P17090067546905210598.Spec : Prop :=
  ∀ n, (P17090067546905210598.a n : ℤ) = A005055 n

theorem P17090067546905210598.correct : P17090067546905210598.Spec := by
  intro n
  simp only [A005055]

end A005055

/-!
# A005056: a(n) = 3^n + 2^n - 1.

The programs for A005056, the canonical program `A005056.P15191753107222166333` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005056 has offset 0).

The definition of A005056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+2^n-1` (program `A005056.P15191753107222166333`, by `A005056.P15191753107222166333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005056.P15191753107222166333

`3^n+2^n-1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005056

/-- `3^n+2^n-1` -/
def P15191753107222166333.Spec : Prop :=
  ∀ n, P15191753107222166333.a n = A005056 n

theorem P15191753107222166333.correct : P15191753107222166333.Spec := by
  intro n
  simp only [A005056]

end A005056

/-! ## A005056.P10413875066228529651

`∑[ogf((1-2x-x^2)/(1-5x+6x^2))]`
-/

namespace A005056.P10413875066228529651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005056.P10413875066228529651

namespace A005056

/-- `∑[ogf((1-2x-x^2)/(1-5x+6x^2))]` -/
def P10413875066228529651.Spec : Prop :=
  ∀ n, P10413875066228529651.a n = A005056 n

end A005056

/-! ## A005056.P11139466994664498011

`∑[6*(a(n-1)-a(n-2))-a(n-1)]` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A005056.P11139466994664498011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n f1 =>
  6 * (f1 (n - 1) - f1 (n - 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005056.P11139466994664498011

namespace A005056

/-- `∑[6*(a(n-1)-a(n-2))-a(n-1)]` -/
def P11139466994664498011.Spec : Prop :=
  ∀ n, P11139466994664498011.a n = A005056 n

end A005056

/-! ## A005056.P14101650280001649688

`abs(1-A007689(n))`
-/

namespace A005056.P14101650280001649688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A007689 n|

end

end A005056.P14101650280001649688

namespace A005056

/-- `abs(1-A007689(n))` -/
def P14101650280001649688.Spec : Prop :=
  ∀ n, P14101650280001649688.a n = A005056 n

end A005056

/-! ## A005056.P2708098881962079277

`abs(2-A001550(n))`
-/

namespace A005056.P2708098881962079277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001550 n|

end

end A005056.P2708098881962079277

namespace A005056

/-- `abs(2-A001550(n))` -/
def P2708098881962079277.Spec : Prop :=
  ∀ n, P2708098881962079277.a n = A005056 n

end A005056

/-! ## A005056.P3449198741468525354

`abs(3-A173657(n))`
-/

namespace A005056.P3449198741468525354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A173657 n|

end

end A005056.P3449198741468525354

namespace A005056

/-- `abs(3-A173657(n))` -/
def P3449198741468525354.Spec : Prop :=
  ∀ n, P3449198741468525354.a n = A005056 n

end A005056

/-! ## A005056.P4437210288692438993

`Δ[A094374(n)-n]`
-/

namespace A005056.P4437210288692438993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005056.P4437210288692438993

namespace A005056

/-- `Δ[A094374(n)-n]` -/
def P4437210288692438993.Spec : Prop :=
  ∀ n, P4437210288692438993.a n = A005056 n

end A005056

/-! ## A005056.P11942237925412473063

`∑[abs(Δ[A085281(n)])]`
-/

namespace A005056.P11942237925412473063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005056.P11942237925412473063

namespace A005056

/-- `∑[abs(Δ[A085281(n)])]` -/
def P11942237925412473063.Spec : Prop :=
  ∀ n, P11942237925412473063.a n = A005056 n

end A005056

/-! ## A005056.P5465980646908663594

`2*(A124302(n)+a(n-1))` with `a(0)=1`
-/

namespace A005056.P5465980646908663594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (A124302 n + a (n - 1))

end

end A005056.P5465980646908663594

namespace A005056

/-- `2*(A124302(n)+a(n-1))` -/
def P5465980646908663594.Spec : Prop :=
  ∀ n, P5465980646908663594.a n = A005056 n

end A005056

/-! ## A005056.P10688639397737583274

`∑[A025192(n)+Δ[A011782(n)]]`
-/

namespace A005056.P10688639397737583274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005056.P10688639397737583274

namespace A005056

/-- `∑[A025192(n)+Δ[A011782(n)]]` -/
def P10688639397737583274.Spec : Prop :=
  ∀ n, P10688639397737583274.a n = A005056 n

end A005056

/-! ## A005056.P18370243567902375000

`abs(2-(A000244(n)+A000051(n)))`
-/

namespace A005056.P18370243567902375000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A000244 n + A000051 n)|

end

end A005056.P18370243567902375000

namespace A005056

/-- `abs(2-(A000244(n)+A000051(n)))` -/
def P18370243567902375000.Spec : Prop :=
  ∀ n, P18370243567902375000.a n = A005056 n

end A005056

/-! ## A005056.P16486955339718815209

`(A134350(n)+1)/2`
-/

namespace A005056.P16486955339718815209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134350 n + 1 : ℚ) / 2

end

end A005056.P16486955339718815209

namespace A005056

/-- `(A134350(n)+1)/2` -/
def P16486955339718815209.Spec : Prop :=
  ∀ n, P16486955339718815209.a n = (A005056 n : ℚ)

theorem P16486955339718815209.correct : P16486955339718815209.Spec := by
  intro n
  simp only [A005056, Nat.add_sub_cancel, A005056.P16486955339718815209.a, A005056.P15191753107222166333.a, A134350, A134350.P725072325556105248.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A005056

/-! ## A005056.P13403950436041700802

`(A033484(n)+A027649(n))/2`
-/

namespace A005056.P13403950436041700802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033484 n + A027649 n : ℚ) / 2

end

end A005056.P13403950436041700802

namespace A005056

/-- `(A033484(n)+A027649(n))/2` -/
def P13403950436041700802.Spec : Prop :=
  ∀ n, P13403950436041700802.a n = (A005056 n : ℚ)

theorem P13403950436041700802.correct : P13403950436041700802.Spec := by
  intro n
  simp only [A005056, Nat.add_sub_cancel, A005056.P13403950436041700802.a, A005056.P15191753107222166333.a, A027649, A027649.P2434933350896167885.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005056

/-! ## A005056.P6872602847129956526

`A199108(n)%A304167(n+1)`
-/

namespace A005056.P6872602847129956526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199108 n) (A304167 (n + 1))

end

end A005056.P6872602847129956526

namespace A005056

/-- `A199108(n)%A304167(n+1)` -/
def P6872602847129956526.Spec : Prop :=
  ∀ n, P6872602847129956526.a n = A005056 n

end A005056

/-! ## A005056.P11399015437030239582

`floor(A000079(n)+A048473(n)/2)`
-/

namespace A005056.P11399015437030239582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n : ℚ) + (A048473 n : ℚ) / 2⌋

end

end A005056.P11399015437030239582

namespace A005056

/-- `floor(A000079(n)+A048473(n)/2)` -/
def P11399015437030239582.Spec : Prop :=
  ∀ n, P11399015437030239582.a n = A005056 n

end A005056

/-! ## A005056.P11941289559642778102

`∑[A003946(n)+A000079(n)]/2`
-/

namespace A005056.P11941289559642778102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n + A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A005056.P11941289559642778102

namespace A005056

/-- `∑[A003946(n)+A000079(n)]/2` -/
def P11941289559642778102.Spec : Prop :=
  ∀ n, P11941289559642778102.a n = (A005056 n : ℚ)

end A005056

/-! ## A005056.P7608214956892242829

`(A060647(2*n)+A000225(n+1))/2`
-/

namespace A005056.P7608214956892242829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060647 (2 * n) + A000225 (n + 1) : ℚ) / 2

end

end A005056.P7608214956892242829

namespace A005056

/-- `(A060647(2*n)+A000225(n+1))/2` -/
def P7608214956892242829.Spec : Prop :=
  ∀ n, P7608214956892242829.a n = (A005056 n : ℚ)

end A005056

/-! ## A005056.P12697188088606022570

`(A060647(2*n)+A052955(2*n))/2`
-/

namespace A005056.P12697188088606022570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060647 (2 * n) + A052955 (2 * n) : ℚ) / 2

end

end A005056.P12697188088606022570

namespace A005056

/-- `(A060647(2*n)+A052955(2*n))/2` -/
def P12697188088606022570.Spec : Prop :=
  ∀ n, P12697188088606022570.a n = (A005056 n : ℚ)

end A005056

/-! ## A005056.P16520252531564103907

`(A062318(2*(n+1))+A000225(n+1))/2`
-/

namespace A005056.P16520252531564103907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062318 (2 * (n + 1)) + A000225 (n + 1) : ℚ) / 2

end

end A005056.P16520252531564103907

namespace A005056

/-- `(A062318(2*(n+1))+A000225(n+1))/2` -/
def P16520252531564103907.Spec : Prop :=
  ∀ n, P16520252531564103907.a n = (A005056 n : ℚ)

end A005056

/-!
# A005057: a(n) = 5^n - 2^n.

The programs for A005057, the canonical program `A005057.P1941828676936816176` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005057 has offset 0).

The definition of A005057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-2^n` (program `A005057.P1941828676936816176`, by `A005057.P1941828676936816176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005057.P1941828676936816176

`5^n-2^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005057

/-- `5^n-2^n` -/
def P1941828676936816176.Spec : Prop :=
  ∀ n, P1941828676936816176.a n = A005057 n

theorem P1941828676936816176.correct : P1941828676936816176.Spec := by
  intro n
  simp only [A005057]

end A005057

/-! ## A005057.P16133289405753771447

`ogf(3x/(1-7x+10x^2))`
-/

namespace A005057.P16133289405753771447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -7, 10] n

end

end A005057.P16133289405753771447

namespace A005057

/-- `ogf(3x/(1-7x+10x^2))` -/
def P16133289405753771447.Spec : Prop :=
  ∀ n, P16133289405753771447.a n = A005057 n

end A005057

/-! ## A005057.P16092290978307530264

`abs(1-A155596(n))`
-/

namespace A005057.P16092290978307530264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155596 n|

end

end A005057.P16092290978307530264

namespace A005057

/-- `abs(1-A155596(n))` -/
def P16092290978307530264.Spec : Prop :=
  ∀ n, P16092290978307530264.a n = A005057 n

end A005057

/-! ## A005057.P5169848304158706548

`abs(A000225(n)-A024049(n))`
-/

namespace A005057.P5169848304158706548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 n - A024049 n|

end

end A005057.P5169848304158706548

namespace A005057

/-- `abs(A000225(n)-A024049(n))` -/
def P5169848304158706548.Spec : Prop :=
  ∀ n, P5169848304158706548.a n = A005057 n

end A005057

/-! ## A005057.P2520412148321914682

`abs(A000325(n)-A024050(n))`
-/

namespace A005057.P2520412148321914682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000325 n - A024050 n|

end

end A005057.P2520412148321914682

namespace A005057

/-- `abs(A000325(n)-A024050(n))` -/
def P2520412148321914682.Spec : Prop :=
  ∀ n, P2520412148321914682.a n = A005057 n

end A005057

/-! ## A005057.P1682011503240141801

`abs(A000051(n)-A034474(n))`
-/

namespace A005057.P1682011503240141801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A034474 n|

end

end A005057.P1682011503240141801

namespace A005057

/-- `abs(A000051(n)-A034474(n))` -/
def P1682011503240141801.Spec : Prop :=
  ∀ n, P1682011503240141801.a n = A005057 n

end A005057

/-! ## A005057.P6115749799363327730

`abs(A006127(n)-A104745(n))`
-/

namespace A005057.P6115749799363327730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006127 n - A104745 n|

end

end A005057.P6115749799363327730

namespace A005057

/-- `abs(A006127(n)-A104745(n))` -/
def P6115749799363327730.Spec : Prop :=
  ∀ n, P6115749799363327730.a n = A005057 n

end A005057

/-! ## A005057.P7776682056385067194

`∑[A005054(n)-A011782(n)]`
-/

namespace A005057.P7776682056385067194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005057.P7776682056385067194

namespace A005057

/-- `∑[A005054(n)-A011782(n)]` -/
def P7776682056385067194.Spec : Prop :=
  ∀ n, P7776682056385067194.a n = A005057 n

end A005057

/-! ## A005057.P13557312672941281052

`abs(A163864(2*n+1)-A000351(n))`
-/

namespace A005057.P13557312672941281052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163864 (2 * n + 1) - A000351 n|

end

end A005057.P13557312672941281052

namespace A005057

/-- `abs(A163864(2*n+1)-A000351(n))` -/
def P13557312672941281052.Spec : Prop :=
  ∀ n, P13557312672941281052.a n = A005057 n

end A005057

/-! ## A005057.P11996913124336494685

`record[A074872(n+1)-A164073(n+1)]`
-/

namespace A005057.P11996913124336494685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A164073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005057.P11996913124336494685

namespace A005057

/-- `record[A074872(n+1)-A164073(n+1)]` -/
def P11996913124336494685.Spec : Prop :=
  ∀ n, P11996913124336494685.a n = A005057 n

end A005057

/-! ## A005057.P5172512669595862500

`(A155596(n)-1)*A056595(A008578(n+1))`
-/

namespace A005057.P5172512669595862500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155596 n - 1) * A056595 (A008578 (n + 1)).toNat

end

end A005057.P5172512669595862500

namespace A005057

/-- `(A155596(n)-1)*A056595(A008578(n+1))` -/
def P5172512669595862500.Spec : Prop :=
  ∀ n, P5172512669595862500.a n = A005057 n

end A005057

/-! ## A005057.P6776559821171095578

`Δ[A003463(n)-A000051(n)]`
-/

namespace A005057.P6776559821171095578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005057.P6776559821171095578

namespace A005057

/-- `Δ[A003463(n)-A000051(n)]` -/
def P6776559821171095578.Spec : Prop :=
  ∀ n, P6776559821171095578.a n = A005057 n

end A005057

/-! ## A005057.P1633971985325951934

`Δ[A003463(n)-A000079(n)]`
-/

namespace A005057.P1633971985325951934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005057.P1633971985325951934

namespace A005057

/-- `Δ[A003463(n)-A000079(n)]` -/
def P1633971985325951934.Spec : Prop :=
  ∀ n, P1633971985325951934.a n = A005057 n

end A005057

/-! ## A005057.P7030706130440657429

`Δ[A003463(n)-A000225(n)]`
-/

namespace A005057.P7030706130440657429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005057.P7030706130440657429

namespace A005057

/-- `Δ[A003463(n)-A000225(n)]` -/
def P7030706130440657429.Spec : Prop :=
  ∀ n, P7030706130440657429.a n = A005057 n

end A005057

/-! ## A005057.P4655421746819368563

`Δ[A047850(n)-A000051(n)]`
-/

namespace A005057.P4655421746819368563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005057.P4655421746819368563

namespace A005057

/-- `Δ[A047850(n)-A000051(n)]` -/
def P4655421746819368563.Spec : Prop :=
  ∀ n, P4655421746819368563.a n = A005057 n

end A005057

/-! ## A005057.P5306908179163719629

`Δ[A003463(n)-A052548(n)]`
-/

namespace A005057.P5306908179163719629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A052548 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005057.P5306908179163719629

namespace A005057

/-- `Δ[A003463(n)-A052548(n)]` -/
def P5306908179163719629.Spec : Prop :=
  ∀ n, P5306908179163719629.a n = A005057 n

end A005057

/-! ## A005057.P16832665702736857664

`Δ[A104891(n)/5-Δ[A000225(n)]]`
-/

namespace A005057.P16832665702736857664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104891 n : ℚ) / 5 - (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005057.P16832665702736857664

namespace A005057

/-- `Δ[A104891(n)/5-Δ[A000225(n)]]` -/
def P16832665702736857664.Spec : Prop :=
  ∀ n, P16832665702736857664.a n = (A005057 n : ℚ)

end A005057

/-! ## A005057.P79882363103071569

`record[A227076(n)-A137688(n)]`
-/

namespace A005057.P79882363103071569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n - A137688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005057.P79882363103071569

namespace A005057

/-- `record[A227076(n)-A137688(n)]` -/
def P79882363103071569.Spec : Prop :=
  ∀ n, P79882363103071569.a n = A005057 n

end A005057

/-!
# A005058: a(n) = 5^n - 3^n.

The programs for A005058, the canonical program `A005058.P12301898712341759211` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005058 has offset 0).

The definition of A005058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-3^n` (program `A005058.P12301898712341759211`, by `A005058.P12301898712341759211.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005058.P12301898712341759211

`5^n-3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005058

/-- `5^n-3^n` -/
def P12301898712341759211.Spec : Prop :=
  ∀ n, P12301898712341759211.a n = A005058 n

theorem P12301898712341759211.correct : P12301898712341759211.Spec := by
  intro n
  simp only [A005058]

end A005058

/-! ## A005058.P15893982749929361783

`ogf(2x/(1-8x+15x^2))`
-/

namespace A005058.P15893982749929361783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -8, 15] n

end

end A005058.P15893982749929361783

namespace A005058

/-- `ogf(2x/(1-8x+15x^2))` -/
def P15893982749929361783.Spec : Prop :=
  ∀ n, P15893982749929361783.a n = A005058 n

end A005058

/-! ## A005058.P17022785921834627519

`2*A005059(n)`
-/

namespace A005058.P17022785921834627519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005059 n

end

end A005058.P17022785921834627519

namespace A005058

/-- `2*A005059(n)` -/
def P17022785921834627519.Spec : Prop :=
  ∀ n, P17022785921834627519.a n = A005058 n

end A005058

/-! ## A005058.P8252237257265869532

`xor(1, A155610(n))`
-/

namespace A005058.P8252237257265869532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155610 n)

end

end A005058.P8252237257265869532

namespace A005058

/-- `xor(1, A155610(n))` -/
def P8252237257265869532.Spec : Prop :=
  ∀ n, P8252237257265869532.a n = A005058 n

end A005058

/-! ## A005058.P4253753500987453637

`abs(A000244(n)-A000351(n))`
-/

namespace A005058.P4253753500987453637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A000351 n|

end

end A005058.P4253753500987453637

namespace A005058

/-- `abs(A000244(n)-A000351(n))` -/
def P4253753500987453637.Spec : Prop :=
  ∀ n, P4253753500987453637.a n = A005058 n

end A005058

/-! ## A005058.P11376118260382544030

`abs(A024025(n)-A024051(n))`
-/

namespace A005058.P11376118260382544030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024025 n - A024051 n|

end

end A005058.P11376118260382544030

namespace A005058

/-- `abs(A024025(n)-A024051(n))` -/
def P11376118260382544030.Spec : Prop :=
  ∀ n, P11376118260382544030.a n = A005058 n

end A005058

/-! ## A005058.P2707689634043779275

`abs(A001550(n)-A074501(n))`
-/

namespace A005058.P2707689634043779275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A074501 n|

end

end A005058.P2707689634043779275

namespace A005058

/-- `abs(A001550(n)-A074501(n))` -/
def P2707689634043779275.Spec : Prop :=
  ∀ n, P2707689634043779275.a n = A005058 n

end A005058

/-! ## A005058.P5360114557677151780

`abs(A074506(n)-A074511(n))`
-/

namespace A005058.P5360114557677151780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074506 n - A074511 n|

end

end A005058.P5360114557677151780

namespace A005058

/-- `abs(A074506(n)-A074511(n))` -/
def P5360114557677151780.Spec : Prop :=
  ∀ n, P5360114557677151780.a n = A005058 n

end A005058

/-! ## A005058.P27055065278793751

`abs(A103453(n)-A103455(n))`
-/

namespace A005058.P27055065278793751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103453 n - A103455 n|

end

end A005058.P27055065278793751

namespace A005058

/-- `abs(A103453(n)-A103455(n))` -/
def P27055065278793751.Spec : Prop :=
  ∀ n, P27055065278793751.a n = A005058 n

end A005058

/-! ## A005058.P14903424183914277535

`abs(A104743(n)-A104745(n))`
-/

namespace A005058.P14903424183914277535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104743 n - A104745 n|

end

end A005058.P14903424183914277535

namespace A005058

/-- `abs(A104743(n)-A104745(n))` -/
def P14903424183914277535.Spec : Prop :=
  ∀ n, P14903424183914277535.a n = A005058 n

end A005058

/-! ## A005058.P11091372902760369045

`abs(A155602(n)-A155616(n))`
-/

namespace A005058.P11091372902760369045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155602 n - A155616 n|

end

end A005058.P11091372902760369045

namespace A005058

/-- `abs(A155602(n)-A155616(n))` -/
def P11091372902760369045.Spec : Prop :=
  ∀ n, P11091372902760369045.a n = A005058 n

end A005058

/-! ## A005058.P14364239004923198143

`Δ[3^n+5^n]%(3^n+5^n)`
-/

namespace A005058.P14364239004923198143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (3 ^ n + 5 ^ n : ℤ)

end

end A005058.P14364239004923198143

namespace A005058

/-- `Δ[3^n+5^n]%(3^n+5^n)` -/
def P14364239004923198143.Spec : Prop :=
  ∀ n, P14364239004923198143.a n = A005058 n

end A005058

/-! ## A005058.P6549191466880433142

`Δ[A007798(n)]`
-/

namespace A005058.P6549191466880433142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005058.P6549191466880433142

namespace A005058

/-- `Δ[A007798(n)]` -/
def P6549191466880433142.Spec : Prop :=
  ∀ n, P6549191466880433142.a n = A005058 n

end A005058

/-! ## A005058.P5937785608593000473

`2/3*A226511(n)`
-/

namespace A005058.P5937785608593000473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A226511 n : ℚ)

end

end A005058.P5937785608593000473

namespace A005058

/-- `2/3*A226511(n)` -/
def P5937785608593000473.Spec : Prop :=
  ∀ n, P5937785608593000473.a n = (A005058 n : ℚ)

end A005058

/-! ## A005058.P9263798933815256564

`Δ[A003463(n)-A003462(n)]`
-/

namespace A005058.P9263798933815256564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005058.P9263798933815256564

namespace A005058

/-- `Δ[A003463(n)-A003462(n)]` -/
def P9263798933815256564.Spec : Prop :=
  ∀ n, P9263798933815256564.a n = A005058 n

end A005058

/-! ## A005058.P2040352862120850367

`Δ[A003463(n)-A007051(n)]`
-/

namespace A005058.P2040352862120850367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005058.P2040352862120850367

namespace A005058

/-- `Δ[A003463(n)-A007051(n)]` -/
def P2040352862120850367.Spec : Prop :=
  ∀ n, P2040352862120850367.a n = A005058 n

end A005058

/-! ## A005058.P16982447296130896137

`record[A227076(n)-A098355(n)]`
-/

namespace A005058.P16982447296130896137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n - A098355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005058.P16982447296130896137

namespace A005058

/-- `record[A227076(n)-A098355(n)]` -/
def P16982447296130896137.Spec : Prop :=
  ∀ n, P16982447296130896137.a n = A005058 n

end A005058

/-! ## A005058.P12211359789960774124

`record[A227076(n)-A227075(n)]`
-/

namespace A005058.P12211359789960774124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n - A227075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005058.P12211359789960774124

namespace A005058

/-- `record[A227076(n)-A227075(n)]` -/
def P12211359789960774124.Spec : Prop :=
  ∀ n, P12211359789960774124.a n = A005058 n

end A005058

/-! ## A005058.P632377678859213872

`(A155601(n)-A155597(n))/A000079(n)`
-/

namespace A005058.P632377678859213872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155601 n - A155597 n : ℚ) / (A000079 n : ℚ)

end

end A005058.P632377678859213872

namespace A005058

/-- `(A155601(n)-A155597(n))/A000079(n)` -/
def P632377678859213872.Spec : Prop :=
  ∀ n, P632377678859213872.a n = (A005058 n : ℚ)

end A005058

/-! ## A005058.P952951107100619934

`(A034517(n)-A034488(n))/A000051(n)`
-/

namespace A005058.P952951107100619934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034517 n - A034488 n : ℚ) / (A000051 n : ℚ)

end

end A005058.P952951107100619934

namespace A005058

/-- `(A034517(n)-A034488(n))/A000051(n)` -/
def P952951107100619934.Spec : Prop :=
  ∀ n, P952951107100619934.a n = (A005058 n : ℚ)

end A005058

/-!
# A005059: a(n) = (5^n - 3^n)/2.

The programs for A005059, the canonical program `A005059.P6285211703840618083` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005059 has offset 0).

The definition of A005059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n-3^n)/2` (program `A005059.P15317326744809665105`, by `A005059.P15317326744809665105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005059.P15317326744809665105

`(5^n-3^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A005059.P15317326744809665105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ n : ℤ) - (3 ^ n : ℤ) : ℚ) / 2

end

end A005059.P15317326744809665105

namespace A005059

/-- `(5^n-3^n)/2` -/
def P15317326744809665105.Spec : Prop :=
  ∀ n, P15317326744809665105.a n = (A005059 n : ℚ)

theorem P15317326744809665105.correct : P15317326744809665105.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A005059, Nat.add_sub_cancel, A005059.P15317326744809665105.a, A005059.P6285211703840618083.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A005059, Nat.add_sub_cancel, A005059.P15317326744809665105.a, A005059.P6285211703840618083.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A005059

/-! ## A005059.P6285211703840618083

`8*a(n-1)-15*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005059

/-- `8*a(n-1)-15*a(n-2)` -/
def P6285211703840618083.Spec : Prop :=
  ∀ n, P6285211703840618083.a n = A005059 n

theorem P6285211703840618083.correct : P6285211703840618083.Spec := by
  intro n
  simp only [A005059]

end A005059

/-! ## A005059.P17403207015850180290

`ogf(x/(1-8x+15x^2))`
-/

namespace A005059.P17403207015850180290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, 15] n

end

end A005059.P17403207015850180290

namespace A005059

/-- `ogf(x/(1-8x+15x^2))` -/
def P17403207015850180290.Spec : Prop :=
  ∀ n, P17403207015850180290.a n = A005059 n

end A005059

/-! ## A005059.P15473130181746274184

`3^(n-1)+5*a(n-1)` with `a(0)=0`
-/

namespace A005059.P15473130181746274184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 5 * a (n - 1)

end

end A005059.P15473130181746274184

namespace A005059

/-- `3^(n-1)+5*a(n-1)` -/
def P15473130181746274184.Spec : Prop :=
  ∀ n, P15473130181746274184.a n = (A005059 n : ℚ)

end A005059

/-! ## A005059.P8566760368807646433

`lcm(3, a(n-1))+5^(n-1)` with `a(0)=0`
-/

namespace A005059.P8566760368807646433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) + (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A005059.P8566760368807646433

namespace A005059

/-- `lcm(3, a(n-1))+5^(n-1)` -/
def P8566760368807646433.Spec : Prop :=
  ∀ n, P8566760368807646433.a n = (A005059 n : ℚ)

end A005059

/-! ## A005059.P12649743920096779296

`floor(A005058(n)/2)`
-/

namespace A005059.P12649743920096779296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005058 n : ℚ) / 2⌋

end

end A005059.P12649743920096779296

namespace A005059

/-- `floor(A005058(n)/2)` -/
def P12649743920096779296.Spec : Prop :=
  ∀ n, P12649743920096779296.a n = A005059 n

end A005059

/-! ## A005059.P16003797815394056291

`floor(A155610(n)/2)`
-/

namespace A005059.P16003797815394056291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155610 n : ℚ) / 2⌋

end

end A005059.P16003797815394056291

namespace A005059

/-- `floor(A155610(n)/2)` -/
def P16003797815394056291.Spec : Prop :=
  ∀ n, P16003797815394056291.a n = A005059 n

end A005059

/-! ## A005059.P6438453382463537472

`A120990(n)/2+n`
-/

namespace A005059.P6438453382463537472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120990 n : ℚ) / 2 + (n : ℚ)

end

end A005059.P6438453382463537472

namespace A005059

/-- `A120990(n)/2+n` -/
def P6438453382463537472.Spec : Prop :=
  ∀ n, P6438453382463537472.a n = (A005059 n : ℚ)

end A005059

/-! ## A005059.P5217159649666868493

`A120978(n)/2-n`
-/

namespace A005059.P5217159649666868493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120978 n : ℚ) / 2 - (n : ℚ)

end

end A005059.P5217159649666868493

namespace A005059

/-- `A120978(n)/2-n` -/
def P5217159649666868493.Spec : Prop :=
  ∀ n, P5217159649666868493.a n = (A005059 n : ℚ)

end A005059

/-! ## A005059.P12404014170823389831

`A081186(n)-3^n`
-/

namespace A005059.P12404014170823389831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081186 n - (3 ^ n : ℤ)

end

end A005059.P12404014170823389831

namespace A005059

/-- `A081186(n)-3^n` -/
def P12404014170823389831.Spec : Prop :=
  ∀ n, P12404014170823389831.a n = A005059 n

end A005059

/-! ## A005059.P6547940446360714954

`∑[2*floor(5^(n-1))]-A003462(n)`
-/

namespace A005059.P6547940446360714954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003462 n

end

end A005059.P6547940446360714954

namespace A005059

/-- `∑[2*floor(5^(n-1))]-A003462(n)` -/
def P6547940446360714954.Spec : Prop :=
  ∀ n, P6547940446360714954.a n = A005059 n

end A005059

/-! ## A005059.P14565812340687408765

`A007798(n)+A003463(n)`
-/

namespace A005059.P14565812340687408765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + A003463 n

end

end A005059.P14565812340687408765

namespace A005059

/-- `A007798(n)+A003463(n)` -/
def P14565812340687408765.Spec : Prop :=
  ∀ n, P14565812340687408765.a n = A005059 n

end A005059

/-! ## A005059.P10673404817378619830

`A034478(n)-A007051(n)`
-/

namespace A005059.P10673404817378619830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - A007051 n

end

end A005059.P10673404817378619830

namespace A005059

/-- `A034478(n)-A007051(n)` -/
def P10673404817378619830.Spec : Prop :=
  ∀ n, P10673404817378619830.a n = A005059 n

end A005059

/-! ## A005059.P16969991055586836190

`A000351(n)-A081186(n)`
-/

namespace A005059.P16969991055586836190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n - A081186 n

end

end A005059.P16969991055586836190

namespace A005059

/-- `A000351(n)-A081186(n)` -/
def P16969991055586836190.Spec : Prop :=
  ∀ n, P16969991055586836190.a n = A005059 n

end A005059

/-! ## A005059.P6481384865936129447

`A034478(n)-(A003462(n)+1)`
-/

namespace A005059.P6481384865936129447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - (A003462 n + 1)

end

end A005059.P6481384865936129447

namespace A005059

/-- `A034478(n)-(A003462(n)+1)` -/
def P6481384865936129447.Spec : Prop :=
  ∀ n, P6481384865936129447.a n = A005059 n

end A005059

/-! ## A005059.P8610505481197047027

`A007798(n)+A047850(n)-1`
-/

namespace A005059.P8610505481197047027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007798 n + (A047850 n - 1)

end

end A005059.P8610505481197047027

namespace A005059

/-- `A007798(n)+A047850(n)-1` -/
def P8610505481197047027.Spec : Prop :=
  ∀ n, P8610505481197047027.a n = A005059 n

end A005059

/-! ## A005059.P14754103194666321979

`A034474(n)-(A081186(n)+1)`
-/

namespace A005059.P14754103194666321979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n - (A081186 n + 1)

end

end A005059.P14754103194666321979

namespace A005059

/-- `A034474(n)-(A081186(n)+1)` -/
def P14754103194666321979.Spec : Prop :=
  ∀ n, P14754103194666321979.a n = A005059 n

end A005059

/-! ## A005059.P14807493302311680231

`A132079(n)-(A007051(n)+1)`
-/

namespace A005059.P14807493302311680231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n - (A007051 n + 1)

end

end A005059.P14807493302311680231

namespace A005059

/-- `A132079(n)-(A007051(n)+1)` -/
def P14807493302311680231.Spec : Prop :=
  ∀ n, P14807493302311680231.a n = A005059 n

end A005059

/-! ## A005059.P2903436772133864582

`A137410(n)+1-A003462(n)`
-/

namespace A005059.P2903436772133864582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n + (1 - A003462 n)

end

end A005059.P2903436772133864582

namespace A005059

/-- `A137410(n)+1-A003462(n)` -/
def P2903436772133864582.Spec : Prop :=
  ∀ n, P2903436772133864582.a n = A005059 n

end A005059

/-! ## A005059.P4782432212174858226

`A034478(n)+1-A115098(n)`
-/

namespace A005059.P4782432212174858226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n + (1 - A115098 n)

end

end A005059.P4782432212174858226

namespace A005059

/-- `A034478(n)+1-A115098(n)` -/
def P4782432212174858226.Spec : Prop :=
  ∀ n, P4782432212174858226.a n = A005059 n

end A005059

/-!
# A005060: a(n) = 5^n - 4^n.

The programs for A005060, the canonical program `A005060.P7488201636543484447` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005060 has offset 0).

The definition of A005060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4^n` (program `A005060.P7488201636543484447`, by `A005060.P7488201636543484447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005060.P7488201636543484447

`5^n-4^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005060

/-- `5^n-4^n` -/
def P7488201636543484447.Spec : Prop :=
  ∀ n, P7488201636543484447.a n = A005060 n

theorem P7488201636543484447.correct : P7488201636543484447.Spec := by
  intro n
  simp only [A005060]

end A005060

/-! ## A005060.P15674647529184582222

`ogf(x/(1-9x+20x^2))`
-/

namespace A005060.P15674647529184582222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 20] n

end

end A005060.P15674647529184582222

namespace A005060

/-- `ogf(x/(1-9x+20x^2))` -/
def P15674647529184582222.Spec : Prop :=
  ∀ n, P15674647529184582222.a n = A005060 n

end A005060

/-! ## A005060.P6099144436462477521

`abs(1-A155626(n))`
-/

namespace A005060.P6099144436462477521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155626 n|

end

end A005060.P6099144436462477521

namespace A005060

/-- `abs(1-A155626(n))` -/
def P6099144436462477521.Spec : Prop :=
  ∀ n, P6099144436462477521.a n = A005060 n

end A005060

/-! ## A005060.P14197783218187512756

`abs(A000302(n)-A000351(n))`
-/

namespace A005060.P14197783218187512756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A000351 n|

end

end A005060.P14197783218187512756

namespace A005060

/-- `abs(A000302(n)-A000351(n))` -/
def P14197783218187512756.Spec : Prop :=
  ∀ n, P14197783218187512756.a n = A005060 n

end A005060

/-! ## A005060.P5497178463555242269

`abs(A005058(n)-A005061(n))`
-/

namespace A005060.P5497178463555242269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005058 n - A005061 n|

end

end A005060.P5497178463555242269

namespace A005060

/-- `abs(A005058(n)-A005061(n))` -/
def P5497178463555242269.Spec : Prop :=
  ∀ n, P5497178463555242269.a n = A005060 n

end A005060

/-! ## A005060.P105551367616361579

`abs(A024051(n)-A024038(n))`
-/

namespace A005060.P105551367616361579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024051 n - A024038 n|

end

end A005060.P105551367616361579

namespace A005060

/-- `abs(A024051(n)-A024038(n))` -/
def P105551367616361579.Spec : Prop :=
  ∀ n, P105551367616361579.a n = A005060 n

end A005060

/-! ## A005060.P17032005198531144608

`abs(A001576(n)-A074501(n))`
-/

namespace A005060.P17032005198531144608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001576 n - A074501 n|

end

end A005060.P17032005198531144608

namespace A005060

/-- `abs(A001576(n)-A074501(n))` -/
def P17032005198531144608.Spec : Prop :=
  ∀ n, P17032005198531144608.a n = A005060 n

end A005060

/-! ## A005060.P3237998832902763387

`abs(A103454(n)-A103455(n))`
-/

namespace A005060.P3237998832902763387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103454 n - A103455 n|

end

end A005060.P3237998832902763387

namespace A005060

/-- `abs(A103454(n)-A103455(n))` -/
def P3237998832902763387.Spec : Prop :=
  ∀ n, P3237998832902763387.a n = A005060 n

end A005060

/-! ## A005060.P9530000792402290347

`abs(A155602(n)-A155603(n))`
-/

namespace A005060.P9530000792402290347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155602 n - A155603 n|

end

end A005060.P9530000792402290347

namespace A005060

/-- `abs(A155602(n)-A155603(n))` -/
def P9530000792402290347.Spec : Prop :=
  ∀ n, P9530000792402290347.a n = A005060 n

end A005060

/-! ## A005060.P14266484405348631607

`abs(A155609(n)-A155610(n))`
-/

namespace A005060.P14266484405348631607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155609 n - A155610 n|

end

end A005060.P14266484405348631607

namespace A005060

/-- `abs(A155609(n)-A155610(n))` -/
def P14266484405348631607.Spec : Prop :=
  ∀ n, P14266484405348631607.a n = A005060 n

end A005060

/-! ## A005060.P7031722288481077090

`∑[A005054(n)-A002001(n)]`
-/

namespace A005060.P7031722288481077090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n - A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005060.P7031722288481077090

namespace A005060

/-- `∑[A005054(n)-A002001(n)]` -/
def P7031722288481077090.Spec : Prop :=
  ∀ n, P7031722288481077090.a n = A005060 n

end A005060

/-! ## A005060.P9049001897311008638

`∑[∑[A055842(n)-A055841(n)]]`
-/

namespace A005060.P9049001897311008638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 n - A055841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005060.P9049001897311008638

namespace A005060

/-- `∑[∑[A055842(n)-A055841(n)]]` -/
def P9049001897311008638.Spec : Prop :=
  ∀ n, P9049001897311008638.a n = A005060 n

end A005060

/-! ## A005060.P12484765899681095865

`abs(A000225(2*n)-A024049(n))`
-/

namespace A005060.P12484765899681095865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000225 (2 * n) - A024049 n|

end

end A005060.P12484765899681095865

namespace A005060

/-- `abs(A000225(2*n)-A024049(n))` -/
def P12484765899681095865.Spec : Prop :=
  ∀ n, P12484765899681095865.a n = A005060 n

end A005060

/-! ## A005060.P18311494203723955017

`Δ[A003463(n)-A002450(n)]`
-/

namespace A005060.P18311494203723955017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005060.P18311494203723955017

namespace A005060

/-- `Δ[A003463(n)-A002450(n)]` -/
def P18311494203723955017.Spec : Prop :=
  ∀ n, P18311494203723955017.a n = A005060 n

end A005060

/-! ## A005060.P12201772478349768760

`Δ[A003463(n)-A047849(n)]`
-/

namespace A005060.P12201772478349768760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005060.P12201772478349768760

namespace A005060

/-- `Δ[A003463(n)-A047849(n)]` -/
def P12201772478349768760.Spec : Prop :=
  ∀ n, P12201772478349768760.a n = A005060 n

end A005060

/-! ## A005060.P9547867858544120040

`∑[A257285(n)]%A257285(n)`
-/

namespace A005060.P9547867858544120040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A257285 n)

end

end A005060.P9547867858544120040

namespace A005060

/-- `∑[A257285(n)]%A257285(n)` -/
def P9547867858544120040.Spec : Prop :=
  ∀ n, P9547867858544120040.a n = A005060 n

end A005060

/-! ## A005060.P15319695596660745122

`record[A227076(n)-A227074(n)]`
-/

namespace A005060.P15319695596660745122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227076 n - A227074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005060.P15319695596660745122

namespace A005060

/-- `record[A227076(n)-A227074(n)]` -/
def P15319695596660745122.Spec : Prop :=
  ∀ n, P15319695596660745122.a n = A005060 n

end A005060

/-! ## A005060.P8453166235596922539

`floor(A155626(n)-A155626(n)/A155611(n))`
-/

namespace A005060.P8453166235596922539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155626 n : ℚ) - (A155626 n : ℚ) / (A155611 n : ℚ)⌋

end

end A005060.P8453166235596922539

namespace A005060

/-- `floor(A155626(n)-A155626(n)/A155611(n))` -/
def P8453166235596922539.Spec : Prop :=
  ∀ n, P8453166235596922539.a n = A005060 n

end A005060

/-! ## A005060.P15983413279538549797

`A248343(n)/A000079(n)`
-/

namespace A005060.P15983413279538549797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248343 n : ℚ) / (A000079 n : ℚ)

end

end A005060.P15983413279538549797

namespace A005060

/-- `A248343(n)/A000079(n)` -/
def P15983413279538549797.Spec : Prop :=
  ∀ n, P15983413279538549797.a n = (A005060 n : ℚ)

end A005060

/-!
# A005061: a(n) = 4^n - 3^n.

The programs for A005061, the canonical program `A005061.P16496871994776631977` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005061 has offset 0).

The definition of A005061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-3^n` (program `A005061.P16496871994776631977`, by `A005061.P16496871994776631977.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005061.P16496871994776631977

`4^n-3^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005061

/-- `4^n-3^n` -/
def P16496871994776631977.Spec : Prop :=
  ∀ n, P16496871994776631977.a n = A005061 n

theorem P16496871994776631977.correct : P16496871994776631977.Spec := by
  intro n
  simp only [A005061]

end A005061

/-! ## A005061.P8369845752948263002

`ogf(x/(1-7x+12x^2))`
-/

namespace A005061.P8369845752948263002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -7, 12] n

end

end A005061.P8369845752948263002

namespace A005061

/-- `ogf(x/(1-7x+12x^2))` -/
def P8369845752948263002.Spec : Prop :=
  ∀ n, P8369845752948263002.a n = A005061 n

end A005061

/-! ## A005061.P18421680880231930612

`A167762(2*n)`
-/

namespace A005061.P18421680880231930612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (2 * n)

end

end A005061.P18421680880231930612

namespace A005061

/-- `A167762(2*n)` -/
def P18421680880231930612.Spec : Prop :=
  ∀ n, P18421680880231930612.a n = A005061 n

end A005061

/-! ## A005061.P8538192551888031203

`A167936(2*n)`
-/

namespace A005061.P8538192551888031203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (2 * n)

end

end A005061.P8538192551888031203

namespace A005061

/-- `A167936(2*n)` -/
def P8538192551888031203.Spec : Prop :=
  ∀ n, P8538192551888031203.a n = A005061 n

end A005061

/-! ## A005061.P5725892146511832311

`abs(1-A155609(n))`
-/

namespace A005061.P5725892146511832311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155609 n|

end

end A005061.P5725892146511832311

namespace A005061

/-- `abs(1-A155609(n))` -/
def P5725892146511832311.Spec : Prop :=
  ∀ n, P5725892146511832311.a n = A005061 n

end A005061

/-! ## A005061.P17031784921525410578

`record[A167762(n)/(-1)^n]`
-/

namespace A005061.P17031784921525410578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167762 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005061.P17031784921525410578

namespace A005061

/-- `record[A167762(n)/(-1)^n]` -/
def P17031784921525410578.Spec : Prop :=
  ∀ n, P17031784921525410578.a n = (A005061 n : ℚ)

end A005061

/-! ## A005061.P6864460090565174157

`record[A167936(n)^(-1)^n]`
-/

namespace A005061.P6864460090565174157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167936 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005061.P6864460090565174157

namespace A005061

/-- `record[A167936(n)^(-1)^n]` -/
def P6864460090565174157.Spec : Prop :=
  ∀ n, P6864460090565174157.a n = (A005061 n : ℚ)

end A005061

/-! ## A005061.P14392144322230225950

`record[A167762(A014681(n))]`
-/

namespace A005061.P14392144322230225950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005061.P14392144322230225950

namespace A005061

/-- `record[A167762(A014681(n))]` -/
def P14392144322230225950.Spec : Prop :=
  ∀ n, P14392144322230225950.a n = A005061 n

end A005061

/-! ## A005061.P5625534707897889030

`record[A167936(A237420(n))]`
-/

namespace A005061.P5625534707897889030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A005061.P5625534707897889030

namespace A005061

/-- `record[A167936(A237420(n))]` -/
def P5625534707897889030.Spec : Prop :=
  ∀ n, P5625534707897889030.a n = A005061 n

end A005061

/-! ## A005061.P6578264593801825425

`xor(A024023(n), A024036(n))`
-/

namespace A005061.P6578264593801825425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024023 n) (A024036 n)

end

end A005061.P6578264593801825425

namespace A005061

/-- `xor(A024023(n), A024036(n))` -/
def P6578264593801825425.Spec : Prop :=
  ∀ n, P6578264593801825425.a n = A005061 n

end A005061

/-! ## A005061.P3515451552564929892

`xor(A103453(n), A103454(n))`
-/

namespace A005061.P3515451552564929892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103453 n) (A103454 n)

end

end A005061.P3515451552564929892

namespace A005061

/-- `xor(A103453(n), A103454(n))` -/
def P3515451552564929892.Spec : Prop :=
  ∀ n, P3515451552564929892.a n = A005061 n

end A005061

/-! ## A005061.P5070410229724847685

`Δ[A162725(n)]`
-/

namespace A005061.P5070410229724847685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005061.P5070410229724847685

namespace A005061

/-- `Δ[A162725(n)]` -/
def P5070410229724847685.Spec : Prop :=
  ∀ n, P5070410229724847685.a n = A005061 n

end A005061

/-! ## A005061.P10103367181322653951

`A145544(n)/4`
-/

namespace A005061.P10103367181322653951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145544 n : ℚ) / 4

end

end A005061.P10103367181322653951

namespace A005061

/-- `A145544(n)/4` -/
def P10103367181322653951.Spec : Prop :=
  ∀ n, P10103367181322653951.a n = (A005061 n : ℚ)

theorem P10103367181322653951.correct : P10103367181322653951.Spec := by
  intro n
  simp only [A005061, Nat.add_sub_cancel, A005061.P10103367181322653951.a, A005061.P16496871994776631977.a, A145544, A145544.P9258553219898118840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005061

/-! ## A005061.P16819654577280134281

`Δ[A000773(Δ[n²])]`
-/

namespace A005061.P16819654577280134281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000773 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005061.P16819654577280134281

namespace A005061

/-- `Δ[A000773(Δ[n²])]` -/
def P16819654577280134281.Spec : Prop :=
  ∀ n, P16819654577280134281.a n = A005061 n

end A005061

/-! ## A005061.P7423593376755529236

`A167762(Δ[n²])/2`
-/

namespace A005061.P7423593376755529236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167762 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A005061.P7423593376755529236

namespace A005061

/-- `A167762(Δ[n²])/2` -/
def P7423593376755529236.Spec : Prop :=
  ∀ n, P7423593376755529236.a n = (A005061 n : ℚ)

end A005061

/-! ## A005061.P12108285147229012657

`A167784(Δ[n²])/2`
-/

namespace A005061.P12108285147229012657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167784 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A005061.P12108285147229012657

namespace A005061

/-- `A167784(Δ[n²])/2` -/
def P12108285147229012657.Spec : Prop :=
  ∀ n, P12108285147229012657.a n = (A005061 n : ℚ)

end A005061

/-! ## A005061.P9501278863833853623

`A365544(Δ[n²])/2`
-/

namespace A005061.P9501278863833853623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365544 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A005061.P9501278863833853623

namespace A005061

/-- `A365544(Δ[n²])/2` -/
def P9501278863833853623.Spec : Prop :=
  ∀ n, P9501278863833853623.a n = (A005061 n : ℚ)

end A005061

/-! ## A005061.P8224936796173310879

`A366131(Δ[n²])/2`
-/

namespace A005061.P8224936796173310879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366131 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A005061.P8224936796173310879

namespace A005061

/-- `A366131(Δ[n²])/2` -/
def P8224936796173310879.Spec : Prop :=
  ∀ n, P8224936796173310879.a n = (A005061 n : ℚ)

end A005061

/-! ## A005061.P17319535723817755007

`Δ[A304974(2*n+1)/2]`
-/

namespace A005061.P17319535723817755007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304974 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005061.P17319535723817755007

namespace A005061

/-- `Δ[A304974(2*n+1)/2]` -/
def P17319535723817755007.Spec : Prop :=
  ∀ n, P17319535723817755007.a n = (A005061 n : ℚ)

end A005061

/-! ## A005061.P9704058329154241357

`A004171(n)%A074605(n)`
-/

namespace A005061.P9704058329154241357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004171 n) (A074605 n)

end

end A005061.P9704058329154241357

namespace A005061

/-- `A004171(n)%A074605(n)` -/
def P9704058329154241357.Spec : Prop :=
  ∀ n, P9704058329154241357.a n = A005061 n

end A005061

/-!
# A005062: a(n) = 6^n - 5^n.

The programs for A005062, the canonical program `A005062.P7032567066321491039` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005062 has offset 0).

The definition of A005062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-5^n` (program `A005062.P7032567066321491039`, by `A005062.P7032567066321491039.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005062.P7032567066321491039

`6^n-5^n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005062

/-- `6^n-5^n` -/
def P7032567066321491039.Spec : Prop :=
  ∀ n, P7032567066321491039.a n = A005062 n

theorem P7032567066321491039.correct : P7032567066321491039.Spec := by
  intro n
  simp only [A005062]

end A005062

/-! ## A005062.P13991023451554528043

`abs(1-A155639(n))`
-/

namespace A005062.P13991023451554528043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155639 n|

end

end A005062.P13991023451554528043

namespace A005062

/-- `abs(1-A155639(n))` -/
def P13991023451554528043.Spec : Prop :=
  ∀ n, P13991023451554528043.a n = A005062 n

end A005062

/-! ## A005062.P17410715890407544083

`abs(A000351(n)-A000400(n))`
-/

namespace A005062.P17410715890407544083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A000400 n|

end

end A005062.P17410715890407544083

namespace A005062

/-- `abs(A000351(n)-A000400(n))` -/
def P17410715890407544083.Spec : Prop :=
  ∀ n, P17410715890407544083.a n = A005062 n

end A005062

/-! ## A005062.P9394499890597223594

`abs(A024049(n)-A024062(n))`
-/

namespace A005062.P9394499890597223594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024049 n - A024062 n|

end

end A005062.P9394499890597223594

namespace A005062

/-- `abs(A024049(n)-A024062(n))` -/
def P9394499890597223594.Spec : Prop :=
  ∀ n, P9394499890597223594.a n = A005062 n

end A005062

/-! ## A005062.P17723571104782832439

`abs(A024050(n)-A024063(n))`
-/

namespace A005062.P17723571104782832439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024050 n - A024063 n|

end

end A005062.P17723571104782832439

namespace A005062

/-- `abs(A024050(n)-A024063(n))` -/
def P17723571104782832439.Spec : Prop :=
  ∀ n, P17723571104782832439.a n = A005062 n

end A005062

/-! ## A005062.P2827079839717512177

`abs(A034474(n)-A062394(n))`
-/

namespace A005062.P2827079839717512177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A062394 n|

end

end A005062.P2827079839717512177

namespace A005062

/-- `abs(A034474(n)-A062394(n))` -/
def P2827079839717512177.Spec : Prop :=
  ∀ n, P2827079839717512177.a n = A005062 n

end A005062

/-! ## A005062.P6038387015771117067

`abs(A155596(n)-A155597(n))`
-/

namespace A005062.P6038387015771117067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155596 n - A155597 n|

end

end A005062.P6038387015771117067

namespace A005062

/-- `abs(A155596(n)-A155597(n))` -/
def P6038387015771117067.Spec : Prop :=
  ∀ n, P6038387015771117067.a n = A005062 n

end A005062

/-! ## A005062.P9680988420460551673

`abs(A155603(n)-A155604(n))`
-/

namespace A005062.P9680988420460551673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155603 n - A155604 n|

end

end A005062.P9680988420460551673

namespace A005062

/-- `abs(A155603(n)-A155604(n))` -/
def P9680988420460551673.Spec : Prop :=
  ∀ n, P9680988420460551673.a n = A005062 n

end A005062

/-! ## A005062.P8508505394186478758

`∑[A052934(n)-A005054(n)]`
-/

namespace A005062.P8508505394186478758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n - A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005062.P8508505394186478758

namespace A005062

/-- `∑[A052934(n)-A005054(n)]` -/
def P8508505394186478758.Spec : Prop :=
  ∀ n, P8508505394186478758.a n = A005062 n

end A005062

/-! ## A005062.P15982036066703526629

`Δ[A003464(n)-A003463(n)]`
-/

namespace A005062.P15982036066703526629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005062.P15982036066703526629

namespace A005062

/-- `Δ[A003464(n)-A003463(n)]` -/
def P15982036066703526629.Spec : Prop :=
  ∀ n, P15982036066703526629.a n = A005062 n

end A005062

/-! ## A005062.P4702431308387062818

`Δ[A152596(n)/2-A003463(n)]`
-/

namespace A005062.P4702431308387062818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152596 n : ℚ) / 2 - (A003463 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A005062.P4702431308387062818

namespace A005062

/-- `Δ[A152596(n)/2-A003463(n)]` -/
def P4702431308387062818.Spec : Prop :=
  ∀ n, P4702431308387062818.a n = (A005062 n : ℚ)

end A005062

/-! ## A005062.P1383817528608959325

`∑[A257286(n)]%A257286(n)`
-/

namespace A005062.P1383817528608959325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A257286 n)

end

end A005062.P1383817528608959325

namespace A005062

/-- `∑[A257286(n)]%A257286(n)` -/
def P1383817528608959325.Spec : Prop :=
  ∀ n, P1383817528608959325.a n = A005062 n

end A005062

/-! ## A005062.P7281478127446517095

`A155645(n)%A155634(n)`
-/

namespace A005062.P7281478127446517095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155645 n) (A155634 n)

end

end A005062.P7281478127446517095

namespace A005062

/-- `A155645(n)%A155634(n)` -/
def P7281478127446517095.Spec : Prop :=
  ∀ n, P7281478127446517095.a n = A005062 n

end A005062

/-! ## A005062.P11448906037369030123

`A155640(n)%A155650(n)`
-/

namespace A005062.P11448906037369030123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155640 n) (A155650 n)

end

end A005062.P11448906037369030123

namespace A005062

/-- `A155640(n)%A155650(n)` -/
def P11448906037369030123.Spec : Prop :=
  ∀ n, P11448906037369030123.a n = A005062 n

end A005062

/-! ## A005062.P1642040774505668128

`A074578(n)%A074575(n)`
-/

namespace A005062.P1642040774505668128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074578 n) (A074575 n)

end

end A005062.P1642040774505668128

namespace A005062

/-- `A074578(n)%A074575(n)` -/
def P1642040774505668128.Spec : Prop :=
  ∀ n, P1642040774505668128.a n = A005062 n

end A005062

/-!
# A005063: Sum of squares of primes dividing n.

The programs for A005063, the canonical program `A005063.P7688776663379215935` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005063 has offset 1).

The definition of A005063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005063.P3972943273927147090

`A005066(n+1)+4*A059841(n+1)`
-/

namespace A005063.P3972943273927147090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (n + 1) + 4 * A059841 (n + 1)

end

end A005063.P3972943273927147090

namespace A005063

/-- `A005066(n+1)+4*A059841(n+1)` -/
def P3972943273927147090.Spec : Prop :=
  ∀ n, P3972943273927147090.a n = A005063 (n + 1)

theorem P3972943273927147090.correct : P3972943273927147090.Spec := by
  intro n
  simp only [A005063, Nat.add_sub_cancel, A005063.P3972943273927147090.a, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005066, A005066.P399766481183112072.a, A059841, A059841.P2666504972441551157.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A005083, A005083.P12060761291276031228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005063

/-! ## A005063.P11400494450906028701

`A005079(n+1)+A005083(n+1)+4*A059841(n+1)`
-/

namespace A005063.P11400494450906028701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005079 (n + 1) + A005083 (n + 1) + 4 * A059841 (n + 1)

end

end A005063.P11400494450906028701

namespace A005063

/-- `A005079(n+1)+A005083(n+1)+4*A059841(n+1)` -/
def P11400494450906028701.Spec : Prop :=
  ∀ n, P11400494450906028701.a n = A005063 (n + 1)

theorem P11400494450906028701.correct : P11400494450906028701.Spec := by
  intro n
  simp only [A005063, Nat.add_sub_cancel, A005063.P11400494450906028701.a, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A005083, A005083.P12060761291276031228.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005063

/-! ## A005063.P14544885958900557261

`A005071(n+1)+A005075(n+1)+9*A079978(n+1)`
-/

namespace A005063.P14544885958900557261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005071 (n + 1) + A005075 (n + 1) + 9 * A079978 (n + 1)

end

end A005063.P14544885958900557261

namespace A005063

/-- `A005071(n+1)+A005075(n+1)+9*A079978(n+1)` -/
def P14544885958900557261.Spec : Prop :=
  ∀ n, P14544885958900557261.a n = A005063 (n + 1)

theorem P14544885958900557261.correct : P14544885958900557261.Spec := by
  intro n
  simp only [A005063, Nat.add_sub_cancel, A005063.P14544885958900557261.a, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005071, A005071.P4242743647660035667.f1, A005071.P4242743647660035667.a, A005075, A005075.P408257098076567385.a, A079978, A079978.P10382542118278163374.a, A005070, A005070.P10126547095800783810.f1, A005070.P10126547095800783810.a, A080029, A080029.P10167826981226000952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005063

/-! ## A005063.P7688776663379215935

`∑{p}[n+1, #²]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005063

/-- `∑{p}[n+1, #²]` -/
def P7688776663379215935.Spec : Prop :=
  ∀ n, (P7688776663379215935.a n : ℤ) = A005063 (n + 1)

theorem P7688776663379215935.correct : P7688776663379215935.Spec := by
  intro n
  simp only [A005063, Nat.add_sub_cancel]

end A005063

/-! ## A005063.P15022966995545419717

`floor(∑{p}[n+1, #^(4/2)])`
-/

namespace A005063.P15022966995545419717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A005063.P15022966995545419717

namespace A005063

/-- `floor(∑{p}[n+1, #^(4/2)])` -/
def P15022966995545419717.Spec : Prop :=
  ∀ n, P15022966995545419717.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P5672230057300258736

`ceil(∑{p}[n+1, #^(4/2)])`
-/

namespace A005063.P5672230057300258736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌉

end

end A005063.P5672230057300258736

namespace A005063

/-- `ceil(∑{p}[n+1, #^(4/2)])` -/
def P5672230057300258736.Spec : Prop :=
  ∀ n, P5672230057300258736.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P12967896839377555166

`round(∑{p}[n+1, #^(4/2)])`
-/

namespace A005063.P12967896839377555166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ ((4 : ℚ) / 2 : ℝ))

end

end A005063.P12967896839377555166

namespace A005063

/-- `round(∑{p}[n+1, #^(4/2)])` -/
def P12967896839377555166.Spec : Prop :=
  ∀ n, P12967896839377555166.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P8031044697414221967

`or(char[2], ∑{p}[n+1, #*#])`
-/

namespace A005063.P8031044697414221967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), p * p)

end

end A005063.P8031044697414221967

namespace A005063

/-- `or(char[2], ∑{p}[n+1, #*#])` -/
def P8031044697414221967.Spec : Prop :=
  ∀ n, (P8031044697414221967.a n : ℤ) = A005063 (n + 1)

end A005063

/-! ## A005063.P2659727037263140762

`A067666(∏{p}[n+1, #])`
-/

namespace A005063.P2659727037263140762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A005063.P2659727037263140762

namespace A005063

/-- `A067666(∏{p}[n+1, #])` -/
def P2659727037263140762.Spec : Prop :=
  ∀ n, P2659727037263140762.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P10146891423423669504

`A081403(∏{p}[n+1, #])`
-/

namespace A005063.P10146891423423669504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A005063.P10146891423423669504

namespace A005063

/-- `A081403(∏{p}[n+1, #])` -/
def P10146891423423669504.Spec : Prop :=
  ∀ n, P10146891423423669504.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P3842886129096835216

`∑{d}[n+1, A061397(#)²]`
-/

namespace A005063.P3842886129096835216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d ^ 2

end

end A005063.P3842886129096835216

namespace A005063

/-- `∑{d}[n+1, A061397(#)²]` -/
def P3842886129096835216.Spec : Prop :=
  ∀ n, P3842886129096835216.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P5678441953848724616

`∑{d}[n+1, (#%A014963(#)²)²]`
-/

namespace A005063.P5678441953848724616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A014963 d ^ 2) ^ 2

end

end A005063.P5678441953848724616

namespace A005063

/-- `∑{d}[n+1, (#%A014963(#)²)²]` -/
def P5678441953848724616.Spec : Prop :=
  ∀ n, P5678441953848724616.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P16984752080791711772

`A067666(A007947(n+1))`
-/

namespace A005063.P16984752080791711772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (A007947 (n + 1)).toNat

end

end A005063.P16984752080791711772

namespace A005063

/-- `A067666(A007947(n+1))` -/
def P16984752080791711772.Spec : Prop :=
  ∀ n, P16984752080791711772.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P16165675667259097206

`A081403(sqrt(A078615(n+1)))`
-/

namespace A005063.P16165675667259097206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A005063.P16165675667259097206

namespace A005063

/-- `A081403(sqrt(A078615(n+1)))` -/
def P16165675667259097206.Spec : Prop :=
  ∀ n, P16165675667259097206.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P11134984116537750657

`A010675(n)+A005066(n+1)`
-/

namespace A005063.P11134984116537750657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010675 n + A005066 (n + 1)

end

end A005063.P11134984116537750657

namespace A005063

/-- `A010675(n)+A005066(n+1)` -/
def P11134984116537750657.Spec : Prop :=
  ∀ n, P11134984116537750657.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P11000184490180473463

`A001157(n+1)-A189120(n+1)`
-/

namespace A005063.P11000184490180473463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A189120 (n + 1)

end

end A005063.P11000184490180473463

namespace A005063

/-- `A001157(n+1)-A189120(n+1)` -/
def P11000184490180473463.Spec : Prop :=
  ∀ n, P11000184490180473463.a n = A005063 (n + 1)

theorem P11000184490180473463.correct : P11000184490180473463.Spec := by
  intro n
  simp only [A005063, Nat.add_sub_cancel, A005063.P11000184490180473463.a, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A001157, A001157.P6892814788348726787.a, A189120, A189120.P13109880559421340591.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005063

/-! ## A005063.P14634755606389774819

`A380444(n+1)-A023890(n+1)`
-/

namespace A005063.P14634755606389774819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380444 (n + 1) - A023890 (n + 1)

end

end A005063.P14634755606389774819

namespace A005063

/-- `A380444(n+1)-A023890(n+1)` -/
def P14634755606389774819.Spec : Prop :=
  ∀ n, P14634755606389774819.a n = A005063 (n + 1)

theorem P14634755606389774819.correct : P14634755606389774819.Spec := by
  intro n
  simp only [A005063, Nat.add_sub_cancel, A005063.P14634755606389774819.a, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A023890, A023890.P4514850295399263827.a, A380444, A380444.P14151293279187532113.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005063

/-! ## A005063.P11621452906276998156

`∑{d}[n+1, A055615(#)*A344578((n+1)/#)]`
-/

namespace A005063.P11621452906276998156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A344578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A005063.P11621452906276998156

namespace A005063

/-- `∑{d}[n+1, A055615(#)*A344578((n+1)/#)]` -/
def P11621452906276998156.Spec : Prop :=
  ∀ n, P11621452906276998156.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P13002493502931450695

`A020639(n+1)²+a(A028234(n+1)-1)` with `a(0)=0`
-/

namespace A005063.P13002493502931450695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020639 (n + 1) ^ 2 + a (A028234 (n + 1) - 1).toNat

end

end A005063.P13002493502931450695

namespace A005063

/-- `A020639(n+1)²+a(A028234(n+1)-1)` -/
def P13002493502931450695.Spec : Prop :=
  ∀ n, P13002493502931450695.a n = A005063 (n + 1)

end A005063

/-! ## A005063.P2349248890292551257

`A008475(∏{p}[n+1, #²])`
-/

namespace A005063.P2349248890292551257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A005063.P2349248890292551257

namespace A005063

/-- `A008475(∏{p}[n+1, #²])` -/
def P2349248890292551257.Spec : Prop :=
  ∀ n, P2349248890292551257.a n = A005063 (n + 1)

end A005063

/-!
# A005064: Sum of cubes of primes dividing n.

The programs for A005064, the canonical program `A005064.P4705532925960423919` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005064 has offset 1).

The definition of A005064 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005067, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005064.P4705532925960423919

`A005067(n+1)+8*A059841(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005064

/-- `A005067(n+1)+8*A059841(n+1)` -/
def P4705532925960423919.Spec : Prop :=
  ∀ n, P4705532925960423919.a n = A005064 (n + 1)

theorem P4705532925960423919.correct : P4705532925960423919.Spec := by
  intro n
  simp only [A005064, Nat.add_sub_cancel]

end A005064

/-! ## A005064.P14630888233335157188

`A005080(n+1)+A005084(n+1)+8*A059841(n+1)`
-/

namespace A005064.P14630888233335157188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1) + A005084 (n + 1) + 8 * A059841 (n + 1)

end

end A005064.P14630888233335157188

namespace A005064

/-- `A005080(n+1)+A005084(n+1)+8*A059841(n+1)` -/
def P14630888233335157188.Spec : Prop :=
  ∀ n, P14630888233335157188.a n = A005064 (n + 1)

theorem P14630888233335157188.correct : P14630888233335157188.Spec := by
  intro n
  simp only [A005064, Nat.add_sub_cancel, A005064.P14630888233335157188.a, A005064.P4705532925960423919.a, A005067, A005067.P16153284212930227781.f1, A005067.P16153284212930227781.a, A005080, A005080.P9273284340090812152.a, A005084, A005084.P8221435788932631472.f1, A005084.P8221435788932631472.a, A059841, A059841.P2666504972441551157.a, A005083, A005083.P12060761291276031228.a, A303972, A303972.P11388176725645930891.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005064

/-! ## A005064.P9835363752817496693

`A005072(n+1)+A005076(n+1)+27*A079978(n+1)`
-/

namespace A005064.P9835363752817496693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005072 (n + 1) + A005076 (n + 1) + 27 * A079978 (n + 1)

end

end A005064.P9835363752817496693

namespace A005064

/-- `A005072(n+1)+A005076(n+1)+27*A079978(n+1)` -/
def P9835363752817496693.Spec : Prop :=
  ∀ n, P9835363752817496693.a n = A005064 (n + 1)

theorem P9835363752817496693.correct : P9835363752817496693.Spec := by
  intro n
  simp only [A005064, Nat.add_sub_cancel, A005064.P9835363752817496693.a, A005064.P4705532925960423919.a, A005067, A005067.P16153284212930227781.f1, A005067.P16153284212930227781.a, A005072, A005072.P4467141680536761599.f1, A005072.P4467141680536761599.a, A005076, A005076.P7083894196155953315.a, A059841, A059841.P2666504972441551157.a, A079978, A079978.P10382542118278163374.a, A005070, A005070.P10126547095800783810.f1, A005070.P10126547095800783810.a, A303972, A303972.P11388176725645930891.a, A080029, A080029.P10167826981226000952.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005064

/-! ## A005064.P2882445450613748024

`∑{p}[n+1, #^3]`
-/

namespace A005064.P2882445450613748024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 3

end

end A005064.P2882445450613748024

namespace A005064

/-- `∑{p}[n+1, #^3]` -/
def P2882445450613748024.Spec : Prop :=
  ∀ n, (P2882445450613748024.a n : ℤ) = A005064 (n + 1)

end A005064

/-! ## A005064.P15838781625600637164

`floor(∑{p}[n+1, root(#, 1/3)])`
-/

namespace A005064.P15838781625600637164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))⌋

end

end A005064.P15838781625600637164

namespace A005064

/-- `floor(∑{p}[n+1, root(#, 1/3)])` -/
def P15838781625600637164.Spec : Prop :=
  ∀ n, P15838781625600637164.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P11735984148806127695

`round(∑{p}[n+1, root(#, 1/3)])`
-/

namespace A005064.P11735984148806127695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (p : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ)))

end

end A005064.P11735984148806127695

namespace A005064

/-- `round(∑{p}[n+1, root(#, 1/3)])` -/
def P11735984148806127695.Spec : Prop :=
  ∀ n, P11735984148806127695.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P5531375060499924876

`A224787(∏{p}[n+1, #])`
-/

namespace A005064.P5531375060499924876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A005064.P5531375060499924876

namespace A005064

/-- `A224787(∏{p}[n+1, #])` -/
def P5531375060499924876.Spec : Prop :=
  ∀ n, P5531375060499924876.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P10179557435329805063

`A224787(A007947(n+1))`
-/

namespace A005064.P10179557435329805063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (A007947 (n + 1)).toNat

end

end A005064.P10179557435329805063

namespace A005064

/-- `A224787(A007947(n+1))` -/
def P10179557435329805063.Spec : Prop :=
  ∀ n, P10179557435329805063.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P1509085146774699464

`A010679(n)+A005067(n+1)`
-/

namespace A005064.P1509085146774699464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010679 n + A005067 (n + 1)

end

end A005064.P1509085146774699464

namespace A005064

/-- `A010679(n)+A005067(n+1)` -/
def P1509085146774699464.Spec : Prop :=
  ∀ n, P1509085146774699464.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P4559690733515309716

`A001158(n+1)-A279290(n+1)`
-/

namespace A005064.P4559690733515309716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A279290 (n + 1)

end

end A005064.P4559690733515309716

namespace A005064

/-- `A001158(n+1)-A279290(n+1)` -/
def P4559690733515309716.Spec : Prop :=
  ∀ n, P4559690733515309716.a n = A005064 (n + 1)

theorem P4559690733515309716.correct : P4559690733515309716.Spec := by
  intro n
  simp only [A005064, Nat.add_sub_cancel, A005064.P4559690733515309716.a, A005064.P4705532925960423919.a, A001158, A001158.P5142498491642488153.f1, A001158.P5142498491642488153.a, A005067, A005067.P16153284212930227781.f1, A005067.P16153284212930227781.a, A059841, A059841.P2666504972441551157.a, A279290, A279290.P4214688874557127316.a, A303972, A303972.P11388176725645930891.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005064

/-! ## A005064.P16071173721362956427

`A020639(n+1)^3+a(A028234(n+1)-1)` with `a(0)=0`
-/

namespace A005064.P16071173721362956427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020639 (n + 1) ^ 3 + a (A028234 (n + 1) - 1).toNat

end

end A005064.P16071173721362956427

namespace A005064

/-- `A020639(n+1)^3+a(A028234(n+1)-1)` -/
def P16071173721362956427.Spec : Prop :=
  ∀ n, P16071173721362956427.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P11158271778338469459

`A384816(A064988(n+1))`
-/

namespace A005064.P11158271778338469459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384816 (A064988 (n + 1)).toNat

end

end A005064.P11158271778338469459

namespace A005064

/-- `A384816(A064988(n+1))` -/
def P11158271778338469459.Spec : Prop :=
  ∀ n, P11158271778338469459.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P17800922644222623531

`A347159((n+1)²)`
-/

namespace A005064.P17800922644222623531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347159 ((n + 1) ^ 2)

end

end A005064.P17800922644222623531

namespace A005064

/-- `A347159((n+1)²)` -/
def P17800922644222623531.Spec : Prop :=
  ∀ n, P17800922644222623531.a n = A005064 (n + 1)

end A005064

/-! ## A005064.P12572232733615011083

`A224787(A015053(n+1)²)/2`
-/

namespace A005064.P12572232733615011083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224787 (A015053 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A005064.P12572232733615011083

namespace A005064

/-- `A224787(A015053(n+1)²)/2` -/
def P12572232733615011083.Spec : Prop :=
  ∀ n, P12572232733615011083.a n = (A005064 (n + 1) : ℚ)

end A005064

/-!
# A005065: Sum of 4th powers of primes dividing n.

The programs for A005065, the canonical program `A005065.P10018668116522335289` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005065 has offset 1).

The definition of A005065 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005065.P10018668116522335289

`A005068(n+1)+16*A059841(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005065

/-- `A005068(n+1)+16*A059841(n+1)` -/
def P10018668116522335289.Spec : Prop :=
  ∀ n, P10018668116522335289.a n = A005065 (n + 1)

theorem P10018668116522335289.correct : P10018668116522335289.Spec := by
  intro n
  simp only [A005065, Nat.add_sub_cancel]

end A005065

/-! ## A005065.P7409483299781379341

`A005081(n+1)+A005085(n+1)+16*A059841(n+1)`
-/

namespace A005065.P7409483299781379341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005081 (n + 1) + A005085 (n + 1) + 16 * A059841 (n + 1)

end

end A005065.P7409483299781379341

namespace A005065

/-- `A005081(n+1)+A005085(n+1)+16*A059841(n+1)` -/
def P7409483299781379341.Spec : Prop :=
  ∀ n, P7409483299781379341.a n = A005065 (n + 1)

theorem P7409483299781379341.correct : P7409483299781379341.Spec := by
  intro n
  simp only [A005065, Nat.add_sub_cancel, A005065.P7409483299781379341.a, A005065.P10018668116522335289.a, A005068, A005068.P275356790973680025.f1, A005068.P275356790973680025.a, A005081, A005081.P3663982266665043880.a, A005085, A005085.P17408966888142263945.f1, A005085.P17408966888142263945.a, A059841, A059841.P2666504972441551157.a, A005083, A005083.P12060761291276031228.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005065

/-! ## A005065.P9369821421182146166

`A005073(n+1)+A005077(n+1)+81*A079978(n+1)`
-/

namespace A005065.P9369821421182146166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005073 (n + 1) + A005077 (n + 1) + 81 * A079978 (n + 1)

end

end A005065.P9369821421182146166

namespace A005065

/-- `A005073(n+1)+A005077(n+1)+81*A079978(n+1)` -/
def P9369821421182146166.Spec : Prop :=
  ∀ n, P9369821421182146166.a n = A005065 (n + 1)

theorem P9369821421182146166.correct : P9369821421182146166.Spec := by
  intro n
  simp only [A005065, Nat.add_sub_cancel, A005065.P9369821421182146166.a, A005065.P10018668116522335289.a, A005068, A005068.P275356790973680025.f1, A005068.P275356790973680025.a, A005073, A005073.P8293580605370363974.f1, A005073.P8293580605370363974.a, A005077, A005077.P2212048464589055495.a, A059841, A059841.P2666504972441551157.a, A079978, A079978.P10382542118278163374.a, A005070, A005070.P10126547095800783810.f1, A005070.P10126547095800783810.a, A080029, A080029.P10167826981226000952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005065

/-! ## A005065.P13766857261944141107

`∑{p}[n+1, #^4]`
-/

namespace A005065.P13766857261944141107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p ^ 4

end

end A005065.P13766857261944141107

namespace A005065

/-- `∑{p}[n+1, #^4]` -/
def P13766857261944141107.Spec : Prop :=
  ∀ n, (P13766857261944141107.a n : ℤ) = A005065 (n + 1)

end A005065

/-! ## A005065.P5811265379128810776

`or(char[2], ∑{p}[n+1, #²²])`
-/

namespace A005065.P5811265379128810776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), (p ^ 2) ^ 2)

end

end A005065.P5811265379128810776

namespace A005065

/-- `or(char[2], ∑{p}[n+1, #²²])` -/
def P5811265379128810776.Spec : Prop :=
  ∀ n, (P5811265379128810776.a n : ℤ) = A005065 (n + 1)

end A005065

/-! ## A005065.P15061831918055418797

`round(gcd(2, n)/log(5))*∑{p}[n+1, #²²]`
-/

namespace A005065.P15061831918055418797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.gcd 2 n : ℝ) / Real.log (5 : ℝ)) * ((∑ p ∈ Nat.primeFactors (f1 n), (p ^ 2) ^ 2 : ℕ) : ℤ)

end

end A005065.P15061831918055418797

namespace A005065

/-- `round(gcd(2, n)/log(5))*∑{p}[n+1, #²²]` -/
def P15061831918055418797.Spec : Prop :=
  ∀ n, P15061831918055418797.a n = A005065 (n + 1)

end A005065

/-! ## A005065.P8980015500350071683

`∑{d}[n+1, (#%A014963(#)²)²²]`
-/

namespace A005065.P8980015500350071683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Int.tmod (d : ℤ) (A014963 d ^ 2) ^ 2) ^ 2

end

end A005065.P8980015500350071683

namespace A005065

/-- `∑{d}[n+1, (#%A014963(#)²)²²]` -/
def P8980015500350071683.Spec : Prop :=
  ∀ n, P8980015500350071683.a n = A005065 (n + 1)

end A005065

/-! ## A005065.P3667172735781007542

`lcm(A014963(n+1), ∑{p}[n+1, #²²])`
-/

namespace A005065.P3667172735781007542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (n + 1)) ((∑ p ∈ Nat.primeFactors (f1 n), (p ^ 2) ^ 2 : ℕ) : ℤ)

end

end A005065.P3667172735781007542

namespace A005065

/-- `lcm(A014963(n+1), ∑{p}[n+1, #²²])` -/
def P3667172735781007542.Spec : Prop :=
  ∀ n, (P3667172735781007542.a n : ℤ) = A005065 (n + 1)

end A005065

/-! ## A005065.P8327987960978532032

`A000007(A253641(n))+∑{p}[n+1, #²²]`
-/

namespace A005065.P8327987960978532032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A253641 n).toNat + ((∑ p ∈ Nat.primeFactors (f1 n), (p ^ 2) ^ 2 : ℕ) : ℤ)

end

end A005065.P8327987960978532032

namespace A005065

/-- `A000007(A253641(n))+∑{p}[n+1, #²²]` -/
def P8327987960978532032.Spec : Prop :=
  ∀ n, P8327987960978532032.a n = A005065 (n + 1)

end A005065

/-! ## A005065.P17272487028329832512

`A020639(n+1)^4+a(A028234(n+1)-1)` with `a(0)=0`
-/

namespace A005065.P17272487028329832512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020639 (n + 1) ^ 4 + a (A028234 (n + 1) - 1).toNat

end

end A005065.P17272487028329832512

namespace A005065

/-- `A020639(n+1)^4+a(A028234(n+1)-1)` -/
def P17272487028329832512.Spec : Prop :=
  ∀ n, P17272487028329832512.a n = A005065 (n + 1)

end A005065

/-! ## A005065.P3694410040746255936

`A347160((n+1)²)`
-/

namespace A005065.P3694410040746255936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347160 ((n + 1) ^ 2)

end

end A005065.P3694410040746255936

namespace A005065

/-- `A347160((n+1)²)` -/
def P3694410040746255936.Spec : Prop :=
  ∀ n, P3694410040746255936.a n = A005065 (n + 1)

end A005065

/-! ## A005065.P6260493490915992108

`A081403(∏{p}[n+1, #²])`
-/

namespace A005065.P6260493490915992108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A005065.P6260493490915992108

namespace A005065

/-- `A081403(∏{p}[n+1, #²])` -/
def P6260493490915992108.Spec : Prop :=
  ∀ n, P6260493490915992108.a n = A005065 (n + 1)

end A005065

/-! ## A005065.P1592920708821494970

`A081403(A078615(n+1))`
-/

namespace A005065.P1592920708821494970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081403 (A078615 (n + 1)).toNat

end

end A005065.P1592920708821494970

namespace A005065

/-- `A081403(A078615(n+1))` -/
def P1592920708821494970.Spec : Prop :=
  ∀ n, P1592920708821494970.a n = A005065 (n + 1)

end A005065

/-!
# A005066: Sum of squares of odd primes dividing n.

The programs for A005066, the canonical program `A005066.P399766481183112072` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005066 has offset 1).

The definition of A005066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005079, A005083, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005066.P3731057141440062673

`A005063(A000265(n+1))`
-/

namespace A005066.P3731057141440062673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A000265 (n + 1)).toNat

end

end A005066.P3731057141440062673

namespace A005066

/-- `A005063(A000265(n+1))` -/
def P3731057141440062673.Spec : Prop :=
  ∀ n, P3731057141440062673.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P399766481183112072

`A005079(n+1)+A005083(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005066

/-- `A005079(n+1)+A005083(n+1)` -/
def P399766481183112072.Spec : Prop :=
  ∀ n, P399766481183112072.a n = A005066 (n + 1)

theorem P399766481183112072.correct : P399766481183112072.Spec := by
  intro n
  simp only [A005066, Nat.add_sub_cancel]

end A005066

/-! ## A005066.P375232716091652326

`∑{p}[n+1, and(-7, #²)]`
-/

namespace A005066.P375232716091652326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land (-7) (p ^ 2 : ℤ)

end

end A005066.P375232716091652326

namespace A005066

/-- `∑{p}[n+1, and(-7, #²)]` -/
def P375232716091652326.Spec : Prop :=
  ∀ n, P375232716091652326.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P16267305730684045936

`∑{p}[2*(n+1), #²]-4`
-/

namespace A005066.P16267305730684045936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ) - 4

end

end A005066.P16267305730684045936

namespace A005066

/-- `∑{p}[2*(n+1), #²]-4` -/
def P16267305730684045936.Spec : Prop :=
  ∀ n, P16267305730684045936.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P3178222493706198672

`∑{p}[n+1, xor(1, #-1)²]`
-/

namespace A005066.P3178222493706198672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.xor 1 ((p : ℤ) - 1) ^ 2

end

end A005066.P3178222493706198672

namespace A005066

/-- `∑{p}[n+1, xor(1, #-1)²]` -/
def P3178222493706198672.Spec : Prop :=
  ∀ n, P3178222493706198672.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P15616954583048609018

`∑{p}[n+1, (#*#%2)²]`
-/

namespace A005066.P15616954583048609018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p * (p % 2)) ^ 2

end

end A005066.P15616954583048609018

namespace A005066

/-- `∑{p}[n+1, (#*#%2)²]` -/
def P15616954583048609018.Spec : Prop :=
  ∀ n, (P15616954583048609018.a n : ℤ) = A005066 (n + 1)

end A005066

/-! ## A005066.P3610030428055878177

`∑{p}[n+1, (lcm(2, #)-#)²]`
-/

namespace A005066.P3610030428055878177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.lcm 2 p : ℤ) - (p : ℤ)) ^ 2

end

end A005066.P3610030428055878177

namespace A005066

/-- `∑{p}[n+1, (lcm(2, #)-#)²]` -/
def P3610030428055878177.Spec : Prop :=
  ∀ n, P3610030428055878177.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P3488543688895018052

`∑{p}[n+1, (#*and(1, #))²]`
-/

namespace A005066.P3488543688895018052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p * Nat.land 1 p) ^ 2

end

end A005066.P3488543688895018052

namespace A005066

/-- `∑{p}[n+1, (#*and(1, #))²]` -/
def P3488543688895018052.Spec : Prop :=
  ∀ n, (P3488543688895018052.a n : ℤ) = A005066 (n + 1)

end A005066

/-! ## A005066.P5992496286267301674

`∑{p}[n+1, A303873(#)]`
-/

namespace A005066.P5992496286267301674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A303873 p

end

end A005066.P5992496286267301674

namespace A005066

/-- `∑{p}[n+1, A303873(#)]` -/
def P5992496286267301674.Spec : Prop :=
  ∀ n, P5992496286267301674.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P6569615497424113866

`∑{p}[n+1, A005069(#)²]`
-/

namespace A005066.P6569615497424113866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005069 p ^ 2

end

end A005066.P6569615497424113866

namespace A005066

/-- `∑{p}[n+1, A005069(#)²]` -/
def P6569615497424113866.Spec : Prop :=
  ∀ n, P6569615497424113866.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P16329504142377014662

`∑{p}[n+1, A037284(#)²]`
-/

namespace A005066.P16329504142377014662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A037284 p ^ 2

end

end A005066.P16329504142377014662

namespace A005066

/-- `∑{p}[n+1, A037284(#)²]` -/
def P16329504142377014662.Spec : Prop :=
  ∀ n, P16329504142377014662.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P9879080969083356474

`∑{p}[A204455(n+1), #²]`
-/

namespace A005066.P9879080969083356474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005066.P9879080969083356474

namespace A005066

/-- `∑{p}[A204455(n+1), #²]` -/
def P9879080969083356474.Spec : Prop :=
  ∀ n, (P9879080969083356474.a n : ℤ) = A005066 (n + 1)

end A005066

/-! ## A005066.P6672695338197366114

`∑{p}[n+1, A301941(#)²]`
-/

namespace A005066.P6672695338197366114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A301941 p ^ 2

end

end A005066.P6672695338197366114

namespace A005066

/-- `∑{p}[n+1, A301941(#)²]` -/
def P6672695338197366114.Spec : Prop :=
  ∀ n, P6672695338197366114.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P1323431274059006963

`∑{p}[n+1, sqrt(A005068(#))]`
-/

namespace A005066.P1323431274059006963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A005068 p : ℝ)

end

end A005066.P1323431274059006963

namespace A005066

/-- `∑{p}[n+1, sqrt(A005068(#))]` -/
def P1323431274059006963.Spec : Prop :=
  ∀ n, P1323431274059006963.a n = (A005066 (n + 1) : ℝ)

end A005066

/-! ## A005066.P3955555415940117469

`∑{p}[A171435(2*(n+1)), #²]`
-/

namespace A005066.P3955555415940117469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005066.P3955555415940117469

namespace A005066

/-- `∑{p}[A171435(2*(n+1)), #²]` -/
def P3955555415940117469.Spec : Prop :=
  ∀ n, (P3955555415940117469.a n : ℤ) = A005066 (n + 1)

end A005066

/-! ## A005066.P14479670263200204736

`∑{p}[(n+1)/A006519(n+1), #²]`
-/

namespace A005066.P14479670263200204736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p ^ 2

end

end A005066.P14479670263200204736

namespace A005066

/-- `∑{p}[(n+1)/A006519(n+1), #²]` -/
def P14479670263200204736.Spec : Prop :=
  ∀ n, (P14479670263200204736.a n : ℤ) = A005066 (n + 1)

end A005066

/-! ## A005066.P3015611725032834302

`A005063(A204455(n+1))`
-/

namespace A005066.P3015611725032834302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A204455 (n + 1)).toNat

end

end A005066.P3015611725032834302

namespace A005066

/-- `A005063(A204455(n+1))` -/
def P3015611725032834302.Spec : Prop :=
  ∀ n, P3015611725032834302.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P15753079129021436794

`A005063(n+1)-A010675(n)`
-/

namespace A005066.P15753079129021436794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) - A010675 n

end

end A005066.P15753079129021436794

namespace A005066

/-- `A005063(n+1)-A010675(n)` -/
def P15753079129021436794.Spec : Prop :=
  ∀ n, P15753079129021436794.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P7109733521252135711

`∑{p}[A064989(n+1), A346091(#)²]`
-/

namespace A005066.P7109733521252135711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A346091 p ^ 2

end

end A005066.P7109733521252135711

namespace A005066

/-- `∑{p}[A064989(n+1), A346091(#)²]` -/
def P7109733521252135711.Spec : Prop :=
  ∀ n, P7109733521252135711.a n = A005066 (n + 1)

end A005066

/-! ## A005066.P9562720443783372118

`A005063(2*(n+1))-4`
-/

namespace A005066.P9562720443783372118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (2 * (n + 1)) - 4

end

end A005066.P9562720443783372118

namespace A005066

/-- `A005063(2*(n+1))-4` -/
def P9562720443783372118.Spec : Prop :=
  ∀ n, P9562720443783372118.a n = A005066 (n + 1)

end A005066

/-!
# A005067: Sum of cubes of odd primes dividing n.

The programs for A005067, the canonical program `A005067.P16153284212930227781` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005067 has offset 1).

The definition of A005067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005067.P7426836777821637595

`A005064(A000265(n+1))`
-/

namespace A005067.P7426836777821637595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A000265 (n + 1)).toNat

end

end A005067.P7426836777821637595

namespace A005067

/-- `A005064(A000265(n+1))` -/
def P7426836777821637595.Spec : Prop :=
  ∀ n, P7426836777821637595.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P16153284212930227781

`∑{p}[n+1, A303972(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005067

/-- `∑{p}[n+1, A303972(#)]` -/
def P16153284212930227781.Spec : Prop :=
  ∀ n, P16153284212930227781.a n = A005067 (n + 1)

theorem P16153284212930227781.correct : P16153284212930227781.Spec := by
  intro n
  simp only [A005067, Nat.add_sub_cancel]

end A005067

/-! ## A005067.P15885696994507018254

`∑{p}[A204455(n+1), #*#²]`
-/

namespace A005067.P15885696994507018254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005067.P15885696994507018254

namespace A005067

/-- `∑{p}[A204455(n+1), #*#²]` -/
def P15885696994507018254.Spec : Prop :=
  ∀ n, (P15885696994507018254.a n : ℤ) = A005067 (n + 1)

end A005067

/-! ## A005067.P12357016515883756031

`A005064(n+1)-8*n%2`
-/

namespace A005067.P12357016515883756031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - ((8 * (n % 2) : ℕ) : ℤ)

end

end A005067.P12357016515883756031

namespace A005067

/-- `A005064(n+1)-8*n%2` -/
def P12357016515883756031.Spec : Prop :=
  ∀ n, P12357016515883756031.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P10387173529538885852

`A005064(A204455(n+1))`
-/

namespace A005067.P10387173529538885852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A204455 (n + 1)).toNat

end

end A005067.P10387173529538885852

namespace A005067

/-- `A005064(A204455(n+1))` -/
def P10387173529538885852.Spec : Prop :=
  ∀ n, P10387173529538885852.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P7391202710495208622

`A005064(n+1)-A010679(n)`
-/

namespace A005067.P7391202710495208622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - A010679 n

end

end A005067.P7391202710495208622

namespace A005067

/-- `A005064(n+1)-A010679(n)` -/
def P7391202710495208622.Spec : Prop :=
  ∀ n, P7391202710495208622.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P4634714007631727378

`A224787(A007947(2*(n+1))/2)`
-/

namespace A005067.P4634714007631727378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A005067.P4634714007631727378

namespace A005067

/-- `A224787(A007947(2*(n+1))/2)` -/
def P4634714007631727378.Spec : Prop :=
  ∀ n, P4634714007631727378.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P11323011863437270362

`A005080(n+1)+A005084(n+1)`
-/

namespace A005067.P11323011863437270362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1) + A005084 (n + 1)

end

end A005067.P11323011863437270362

namespace A005067

/-- `A005080(n+1)+A005084(n+1)` -/
def P11323011863437270362.Spec : Prop :=
  ∀ n, P11323011863437270362.a n = A005067 (n + 1)

theorem P11323011863437270362.correct : P11323011863437270362.Spec := by
  intro n
  simp only [A005067, Nat.add_sub_cancel, A005067.P11323011863437270362.a, A005067.P16153284212930227781.f1, A005067.P16153284212930227781.a, A005080, A005080.P9273284340090812152.a, A005084, A005084.P8221435788932631472.f1, A005084.P8221435788932631472.a, A303972, A303972.P11388176725645930891.a, A005064, A005064.P4705532925960423919.a, A005083, A005083.P12060761291276031228.a, A059841, A059841.P2666504972441551157.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005067

/-! ## A005067.P8214837227577537904

`∑{p}[n+1, A004442(A000010(#))^3]`
-/

namespace A005067.P8214837227577537904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A004442 (A000010 p).toNat ^ 3

end

end A005067.P8214837227577537904

namespace A005067

/-- `∑{p}[n+1, A004442(A000010(#))^3]` -/
def P8214837227577537904.Spec : Prop :=
  ∀ n, P8214837227577537904.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P9658281118133852547

`A005064(n+1)-A005064(∑[A165326(n)])`
-/

namespace A005067.P9658281118133852547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - A005064 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A005067.P9658281118133852547

namespace A005067

/-- `A005064(n+1)-A005064(∑[A165326(n)])` -/
def P9658281118133852547.Spec : Prop :=
  ∀ n, P9658281118133852547.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P11576810157509357219

`A005064(sqrt(A191871(n+1)))`
-/

namespace A005067.P11576810157509357219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (SequenceMachineLib.roundAway (Real.sqrt (A191871 (n + 1) : ℝ))).toNat

end

end A005067.P11576810157509357219

namespace A005067

/-- `A005064(sqrt(A191871(n+1)))` -/
def P11576810157509357219.Spec : Prop :=
  ∀ n, P11576810157509357219.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P11769745472668194960

`A005064(A028234(2*(n+1)))`
-/

namespace A005067.P11769745472668194960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A028234 (2 * (n + 1))).toNat

end

end A005067.P11769745472668194960

namespace A005067

/-- `A005064(A028234(2*(n+1)))` -/
def P11769745472668194960.Spec : Prop :=
  ∀ n, P11769745472668194960.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P10758535863043832334

`A005064(A191871(n+1))`
-/

namespace A005067.P10758535863043832334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A191871 (n + 1)).toNat

end

end A005067.P10758535863043832334

namespace A005067

/-- `A005064(A191871(n+1))` -/
def P10758535863043832334.Spec : Prop :=
  ∀ n, P10758535863043832334.a n = A005067 (n + 1)

end A005067

/-! ## A005067.P8937118033173813263

`A347159(A000265((n+1)²))`
-/

namespace A005067.P8937118033173813263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347159 (A000265 ((n + 1) ^ 2)).toNat

end

end A005067.P8937118033173813263

namespace A005067

/-- `A347159(A000265((n+1)²))` -/
def P8937118033173813263.Spec : Prop :=
  ∀ n, P8937118033173813263.a n = A005067 (n + 1)

end A005067

/-!
# A005068: Sum of 4th powers of odd primes dividing n.

The programs for A005068, the canonical program `A005068.P275356790973680025` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005068 has offset 1).

The definition of A005068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005068.P16855179905191709147

`A005065(A000265(n+1))`
-/

namespace A005068.P16855179905191709147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A000265 (n + 1)).toNat

end

end A005068.P16855179905191709147

namespace A005068

/-- `A005065(A000265(n+1))` -/
def P16855179905191709147.Spec : Prop :=
  ∀ n, P16855179905191709147.a n = A005068 (n + 1)

end A005068

/-! ## A005068.P275356790973680025

`∑{p}[n+1, and(-5, #²)²]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005068

/-- `∑{p}[n+1, and(-5, #²)²]` -/
def P275356790973680025.Spec : Prop :=
  ∀ n, P275356790973680025.a n = A005068 (n + 1)

theorem P275356790973680025.correct : P275356790973680025.Spec := by
  intro n
  simp only [A005068, Nat.add_sub_cancel]

end A005068

/-! ## A005068.P7043850723889900348

`∑{p}[n+1, A005066(#)²]`
-/

namespace A005068.P7043850723889900348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005066 p ^ 2

end

end A005068.P7043850723889900348

namespace A005068

/-- `∑{p}[n+1, A005066(#)²]` -/
def P7043850723889900348.Spec : Prop :=
  ∀ n, P7043850723889900348.a n = A005068 (n + 1)

end A005068

/-! ## A005068.P15800755660024036160

`∑{p}[A204455(n+1), #²²]`
-/

namespace A005068.P15800755660024036160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005068.P15800755660024036160

namespace A005068

/-- `∑{p}[A204455(n+1), #²²]` -/
def P15800755660024036160.Spec : Prop :=
  ∀ n, (P15800755660024036160.a n : ℤ) = A005068 (n + 1)

end A005068

/-! ## A005068.P16924146594464664078

`∑{p}[A171435(2*(n+1)), #²²]`
-/

namespace A005068.P16924146594464664078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005068.P16924146594464664078

namespace A005068

/-- `∑{p}[A171435(2*(n+1)), #²²]` -/
def P16924146594464664078.Spec : Prop :=
  ∀ n, (P16924146594464664078.a n : ℤ) = A005068 (n + 1)

end A005068

/-! ## A005068.P5503461263173547507

`∑{p}[n+1, xor(1, A000010(#))²²]`
-/

namespace A005068.P5503461263173547507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Int.xor 1 (A000010 p) ^ 2) ^ 2

end

end A005068.P5503461263173547507

namespace A005068

/-- `∑{p}[n+1, xor(1, A000010(#))²²]` -/
def P5503461263173547507.Spec : Prop :=
  ∀ n, P5503461263173547507.a n = A005068 (n + 1)

end A005068

/-! ## A005068.P6374417982139174242

`A005065(A204455(n+1))`
-/

namespace A005068.P6374417982139174242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A204455 (n + 1)).toNat

end

end A005068.P6374417982139174242

namespace A005068

/-- `A005065(A204455(n+1))` -/
def P6374417982139174242.Spec : Prop :=
  ∀ n, P6374417982139174242.a n = A005068 (n + 1)

end A005068

/-! ## A005068.P13276809417546831390

`A005065(A007947(2*(n+1))/2)`
-/

namespace A005068.P13276809417546831390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (SequenceMachineLib.roundAway ((A007947 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A005068.P13276809417546831390

namespace A005068

/-- `A005065(A007947(2*(n+1))/2)` -/
def P13276809417546831390.Spec : Prop :=
  ∀ n, P13276809417546831390.a n = A005068 (n + 1)

end A005068

/-! ## A005068.P8039403167029864077

`A005081(n+1)+A005085(n+1)`
-/

namespace A005068.P8039403167029864077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005081 (n + 1) + A005085 (n + 1)

end

end A005068.P8039403167029864077

namespace A005068

/-- `A005081(n+1)+A005085(n+1)` -/
def P8039403167029864077.Spec : Prop :=
  ∀ n, P8039403167029864077.a n = A005068 (n + 1)

theorem P8039403167029864077.correct : P8039403167029864077.Spec := by
  intro n
  simp only [A005068, Nat.add_sub_cancel, A005068.P8039403167029864077.a, A005068.P275356790973680025.f1, A005068.P275356790973680025.a, A005081, A005081.P3663982266665043880.a, A005085, A005085.P17408966888142263945.f1, A005085.P17408966888142263945.a, A005065, A005065.P10018668116522335289.a, A005083, A005083.P12060761291276031228.a, A059841, A059841.P2666504972441551157.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005068

/-! ## A005068.P15534140600393669300

`A005065(sqrt(A191871(n+1)))`
-/

namespace A005068.P15534140600393669300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (SequenceMachineLib.roundAway (Real.sqrt (A191871 (n + 1) : ℝ))).toNat

end

end A005068.P15534140600393669300

namespace A005068

/-- `A005065(sqrt(A191871(n+1)))` -/
def P15534140600393669300.Spec : Prop :=
  ∀ n, P15534140600393669300.a n = A005068 (n + 1)

end A005068

/-! ## A005068.P10357766244892930415

`∑{p}[A161151(2*n+1), #²²]`
-/

namespace A005068.P10357766244892930415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161151 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005068.P10357766244892930415

namespace A005068

/-- `∑{p}[A161151(2*n+1), #²²]` -/
def P10357766244892930415.Spec : Prop :=
  ∀ n, (P10357766244892930415.a n : ℤ) = A005068 (n + 1)

end A005068

/-! ## A005068.P7355743629918919827

`∑{p}[A028234(2*(n+1)), #²²]`
-/

namespace A005068.P7355743629918919827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005068.P7355743629918919827

namespace A005068

/-- `∑{p}[A028234(2*(n+1)), #²²]` -/
def P7355743629918919827.Spec : Prop :=
  ∀ n, (P7355743629918919827.a n : ℤ) = A005068 (n + 1)

end A005068

/-! ## A005068.P8263487607943607224

`A005065(A028234(2*(n+1)))`
-/

namespace A005068.P8263487607943607224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A028234 (2 * (n + 1))).toNat

end

end A005068.P8263487607943607224

namespace A005068

/-- `A005065(A028234(2*(n+1)))` -/
def P8263487607943607224.Spec : Prop :=
  ∀ n, P8263487607943607224.a n = A005068 (n + 1)

end A005068

/-! ## A005068.P14480904286817976325

`A005065(A191871(n+1))`
-/

namespace A005068.P14480904286817976325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A191871 (n + 1)).toNat

end

end A005068.P14480904286817976325

namespace A005068

/-- `A005065(A191871(n+1))` -/
def P14480904286817976325.Spec : Prop :=
  ∀ n, P14480904286817976325.a n = A005068 (n + 1)

end A005068

/-!
# A005069: Sum of odd primes dividing n.

The programs for A005069, the canonical program `A005069.P14103743043716433580` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005069 has offset 1).

The definition of A005069 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005078, A005082, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005069.P14016788793783888907

`A008472(A000265(n+1))`
-/

namespace A005069.P14016788793783888907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000265 (n + 1)).toNat

end

end A005069.P14016788793783888907

namespace A005069

/-- `A008472(A000265(n+1))` -/
def P14016788793783888907.Spec : Prop :=
  ∀ n, P14016788793783888907.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P14103743043716433580

`A005078(n+1)+A005082(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005069

/-- `A005078(n+1)+A005082(n+1)` -/
def P14103743043716433580.Spec : Prop :=
  ∀ n, P14103743043716433580.a n = A005069 (n + 1)

theorem P14103743043716433580.correct : P14103743043716433580.Spec := by
  intro n
  simp only [A005069, Nat.add_sub_cancel]

end A005069

/-! ## A005069.P5154788235945185566

`A008472(n+1)-2*A059841(n+1)`
-/

namespace A005069.P5154788235945185566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - 2 * A059841 (n + 1)

end

end A005069.P5154788235945185566

namespace A005069

/-- `A008472(n+1)-2*A059841(n+1)` -/
def P5154788235945185566.Spec : Prop :=
  ∀ n, P5154788235945185566.a n = A005069 (n + 1)

theorem P5154788235945185566.correct : P5154788235945185566.Spec := by
  intro n
  simp only [A005069, Nat.add_sub_cancel, A005069.P5154788235945185566.a, A005069.P14103743043716433580.a, A005078, A005078.P3775666566695567279.a, A005082, A005082.P12614618452362307440.f2, A005082.P12614618452362307440.f1, A005082.P12614618452362307440.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005069

/-! ## A005069.P5300590653732873583

`∑{p}[2*(n+1), #]-2`
-/

namespace A005069.P5300590653732873583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) - 2

end

end A005069.P5300590653732873583

namespace A005069

/-- `∑{p}[2*(n+1), #]-2` -/
def P5300590653732873583.Spec : Prop :=
  ∀ n, P5300590653732873583.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P5544779552806026583

`∑{p}[n+1, xor(1, #-1)]`
-/

namespace A005069.P5544779552806026583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.xor 1 ((p : ℤ) - 1)

end

end A005069.P5544779552806026583

namespace A005069

/-- `∑{p}[n+1, xor(1, #-1)]` -/
def P5544779552806026583.Spec : Prop :=
  ∀ n, P5544779552806026583.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P18253285898868998789

`∑{p}[n+1, #*#%2]`
-/

namespace A005069.P18253285898868998789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * (p % 2)

end

end A005069.P18253285898868998789

namespace A005069

/-- `∑{p}[n+1, #*#%2]` -/
def P18253285898868998789.Spec : Prop :=
  ∀ n, (P18253285898868998789.a n : ℤ) = A005069 (n + 1)

end A005069

/-! ## A005069.P14475391496848937255

`∑{p}[n+1, lcm(2, #)-#]`
-/

namespace A005069.P14475391496848937255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.lcm 2 p : ℤ) - (p : ℤ))

end

end A005069.P14475391496848937255

namespace A005069

/-- `∑{p}[n+1, lcm(2, #)-#]` -/
def P14475391496848937255.Spec : Prop :=
  ∀ n, P14475391496848937255.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P5670241449307916877

`∑{p}[n+1, #*and(1, #)]`
-/

namespace A005069.P5670241449307916877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p * Nat.land 1 p

end

end A005069.P5670241449307916877

namespace A005069

/-- `∑{p}[n+1, #*and(1, #)]` -/
def P5670241449307916877.Spec : Prop :=
  ∀ n, (P5670241449307916877.a n : ℤ) = A005069 (n + 1)

end A005069

/-! ## A005069.P14270108136663052390

`abs(2-∑{p}[n+2+n, #])`
-/

namespace A005069.P14270108136663052390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)|

end

end A005069.P14270108136663052390

namespace A005069

/-- `abs(2-∑{p}[n+2+n, #])` -/
def P14270108136663052390.Spec : Prop :=
  ∀ n, P14270108136663052390.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P12806555306951994864

`∑{p}[n+1, #-val(#², 2)]`
-/

namespace A005069.P12806555306951994864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - (SequenceMachineLib.valuation (p ^ 2) 2 : ℤ))

end

end A005069.P12806555306951994864

namespace A005069

/-- `∑{p}[n+1, #-val(#², 2)]` -/
def P12806555306951994864.Spec : Prop :=
  ∀ n, P12806555306951994864.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P13770922403912713604

`∑{p}[n+1, and(#, (-1)^#)]`
-/

namespace A005069.P13770922403912713604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.land (p : ℤ) ((-1) ^ p)

end

end A005069.P13770922403912713604

namespace A005069

/-- `∑{p}[n+1, and(#, (-1)^#)]` -/
def P13770922403912713604.Spec : Prop :=
  ∀ n, P13770922403912713604.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P1245625242340197227

`∑{p}[floor(n/2^val(n+1, 2))+1, #]`
-/

namespace A005069.P1245625242340197227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005069.P1245625242340197227

namespace A005069

/-- `∑{p}[floor(n/2^val(n+1, 2))+1, #]` -/
def P1245625242340197227.Spec : Prop :=
  ∀ n, (P1245625242340197227.a n : ℤ) = A005069 (n + 1)

end A005069

/-! ## A005069.P16441970153825186808

`∑{p}[(n+1)/and(n+1, -(n+1)), #]`
-/

namespace A005069.P16441970153825186808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A005069.P16441970153825186808

namespace A005069

/-- `∑{p}[(n+1)/and(n+1, -(n+1)), #]` -/
def P16441970153825186808.Spec : Prop :=
  ∀ n, (P16441970153825186808.a n : ℤ) = A005069 (n + 1)

end A005069

/-! ## A005069.P6586775007885547267

`∑{p}[(n+1)/or(n+1, -(n+1)), #]`
-/

namespace A005069.P6586775007885547267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A005069.P6586775007885547267

namespace A005069

/-- `∑{p}[(n+1)/or(n+1, -(n+1)), #]` -/
def P6586775007885547267.Spec : Prop :=
  ∀ n, (P6586775007885547267.a n : ℤ) = A005069 (n + 1)

end A005069

/-! ## A005069.P9686485006329034378

`A100030(n+1)-2`
-/

namespace A005069.P9686485006329034378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) - 2

end

end A005069.P9686485006329034378

namespace A005069

/-- `A100030(n+1)-2` -/
def P9686485006329034378.Spec : Prop :=
  ∀ n, P9686485006329034378.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P12165775446041744103

`∑{p}[n+1, A037284(#)]`
-/

namespace A005069.P12165775446041744103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A037284 p

end

end A005069.P12165775446041744103

namespace A005069

/-- `∑{p}[n+1, A037284(#)]` -/
def P12165775446041744103.Spec : Prop :=
  ∀ n, P12165775446041744103.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P3193315077972429003

`∑{p}[n+1, A193356(#)]`
-/

namespace A005069.P3193315077972429003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A193356 p

end

end A005069.P3193315077972429003

namespace A005069

/-- `∑{p}[n+1, A193356(#)]` -/
def P3193315077972429003.Spec : Prop :=
  ∀ n, P3193315077972429003.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P9441423353409871314

`∑{p}[A204455(n+1), #]`
-/

namespace A005069.P9441423353409871314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005069.P9441423353409871314

namespace A005069

/-- `∑{p}[A204455(n+1), #]` -/
def P9441423353409871314.Spec : Prop :=
  ∀ n, (P9441423353409871314.a n : ℤ) = A005069 (n + 1)

end A005069

/-! ## A005069.P2352813817014123974

`∑{p}[n+1, A263426(#)]`
-/

namespace A005069.P2352813817014123974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A263426 p

end

end A005069.P2352813817014123974

namespace A005069

/-- `∑{p}[n+1, A263426(#)]` -/
def P2352813817014123974.Spec : Prop :=
  ∀ n, P2352813817014123974.a n = A005069 (n + 1)

end A005069

/-! ## A005069.P3001371119508802916

`∑{p}[n+1, A296966(#)]`
-/

namespace A005069.P3001371119508802916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A296966 p

end

end A005069.P3001371119508802916

namespace A005069

/-- `∑{p}[n+1, A296966(#)]` -/
def P3001371119508802916.Spec : Prop :=
  ∀ n, P3001371119508802916.a n = A005069 (n + 1)

end A005069

/-!
# A005070: Sum of primes == 1 (mod 3) dividing n.

The programs for A005070, the canonical program `A005070.P10126547095800783810` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005070 has offset 1).

The definition of A005070 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005070.P16416431039530930145

`∑{p}[A170824(n+1), #]`
-/

namespace A005070.P16416431039530930145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005070.P16416431039530930145

namespace A005070

/-- `∑{p}[A170824(n+1), #]` -/
def P16416431039530930145.Spec : Prop :=
  ∀ n, (P16416431039530930145.a n : ℤ) = A005070 (n + 1)

end A005070

/-! ## A005070.P16064760286184638450

`∑{p}[A248909(n+1), #]`
-/

namespace A005070.P16064760286184638450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005070.P16064760286184638450

namespace A005070

/-- `∑{p}[A248909(n+1), #]` -/
def P16064760286184638450.Spec : Prop :=
  ∀ n, (P16064760286184638450.a n : ℤ) = A005070 (n + 1)

end A005070

/-! ## A005070.P10126547095800783810

`∑{p}[n+1, #%A080029(#-1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005070

/-- `∑{p}[n+1, #%A080029(#-1)]` -/
def P10126547095800783810.Spec : Prop :=
  ∀ n, P10126547095800783810.a n = A005070 (n + 1)

theorem P10126547095800783810.correct : P10126547095800783810.Spec := by
  intro n
  simp only [A005070, Nat.add_sub_cancel]

end A005070

/-! ## A005070.P12778025210458684180

`A001414(A170824(n+1))`
-/

namespace A005070.P12778025210458684180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A170824 (n + 1)).toNat

end

end A005070.P12778025210458684180

namespace A005070

/-- `A001414(A170824(n+1))` -/
def P12778025210458684180.Spec : Prop :=
  ∀ n, P12778025210458684180.a n = A005070 (n + 1)

end A005070

/-! ## A005070.P5254641712731371012

`A005069(A248909(n+1))`
-/

namespace A005070.P5254641712731371012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A248909 (n + 1)).toNat

end

end A005070.P5254641712731371012

namespace A005070

/-- `A005069(A248909(n+1))` -/
def P5254641712731371012.Spec : Prop :=
  ∀ n, P5254641712731371012.a n = A005070 (n + 1)

end A005070

/-! ## A005070.P11702866300295927645

`∑{p}[n+1, #*A345000(A033685(#))]`
-/

namespace A005070.P11702866300295927645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A345000 (A033685 p).toNat

end

end A005070.P11702866300295927645

namespace A005070

/-- `∑{p}[n+1, #*A345000(A033685(#))]` -/
def P11702866300295927645.Spec : Prop :=
  ∀ n, P11702866300295927645.a n = A005070 (n + 1)

end A005070

/-! ## A005070.P17169547840521425323

`A005069(A005071(n+1)^A005088(n+1))`
-/

namespace A005070.P17169547840521425323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.roundAway ((A005071 (n + 1) : ℚ) ^ (A005088 (n + 1) : ℤ))).toNat

end

end A005070.P17169547840521425323

namespace A005070

/-- `A005069(A005071(n+1)^A005088(n+1))` -/
def P17169547840521425323.Spec : Prop :=
  ∀ n, P17169547840521425323.a n = A005070 (n + 1)

end A005070

/-! ## A005070.P6724950832018515521

`A090369(A248909(n+1)^A071222(n))`
-/

namespace A005070.P6724950832018515521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (SequenceMachineLib.roundAway ((A248909 (n + 1) : ℚ) ^ (A071222 n : ℤ))).toNat

end

end A005070.P6724950832018515521

namespace A005070

/-- `A090369(A248909(n+1)^A071222(n))` -/
def P6724950832018515521.Spec : Prop :=
  ∀ n, P6724950832018515521.a n = A005070 (n + 1)

end A005070

/-! ## A005070.P16265667884666324214

`A005088(n+1)*A322445(n+1)`
-/

namespace A005070.P16265667884666324214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1) * A322445 (n + 1)

end

end A005070.P16265667884666324214

namespace A005070

/-- `A005088(n+1)*A322445(n+1)` -/
def P16265667884666324214.Spec : Prop :=
  ∀ n, P16265667884666324214.a n = A005070 (n + 1)

end A005070

/-!
# A005071: Sum of squares of primes = 1 mod 3 dividing n.

The programs for A005071, the canonical program `A005071.P4242743647660035667` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005071 has offset 1).

The definition of A005071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005071.P4242743647660035667

`∑{p}[n+1, A005070(#)²]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005071

/-- `∑{p}[n+1, A005070(#)²]` -/
def P4242743647660035667.Spec : Prop :=
  ∀ n, P4242743647660035667.a n = A005071 (n + 1)

theorem P4242743647660035667.correct : P4242743647660035667.Spec := by
  intro n
  simp only [A005071, Nat.add_sub_cancel]

end A005071

/-! ## A005071.P14578760055191406755

`∑{p}[A170824(n+1), #²]`
-/

namespace A005071.P14578760055191406755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005071.P14578760055191406755

namespace A005071

/-- `∑{p}[A170824(n+1), #²]` -/
def P14578760055191406755.Spec : Prop :=
  ∀ n, (P14578760055191406755.a n : ℤ) = A005071 (n + 1)

end A005071

/-! ## A005071.P4393305816112244722

`∑{p}[A248909(n+1), #²]`
-/

namespace A005071.P4393305816112244722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005071.P4393305816112244722

namespace A005071

/-- `∑{p}[A248909(n+1), #²]` -/
def P4393305816112244722.Spec : Prop :=
  ∀ n, (P4393305816112244722.a n : ℤ) = A005071 (n + 1)

end A005071

/-! ## A005071.P300918968047796483

`∑{p}[n+1, #*#*A005088(#)]`
-/

namespace A005071.P300918968047796483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * ((p : ℤ) * A005088 p)

end

end A005071.P300918968047796483

namespace A005071

/-- `∑{p}[n+1, #*#*A005088(#)]` -/
def P300918968047796483.Spec : Prop :=
  ∀ n, P300918968047796483.a n = A005071 (n + 1)

end A005071

/-! ## A005071.P10094612714199788686

`A005063(A170824(n+1))`
-/

namespace A005071.P10094612714199788686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A170824 (n + 1)).toNat

end

end A005071.P10094612714199788686

namespace A005071

/-- `A005063(A170824(n+1))` -/
def P10094612714199788686.Spec : Prop :=
  ∀ n, P10094612714199788686.a n = A005071 (n + 1)

end A005071

/-! ## A005071.P7413454630995424378

`A005063(A248909(n+1))`
-/

namespace A005071.P7413454630995424378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A248909 (n + 1)).toNat

end

end A005071.P7413454630995424378

namespace A005071

/-- `A005063(A248909(n+1))` -/
def P7413454630995424378.Spec : Prop :=
  ∀ n, P7413454630995424378.a n = A005071 (n + 1)

end A005071

/-! ## A005071.P10409082173868290432

`∑{p}[n+1, (#*A345000(A033685(#)))²]`
-/

namespace A005071.P10409082173868290432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) * A345000 (A033685 p).toNat) ^ 2

end

end A005071.P10409082173868290432

namespace A005071

/-- `∑{p}[n+1, (#*A345000(A033685(#)))²]` -/
def P10409082173868290432.Spec : Prop :=
  ∀ n, P10409082173868290432.a n = A005071 (n + 1)

end A005071

/-! ## A005071.P18065753662589184886

`(A005070(n+1)%A005050(n+6))²`
-/

namespace A005071.P18065753662589184886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005070 (n + 1)) (A005050 (n + 6)) ^ 2

end

end A005071.P18065753662589184886

namespace A005071

/-- `(A005070(n+1)%A005050(n+6))²` -/
def P18065753662589184886.Spec : Prop :=
  ∀ n, P18065753662589184886.a n = A005071 (n + 1)

end A005071

/-! ## A005071.P17397710871794868380

`A005070(n+1)*A322445(n+1)`
-/

namespace A005071.P17397710871794868380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005070 (n + 1) * A322445 (n + 1)

end

end A005071.P17397710871794868380

namespace A005071

/-- `A005070(n+1)*A322445(n+1)` -/
def P17397710871794868380.Spec : Prop :=
  ∀ n, P17397710871794868380.a n = A005071 (n + 1)

end A005071

/-! ## A005071.P1413953412862536761

`A005072(n+1)/A322445(n+1)`
-/

namespace A005071.P1413953412862536761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005072 (n + 1) : ℚ) / (A322445 (n + 1) : ℚ)

end

end A005071.P1413953412862536761

namespace A005071

/-- `A005072(n+1)/A322445(n+1)` -/
def P1413953412862536761.Spec : Prop :=
  ∀ n, P1413953412862536761.a n = (A005071 (n + 1) : ℚ)

end A005071

/-!
# A005072: Sum of cubes of primes = 1 mod 3 dividing n.

The programs for A005072, the canonical program `A005072.P4467141680536761599` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005072 has offset 1).

The definition of A005072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005072.P4467141680536761599

`∑{p}[n+1, #*A005070(#)²]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005072

/-- `∑{p}[n+1, #*A005070(#)²]` -/
def P4467141680536761599.Spec : Prop :=
  ∀ n, P4467141680536761599.a n = A005072 (n + 1)

theorem P4467141680536761599.correct : P4467141680536761599.Spec := by
  intro n
  simp only [A005072, Nat.add_sub_cancel]

end A005072

/-! ## A005072.P2345486856679165237

`∑{p}[A170824(n+1), #*#²]`
-/

namespace A005072.P2345486856679165237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005072.P2345486856679165237

namespace A005072

/-- `∑{p}[A170824(n+1), #*#²]` -/
def P2345486856679165237.Spec : Prop :=
  ∀ n, (P2345486856679165237.a n : ℤ) = A005072 (n + 1)

end A005072

/-! ## A005072.P4648918738979929038

`∑{p}[A248909(n+1), #*#²]`
-/

namespace A005072.P4648918738979929038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005072.P4648918738979929038

namespace A005072

/-- `∑{p}[A248909(n+1), #*#²]` -/
def P4648918738979929038.Spec : Prop :=
  ∀ n, (P4648918738979929038.a n : ℤ) = A005072 (n + 1)

end A005072

/-! ## A005072.P10664131662157239295

`A005064(A170824(n+1))`
-/

namespace A005072.P10664131662157239295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A170824 (n + 1)).toNat

end

end A005072.P10664131662157239295

namespace A005072

/-- `A005064(A170824(n+1))` -/
def P10664131662157239295.Spec : Prop :=
  ∀ n, P10664131662157239295.a n = A005072 (n + 1)

end A005072

/-! ## A005072.P5400873557818063512

`A005064(A248909(n+1))`
-/

namespace A005072.P5400873557818063512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A248909 (n + 1)).toNat

end

end A005072.P5400873557818063512

namespace A005072

/-- `A005064(A248909(n+1))` -/
def P5400873557818063512.Spec : Prop :=
  ∀ n, P5400873557818063512.a n = A005072 (n + 1)

end A005072

/-! ## A005072.P10354578978689095054

`∑{p}[n+1, A005070(#)^A060839(#)]`
-/

namespace A005072.P10354578978689095054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A005070 p : ℚ) ^ (A060839 p : ℤ)

end

end A005072.P10354578978689095054

namespace A005072

/-- `∑{p}[n+1, A005070(#)^A060839(#)]` -/
def P10354578978689095054.Spec : Prop :=
  ∀ n, P10354578978689095054.a n = (A005072 (n + 1) : ℚ)

end A005072

/-! ## A005072.P12949094431564401865

`∑{p}[n+1, #*(#*A333818(#))²]`
-/

namespace A005072.P12949094431564401865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * ((p : ℤ) * A333818 p) ^ 2

end

end A005072.P12949094431564401865

namespace A005072

/-- `∑{p}[n+1, #*(#*A333818(#))²]` -/
def P12949094431564401865.Spec : Prop :=
  ∀ n, P12949094431564401865.a n = A005072 (n + 1)

end A005072

/-! ## A005072.P3517174496856871092

`A005064(A005071(n+1)^A005088(n+1))`
-/

namespace A005072.P3517174496856871092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (SequenceMachineLib.roundAway ((A005071 (n + 1) : ℚ) ^ (A005088 (n + 1) : ℤ))).toNat

end

end A005072.P3517174496856871092

namespace A005072

/-- `A005064(A005071(n+1)^A005088(n+1))` -/
def P3517174496856871092.Spec : Prop :=
  ∀ n, P3517174496856871092.a n = A005072 (n + 1)

end A005072

/-! ## A005072.P6189416989383671536

`A005067(A005071(n+1)^A005088(n+1))`
-/

namespace A005072.P6189416989383671536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (SequenceMachineLib.roundAway ((A005071 (n + 1) : ℚ) ^ (A005088 (n + 1) : ℤ))).toNat

end

end A005072.P6189416989383671536

namespace A005072

/-- `A005067(A005071(n+1)^A005088(n+1))` -/
def P6189416989383671536.Spec : Prop :=
  ∀ n, P6189416989383671536.a n = A005072 (n + 1)

end A005072

/-! ## A005072.P5803350890084066351

`(A005070(n+1)%A001065(A002049(n+1)+1))^3`
-/

namespace A005072.P5803350890084066351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005070 (n + 1)) (A001065 (A002049 (n + 1) + 1).toNat) ^ 3

end

end A005072.P5803350890084066351

namespace A005072

/-- `(A005070(n+1)%A001065(A002049(n+1)+1))^3` -/
def P5803350890084066351.Spec : Prop :=
  ∀ n, P5803350890084066351.a n = A005072 (n + 1)

end A005072

/-!
# A005073: Sum of 4th powers of primes = 1 mod 3 dividing n.

The programs for A005073, the canonical program `A005073.P8293580605370363974` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005073 has offset 1).

The definition of A005073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005073.P8293580605370363974

`∑{p}[n+1, A005070(#)²²]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005073

/-- `∑{p}[n+1, A005070(#)²²]` -/
def P8293580605370363974.Spec : Prop :=
  ∀ n, P8293580605370363974.a n = A005073 (n + 1)

theorem P8293580605370363974.correct : P8293580605370363974.Spec := by
  intro n
  simp only [A005073, Nat.add_sub_cancel]

end A005073

/-! ## A005073.P5313994378250188975

`∑{p}[A170824(n+1), #²²]`
-/

namespace A005073.P5313994378250188975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005073.P5313994378250188975

namespace A005073

/-- `∑{p}[A170824(n+1), #²²]` -/
def P5313994378250188975.Spec : Prop :=
  ∀ n, (P5313994378250188975.a n : ℤ) = A005073 (n + 1)

end A005073

/-! ## A005073.P7513007808293647523

`∑{p}[A248909(n+1), #²²]`
-/

namespace A005073.P7513007808293647523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005073.P7513007808293647523

namespace A005073

/-- `∑{p}[A248909(n+1), #²²]` -/
def P7513007808293647523.Spec : Prop :=
  ∀ n, (P7513007808293647523.a n : ℤ) = A005073 (n + 1)

end A005073

/-! ## A005073.P7653325949960400644

`∑{p}[n+1, (#*A005088(#))²²]`
-/

namespace A005073.P7653325949960400644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (((p : ℤ) * A005088 p) ^ 2) ^ 2

end

end A005073.P7653325949960400644

namespace A005073

/-- `∑{p}[n+1, (#*A005088(#))²²]` -/
def P7653325949960400644.Spec : Prop :=
  ∀ n, P7653325949960400644.a n = A005073 (n + 1)

end A005073

/-! ## A005073.P5335608706535975651

`∑{p}[n+1, (#*A343023(#))²²]`
-/

namespace A005073.P5335608706535975651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (((p : ℤ) * A343023 p) ^ 2) ^ 2

end

end A005073.P5335608706535975651

namespace A005073

/-- `∑{p}[n+1, (#*A343023(#))²²]` -/
def P5335608706535975651.Spec : Prop :=
  ∀ n, P5335608706535975651.a n = A005073 (n + 1)

end A005073

/-! ## A005073.P6927052611473436158

`A005065(A170824(n+1))`
-/

namespace A005073.P6927052611473436158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A170824 (n + 1)).toNat

end

end A005073.P6927052611473436158

namespace A005073

/-- `A005065(A170824(n+1))` -/
def P6927052611473436158.Spec : Prop :=
  ∀ n, P6927052611473436158.a n = A005073 (n + 1)

end A005073

/-! ## A005073.P15348370180899336471

`A005065(A248909(n+1))`
-/

namespace A005073.P15348370180899336471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A248909 (n + 1)).toNat

end

end A005073.P15348370180899336471

namespace A005073

/-- `A005065(A248909(n+1))` -/
def P15348370180899336471.Spec : Prop :=
  ∀ n, P15348370180899336471.a n = A005073 (n + 1)

end A005073

/-! ## A005073.P1391883751406227905

`A005065(A005071(n+1)^A005088(n+1))`
-/

namespace A005073.P1391883751406227905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (SequenceMachineLib.roundAway ((A005071 (n + 1) : ℚ) ^ (A005088 (n + 1) : ℤ))).toNat

end

end A005073.P1391883751406227905

namespace A005073

/-- `A005065(A005071(n+1)^A005088(n+1))` -/
def P1391883751406227905.Spec : Prop :=
  ∀ n, P1391883751406227905.a n = A005073 (n + 1)

end A005073

/-! ## A005073.P1358857190700400574

`A005068(A005071(n+1)^A005088(n+1))`
-/

namespace A005073.P1358857190700400574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (SequenceMachineLib.roundAway ((A005071 (n + 1) : ℚ) ^ (A005088 (n + 1) : ℤ))).toNat

end

end A005073.P1358857190700400574

namespace A005073

/-- `A005068(A005071(n+1)^A005088(n+1))` -/
def P1358857190700400574.Spec : Prop :=
  ∀ n, P1358857190700400574.a n = A005073 (n + 1)

end A005073

/-! ## A005073.P13684512089243087373

`A005072(n+1)*A322445(n+1)`
-/

namespace A005073.P13684512089243087373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005072 (n + 1) * A322445 (n + 1)

end

end A005073.P13684512089243087373

namespace A005073

/-- `A005072(n+1)*A322445(n+1)` -/
def P13684512089243087373.Spec : Prop :=
  ∀ n, P13684512089243087373.a n = A005073 (n + 1)

end A005073

/-!
# A005074: Sum of primes = 2 mod 3 dividing n.

The programs for A005074, the canonical program `A005074.P9342362923832243696` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005074 has offset 1).

The definition of A005074 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005070, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005074.P9342362923832243696

`A008472(n+1)-A005070(n+1)-3*A079978(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005074

/-- `A008472(n+1)-A005070(n+1)-3*A079978(n+1)` -/
def P9342362923832243696.Spec : Prop :=
  ∀ n, P9342362923832243696.a n = A005074 (n + 1)

theorem P9342362923832243696.correct : P9342362923832243696.Spec := by
  intro n
  simp only [A005074, Nat.add_sub_cancel]

end A005074

/-! ## A005074.P10361092941164519827

`∑{p}[n+1, A078182(#)]`
-/

namespace A005074.P10361092941164519827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A078182 p

end

end A005074.P10361092941164519827

namespace A005074

/-- `∑{p}[n+1, A078182(#)]` -/
def P10361092941164519827.Spec : Prop :=
  ∀ n, P10361092941164519827.a n = A005074 (n + 1)

end A005074

/-! ## A005074.P3082363666060858660

`∑{p}[A343430(n+1), #]`
-/

namespace A005074.P3082363666060858660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005074.P3082363666060858660

namespace A005074

/-- `∑{p}[A343430(n+1), #]` -/
def P3082363666060858660.Spec : Prop :=
  ∀ n, (P3082363666060858660.a n : ℤ) = A005074 (n + 1)

end A005074

/-! ## A005074.P15261048500553851595

`∑{p}[n+1, sqrt(A005075(#))]`
-/

namespace A005074.P15261048500553851595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A005075 p : ℝ)

end

end A005074.P15261048500553851595

namespace A005074

/-- `∑{p}[n+1, sqrt(A005075(#))]` -/
def P15261048500553851595.Spec : Prop :=
  ∀ n, P15261048500553851595.a n = (A005074 (n + 1) : ℝ)

end A005074

/-! ## A005074.P10881599590508594830

`∑{p}[n+1, #*A131380(#)%2]`
-/

namespace A005074.P10881599590508594830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * Int.tmod (A131380 p) 2

end

end A005074.P10881599590508594830

namespace A005074

/-- `∑{p}[n+1, #*A131380(#)%2]` -/
def P10881599590508594830.Spec : Prop :=
  ∀ n, P10881599590508594830.a n = A005074 (n + 1)

end A005074

/-! ## A005074.P9781522186727331083

`∑{p}[n+1, #*(1-A189673(#+1))]`
-/

namespace A005074.P9781522186727331083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * (1 - A189673 (p + 1))

end

end A005074.P9781522186727331083

namespace A005074

/-- `∑{p}[n+1, #*(1-A189673(#+1))]` -/
def P9781522186727331083.Spec : Prop :=
  ∀ n, P9781522186727331083.a n = A005074 (n + 1)

end A005074

/-! ## A005074.P10905827886902297719

`A008472(A343430(n+1))`
-/

namespace A005074.P10905827886902297719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A343430 (n + 1)).toNat

end

end A005074.P10905827886902297719

namespace A005074

/-- `A008472(A343430(n+1))` -/
def P10905827886902297719.Spec : Prop :=
  ∀ n, P10905827886902297719.a n = A005074 (n + 1)

end A005074

/-! ## A005074.P14995646603654677700

`∑{p}[A132741(n+1)*A170825(n+1), #]`
-/

namespace A005074.P14995646603654677700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (n + 1) * A170825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005074.P14995646603654677700

namespace A005074

/-- `∑{p}[A132741(n+1)*A170825(n+1), #]` -/
def P14995646603654677700.Spec : Prop :=
  ∀ n, (P14995646603654677700.a n : ℤ) = A005074 (n + 1)

end A005074

/-! ## A005074.P3197418523371014437

`∑{p}[A038502((n+1)/A248909(n+1)), #]`
-/

namespace A005074.P3197418523371014437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A248909 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005074.P3197418523371014437

namespace A005074

/-- `∑{p}[A038502((n+1)/A248909(n+1)), #]` -/
def P3197418523371014437.Spec : Prop :=
  ∀ n, (P3197418523371014437.a n : ℤ) = A005074 (n + 1)

end A005074

/-! ## A005074.P8028544882721265339

`∑{p}[n+1, A293898(#²)]`
-/

namespace A005074.P8028544882721265339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A293898 (p ^ 2)

end

end A005074.P8028544882721265339

namespace A005074

/-- `∑{p}[n+1, A293898(#²)]` -/
def P8028544882721265339.Spec : Prop :=
  ∀ n, P8028544882721265339.a n = A005074 (n + 1)

end A005074

/-!
# A005075: Sum of squares of primes = 2 mod 3 dividing n.

The programs for A005075, the canonical program `A005075.P408257098076567385` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005075 has offset 1).

The definition of A005075 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005071, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005075.P408257098076567385

`A005063(n+1)-A005071(n+1)-9*A079978(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005075

/-- `A005063(n+1)-A005071(n+1)-9*A079978(n+1)` -/
def P408257098076567385.Spec : Prop :=
  ∀ n, P408257098076567385.a n = A005075 (n + 1)

theorem P408257098076567385.correct : P408257098076567385.Spec := by
  intro n
  simp only [A005075, Nat.add_sub_cancel]

end A005075

/-! ## A005075.P8600919409017888485

`∑{p}[n+1, A103638(#)]`
-/

namespace A005075.P8600919409017888485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A103638 p

end

end A005075.P8600919409017888485

namespace A005075

/-- `∑{p}[n+1, A103638(#)]` -/
def P8600919409017888485.Spec : Prop :=
  ∀ n, P8600919409017888485.a n = A005075 (n + 1)

end A005075

/-! ## A005075.P3501962773106503903

`∑{p}[n+1, A005074(#)²]`
-/

namespace A005075.P3501962773106503903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005074 p ^ 2

end

end A005075.P3501962773106503903

namespace A005075

/-- `∑{p}[n+1, A005074(#)²]` -/
def P3501962773106503903.Spec : Prop :=
  ∀ n, P3501962773106503903.a n = A005075 (n + 1)

end A005075

/-! ## A005075.P6399870444479383298

`∑{p}[n+1, A078182(#)²]`
-/

namespace A005075.P6399870444479383298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A078182 p ^ 2

end

end A005075.P6399870444479383298

namespace A005075

/-- `∑{p}[n+1, A078182(#)²]` -/
def P6399870444479383298.Spec : Prop :=
  ∀ n, P6399870444479383298.a n = A005075 (n + 1)

end A005075

/-! ## A005075.P2308612463221144337

`∑{p}[A343430(n+1), #²]`
-/

namespace A005075.P2308612463221144337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005075.P2308612463221144337

namespace A005075

/-- `∑{p}[A343430(n+1), #²]` -/
def P2308612463221144337.Spec : Prop :=
  ∀ n, (P2308612463221144337.a n : ℤ) = A005075 (n + 1)

end A005075

/-! ## A005075.P10467465893160763317

`∑{p}[n+1, sqrt(A005077(#))]`
-/

namespace A005075.P10467465893160763317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A005077 p : ℝ)

end

end A005075.P10467465893160763317

namespace A005075

/-- `∑{p}[n+1, sqrt(A005077(#))]` -/
def P10467465893160763317.Spec : Prop :=
  ∀ n, P10467465893160763317.a n = (A005075 (n + 1) : ℝ)

end A005075

/-! ## A005075.P1070908956577324954

`∑{p}[n+1, (#*A005090(#))²]`
-/

namespace A005075.P1070908956577324954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) * A005090 p) ^ 2

end

end A005075.P1070908956577324954

namespace A005075

/-- `∑{p}[n+1, (#*A005090(#))²]` -/
def P1070908956577324954.Spec : Prop :=
  ∀ n, P1070908956577324954.a n = A005075 (n + 1)

end A005075

/-! ## A005075.P1714491086784732764

`∑{p}[n+1, #*#*A189640(#+1)]`
-/

namespace A005075.P1714491086784732764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * ((p : ℤ) * A189640 (p + 1))

end

end A005075.P1714491086784732764

namespace A005075

/-- `∑{p}[n+1, #*#*A189640(#+1)]` -/
def P1714491086784732764.Spec : Prop :=
  ∀ n, P1714491086784732764.a n = A005075 (n + 1)

end A005075

/-! ## A005075.P15697093631084464350

`A005063(A343430(n+1))`
-/

namespace A005075.P15697093631084464350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A343430 (n + 1)).toNat

end

end A005075.P15697093631084464350

namespace A005075

/-- `A005063(A343430(n+1))` -/
def P15697093631084464350.Spec : Prop :=
  ∀ n, P15697093631084464350.a n = A005075 (n + 1)

end A005075

/-! ## A005075.P1469057522132886880

`∑{p}[n+1, (#*A113062(A113062(#)))²]`
-/

namespace A005075.P1469057522132886880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) * A113062 (A113062 p).toNat) ^ 2

end

end A005075.P1469057522132886880

namespace A005075

/-- `∑{p}[n+1, (#*A113062(A113062(#)))²]` -/
def P1469057522132886880.Spec : Prop :=
  ∀ n, P1469057522132886880.a n = A005075 (n + 1)

end A005075

/-! ## A005075.P16247174026309700994

`∑{p}[A132741(n+1)*A170825(n+1), #²]`
-/

namespace A005075.P16247174026309700994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (n + 1) * A170825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005075.P16247174026309700994

namespace A005075

/-- `∑{p}[A132741(n+1)*A170825(n+1), #²]` -/
def P16247174026309700994.Spec : Prop :=
  ∀ n, (P16247174026309700994.a n : ℤ) = A005075 (n + 1)

end A005075

/-! ## A005075.P8521789653411220732

`∑{p}[A038502(n+1)/A248909(n+1), #²]`
-/

namespace A005075.P8521789653411220732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038502 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p ^ 2

end

end A005075.P8521789653411220732

namespace A005075

/-- `∑{p}[A038502(n+1)/A248909(n+1), #²]` -/
def P8521789653411220732.Spec : Prop :=
  ∀ n, (P8521789653411220732.a n : ℤ) = A005075 (n + 1)

end A005075

/-!
# A005076: Sum of cubes of primes = 2 mod 3 dividing n.

The programs for A005076, the canonical program `A005076.P7083894196155953315` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005076 has offset 1).

The definition of A005076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005072, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005076.P7083894196155953315

`A005064(n+1)-A005072(n+1)-27*A079978(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005076

/-- `A005064(n+1)-A005072(n+1)-27*A079978(n+1)` -/
def P7083894196155953315.Spec : Prop :=
  ∀ n, P7083894196155953315.a n = A005076 (n + 1)

theorem P7083894196155953315.correct : P7083894196155953315.Spec := by
  intro n
  simp only [A005076, Nat.add_sub_cancel]

end A005076

/-! ## A005076.P16037481198790651681

`∑{p}[A343430(n+1), #*#²]`
-/

namespace A005076.P16037481198790651681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005076.P16037481198790651681

namespace A005076

/-- `∑{p}[A343430(n+1), #*#²]` -/
def P16037481198790651681.Spec : Prop :=
  ∀ n, (P16037481198790651681.a n : ℤ) = A005076 (n + 1)

end A005076

/-! ## A005076.P8891848959530345092

`A005064(A343430(n+1))`
-/

namespace A005076.P8891848959530345092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A343430 (n + 1)).toNat

end

end A005076.P8891848959530345092

namespace A005076

/-- `A005064(A343430(n+1))` -/
def P8891848959530345092.Spec : Prop :=
  ∀ n, P8891848959530345092.a n = A005076 (n + 1)

end A005076

/-! ## A005076.P11235346150362245853

`A005064(A000034(n)*A170825(n+1))`
-/

namespace A005076.P11235346150362245853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A000034 n * A170825 (n + 1)).toNat

end

end A005076.P11235346150362245853

namespace A005076

/-- `A005064(A000034(n)*A170825(n+1))` -/
def P11235346150362245853.Spec : Prop :=
  ∀ n, P11235346150362245853.a n = A005076 (n + 1)

end A005076

/-! ## A005076.P12335323844143366880

`A224787(A000034(n)*A170825(n+1))`
-/

namespace A005076.P12335323844143366880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (A000034 n * A170825 (n + 1)).toNat

end

end A005076.P12335323844143366880

namespace A005076

/-- `A224787(A000034(n)*A170825(n+1))` -/
def P12335323844143366880.Spec : Prop :=
  ∀ n, P12335323844143366880.a n = A005076 (n + 1)

end A005076

/-! ## A005076.P4461933525095019622

`A005064(lcm(A000034(n), A170825(n+1)))`
-/

namespace A005076.P4461933525095019622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (Int.lcm (A000034 n) (A170825 (n + 1)))

end

end A005076.P4461933525095019622

namespace A005076

/-- `A005064(lcm(A000034(n), A170825(n+1)))` -/
def P4461933525095019622.Spec : Prop :=
  ∀ n, P4461933525095019622.a n = A005076 (n + 1)

end A005076

/-! ## A005076.P2132931386269646673

`A005064(A038502(n+1))-A005072(n+1)`
-/

namespace A005076.P2132931386269646673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A038502 (n + 1)).toNat - A005072 (n + 1)

end

end A005076.P2132931386269646673

namespace A005076

/-- `A005064(A038502(n+1))-A005072(n+1)` -/
def P2132931386269646673.Spec : Prop :=
  ∀ n, P2132931386269646673.a n = A005076 (n + 1)

end A005076

/-! ## A005076.P14758103537215795865

`A005064(A038502(n+1)/A248909(n+1))`
-/

namespace A005076.P14758103537215795865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (SequenceMachineLib.roundAway ((A038502 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ))).toNat

end

end A005076.P14758103537215795865

namespace A005076

/-- `A005064(A038502(n+1)/A248909(n+1))` -/
def P14758103537215795865.Spec : Prop :=
  ∀ n, P14758103537215795865.a n = A005076 (n + 1)

end A005076

/-! ## A005076.P16172370158687206893

`A005064(A038502(n+1))-A005064(A248909(n+1)²)`
-/

namespace A005076.P16172370158687206893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A038502 (n + 1)).toNat - A005064 (A248909 (n + 1) ^ 2).toNat

end

end A005076.P16172370158687206893

namespace A005076

/-- `A005064(A038502(n+1))-A005064(A248909(n+1)²)` -/
def P16172370158687206893.Spec : Prop :=
  ∀ n, P16172370158687206893.a n = A005076 (n + 1)

end A005076

/-!
# A005077: Sum of 4th powers of primes = 2 mod 3 dividing n.

The programs for A005077, the canonical program `A005077.P2212048464589055495` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005077 has offset 1).

The definition of A005077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005073, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005077.P2212048464589055495

`A005065(n+1)-A005073(n+1)-81*A079978(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005077

/-- `A005065(n+1)-A005073(n+1)-81*A079978(n+1)` -/
def P2212048464589055495.Spec : Prop :=
  ∀ n, P2212048464589055495.a n = A005077 (n + 1)

theorem P2212048464589055495.correct : P2212048464589055495.Spec := by
  intro n
  simp only [A005077, Nat.add_sub_cancel]

end A005077

/-! ## A005077.P5899432689193163448

`∑{p}[n+1, A005075(#)²]`
-/

namespace A005077.P5899432689193163448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005075 p ^ 2

end

end A005077.P5899432689193163448

namespace A005077

/-- `∑{p}[n+1, A005075(#)²]` -/
def P5899432689193163448.Spec : Prop :=
  ∀ n, P5899432689193163448.a n = A005077 (n + 1)

end A005077

/-! ## A005077.P5188832908079694728

`∑{p}[n+1, A078182(#)²²]`
-/

namespace A005077.P5188832908079694728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A078182 p ^ 2) ^ 2

end

end A005077.P5188832908079694728

namespace A005077

/-- `∑{p}[n+1, A078182(#)²²]` -/
def P5188832908079694728.Spec : Prop :=
  ∀ n, P5188832908079694728.a n = A005077 (n + 1)

end A005077

/-! ## A005077.P1693491631231586823

`∑{p}[A343430(n+1), #²²]`
-/

namespace A005077.P1693491631231586823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005077.P1693491631231586823

namespace A005077

/-- `∑{p}[A343430(n+1), #²²]` -/
def P1693491631231586823.Spec : Prop :=
  ∀ n, (P1693491631231586823.a n : ℤ) = A005077 (n + 1)

end A005077

/-! ## A005077.P11484098294065362779

`∑{p}[n+1, (#*A005090(#))²²]`
-/

namespace A005077.P11484098294065362779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (((p : ℤ) * A005090 p) ^ 2) ^ 2

end

end A005077.P11484098294065362779

namespace A005077

/-- `∑{p}[n+1, (#*A005090(#))²²]` -/
def P11484098294065362779.Spec : Prop :=
  ∀ n, P11484098294065362779.a n = A005077 (n + 1)

end A005077

/-! ## A005077.P17591890003620616545

`A005065(A343430(n+1))`
-/

namespace A005077.P17591890003620616545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A343430 (n + 1)).toNat

end

end A005077.P17591890003620616545

namespace A005077

/-- `A005065(A343430(n+1))` -/
def P17591890003620616545.Spec : Prop :=
  ∀ n, P17591890003620616545.a n = A005077 (n + 1)

end A005077

/-! ## A005077.P13455876561187149372

`A005065(A038502(n+1))-A005073(n+1)`
-/

namespace A005077.P13455876561187149372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A038502 (n + 1)).toNat - A005073 (n + 1)

end

end A005077.P13455876561187149372

namespace A005077

/-- `A005065(A038502(n+1))-A005073(n+1)` -/
def P13455876561187149372.Spec : Prop :=
  ∀ n, P13455876561187149372.a n = A005077 (n + 1)

end A005077

/-! ## A005077.P9443291672042863930

`A005065(A038502(n+1)/A248909(n+1))`
-/

namespace A005077.P9443291672042863930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (SequenceMachineLib.roundAway ((A038502 (n + 1) : ℚ) / (A248909 (n + 1) : ℚ))).toNat

end

end A005077.P9443291672042863930

namespace A005077

/-- `A005065(A038502(n+1)/A248909(n+1))` -/
def P9443291672042863930.Spec : Prop :=
  ∀ n, P9443291672042863930.a n = A005077 (n + 1)

end A005077

/-! ## A005077.P2839352307203645570

`A005065(A038502(n+1))-A005065(A248909(n+1)²)`
-/

namespace A005077.P2839352307203645570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A038502 (n + 1)).toNat - A005065 (A248909 (n + 1) ^ 2).toNat

end

end A005077.P2839352307203645570

namespace A005077

/-- `A005065(A038502(n+1))-A005065(A248909(n+1)²)` -/
def P2839352307203645570.Spec : Prop :=
  ∀ n, P2839352307203645570.a n = A005077 (n + 1)

end A005077

/-!
# A005078: Sum of primes = 1 mod 4 dividing n.

The programs for A005078, the canonical program `A005078.P3775666566695567279` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005078 has offset 1).

The definition of A005078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005082, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005078.P3775666566695567279

`A008472(n+1)-A005082(n+1)-2*A059841(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005078

/-- `A008472(n+1)-A005082(n+1)-2*A059841(n+1)` -/
def P3775666566695567279.Spec : Prop :=
  ∀ n, P3775666566695567279.a n = A005078 (n + 1)

theorem P3775666566695567279.correct : P3775666566695567279.Spec := by
  intro n
  simp only [A005078, Nat.add_sub_cancel]

end A005078

/-! ## A005078.P8398649102456368991

`∑{p}[n+1, #%or(2, #)]`
-/

namespace A005078.P8398649102456368991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p % Nat.lor 2 p

end

end A005078.P8398649102456368991

namespace A005078

/-- `∑{p}[n+1, #%or(2, #)]` -/
def P8398649102456368991.Spec : Prop :=
  ∀ n, (P8398649102456368991.a n : ℤ) = A005078 (n + 1)

end A005078

/-! ## A005078.P11594207461563413557

`∑{p}[A170818(n+1), #]`
-/

namespace A005078.P11594207461563413557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005078.P11594207461563413557

namespace A005078

/-- `∑{p}[A170818(n+1), #]` -/
def P11594207461563413557.Spec : Prop :=
  ∀ n, (P11594207461563413557.a n : ℤ) = A005078 (n + 1)

end A005078

/-! ## A005078.P740695981376468419

`∑{d}[n+1, #*A079260(#)]`
-/

namespace A005078.P740695981376468419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079260 d

end

end A005078.P740695981376468419

namespace A005078

/-- `∑{d}[n+1, #*A079260(#)]` -/
def P740695981376468419.Spec : Prop :=
  ∀ n, P740695981376468419.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P10123932270033689199

`∑{p}[∏{p}[n+1, gcd(#, A000010(#)%4)], #]`
-/

namespace A005078.P10123932270033689199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Int.gcd (p : ℤ) (Int.tmod (A000010 p) 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A005078.P10123932270033689199

namespace A005078

/-- `∑{p}[∏{p}[n+1, gcd(#, A000010(#)%4)], #]` -/
def P10123932270033689199.Spec : Prop :=
  ∀ n, (P10123932270033689199.a n : ℤ) = A005078 (n + 1)

end A005078

/-! ## A005078.P45242131558499998

`A005069(A072436(n+1))`
-/

namespace A005078.P45242131558499998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A072436 (n + 1)).toNat

end

end A005078.P45242131558499998

namespace A005078

/-- `A005069(A072436(n+1))` -/
def P45242131558499998.Spec : Prop :=
  ∀ n, P45242131558499998.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P1141410211097922187

`A005069(A170818(n+1))`
-/

namespace A005078.P1141410211097922187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A170818 (n + 1)).toNat

end

end A005078.P1141410211097922187

namespace A005078

/-- `A005069(A170818(n+1))` -/
def P1141410211097922187.Spec : Prop :=
  ∀ n, P1141410211097922187.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P4965326954953829244

`A005069(n+1)-A005082(n+1)`
-/

namespace A005078.P4965326954953829244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) - A005082 (n + 1)

end

end A005078.P4965326954953829244

namespace A005078

/-- `A005069(n+1)-A005082(n+1)` -/
def P4965326954953829244.Spec : Prop :=
  ∀ n, P4965326954953829244.a n = A005078 (n + 1)

theorem P4965326954953829244.correct : P4965326954953829244.Spec := by
  intro n
  simp only [A005078, Nat.add_sub_cancel, A005078.P4965326954953829244.a, A005078.P3775666566695567279.a, A005069, A005069.P14103743043716433580.a, A005082, A005082.P12614618452362307440.f2, A005082.P12614618452362307440.f1, A005082.P12614618452362307440.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005078

/-! ## A005078.P12720847137434147051

`A005069((n+1)/A072438(n+1))`
-/

namespace A005078.P12720847137434147051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A005078.P12720847137434147051

namespace A005078

/-- `A005069((n+1)/A072438(n+1))` -/
def P12720847137434147051.Spec : Prop :=
  ∀ n, P12720847137434147051.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P8626312276802301911

`A005069((n+1)/A097706(n+1))`
-/

namespace A005078.P8626312276802301911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A097706 (n + 1) : ℚ))).toNat

end

end A005078.P8626312276802301911

namespace A005078

/-- `A005069((n+1)/A097706(n+1))` -/
def P8626312276802301911.Spec : Prop :=
  ∀ n, P8626312276802301911.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P11966894742313548429

`A005069(n+1)-A005069(A072438(n+1))`
-/

namespace A005078.P11966894742313548429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) - A005069 (A072438 (n + 1)).toNat

end

end A005078.P11966894742313548429

namespace A005078

/-- `A005069(n+1)-A005069(A072438(n+1))` -/
def P11966894742313548429.Spec : Prop :=
  ∀ n, P11966894742313548429.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P15788032259195480436

`A005069(n+1)-A005069(A097706(n+1))`
-/

namespace A005078.P15788032259195480436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) - A005069 (A097706 (n + 1)).toNat

end

end A005078.P15788032259195480436

namespace A005078

/-- `A005069(n+1)-A005069(A097706(n+1))` -/
def P15788032259195480436.Spec : Prop :=
  ∀ n, P15788032259195480436.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P12988577824890102083

`∑{p}[A072436(2*(n+1)), #]-2`
-/

namespace A005078.P12988577824890102083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - 2

end

end A005078.P12988577824890102083

namespace A005078

/-- `∑{p}[A072436(2*(n+1)), #]-2` -/
def P12988577824890102083.Spec : Prop :=
  ∀ n, P12988577824890102083.a n = A005078 (n + 1)

end A005078

/-! ## A005078.P7329005817312529578

`∑{p}[A170817(n+1), #]`
-/

namespace A005078.P7329005817312529578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005078.P7329005817312529578

namespace A005078

/-- `∑{p}[A170817(n+1), #]` -/
def P7329005817312529578.Spec : Prop :=
  ∀ n, (P7329005817312529578.a n : ℤ) = A005078 (n + 1)

end A005078

/-! ## A005078.P11545609429930041103

`A001414(A170817(n+1))`
-/

namespace A005078.P11545609429930041103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A170817 (n + 1)).toNat

end

end A005078.P11545609429930041103

namespace A005078

/-- `A001414(A170817(n+1))` -/
def P11545609429930041103.Spec : Prop :=
  ∀ n, P11545609429930041103.a n = A005078 (n + 1)

end A005078

/-!
# A005079: Sum of squares of primes = 1 mod 4 dividing n.

The programs for A005079, the canonical program `A005079.P14688691070374291588` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005079 has offset 1).

The definition of A005079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005079.P17527097549294736130

`A005063(n+1)-A005083(n+1)-4*A059841(n+1)`
-/

namespace A005079.P17527097549294736130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (n + 1) - A005083 (n + 1) - 4 * A059841 (n + 1)

end

end A005079.P17527097549294736130

namespace A005079

/-- `A005063(n+1)-A005083(n+1)-4*A059841(n+1)` -/
def P17527097549294736130.Spec : Prop :=
  ∀ n, P17527097549294736130.a n = A005079 (n + 1)

theorem P17527097549294736130.correct : P17527097549294736130.Spec := by
  intro n
  simp only [A005079, Nat.add_sub_cancel, A005079.P17527097549294736130.a, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005083, A005083.P12060761291276031228.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005079

/-! ## A005079.P14688691070374291588

`∑{p}[n+1, (#%or(2, #))²]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005079

/-- `∑{p}[n+1, (#%or(2, #))²]` -/
def P14688691070374291588.Spec : Prop :=
  ∀ n, (P14688691070374291588.a n : ℤ) = A005079 (n + 1)

theorem P14688691070374291588.correct : P14688691070374291588.Spec := by
  intro n
  simp only [A005079, Nat.add_sub_cancel]

end A005079

/-! ## A005079.P3587768297375312482

`∑{p}[A170818(n+1), #²]`
-/

namespace A005079.P3587768297375312482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005079.P3587768297375312482

namespace A005079

/-- `∑{p}[A170818(n+1), #²]` -/
def P3587768297375312482.Spec : Prop :=
  ∀ n, (P3587768297375312482.a n : ℤ) = A005079 (n + 1)

end A005079

/-! ## A005079.P17456954378420890245

`∑{p}[n+1, A326050(#)²]`
-/

namespace A005079.P17456954378420890245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A326050 p ^ 2

end

end A005079.P17456954378420890245

namespace A005079

/-- `∑{p}[n+1, A326050(#)²]` -/
def P17456954378420890245.Spec : Prop :=
  ∀ n, P17456954378420890245.a n = A005079 (n + 1)

end A005079

/-! ## A005079.P9494634511914984326

`A005066(A072436(n+1))`
-/

namespace A005079.P9494634511914984326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (A072436 (n + 1)).toNat

end

end A005079.P9494634511914984326

namespace A005079

/-- `A005066(A072436(n+1))` -/
def P9494634511914984326.Spec : Prop :=
  ∀ n, P9494634511914984326.a n = A005079 (n + 1)

end A005079

/-! ## A005079.P16094372545994506288

`A005063(A170818(n+1))`
-/

namespace A005079.P16094372545994506288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A170818 (n + 1)).toNat

end

end A005079.P16094372545994506288

namespace A005079

/-- `A005063(A170818(n+1))` -/
def P16094372545994506288.Spec : Prop :=
  ∀ n, P16094372545994506288.a n = A005079 (n + 1)

end A005079

/-! ## A005079.P5421752297907341560

`A005066(n+1)-A005083(n+1)`
-/

namespace A005079.P5421752297907341560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (n + 1) - A005083 (n + 1)

end

end A005079.P5421752297907341560

namespace A005079

/-- `A005066(n+1)-A005083(n+1)` -/
def P5421752297907341560.Spec : Prop :=
  ∀ n, P5421752297907341560.a n = A005079 (n + 1)

theorem P5421752297907341560.correct : P5421752297907341560.Spec := by
  intro n
  simp only [A005079, Nat.add_sub_cancel, A005079.P5421752297907341560.a, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A005066, A005066.P399766481183112072.a, A005083, A005083.P12060761291276031228.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005079

/-! ## A005079.P4327267746601681260

`A005066((n+1)/A072438(n+1))`
-/

namespace A005079.P4327267746601681260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A005079.P4327267746601681260

namespace A005079

/-- `A005066((n+1)/A072438(n+1))` -/
def P4327267746601681260.Spec : Prop :=
  ∀ n, P4327267746601681260.a n = A005079 (n + 1)

end A005079

/-! ## A005079.P15141990069276991586

`A005066(n+1)-A005066(A072438(n+1))`
-/

namespace A005079.P15141990069276991586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (n + 1) - A005066 (A072438 (n + 1)).toNat

end

end A005079.P15141990069276991586

namespace A005079

/-- `A005066(n+1)-A005066(A072438(n+1))` -/
def P15141990069276991586.Spec : Prop :=
  ∀ n, P15141990069276991586.a n = A005079 (n + 1)

end A005079

/-! ## A005079.P15027012243911257565

`∑{p}[A170817(n+1), #²]`
-/

namespace A005079.P15027012243911257565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005079.P15027012243911257565

namespace A005079

/-- `∑{p}[A170817(n+1), #²]` -/
def P15027012243911257565.Spec : Prop :=
  ∀ n, (P15027012243911257565.a n : ℤ) = A005079 (n + 1)

end A005079

/-! ## A005079.P14276796155584920060

`A005063(A170817(n+1))`
-/

namespace A005079.P14276796155584920060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A170817 (n + 1)).toNat

end

end A005079.P14276796155584920060

namespace A005079

/-- `A005063(A170817(n+1))` -/
def P14276796155584920060.Spec : Prop :=
  ∀ n, P14276796155584920060.a n = A005079 (n + 1)

end A005079

/-!
# A005080: Sum of cubes of primes = 1 mod 4 dividing n.

The programs for A005080, the canonical program `A005080.P9273284340090812152` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005080 has offset 1).

The definition of A005080 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005064, A005084, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005080.P9273284340090812152

`A005064(n+1)-A005084(n+1)-8*A059841(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A005080

/-- `A005064(n+1)-A005084(n+1)-8*A059841(n+1)` -/
def P9273284340090812152.Spec : Prop :=
  ∀ n, P9273284340090812152.a n = A005080 (n + 1)

theorem P9273284340090812152.correct : P9273284340090812152.Spec := by
  intro n
  simp only [A005080, Nat.add_sub_cancel]

end A005080

/-! ## A005080.P16318427772195766029

`∑{p}[A170818(n+1), #*#²]`
-/

namespace A005080.P16318427772195766029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005080.P16318427772195766029

namespace A005080

/-- `∑{p}[A170818(n+1), #*#²]` -/
def P16318427772195766029.Spec : Prop :=
  ∀ n, (P16318427772195766029.a n : ℤ) = A005080 (n + 1)

end A005080

/-! ## A005080.P5364761352847041211

`A005067(A072436(n+1))`
-/

namespace A005080.P5364761352847041211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (A072436 (n + 1)).toNat

end

end A005080.P5364761352847041211

namespace A005080

/-- `A005067(A072436(n+1))` -/
def P5364761352847041211.Spec : Prop :=
  ∀ n, P5364761352847041211.a n = A005080 (n + 1)

end A005080

/-! ## A005080.P5217796273897356097

`A005064(A170818(n+1))`
-/

namespace A005080.P5217796273897356097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A170818 (n + 1)).toNat

end

end A005080.P5217796273897356097

namespace A005080

/-- `A005064(A170818(n+1))` -/
def P5217796273897356097.Spec : Prop :=
  ∀ n, P5217796273897356097.a n = A005080 (n + 1)

end A005080

/-! ## A005080.P18153420546656100569

`A005067(n+1)-A005084(n+1)`
-/

namespace A005080.P18153420546656100569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) - A005084 (n + 1)

end

end A005080.P18153420546656100569

namespace A005080

/-- `A005067(n+1)-A005084(n+1)` -/
def P18153420546656100569.Spec : Prop :=
  ∀ n, P18153420546656100569.a n = A005080 (n + 1)

theorem P18153420546656100569.correct : P18153420546656100569.Spec := by
  intro n
  simp only [A005080, Nat.add_sub_cancel, A005080.P18153420546656100569.a, A005080.P9273284340090812152.a, A005064, A005064.P4705532925960423919.a, A005067, A005067.P16153284212930227781.f1, A005067.P16153284212930227781.a, A005084, A005084.P8221435788932631472.f1, A005084.P8221435788932631472.a, A059841, A059841.P2666504972441551157.a, A005083, A005083.P12060761291276031228.a, A303972, A303972.P11388176725645930891.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005080

/-! ## A005080.P7984778182328550266

`A005067((n+1)/A072438(n+1))`
-/

namespace A005080.P7984778182328550266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A005080.P7984778182328550266

namespace A005080

/-- `A005067((n+1)/A072438(n+1))` -/
def P7984778182328550266.Spec : Prop :=
  ∀ n, P7984778182328550266.a n = A005080 (n + 1)

end A005080

/-! ## A005080.P2109818896839881198

`A005067(n+1)-A005067(A072438(n+1))`
-/

namespace A005080.P2109818896839881198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) - A005067 (A072438 (n + 1)).toNat

end

end A005080.P2109818896839881198

namespace A005080

/-- `A005067(n+1)-A005067(A072438(n+1))` -/
def P2109818896839881198.Spec : Prop :=
  ∀ n, P2109818896839881198.a n = A005080 (n + 1)

end A005080

/-! ## A005080.P15825488507339536645

`A005064(A028234(2*(n+1)))-A005084(n+1)`
-/

namespace A005080.P15825488507339536645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A028234 (2 * (n + 1))).toNat - A005084 (n + 1)

end

end A005080.P15825488507339536645

namespace A005080

/-- `A005064(A028234(2*(n+1)))-A005084(n+1)` -/
def P15825488507339536645.Spec : Prop :=
  ∀ n, P15825488507339536645.a n = A005080 (n + 1)

end A005080

/-! ## A005080.P16446749417271419017

`∑{p}[A170817(n+1), #*#²]`
-/

namespace A005080.P16446749417271419017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005080.P16446749417271419017

namespace A005080

/-- `∑{p}[A170817(n+1), #*#²]` -/
def P16446749417271419017.Spec : Prop :=
  ∀ n, (P16446749417271419017.a n : ℤ) = A005080 (n + 1)

end A005080

/-! ## A005080.P597058398272777146

`A005064(A170817(n+1))`
-/

namespace A005080.P597058398272777146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A170817 (n + 1)).toNat

end

end A005080.P597058398272777146

namespace A005080

/-- `A005064(A170817(n+1))` -/
def P597058398272777146.Spec : Prop :=
  ∀ n, P597058398272777146.a n = A005080 (n + 1)

end A005080

/-!
# A005081: Sum of 4th powers of primes = 1 mod 4 dividing n.

The programs for A005081, the canonical program `A005081.P3663982266665043880` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005081 has offset 1).

The definition of A005081 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005065, A005085, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005081.P3663982266665043880

`A005065(n+1)-A005085(n+1)-16*A059841(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A005081

/-- `A005065(n+1)-A005085(n+1)-16*A059841(n+1)` -/
def P3663982266665043880.Spec : Prop :=
  ∀ n, P3663982266665043880.a n = A005081 (n + 1)

theorem P3663982266665043880.correct : P3663982266665043880.Spec := by
  intro n
  simp only [A005081, Nat.add_sub_cancel]

end A005081

/-! ## A005081.P17771941896092914504

`∑{p}[A170818(n+1), #²²]`
-/

namespace A005081.P17771941896092914504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005081.P17771941896092914504

namespace A005081

/-- `∑{p}[A170818(n+1), #²²]` -/
def P17771941896092914504.Spec : Prop :=
  ∀ n, (P17771941896092914504.a n : ℤ) = A005081 (n + 1)

end A005081

/-! ## A005081.P11869963241616761130

`A005068(A072436(n+1))`
-/

namespace A005081.P11869963241616761130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (A072436 (n + 1)).toNat

end

end A005081.P11869963241616761130

namespace A005081

/-- `A005068(A072436(n+1))` -/
def P11869963241616761130.Spec : Prop :=
  ∀ n, P11869963241616761130.a n = A005081 (n + 1)

end A005081

/-! ## A005081.P6307829361425107696

`A005065(A170818(n+1))`
-/

namespace A005081.P6307829361425107696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A170818 (n + 1)).toNat

end

end A005081.P6307829361425107696

namespace A005081

/-- `A005065(A170818(n+1))` -/
def P6307829361425107696.Spec : Prop :=
  ∀ n, P6307829361425107696.a n = A005081 (n + 1)

end A005081

/-! ## A005081.P3775346567522156883

`A005068(n+1)-A005085(n+1)`
-/

namespace A005081.P3775346567522156883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (n + 1) - A005085 (n + 1)

end

end A005081.P3775346567522156883

namespace A005081

/-- `A005068(n+1)-A005085(n+1)` -/
def P3775346567522156883.Spec : Prop :=
  ∀ n, P3775346567522156883.a n = A005081 (n + 1)

theorem P3775346567522156883.correct : P3775346567522156883.Spec := by
  intro n
  simp only [A005081, Nat.add_sub_cancel, A005081.P3775346567522156883.a, A005081.P3663982266665043880.a, A005065, A005065.P10018668116522335289.a, A005068, A005068.P275356790973680025.f1, A005068.P275356790973680025.a, A005085, A005085.P17408966888142263945.f1, A005085.P17408966888142263945.a, A059841, A059841.P2666504972441551157.a, A005083, A005083.P12060761291276031228.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005081

/-! ## A005081.P6832940339079992158

`A005068((n+1)/A072438(n+1))`
-/

namespace A005081.P6832940339079992158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072438 (n + 1) : ℚ))).toNat

end

end A005081.P6832940339079992158

namespace A005081

/-- `A005068((n+1)/A072438(n+1))` -/
def P6832940339079992158.Spec : Prop :=
  ∀ n, P6832940339079992158.a n = A005081 (n + 1)

end A005081

/-! ## A005081.P6504722281860979639

`A005068(n+1)-A005068(A072438(n+1))`
-/

namespace A005081.P6504722281860979639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (n + 1) - A005068 (A072438 (n + 1)).toNat

end

end A005081.P6504722281860979639

namespace A005081

/-- `A005068(n+1)-A005068(A072438(n+1))` -/
def P6504722281860979639.Spec : Prop :=
  ∀ n, P6504722281860979639.a n = A005081 (n + 1)

end A005081

/-! ## A005081.P16123302373849762573

`∑{p}[A170817(n+1), #²²]`
-/

namespace A005081.P16123302373849762573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005081.P16123302373849762573

namespace A005081

/-- `∑{p}[A170817(n+1), #²²]` -/
def P16123302373849762573.Spec : Prop :=
  ∀ n, (P16123302373849762573.a n : ℤ) = A005081 (n + 1)

end A005081

/-! ## A005081.P4857935417159355435

`A005065(A170817(n+1))`
-/

namespace A005081.P4857935417159355435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A170817 (n + 1)).toNat

end

end A005081.P4857935417159355435

namespace A005081

/-- `A005065(A170817(n+1))` -/
def P4857935417159355435.Spec : Prop :=
  ∀ n, P4857935417159355435.a n = A005081 (n + 1)

end A005081

/-! ## A005081.P1291758327501562718

`A005065(A005079(n+1)^A005089(n+1))`
-/

namespace A005081.P1291758327501562718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (SequenceMachineLib.roundAway ((A005079 (n + 1) : ℚ) ^ (A005089 (n + 1) : ℤ))).toNat

end

end A005081.P1291758327501562718

namespace A005081

/-- `A005065(A005079(n+1)^A005089(n+1))` -/
def P1291758327501562718.Spec : Prop :=
  ∀ n, P1291758327501562718.a n = A005081 (n + 1)

end A005081

/-!
# A005082: Sum of primes = 3 mod 4 dividing n.

The programs for A005082, the canonical program `A005082.P12614618452362307440` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005082 has offset 1).

The definition of A005082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005082.P2454803520166297781

`A008472(n+1)-A005078(n+1)-2*A059841(n+1)`
-/

namespace A005082.P2454803520166297781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A005078 (n + 1) - 2 * A059841 (n + 1)

end

end A005082.P2454803520166297781

namespace A005082

/-- `A008472(n+1)-A005078(n+1)-2*A059841(n+1)` -/
def P2454803520166297781.Spec : Prop :=
  ∀ n, P2454803520166297781.a n = A005082 (n + 1)

theorem P2454803520166297781.correct : P2454803520166297781.Spec := by
  intro n
  simp only [A005082, Nat.add_sub_cancel, A005082.P2454803520166297781.a, A005082.P12614618452362307440.f2, A005082.P12614618452362307440.f1, A005082.P12614618452362307440.a, A005078, A005078.P3775666566695567279.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005082

/-! ## A005082.P12614618452362307440

`∑{p}[∏{p}[n+1, gcd(#, or(3, #))], #]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005082

/-- `∑{p}[∏{p}[n+1, gcd(#, or(3, #))], #]` -/
def P12614618452362307440.Spec : Prop :=
  ∀ n, (P12614618452362307440.a n : ℤ) = A005082 (n + 1)

theorem P12614618452362307440.correct : P12614618452362307440.Spec := by
  intro n
  simp only [A005082, Nat.add_sub_cancel]

end A005082

/-! ## A005082.P10111030261502809527

`∑{p}[n+1, A050452(#)]`
-/

namespace A005082.P10111030261502809527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050452 p

end

end A005082.P10111030261502809527

namespace A005082

/-- `∑{p}[n+1, A050452(#)]` -/
def P10111030261502809527.Spec : Prop :=
  ∀ n, P10111030261502809527.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P9950180039930404301

`∑{p}[A097706(n+1), #]`
-/

namespace A005082.P9950180039930404301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005082.P9950180039930404301

namespace A005082

/-- `∑{p}[A097706(n+1), #]` -/
def P9950180039930404301.Spec : Prop :=
  ∀ n, (P9950180039930404301.a n : ℤ) = A005082 (n + 1)

end A005082

/-! ## A005082.P3517598694714923731

`∑{p}[A170819(n+1), #]`
-/

namespace A005082.P3517598694714923731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A005082.P3517598694714923731

namespace A005082

/-- `∑{p}[A170819(n+1), #]` -/
def P3517598694714923731.Spec : Prop :=
  ∀ n, (P3517598694714923731.a n : ℤ) = A005082 (n + 1)

end A005082

/-! ## A005082.P18220751868037789421

`∑{p}[n+1, sqrt(A005083(#))]`
-/

namespace A005082.P18220751868037789421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A005083 p : ℝ)

end

end A005082.P18220751868037789421

namespace A005082

/-- `∑{p}[n+1, sqrt(A005083(#))]` -/
def P18220751868037789421.Spec : Prop :=
  ∀ n, P18220751868037789421.a n = (A005082 (n + 1) : ℝ)

end A005082

/-! ## A005082.P17584188853491150422

`∑{p}[n+1, sqrt(A050453(#))]`
-/

namespace A005082.P17584188853491150422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A050453 p : ℝ)

end

end A005082.P17584188853491150422

namespace A005082

/-- `∑{p}[n+1, sqrt(A050453(#))]` -/
def P17584188853491150422.Spec : Prop :=
  ∀ n, P17584188853491150422.a n = (A005082 (n + 1) : ℝ)

end A005082

/-! ## A005082.P4935799532720390586

`∑{d}[n+1, #*A079261(#)]`
-/

namespace A005082.P4935799532720390586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079261 d

end

end A005082.P4935799532720390586

namespace A005082

/-- `∑{d}[n+1, #*A079261(#)]` -/
def P4935799532720390586.Spec : Prop :=
  ∀ n, P4935799532720390586.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P4768811147518849277

`∑{p}[(n+1)/A072436(n+1), #]`
-/

namespace A005082.P4768811147518849277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072436 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A005082.P4768811147518849277

namespace A005082

/-- `∑{p}[(n+1)/A072436(n+1), #]` -/
def P4768811147518849277.Spec : Prop :=
  ∀ n, (P4768811147518849277.a n : ℤ) = A005082 (n + 1)

end A005082

/-! ## A005082.P4518600194735393039

`∑{p}[n+1, C(#, or(2, A000010(#)))]`
-/

namespace A005082.P4518600194735393039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (Int.lor 2 (A000010 p)).toNat

end

end A005082.P4518600194735393039

namespace A005082

/-- `∑{p}[n+1, C(#, or(2, A000010(#)))]` -/
def P4518600194735393039.Spec : Prop :=
  ∀ n, (P4518600194735393039.a n : ℤ) = A005082 (n + 1)

end A005082

/-! ## A005082.P13450760576753966574

`A005069(A072438(n+1))`
-/

namespace A005082.P13450760576753966574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A072438 (n + 1)).toNat

end

end A005082.P13450760576753966574

namespace A005082

/-- `A005069(A072438(n+1))` -/
def P13450760576753966574.Spec : Prop :=
  ∀ n, P13450760576753966574.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P4742484598169103393

`A005069(A097706(n+1))`
-/

namespace A005082.P4742484598169103393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (A097706 (n + 1)).toNat

end

end A005082.P4742484598169103393

namespace A005082

/-- `A005069(A097706(n+1))` -/
def P4742484598169103393.Spec : Prop :=
  ∀ n, P4742484598169103393.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P14538780901825941618

`A001414(A170819(n+1))`
-/

namespace A005082.P14538780901825941618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A170819 (n + 1)).toNat

end

end A005082.P14538780901825941618

namespace A005082

/-- `A001414(A170819(n+1))` -/
def P14538780901825941618.Spec : Prop :=
  ∀ n, P14538780901825941618.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P14592194774647688729

`A005069(n+1)-A005078(n+1)`
-/

namespace A005082.P14592194774647688729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) - A005078 (n + 1)

end

end A005082.P14592194774647688729

namespace A005082

/-- `A005069(n+1)-A005078(n+1)` -/
def P14592194774647688729.Spec : Prop :=
  ∀ n, P14592194774647688729.a n = A005082 (n + 1)

theorem P14592194774647688729.correct : P14592194774647688729.Spec := by
  intro n
  simp only [A005082, Nat.add_sub_cancel, A005082.P14592194774647688729.a, A005082.P12614618452362307440.f2, A005082.P12614618452362307440.f1, A005082.P12614618452362307440.a, A005069, A005069.P14103743043716433580.a, A005078, A005078.P3775666566695567279.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005082

/-! ## A005082.P2739233433482507292

`A005069((n+1)/A072436(n+1))`
-/

namespace A005082.P2739233433482507292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A005082.P2739233433482507292

namespace A005082

/-- `A005069((n+1)/A072436(n+1))` -/
def P2739233433482507292.Spec : Prop :=
  ∀ n, P2739233433482507292.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P15258771336927445480

`A005069((n+1)/A170818(n+1))`
-/

namespace A005082.P15258771336927445480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A170818 (n + 1) : ℚ))).toNat

end

end A005082.P15258771336927445480

namespace A005082

/-- `A005069((n+1)/A170818(n+1))` -/
def P15258771336927445480.Spec : Prop :=
  ∀ n, P15258771336927445480.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P17322423420386584231

`A005069(n+1)-A005069(A072436(n+1))`
-/

namespace A005082.P17322423420386584231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) - A005069 (A072436 (n + 1)).toNat

end

end A005082.P17322423420386584231

namespace A005082

/-- `A005069(n+1)-A005069(A072436(n+1))` -/
def P17322423420386584231.Spec : Prop :=
  ∀ n, P17322423420386584231.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P15315736257578466544

`A005069(n+1)-A005069(A170818(n+1))`
-/

namespace A005082.P15315736257578466544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) - A005069 (A170818 (n + 1)).toNat

end

end A005082.P15315736257578466544

namespace A005082

/-- `A005069(n+1)-A005069(A170818(n+1))` -/
def P15315736257578466544.Spec : Prop :=
  ∀ n, P15315736257578466544.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P11676148338209176181

`∑{p}[A170818(A267099(n+1)), A267099(#)]`
-/

namespace A005082.P11676148338209176181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (A267099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A267099 p

end

end A005082.P11676148338209176181

namespace A005082

/-- `∑{p}[A170818(A267099(n+1)), A267099(#)]` -/
def P11676148338209176181.Spec : Prop :=
  ∀ n, P11676148338209176181.a n = A005082 (n + 1)

end A005082

/-! ## A005082.P8457149363345043168

`∑{p}[n+1, A293903(#²)]`
-/

namespace A005082.P8457149363345043168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A293903 (p ^ 2)

end

end A005082.P8457149363345043168

namespace A005082

/-- `∑{p}[n+1, A293903(#²)]` -/
def P8457149363345043168.Spec : Prop :=
  ∀ n, P8457149363345043168.a n = A005082 (n + 1)

end A005082

/-!
# A005083: Sum of squares of primes = 3 mod 4 dividing n.

The programs for A005083, the canonical program `A005083.P12060761291276031228` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005083 has offset 1).

The definition of A005083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, A005079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005083.P12060761291276031228

`A005063(n+1)-A005079(n+1)-4*A059841(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005083

/-- `A005063(n+1)-A005079(n+1)-4*A059841(n+1)` -/
def P12060761291276031228.Spec : Prop :=
  ∀ n, P12060761291276031228.a n = A005083 (n + 1)

theorem P12060761291276031228.correct : P12060761291276031228.Spec := by
  intro n
  simp only [A005083, Nat.add_sub_cancel]

end A005083

/-! ## A005083.P13521851069831838312

`∑{p}[n+1, A050453(#)]`
-/

namespace A005083.P13521851069831838312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050453 p

end

end A005083.P13521851069831838312

namespace A005083

/-- `∑{p}[n+1, A050453(#)]` -/
def P13521851069831838312.Spec : Prop :=
  ∀ n, P13521851069831838312.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P15372277064922864863

`∑{p}[n+1, A005082(#)²]`
-/

namespace A005083.P15372277064922864863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A005082 p ^ 2

end

end A005083.P15372277064922864863

namespace A005083

/-- `∑{p}[n+1, A005082(#)²]` -/
def P15372277064922864863.Spec : Prop :=
  ∀ n, P15372277064922864863.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P8875308931419002258

`∑{p}[n+1, A050452(#)²]`
-/

namespace A005083.P8875308931419002258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050452 p ^ 2

end

end A005083.P8875308931419002258

namespace A005083

/-- `∑{p}[n+1, A050452(#)²]` -/
def P8875308931419002258.Spec : Prop :=
  ∀ n, P8875308931419002258.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P17736983933889189111

`∑{p}[A097706(n+1), #²]`
-/

namespace A005083.P17736983933889189111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005083.P17736983933889189111

namespace A005083

/-- `∑{p}[A097706(n+1), #²]` -/
def P17736983933889189111.Spec : Prop :=
  ∀ n, (P17736983933889189111.a n : ℤ) = A005083 (n + 1)

end A005083

/-! ## A005083.P3926021957872003652

`∑{p}[A170819(n+1), #²]`
-/

namespace A005083.P3926021957872003652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A005083.P3926021957872003652

namespace A005083

/-- `∑{p}[A170819(n+1), #²]` -/
def P3926021957872003652.Spec : Prop :=
  ∀ n, (P3926021957872003652.a n : ℤ) = A005083 (n + 1)

end A005083

/-! ## A005083.P17800960562846106505

`∑{p}[n+1, sqrt(A005085(#))]`
-/

namespace A005083.P17800960562846106505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A005085 p : ℝ)

end

end A005083.P17800960562846106505

namespace A005083

/-- `∑{p}[n+1, sqrt(A005085(#))]` -/
def P17800960562846106505.Spec : Prop :=
  ∀ n, P17800960562846106505.a n = (A005083 (n + 1) : ℝ)

end A005083

/-! ## A005083.P6371484578177065272

`∑{p}[n+1, sqrt(A050455(#))]`
-/

namespace A005083.P6371484578177065272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Real.sqrt (A050455 p : ℝ)

end

end A005083.P6371484578177065272

namespace A005083

/-- `∑{p}[n+1, sqrt(A050455(#))]` -/
def P6371484578177065272.Spec : Prop :=
  ∀ n, P6371484578177065272.a n = (A005083 (n + 1) : ℝ)

end A005083

/-! ## A005083.P88362895368071060

`∑{p}[n+1, (#*A001842(#))²]`
-/

namespace A005083.P88362895368071060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) * A001842 p) ^ 2

end

end A005083.P88362895368071060

namespace A005083

/-- `∑{p}[n+1, (#*A001842(#))²]` -/
def P88362895368071060.Spec : Prop :=
  ∀ n, P88362895368071060.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P14317653573052357303

`A005066(A072438(n+1))`
-/

namespace A005083.P14317653573052357303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (A072438 (n + 1)).toNat

end

end A005083.P14317653573052357303

namespace A005083

/-- `A005066(A072438(n+1))` -/
def P14317653573052357303.Spec : Prop :=
  ∀ n, P14317653573052357303.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P15855282957765279776

`A005063(A097706(n+1))`
-/

namespace A005083.P15855282957765279776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A097706 (n + 1)).toNat

end

end A005083.P15855282957765279776

namespace A005083

/-- `A005063(A097706(n+1))` -/
def P15855282957765279776.Spec : Prop :=
  ∀ n, P15855282957765279776.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P3292384273118444587

`A005063(A170819(n+1))`
-/

namespace A005083.P3292384273118444587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A170819 (n + 1)).toNat

end

end A005083.P3292384273118444587

namespace A005083

/-- `A005063(A170819(n+1))` -/
def P3292384273118444587.Spec : Prop :=
  ∀ n, P3292384273118444587.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P14531150820705151464

`A005066(n+1)-A005079(n+1)`
-/

namespace A005083.P14531150820705151464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (n + 1) - A005079 (n + 1)

end

end A005083.P14531150820705151464

namespace A005083

/-- `A005066(n+1)-A005079(n+1)` -/
def P14531150820705151464.Spec : Prop :=
  ∀ n, P14531150820705151464.a n = A005083 (n + 1)

theorem P14531150820705151464.correct : P14531150820705151464.Spec := by
  intro n
  simp only [A005083, Nat.add_sub_cancel, A005083.P14531150820705151464.a, A005083.P12060761291276031228.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005066, A005066.P399766481183112072.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005083

/-! ## A005083.P4209629285464491375

`A005066((n+1)/A072436(n+1))`
-/

namespace A005083.P4209629285464491375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A005083.P4209629285464491375

namespace A005083

/-- `A005066((n+1)/A072436(n+1))` -/
def P4209629285464491375.Spec : Prop :=
  ∀ n, P4209629285464491375.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P102844572922152495

`A005063(A000265(n+1))-A005079(n+1)`
-/

namespace A005083.P102844572922152495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A000265 (n + 1)).toNat - A005079 (n + 1)

end

end A005083.P102844572922152495

namespace A005083

/-- `A005063(A000265(n+1))-A005079(n+1)` -/
def P102844572922152495.Spec : Prop :=
  ∀ n, P102844572922152495.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P12784039689397449185

`A005066(n+1)-A005066(A072436(n+1))`
-/

namespace A005083.P12784039689397449185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005066 (n + 1) - A005066 (A072436 (n + 1)).toNat

end

end A005083.P12784039689397449185

namespace A005083

/-- `A005066(n+1)-A005066(A072436(n+1))` -/
def P12784039689397449185.Spec : Prop :=
  ∀ n, P12784039689397449185.a n = A005083 (n + 1)

end A005083

/-! ## A005083.P9678268536286617471

`∑{p}[n+1, A050465(#²)]`
-/

namespace A005083.P9678268536286617471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050465 (p ^ 2)

end

end A005083.P9678268536286617471

namespace A005083

/-- `∑{p}[n+1, A050465(#²)]` -/
def P9678268536286617471.Spec : Prop :=
  ∀ n, P9678268536286617471.a n = A005083 (n + 1)

end A005083

/-!
# A005084: Sum of cubes of primes = 3 mod 4 dividing n.

The programs for A005084, the canonical program `A005084.P8221435788932631472` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005084 has offset 1).

The definition of A005084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005084.P3134293041072296496

`A005064(n+1)-A005080(n+1)-8*A059841(n+1)`
-/

namespace A005084.P3134293041072296496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 1) - A005080 (n + 1) - 8 * A059841 (n + 1)

end

end A005084.P3134293041072296496

namespace A005084

/-- `A005064(n+1)-A005080(n+1)-8*A059841(n+1)` -/
def P3134293041072296496.Spec : Prop :=
  ∀ n, P3134293041072296496.a n = A005084 (n + 1)

theorem P3134293041072296496.correct : P3134293041072296496.Spec := by
  intro n
  simp only [A005084, Nat.add_sub_cancel, A005084.P3134293041072296496.a, A005084.P8221435788932631472.f1, A005084.P8221435788932631472.a, A005064, A005064.P4705532925960423919.a, A005080, A005080.P9273284340090812152.a, A005083, A005083.P12060761291276031228.a, A059841, A059841.P2666504972441551157.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005067, A005067.P16153284212930227781.f1, A005067.P16153284212930227781.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A303972, A303972.P11388176725645930891.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005084

/-! ## A005084.P17819995698627530936

`∑{p}[n+1, A050454(#)]`
-/

namespace A005084.P17819995698627530936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050454 p

end

end A005084.P17819995698627530936

namespace A005084

/-- `∑{p}[n+1, A050454(#)]` -/
def P17819995698627530936.Spec : Prop :=
  ∀ n, P17819995698627530936.a n = A005084 (n + 1)

end A005084

/-! ## A005084.P8221435788932631472

`∑{p}[n+1, #*A005083(#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005084

/-- `∑{p}[n+1, #*A005083(#)]` -/
def P8221435788932631472.Spec : Prop :=
  ∀ n, P8221435788932631472.a n = A005084 (n + 1)

theorem P8221435788932631472.correct : P8221435788932631472.Spec := by
  intro n
  simp only [A005084, Nat.add_sub_cancel]

end A005084

/-! ## A005084.P118154298021266202

`∑{p}[A097706(n+1), #*#²]`
-/

namespace A005084.P118154298021266202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005084.P118154298021266202

namespace A005084

/-- `∑{p}[A097706(n+1), #*#²]` -/
def P118154298021266202.Spec : Prop :=
  ∀ n, (P118154298021266202.a n : ℤ) = A005084 (n + 1)

end A005084

/-! ## A005084.P11886274358068402784

`∑{p}[A170819(n+1), #*#²]`
-/

namespace A005084.P11886274358068402784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A005084.P11886274358068402784

namespace A005084

/-- `∑{p}[A170819(n+1), #*#²]` -/
def P11886274358068402784.Spec : Prop :=
  ∀ n, (P11886274358068402784.a n : ℤ) = A005084 (n + 1)

end A005084

/-! ## A005084.P13219948429101158998

`A005067(A072438(n+1))`
-/

namespace A005084.P13219948429101158998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (A072438 (n + 1)).toNat

end

end A005084.P13219948429101158998

namespace A005084

/-- `A005067(A072438(n+1))` -/
def P13219948429101158998.Spec : Prop :=
  ∀ n, P13219948429101158998.a n = A005084 (n + 1)

end A005084

/-! ## A005084.P296141365621463608

`A005064(A097706(n+1))`
-/

namespace A005084.P296141365621463608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A097706 (n + 1)).toNat

end

end A005084.P296141365621463608

namespace A005084

/-- `A005064(A097706(n+1))` -/
def P296141365621463608.Spec : Prop :=
  ∀ n, P296141365621463608.a n = A005084 (n + 1)

end A005084

/-! ## A005084.P1412350742425485692

`A005064(A170819(n+1))`
-/

namespace A005084.P1412350742425485692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A170819 (n + 1)).toNat

end

end A005084.P1412350742425485692

namespace A005084

/-- `A005064(A170819(n+1))` -/
def P1412350742425485692.Spec : Prop :=
  ∀ n, P1412350742425485692.a n = A005084 (n + 1)

end A005084

/-! ## A005084.P11666873210969018629

`A005067(n+1)-A005080(n+1)`
-/

namespace A005084.P11666873210969018629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) - A005080 (n + 1)

end

end A005084.P11666873210969018629

namespace A005084

/-- `A005067(n+1)-A005080(n+1)` -/
def P11666873210969018629.Spec : Prop :=
  ∀ n, P11666873210969018629.a n = A005084 (n + 1)

theorem P11666873210969018629.correct : P11666873210969018629.Spec := by
  intro n
  simp only [A005084, Nat.add_sub_cancel, A005084.P11666873210969018629.a, A005084.P8221435788932631472.f1, A005084.P8221435788932631472.a, A005067, A005067.P16153284212930227781.f1, A005067.P16153284212930227781.a, A005080, A005080.P9273284340090812152.a, A005083, A005083.P12060761291276031228.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005064, A005064.P4705532925960423919.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A059841, A059841.P2666504972441551157.a, A303972, A303972.P11388176725645930891.a, A303873, A303873.P11708283508415631705.f1, A303873.P11708283508415631705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005084

/-! ## A005084.P12412912607490521089

`A005067((n+1)/A072436(n+1))`
-/

namespace A005084.P12412912607490521089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A005084.P12412912607490521089

namespace A005084

/-- `A005067((n+1)/A072436(n+1))` -/
def P12412912607490521089.Spec : Prop :=
  ∀ n, P12412912607490521089.a n = A005084 (n + 1)

end A005084

/-! ## A005084.P18036684198540064494

`A005067(n+1)-A005067(A072436(n+1))`
-/

namespace A005084.P18036684198540064494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) - A005067 (A072436 (n + 1)).toNat

end

end A005084.P18036684198540064494

namespace A005084

/-- `A005067(n+1)-A005067(A072436(n+1))` -/
def P18036684198540064494.Spec : Prop :=
  ∀ n, P18036684198540064494.a n = A005084 (n + 1)

end A005084

/-! ## A005084.P4091817641738602233

`A005067(n+1)-A005067(A170817(n+1))`
-/

namespace A005084.P4091817641738602233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (n + 1) - A005067 (A170817 (n + 1)).toNat

end

end A005084.P4091817641738602233

namespace A005084

/-- `A005067(n+1)-A005067(A170817(n+1))` -/
def P4091817641738602233.Spec : Prop :=
  ∀ n, P4091817641738602233.a n = A005084 (n + 1)

end A005084

/-!
# A005085: Sum of 4th powers of primes = 3 mod 4 dividing n.

The programs for A005085, the canonical program `A005085.P17408966888142263945` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005085 has offset 1).

The definition of A005085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005085.P332021264940483015

`A005065(n+1)-A005081(n+1)-16*A059841(n+1)`
-/

namespace A005085.P332021264940483015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (n + 1) - A005081 (n + 1) - 16 * A059841 (n + 1)

end

end A005085.P332021264940483015

namespace A005085

/-- `A005065(n+1)-A005081(n+1)-16*A059841(n+1)` -/
def P332021264940483015.Spec : Prop :=
  ∀ n, P332021264940483015.a n = A005085 (n + 1)

theorem P332021264940483015.correct : P332021264940483015.Spec := by
  intro n
  simp only [A005085, Nat.add_sub_cancel, A005085.P332021264940483015.a, A005085.P17408966888142263945.f1, A005085.P17408966888142263945.a, A005065, A005065.P10018668116522335289.a, A005081, A005081.P3663982266665043880.a, A005083, A005083.P12060761291276031228.a, A059841, A059841.P2666504972441551157.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005068, A005068.P275356790973680025.f1, A005068.P275356790973680025.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005085

/-! ## A005085.P15145848226740835146

`∑{p}[n+1, A050455(#)]`
-/

namespace A005085.P15145848226740835146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050455 p

end

end A005085.P15145848226740835146

namespace A005085

/-- `∑{p}[n+1, A050455(#)]` -/
def P15145848226740835146.Spec : Prop :=
  ∀ n, P15145848226740835146.a n = A005085 (n + 1)

end A005085

/-! ## A005085.P17408966888142263945

`∑{p}[n+1, A005083(#)²]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005085

/-- `∑{p}[n+1, A005083(#)²]` -/
def P17408966888142263945.Spec : Prop :=
  ∀ n, P17408966888142263945.a n = A005085 (n + 1)

theorem P17408966888142263945.correct : P17408966888142263945.Spec := by
  intro n
  simp only [A005085, Nat.add_sub_cancel]

end A005085

/-! ## A005085.P15427456751692788600

`∑{p}[n+1, A050453(#)²]`
-/

namespace A005085.P15427456751692788600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050453 p ^ 2

end

end A005085.P15427456751692788600

namespace A005085

/-- `∑{p}[n+1, A050453(#)²]` -/
def P15427456751692788600.Spec : Prop :=
  ∀ n, P15427456751692788600.a n = A005085 (n + 1)

end A005085

/-! ## A005085.P257289464250853174

`∑{p}[A097706(n+1), #²²]`
-/

namespace A005085.P257289464250853174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005085.P257289464250853174

namespace A005085

/-- `∑{p}[A097706(n+1), #²²]` -/
def P257289464250853174.Spec : Prop :=
  ∀ n, (P257289464250853174.a n : ℤ) = A005085 (n + 1)

end A005085

/-! ## A005085.P7820557722401960469

`∑{p}[A170819(n+1), #²²]`
-/

namespace A005085.P7820557722401960469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A005085.P7820557722401960469

namespace A005085

/-- `∑{p}[A170819(n+1), #²²]` -/
def P7820557722401960469.Spec : Prop :=
  ∀ n, (P7820557722401960469.a n : ℤ) = A005085 (n + 1)

end A005085

/-! ## A005085.P7800509157236830605

`A005068(A072438(n+1))`
-/

namespace A005085.P7800509157236830605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (A072438 (n + 1)).toNat

end

end A005085.P7800509157236830605

namespace A005085

/-- `A005068(A072438(n+1))` -/
def P7800509157236830605.Spec : Prop :=
  ∀ n, P7800509157236830605.a n = A005085 (n + 1)

end A005085

/-! ## A005085.P6139826341169127687

`A005065(A097706(n+1))`
-/

namespace A005085.P6139826341169127687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A097706 (n + 1)).toNat

end

end A005085.P6139826341169127687

namespace A005085

/-- `A005065(A097706(n+1))` -/
def P6139826341169127687.Spec : Prop :=
  ∀ n, P6139826341169127687.a n = A005085 (n + 1)

end A005085

/-! ## A005085.P6356681718856228075

`A005065(A170819(n+1))`
-/

namespace A005085.P6356681718856228075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A170819 (n + 1)).toNat

end

end A005085.P6356681718856228075

namespace A005085

/-- `A005065(A170819(n+1))` -/
def P6356681718856228075.Spec : Prop :=
  ∀ n, P6356681718856228075.a n = A005085 (n + 1)

end A005085

/-! ## A005085.P17824153157178712182

`A005068(n+1)-A005081(n+1)`
-/

namespace A005085.P17824153157178712182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (n + 1) - A005081 (n + 1)

end

end A005085.P17824153157178712182

namespace A005085

/-- `A005068(n+1)-A005081(n+1)` -/
def P17824153157178712182.Spec : Prop :=
  ∀ n, P17824153157178712182.a n = A005085 (n + 1)

theorem P17824153157178712182.correct : P17824153157178712182.Spec := by
  intro n
  simp only [A005085, Nat.add_sub_cancel, A005085.P17824153157178712182.a, A005085.P17408966888142263945.f1, A005085.P17408966888142263945.a, A005068, A005068.P275356790973680025.f1, A005068.P275356790973680025.a, A005081, A005081.P3663982266665043880.a, A005083, A005083.P12060761291276031228.a, A005063, A005063.P7688776663379215935.f1, A005063.P7688776663379215935.a, A005065, A005065.P10018668116522335289.a, A005079, A005079.P14688691070374291588.f1, A005079.P14688691070374291588.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005085

/-! ## A005085.P6849672899958695698

`A005068((n+1)/A072436(n+1))`
-/

namespace A005085.P6849672899958695698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A072436 (n + 1) : ℚ))).toNat

end

end A005085.P6849672899958695698

namespace A005085

/-- `A005068((n+1)/A072436(n+1))` -/
def P6849672899958695698.Spec : Prop :=
  ∀ n, P6849672899958695698.a n = A005085 (n + 1)

end A005085

/-! ## A005085.P1335392266976281873

`A005068(n+1)-A005068(A072436(n+1))`
-/

namespace A005085.P1335392266976281873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005068 (n + 1) - A005068 (A072436 (n + 1)).toNat

end

end A005085.P1335392266976281873

namespace A005085

/-- `A005068(n+1)-A005068(A072436(n+1))` -/
def P1335392266976281873.Spec : Prop :=
  ∀ n, P1335392266976281873.a n = A005085 (n + 1)

end A005085

/-!
# A005086: Number of Fibonacci numbers 1,2,3,5,... dividing n.

The programs for A005086, the canonical program `A005086.P6711646533984267784` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005086 has offset 1).

The definition of A005086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005086.P6711646533984267784

`∑{d}[n+1, A010056(#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005086

/-- `∑{d}[n+1, A010056(#)]` -/
def P6711646533984267784.Spec : Prop :=
  ∀ n, P6711646533984267784.a n = A005086 (n + 1)

theorem P6711646533984267784.correct : P6711646533984267784.Spec := by
  intro n
  simp only [A005086, Nat.add_sub_cancel]

end A005086

/-! ## A005086.P4661695824694762260

`∑{d}[n+1, A192687(#-1)]`
-/

namespace A005086.P4661695824694762260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A192687 (d - 1)

end

end A005086.P4661695824694762260

namespace A005086

/-- `∑{d}[n+1, A192687(#-1)]` -/
def P4661695824694762260.Spec : Prop :=
  ∀ n, P4661695824694762260.a n = A005086 (n + 1)

end A005086

/-! ## A005086.P9841966255396596388

`A293435(n+1)+A192687(n)`
-/

namespace A005086.P9841966255396596388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1) + A192687 n

end

end A005086.P9841966255396596388

namespace A005086

/-- `A293435(n+1)+A192687(n)` -/
def P9841966255396596388.Spec : Prop :=
  ∀ n, P9841966255396596388.a n = A005086 (n + 1)

end A005086

/-! ## A005086.P9641527386532761026

`A293435(n+1)+A010056(n+1)`
-/

namespace A005086.P9641527386532761026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1) + A010056 (n + 1)

end

end A005086.P9641527386532761026

namespace A005086

/-- `A293435(n+1)+A010056(n+1)` -/
def P9641527386532761026.Spec : Prop :=
  ∀ n, P9641527386532761026.a n = A005086 (n + 1)

theorem P9641527386532761026.correct : P9641527386532761026.Spec := by
  intro n
  simp only [A005086, Nat.add_sub_cancel, A005086.P9641527386532761026.a, A005086.P6711646533984267784.f1, A005086.P6711646533984267784.a, A010056, A010056.P4215187913350317449.f1, A010056.P4215187913350317449.a, A293435, A293435.P5908272038214602108.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005086

/-! ## A005086.P17060835231837957619

`val(A304104(n+1), 2)+1`
-/

namespace A005086.P17060835231837957619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A304104 (n + 1)).toNat 2 + 1

end

end A005086.P17060835231837957619

namespace A005086

/-- `val(A304104(n+1), 2)+1` -/
def P17060835231837957619.Spec : Prop :=
  ∀ n, (P17060835231837957619.a n : ℤ) = A005086 (n + 1)

end A005086

/-! ## A005086.P3849305634954924259

`A293435(A008605(n+1))`
-/

namespace A005086.P3849305634954924259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A008605 (n + 1)).toNat

end

end A005086.P3849305634954924259

namespace A005086

/-- `A293435(A008605(n+1))` -/
def P3849305634954924259.Spec : Prop :=
  ∀ n, P3849305634954924259.a n = A005086 (n + 1)

end A005086

/-! ## A005086.P3955451446514285316

`A293435(A135631(n+1))`
-/

namespace A005086.P3955451446514285316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A135631 (n + 1)).toNat

end

end A005086.P3955451446514285316

namespace A005086

/-- `A293435(A135631(n+1))` -/
def P3955451446514285316.Spec : Prop :=
  ∀ n, P3955451446514285316.a n = A005086 (n + 1)

end A005086

/-! ## A005086.P570791476504228171

`A293435(A134297(n+1))`
-/

namespace A005086.P570791476504228171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A134297 (n + 1)).toNat

end

end A005086.P570791476504228171

namespace A005086

/-- `A293435(A134297(n+1))` -/
def P570791476504228171.Spec : Prop :=
  ∀ n, P570791476504228171.a n = A005086 (n + 1)

end A005086

/-! ## A005086.P12574929586693634802

`A293435(A020338(n+1))`
-/

namespace A005086.P12574929586693634802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A020338 (n + 1)).toNat

end

end A005086.P12574929586693634802

namespace A005086

/-- `A293435(A020338(n+1))` -/
def P12574929586693634802.Spec : Prop :=
  ∀ n, P12574929586693634802.a n = A005086 (n + 1)

end A005086

/-! ## A005086.P1485927153228618407

`A293435(A138127(n+1))`
-/

namespace A005086.P1485927153228618407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (A138127 (n + 1)).toNat

end

end A005086.P1485927153228618407

namespace A005086

/-- `A293435(A138127(n+1))` -/
def P1485927153228618407.Spec : Prop :=
  ∀ n, P1485927153228618407.a n = A005086 (n + 1)

end A005086

/-!
# A005087: Number of distinct odd primes dividing n.

The programs for A005087, the canonical program `A005087.P16485891650271078461` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005087 has offset 1).

The definition of A005087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005087.P16485891650271078461

`∑{p}[n+1, #%2]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005087

/-- `∑{p}[n+1, #%2]` -/
def P16485891650271078461.Spec : Prop :=
  ∀ n, (P16485891650271078461.a n : ℤ) = A005087 (n + 1)

theorem P16485891650271078461.correct : P16485891650271078461.Spec := by
  intro n
  simp only [A005087, Nat.add_sub_cancel]

end A005087

/-! ## A005087.P8244983422038444129

`∑{p}[n+1, and(1, #)]`
-/

namespace A005087.P8244983422038444129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p

end

end A005087.P8244983422038444129

namespace A005087

/-- `∑{p}[n+1, and(1, #)]` -/
def P8244983422038444129.Spec : Prop :=
  ∀ n, (P8244983422038444129.a n : ℤ) = A005087 (n + 1)

theorem P8244983422038444129.correct : P8244983422038444129.Spec := by
  intro n
  simp only [A005087, Nat.add_sub_cancel, A005087.P8244983422038444129.f1, A005087.P8244983422038444129.a, A005087.P16485891650271078461.f1, A005087.P16485891650271078461.a, SequenceMachineLib.memo_apply]
  try simp

end A005087

/-! ## A005087.P8420430766050635897

`∑{p}[n+1, 2-gcd(2, #)]`
-/

namespace A005087.P8420430766050635897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.gcd 2 p : ℤ))

end

end A005087.P8420430766050635897

namespace A005087

/-- `∑{p}[n+1, 2-gcd(2, #)]` -/
def P8420430766050635897.Spec : Prop :=
  ∀ n, P8420430766050635897.a n = A005087 (n + 1)

end A005087

/-! ## A005087.P7649396089979367106

`∑{p}[n+1, 1-val(#, 2)]`
-/

namespace A005087.P7649396089979367106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - (SequenceMachineLib.valuation p 2 : ℤ))

end

end A005087.P7649396089979367106

namespace A005087

/-- `∑{p}[n+1, 1-val(#, 2)]` -/
def P7649396089979367106.Spec : Prop :=
  ∀ n, P7649396089979367106.a n = A005087 (n + 1)

end A005087

/-! ## A005087.P18013933694739659336

`∑{p}[n+1, 1-C(2, #)]`
-/

namespace A005087.P18013933694739659336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - (Nat.choose 2 p : ℤ))

end

end A005087.P18013933694739659336

namespace A005087

/-- `∑{p}[n+1, 1-C(2, #)]` -/
def P18013933694739659336.Spec : Prop :=
  ∀ n, P18013933694739659336.a n = A005087 (n + 1)

end A005087

/-! ## A005087.P6830163870194381551

`∑{p}[n+1, val(#²+1, 2)]`
-/

namespace A005087.P6830163870194381551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (p ^ 2 + 1) 2

end

end A005087.P6830163870194381551

namespace A005087

/-- `∑{p}[n+1, val(#²+1, 2)]` -/
def P6830163870194381551.Spec : Prop :=
  ∀ n, (P6830163870194381551.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P6430789954972346012

`val(∏{p}[n+1, #²+1], 2)`
-/

namespace A005087.P6430789954972346012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (p ^ 2 + 1)) 2

end

end A005087.P6430789954972346012

namespace A005087

/-- `val(∏{p}[n+1, #²+1], 2)` -/
def P6430789954972346012.Spec : Prop :=
  ∀ n, (P6430789954972346012.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P12213222787344376774

`∑{p}[n+1, or(#, -2)+2]`
-/

namespace A005087.P12213222787344376774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Int.lor (p : ℤ) (-2) + 2)

end

end A005087.P12213222787344376774

namespace A005087

/-- `∑{p}[n+1, or(#, -2)+2]` -/
def P12213222787344376774.Spec : Prop :=
  ∀ n, P12213222787344376774.a n = A005087 (n + 1)

end A005087

/-! ## A005087.P4721105530811342557

`∑{p}[n+1, 1-floor(2/#)]`
-/

namespace A005087.P4721105530811342557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (1 - ⌊2 / (p : ℚ)⌋)

end

end A005087.P4721105530811342557

namespace A005087

/-- `∑{p}[n+1, 1-floor(2/#)]` -/
def P4721105530811342557.Spec : Prop :=
  ∀ n, P4721105530811342557.a n = A005087 (n + 1)

end A005087

/-! ## A005087.P11176766703442001368

`log2(A068068(n+1))`
-/

namespace A005087.P11176766703442001368
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A068068 (n + 1) : ℝ)

end

end A005087.P11176766703442001368

namespace A005087

/-- `log2(A068068(n+1))` -/
def P11176766703442001368.Spec : Prop :=
  ∀ n, P11176766703442001368.a n = (A005087 (n + 1) : ℝ)

end A005087

/-! ## A005087.P8043764399494995235

`A099812(n+1)-1`
-/

namespace A005087.P8043764399494995235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (n + 1) - 1

end

end A005087.P8043764399494995235

namespace A005087

/-- `A099812(n+1)-1` -/
def P8043764399494995235.Spec : Prop :=
  ∀ n, P8043764399494995235.a n = A005087 (n + 1)

end A005087

/-! ## A005087.P12071284003499477600

`A360115(2*(n+1))`
-/

namespace A005087.P12071284003499477600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360115 (2 * (n + 1))

end

end A005087.P12071284003499477600

namespace A005087

/-- `A360115(2*(n+1))` -/
def P12071284003499477600.Spec : Prop :=
  ∀ n, P12071284003499477600.a n = A005087 (n + 1)

end A005087

/-! ## A005087.P13202618596084471421

`val(A034676(n+1), 2)`
-/

namespace A005087.P13202618596084471421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034676 (n + 1)).toNat 2

end

end A005087.P13202618596084471421

namespace A005087

/-- `val(A034676(n+1), 2)` -/
def P13202618596084471421.Spec : Prop :=
  ∀ n, (P13202618596084471421.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P208513671623625132

`val(A034678(n+1), 2)`
-/

namespace A005087.P208513671623625132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034678 (n + 1)).toNat 2

end

end A005087.P208513671623625132

namespace A005087

/-- `val(A034678(n+1), 2)` -/
def P208513671623625132.Spec : Prop :=
  ∀ n, (P208513671623625132.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P2012537513901347091

`val(A034680(n+1), 2)`
-/

namespace A005087.P2012537513901347091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034680 (n + 1)).toNat 2

end

end A005087.P2012537513901347091

namespace A005087

/-- `val(A034680(n+1), 2)` -/
def P2012537513901347091.Spec : Prop :=
  ∀ n, (P2012537513901347091.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P114239142022259294

`val(A034682(n+1), 2)`
-/

namespace A005087.P114239142022259294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034682 (n + 1)).toNat 2

end

end A005087.P114239142022259294

namespace A005087

/-- `val(A034682(n+1), 2)` -/
def P114239142022259294.Spec : Prop :=
  ∀ n, (P114239142022259294.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P12433642633443709120

`val(A324283(n+1), 2)`
-/

namespace A005087.P12433642633443709120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324283 (n + 1)).toNat 2

end

end A005087.P12433642633443709120

namespace A005087

/-- `val(A324283(n+1), 2)` -/
def P12433642633443709120.Spec : Prop :=
  ∀ n, (P12433642633443709120.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P9522965759040114443

`val(A351265(n+1), 2)`
-/

namespace A005087.P9522965759040114443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351265 (n + 1)).toNat 2

end

end A005087.P9522965759040114443

namespace A005087

/-- `val(A351265(n+1), 2)` -/
def P9522965759040114443.Spec : Prop :=
  ∀ n, (P9522965759040114443.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P8632367892638946944

`val(A351267(n+1), 2)`
-/

namespace A005087.P8632367892638946944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351267 (n + 1)).toNat 2

end

end A005087.P8632367892638946944

namespace A005087

/-- `val(A351267(n+1), 2)` -/
def P8632367892638946944.Spec : Prop :=
  ∀ n, (P8632367892638946944.a n : ℤ) = A005087 (n + 1)

end A005087

/-! ## A005087.P8577574080357260504

`val(A351269(n+1), 2)`
-/

namespace A005087.P8577574080357260504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351269 (n + 1)).toNat 2

end

end A005087.P8577574080357260504

namespace A005087

/-- `val(A351269(n+1), 2)` -/
def P8577574080357260504.Spec : Prop :=
  ∀ n, (P8577574080357260504.a n : ℤ) = A005087 (n + 1)

end A005087

/-!
# A005088: Number of primes = 1 mod 3 dividing n.

The programs for A005088, the canonical program `A005088.P8022633651316501348` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005088 has offset 1).

The definition of A005088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005088.P11374839778936701576

`A001221(n+1)-A005090(n+1)-A079978(n+1)`
-/

namespace A005088.P11374839778936701576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A005090 (n + 1) - A079978 (n + 1)

end

end A005088.P11374839778936701576

namespace A005088

/-- `A001221(n+1)-A005090(n+1)-A079978(n+1)` -/
def P11374839778936701576.Spec : Prop :=
  ∀ n, P11374839778936701576.a n = A005088 (n + 1)

theorem P11374839778936701576.correct : P11374839778936701576.Spec := by
  intro n
  simp only [A005088, Nat.add_sub_cancel, A005088.P11374839778936701576.a, A005088.P8022633651316501348.f1, A005088.P8022633651316501348.a, A001221, A001221.P10258181745752134128.a, A005090, A005090.P16469068268029111629.a, A079978, A079978.P10382542118278163374.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005088

/-! ## A005088.P8022633651316501348

`∑{p}[n+1, (#%3)%2]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005088

/-- `∑{p}[n+1, (#%3)%2]` -/
def P8022633651316501348.Spec : Prop :=
  ∀ n, (P8022633651316501348.a n : ℤ) = A005088 (n + 1)

theorem P8022633651316501348.correct : P8022633651316501348.Spec := by
  intro n
  simp only [A005088, Nat.add_sub_cancel]

end A005088

/-! ## A005088.P4872118583985677934

`dr(A005072(n+1))`
-/

namespace A005088.P4872118583985677934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A005072 (n + 1))

end

end A005088.P4872118583985677934

namespace A005088

/-- `dr(A005072(n+1))` -/
def P4872118583985677934.Spec : Prop :=
  ∀ n, (P4872118583985677934.a n : ℤ) = A005088 (n + 1)

end A005088

/-! ## A005088.P9592758228050172945

`A005071(n+1)%4`
-/

namespace A005088.P9592758228050172945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005071 (n + 1)) 4

end

end A005088.P9592758228050172945

namespace A005088

/-- `A005071(n+1)%4` -/
def P9592758228050172945.Spec : Prop :=
  ∀ n, P9592758228050172945.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P1364268044053849787

`A005070(n+1)%6`
-/

namespace A005088.P1364268044053849787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005070 (n + 1)) 6

end

end A005088.P1364268044053849787

namespace A005088

/-- `A005070(n+1)%6` -/
def P1364268044053849787.Spec : Prop :=
  ∀ n, P1364268044053849787.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P989566557155456215

`val(A367866(n+1), 3)`
-/

namespace A005088.P989566557155456215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A367866 (n + 1)).toNat 3

end

end A005088.P989566557155456215

namespace A005088

/-- `val(A367866(n+1), 3)` -/
def P989566557155456215.Spec : Prop :=
  ∀ n, (P989566557155456215.a n : ℤ) = A005088 (n + 1)

end A005088

/-! ## A005088.P14484867752358635021

`∑{p}[n+1, A070563(#)]`
-/

namespace A005088.P14484867752358635021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A070563 p

end

end A005088.P14484867752358635021

namespace A005088

/-- `∑{p}[n+1, A070563(#)]` -/
def P14484867752358635021.Spec : Prop :=
  ∀ n, P14484867752358635021.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P10062990059095325596

`∑{p}[n+1, A092573(#)]`
-/

namespace A005088.P10062990059095325596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A092573 p

end

end A005088.P10062990059095325596

namespace A005088

/-- `∑{p}[n+1, A092573(#)]` -/
def P10062990059095325596.Spec : Prop :=
  ∀ n, P10062990059095325596.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P4280670342464536493

`∑{p}[n+1, A092575(#)]`
-/

namespace A005088.P4280670342464536493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A092575 p

end

end A005088.P4280670342464536493

namespace A005088

/-- `∑{p}[n+1, A092575(#)]` -/
def P4280670342464536493.Spec : Prop :=
  ∀ n, P4280670342464536493.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P1787293374870432036

`∑{p}[n+1, A105964(#)]`
-/

namespace A005088.P1787293374870432036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A105964 p

end

end A005088.P1787293374870432036

namespace A005088

/-- `∑{p}[n+1, A105964(#)]` -/
def P1787293374870432036.Spec : Prop :=
  ∀ n, P1787293374870432036.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P5677463143747672319

`∑{p}[n+1, A230264(#)]`
-/

namespace A005088.P5677463143747672319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A230264 p

end

end A005088.P5677463143747672319

namespace A005088

/-- `∑{p}[n+1, A230264(#)]` -/
def P5677463143747672319.Spec : Prop :=
  ∀ n, P5677463143747672319.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P2667731239147771101

`∑{p}[n+1, A308470(#)]`
-/

namespace A005088.P2667731239147771101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A308470 p

end

end A005088.P2667731239147771101

namespace A005088

/-- `∑{p}[n+1, A308470(#)]` -/
def P2667731239147771101.Spec : Prop :=
  ∀ n, P2667731239147771101.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P16646239871058591202

`∑{p}[n+1, A319691(#)]`
-/

namespace A005088.P16646239871058591202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A319691 p

end

end A005088.P16646239871058591202

namespace A005088

/-- `∑{p}[n+1, A319691(#)]` -/
def P16646239871058591202.Spec : Prop :=
  ∀ n, P16646239871058591202.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P18125419156462052291

`∑{p}[n+1, A343023(#)]`
-/

namespace A005088.P18125419156462052291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A343023 p

end

end A005088.P18125419156462052291

namespace A005088

/-- `∑{p}[n+1, A343023(#)]` -/
def P18125419156462052291.Spec : Prop :=
  ∀ n, P18125419156462052291.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P3755771270264767330

`∑{e}[A170824(n+1), #]`
-/

namespace A005088.P3755771270264767330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A005088.P3755771270264767330

namespace A005088

/-- `∑{e}[A170824(n+1), #]` -/
def P3755771270264767330.Spec : Prop :=
  ∀ n, (P3755771270264767330.a n : ℤ) = A005088 (n + 1)

end A005088

/-! ## A005088.P15898196232450922315

`∑{p}[n+1, A000217(#)%3]`
-/

namespace A005088.P15898196232450922315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000217 p) 3

end

end A005088.P15898196232450922315

namespace A005088

/-- `∑{p}[n+1, A000217(#)%3]` -/
def P15898196232450922315.Spec : Prop :=
  ∀ n, P15898196232450922315.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P466518743718418854

`val(∏{p}[n+1, A064987(#)+1], 3)`
-/

namespace A005088.P466518743718418854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (A064987 p + 1)).toNat 3

end

end A005088.P466518743718418854

namespace A005088

/-- `val(∏{p}[n+1, A064987(#)+1], 3)` -/
def P466518743718418854.Spec : Prop :=
  ∀ n, (P466518743718418854.a n : ℤ) = A005088 (n + 1)

end A005088

/-! ## A005088.P15120350173624994933

`val(A060839(abs(∏{p}[n+1, -#])), 3)`
-/

namespace A005088.P15120350173624994933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060839 |∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))|.toNat).toNat 3

end

end A005088.P15120350173624994933

namespace A005088

/-- `val(A060839(abs(∏{p}[n+1, -#])), 3)` -/
def P15120350173624994933.Spec : Prop :=
  ∀ n, (P15120350173624994933.a n : ℤ) = A005088 (n + 1)

end A005088

/-! ## A005088.P6759762146130557805

`A001222(A115069(n+1))`
-/

namespace A005088.P6759762146130557805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A115069 (n + 1)).toNat

end

end A005088.P6759762146130557805

namespace A005088

/-- `A001222(A115069(n+1))` -/
def P6759762146130557805.Spec : Prop :=
  ∀ n, P6759762146130557805.a n = A005088 (n + 1)

end A005088

/-! ## A005088.P5637433361270688641

`A001221(A170824(n+1))`
-/

namespace A005088.P5637433361270688641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A170824 (n + 1)).toNat

end

end A005088.P5637433361270688641

namespace A005088

/-- `A001221(A170824(n+1))` -/
def P5637433361270688641.Spec : Prop :=
  ∀ n, P5637433361270688641.a n = A005088 (n + 1)

end A005088

/-!
# A005089: Number of distinct primes == 1 (mod 4) dividing n.

The programs for A005089, the canonical program `A005089.P4329807401814625450` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005089 has offset 1).

The definition of A005089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005089.P4329807401814625450

`∑{p}[n+1, 2-and(2, #)!]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005089

/-- `∑{p}[n+1, 2-and(2, #)!]` -/
def P4329807401814625450.Spec : Prop :=
  ∀ n, P4329807401814625450.a n = A005089 (n + 1)

theorem P4329807401814625450.correct : P4329807401814625450.Spec := by
  intro n
  simp only [A005089, Nat.add_sub_cancel]

end A005089

/-! ## A005089.P3257456006506478646

`A005078(n+1)%4`
-/

namespace A005089.P3257456006506478646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005078 (n + 1)) 4

end

end A005089.P3257456006506478646

namespace A005089

/-- `A005078(n+1)%4` -/
def P3257456006506478646.Spec : Prop :=
  ∀ n, P3257456006506478646.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P4376853732652585101

`A005079(n+1)%4`
-/

namespace A005089.P4376853732652585101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005079 (n + 1)) 4

end

end A005089.P4376853732652585101

namespace A005089

/-- `A005079(n+1)%4` -/
def P4376853732652585101.Spec : Prop :=
  ∀ n, P4376853732652585101.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P12867770065515143876

`A005080(n+1)%4`
-/

namespace A005089.P12867770065515143876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005080 (n + 1)) 4

end

end A005089.P12867770065515143876

namespace A005089

/-- `A005080(n+1)%4` -/
def P12867770065515143876.Spec : Prop :=
  ∀ n, P12867770065515143876.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P2261633697306213613

`val(A087782(n+1), 3)`
-/

namespace A005089.P2261633697306213613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A087782 (n + 1)).toNat 3

end

end A005089.P2261633697306213613

namespace A005089

/-- `val(A087782(n+1), 3)` -/
def P2261633697306213613.Spec : Prop :=
  ∀ n, (P2261633697306213613.a n : ℤ) = A005089 (n + 1)

end A005089

/-! ## A005089.P5643259378475134989

`and(3, A005081(n+1))`
-/

namespace A005089.P5643259378475134989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A005081 (n + 1))

end

end A005089.P5643259378475134989

namespace A005089

/-- `and(3, A005081(n+1))` -/
def P5643259378475134989.Spec : Prop :=
  ∀ n, P5643259378475134989.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P4166289787951992677

`∑{d}[n+1, A079260(#)]`
-/

namespace A005089.P4166289787951992677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079260 d

end

end A005089.P4166289787951992677

namespace A005089

/-- `∑{d}[n+1, A079260(#)]` -/
def P4166289787951992677.Spec : Prop :=
  ∀ n, P4166289787951992677.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P18336165522758677579

`∑{p}[n+1, A024362(#)]`
-/

namespace A005089.P18336165522758677579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A024362 p

end

end A005089.P18336165522758677579

namespace A005089

/-- `∑{p}[n+1, A024362(#)]` -/
def P18336165522758677579.Spec : Prop :=
  ∀ n, P18336165522758677579.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P5685492602573331817

`∑{p}[n+1, A025435(#)]`
-/

namespace A005089.P5685492602573331817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A025435 p

end

end A005089.P5685492602573331817

namespace A005089

/-- `∑{p}[n+1, A025435(#)]` -/
def P5685492602573331817.Spec : Prop :=
  ∀ n, P5685492602573331817.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P6360674101475347207

`∑{p}[n+1, A025441(#)]`
-/

namespace A005089.P6360674101475347207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A025441 p

end

end A005089.P6360674101475347207

namespace A005089

/-- `∑{p}[n+1, A025441(#)]` -/
def P6360674101475347207.Spec : Prop :=
  ∀ n, P6360674101475347207.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P15060305457853493099

`∑{p}[n+1, A046080(#)]`
-/

namespace A005089.P15060305457853493099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A046080 p

end

end A005089.P15060305457853493099

namespace A005089

/-- `∑{p}[n+1, A046080(#)]` -/
def P15060305457853493099.Spec : Prop :=
  ∀ n, P15060305457853493099.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P796597298044591755

`∑{p}[n+1, A083025(#)]`
-/

namespace A005089.P796597298044591755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A083025 p

end

end A005089.P796597298044591755

namespace A005089

/-- `∑{p}[n+1, A083025(#)]` -/
def P796597298044591755.Spec : Prop :=
  ∀ n, P796597298044591755.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P9103607657614889377

`∑{p}[n+1, A133872(#)]`
-/

namespace A005089.P9103607657614889377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A133872 p

end

end A005089.P9103607657614889377

namespace A005089

/-- `∑{p}[n+1, A133872(#)]` -/
def P9103607657614889377.Spec : Prop :=
  ∀ n, P9103607657614889377.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P10446498196037246332

`∑{p}[n+1, A157228(#)]`
-/

namespace A005089.P10446498196037246332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A157228 p

end

end A005089.P10446498196037246332

namespace A005089

/-- `∑{p}[n+1, A157228(#)]` -/
def P10446498196037246332.Spec : Prop :=
  ∀ n, P10446498196037246332.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P9098058043056717419

`∑{p}[n+1, A255817(#)]`
-/

namespace A005089.P9098058043056717419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A255817 p

end

end A005089.P9098058043056717419

namespace A005089

/-- `∑{p}[n+1, A255817(#)]` -/
def P9098058043056717419.Spec : Prop :=
  ∀ n, P9098058043056717419.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P15091068178562099230

`∑{p}[n+1, A290098(#)]`
-/

namespace A005089.P15091068178562099230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A290098 p

end

end A005089.P15091068178562099230

namespace A005089

/-- `∑{p}[n+1, A290098(#)]` -/
def P15091068178562099230.Spec : Prop :=
  ∀ n, P15091068178562099230.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P4617201557894801697

`∑{p}[n+1, A338940(#)]`
-/

namespace A005089.P4617201557894801697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A338940 p

end

end A005089.P4617201557894801697

namespace A005089

/-- `∑{p}[n+1, A338940(#)]` -/
def P4617201557894801697.Spec : Prop :=
  ∀ n, P4617201557894801697.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P2763949051528567250

`∑{p}[n+1, A354035(#)]`
-/

namespace A005089.P2763949051528567250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A354035 p

end

end A005089.P2763949051528567250

namespace A005089

/-- `∑{p}[n+1, A354035(#)]` -/
def P2763949051528567250.Spec : Prop :=
  ∀ n, P2763949051528567250.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P4093153531813077187

`A083025(∏{p}[n+1, #])`
-/

namespace A005089.P4093153531813077187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083025 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A005089.P4093153531813077187

namespace A005089

/-- `A083025(∏{p}[n+1, #])` -/
def P4093153531813077187.Spec : Prop :=
  ∀ n, P4093153531813077187.a n = A005089 (n + 1)

end A005089

/-! ## A005089.P8548789458351716884

`A005087(A072436(n+1))`
-/

namespace A005089.P8548789458351716884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A072436 (n + 1)).toNat

end

end A005089.P8548789458351716884

namespace A005089

/-- `A005087(A072436(n+1))` -/
def P8548789458351716884.Spec : Prop :=
  ∀ n, P8548789458351716884.a n = A005089 (n + 1)

end A005089

/-!
# A005090: Number of primes == 2 mod 3 dividing n.

The programs for A005090, the canonical program `A005090.P16469068268029111629` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005090 has offset 1).

The definition of A005090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A005088, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005090.P16469068268029111629

`A001221(n+1)-A005088(n+1)-A079978(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005090

/-- `A001221(n+1)-A005088(n+1)-A079978(n+1)` -/
def P16469068268029111629.Spec : Prop :=
  ∀ n, P16469068268029111629.a n = A005090 (n + 1)

theorem P16469068268029111629.correct : P16469068268029111629.Spec := by
  intro n
  simp only [A005090, Nat.add_sub_cancel]

end A005090

/-! ## A005090.P16037793296686078117

`∑{p}[n+1, C(#, 2)%3]`
-/

namespace A005090.P16037793296686078117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p 2 % 3

end

end A005090.P16037793296686078117

namespace A005090

/-- `∑{p}[n+1, C(#, 2)%3]` -/
def P16037793296686078117.Spec : Prop :=
  ∀ n, (P16037793296686078117.a n : ℤ) = A005090 (n + 1)

end A005090

/-! ## A005090.P16399761892903738008

`val(A367865(n+1), 3)`
-/

namespace A005090.P16399761892903738008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A367865 (n + 1)).toNat 3

end

end A005090.P16399761892903738008

namespace A005090

/-- `val(A367865(n+1), 3)` -/
def P16399761892903738008.Spec : Prop :=
  ∀ n, (P16399761892903738008.a n : ℤ) = A005090 (n + 1)

end A005090

/-! ## A005090.P14577894077778820050

`∑{p}[n+1, A001822(#)]`
-/

namespace A005090.P14577894077778820050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001822 p

end

end A005090.P14577894077778820050

namespace A005090

/-- `∑{p}[n+1, A001822(#)]` -/
def P14577894077778820050.Spec : Prop :=
  ∀ n, P14577894077778820050.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P16469359822949822478

`∑{p}[n+1, A080846(#)]`
-/

namespace A005090.P16469359822949822478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A080846 p

end

end A005090.P16469359822949822478

namespace A005090

/-- `∑{p}[n+1, A080846(#)]` -/
def P16469359822949822478.Spec : Prop :=
  ∀ n, P16469359822949822478.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P10406001692103509309

`∑{p}[n+1, A214090(#)]`
-/

namespace A005090.P10406001692103509309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A214090 p

end

end A005090.P10406001692103509309

namespace A005090

/-- `∑{p}[n+1, A214090(#)]` -/
def P10406001692103509309.Spec : Prop :=
  ∀ n, P10406001692103509309.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P7049528107614429365

`∑{p}[n+1, A326400(#)]`
-/

namespace A005090.P7049528107614429365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A326400 p

end

end A005090.P7049528107614429365

namespace A005090

/-- `∑{p}[n+1, A326400(#)]` -/
def P7049528107614429365.Spec : Prop :=
  ∀ n, P7049528107614429365.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P5413774377363291028

`∑{p}[n+1, A364205(#)]`
-/

namespace A005090.P5413774377363291028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A364205 p

end

end A005090.P5413774377363291028

namespace A005090

/-- `∑{p}[n+1, A364205(#)]` -/
def P5413774377363291028.Spec : Prop :=
  ∀ n, P5413774377363291028.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P9272406534930936414

`∑{p}[n+1, A364235(#)]`
-/

namespace A005090.P9272406534930936414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A364235 p

end

end A005090.P9272406534930936414

namespace A005090

/-- `∑{p}[n+1, A364235(#)]` -/
def P9272406534930936414.Spec : Prop :=
  ∀ n, P9272406534930936414.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P12451273941115567877

`∑{p}[n+1, A373592(#)]`
-/

namespace A005090.P12451273941115567877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A373592 p

end

end A005090.P12451273941115567877

namespace A005090

/-- `∑{p}[n+1, A373592(#)]` -/
def P12451273941115567877.Spec : Prop :=
  ∀ n, P12451273941115567877.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P10047955567559242826

`A373592(∏{p}[n+1, #])`
-/

namespace A005090.P10047955567559242826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373592 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A005090.P10047955567559242826

namespace A005090

/-- `A373592(∏{p}[n+1, #])` -/
def P10047955567559242826.Spec : Prop :=
  ∀ n, P10047955567559242826.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P4779476994506795479

`∑{p}[n+1, A000217(#-1)%3]`
-/

namespace A005090.P4779476994506795479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A000217 (p - 1)) 3

end

end A005090.P4779476994506795479

namespace A005090

/-- `∑{p}[n+1, A000217(#-1)%3]` -/
def P4779476994506795479.Spec : Prop :=
  ∀ n, P4779476994506795479.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P3410572742388873255

`∑{p}[n+1, (A000010(#)%3)%2]`
-/

namespace A005090.P3410572742388873255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (Int.tmod (A000010 p) 3) 2

end

end A005090.P3410572742388873255

namespace A005090

/-- `∑{p}[n+1, (A000010(#)%3)%2]` -/
def P3410572742388873255.Spec : Prop :=
  ∀ n, P3410572742388873255.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P3656918532704594700

`A001221(A343430(n+1))`
-/

namespace A005090.P3656918532704594700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A343430 (n + 1)).toNat

end

end A005090.P3656918532704594700

namespace A005090

/-- `A001221(A343430(n+1))` -/
def P3656918532704594700.Spec : Prop :=
  ∀ n, P3656918532704594700.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P5609927835724686634

`A373592(A007947(n+1))`
-/

namespace A005090.P5609927835724686634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373592 (A007947 (n + 1)).toNat

end

end A005090.P5609927835724686634

namespace A005090

/-- `A373592(A007947(n+1))` -/
def P5609927835724686634.Spec : Prop :=
  ∀ n, P5609927835724686634.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P5108437415113277706

`A373592(A216913(n+1))`
-/

namespace A005090.P5108437415113277706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373592 (A216913 (n + 1)).toNat

end

end A005090.P5108437415113277706

namespace A005090

/-- `A373592(A216913(n+1))` -/
def P5108437415113277706.Spec : Prop :=
  ∀ n, P5108437415113277706.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P10102081583274006397

`∑{p}[n+1, A000122(A004016(#))]`
-/

namespace A005090.P10102081583274006397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000122 (A004016 p).toNat

end

end A005090.P10102081583274006397

namespace A005090

/-- `∑{p}[n+1, A000122(A004016(#))]` -/
def P10102081583274006397.Spec : Prop :=
  ∀ n, P10102081583274006397.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P4481713489932224549

`∑{p}[n+1, A113062(A113062(#))]`
-/

namespace A005090.P4481713489932224549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A113062 (A113062 p).toNat

end

end A005090.P4481713489932224549

namespace A005090

/-- `∑{p}[n+1, A113062(A113062(#))]` -/
def P4481713489932224549.Spec : Prop :=
  ∀ n, P4481713489932224549.a n = A005090 (n + 1)

end A005090

/-! ## A005090.P14887257513856113057

`A368647(n+1)+A005088(n+1)`
-/

namespace A005090.P14887257513856113057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368647 (n + 1) + A005088 (n + 1)

end

end A005090.P14887257513856113057

namespace A005090

/-- `A368647(n+1)+A005088(n+1)` -/
def P14887257513856113057.Spec : Prop :=
  ∀ n, P14887257513856113057.a n = A005090 (n + 1)

theorem P14887257513856113057.correct : P14887257513856113057.Spec := by
  intro n
  simp only [A005090, Nat.add_sub_cancel, A005090.P14887257513856113057.a, A005090.P16469068268029111629.a, A001221, A001221.P10258181745752134128.a, A005088, A005088.P8022633651316501348.f1, A005088.P8022633651316501348.a, A079978, A079978.P10382542118278163374.a, A368647, A368647.P6890929061440035933.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005090

/-! ## A005090.P4553303377662475328

`∑{p}[A343430(n+1), #/A343430(#)]`
-/

namespace A005090.P4553303377662475328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343430 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A343430 p : ℚ)

end

end A005090.P4553303377662475328

namespace A005090

/-- `∑{p}[A343430(n+1), #/A343430(#)]` -/
def P4553303377662475328.Spec : Prop :=
  ∀ n, P4553303377662475328.a n = (A005090 (n + 1) : ℚ)

end A005090

/-!
# A005091: Number of distinct primes = 3 mod 4 dividing n.

The programs for A005091, the canonical program `A005091.P2802037195389751204` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005091 has offset 1).

The definition of A005091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005091.P2802037195389751204

`∑{p}[n+1, 4%(#%4)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005091

/-- `∑{p}[n+1, 4%(#%4)]` -/
def P2802037195389751204.Spec : Prop :=
  ∀ n, (P2802037195389751204.a n : ℤ) = A005091 (n + 1)

theorem P2802037195389751204.correct : P2802037195389751204.Spec := by
  intro n
  simp only [A005091, Nat.add_sub_cancel]

end A005091

/-! ## A005091.P18264053097988305555

`A005083(n+1)%8`
-/

namespace A005091.P18264053097988305555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005083 (n + 1)) 8

end

end A005091.P18264053097988305555

namespace A005091

/-- `A005083(n+1)%8` -/
def P18264053097988305555.Spec : Prop :=
  ∀ n, P18264053097988305555.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P871360433309473073

`∑{d}[n+1, A079261(#)]`
-/

namespace A005091.P871360433309473073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079261 d

end

end A005091.P871360433309473073

namespace A005091

/-- `∑{d}[n+1, A079261(#)]` -/
def P871360433309473073.Spec : Prop :=
  ∀ n, P871360433309473073.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P17600693572883035406

`∑{p}[n+1, A001842(#)]`
-/

namespace A005091.P17600693572883035406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001842 p

end

end A005091.P17600693572883035406

namespace A005091

/-- `∑{p}[n+1, A001842(#)]` -/
def P17600693572883035406.Spec : Prop :=
  ∀ n, P17600693572883035406.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P16390401511079804946

`∑{p}[n+1, A038189(#)]`
-/

namespace A005091.P16390401511079804946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A038189 p

end

end A005091.P16390401511079804946

namespace A005091

/-- `∑{p}[n+1, A038189(#)]` -/
def P16390401511079804946.Spec : Prop :=
  ∀ n, P16390401511079804946.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P8084535607077049716

`∑{p}[n+1, A050464(#)]`
-/

namespace A005091.P8084535607077049716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050464 p

end

end A005091.P8084535607077049716

namespace A005091

/-- `∑{p}[n+1, A050464(#)]` -/
def P8084535607077049716.Spec : Prop :=
  ∀ n, P8084535607077049716.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P13012447726505061509

`∑{p}[n+1, A050465(#)]`
-/

namespace A005091.P13012447726505061509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050465 p

end

end A005091.P13012447726505061509

namespace A005091

/-- `∑{p}[n+1, A050465(#)]` -/
def P13012447726505061509.Spec : Prop :=
  ∀ n, P13012447726505061509.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P16052062107917202358

`∑{p}[n+1, A050466(#)]`
-/

namespace A005091.P16052062107917202358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050466 p

end

end A005091.P16052062107917202358

namespace A005091

/-- `∑{p}[n+1, A050466(#)]` -/
def P16052062107917202358.Spec : Prop :=
  ∀ n, P16052062107917202358.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P3176200175150952634

`∑{p}[n+1, A050467(#)]`
-/

namespace A005091.P3176200175150952634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A050467 p

end

end A005091.P3176200175150952634

namespace A005091

/-- `∑{p}[n+1, A050467(#)]` -/
def P3176200175150952634.Spec : Prop :=
  ∀ n, P3176200175150952634.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P16756842990215179832

`∑{p}[n+1, A065339(#)]`
-/

namespace A005091.P16756842990215179832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A065339 p

end

end A005091.P16756842990215179832

namespace A005091

/-- `∑{p}[n+1, A065339(#)]` -/
def P16756842990215179832.Spec : Prop :=
  ∀ n, P16756842990215179832.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P10026553675829534204

`∑{p}[n+1, A089013(#)]`
-/

namespace A005091.P10026553675829534204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A089013 p

end

end A005091.P10026553675829534204

namespace A005091

/-- `∑{p}[n+1, A089013(#)]` -/
def P10026553675829534204.Spec : Prop :=
  ∀ n, P10026553675829534204.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P1797378000346697417

`∑{p}[n+1, A245194(#)]`
-/

namespace A005091.P1797378000346697417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A245194 p

end

end A005091.P1797378000346697417

namespace A005091

/-- `∑{p}[n+1, A245194(#)]` -/
def P1797378000346697417.Spec : Prop :=
  ∀ n, P1797378000346697417.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P9331035969498615457

`∑{p}[n+1, A260728(#)]`
-/

namespace A005091.P9331035969498615457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A260728 p

end

end A005091.P9331035969498615457

namespace A005091

/-- `∑{p}[n+1, A260728(#)]` -/
def P9331035969498615457.Spec : Prop :=
  ∀ n, P9331035969498615457.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P14093687870980620325

`∑{p}[n+1, A334566(#)]`
-/

namespace A005091.P14093687870980620325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A334566 p

end

end A005091.P14093687870980620325

namespace A005091

/-- `∑{p}[n+1, A334566(#)]` -/
def P14093687870980620325.Spec : Prop :=
  ∀ n, P14093687870980620325.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P14147436028718648530

`∑{p}[n+1, A338824(#)]`
-/

namespace A005091.P14147436028718648530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A338824 p

end

end A005091.P14147436028718648530

namespace A005091

/-- `∑{p}[n+1, A338824(#)]` -/
def P14147436028718648530.Spec : Prop :=
  ∀ n, P14147436028718648530.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P5725743406856105697

`∑{p}[n+1, A354028(#)]`
-/

namespace A005091.P5725743406856105697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A354028 p

end

end A005091.P5725743406856105697

namespace A005091

/-- `∑{p}[n+1, A354028(#)]` -/
def P5725743406856105697.Spec : Prop :=
  ∀ n, P5725743406856105697.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P11227627292352302809

`∑{p}[n+1, A354029(#)]`
-/

namespace A005091.P11227627292352302809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A354029 p

end

end A005091.P11227627292352302809

namespace A005091

/-- `∑{p}[n+1, A354029(#)]` -/
def P11227627292352302809.Spec : Prop :=
  ∀ n, P11227627292352302809.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P13531202304054241603

`∑{p}[n+1, A354033(#)]`
-/

namespace A005091.P13531202304054241603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A354033 p

end

end A005091.P13531202304054241603

namespace A005091

/-- `∑{p}[n+1, A354033(#)]` -/
def P13531202304054241603.Spec : Prop :=
  ∀ n, P13531202304054241603.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P18080046575171968971

`∑{p}[n+1, A354036(#)]`
-/

namespace A005091.P18080046575171968971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A354036 p

end

end A005091.P18080046575171968971

namespace A005091

/-- `∑{p}[n+1, A354036(#)]` -/
def P18080046575171968971.Spec : Prop :=
  ∀ n, P18080046575171968971.a n = A005091 (n + 1)

end A005091

/-! ## A005091.P12425328962154753480

`∑{p}[n+1, A359152(#)]`
-/

namespace A005091.P12425328962154753480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A359152 p

end

end A005091.P12425328962154753480

namespace A005091

/-- `∑{p}[n+1, A359152(#)]` -/
def P12425328962154753480.Spec : Prop :=
  ∀ n, P12425328962154753480.a n = A005091 (n + 1)

end A005091

/-!
# A005092: Sum of Fibonacci numbers 1,2,3,5,... that divide n.

The programs for A005092, the canonical program `A005092.P14810173785204278299` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005092 has offset 1).

The definition of A005092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005092.P14810173785204278299

`∑{d}[n+1, #*A010056(#)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005092

/-- `∑{d}[n+1, #*A010056(#)]` -/
def P14810173785204278299.Spec : Prop :=
  ∀ n, P14810173785204278299.a n = A005092 (n + 1)

theorem P14810173785204278299.correct : P14810173785204278299.Spec := by
  intro n
  simp only [A005092, Nat.add_sub_cancel]

end A005092

/-! ## A005092.P5678240576313767698

`∑{d}[n+1, #*A192687(#-1)]`
-/

namespace A005092.P5678240576313767698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A192687 (d - 1)

end

end A005092.P5678240576313767698

namespace A005092

/-- `∑{d}[n+1, #*A192687(#-1)]` -/
def P5678240576313767698.Spec : Prop :=
  ∀ n, P5678240576313767698.a n = A005092 (n + 1)

end A005092

/-! ## A005092.P15223615734874086208

`A293436(n+1)+(n+1)*A010056(n+1)`
-/

namespace A005092.P15223615734874086208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (n + 1) + (n + 1 : ℤ) * A010056 (n + 1)

end

end A005092.P15223615734874086208

namespace A005092

/-- `A293436(n+1)+(n+1)*A010056(n+1)` -/
def P15223615734874086208.Spec : Prop :=
  ∀ n, P15223615734874086208.a n = A005092 (n + 1)

theorem P15223615734874086208.correct : P15223615734874086208.Spec := by
  intro n
  simp only [A005092, Nat.add_sub_cancel, A005092.P15223615734874086208.a, A005092.P14810173785204278299.f1, A005092.P14810173785204278299.a, A010056, A010056.P4215187913350317449.f1, A010056.P4215187913350317449.a, A293436, A293436.P18285162876121790611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005092

/-! ## A005092.P12050318216199866887

`∑{d}[n+1, #-#%A256663(#)]`
-/

namespace A005092.P12050318216199866887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - Int.tmod (d : ℤ) (A256663 d))

end

end A005092.P12050318216199866887

namespace A005092

/-- `∑{d}[n+1, #-#%A256663(#)]` -/
def P12050318216199866887.Spec : Prop :=
  ∀ n, P12050318216199866887.a n = A005092 (n + 1)

end A005092

/-! ## A005092.P15772134047474745443

`A293436(A008605(n+1))`
-/

namespace A005092.P15772134047474745443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (A008605 (n + 1)).toNat

end

end A005092.P15772134047474745443

namespace A005092

/-- `A293436(A008605(n+1))` -/
def P15772134047474745443.Spec : Prop :=
  ∀ n, P15772134047474745443.a n = A005092 (n + 1)

end A005092

/-! ## A005092.P8495155730628602875

`A293436(A135631(n+1))`
-/

namespace A005092.P8495155730628602875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (A135631 (n + 1)).toNat

end

end A005092.P8495155730628602875

namespace A005092

/-- `A293436(A135631(n+1))` -/
def P8495155730628602875.Spec : Prop :=
  ∀ n, P8495155730628602875.a n = A005092 (n + 1)

end A005092

/-! ## A005092.P1483439161093759664

`A293436(A134297(n+1))`
-/

namespace A005092.P1483439161093759664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (A134297 (n + 1)).toNat

end

end A005092.P1483439161093759664

namespace A005092

/-- `A293436(A134297(n+1))` -/
def P1483439161093759664.Spec : Prop :=
  ∀ n, P1483439161093759664.a n = A005092 (n + 1)

end A005092

/-! ## A005092.P13545702632280252052

`A293436(A020338(n+1))`
-/

namespace A005092.P13545702632280252052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (A020338 (n + 1)).toNat

end

end A005092.P13545702632280252052

namespace A005092

/-- `A293436(A020338(n+1))` -/
def P13545702632280252052.Spec : Prop :=
  ∀ n, P13545702632280252052.a n = A005092 (n + 1)

end A005092

/-! ## A005092.P4100494818016894514

`A293436(A138127(n+1))`
-/

namespace A005092.P4100494818016894514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (A138127 (n + 1)).toNat

end

end A005092.P4100494818016894514

namespace A005092

/-- `A293436(A138127(n+1))` -/
def P4100494818016894514.Spec : Prop :=
  ∀ n, P4100494818016894514.a n = A005092 (n + 1)

end A005092

/-! ## A005092.P10235425485933990821

`A293436(A004926(n+1))`
-/

namespace A005092.P10235425485933990821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293436 (A004926 (n + 1)).toNat

end

end A005092.P10235425485933990821

namespace A005092

/-- `A293436(A004926(n+1))` -/
def P10235425485933990821.Spec : Prop :=
  ∀ n, P10235425485933990821.a n = A005092 (n + 1)

end A005092

/-!
# A005093: Sum of squares of Fibonacci numbers 1,2,3,5,... that divide n.

The programs for A005093, the canonical program `A005093.P13883602286870678262` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005093 has offset 1).

The definition of A005093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A005093.P13883602286870678262

`∑{d}[n+1, (#*A010056(#))²]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005093

/-- `∑{d}[n+1, (#*A010056(#))²]` -/
def P13883602286870678262.Spec : Prop :=
  ∀ n, P13883602286870678262.a n = A005093 (n + 1)

theorem P13883602286870678262.correct : P13883602286870678262.Spec := by
  intro n
  simp only [A005093, Nat.add_sub_cancel]

end A005093

/-! ## A005093.P18270124032974714386

`∑{d}[n+1, (#-#%A256663(#))²]`
-/

namespace A005093.P18270124032974714386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - Int.tmod (d : ℤ) (A256663 d)) ^ 2

end

end A005093.P18270124032974714386

namespace A005093

/-- `∑{d}[n+1, (#-#%A256663(#))²]` -/
def P18270124032974714386.Spec : Prop :=
  ∀ n, P18270124032974714386.a n = A005093 (n + 1)

end A005093

/-!
# A005094: Number of distinct primes of the form 4k+1 dividing n minus number of distinct primes of the form 4k+3 dividing n.

The programs for A005094, the canonical program `A005094.P4862257646653841086` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005094 has offset 1).

The definition of A005094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, A005091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005094.P4862257646653841086

`A005089(n+1)-A005091(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005094

/-- `A005089(n+1)-A005091(n+1)` -/
def P4862257646653841086.Spec : Prop :=
  ∀ n, P4862257646653841086.a n = A005094 (n + 1)

theorem P4862257646653841086.correct : P4862257646653841086.Spec := by
  intro n
  simp only [A005094, Nat.add_sub_cancel]

end A005094

/-! ## A005094.P4219735457925115424

`∑{p}[n+1, 2-#%4]`
-/

namespace A005094.P4219735457925115424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - ((p % 4 : ℕ) : ℤ))

end

end A005094.P4219735457925115424

namespace A005094

/-- `∑{p}[n+1, 2-#%4]` -/
def P4219735457925115424.Spec : Prop :=
  ∀ n, P4219735457925115424.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P2569925016502709096

`∑{p}[n+1, 2-and(3, #)]`
-/

namespace A005094.P2569925016502709096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.land 3 p : ℤ))

end

end A005094.P2569925016502709096

namespace A005094

/-- `∑{p}[n+1, 2-and(3, #)]` -/
def P2569925016502709096.Spec : Prop :=
  ∀ n, P2569925016502709096.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P5303697968626922456

`∑{p}[n+1, -#%4+2]`
-/

namespace A005094.P5303697968626922456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Int.tmod (-(p : ℤ)) 4 + 2)

end

end A005094.P5303697968626922456

namespace A005094

/-- `∑{p}[n+1, -#%4+2]` -/
def P5303697968626922456.Spec : Prop :=
  ∀ n, P5303697968626922456.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P7789133293516993736

`∑{d}[n+1, A151763(#)]`
-/

namespace A005094.P7789133293516993736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A151763 d

end

end A005094.P7789133293516993736

namespace A005094

/-- `∑{d}[n+1, A151763(#)]` -/
def P7789133293516993736.Spec : Prop :=
  ∀ n, P7789133293516993736.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P4911747660011423794

`∑{p}[n+1, A076341(#)]`
-/

namespace A005094.P4911747660011423794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A076341 p

end

end A005094.P4911747660011423794

namespace A005094

/-- `∑{p}[n+1, A076341(#)]` -/
def P4911747660011423794.Spec : Prop :=
  ∀ n, P4911747660011423794.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P5384498360762628200

`∑{p}[n+1, A079635(#)]`
-/

namespace A005094.P5384498360762628200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A079635 p

end

end A005094.P5384498360762628200

namespace A005094

/-- `∑{p}[n+1, A079635(#)]` -/
def P5384498360762628200.Spec : Prop :=
  ∀ n, P5384498360762628200.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P2936323490819678077

`∑{p}[n+1, A101455(#)]`
-/

namespace A005094.P2936323490819678077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A101455 p

end

end A005094.P2936323490819678077

namespace A005094

/-- `∑{p}[n+1, A101455(#)]` -/
def P2936323490819678077.Spec : Prop :=
  ∀ n, P2936323490819678077.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P5089394830047936174

`∑{p}[n+1, A117569(#)]`
-/

namespace A005094.P5089394830047936174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A117569 p

end

end A005094.P5089394830047936174

namespace A005094

/-- `∑{p}[n+1, A117569(#)]` -/
def P5089394830047936174.Spec : Prop :=
  ∀ n, P5089394830047936174.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P4551313068825025111

`∑{p}[n+1, A318608(#)]`
-/

namespace A005094.P4551313068825025111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A318608 p

end

end A005094.P4551313068825025111

namespace A005094

/-- `∑{p}[n+1, A318608(#)]` -/
def P4551313068825025111.Spec : Prop :=
  ∀ n, P4551313068825025111.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P17922238352175722141

`A079635(∏{p}[n+1, #])`
-/

namespace A005094.P17922238352175722141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A005094.P17922238352175722141

namespace A005094

/-- `A079635(∏{p}[n+1, #])` -/
def P17922238352175722141.Spec : Prop :=
  ∀ n, P17922238352175722141.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P16615036388447777177

`A079635(A007947(n+1))`
-/

namespace A005094.P16615036388447777177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A007947 (n + 1)).toNat

end

end A005094.P16615036388447777177

namespace A005094

/-- `A079635(A007947(n+1))` -/
def P16615036388447777177.Spec : Prop :=
  ∀ n, P16615036388447777177.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P17292062954361812920

`A079635(A204455(n+1))`
-/

namespace A005094.P17292062954361812920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A204455 (n + 1)).toNat

end

end A005094.P17292062954361812920

namespace A005094

/-- `A079635(A204455(n+1))` -/
def P17292062954361812920.Spec : Prop :=
  ∀ n, P17292062954361812920.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P2023682267268458732

`A079635(A099985(n+1)/2)`
-/

namespace A005094.P2023682267268458732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2)).toNat

end

end A005094.P2023682267268458732

namespace A005094

/-- `A079635(A099985(n+1)/2)` -/
def P2023682267268458732.Spec : Prop :=
  ∀ n, P2023682267268458732.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P14882296872908976937

`2*A005089(n+1)-A005087(n+1)`
-/

namespace A005094.P14882296872908976937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005089 (n + 1) - A005087 (n + 1)

end

end A005094.P14882296872908976937

namespace A005094

/-- `2*A005089(n+1)-A005087(n+1)` -/
def P14882296872908976937.Spec : Prop :=
  ∀ n, P14882296872908976937.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P2792395261458298950

`A005087(n+1)-2*A005091(n+1)`
-/

namespace A005094.P2792395261458298950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) - 2 * A005091 (n + 1)

end

end A005094.P2792395261458298950

namespace A005094

/-- `A005087(n+1)-2*A005091(n+1)` -/
def P2792395261458298950.Spec : Prop :=
  ∀ n, P2792395261458298950.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P2856501531342320659

`2*A005087(A072436(n+1))-A005087(n+1)`
-/

namespace A005094.P2856501531342320659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005087 (A072436 (n + 1)).toNat - A005087 (n + 1)

end

end A005094.P2856501531342320659

namespace A005094

/-- `2*A005087(A072436(n+1))-A005087(n+1)` -/
def P2856501531342320659.Spec : Prop :=
  ∀ n, P2856501531342320659.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P12716524518486128803

`A005087(n+1)-2*A005087(A072438(n+1))`
-/

namespace A005094.P12716524518486128803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (n + 1) - 2 * A005087 (A072438 (n + 1)).toNat

end

end A005094.P12716524518486128803

namespace A005094

/-- `A005087(n+1)-2*A005087(A072438(n+1))` -/
def P12716524518486128803.Spec : Prop :=
  ∀ n, P12716524518486128803.a n = A005094 (n + 1)

end A005094

/-! ## A005094.P9575621951959886687

`A086275(n+1)-(A005091(n+1)+A001221(n+1))`
-/

namespace A005094.P9575621951959886687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086275 (n + 1) - (A005091 (n + 1) + A001221 (n + 1))

end

end A005094.P9575621951959886687

namespace A005094

/-- `A086275(n+1)-(A005091(n+1)+A001221(n+1))` -/
def P9575621951959886687.Spec : Prop :=
  ∀ n, P9575621951959886687.a n = A005094 (n + 1)

theorem P9575621951959886687.correct : P9575621951959886687.Spec := by
  intro n
  simp only [A005094, Nat.add_sub_cancel, A005094.P9575621951959886687.a, A005094.P4862257646653841086.a, A001221, A001221.P10258181745752134128.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A086275, A086275.P10952436384722837509.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A005094

/-! ## A005094.P1712587272520290085

`A079635(A099985(n+1))`
-/

namespace A005094.P1712587272520290085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079635 (A099985 (n + 1)).toNat

end

end A005094.P1712587272520290085

namespace A005094

/-- `A079635(A099985(n+1))` -/
def P1712587272520290085.Spec : Prop :=
  ∀ n, P1712587272520290085.a n = A005094 (n + 1)

end A005094

/-!
# A005095: a(n) = n! + n.

The programs for A005095, the canonical program `A005095.P54069348865504450` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005095 has offset 0).

The definition of A005095 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+n` (program `A005095.P54069348865504450`, by `A005095.P54069348865504450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005095.P54069348865504450

`n!+n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005095

/-- `n!+n` -/
def P54069348865504450.Spec : Prop :=
  ∀ n, (P54069348865504450.a n : ℤ) = A005095 n

theorem P54069348865504450.correct : P54069348865504450.Spec := by
  intro n
  simp only [A005095]

end A005095

/-! ## A005095.P5883900012717028962

`2*n-(n-n!)`
-/

namespace A005095.P5883900012717028962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.factorial n : ℤ))

end

end A005095.P5883900012717028962

namespace A005095

/-- `2*n-(n-n!)` -/
def P5883900012717028962.Spec : Prop :=
  ∀ n, P5883900012717028962.a n = A005095 n

theorem P5883900012717028962.correct : P5883900012717028962.Spec := by
  intro n
  simp only [A005095, Nat.add_sub_cancel, A005095.P5883900012717028962.a, A005095.P54069348865504450.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A005095

/-! ## A005095.P8712352957905982419

`∏[round(1/acot(n))]+n`
-/

namespace A005095.P8712352957905982419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A005095.P8712352957905982419

namespace A005095

/-- `∏[round(1/acot(n))]+n` -/
def P8712352957905982419.Spec : Prop :=
  ∀ n, P8712352957905982419.a n = A005095 n

end A005095

/-! ## A005095.P131297666411401767

`∏[ceil(abs(γ-n))]+n`
-/

namespace A005095.P131297666411401767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A005095.P131297666411401767

namespace A005095

/-- `∏[ceil(abs(γ-n))]+n` -/
def P131297666411401767.Spec : Prop :=
  ∀ n, P131297666411401767.a n = A005095 n

end A005095

/-! ## A005095.P11427902965092863555

`n*(a(n-1)+2-n)` with `a(0)=1`
-/

namespace A005095.P11427902965092863555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) + (2 - (n : ℤ)))

end

end A005095.P11427902965092863555

namespace A005095

/-- `n*(a(n-1)+2-n)` -/
def P11427902965092863555.Spec : Prop :=
  ∀ n, P11427902965092863555.a n = A005095 n

end A005095

/-! ## A005095.P3834706867549624063

`n*(2-(n-a(n-1)))` with `a(0)=1`
-/

namespace A005095.P3834706867549624063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (2 - ((n : ℤ) - a (n - 1)))

end

end A005095.P3834706867549624063

namespace A005095

/-- `n*(2-(n-a(n-1)))` -/
def P3834706867549624063.Spec : Prop :=
  ∀ n, P3834706867549624063.a n = A005095 n

end A005095

/-! ## A005095.P8114815051602069125

`ceil(A098558(n)/2+n)`
-/

namespace A005095.P8114815051602069125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A098558 n : ℚ) / 2 + (n : ℚ)⌉

end

end A005095.P8114815051602069125

namespace A005095

/-- `ceil(A098558(n)/2+n)` -/
def P8114815051602069125.Spec : Prop :=
  ∀ n, P8114815051602069125.a n = A005095 n

end A005095

/-! ## A005095.P101329829755642586

`(A066186(n)+A053529(n))/A000041(n)`
-/

namespace A005095.P101329829755642586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066186 n + A053529 n : ℚ) / (A000041 n : ℚ)

end

end A005095.P101329829755642586

namespace A005095

/-- `(A066186(n)+A053529(n))/A000041(n)` -/
def P101329829755642586.Spec : Prop :=
  ∀ n, P101329829755642586.a n = (A005095 n : ℚ)

end A005095

/-!
# A005096: a(n) = n! - n.

The programs for A005096, the canonical program `A005096.P5233922688840463728` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005096 has offset 0).

The definition of A005096 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-n` (program `A005096.P5233922688840463728`, by `A005096.P5233922688840463728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A005096.P5233922688840463728

`n!-n`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A005096

/-- `n!-n` -/
def P5233922688840463728.Spec : Prop :=
  ∀ n, P5233922688840463728.a n = A005096 n

theorem P5233922688840463728.correct : P5233922688840463728.Spec := by
  intro n
  simp only [A005096]

end A005096

/-! ## A005096.P15004356765494634572

`n*a(n-1)+n*(n-2)` with `a(0)=1`
-/

namespace A005096.P15004356765494634572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) * ((n : ℤ) - 2)

end

end A005096.P15004356765494634572

namespace A005096

/-- `n*a(n-1)+n*(n-2)` -/
def P15004356765494634572.Spec : Prop :=
  ∀ n, P15004356765494634572.a n = A005096 n

end A005096

/-! ## A005096.P12257852113707233053

`A000142(n)-n`
-/

namespace A005096.P12257852113707233053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (n : ℤ)

end

end A005096.P12257852113707233053

namespace A005096

/-- `A000142(n)-n` -/
def P12257852113707233053.Spec : Prop :=
  ∀ n, P12257852113707233053.a n = A005096 n

end A005096

/-! ## A005096.P577781431040130263

`tan(-atan(n))+n!`
-/

namespace A005096.P577781431040130263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (-Real.arctan (n : ℝ)) + (Nat.factorial n : ℝ)

end

end A005096.P577781431040130263

namespace A005096

/-- `tan(-atan(n))+n!` -/
def P577781431040130263.Spec : Prop :=
  ∀ n, P577781431040130263.a n = (A005096 n : ℝ)

theorem P577781431040130263.correct : P577781431040130263.Spec := by
  intro n
  simp only [A005096, Nat.add_sub_cancel, A005096.P577781431040130263.a, A005096.P5233922688840463728.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A005096

/-! ## A005096.P15553440603900767490

`cot(-acot(n))+n!`
-/

namespace A005096.P15553440603900767490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-SequenceMachineLib.acot (n : ℝ)) + (Nat.factorial n : ℝ)

end

end A005096.P15553440603900767490

namespace A005096

/-- `cot(-acot(n))+n!` -/
def P15553440603900767490.Spec : Prop :=
  ∀ n, P15553440603900767490.a n = (A005096 n : ℝ)

end A005096

/-! ## A005096.P13959798428424044065

`∏[round(1/acot(n))]-n`
-/

namespace A005096.P13959798428424044065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005096.P13959798428424044065

namespace A005096

/-- `∏[round(1/acot(n))]-n` -/
def P13959798428424044065.Spec : Prop :=
  ∀ n, P13959798428424044065.a n = A005096 n

end A005096

/-! ## A005096.P8203753110415739940

`∏[ceil(abs(γ-n))]-n`
-/

namespace A005096.P8203753110415739940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A005096.P8203753110415739940

namespace A005096

/-- `∏[ceil(abs(γ-n))]-n` -/
def P8203753110415739940.Spec : Prop :=
  ∀ n, P8203753110415739940.a n = A005096 n

end A005096

/-! ## A005096.P17744277323897653463

`abs(xor(-1, n!)+n+1)`
-/

namespace A005096.P17744277323897653463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (Nat.factorial n : ℤ) + (n + 1 : ℤ)|

end

end A005096.P17744277323897653463

namespace A005096

/-- `abs(xor(-1, n!)+n+1)` -/
def P17744277323897653463.Spec : Prop :=
  ∀ n, P17744277323897653463.a n = A005096 n

end A005096

/-! ## A005096.P1687457221572868346

`-(xor(-1, n!)+n+1)`
-/

namespace A005096.P1687457221572868346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) (Nat.factorial n : ℤ) + (n + 1 : ℤ))

end

end A005096.P1687457221572868346

namespace A005096

/-- `-(xor(-1, n!)+n+1)` -/
def P1687457221572868346.Spec : Prop :=
  ∀ n, P1687457221572868346.a n = A005096 n

end A005096

/-! ## A005096.P5076208617210541907

`(n-2+a(n-1))*n` with `a(0)=1`
-/

namespace A005096.P5076208617210541907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 2 + a (n - 1)) * (n : ℤ)

end

end A005096.P5076208617210541907

namespace A005096

/-- `(n-2+a(n-1))*n` -/
def P5076208617210541907.Spec : Prop :=
  ∀ n, P5076208617210541907.a n = A005096 n

end A005096

/-!
# A005097: (Odd primes - 1)/2.

The programs for A005097, the canonical program `A005097.P2146150579650678334` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005097 has offset 1).

The definition of A005097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A005097.P7567747448604144294

`(A065091(n+1)-1)/2`
-/

namespace A005097.P7567747448604144294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) - 1 : ℚ) / 2

end

end A005097.P7567747448604144294

namespace A005097

/-- `(A065091(n+1)-1)/2` -/
def P7567747448604144294.Spec : Prop :=
  ∀ n, P7567747448604144294.a n = (A005097 (n + 1) : ℚ)

end A005097

/-! ## A005097.P2146150579650678334

`A130290(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A005097

/-- `A130290(n+2)` -/
def P2146150579650678334.Spec : Prop :=
  ∀ n, P2146150579650678334.a n = A005097 (n + 1)

theorem P2146150579650678334.correct : P2146150579650678334.Spec := by
  intro n
  simp only [A005097, Nat.add_sub_cancel]

end A005097

/-! ## A005097.P9051180586551901309

`A006093(n+2)/2`
-/

namespace A005097.P9051180586551901309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / 2

end

end A005097.P9051180586551901309

namespace A005097

/-- `A006093(n+2)/2` -/
def P9051180586551901309.Spec : Prop :=
  ∀ n, P9051180586551901309.a n = (A005097 (n + 1) : ℚ)

end A005097

/-! ## A005097.P3867042693194842645

`A000010(A000040(n+2))/2`
-/

namespace A005097.P3867042693194842645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000040 (n + 2)).toNat : ℚ) / 2

end

end A005097.P3867042693194842645

namespace A005097

/-- `A000010(A000040(n+2))/2` -/
def P3867042693194842645.Spec : Prop :=
  ∀ n, P3867042693194842645.a n = (A005097 (n + 1) : ℚ)

end A005097

/-! ## A005097.P7682359359327719112

`floor(p?[2*n+1]/2)`
-/

namespace A005097.P7682359359327719112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋

end

end A005097.P7682359359327719112

namespace A005097

/-- `floor(p?[2*n+1]/2)` -/
def P7682359359327719112.Spec : Prop :=
  ∀ n, P7682359359327719112.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P12188984138038869322

`floor(cosh(log(p?[2*n+1])))`
-/

namespace A005097.P12188984138038869322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌋

end

end A005097.P12188984138038869322

namespace A005097

/-- `floor(cosh(log(p?[2*n+1])))` -/
def P12188984138038869322.Spec : Prop :=
  ∀ n, P12188984138038869322.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P8861209219310118103

`floor(sinh(log(p?[2*n+1])))`
-/

namespace A005097.P8861209219310118103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ))⌋

end

end A005097.P8861209219310118103

namespace A005097

/-- `floor(sinh(log(p?[2*n+1])))` -/
def P8861209219310118103.Spec : Prop :=
  ∀ n, P8861209219310118103.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P858445582319575488

`round(sinh(log(p?[2*n+1])))`
-/

namespace A005097.P858445582319575488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ)))

end

end A005097.P858445582319575488

namespace A005097

/-- `round(sinh(log(p?[2*n+1])))` -/
def P858445582319575488.Spec : Prop :=
  ∀ n, P858445582319575488.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P8779346716583634951

`(p?[2*n+1]-1)/2`
-/

namespace A005097.P8779346716583634951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 2

end

end A005097.P8779346716583634951

namespace A005097

/-- `(p?[2*n+1]-1)/2` -/
def P8779346716583634951.Spec : Prop :=
  ∀ n, P8779346716583634951.a n = (A005097 (n + 1) : ℚ)

end A005097

/-! ## A005097.P881664693674621834

`xor(1, p?[2*n+1])/2`
-/

namespace A005097.P881664693674621834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A005097.P881664693674621834

namespace A005097

/-- `xor(1, p?[2*n+1])/2` -/
def P881664693674621834.Spec : Prop :=
  ∀ n, P881664693674621834.a n = (A005097 (n + 1) : ℚ)

end A005097

/-! ## A005097.P372712292908913906

`round(cot(2/p?[2*n+1]))`
-/

namespace A005097.P372712292908913906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) : ℝ))

end

end A005097.P372712292908913906

namespace A005097

/-- `round(cot(2/p?[2*n+1]))` -/
def P372712292908913906.Spec : Prop :=
  ∀ n, P372712292908913906.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P9794324479450542547

`A067076(n+1)+1`
-/

namespace A005097.P9794324479450542547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 1

end

end A005097.P9794324479450542547

namespace A005097

/-- `A067076(n+1)+1` -/
def P9794324479450542547.Spec : Prop :=
  ∀ n, P9794324479450542547.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P7545776767111514947

`A098090(n+1)-2`
-/

namespace A005097.P7545776767111514947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 2

end

end A005097.P7545776767111514947

namespace A005097

/-- `A098090(n+1)-2` -/
def P7545776767111514947.Spec : Prop :=
  ∀ n, P7545776767111514947.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P10866458427115844785

`A089192(n+1)-4`
-/

namespace A005097.P10866458427115844785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 4

end

end A005097.P10866458427115844785

namespace A005097

/-- `A089192(n+1)-4` -/
def P10866458427115844785.Spec : Prop :=
  ∀ n, P10866458427115844785.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P12195044823717693758

`A097363(n+1)-7`
-/

namespace A005097.P12195044823717693758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 7

end

end A005097.P12195044823717693758

namespace A005097

/-- `A097363(n+1)-7` -/
def P12195044823717693758.Spec : Prop :=
  ∀ n, P12195044823717693758.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P13778110459552940646

`A175540(n+1)-n`
-/

namespace A005097.P13778110459552940646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) - (n : ℤ)

end

end A005097.P13778110459552940646

namespace A005097

/-- `A175540(n+1)-n` -/
def P13778110459552940646.Spec : Prop :=
  ∀ n, P13778110459552940646.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P13890390393690117915

`A008507(n+1)+n+1`
-/

namespace A005097.P13890390393690117915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n + 1 : ℤ)

end

end A005097.P13890390393690117915

namespace A005097

/-- `A008507(n+1)+n+1` -/
def P13890390393690117915.Spec : Prop :=
  ∀ n, P13890390393690117915.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P10641376855366984907

`A028334(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A005097.P10641376855366984907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028334 (n + 1) + a (n - 1)

end

end A005097.P10641376855366984907

namespace A005097

/-- `A028334(n+1)+a(n-1)` -/
def P10641376855366984907.Spec : Prop :=
  ∀ n, P10641376855366984907.a n = A005097 (n + 1)

end A005097

/-! ## A005097.P17553979952312209995

`∑[A078898(A001223(n+1))]`
-/

namespace A005097.P17553979952312209995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A001223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A005097.P17553979952312209995

namespace A005097

/-- `∑[A078898(A001223(n+1))]` -/
def P17553979952312209995.Spec : Prop :=
  ∀ n, P17553979952312209995.a n = A005097 (n + 1)

end A005097

/-!
# A005098: Numbers k such that 4k + 1 is prime.

The programs for A005098, the canonical program `A005098.P10761952897232169496` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005098 has offset 1).

The definition of A005098 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005098.P10761952897232169496

`(A002144(n+1)-1)/4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005098

/-- `(A002144(n+1)-1)/4` -/
def P10761952897232169496.Spec : Prop :=
  ∀ n, P10761952897232169496.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P6046776700713608871

`(p?[4*n+1]-1)/4`
-/

namespace A005098.P6046776700713608871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℚ) / 4

end

end A005098.P6046776700713608871

namespace A005098

/-- `(p?[4*n+1]-1)/4` -/
def P6046776700713608871.Spec : Prop :=
  ∀ n, P6046776700713608871.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P11082951874071842411

`floor(p?[2*n+2*n+1]/4)`
-/

namespace A005098.P11082951874071842411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4⌋

end

end A005098.P11082951874071842411

namespace A005098

/-- `floor(p?[2*n+2*n+1]/4)` -/
def P11082951874071842411.Spec : Prop :=
  ∀ n, P11082951874071842411.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P5201325497806517855

`round(p?[2*n+2*n+1]/4)`
-/

namespace A005098.P5201325497806517855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4)

end

end A005098.P5201325497806517855

namespace A005098

/-- `round(p?[2*n+2*n+1]/4)` -/
def P5201325497806517855.Spec : Prop :=
  ∀ n, P5201325497806517855.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P14651803961918472189

`A111215(n+1)+1`
-/

namespace A005098.P14651803961918472189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) + 1

end

end A005098.P14651803961918472189

namespace A005098

/-- `A111215(n+1)+1` -/
def P14651803961918472189.Spec : Prop :=
  ∀ n, P14651803961918472189.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P7998194329965439229

`A152680(n+1)/4`
-/

namespace A005098.P7998194329965439229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152680 (n + 1) : ℚ) / 4

end

end A005098.P7998194329965439229

namespace A005098

/-- `A152680(n+1)/4` -/
def P7998194329965439229.Spec : Prop :=
  ∀ n, P7998194329965439229.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P2171442464980899931

`floor(A002144(n+1)/4)`
-/

namespace A005098.P2171442464980899931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002144 (n + 1) : ℚ) / 4⌋

end

end A005098.P2171442464980899931

namespace A005098

/-- `floor(A002144(n+1)/4)` -/
def P2171442464980899931.Spec : Prop :=
  ∀ n, P2171442464980899931.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P5199190542909741063

`(A119681(n+1)-1)/2`
-/

namespace A005098.P5199190542909741063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119681 (n + 1) - 1 : ℚ) / 2

end

end A005098.P5199190542909741063

namespace A005098

/-- `(A119681(n+1)-1)/2` -/
def P5199190542909741063.Spec : Prop :=
  ∀ n, P5199190542909741063.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P12956178286475459391

`(A089255(n+1)-3)/2`
-/

namespace A005098.P12956178286475459391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089255 (n + 1) - 3 : ℚ) / 2

end

end A005098.P12956178286475459391

namespace A005098

/-- `(A089255(n+1)-3)/2` -/
def P12956178286475459391.Spec : Prop :=
  ∀ n, P12956178286475459391.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P16168413396632877822

`A082074(n)+a(n-1)` with `a(0)=1`
-/

namespace A005098.P16168413396632877822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082074 n + a (n - 1)

end

end A005098.P16168413396632877822

namespace A005098

/-- `A082074(n)+a(n-1)` -/
def P16168413396632877822.Spec : Prop :=
  ∀ n, P16168413396632877822.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P16919443603818031526

`floor(sqrt(A171555(n+1))/2)`
-/

namespace A005098.P16919443603818031526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A171555 (n + 1) : ℝ) / 2⌋

end

end A005098.P16919443603818031526

namespace A005098

/-- `floor(sqrt(A171555(n+1))/2)` -/
def P16919443603818031526.Spec : Prop :=
  ∀ n, P16919443603818031526.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P130946185140476246

`A118480(n+1)+A005099(n+1)`
-/

namespace A005098.P130946185140476246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118480 (n + 1) + A005099 (n + 1)

end

end A005098.P130946185140476246

namespace A005098

/-- `A118480(n+1)+A005099(n+1)` -/
def P130946185140476246.Spec : Prop :=
  ∀ n, P130946185140476246.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P12488226041762187527

`A022758(n+1)-A005099(n+1)`
-/

namespace A005098.P12488226041762187527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 1) - A005099 (n + 1)

end

end A005098.P12488226041762187527

namespace A005098

/-- `A022758(n+1)-A005099(n+1)` -/
def P12488226041762187527.Spec : Prop :=
  ∀ n, P12488226041762187527.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P9064387368277494485

`A171555(n+1)/A002144(n+1)`
-/

namespace A005098.P9064387368277494485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171555 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A005098.P9064387368277494485

namespace A005098

/-- `A171555(n+1)/A002144(n+1)` -/
def P9064387368277494485.Spec : Prop :=
  ∀ n, P9064387368277494485.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P14827934655599187913

`gcd(A152680(n+1), A171555(n+1))`
-/

namespace A005098.P14827934655599187913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152680 (n + 1)) (A171555 (n + 1))

end

end A005098.P14827934655599187913

namespace A005098

/-- `gcd(A152680(n+1), A171555(n+1))` -/
def P14827934655599187913.Spec : Prop :=
  ∀ n, (P14827934655599187913.a n : ℤ) = A005098 (n + 1)

end A005098

/-! ## A005098.P8816572242161529618

`A171555(n+1)/A002313(n+2)`
-/

namespace A005098.P8816572242161529618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171555 (n + 1) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A005098.P8816572242161529618

namespace A005098

/-- `A171555(n+1)/A002313(n+2)` -/
def P8816572242161529618.Spec : Prop :=
  ∀ n, P8816572242161529618.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P7294843807629275277

`A171555(n+1)/A280084(n+2)`
-/

namespace A005098.P7294843807629275277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171555 (n + 1) : ℚ) / (A280084 (n + 2) : ℚ)

end

end A005098.P7294843807629275277

namespace A005098

/-- `A171555(n+1)/A280084(n+2)` -/
def P7294843807629275277.Spec : Prop :=
  ∀ n, P7294843807629275277.a n = (A005098 (n + 1) : ℚ)

end A005098

/-! ## A005098.P3390178850700233724

`lt[A237053(2*n), 2]`
-/

namespace A005098.P3390178850700233724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A005098.P3390178850700233724

namespace A005098

/-- `lt[A237053(2*n), 2]` -/
def P3390178850700233724.Spec : Prop :=
  ∀ n, (P3390178850700233724.a n : ℤ) = A005098 (n + 1)

end A005098

/-! ## A005098.P15307506907736590232

`A075518(A080147(n+1))`
-/

namespace A005098.P15307506907736590232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A080147 (n + 1)).toNat

end

end A005098.P15307506907736590232

namespace A005098

/-- `A075518(A080147(n+1))` -/
def P15307506907736590232.Spec : Prop :=
  ∀ n, P15307506907736590232.a n = A005098 (n + 1)

end A005098

/-! ## A005098.P10913419793749232985

`A024698(A138970(n+1))`
-/

namespace A005098.P10913419793749232985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024698 (A138970 (n + 1)).toNat

end

end A005098.P10913419793749232985

namespace A005098

/-- `A024698(A138970(n+1))` -/
def P10913419793749232985.Spec : Prop :=
  ∀ n, P10913419793749232985.a n = A005098 (n + 1)

end A005098

/-!
# A005099: (( Primes == -1 (mod 4) ) + 1)/4.

The programs for A005099, the canonical program `A005099.P16814233129974845155` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A005099 has offset 1).

The definition of A005099 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A005099.P16814233129974845155

`(A002145(n+1)+1)/4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A005099

/-- `(A002145(n+1)+1)/4` -/
def P16814233129974845155.Spec : Prop :=
  ∀ n, P16814233129974845155.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P15177094611099918284

`round(p?[4*n-1]/4)`
-/

namespace A005099.P15177094611099918284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4)

end

end A005099.P15177094611099918284

namespace A005099

/-- `round(p?[4*n-1]/4)` -/
def P15177094611099918284.Spec : Prop :=
  ∀ n, P15177094611099918284.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P8329766982804751854

`(p?[4*n-1]+1)/4`
-/

namespace A005099.P8329766982804751854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 4

end

end A005099.P8329766982804751854

namespace A005099

/-- `(p?[4*n-1]+1)/4` -/
def P8329766982804751854.Spec : Prop :=
  ∀ n, P8329766982804751854.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P3062974914423273806

`A095278(n+1)+1`
-/

namespace A005099.P3062974914423273806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + 1

end

end A005099.P3062974914423273806

namespace A005099

/-- `A095278(n+1)+1` -/
def P3062974914423273806.Spec : Prop :=
  ∀ n, P3062974914423273806.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P4215975002704057397

`A089986(n+1)+2`
-/

namespace A005099.P4215975002704057397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 2

end

end A005099.P4215975002704057397

namespace A005099

/-- `A089986(n+1)+2` -/
def P4215975002704057397.Spec : Prop :=
  ∀ n, P4215975002704057397.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P14364245273819540979

`A156287(n+1)-1`
-/

namespace A005099.P14364245273819540979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 1

end

end A005099.P14364245273819540979

namespace A005099

/-- `A156287(n+1)-1` -/
def P14364245273819540979.Spec : Prop :=
  ∀ n, P14364245273819540979.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P8401520074479885000

`A090658(n+1)/4`
-/

namespace A005099.P8401520074479885000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 4

end

end A005099.P8401520074479885000

namespace A005099

/-- `A090658(n+1)/4` -/
def P8401520074479885000.Spec : Prop :=
  ∀ n, P8401520074479885000.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P10931608205613365939

`ceil(A002145(n+1)/4)`
-/

namespace A005099.P10931608205613365939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002145 (n + 1) : ℚ) / 4⌉

end

end A005099.P10931608205613365939

namespace A005099

/-- `ceil(A002145(n+1)/4)` -/
def P10931608205613365939.Spec : Prop :=
  ∀ n, P10931608205613365939.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P17276863818359710659

`A087915(n+1)/2+1`
-/

namespace A005099.P17276863818359710659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087915 (n + 1) : ℚ) / 2 + 1

end

end A005099.P17276863818359710659

namespace A005099

/-- `A087915(n+1)/2+1` -/
def P17276863818359710659.Spec : Prop :=
  ∀ n, P17276863818359710659.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P12300151282352755238

`(A104635(n+1)+1)/2`
-/

namespace A005099.P12300151282352755238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) + 1 : ℚ) / 2

end

end A005099.P12300151282352755238

namespace A005099

/-- `(A104635(n+1)+1)/2` -/
def P12300151282352755238.Spec : Prop :=
  ∀ n, P12300151282352755238.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P15327156757366564746

`A089257(n+1)/2-1`
-/

namespace A005099.P15327156757366564746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089257 (n + 1) : ℚ) / 2 - 1

end

end A005099.P15327156757366564746

namespace A005099

/-- `A089257(n+1)/2-1` -/
def P15327156757366564746.Spec : Prop :=
  ∀ n, P15327156757366564746.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P18378015421389126855

`(A090670(n+1)-1)/2`
-/

namespace A005099.P18378015421389126855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090670 (n + 1) - 1 : ℚ) / 2

end

end A005099.P18378015421389126855

namespace A005099

/-- `(A090670(n+1)-1)/2` -/
def P18378015421389126855.Spec : Prop :=
  ∀ n, P18378015421389126855.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P7929853792318866881

`(A190105(n+1)+1)/3`
-/

namespace A005099.P7929853792318866881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) + 1 : ℚ) / 3

end

end A005099.P7929853792318866881

namespace A005099

/-- `(A190105(n+1)+1)/3` -/
def P7929853792318866881.Spec : Prop :=
  ∀ n, P7929853792318866881.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P719856151237223434

`(A089193(n+1)-3)/2`
-/

namespace A005099.P719856151237223434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089193 (n + 1) - 3 : ℚ) / 2

end

end A005099.P719856151237223434

namespace A005099

/-- `(A089193(n+1)-3)/2` -/
def P719856151237223434.Spec : Prop :=
  ∀ n, P719856151237223434.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P3651262200489570647

`(A089217(n+1)-1)/4`
-/

namespace A005099.P3651262200489570647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089217 (n + 1) - 1 : ℚ) / 4

end

end A005099.P3651262200489570647

namespace A005099

/-- `(A089217(n+1)-1)/4` -/
def P3651262200489570647.Spec : Prop :=
  ∀ n, P3651262200489570647.a n = (A005099 (n + 1) : ℚ)

end A005099

/-! ## A005099.P15503603470475552384

`A082076(n)+a(n-1)` with `a(0)=1`
-/

namespace A005099.P15503603470475552384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A082076 n + a (n - 1)

end

end A005099.P15503603470475552384

namespace A005099

/-- `A082076(n)+a(n-1)` -/
def P15503603470475552384.Spec : Prop :=
  ∀ n, P15503603470475552384.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P5569054859828170925

`A022758(n+1)-A005098(n+1)`
-/

namespace A005099.P5569054859828170925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 1) - A005098 (n + 1)

end

end A005099.P5569054859828170925

namespace A005099

/-- `A022758(n+1)-A005098(n+1)` -/
def P5569054859828170925.Spec : Prop :=
  ∀ n, P5569054859828170925.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P16842830274566027995

`A005098(n+1)-A118480(n+1)`
-/

namespace A005099.P16842830274566027995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - A118480 (n + 1)

end

end A005099.P16842830274566027995

namespace A005099

/-- `A005098(n+1)-A118480(n+1)` -/
def P16842830274566027995.Spec : Prop :=
  ∀ n, P16842830274566027995.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P4665978556029256574

`A002145(n+1)-A190105(n+1)`
-/

namespace A005099.P4665978556029256574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) - A190105 (n + 1)

end

end A005099.P4665978556029256574

namespace A005099

/-- `A002145(n+1)-A190105(n+1)` -/
def P4665978556029256574.Spec : Prop :=
  ∀ n, P4665978556029256574.a n = A005099 (n + 1)

end A005099

/-! ## A005099.P12149974530732807119

`A190105(n+1)-A104635(n+1)`
-/

namespace A005099.P12149974530732807119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) - A104635 (n + 1)

end

end A005099.P12149974530732807119

namespace A005099

/-- `A190105(n+1)-A104635(n+1)` -/
def P12149974530732807119.Spec : Prop :=
  ∀ n, P12149974530732807119.a n = A005099 (n + 1)

end A005099

