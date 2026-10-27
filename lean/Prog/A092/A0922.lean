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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A092200: Expansion of (1+2x)/((1-x)(1-x^3)).

The programs for A092200, the canonical program `A092200.P10169269576706140299` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092200 has offset 0).

The definition of A092200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-x^3+x^4))` (program `A092200.P10169269576706140299`, by `A092200.P10169269576706140299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092200.P10169269576706140299

`ogf((1+2x)/(1-x-x^3+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092200

/-- `ogf((1+2x)/(1-x-x^3+x^4))` -/
def P10169269576706140299.Spec : Prop :=
  ∀ n, P10169269576706140299.a n = A092200 n

theorem P10169269576706140299.correct : P10169269576706140299.Spec := by
  intro n
  simp only [A092200]

end A092200

/-! ## A092200.P18220711655585983695

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=4`
-/

namespace A092200.P18220711655585983695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3, 4] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A092200.P18220711655585983695

namespace A092200

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P18220711655585983695.Spec : Prop :=
  ∀ n, P18220711655585983695.a n = A092200 n

end A092200

/-! ## A092200.P6209655590262245550

`4/3+n+2*cos(π*2*(n-1)/3)/3`
-/

namespace A092200.P6209655590262245550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 : ℚ) / 3 + (n : ℚ) : ℝ) + 2 * Real.cos (Real.pi * 2 * ((n : ℤ) - 1 : ℝ) / 3) / 3

end

end A092200.P6209655590262245550

namespace A092200

/-- `4/3+n+2*cos(π*2*(n-1)/3)/3` -/
def P6209655590262245550.Spec : Prop :=
  ∀ n, P6209655590262245550.a n = (A092200 n : ℝ)

end A092200

/-! ## A092200.P12287735631008071847

`∑[(n+1)%3]`
-/

namespace A092200.P12287735631008071847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P12287735631008071847

namespace A092200

/-- `∑[(n+1)%3]` -/
def P12287735631008071847.Spec : Prop :=
  ∀ n, (P12287735631008071847.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P4221997107164055403

`C(2, n%3)+n`
-/

namespace A092200.P4221997107164055403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3) + n

end

end A092200.P4221997107164055403

namespace A092200

/-- `C(2, n%3)+n` -/
def P4221997107164055403.Spec : Prop :=
  ∀ n, (P4221997107164055403.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P10001639118189529356

`((2*n)%3)!+n`
-/

namespace A092200.P10001639118189529356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n % 3) + n

end

end A092200.P10001639118189529356

namespace A092200

/-- `((2*n)%3)!+n` -/
def P10001639118189529356.Spec : Prop :=
  ∀ n, (P10001639118189529356.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P10387371895163310570

`∑[2-Δ[n²]%3]`
-/

namespace A092200.P10387371895163310570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P10387371895163310570

namespace A092200

/-- `∑[2-Δ[n²]%3]` -/
def P10387371895163310570.Spec : Prop :=
  ∀ n, P10387371895163310570.a n = A092200 n

end A092200

/-! ## A092200.P6341961040742522629

`dr(∑[n]²+1)+n`
-/

namespace A092200.P6341961040742522629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℤ) + n

end

end A092200.P6341961040742522629

namespace A092200

/-- `dr(∑[n]²+1)+n` -/
def P6341961040742522629.Spec : Prop :=
  ∀ n, (P6341961040742522629.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P8498913864453032344

`a(n-3)+3` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A092200.P8498913864453032344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 3) + 3

end

end A092200.P8498913864453032344

namespace A092200

/-- `a(n-3)+3` -/
def P8498913864453032344.Spec : Prop :=
  ∀ n, (P8498913864453032344.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P1517856037215196480

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A092200.P1517856037215196480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P1517856037215196480

namespace A092200

/-- `∑[abs(a(n-3))]` -/
def P1517856037215196480.Spec : Prop :=
  ∀ n, (P1517856037215196480.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P4369340905366196580

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A092200.P4369340905366196580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P4369340905366196580

namespace A092200

/-- `∑[dr(a(n-3))]` -/
def P4369340905366196580.Spec : Prop :=
  ∀ n, (P4369340905366196580.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P17851447537815934622

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A092200.P17851447537815934622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P17851447537815934622

namespace A092200

/-- `∑[floor(a(n-3))]` -/
def P17851447537815934622.Spec : Prop :=
  ∀ n, (P17851447537815934622.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P1646618204571251842

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A092200.P1646618204571251842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P1646618204571251842

namespace A092200

/-- `∑[ceil(a(n-3))]` -/
def P1646618204571251842.Spec : Prop :=
  ∀ n, (P1646618204571251842.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P8861041599417638012

`∑[round(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A092200.P8861041599417638012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P8861041599417638012

namespace A092200

/-- `∑[round(a(n-3))]` -/
def P8861041599417638012.Spec : Prop :=
  ∀ n, (P8861041599417638012.a n : ℤ) = A092200 n

end A092200

/-! ## A092200.P8625682090062464941

`∑[C(2, a(n-1)²)]` with `a(0)=1`
-/

namespace A092200.P8625682090062464941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose 2 (f1 (n - 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092200.P8625682090062464941

namespace A092200

/-- `∑[C(2, a(n-1)²)]` -/
def P8625682090062464941.Spec : Prop :=
  ∀ n, (P8625682090062464941.a n : ℤ) = A092200 n

end A092200

/-!
# A092201: Molien series for 16-dimensional group of structure O_{4}^{+}(2) and order 72, corresponding to genus 2 complete weight enumerators of Hermitian self-dual GF(2)-linear codes over GF(4).

The programs for A092201, there is no canonical definition to state claims against.
-/

/-! ## A092201.P3992298540728588233

`A220496(A018102(n))`
-/

namespace A092201.P3992298540728588233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (A018102 n).toNat

end

end A092201.P3992298540728588233

/-!
# A092202: Expansion of (x - x^3) / (1 - x^5) in powers of x.

The programs for A092202, the canonical program `A092202.P11242649411789298935` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092202 has offset 0).

The definition of A092202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^3)/(1-x^5))` (program `A092202.P11242649411789298935`, by `A092202.P11242649411789298935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092202.P11242649411789298935

`ogf((x-x^3)/(1-x^5))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092202

/-- `ogf((x-x^3)/(1-x^5))` -/
def P11242649411789298935.Spec : Prop :=
  ∀ n, P11242649411789298935.a n = A092202 n

theorem P11242649411789298935.correct : P11242649411789298935.Spec := by
  intro n
  simp only [A092202]

end A092202

/-!
# A092203: Molien series for 16-dimensional group of structure 2^4.O_{4}^{+}(F_2) = 2^4.(S_3 X S_3).2 and order 1152, corresponding to genus 2 complete weight enumerators of Hermitian self-dual GF(2)-linear codes over GF(4) containing the all-ones vector.

The programs for A092203, there is no canonical definition to state claims against.
-/

/-! ## A092203.P13165858793193288026

`A324769(A006906(n))`
-/

namespace A092203.P13165858793193288026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324769 (A006906 n).toNat

end

end A092203.P13165858793193288026

/-! ## A092203.P12474501841152856032

`A160512(A215979(n))`
-/

namespace A092203.P12474501841152856032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160512 (A215979 n).toNat

end

end A092203.P12474501841152856032

/-! ## A092203.P10888634180927427648

`A160512(A215980(n))`
-/

namespace A092203.P10888634180927427648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160512 (A215980 (n + 10)).toNat

end

end A092203.P10888634180927427648

/-!
# A092205: Number of units in the imaginary quadratic field Q(sqrt(-n)).

The programs for A092205, there is no canonical definition to state claims against.
-/

/-! ## A092205.P13669880212839838123

`gcd(12, 11*A005875(n+1)+2)`
-/

namespace A092205.P13669880212839838123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (11 * A005875 (n + 1) + 2)

end

end A092205.P13669880212839838123

/-! ## A092205.P4058687897291920720

`A236213(A007913(n+1))`
-/

namespace A092205.P4058687897291920720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (A007913 (n + 1)).toNat

end

end A092205.P4058687897291920720

/-! ## A092205.P4686978253114058131

`A236213(A335423(n+1))`
-/

namespace A092205.P4686978253114058131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236213 (A335423 (n + 1)).toNat

end

end A092205.P4686978253114058131

/-! ## A092205.P4644806464244015232

`A343461(A204993(n+1))`
-/

namespace A092205.P4644806464244015232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343461 (A204993 (n + 1)).toNat

end

end A092205.P4644806464244015232

/-! ## A092205.P458511737117739682

`2*A058306(Δ[A046092(n)])`
-/

namespace A092205.P458511737117739682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058306 (f1 (n + 1) - f1 n).toNat

end

end A092205.P458511737117739682

/-! ## A092205.P17520741226546668078

`2*A058306(A008574(n+1))`
-/

namespace A092205.P17520741226546668078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058306 (A008574 (n + 1)).toNat

end

end A092205.P17520741226546668078

/-! ## A092205.P2098383642059072390

`A005843(A058306(4*(n+1)))`
-/

namespace A092205.P2098383642059072390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A058306 (4 * (n + 1))).toNat

end

end A092205.P2098383642059072390

/-! ## A092205.P11975782755567297729

`A001222(4^A058306(A008574(n+1)))`
-/

namespace A092205.P11975782755567297729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A058306 (A008574 (n + 1)).toNat : ℤ))).toNat

end

end A092205.P11975782755567297729

/-! ## A092205.P6695868165478524123

`gcd(2-A005875(n+1), A071611(A005875(n+1)+1))`
-/

namespace A092205.P6695868165478524123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A005875 (n + 1)) (A071611 (A005875 (n + 1) + 1).toNat)

end

end A092205.P6695868165478524123

/-!
# A092206: Positive integers that are not of the form n^2 or 3n^2.

The programs for A092206, the canonical program `A092206.P7989034121377248669` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092206 has offset 1).

The definition of A092206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092206.P7989034121377248669

`comp[∪[3*n², n²]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092206

/-- `comp[∪[3*n², n²]]` -/
def P7989034121377248669.Spec : Prop :=
  ∀ n, (P7989034121377248669.a n : ℤ) = A092206 (n + 1)

theorem P7989034121377248669.correct : P7989034121377248669.Spec := by
  intro n
  simp only [A092206, Nat.add_sub_cancel]

end A092206

/-! ## A092206.P11693431630197438178

`comp[Δ[(n%3*floor(n/3))²]]`
-/

namespace A092206.P11693431630197438178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n % 3 : ℕ) : ℤ) * ⌊(n : ℚ) / 3⌋) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P11693431630197438178

namespace A092206

/-- `comp[Δ[(n%3*floor(n/3))²]]` -/
def P11693431630197438178.Spec : Prop :=
  ∀ n, (P11693431630197438178.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P10165599384883553894

`comp[Δ[A029906(n)²]]`
-/

namespace A092206.P10165599384883553894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029906 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P10165599384883553894

namespace A092206

/-- `comp[Δ[A029906(n)²]]` -/
def P10165599384883553894.Spec : Prop :=
  ∀ n, (P10165599384883553894.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P16691789191477744845

`comp[Δ[A115273(n)²]]`
-/

namespace A092206.P16691789191477744845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115273 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P16691789191477744845

namespace A092206

/-- `comp[Δ[A115273(n)²]]` -/
def P16691789191477744845.Spec : Prop :=
  ∀ n, (P16691789191477744845.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P12845735507116969131

`eq[0, A145377(n+2)]+2`
-/

namespace A092206.P12845735507116969131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A092206.P12845735507116969131

namespace A092206

/-- `eq[0, A145377(n+2)]+2` -/
def P12845735507116969131.Spec : Prop :=
  ∀ n, (P12845735507116969131.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P17009905030301973173

`lt[A145377(n+1), 1]+1`
-/

namespace A092206.P17009905030301973173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A092206.P17009905030301973173

namespace A092206

/-- `lt[A145377(n+1), 1]+1` -/
def P17009905030301973173.Spec : Prop :=
  ∀ n, (P17009905030301973173.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P13136789054989965888

`lt[0, A035444(A033716(n))]`
-/

namespace A092206.P13136789054989965888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A033716 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092206.P13136789054989965888

namespace A092206

/-- `lt[0, A035444(A033716(n))]` -/
def P13136789054989965888.Spec : Prop :=
  ∀ n, (P13136789054989965888.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P9745868939816367791

`eq[1, A262750(A033716(n)+2)]`
-/

namespace A092206.P9745868939816367791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (A033716 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092206.P9745868939816367791

namespace A092206

/-- `eq[1, A262750(A033716(n)+2)]` -/
def P9745868939816367791.Spec : Prop :=
  ∀ n, (P9745868939816367791.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P12040739322065694559

`eq[2, A010150(A033716(n)+2)]`
-/

namespace A092206.P12040739322065694559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010150 (A033716 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092206.P12040739322065694559

namespace A092206

/-- `eq[2, A010150(A033716(n)+2)]` -/
def P12040739322065694559.Spec : Prop :=
  ∀ n, (P12040739322065694559.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P18435067296951528839

`comp[(A002265(n)+1)²*A256263(n)%4]`
-/

namespace A092206.P18435067296951528839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 n + 1) ^ 2 * Int.tmod (A256263 n) 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P18435067296951528839

namespace A092206

/-- `comp[(A002265(n)+1)²*A256263(n)%4]` -/
def P18435067296951528839.Spec : Prop :=
  ∀ n, (P18435067296951528839.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P9648136901360887611

`record[A214295(n+1)+A060576(n)+n]`
-/

namespace A092206.P9648136901360887611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (n + 1) + (A060576 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092206.P9648136901360887611

namespace A092206

/-- `record[A214295(n+1)+A060576(n)+n]` -/
def P9648136901360887611.Spec : Prop :=
  ∀ n, P9648136901360887611.a n = A092206 (n + 1)

end A092206

/-! ## A092206.P17068256773123246479

`eq[0, A195198(n)]`
-/

namespace A092206.P17068256773123246479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092206.P17068256773123246479

namespace A092206

/-- `eq[0, A195198(n)]` -/
def P17068256773123246479.Spec : Prop :=
  ∀ n, (P17068256773123246479.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P4252133744051717303

`eq[2, A092205(n+1)]+1`
-/

namespace A092206.P4252133744051717303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092205 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092206.P4252133744051717303

namespace A092206

/-- `eq[2, A092205(n+1)]+1` -/
def P4252133744051717303.Spec : Prop :=
  ∀ n, (P4252133744051717303.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P15992370630776287014

`comp[(Δ[or(1, n)]+1)*A003056(n)²]`
-/

namespace A092206.P15992370630776287014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1) * A003056 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P15992370630776287014

namespace A092206

/-- `comp[(Δ[or(1, n)]+1)*A003056(n)²]` -/
def P15992370630776287014.Spec : Prop :=
  ∀ n, (P15992370630776287014.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P8427309287192183334

`eq[A092573(n), A119395(n)]`
-/

namespace A092206.P8427309287192183334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092206.P8427309287192183334

namespace A092206

/-- `eq[A092573(n), A119395(n)]` -/
def P8427309287192183334.Spec : Prop :=
  ∀ n, (P8427309287192183334.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P16416998165272491301

`eq[A058306(n), A267594(n)]`
-/

namespace A092206.P16416998165272491301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092206.P16416998165272491301

namespace A092206

/-- `eq[A058306(n), A267594(n)]` -/
def P16416998165272491301.Spec : Prop :=
  ∀ n, (P16416998165272491301.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P6036550463156521944

`eq[A058306(n), A267635(n)]`
-/

namespace A092206.P6036550463156521944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058306 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092206.P6036550463156521944

namespace A092206

/-- `eq[A058306(n), A267635(n)]` -/
def P6036550463156521944.Spec : Prop :=
  ∀ n, (P6036550463156521944.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P6486438650270102757

`comp[n*A030102(A030102(n))]`
-/

namespace A092206.P6486438650270102757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A030102 (A030102 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P6486438650270102757

namespace A092206

/-- `comp[n*A030102(A030102(n))]` -/
def P6486438650270102757.Spec : Prop :=
  ∀ n, (P6486438650270102757.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P14973245166280361378

`comp[n*A137305(A137305(n))]`
-/

namespace A092206.P14973245166280361378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A137305 (A137305 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P14973245166280361378

namespace A092206

/-- `comp[n*A137305(A137305(n))]` -/
def P14973245166280361378.Spec : Prop :=
  ∀ n, (P14973245166280361378.a n : ℤ) = A092206 (n + 1)

end A092206

/-! ## A092206.P3713871668528553510

`comp[A134028(n)*A160652(n)]`
-/

namespace A092206.P3713871668528553510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134028 n * A160652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092206.P3713871668528553510

namespace A092206

/-- `comp[A134028(n)*A160652(n)]` -/
def P3713871668528553510.Spec : Prop :=
  ∀ n, (P3713871668528553510.a n : ℤ) = A092206 (n + 1)

end A092206

/-!
# A092207: Semiprimes k such that k+2 is also a semiprime.

The programs for A092207, the canonical program `A092207.P2317231063323524439` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092207 has offset 1).

The definition of A092207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092207.P14903801935790213752

`A198327(n+1)-2`
-/

namespace A092207.P14903801935790213752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198327 (n + 1) - 2

end

end A092207.P14903801935790213752

namespace A092207

/-- `A198327(n+1)-2` -/
def P14903801935790213752.Spec : Prop :=
  ∀ n, P14903801935790213752.a n = A092207 (n + 1)

theorem P14903801935790213752.correct : P14903801935790213752.Spec := by
  intro n
  simp only [A092207, Nat.add_sub_cancel, A092207.P14903801935790213752.a, A092207.P2317231063323524439.f1, A092207.P2317231063323524439.f2, A092207.P2317231063323524439.a, A001358, A001358.P632087320844056370.a, A198327, A198327.P891835078259736494.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092207

/-! ## A092207.P2317231063323524439

`∩[A001358(n+1)-2, A001358(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A092207

/-- `∩[A001358(n+1)-2, A001358(n+1)]` -/
def P2317231063323524439.Spec : Prop :=
  ∀ n, (P2317231063323524439.a n : ℤ) = A092207 (n + 1)

theorem P2317231063323524439.correct : P2317231063323524439.Spec := by
  intro n
  simp only [A092207, Nat.add_sub_cancel]

end A092207

/-! ## A092207.P6081311942420637851

`∩[A088707(n+1), A186621(n+1)]-1`
-/

namespace A092207.P6081311942420637851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A092207.P6081311942420637851

namespace A092207

/-- `∩[A088707(n+1), A186621(n+1)]-1` -/
def P6081311942420637851.Spec : Prop :=
  ∀ n, P6081311942420637851.a n = A092207 (n + 1)

end A092207

/-! ## A092207.P18217276115716063315

`∩[A088707(n+1), A280382(n+1)]-1`
-/

namespace A092207.P18217276115716063315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A092207.P18217276115716063315

namespace A092207

/-- `∩[A088707(n+1), A280382(n+1)]-1` -/
def P18217276115716063315.Spec : Prop :=
  ∀ n, P18217276115716063315.a n = A092207 (n + 1)

end A092207

/-! ## A092207.P12171509856969243556

`∩[A186621(n+1), A280382(n+1)]-1`
-/

namespace A092207.P12171509856969243556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A092207.P12171509856969243556

namespace A092207

/-- `∩[A186621(n+1), A280382(n+1)]-1` -/
def P12171509856969243556.Spec : Prop :=
  ∀ n, P12171509856969243556.a n = A092207 (n + 1)

end A092207

/-! ## A092207.P2370958300566480607

`∩[A176540(n+1)-2, A176540(n+1)]`
-/

namespace A092207.P2370958300566480607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092207.P2370958300566480607

namespace A092207

/-- `∩[A176540(n+1)-2, A176540(n+1)]` -/
def P2370958300566480607.Spec : Prop :=
  ∀ n, (P2370958300566480607.a n : ℤ) = A092207 (n + 1)

end A092207

/-! ## A092207.P8967461435262518307

`∪[A056809(n+1), A136196(n+1)]`
-/

namespace A092207.P8967461435262518307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092207.P8967461435262518307

namespace A092207

/-- `∪[A056809(n+1), A136196(n+1)]` -/
def P8967461435262518307.Spec : Prop :=
  ∀ n, (P8967461435262518307.a n : ℤ) = A092207 (n + 1)

end A092207

/-! ## A092207.P8778197247256210499

`A124936(n+1)-1`
-/

namespace A092207.P8778197247256210499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124936 (n + 1) - 1

end

end A092207.P8778197247256210499

namespace A092207

/-- `A124936(n+1)-1` -/
def P8778197247256210499.Spec : Prop :=
  ∀ n, P8778197247256210499.a n = A092207 (n + 1)

theorem P8778197247256210499.correct : P8778197247256210499.Spec := by
  intro n
  simp only [A092207, Nat.add_sub_cancel, A092207.P8778197247256210499.a, A092207.P2317231063323524439.f1, A092207.P2317231063323524439.f2, A092207.P2317231063323524439.a, A001358, A001358.P632087320844056370.a, A124936, A124936.P6840335345316101384.a, A088707, A088707.P7291141647877559993.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092207

/-! ## A092207.P15586378676470282717

`A023443(A124936(n+1))`
-/

namespace A092207.P15586378676470282717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A124936 (n + 1)).toNat

end

end A092207.P15586378676470282717

namespace A092207

/-- `A023443(A124936(n+1))` -/
def P15586378676470282717.Spec : Prop :=
  ∀ n, P15586378676470282717.a n = A092207 (n + 1)

end A092207

/-! ## A092207.P18369008985495400509

`A023444(A198327(n+1))`
-/

namespace A092207.P18369008985495400509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A198327 (n + 1)).toNat

end

end A092207.P18369008985495400509

namespace A092207

/-- `A023444(A198327(n+1))` -/
def P18369008985495400509.Spec : Prop :=
  ∀ n, P18369008985495400509.a n = A092207 (n + 1)

end A092207

/-! ## A092207.P4811079360722393015

`eq[A004277(A109824(n+2)), A284289(n)]`
-/

namespace A092207.P4811079360722393015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A109824 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092207.P4811079360722393015

namespace A092207

/-- `eq[A004277(A109824(n+2)), A284289(n)]` -/
def P4811079360722393015.Spec : Prop :=
  ∀ n, (P4811079360722393015.a n : ℤ) = A092207 (n + 1)

end A092207

/-! ## A092207.P8081064858348430607

`eq[A202107(A109824(n+2)), A226378(n)]`
-/

namespace A092207.P8081064858348430607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202107 (A109824 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092207.P8081064858348430607

namespace A092207

/-- `eq[A202107(A109824(n+2)), A226378(n)]` -/
def P8081064858348430607.Spec : Prop :=
  ∀ n, (P8081064858348430607.a n : ℤ) = A092207 (n + 1)

end A092207

/-! ## A092207.P427103326665182623

`eq[A064911(n+2), A306229(A226378(n))]`
-/

namespace A092207.P427103326665182623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A226378 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092207.P427103326665182623

namespace A092207

/-- `eq[A064911(n+2), A306229(A226378(n))]` -/
def P427103326665182623.Spec : Prop :=
  ∀ n, (P427103326665182623.a n : ℤ) = A092207 (n + 1)

end A092207

/-! ## A092207.P76684831809279708

`A004770(A198327(n+1)+1)%(A198327(n+1)+1)`
-/

namespace A092207.P76684831809279708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004770 (A198327 (n + 1) + 1).toNat) (A198327 (n + 1) + 1)

end

end A092207.P76684831809279708

namespace A092207

/-- `A004770(A198327(n+1)+1)%(A198327(n+1)+1)` -/
def P76684831809279708.Spec : Prop :=
  ∀ n, P76684831809279708.a n = A092207 (n + 1)

end A092207

/-! ## A092207.P7376050957927025488

`A140106(2*A124936(n+1))`
-/

namespace A092207.P7376050957927025488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A124936 (n + 1)).toNat

end

end A092207.P7376050957927025488

namespace A092207

/-- `A140106(2*A124936(n+1))` -/
def P7376050957927025488.Spec : Prop :=
  ∀ n, P7376050957927025488.a n = A092207 (n + 1)

end A092207

/-! ## A092207.P13795746307198453658

`A140106(A124936(n+1)+A124936(n+1)+1)`
-/

namespace A092207.P13795746307198453658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A124936 (n + 1) + (A124936 (n + 1) + 1)).toNat

end

end A092207.P13795746307198453658

namespace A092207

/-- `A140106(A124936(n+1)+A124936(n+1)+1)` -/
def P13795746307198453658.Spec : Prop :=
  ∀ n, P13795746307198453658.a n = A092207 (n + 1)

end A092207

/-!
# A092209: Smallest number k such that k, k+2, k+4, ..., k+2n are semiprimes.

The programs for A092209, there is no canonical definition to state claims against.
-/

/-! ## A092209.P15466355363223914047

`A124570(A146652(n+1)+A141214(n))`
-/

namespace A092209.P15466355363223914047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124570 (A146652 (n + 1) + A141214 n).toNat

end

end A092209.P15466355363223914047

/-! ## A092209.P4398820593750384420

`A124570(lcm(A007318(n), A034856(n+2)))`
-/

namespace A092209.P4398820593750384420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124570 (Int.lcm (A007318 n) (A034856 (n + 2)))

end

end A092209.P4398820593750384420

/-!
# A092210: Positive integers n such that the trajectory of n under the Reverse and Add! operation carried out in base 2 (presumably) does not join the trajectory of any m < n.

The programs for A092210, there is no canonical definition to state claims against.
-/

/-! ## A092210.P14816951210975937067

`A125822(2*n+1)-A267116(A250373(n+1))`
-/

namespace A092210.P14816951210975937067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125822 (2 * n + 1) - A267116 (A250373 (n + 1)).toNat

end

end A092210.P14816951210975937067

/-!
# A092213: In base 2: numbers n of the form k + reverse(k) for at least one k.

The programs for A092213, there is no canonical definition to state claims against.
-/

/-! ## A092213.P3141364330627105971

`eq[1, char[A055944(n)]]`
-/

namespace A092213.P3141364330627105971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092213.P3141364330627105971

/-! ## A092213.P8773633302272748000

`eq[1, char[A331633(n+1)]]`
-/

namespace A092213.P8773633302272748000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331633 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092213.P8773633302272748000

/-! ## A092213.P769326171912544336

`A055944(A330340(n))`
-/

namespace A092213.P769326171912544336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A330340 n).toNat

end

end A092213.P769326171912544336

/-! ## A092213.P12966118041815677497

`A055944(A331585(n))`
-/

namespace A092213.P12966118041815677497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (A331585 n).toNat

end

end A092213.P12966118041815677497

/-! ## A092213.P700603738088414710

`A330340(A118759(n))+A030101(A330340(n))`
-/

namespace A092213.P700603738088414710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330340 (A118759 n).toNat + A030101 (A330340 n).toNat

end

end A092213.P700603738088414710

/-!
# A092214: In base 2: numbers n not of the form k + reverse(k) for any k.

The programs for A092214, there is no canonical definition to state claims against.
-/

/-! ## A092214.P14432701573266354095

`comp[A055944(n)]`
-/

namespace A092214.P14432701573266354095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092214.P14432701573266354095

/-! ## A092214.P6984164844005096240

`comp[A092213(n)]`
-/

namespace A092214.P6984164844005096240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092213 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092214.P6984164844005096240

/-! ## A092214.P333458812615096157

`comp[A331633(n+1)]`
-/

namespace A092214.P333458812615096157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092214.P333458812615096157

/-! ## A092214.P15437406933640293743

`comp[A030101(n)+n]`
-/

namespace A092214.P15437406933640293743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092214.P15437406933640293743

/-! ## A092214.P13958785085197777933

`comp[A325401(2*n)+n]`
-/

namespace A092214.P13958785085197777933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092214.P13958785085197777933

/-! ## A092214.P6604686352331756988

`comp[2*n-A055945(n)]`
-/

namespace A092214.P6604686352331756988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A055945 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092214.P6604686352331756988

/-! ## A092214.P7515651567343354535

`comp[xor(n, A175919(n))+n]`
-/

namespace A092214.P7515651567343354535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A175919 n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092214.P7515651567343354535

/-! ## A092214.P1750721477527399333

`eq[char[A055944(n+1)], A000007(n)]`
-/

namespace A092214.P1750721477527399333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A092214.P1750721477527399333

/-! ## A092214.P5758550276594194292

`eq[2*A000007(n), char[A055944(n)]]`
-/

namespace A092214.P5758550276594194292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055944 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A092214.P5758550276594194292

/-!
# A092216: Primes of the form p + 12 where p is a prime.

The programs for A092216, there is no canonical definition to state claims against.
-/

/-! ## A092216.P8078597315778311431

`12+A046133(n+1)`
-/

namespace A092216.P8078597315778311431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 + A046133 (n + 1)

end

end A092216.P8078597315778311431

/-! ## A092216.P13318238658215266884

`A087681(n+1)+6`
-/

namespace A092216.P13318238658215266884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1) + 6

end

end A092216.P13318238658215266884

/-! ## A092216.P14597092850065556309

`∩[A015917(n+1), A045393(n+1)]+12`
-/

namespace A092216.P14597092850065556309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 12

end

end A092216.P14597092850065556309

/-! ## A092216.P17846225172537103365

`p?[p?[2*n+1]+12]`
-/

namespace A092216.P17846225172537103365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092216.P17846225172537103365

/-! ## A092216.P9159141758842646962

`p?[A175225(n+1)+2]`
-/

namespace A092216.P9159141758842646962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P9159141758842646962

/-! ## A092216.P7863137164392063369

`p?[A008864(n+1)+11]`
-/

namespace A092216.P7863137164392063369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P7863137164392063369

/-! ## A092216.P8369867135404156236

`p?[A175216(n+1)+11]`
-/

namespace A092216.P8369867135404156236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175216 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P8369867135404156236

/-! ## A092216.P11488473837751787011

`p?[A000040(n+1)+12]`
-/

namespace A092216.P11488473837751787011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P11488473837751787011

/-! ## A092216.P17024447438200135316

`p?[A065091(n+1)+12]`
-/

namespace A092216.P17024447438200135316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P17024447438200135316

/-! ## A092216.P7029360036062342254

`p?[A006093(n+1)+13]`
-/

namespace A092216.P7029360036062342254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P7029360036062342254

/-! ## A092216.P11950456993435876172

`p?[A040976(n+1)+14]`
-/

namespace A092216.P11950456993435876172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P11950456993435876172

/-! ## A092216.P5586976593084627077

`∩[A000040(n+1), A175225(n+1)+2]`
-/

namespace A092216.P5586976593084627077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092216.P5586976593084627077

/-! ## A092216.P12011851595421856251

`∩[A004139(n+1), A175225(n+1)+2]`
-/

namespace A092216.P12011851595421856251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092216.P12011851595421856251

/-! ## A092216.P8180580176190450826

`∩[A006005(n+1), A175225(n+1)+2]`
-/

namespace A092216.P8180580176190450826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092216.P8180580176190450826

/-! ## A092216.P7719682364938681851

`∩[A008578(n+1), A175225(n+1)+2]`
-/

namespace A092216.P7719682364938681851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092216.P7719682364938681851

/-! ## A092216.P7323429438311697836

`A078496(A087681(n+1))`
-/

namespace A092216.P7323429438311697836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 (A087681 (n + 1)).toNat

end

end A092216.P7323429438311697836

/-! ## A092216.P10716110407848778544

`p?[A006530(lt[n, A006530(n+2)]+2)+12]`
-/

namespace A092216.P10716110407848778544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 2) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P10716110407848778544

/-! ## A092216.P12986796595067061932

`p?[A016825(A322809(n+2))+n]`
-/

namespace A092216.P12986796595067061932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A322809 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092216.P12986796595067061932

/-! ## A092216.P10082172433156744885

`A020742(A088766(n+1))`
-/

namespace A092216.P10082172433156744885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (A088766 (n + 1)).toNat

end

end A092216.P10082172433156744885

/-! ## A092216.P7039514504943963760

`A130773(A088766(n+1)+2)+2`
-/

namespace A092216.P7039514504943963760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A088766 (n + 1) + 2).toNat + 2

end

end A092216.P7039514504943963760

/-!
# A092217: Primes that do not divide any Euler number.

The programs for A092217, there is no canonical definition to state claims against.
-/

/-! ## A092217.P363010418282977284

`A000040(record[n+1-A092219(n+1)])`
-/

namespace A092217.P363010418282977284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A092219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A092217.P363010418282977284

/-! ## A092217.P3700794803679679433

`record[gcd(A000040(n+1), A092219(n+1))]`
-/

namespace A092217.P3700794803679679433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A092219 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092217.P3700794803679679433

/-! ## A092217.P4693147542807317657

`record[A008864(n+1)-A027379(A092219(n+1))]`
-/

namespace A092217.P4693147542807317657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A027379 (A092219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092217.P4693147542807317657

/-! ## A092217.P15713866362953036907

`p?[A019429(A092219(n+1))+A008578(n+2)]`
-/

namespace A092217.P15713866362953036907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A092219 (n + 1)).toNat + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092217.P15713866362953036907

/-! ## A092217.P6028156140464582992

`p?[A019429(A092219(n+1))+A006093(n+1)+1]`
-/

namespace A092217.P6028156140464582992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019429 (A092219 (n + 1)).toNat + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092217.P6028156140464582992

/-!
# A092218: Primes that divide some Euler number.

The programs for A092218, there is no canonical definition to state claims against.
-/

/-! ## A092218.P3797807403575621386

`p?[comp[A092217(n+1)]]`
-/

namespace A092218.P3797807403575621386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092217 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A092218.P3797807403575621386

/-! ## A092218.P8340884012881936348

`∪[A002144(n+1), A120115(n+1)]`
-/

namespace A092218.P8340884012881936348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092218.P8340884012881936348

/-! ## A092218.P2290243392050441437

`∪[A002144(n+1), A120337(n+1)]`
-/

namespace A092218.P2290243392050441437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092218.P2290243392050441437

/-! ## A092218.P5314488706873800178

`p?[A055670(n+1)-A019429(A092219(n+1))]`
-/

namespace A092218.P5314488706873800178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - A019429 (A092219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092218.P5314488706873800178

/-! ## A092218.P3849770529102766075

`p?[A000040(n+1)*A019429(A092219(n+1))]`
-/

namespace A092218.P3849770529102766075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A019429 (A092219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092218.P3849770529102766075

/-! ## A092218.P11331552127540756091

`p?[A008578(n+2)*A019429(A092219(n+1))]`
-/

namespace A092218.P11331552127540756091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A019429 (A092219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092218.P11331552127540756091

/-! ## A092218.P10916658965421608321

`p?[(A006093(n+1)+1)*A019429(A092219(n+1))]`
-/

namespace A092218.P10916658965421608321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A019429 (A092219 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092218.P10916658965421608321

/-!
# A092220: Expansion of x*(1-x)/ ((1+x)*(1-x+x^2)) in powers of x.

The programs for A092220, the canonical program `A092220.P1259677112071512461` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092220 has offset 0).

The definition of A092220 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1+x^3))` (program `A092220.P1259677112071512461`, by `A092220.P1259677112071512461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092220.P11201862360486171484

`-a(n-3)` with `a(0)=0, a(1)=1, a(2)=-1`
-/

namespace A092220.P11201862360486171484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -1] fun n a =>
  -a (n - 3)

end

end A092220.P11201862360486171484

namespace A092220

/-- `-a(n-3)` -/
def P11201862360486171484.Spec : Prop :=
  ∀ n, P11201862360486171484.a n = A092220 n

end A092220

/-! ## A092220.P1259677112071512461

`ogf((x-x^2)/(1+x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092220

/-- `ogf((x-x^2)/(1+x^3))` -/
def P1259677112071512461.Spec : Prop :=
  ∀ n, P1259677112071512461.a n = A092220 n

theorem P1259677112071512461.correct : P1259677112071512461.Spec := by
  intro n
  simp only [A092220]

end A092220

/-!
# A092221: Numbers k such that numerator of Bernoulli(2*k) is divisible by 59, the second irregular prime.

The programs for A092221, there is no canonical definition to state claims against.
-/

/-! ## A092221.P13844394389129918560

`A007064(eq[10, A067541(n+1)])`
-/

namespace A092221.P13844394389129918560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092221.P13844394389129918560

/-!
# A092222: Numbers k such that numerator of Bernoulli(2*k) is divisible by 67, the third irregular prime.

The programs for A092222, there is no canonical definition to state claims against.
-/

/-! ## A092222.P14227549262184881580

`A313115(eq[1, A036850(n+1)])`
-/

namespace A092222.P14227549262184881580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092222.P14227549262184881580

/-!
# A092223: Numbers k such that numerator of Bernoulli(2*k) is divisible by 101, the fourth irregular prime.

The programs for A092223, there is no canonical definition to state claims against.
-/

/-! ## A092223.P17957598142717575493

`eq[A066135(A016933(3*n+1)), A222210(n)]`
-/

namespace A092223.P17957598142717575493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066135 (A016933 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092223.P17957598142717575493

/-!
# A092230: Numbers k such that the numerator of Bernoulli(2k) is divisible by the square of 37, the first irregular prime.

The programs for A092230, there is no canonical definition to state claims against.
-/

/-! ## A092230.P17925047877236731247

`A090789(n+1)/2`
-/

namespace A092230.P17925047877236731247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090789 (n + 1) : ℚ) / 2

end

end A092230.P17925047877236731247

/-! ## A092230.P17229972755202005412

`A014682(A090789(n+1))`
-/

namespace A092230.P17229972755202005412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A090789 (n + 1)).toNat

end

end A092230.P17229972755202005412

/-! ## A092230.P16840002869693381419

`A328399(A090789(n+1)-2)`
-/

namespace A092230.P16840002869693381419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A090789 (n + 1) - 2).toNat

end

end A092230.P16840002869693381419

/-! ## A092230.P15832086882367851469

`A273943(lcm(2, A090789(n+1)))`
-/

namespace A092230.P15832086882367851469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A090789 (n + 1)))

end

end A092230.P15832086882367851469

/-! ## A092230.P9667956622801275270

`A273943(and(-2, A090789(n+1)))`
-/

namespace A092230.P9667956622801275270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.land (-2) (A090789 (n + 1))).toNat

end

end A092230.P9667956622801275270

/-!
# A092231: Numbers k such that numerator of Bernoulli(2*k) is divisible by 37 and 59, the first two irregular primes.

The programs for A092231, there is no canonical definition to state claims against.
-/

/-! ## A092231.P16907161687321342342

`∩[A091216(n+1), A092221(n+1)]`
-/

namespace A092231.P16907161687321342342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092231.P16907161687321342342

/-!
# A092232: Values of n corresponding to the incrementally largest values of the least inverse A046021 of the Kempner function A002034, i.e., A002034(A092233(n)) = n.

The programs for A092232, there is no canonical definition to state claims against.
-/

/-! ## A092232.P13712472433872543059

`lt[∏{p}[n+1, #], A362974((n+1)/2^val(n+1, 2))]+1`
-/

namespace A092232.P13712472433872543059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362974 ((SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A092232.P13712472433872543059

/-! ## A092232.P14157371582440716954

`record[A138768(n+1)-A064911(n+1)]`
-/

namespace A092232.P14157371582440716954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (n + 1) - A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092232.P14157371582440716954

/-! ## A092232.P15881394859573419853

`record[A138768(n+1)-A078926(n+1)]`
-/

namespace A092232.P15881394859573419853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (n + 1) - A078926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092232.P15881394859573419853

/-! ## A092232.P8163337872379372731

`record[gcd(A163807(n+1), A227248(n+1))]`
-/

namespace A092232.P8163337872379372731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163807 (n + 1)) (A227248 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092232.P8163337872379372731

/-! ## A092232.P3849474545165691072

`lt[A331749(A160410(n)), A054054(n)]`
-/

namespace A092232.P3849474545165691072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 (A160410 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092232.P3849474545165691072

/-!
# A092233: Incrementally largest values of the least inverse A046021 of the Kempner function A002034.

The programs for A092233, there is no canonical definition to state claims against.
-/

/-! ## A092233.P13919379892594710710

`record[A046021(n+1)]`
-/

namespace A092233.P13919379892594710710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092233.P13919379892594710710

/-! ## A092233.P8305085848268259927

`A046021(A092232(n+1))`
-/

namespace A092233.P8305085848268259927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046021 (A092232 (n + 1)).toNat

end

end A092233.P8305085848268259927

/-! ## A092233.P17119532300565231140

`record[ratio[A046021(A158416(n))]]`
-/

namespace A092233.P17119532300565231140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046021 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092233.P17119532300565231140

/-! ## A092233.P9136366274182530261

`record[A046021(A291766(n))%A071258(n)]`
-/

namespace A092233.P9136366274182530261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046021 (A291766 n).toNat) (A071258 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092233.P9136366274182530261

/-!
# A092236: a(n) = (3^n + 2*3^(n/2)*cos(n*Pi/6))/3.

The programs for A092236, the canonical program `A092236.P18418859443949731011` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092236 has offset 0).

The definition of A092236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092236.P18418859443949731011

`(3^n+2*3^(n/2)*cos(n*π/6))/3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092236

/-- `(3^n+2*3^(n/2)*cos(n*π/6))/3` -/
def P18418859443949731011.Spec : Prop :=
  ∀ n, P18418859443949731011.a n = (A092236 n : ℝ)

end A092236

/-! ## A092236.P13045022325991076883

`A057681(n)+floor(3^(n-1))`
-/

namespace A092236.P13045022325991076883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n + ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A092236.P13045022325991076883

namespace A092236

/-- `A057681(n)+floor(3^(n-1))` -/
def P13045022325991076883.Spec : Prop :=
  ∀ n, P13045022325991076883.a n = A092236 n

end A092236

/-! ## A092236.P7952410189605425325

`A133474(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A092236.P7952410189605425325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133474 n + 2 * a (n - 1)

end

end A092236.P7952410189605425325

namespace A092236

/-- `A133474(n)+2*a(n-1)` -/
def P7952410189605425325.Spec : Prop :=
  ∀ n, P7952410189605425325.a n = A092236 n

end A092236

/-! ## A092236.P14541143010394986157

`3*a(n-1)-A057682(n)` with `a(0)=1`
-/

namespace A092236.P14541143010394986157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A057682 n

end

end A092236.P14541143010394986157

namespace A092236

/-- `3*a(n-1)-A057682(n)` -/
def P14541143010394986157.Spec : Prop :=
  ∀ n, P14541143010394986157.a n = A092236 n

end A092236

/-! ## A092236.P1989095082954073888

`A140429(n)+A057681(n)`
-/

namespace A092236.P1989095082954073888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A057681 n

end

end A092236.P1989095082954073888

namespace A092236

/-- `A140429(n)+A057681(n)` -/
def P1989095082954073888.Spec : Prop :=
  ∀ n, P1989095082954073888.a n = A092236 n

end A092236

/-! ## A092236.P15158766754939897156

`A007051(n)-∑[A135254(n)]`
-/

namespace A092236.P15158766754939897156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092236.P15158766754939897156

namespace A092236

/-- `A007051(n)-∑[A135254(n)]` -/
def P15158766754939897156.Spec : Prop :=
  ∀ n, P15158766754939897156.a n = A092236 n

end A092236

/-! ## A092236.P12655129840716210818

`Δ[A124302(n)+A057682(n)]`
-/

namespace A092236.P12655129840716210818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n + A057682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092236.P12655129840716210818

namespace A092236

/-- `Δ[A124302(n)+A057682(n)]` -/
def P12655129840716210818.Spec : Prop :=
  ∀ n, P12655129840716210818.a n = A092236 n

end A092236

/-! ## A092236.P18195392535385027977

`A133474(n+1)+∑[A057681(n)]`
-/

namespace A092236.P18195392535385027977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092236.P18195392535385027977

namespace A092236

/-- `A133474(n+1)+∑[A057681(n)]` -/
def P18195392535385027977.Spec : Prop :=
  ∀ n, P18195392535385027977.a n = A092236 n

end A092236

/-! ## A092236.P9854876470797692394

`A133474(n+1)+A057682(n+1)`
-/

namespace A092236.P9854876470797692394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 (n + 1) + A057682 (n + 1)

end

end A092236.P9854876470797692394

namespace A092236

/-- `A133474(n+1)+A057682(n+1)` -/
def P9854876470797692394.Spec : Prop :=
  ∀ n, P9854876470797692394.a n = A092236 n

end A092236

/-! ## A092236.P9542440240270866390

`A135254(n+1)+A057681(n+1)`
-/

namespace A092236.P9542440240270866390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 (n + 1) + A057681 (n + 1)

end

end A092236.P9542440240270866390

namespace A092236

/-- `A135254(n+1)+A057681(n+1)` -/
def P9542440240270866390.Spec : Prop :=
  ∀ n, P9542440240270866390.a n = A092236 n

end A092236

/-! ## A092236.P9659287033691501435

`A135254(n+1)+Δ[A057682(n+1)]`
-/

namespace A092236.P9659287033691501435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092236.P9659287033691501435

namespace A092236

/-- `A135254(n+1)+Δ[A057682(n+1)]` -/
def P9659287033691501435.Spec : Prop :=
  ∀ n, P9659287033691501435.a n = A092236 n

end A092236

/-! ## A092236.P1749213269858062110

`A133474(n+1)-Δ[Δ[A057681(n+1)]]`
-/

namespace A092236.P1749213269858062110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133474 (n + 1) - (f1 (n + 1) - f1 n)

end

end A092236.P1749213269858062110

namespace A092236

/-- `A133474(n+1)-Δ[Δ[A057681(n+1)]]` -/
def P1749213269858062110.Spec : Prop :=
  ∀ n, P1749213269858062110.a n = A092236 n

end A092236

/-! ## A092236.P3340156005945218092

`Δ[Δ[A135254(n+1)]-A124302(n+1)]`
-/

namespace A092236.P3340156005945218092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A124302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092236.P3340156005945218092

namespace A092236

/-- `Δ[Δ[A135254(n+1)]-A124302(n+1)]` -/
def P3340156005945218092.Spec : Prop :=
  ∀ n, P3340156005945218092.a n = A092236 n

end A092236

/-!
# A092238: Number of ways to write the permutation n,n-1,...,1 of 1,2,...,n as a product of n(n-1)/2 transpositions, where each transposition of 1,2,...,n occurs exactly once.

The programs for A092238, there is no canonical definition to state claims against.
-/

/-! ## A092238.P8159493139261066644

`∏[A261585(record[A009386(n)])]`
-/

namespace A092238.P8159493139261066644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009386 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092238.P8159493139261066644

/-! ## A092238.P2370812452017019102

`A000125(A218872(n+1)-A255903(n))`
-/

namespace A092238.P2370812452017019102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 (A218872 (n + 1) - A255903 n).toNat

end

end A092238.P2370812452017019102

/-!
# A092239: Number of orbits of length n under the map whose periodic points are counted by A061693.

The programs for A092239, there is no canonical definition to state claims against.
-/

/-! ## A092239.P6822907224830147349

`A002265(∑[ceil(n*2^(n-2))+1]²)`
-/

namespace A092239.P6822907224830147349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A092239.P6822907224830147349

/-! ## A092239.P1256557402892513750

`A026922(∑[ceil(n*2^(n-2))+1]²)`
-/

namespace A092239.P1256557402892513750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A092239.P1256557402892513750

/-!
# A092241: Triangle read by rows: row n gives coefficients of (1+x+x^2)^n mod n.

The programs for A092241, there is no canonical definition to state claims against.
-/

/-! ## A092241.P5576263127363761914

`A027907(n)%floor(sqrt(sqrt(n²+1)))`
-/

namespace A092241.P5576263127363761914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027907 n) ⌊Real.sqrt (Real.sqrt (n ^ 2 + 1 : ℝ))⌋

end

end A092241.P5576263127363761914

/-! ## A092241.P14898508454662570871

`A169623(A161983(n))%A000196(or(1, n))`
-/

namespace A092241.P14898508454662570871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 (A161983 n).toNat) (A000196 (Nat.lor 1 n))

end

end A092241.P14898508454662570871

/-! ## A092241.P3191777472642323328

`A169623(A316965(n)+1)%A000196(or(1, n))`
-/

namespace A092241.P3191777472642323328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 (A316965 n + 1).toNat) (A000196 (Nat.lor 1 n))

end

end A092241.P3191777472642323328

/-! ## A092241.P1871933936444427643

`((A025564(n)+A025177(n))/2)%A000196(or(1, n))`
-/

namespace A092241.P1871933936444427643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025564 n + A025177 n : ℚ) / 2)) (A000196 (Nat.lor 1 n))

end

end A092241.P1871933936444427643

/-! ## A092241.P7228830747226692733

`A028310(A027907(n))%A028310(A000196(n))`
-/

namespace A092241.P7228830747226692733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A027907 n).toNat) (A028310 (A000196 n).toNat)

end

end A092241.P7228830747226692733

/-! ## A092241.P13319708115396183800

`A169623(A116942(2*n))%A000196(A109613(n))`
-/

namespace A092241.P13319708115396183800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 (A116942 (2 * n)).toNat) (A000196 (A109613 n).toNat)

end

end A092241.P13319708115396183800

/-! ## A092241.P8765246357172962116

`((A025564(n)+A025177(n))/2)%A000196(A109613(n))`
-/

namespace A092241.P8765246357172962116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025564 n + A025177 n : ℚ) / 2)) (A000196 (A109613 n).toNat)

end

end A092241.P8765246357172962116

/-! ## A092241.P13304542213812434113

`A169623(2*n-A196199(n))%A000196(A109613(n))`
-/

namespace A092241.P13304542213812434113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 ((2 * n : ℤ) - A196199 n).toNat) (A000196 (A109613 n).toNat)

end

end A092241.P13304542213812434113

/-!
# A092242: Numbers that are congruent to {5, 7} (mod 12).

The programs for A092242, the canonical program `A092242.P17412425220549431758` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092242 has offset 1).

The definition of A092242 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092242.P17412425220549431758

`12*n-a(n-1)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092242

/-- `12*n-a(n-1)` -/
def P17412425220549431758.Spec : Prop :=
  ∀ n, P17412425220549431758.a n = A092242 (n + 1)

theorem P17412425220549431758.correct : P17412425220549431758.Spec := by
  intro n
  simp only [A092242, Nat.add_sub_cancel]

end A092242

/-! ## A092242.P3034948768742589722

`6*(n+1)-3-2*(-1)^(n+1)`
-/

namespace A092242.P3034948768742589722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - 3 - 2 * (-1) ^ (n + 1)

end

end A092242.P3034948768742589722

namespace A092242

/-- `6*(n+1)-3-2*(-1)^(n+1)` -/
def P3034948768742589722.Spec : Prop :=
  ∀ n, P3034948768742589722.a n = A092242 (n + 1)

theorem P3034948768742589722.correct : P3034948768742589722.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A092242, Nat.add_sub_cancel, A092242.P3034948768742589722.a, A092242.P17412425220549431758.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A092242, Nat.add_sub_cancel, A092242.P3034948768742589722.a, A092242.P17412425220549431758.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092242

/-! ## A092242.P12284472668441224668

`∑[12-a(n-1)]` with `a(0)=5, a(1)=2`
-/

namespace A092242.P12284472668441224668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P12284472668441224668

namespace A092242

/-- `∑[12-a(n-1)]` -/
def P12284472668441224668.Spec : Prop :=
  ∀ n, P12284472668441224668.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P3017542454626455315

`∑[lcm(2, a(n%2))]` with `a(0)=5, a(1)=2`
-/

namespace A092242.P3017542454626455315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  Nat.lcm 2 (f1 (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P3017542454626455315

namespace A092242

/-- `∑[lcm(2, a(n%2))]` -/
def P3017542454626455315.Spec : Prop :=
  ∀ n, (P3017542454626455315.a n : ℤ) = A092242 (n + 1)

end A092242

/-! ## A092242.P12043123952404446271

`∑[∑[ogf((5+2x+5x^2)/(1+x))]]`
-/

namespace A092242.P12043123952404446271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, 5] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P12043123952404446271

namespace A092242

/-- `∑[∑[ogf((5+2x+5x^2)/(1+x))]]` -/
def P12043123952404446271.Spec : Prop :=
  ∀ n, P12043123952404446271.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P4384180912351806087

`ogf((5+2x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A092242.P4384180912351806087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 2, 5] [1, -1, -1, 1] n

end

end A092242.P4384180912351806087

namespace A092242

/-- `ogf((5+2x+5x^2)/(1-x-x^2+x^3))` -/
def P4384180912351806087.Spec : Prop :=
  ∀ n, P4384180912351806087.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P203034032866179978

`Δ[(2*n)²-xor(1, n²)]`
-/

namespace A092242.P203034032866179978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.xor 1 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092242.P203034032866179978

namespace A092242

/-- `Δ[(2*n)²-xor(1, n²)]` -/
def P203034032866179978.Spec : Prop :=
  ∀ n, P203034032866179978.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P12811725998496762154

`∩[2*n+1, round(2*n/5+2*n)]`
-/

namespace A092242.P12811725998496762154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / 5 + (2 * n : ℚ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092242.P12811725998496762154

namespace A092242

/-- `∩[2*n+1, round(2*n/5+2*n)]` -/
def P12811725998496762154.Spec : Prop :=
  ∀ n, (P12811725998496762154.a n : ℤ) = A092242 (n + 1)

end A092242

/-! ## A092242.P2991690210480809923

`∑[A040024(n)]`
-/

namespace A092242.P2991690210480809923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P2991690210480809923

namespace A092242

/-- `∑[A040024(n)]` -/
def P2991690210480809923.Spec : Prop :=
  ∀ n, P2991690210480809923.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P9306677362154475434

`A166639(xor(1, n))`
-/

namespace A092242.P9306677362154475434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 (Nat.xor 1 n)

end

end A092242.P9306677362154475434

namespace A092242

/-- `A166639(xor(1, n))` -/
def P9306677362154475434.Spec : Prop :=
  ∀ n, P9306677362154475434.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P935156617502527734

`∑[A010131(2*n)]`
-/

namespace A092242.P935156617502527734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P935156617502527734

namespace A092242

/-- `∑[A010131(2*n)]` -/
def P935156617502527734.Spec : Prop :=
  ∀ n, P935156617502527734.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P18433900144949026733

`∑[A040022(2*n)]`
-/

namespace A092242.P18433900144949026733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040022 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P18433900144949026733

namespace A092242

/-- `∑[A040022(2*n)]` -/
def P18433900144949026733.Spec : Prop :=
  ∀ n, P18433900144949026733.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P17097759182614826677

`∑[A040094(n)/2]`
-/

namespace A092242.P17097759182614826677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040094 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P17097759182614826677

namespace A092242

/-- `∑[A040094(n)/2]` -/
def P17097759182614826677.Spec : Prop :=
  ∀ n, P17097759182614826677.a n = (A092242 (n + 1) : ℚ)

end A092242

/-! ## A092242.P14895330692189204215

`∑[A040214(n)/3]`
-/

namespace A092242.P14895330692189204215
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040214 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P14895330692189204215

namespace A092242

/-- `∑[A040214(n)/3]` -/
def P14895330692189204215.Spec : Prop :=
  ∀ n, P14895330692189204215.a n = (A092242 (n + 1) : ℚ)

end A092242

/-! ## A092242.P9124531160955469601

`∑[A040384(n)/4]`
-/

namespace A092242.P9124531160955469601
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040384 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P9124531160955469601

namespace A092242

/-- `∑[A040384(n)/4]` -/
def P9124531160955469601.Spec : Prop :=
  ∀ n, P9124531160955469601.a n = (A092242 (n + 1) : ℚ)

end A092242

/-! ## A092242.P2999915666657948268

`∑[A040604(n)/5]`
-/

namespace A092242.P2999915666657948268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040604 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P2999915666657948268

namespace A092242

/-- `∑[A040604(n)/5]` -/
def P2999915666657948268.Spec : Prop :=
  ∀ n, P2999915666657948268.a n = (A092242 (n + 1) : ℚ)

end A092242

/-! ## A092242.P10925838998876552036

`∑[A137404(a(n-1))]` with `a(0)=5`
-/

namespace A092242.P10925838998876552036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A137404 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P10925838998876552036

namespace A092242

/-- `∑[A137404(a(n-1))]` -/
def P10925838998876552036.Spec : Prop :=
  ∀ n, P10925838998876552036.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P14010157317220736207

`∑[A247270(a(n-1))]` with `a(0)=5`
-/

namespace A092242.P14010157317220736207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A247270 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092242.P14010157317220736207

namespace A092242

/-- `∑[A247270(a(n-1))]` -/
def P14010157317220736207.Spec : Prop :=
  ∀ n, P14010157317220736207.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P132909865564071923

`A166639(A004442(n))`
-/

namespace A092242.P132909865564071923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166639 (A004442 n).toNat

end

end A092242.P132909865564071923

namespace A092242

/-- `A166639(A004442(n))` -/
def P132909865564071923.Spec : Prop :=
  ∀ n, P132909865564071923.a n = A092242 (n + 1)

end A092242

/-! ## A092242.P15410858846649414072

`∪[A017581(n), A017605(n)]`
-/

namespace A092242.P15410858846649414072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092242.P15410858846649414072

namespace A092242

/-- `∪[A017581(n), A017605(n)]` -/
def P15410858846649414072.Spec : Prop :=
  ∀ n, (P15410858846649414072.a n : ℤ) = A092242 (n + 1)

end A092242

/-!
# A092243: Score at stage n in "tug of war" between prime gap increases vs. prime gap decreases: start with score = 0 at n = 1 and at stage n = k > 1, increase (resp. decrease) the score by 1 if the k-th prime gap is greater (resp. less) than the previous prime gap.

The programs for A092243, the canonical program `A092243.P77833294890424511` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092243 has offset 1).

The definition of A092243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092243.P77833294890424511

`∑[-A079054(abs(1-n)+2)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092243

/-- `∑[-A079054(abs(1-n)+2)]` -/
def P77833294890424511.Spec : Prop :=
  ∀ n, P77833294890424511.a n = A092243 (n + 1)

theorem P77833294890424511.correct : P77833294890424511.Spec := by
  intro n
  simp only [A092243, Nat.add_sub_cancel]

end A092243

/-! ## A092243.P3116870879898065934

`a(n-1)-A079054(n+1)` with `a(0)=0`
-/

namespace A092243.P3116870879898065934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A079054 (n + 1)

end

end A092243.P3116870879898065934

namespace A092243

/-- `a(n-1)-A079054(n+1)` -/
def P3116870879898065934.Spec : Prop :=
  ∀ n, P3116870879898065934.a n = A092243 (n + 1)

end A092243

/-! ## A092243.P14166100989896933014

`-∑[A108415(abs(1-n)+2)-2]`
-/

namespace A092243.P14166100989896933014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (|1 - (n : ℤ)| + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092243.P14166100989896933014

namespace A092243

/-- `-∑[A108415(abs(1-n)+2)-2]` -/
def P14166100989896933014.Spec : Prop :=
  ∀ n, P14166100989896933014.a n = A092243 (n + 1)

end A092243

/-! ## A092243.P8185410630314921727

`A079054(n+2)-∑[A079054(n+2)]`
-/

namespace A092243.P8185410630314921727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092243.P8185410630314921727

namespace A092243

/-- `A079054(n+2)-∑[A079054(n+2)]` -/
def P8185410630314921727.Spec : Prop :=
  ∀ n, P8185410630314921727.a n = A092243 (n + 1)

end A092243

/-! ## A092243.P4172105784815432135

`A108415(n+2)-2-∑[A108415(n+2)-2]`
-/

namespace A092243.P4172105784815432135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2) - 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092243.P4172105784815432135

namespace A092243

/-- `A108415(n+2)-2-∑[A108415(n+2)-2]` -/
def P4172105784815432135.Spec : Prop :=
  ∀ n, P4172105784815432135.a n = A092243 (n + 1)

end A092243

/-! ## A092243.P7853193397959159207

`∑[A107599(n+2)]-(A107599(n+2)+n)`
-/

namespace A092243.P7853193397959159207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107599 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A107599 (n + 2) + (n : ℤ))

end

end A092243.P7853193397959159207

namespace A092243

/-- `∑[A107599(n+2)]-(A107599(n+2)+n)` -/
def P7853193397959159207.Spec : Prop :=
  ∀ n, P7853193397959159207.a n = A092243 (n + 1)

end A092243

/-!
# A092244: Primes of the form 2^k-th prime + 2^(k-1)-th prime + 1.

The programs for A092244, there is no canonical definition to state claims against.
-/

/-! ## A092244.P3109452693387389095

`p?[A092390(A000079(n))+1]`
-/

namespace A092244.P3109452693387389095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (A000079 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092244.P3109452693387389095

/-! ## A092244.P4381460146667935421

`p?[A051440(n+1)+A033844(n)]`
-/

namespace A092244.P4381460146667935421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 (n + 1) + A033844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092244.P4381460146667935421

/-! ## A092244.P9405690674688517437

`p?[A048849(n+1)+A014963(n+1)]`
-/

namespace A092244.P9405690674688517437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048849 (n + 1) + A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092244.P9405690674688517437

/-! ## A092244.P12540301730131277632

`p?[A051440(n+1)+A000040(2^n)]`
-/

namespace A092244.P12540301730131277632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 (n + 1) + A000040 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092244.P12540301730131277632

/-!
# A092245: Lesser of the first twin prime pair with n digits.

The programs for A092245, there is no canonical definition to state claims against.
-/

/-! ## A092245.P11155027028799482408

`A124001(n)+10^n`
-/

namespace A092245.P11155027028799482408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124001 n + (10 ^ n : ℤ)

end

end A092245.P11155027028799482408

/-! ## A092245.P5040826614981087949

`A062397(n)+A124001(n)-1`
-/

namespace A092245.P5040826614981087949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 n + (A124001 n - 1)

end

end A092245.P5040826614981087949

/-! ## A092245.P997213986439738933

`A003617(n+1)+A124001(n)-A033873(n)`
-/

namespace A092245.P997213986439738933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1) + (A124001 n - A033873 n)

end

end A092245.P997213986439738933

/-! ## A092245.P14280247869567726594

`A002275(n+1)-(A002275(n)-A124001(n))`
-/

namespace A092245.P14280247869567726594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - (A002275 n - A124001 n)

end

end A092245.P14280247869567726594

/-!
# A092246: Odd "odious" numbers (A000069).

The programs for A092246, the canonical program `A092246.P10064573919626078015` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092246 has offset 1).

The definition of A092246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092246.P10064573919626078015

`4*(n+1)+2*A010060(n)-3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092246

/-- `4*(n+1)+2*A010060(n)-3` -/
def P10064573919626078015.Spec : Prop :=
  ∀ n, P10064573919626078015.a n = A092246 (n + 1)

theorem P10064573919626078015.correct : P10064573919626078015.Spec := by
  intro n
  simp only [A092246, Nat.add_sub_cancel]

end A092246

/-! ## A092246.P12002821871124867978

`xor(3, 2*comp[xor(n, 2*n)])`
-/

namespace A092246.P12002821871124867978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092246.P12002821871124867978

namespace A092246

/-- `xor(3, 2*comp[xor(n, 2*n)])` -/
def P12002821871124867978.Spec : Prop :=
  ∀ n, (P12002821871124867978.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P10966767358963434991

`eq[-a(and(n, n-1)), n%2]` with `a(0)=-1`
-/

namespace A092246.P10966767358963434991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A092246.P10966767358963434991

namespace A092246

/-- `eq[-a(and(n, n-1)), n%2]` -/
def P10966767358963434991.Spec : Prop :=
  ∀ n, (P10966767358963434991.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P4553593780879764682

`lt[(-1)^n, -a(and(n, n-1))]` with `a(0)=-1`
-/

namespace A092246.P4553593780879764682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  -f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092246.P4553593780879764682

namespace A092246

/-- `lt[(-1)^n, -a(and(n, n-1))]` -/
def P4553593780879764682.Spec : Prop :=
  ∀ n, (P4553593780879764682.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P8817688552221092127

`lt[0, -(a(and(n, n-2))+1)]` with `a(0)=0, a(1)=1`
-/

namespace A092246.P8817688552221092127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  -(f2 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092246.P8817688552221092127

namespace A092246

/-- `lt[0, -(a(and(n, n-2))+1)]` -/
def P8817688552221092127.Spec : Prop :=
  ∀ n, (P8817688552221092127.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P8807145371487930316

`eq[0, A254377(n)]`
-/

namespace A092246.P8807145371487930316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092246.P8807145371487930316

namespace A092246

/-- `eq[0, A254377(n)]` -/
def P8807145371487930316.Spec : Prop :=
  ∀ n, (P8807145371487930316.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P11628985671674961288

`eq[1, A228495(n)]`
-/

namespace A092246.P11628985671674961288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092246.P11628985671674961288

namespace A092246

/-- `eq[1, A228495(n)]` -/
def P11628985671674961288.Spec : Prop :=
  ∀ n, (P11628985671674961288.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P4793737916720762111

`A125592(n+1)+1`
-/

namespace A092246.P4793737916720762111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125592 (n + 1) + 1

end

end A092246.P4793737916720762111

namespace A092246

/-- `A125592(n+1)+1` -/
def P4793737916720762111.Spec : Prop :=
  ∀ n, P4793737916720762111.a n = A092246 (n + 1)

end A092246

/-! ## A092246.P2827043709711149273

`xor(2, A129771(n+1))`
-/

namespace A092246.P2827043709711149273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A129771 (n + 1))

end

end A092246.P2827043709711149273

namespace A092246

/-- `xor(2, A129771(n+1))` -/
def P2827043709711149273.Spec : Prop :=
  ∀ n, P2827043709711149273.a n = A092246 (n + 1)

end A092246

/-! ## A092246.P10223208612934019093

`xor(3, A128309(n+1))`
-/

namespace A092246.P10223208612934019093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A128309 (n + 1))

end

end A092246.P10223208612934019093

namespace A092246

/-- `xor(3, A128309(n+1))` -/
def P10223208612934019093.Spec : Prop :=
  ∀ n, P10223208612934019093.a n = A092246 (n + 1)

end A092246

/-! ## A092246.P2204691880824795843

`lt[A316828(n), 1]+1`
-/

namespace A092246.P2204691880824795843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A092246.P2204691880824795843

namespace A092246

/-- `lt[A316828(n), 1]+1` -/
def P2204691880824795843.Spec : Prop :=
  ∀ n, (P2204691880824795843.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P2597826803328839474

`lt[A316828(xor(1, n)), 1]`
-/

namespace A092246.P2597826803328839474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (Nat.xor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092246.P2597826803328839474

namespace A092246

/-- `lt[A316828(xor(1, n)), 1]` -/
def P2597826803328839474.Spec : Prop :=
  ∀ n, (P2597826803328839474.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P9024013869969196134

`A268676(n)+4*n`
-/

namespace A092246.P9024013869969196134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n + (4 * n : ℤ)

end

end A092246.P9024013869969196134

namespace A092246

/-- `A268676(n)+4*n` -/
def P9024013869969196134.Spec : Prop :=
  ∀ n, P9024013869969196134.a n = A092246 (n + 1)

theorem P9024013869969196134.correct : P9024013869969196134.Spec := by
  intro n
  simp only [A092246, Nat.add_sub_cancel, A092246.P9024013869969196134.a, A092246.P10064573919626078015.a, A010060, A010060.P3080921269106500717.a, A268676, A268676.P8159254776456483871.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A106400, A106400.P11201390576172776043.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092246

/-! ## A092246.P7119796089818306723

`record[A268669(2*n+1)]`
-/

namespace A092246.P7119796089818306723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092246.P7119796089818306723

namespace A092246

/-- `record[A268669(2*n+1)]` -/
def P7119796089818306723.Spec : Prop :=
  ∀ n, P7119796089818306723.a n = A092246 (n + 1)

end A092246

/-! ## A092246.P2897382642658574483

`comp[A254377(n+1)+n]`
-/

namespace A092246.P2897382642658574483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092246.P2897382642658574483

namespace A092246

/-- `comp[A254377(n+1)+n]` -/
def P2897382642658574483.Spec : Prop :=
  ∀ n, (P2897382642658574483.a n : ℤ) = A092246 (n + 1)

end A092246

/-! ## A092246.P14798079413764121448

`2*A001969(n+1)+1`
-/

namespace A092246.P14798079413764121448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001969 (n + 1) + 1

end

end A092246.P14798079413764121448

namespace A092246

/-- `2*A001969(n+1)+1` -/
def P14798079413764121448.Spec : Prop :=
  ∀ n, P14798079413764121448.a n = A092246 (n + 1)

theorem P14798079413764121448.correct : P14798079413764121448.Spec := by
  intro n
  simp only [A092246, Nat.add_sub_cancel, A092246.P14798079413764121448.a, A092246.P10064573919626078015.a, A001969, A001969.P9139304774861292784.a, A010060, A010060.P3080921269106500717.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092246

/-! ## A092246.P13270993697880715957

`2*A026147(n+1)-1`
-/

namespace A092246.P13270993697880715957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026147 (n + 1) - 1

end

end A092246.P13270993697880715957

namespace A092246

/-- `2*A026147(n+1)-1` -/
def P13270993697880715957.Spec : Prop :=
  ∀ n, P13270993697880715957.a n = A092246 (n + 1)

theorem P13270993697880715957.correct : P13270993697880715957.Spec := by
  intro n
  simp only [A092246, Nat.add_sub_cancel, A092246.P13270993697880715957.a, A092246.P10064573919626078015.a, A010060, A010060.P3080921269106500717.a, A026147, A026147.P16575442085374687038.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092246

/-! ## A092246.P15198604833977192458

`2*A140592(n+1)-3`
-/

namespace A092246.P15198604833977192458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140592 (n + 1) - 3

end

end A092246.P15198604833977192458

namespace A092246

/-- `2*A140592(n+1)-3` -/
def P15198604833977192458.Spec : Prop :=
  ∀ n, P15198604833977192458.a n = A092246 (n + 1)

theorem P15198604833977192458.correct : P15198604833977192458.Spec := by
  intro n
  simp only [A092246, Nat.add_sub_cancel, A092246.P15198604833977192458.a, A092246.P10064573919626078015.a, A010060, A010060.P3080921269106500717.a, A140592, A140592.P9802847602468291615.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A001969, A001969.P9139304774861292784.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092246

/-! ## A092246.P4826314142916199489

`A016825(n)-A106400(n)`
-/

namespace A092246.P4826314142916199489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - A106400 n

end

end A092246.P4826314142916199489

namespace A092246

/-- `A016825(n)-A106400(n)` -/
def P4826314142916199489.Spec : Prop :=
  ∀ n, P4826314142916199489.a n = A092246 (n + 1)

theorem P4826314142916199489.correct : P4826314142916199489.Spec := by
  intro n
  simp only [A092246, Nat.add_sub_cancel, A092246.P4826314142916199489.a, A092246.P10064573919626078015.a, A010060, A010060.P3080921269106500717.a, A016825, A016825.P4712696052905976233.a, A106400, A106400.P11201390576172776043.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092246

/-!
# A092247: a(0)=1, a(n+1)=ceiling((1+1/n)^n*a(n)).

The programs for A092247, there is no canonical definition to state claims against.
-/

/-! ## A092247.P15833975592097873137

`A075245(A116413(n+1))`
-/

namespace A092247.P15833975592097873137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075245 (A116413 (n + 1)).toNat

end

end A092247.P15833975592097873137

/-! ## A092247.P13811994481965590736

`Δ[A048285(∑[A287378(n)])]`
-/

namespace A092247.P13811994481965590736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048285 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092247.P13811994481965590736

/-! ## A092247.P6304842632983150276

`Δ[A048285(A287378(n)+n)]`
-/

namespace A092247.P6304842632983150276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048285 (A287378 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092247.P6304842632983150276

/-! ## A092247.P13994035922717650079

`A001045(n)+A000290(A053412(n))`
-/

namespace A092247.P13994035922717650079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A000290 (A053412 n).toNat

end

end A092247.P13994035922717650079

/-!
# A092248: Parity of number of distinct primes dividing n (function omega(n)) parity of A001221.

The programs for A092248, the canonical program `A092248.P6012556233968533590` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092248 has offset 1).

The definition of A092248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A268411, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092248.P6012556233968533590

`A268411(A156552(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A092248

/-- `A268411(A156552(n+1))` -/
def P6012556233968533590.Spec : Prop :=
  ∀ n, P6012556233968533590.a n = A092248 (n + 1)

theorem P6012556233968533590.correct : P6012556233968533590.Spec := by
  intro n
  simp only [A092248, Nat.add_sub_cancel]

end A092248

/-! ## A092248.P16622114096250111211

`∑{e}[n+1, 3^#]%2`
-/

namespace A092248.P16622114096250111211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p) % 2

end

end A092248.P16622114096250111211

namespace A092248

/-- `∑{e}[n+1, 3^#]%2` -/
def P16622114096250111211.Spec : Prop :=
  ∀ n, (P16622114096250111211.a n : ℤ) = A092248 (n + 1)

end A092248

/-! ## A092248.P9955946578333717782

`∑{p}[n+1, gcd(3, #)]%2`
-/

namespace A092248.P9955946578333717782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd 3 p) % 2

end

end A092248.P9955946578333717782

namespace A092248

/-- `∑{p}[n+1, gcd(3, #)]%2` -/
def P9955946578333717782.Spec : Prop :=
  ∀ n, (P9955946578333717782.a n : ℤ) = A092248 (n + 1)

end A092248

/-! ## A092248.P16720991815328988184

`and(1, ∑{e}[n+1, 3^#])`
-/

namespace A092248.P16720991815328988184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p)

end

end A092248.P16720991815328988184

namespace A092248

/-- `and(1, ∑{e}[n+1, 3^#])` -/
def P16720991815328988184.Spec : Prop :=
  ∀ n, (P16720991815328988184.a n : ℤ) = A092248 (n + 1)

end A092248

/-! ## A092248.P12149163632374846816

`∑{p}[n+1, or(1, #)]%2`
-/

namespace A092248.P12149163632374846816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.lor 1 p) % 2

end

end A092248.P12149163632374846816

namespace A092248

/-- `∑{p}[n+1, or(1, #)]%2` -/
def P12149163632374846816.Spec : Prop :=
  ∀ n, (P12149163632374846816.a n : ℤ) = A092248 (n + 1)

end A092248

/-! ## A092248.P1816488575671688871

`(∑{p}[n+1, #]+n)%2`
-/

namespace A092248.P1816488575671688871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p + n) % 2

end

end A092248.P1816488575671688871

namespace A092248

/-- `(∑{p}[n+1, #]+n)%2` -/
def P1816488575671688871.Spec : Prop :=
  ∀ n, (P1816488575671688871.a n : ℤ) = A092248 (n + 1)

end A092248

/-! ## A092248.P3890472781518290662

`and(1, ∑{p}[n+1, #]+n)`
-/

namespace A092248.P3890472781518290662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), p + n)

end

end A092248.P3890472781518290662

namespace A092248

/-- `and(1, ∑{p}[n+1, #]+n)` -/
def P3890472781518290662.Spec : Prop :=
  ∀ n, (P3890472781518290662.a n : ℤ) = A092248 (n + 1)

end A092248

/-! ## A092248.P8141888586510950616

`-floor(∏{p}[n+1, -#]/(n+2))`
-/

namespace A092248.P8141888586510950616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ)⌋

end

end A092248.P8141888586510950616

namespace A092248

/-- `-floor(∏{p}[n+1, -#]/(n+2))` -/
def P8141888586510950616.Spec : Prop :=
  ∀ n, P8141888586510950616.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P4930711145472414306

`ceil(-(∏{p}[n+1, -#]/(n+2)))`
-/

namespace A092248.P4930711145472414306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-(((∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ)) : ℤ) : ℚ) / (n + 2 : ℚ))⌉

end

end A092248.P4930711145472414306

namespace A092248

/-- `ceil(-(∏{p}[n+1, -#]/(n+2)))` -/
def P4930711145472414306.Spec : Prop :=
  ∀ n, P4930711145472414306.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P3386114688420552370

`A001221(n+1)%2`
-/

namespace A092248.P3386114688420552370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (n + 1)) 2

end

end A092248.P3386114688420552370

namespace A092248

/-- `A001221(n+1)%2` -/
def P3386114688420552370.Spec : Prop :=
  ∀ n, P3386114688420552370.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P12766842234972311181

`A254340(n+1)%2`
-/

namespace A092248.P12766842234972311181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254340 (n + 1)) 2

end

end A092248.P12766842234972311181

namespace A092248

/-- `A254340(n+1)%2` -/
def P12766842234972311181.Spec : Prop :=
  ∀ n, P12766842234972311181.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P4139774879448503539

`A304251(n+1)%2`
-/

namespace A092248.P4139774879448503539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304251 (n + 1)) 2

end

end A092248.P4139774879448503539

namespace A092248

/-- `A304251(n+1)%2` -/
def P4139774879448503539.Spec : Prop :=
  ∀ n, P4139774879448503539.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P16474549276076826681

`A306363(n+1)%2`
-/

namespace A092248.P16474549276076826681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306363 (n + 1)) 2

end

end A092248.P16474549276076826681

namespace A092248

/-- `A306363(n+1)%2` -/
def P16474549276076826681.Spec : Prop :=
  ∀ n, P16474549276076826681.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P3979185575942483479

`A322177(n+1)%2`
-/

namespace A092248.P3979185575942483479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322177 (n + 1)) 2

end

end A092248.P3979185575942483479

namespace A092248

/-- `A322177(n+1)%2` -/
def P3979185575942483479.Spec : Prop :=
  ∀ n, P3979185575942483479.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P7991143512046908123

`A325938(n+1)%2`
-/

namespace A092248.P7991143512046908123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325938 (n + 1)) 2

end

end A092248.P7991143512046908123

namespace A092248

/-- `A325938(n+1)%2` -/
def P7991143512046908123.Spec : Prop :=
  ∀ n, P7991143512046908123.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P3797166004240073686

`A340227(n+1)%2`
-/

namespace A092248.P3797166004240073686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340227 (n + 1)) 2

end

end A092248.P3797166004240073686

namespace A092248

/-- `A340227(n+1)%2` -/
def P3797166004240073686.Spec : Prop :=
  ∀ n, P3797166004240073686.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P12204483393133436940

`A345279(n+1)%2`
-/

namespace A092248.P12204483393133436940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345279 (n + 1)) 2

end

end A092248.P12204483393133436940

namespace A092248

/-- `A345279(n+1)%2` -/
def P12204483393133436940.Spec : Prop :=
  ∀ n, P12204483393133436940.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P6800114210063993586

`A345280(n+1)%2`
-/

namespace A092248.P6800114210063993586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345280 (n + 1)) 2

end

end A092248.P6800114210063993586

namespace A092248

/-- `A345280(n+1)%2` -/
def P6800114210063993586.Spec : Prop :=
  ∀ n, P6800114210063993586.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P14134998912249319236

`A349258(n+1)%2`
-/

namespace A092248.P14134998912249319236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349258 (n + 1)) 2

end

end A092248.P14134998912249319236

namespace A092248

/-- `A349258(n+1)%2` -/
def P14134998912249319236.Spec : Prop :=
  ∀ n, P14134998912249319236.a n = A092248 (n + 1)

end A092248

/-! ## A092248.P5272530889973845665

`A349326(n+1)%2`
-/

namespace A092248.P5272530889973845665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349326 (n + 1)) 2

end

end A092248.P5272530889973845665

namespace A092248

/-- `A349326(n+1)%2` -/
def P5272530889973845665.Spec : Prop :=
  ∀ n, P5272530889973845665.a n = A092248 (n + 1)

end A092248

/-!
# A092249: Positions of the integers in the standard diagonal enumeration of the rationals (with the integers in the first column and diagonals moving up to the right).

The programs for A092249, the canonical program `A092249.P8919152455619656948` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092249 has offset 1).

The definition of A092249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092249.P1537945171802333964

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]`
-/

namespace A092249.P1537945171802333964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P1537945171802333964

namespace A092249

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]]` -/
def P1537945171802333964.Spec : Prop :=
  ∀ n, P1537945171802333964.a n = (A092249 (n + 1) : ℚ)

end A092249

/-! ## A092249.P9676821329204155362

`a(n-1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` with `a(0)=1`
-/

namespace A092249.P9676821329204155362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A092249.P9676821329204155362

namespace A092249

/-- `a(n-1)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P9676821329204155362.Spec : Prop :=
  ∀ n, P9676821329204155362.a n = (A092249 (n + 1) : ℚ)

end A092249

/-! ## A092249.P12283341778163305223

`Δ[A103116(n)]`
-/

namespace A092249.P12283341778163305223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092249.P12283341778163305223

namespace A092249

/-- `Δ[A103116(n)]` -/
def P12283341778163305223.Spec : Prop :=
  ∀ n, P12283341778163305223.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P5733953258143288154

`A002088(n+1)`
-/

namespace A092249.P5733953258143288154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

end

end A092249.P5733953258143288154

namespace A092249

/-- `A002088(n+1)` -/
def P5733953258143288154.Spec : Prop :=
  ∀ n, P5733953258143288154.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P17440248660125784286

`∑[A000010(n+1)]`
-/

namespace A092249.P17440248660125784286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P17440248660125784286

namespace A092249

/-- `∑[A000010(n+1)]` -/
def P17440248660125784286.Spec : Prop :=
  ∀ n, P17440248660125784286.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P6349481482184579177

`Δ[A049688(n)]-1`
-/

namespace A092249.P6349481482184579177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A092249.P6349481482184579177

namespace A092249

/-- `Δ[A049688(n)]-1` -/
def P6349481482184579177.Spec : Prop :=
  ∀ n, P6349481482184579177.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P6707858870787016446

`∑[abs(Δ[A002088(n)])]`
-/

namespace A092249.P6707858870787016446
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P6707858870787016446

namespace A092249

/-- `∑[abs(Δ[A002088(n)])]` -/
def P6707858870787016446.Spec : Prop :=
  ∀ n, P6707858870787016446.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P14993927901715362085

`A015614(n+1)+1`
-/

namespace A092249.P14993927901715362085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + 1

end

end A092249.P14993927901715362085

namespace A092249

/-- `A015614(n+1)+1` -/
def P14993927901715362085.Spec : Prop :=
  ∀ n, P14993927901715362085.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P17206646597016557549

`A005728(n+1)-1`
-/

namespace A092249.P17206646597016557549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) - 1

end

end A092249.P17206646597016557549

namespace A092249

/-- `A005728(n+1)-1` -/
def P17206646597016557549.Spec : Prop :=
  ∀ n, P17206646597016557549.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P14865176656942878205

`A140466(n+1)/4`
-/

namespace A092249.P14865176656942878205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140466 (n + 1) : ℚ) / 4

end

end A092249.P14865176656942878205

namespace A092249

/-- `A140466(n+1)/4` -/
def P14865176656942878205.Spec : Prop :=
  ∀ n, P14865176656942878205.a n = (A092249 (n + 1) : ℚ)

end A092249

/-! ## A092249.P18439684535511430861

`A137243(n+1)/8`
-/

namespace A092249.P18439684535511430861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137243 (n + 1) : ℚ) / 8

end

end A092249.P18439684535511430861

namespace A092249

/-- `A137243(n+1)/8` -/
def P18439684535511430861.Spec : Prop :=
  ∀ n, P18439684535511430861.a n = (A092249 (n + 1) : ℚ)

end A092249

/-! ## A092249.P13823989187973021547

`A187263(n+1)-n`
-/

namespace A092249.P13823989187973021547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187263 (n + 1) - (n : ℤ)

end

end A092249.P13823989187973021547

namespace A092249

/-- `A187263(n+1)-n` -/
def P13823989187973021547.Spec : Prop :=
  ∀ n, P13823989187973021547.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P17612377968066528009

`∑[sqrt(A127473(n+1))]`
-/

namespace A092249.P17612377968066528009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P17612377968066528009

namespace A092249

/-- `∑[sqrt(A127473(n+1))]` -/
def P17612377968066528009.Spec : Prop :=
  ∀ n, P17612377968066528009.a n = (A092249 (n + 1) : ℝ)

end A092249

/-! ## A092249.P5092621648772092427

`record[A002088(abs(1-n))]`
-/

namespace A092249.P5092621648772092427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092249.P5092621648772092427

namespace A092249

/-- `record[A002088(abs(1-n))]` -/
def P5092621648772092427.Spec : Prop :=
  ∀ n, P5092621648772092427.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P16227899229091066576

`ceil(A018805(n+1)/2)`
-/

namespace A092249.P16227899229091066576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A018805 (n + 1) : ℚ) / 2⌉

end

end A092249.P16227899229091066576

namespace A092249

/-- `ceil(A018805(n+1)/2)` -/
def P16227899229091066576.Spec : Prop :=
  ∀ n, P16227899229091066576.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P13863131240423128047

`∑[A109606(n+1)+1]`
-/

namespace A092249.P13863131240423128047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P13863131240423128047

namespace A092249

/-- `∑[A109606(n+1)+1]` -/
def P13863131240423128047.Spec : Prop :=
  ∀ n, P13863131240423128047.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P2711810058209152103

`∑[A039649(n+1)-1]`
-/

namespace A092249.P2711810058209152103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P2711810058209152103

namespace A092249

/-- `∑[A039649(n+1)-1]` -/
def P2711810058209152103.Spec : Prop :=
  ∀ n, P2711810058209152103.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P16660389685887673114

`∑[A349137(2*n+1)]`
-/

namespace A092249.P16660389685887673114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P16660389685887673114

namespace A092249

/-- `∑[A349137(2*n+1)]` -/
def P16660389685887673114.Spec : Prop :=
  ∀ n, P16660389685887673114.a n = A092249 (n + 1)

end A092249

/-! ## A092249.P8919152455619656948

`A091369(n+1)-∑[n]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A092249

/-- `A091369(n+1)-∑[n]` -/
def P8919152455619656948.Spec : Prop :=
  ∀ n, P8919152455619656948.a n = A092249 (n + 1)

theorem P8919152455619656948.correct : P8919152455619656948.Spec := by
  intro n
  simp only [A092249, Nat.add_sub_cancel]

end A092249

/-! ## A092249.P5233548323009578120

`∑[n-A219428(n+1)]`
-/

namespace A092249.P5233548323009578120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092249.P5233548323009578120

namespace A092249

/-- `∑[n-A219428(n+1)]` -/
def P5233548323009578120.Spec : Prop :=
  ∀ n, P5233548323009578120.a n = A092249 (n + 1)

end A092249

/-!
# A092250: Lesser of the greatest twin prime pair with n digits.

The programs for A092250, there is no canonical definition to state claims against.
-/

/-! ## A092250.P12556200892556531996

`A114429(n+1)-2`
-/

namespace A092250.P12556200892556531996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114429 (n + 1) - 2

end

end A092250.P12556200892556531996

/-! ## A092250.P14485270057703016599

`A011557(n+1)-A327133(n+1)`
-/

namespace A092250.P14485270057703016599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A327133 (n + 1)

end

end A092250.P14485270057703016599

/-! ## A092250.P11636716233586557

`A178500(n+1)-A327133(n+1)`
-/

namespace A092250.P11636716233586557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) - A327133 (n + 1)

end

end A092250.P11636716233586557

/-! ## A092250.P14245849481985645794

`A178501(n+2)-A327133(n+1)`
-/

namespace A092250.P14245849481985645794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 2) - A327133 (n + 1)

end

end A092250.P14245849481985645794

/-! ## A092250.P1544456756746694519

`Δ[A002275(n+1)]-A327133(n+1)`
-/

namespace A092250.P1544456756746694519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A327133 (n + 1)

end

end A092250.P1544456756746694519

/-!
# A092251: Lesser of the smallest twin prime pair on or after the 10^n-th prime.

The programs for A092251, there is no canonical definition to state claims against.
-/

/-! ## A092251.P11361386819453615568

`A004139(A127746(n+1)-A127798(n+1))`
-/

namespace A092251.P11361386819453615568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A127746 (n + 1) - A127798 (n + 1)).toNat

end

end A092251.P11361386819453615568

/-!
# A092252: a(n) = prime(prime(10^n)).

The programs for A092252, the canonical program `A092252.P17826796624829402363` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092252 has offset 0).

The definition of A092252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092252.P17826796624829402363

`A006450(10^n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092252

/-- `A006450(10^n)` -/
def P17826796624829402363.Spec : Prop :=
  ∀ n, P17826796624829402363.a n = A092252 n

theorem P17826796624829402363.correct : P17826796624829402363.Spec := by
  intro n
  simp only [A092252]

end A092252

/-! ## A092252.P5503651273230707237

`record[A006450(A038303(n))]`
-/

namespace A092252.P5503651273230707237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A038303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092252.P5503651273230707237

namespace A092252

/-- `record[A006450(A038303(n))]` -/
def P5503651273230707237.Spec : Prop :=
  ∀ n, P5503651273230707237.a n = A092252 n

end A092252

/-!
# A092254: Number of permutations of 1,...,2n with alternate odd/even entries that have no adjacent members.

The programs for A092254, there is no canonical definition to state claims against.
-/

/-! ## A092254.P8636653285269419525

`A054898(C(n², n))`
-/

namespace A092254.P8636653285269419525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (Nat.choose (n ^ 2) n)

end

end A092254.P8636653285269419525

/-!
# A092255: a(0) = 1; for n > 0, a(n) = b(n) - n*b(n-1), b() = A076177().

The programs for A092255, there is no canonical definition to state claims against.
-/

/-! ## A092255.P15332508831380918393

`A226873(∑[n+3]+n+3)`
-/

namespace A092255.P15332508831380918393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A092255.P15332508831380918393

/-! ## A092255.P14200394412375017377

`A226873(A046691(n+2))%A041088(n)`
-/

namespace A092255.P14200394412375017377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226873 (A046691 (n + 2)).toNat) (A041088 n)

end

end A092255.P14200394412375017377

/-! ## A092255.P7525238252473698596

`A226873(A046691(n+2))+char[A045942(n+2)-n²]`
-/

namespace A092255.P7525238252473698596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045942 (n + 2) - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092255.P7525238252473698596

/-! ## A092255.P6755650579182759043

`A226873(A046691(n+2))+char[A045936(n+1)-1-n²]`
-/

namespace A092255.P6755650579182759043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045936 (n + 1) - 1 - (n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A092255.P6755650579182759043

/-! ## A092255.P5545737172808767392

`A226873(A046691(n+2))+A014017(A157502(n+1)+1)`
-/

namespace A092255.P5545737172808767392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A046691 (n + 2)).toNat + A014017 (A157502 (n + 1) + 1).toNat

end

end A092255.P5545737172808767392

/-!
# A092256: Nonprimes of form 6k+5.

The programs for A092256, the canonical program `A092256.P2919637322678996095` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092256 has offset 1).

The definition of A092256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092256.P2919637322678996095

`2*(A138685(n+1)+3)+3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A092256

/-- `2*(A138685(n+1)+3)+3` -/
def P2919637322678996095.Spec : Prop :=
  ∀ n, P2919637322678996095.a n = A092256 (n + 1)

theorem P2919637322678996095.correct : P2919637322678996095.Spec := by
  intro n
  simp only [A092256, Nat.add_sub_cancel]

end A092256

/-! ## A092256.P12702239749732967978

`3*(2*A046953(n+1)-1)+2`
-/

namespace A092256.P12702239749732967978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A046953 (n + 1) - 1) + 2

end

end A092256.P12702239749732967978

namespace A092256

/-- `3*(2*A046953(n+1)-1)+2` -/
def P12702239749732967978.Spec : Prop :=
  ∀ n, P12702239749732967978.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P12855078805316270625

`3*(A059324(n+1)+A046953(n+1))+2`
-/

namespace A092256.P12855078805316270625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A059324 (n + 1) + A046953 (n + 1)) + 2

end

end A092256.P12855078805316270625

namespace A092256

/-- `3*(A059324(n+1)+A046953(n+1))+2` -/
def P12855078805316270625.Spec : Prop :=
  ∀ n, P12855078805316270625.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P8285960592268743122

`2*A016789(A059324(n+1))+1`
-/

namespace A092256.P8285960592268743122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016789 (A059324 (n + 1)).toNat + 1

end

end A092256.P8285960592268743122

namespace A092256

/-- `2*A016789(A059324(n+1))+1` -/
def P8285960592268743122.Spec : Prop :=
  ∀ n, P8285960592268743122.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P3570218724769441621

`A016969(A059324(n+1))`
-/

namespace A092256.P3570218724769441621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A059324 (n + 1)).toNat

end

end A092256.P3570218724769441621

namespace A092256

/-- `A016969(A059324(n+1))` -/
def P3570218724769441621.Spec : Prop :=
  ∀ n, P3570218724769441621.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P1411104624177942093

`filter[A016969(n), A005171(#)]`
-/

namespace A092256.P1411104624177942093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A092256.P1411104624177942093

namespace A092256

/-- `filter[A016969(n), A005171(#)]` -/
def P1411104624177942093.Spec : Prop :=
  ∀ n, P1411104624177942093.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P12481490499292836183

`filter[A016969(n), A066247(#)]`
-/

namespace A092256.P12481490499292836183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A092256.P12481490499292836183

namespace A092256

/-- `filter[A016969(n), A066247(#)]` -/
def P12481490499292836183.Spec : Prop :=
  ∀ n, P12481490499292836183.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P3873820970210889571

`filter[A016969(n), A202238(#)]`
-/

namespace A092256.P3873820970210889571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A092256.P3873820970210889571

namespace A092256

/-- `filter[A016969(n), A202238(#)]` -/
def P3873820970210889571.Spec : Prop :=
  ∀ n, P3873820970210889571.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P5123617813322491533

`filter[A016969(n), A292438(#)]`
-/

namespace A092256.P5123617813322491533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A092256.P5123617813322491533

namespace A092256

/-- `filter[A016969(n), A292438(#)]` -/
def P5123617813322491533.Spec : Prop :=
  ∀ n, P5123617813322491533.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P5470601206990842500

`filter[A016969(n), A323162(#)]`
-/

namespace A092256.P5470601206990842500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A092256.P5470601206990842500

namespace A092256

/-- `filter[A016969(n), A323162(#)]` -/
def P5470601206990842500.Spec : Prop :=
  ∀ n, P5470601206990842500.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P13311366808708057164

`A016969(comp[A059325(n+1)])`
-/

namespace A092256.P13311366808708057164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A092256.P13311366808708057164

namespace A092256

/-- `A016969(comp[A059325(n+1)])` -/
def P13311366808708057164.Spec : Prop :=
  ∀ n, P13311366808708057164.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P5576365237625083807

`A008458(A046953(n+1))-1`
-/

namespace A092256.P5576365237625083807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A046953 (n + 1)).toNat - 1

end

end A092256.P5576365237625083807

namespace A092256

/-- `A008458(A046953(n+1))-1` -/
def P5576365237625083807.Spec : Prop :=
  ∀ n, P5576365237625083807.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P2041707236672672573

`A016969(A046953(n+1)-1)`
-/

namespace A092256.P2041707236672672573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A046953 (n + 1) - 1).toNat

end

end A092256.P2041707236672672573

namespace A092256

/-- `A016969(A046953(n+1)-1)` -/
def P2041707236672672573.Spec : Prop :=
  ∀ n, P2041707236672672573.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P18068492312235693670

`A101328(A046953(n+1)+2)`
-/

namespace A092256.P18068492312235693670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (A046953 (n + 1) + 2).toNat

end

end A092256.P18068492312235693670

namespace A092256

/-- `A101328(A046953(n+1)+2)` -/
def P18068492312235693670.Spec : Prop :=
  ∀ n, P18068492312235693670.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P11513883582832878121

`filter[A101328(n+2), A066247(#)]`
-/

namespace A092256.P11513883582832878121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A092256.P11513883582832878121

namespace A092256

/-- `filter[A101328(n+2), A066247(#)]` -/
def P11513883582832878121.Spec : Prop :=
  ∀ n, P11513883582832878121.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P14137363984793620153

`filter[A101328(n+2), A202238(#)]`
-/

namespace A092256.P14137363984793620153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A092256.P14137363984793620153

namespace A092256

/-- `filter[A101328(n+2), A202238(#)]` -/
def P14137363984793620153.Spec : Prop :=
  ∀ n, P14137363984793620153.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P7706158692122982319

`filter[A101328(n+2), A323162(#)]`
-/

namespace A092256.P7706158692122982319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A092256.P7706158692122982319

namespace A092256

/-- `filter[A101328(n+2), A323162(#)]` -/
def P7706158692122982319.Spec : Prop :=
  ∀ n, P7706158692122982319.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P5919463987184927207

`filter[A101328(n+3), A005171(#)]`
-/

namespace A092256.P5919463987184927207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A092256.P5919463987184927207

namespace A092256

/-- `filter[A101328(n+3), A005171(#)]` -/
def P5919463987184927207.Spec : Prop :=
  ∀ n, P5919463987184927207.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P18166175573096340944

`filter[A101328(n+3), A292438(#)]`
-/

namespace A092256.P18166175573096340944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A092256.P18166175573096340944

namespace A092256

/-- `filter[A101328(n+3), A292438(#)]` -/
def P18166175573096340944.Spec : Prop :=
  ∀ n, P18166175573096340944.a n = A092256 (n + 1)

end A092256

/-! ## A092256.P12948519922903464942

`A064635(n+1)-5`
-/

namespace A092256.P12948519922903464942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064635 (n + 1) - 5

end

end A092256.P12948519922903464942

namespace A092256

/-- `A064635(n+1)-5` -/
def P12948519922903464942.Spec : Prop :=
  ∀ n, P12948519922903464942.a n = A092256 (n + 1)

end A092256

/-!
# A092257: Sum_i [i*(i-th digit)] for n-th prime.

The programs for A092257, there is no canonical definition to state claims against.
-/

/-! ## A092257.P16553044776082306768

`A156294(n+1)+A156269(n)%4`
-/

namespace A092257.P16553044776082306768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156294 (n + 1) + Int.tmod (A156269 n) 4

end

end A092257.P16553044776082306768

/-! ## A092257.P7762841245350287008

`A156294(n+1)+and(3, A002805(n+1))`
-/

namespace A092257.P7762841245350287008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156294 (n + 1) + Int.land 3 (A002805 (n + 1))

end

end A092257.P7762841245350287008

/-! ## A092257.P12388897024762326868

`A156294(floor(acot(A035612(n+1)²%(n+1))+n)+1)`
-/

namespace A092257.P12388897024762326868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156294 (⌊SequenceMachineLib.acot (Int.tmod (A035612 (n + 1) ^ 2) (n + 1 : ℤ) : ℝ) + (n : ℝ)⌋ + 1).toNat

end

end A092257.P12388897024762326868

/-! ## A092257.P172265422075490565

`A156294(n+1)+and(A156269(n), A243310(n))`
-/

namespace A092257.P172265422075490565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156294 (n + 1) + Int.land (A156269 n) (A243310 n)

end

end A092257.P172265422075490565

/-! ## A092257.P15385428584264105429

`A156294(n+1)+and(A131818(n+1), A156269(n))`
-/

namespace A092257.P15385428584264105429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156294 (n + 1) + Int.land (A131818 (n + 1)) (A156269 n)

end

end A092257.P15385428584264105429

/-! ## A092257.P4437585265608811021

`A156294(n+1)+and(A156269(n), A235715(n+1))`
-/

namespace A092257.P4437585265608811021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156294 (n + 1) + Int.land (A156269 n) (A235715 (n + 1))

end

end A092257.P4437585265608811021

/-! ## A092257.P11221406884270326303

`A243310(A047513(n+1))+A156294(n+1)`
-/

namespace A092257.P11221406884270326303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243310 (A047513 (n + 1)).toNat + A156294 (n + 1)

end

end A092257.P11221406884270326303

/-!
# A092258: 

The programs for A092258, there is no canonical definition to state claims against.
-/

/-! ## A092258.P10607719113303244757

`(1-2^n)^2^n`
-/

namespace A092258.P10607719113303244757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) ^ 2 ^ n

end

end A092258.P10607719113303244757

/-!
# A092259: Numbers that are congruent to {4, 8} mod 12.

The programs for A092259, the canonical program `A092259.P10784237351839642027` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092259 has offset 1).

The definition of A092259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092259.P10784237351839642027

`12*n-a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092259

/-- `12*n-a(n-1)` -/
def P10784237351839642027.Spec : Prop :=
  ∀ n, P10784237351839642027.a n = A092259 (n + 1)

theorem P10784237351839642027.correct : P10784237351839642027.Spec := by
  intro n
  simp only [A092259, Nat.add_sub_cancel]

end A092259

/-! ## A092259.P687453740040853114

`6*(n+1)-3-(-1)^(n+1)`
-/

namespace A092259.P687453740040853114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) - 3 - (-1) ^ (n + 1)

end

end A092259.P687453740040853114

namespace A092259

/-- `6*(n+1)-3-(-1)^(n+1)` -/
def P687453740040853114.Spec : Prop :=
  ∀ n, P687453740040853114.a n = A092259 (n + 1)

theorem P687453740040853114.correct : P687453740040853114.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A092259, Nat.add_sub_cancel, A092259.P687453740040853114.a, A092259.P10784237351839642027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A092259, Nat.add_sub_cancel, A092259.P687453740040853114.a, A092259.P10784237351839642027.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092259

/-! ## A092259.P6148838236857387295

`4*A001651(n+1)`
-/

namespace A092259.P6148838236857387295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001651 (n + 1)

end

end A092259.P6148838236857387295

namespace A092259

/-- `4*A001651(n+1)` -/
def P6148838236857387295.Spec : Prop :=
  ∀ n, P6148838236857387295.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P6476372352807209157

`and(6*n+4, -3)`
-/

namespace A092259.P6476372352807209157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (6 * n + 4 : ℤ) (-3)

end

end A092259.P6476372352807209157

namespace A092259

/-- `and(6*n+4, -3)` -/
def P6476372352807209157.Spec : Prop :=
  ∀ n, P6476372352807209157.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P5463767066362426439

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=4, a(2)=8`
-/

namespace A092259.P5463767066362426439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P5463767066362426439

namespace A092259

/-- `∑[abs(a(n-2))]` -/
def P5463767066362426439.Spec : Prop :=
  ∀ n, (P5463767066362426439.a n : ℤ) = A092259 (n + 1)

end A092259

/-! ## A092259.P6819039294557229057

`∑[12-a(n-1)]` with `a(0)=4, a(1)=4`
-/

namespace A092259.P6819039294557229057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P6819039294557229057

namespace A092259

/-- `∑[12-a(n-1)]` -/
def P6819039294557229057.Spec : Prop :=
  ∀ n, P6819039294557229057.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P1094933108370870663

`∑[∑[ogf((4+4x+4x^2)/(1+x))]]`
-/

namespace A092259.P1094933108370870663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P1094933108370870663

namespace A092259

/-- `∑[∑[ogf((4+4x+4x^2)/(1+x))]]` -/
def P1094933108370870663.Spec : Prop :=
  ∀ n, P1094933108370870663.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P4150306607204295382

`ogf((4+4x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A092259.P4150306607204295382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, 4] [1, -1, -1, 1] n

end

end A092259.P4150306607204295382

namespace A092259

/-- `ogf((4+4x+4x^2)/(1-x-x^2+x^3))` -/
def P4150306607204295382.Spec : Prop :=
  ∀ n, P4150306607204295382.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P16323894968859869350

`record[lcm(3, 4*(n+1))/3]`
-/

namespace A092259.P16323894968859869350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (4 * (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092259.P16323894968859869350

namespace A092259

/-- `record[lcm(3, 4*(n+1))/3]` -/
def P16323894968859869350.Spec : Prop :=
  ∀ n, P16323894968859869350.a n = (A092259 (n + 1) : ℚ)

end A092259

/-! ## A092259.P11885453361484197880

`Δ[(2*n)²-or(1, n²)]`
-/

namespace A092259.P11885453361484197880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.lor 1 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092259.P11885453361484197880

namespace A092259

/-- `Δ[(2*n)²-or(1, n²)]` -/
def P11885453361484197880.Spec : Prop :=
  ∀ n, P11885453361484197880.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P15293950141528057923

`∑[A040013(n)]`
-/

namespace A092259.P15293950141528057923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P15293950141528057923

namespace A092259

/-- `∑[A040013(n)]` -/
def P15293950141528057923.Spec : Prop :=
  ∀ n, P15293950141528057923.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P11768600543350766042

`∑[dr(A040157(n))]`
-/

namespace A092259.P11768600543350766042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040157 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P11768600543350766042

namespace A092259

/-- `∑[dr(A040157(n))]` -/
def P11768600543350766042.Spec : Prop :=
  ∀ n, (P11768600543350766042.a n : ℤ) = A092259 (n + 1)

end A092259

/-! ## A092259.P3781152658254214203

`∑[dr(A040463(n))]`
-/

namespace A092259.P3781152658254214203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040463 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P3781152658254214203

namespace A092259

/-- `∑[dr(A040463(n))]` -/
def P3781152658254214203.Spec : Prop :=
  ∀ n, (P3781152658254214203.a n : ℤ) = A092259 (n + 1)

end A092259

/-! ## A092259.P146150663679192138

`∑[dr(A040472(n))]`
-/

namespace A092259.P146150663679192138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040472 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P146150663679192138

namespace A092259

/-- `∑[dr(A040472(n))]` -/
def P146150663679192138.Spec : Prop :=
  ∀ n, (P146150663679192138.a n : ℤ) = A092259 (n + 1)

end A092259

/-! ## A092259.P15356182051517293561

`∑[dr(A040931(n))]`
-/

namespace A092259.P15356182051517293561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040931 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P15356182051517293561

namespace A092259

/-- `∑[dr(A040931(n))]` -/
def P15356182051517293561.Spec : Prop :=
  ∀ n, (P15356182051517293561.a n : ℤ) = A092259 (n + 1)

end A092259

/-! ## A092259.P13118290576368439616

`∑[2*A040003(n)]`
-/

namespace A092259.P13118290576368439616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P13118290576368439616

namespace A092259

/-- `∑[2*A040003(n)]` -/
def P13118290576368439616.Spec : Prop :=
  ∀ n, P13118290576368439616.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P9022707064531981230

`∑[A040057(n)/2]`
-/

namespace A092259.P9022707064531981230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040057 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P9022707064531981230

namespace A092259

/-- `∑[A040057(n)/2]` -/
def P9022707064531981230.Spec : Prop :=
  ∀ n, P9022707064531981230.a n = (A092259 (n + 1) : ℚ)

end A092259

/-! ## A092259.P13327720441207663072

`∑[4*A040001(n)]`
-/

namespace A092259.P13327720441207663072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P13327720441207663072

namespace A092259

/-- `∑[4*A040001(n)]` -/
def P13327720441207663072.Spec : Prop :=
  ∀ n, P13327720441207663072.a n = A092259 (n + 1)

end A092259

/-! ## A092259.P4068258835870493592

`∑[A040133(n)/3]`
-/

namespace A092259.P4068258835870493592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040133 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P4068258835870493592

namespace A092259

/-- `∑[A040133(n)/3]` -/
def P4068258835870493592.Spec : Prop :=
  ∀ n, P4068258835870493592.a n = (A092259 (n + 1) : ℚ)

end A092259

/-! ## A092259.P8068247109327881890

`∑[A040241(n)/4]`
-/

namespace A092259.P8068247109327881890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040241 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092259.P8068247109327881890

namespace A092259

/-- `∑[A040241(n)/4]` -/
def P8068247109327881890.Spec : Prop :=
  ∀ n, P8068247109327881890.a n = (A092259 (n + 1) : ℚ)

end A092259

/-!
# A092261: Sum of unitary, squarefree divisors of n, including 1.

The programs for A092261, the canonical program `A092261.P11403511796116652889` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092261 has offset 1).

The definition of A092261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048250, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092261.P12466608469522790316

`A000203(A055231(n+1))`
-/

namespace A092261.P12466608469522790316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055231 (n + 1)).toNat

end

end A092261.P12466608469522790316

namespace A092261

/-- `A000203(A055231(n+1))` -/
def P12466608469522790316.Spec : Prop :=
  ∀ n, P12466608469522790316.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P6538814063342567039

`A000203(n+1)/A295294(n+1)`
-/

namespace A092261.P6538814063342567039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A295294 (n + 1) : ℚ)

end

end A092261.P6538814063342567039

namespace A092261

/-- `A000203(n+1)/A295294(n+1)` -/
def P6538814063342567039.Spec : Prop :=
  ∀ n, P6538814063342567039.a n = (A092261 (n + 1) : ℚ)

end A092261

/-! ## A092261.P12369154275103391771

`A048250(n+1)/A295295(n+1)`
-/

namespace A092261.P12369154275103391771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A295295 (n + 1) : ℚ)

end

end A092261.P12369154275103391771

namespace A092261

/-- `A048250(n+1)/A295295(n+1)` -/
def P12369154275103391771.Spec : Prop :=
  ∀ n, P12369154275103391771.a n = (A092261 (n + 1) : ℚ)

end A092261

/-! ## A092261.P11403511796116652889

`A048250(n+1)/A048250(A057521(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092261

/-- `A048250(n+1)/A048250(A057521(n+1))` -/
def P11403511796116652889.Spec : Prop :=
  ∀ n, P11403511796116652889.a n = (A092261 (n + 1) : ℚ)

end A092261

/-! ## A092261.P13352791853033325172

`∑{d}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #]`
-/

namespace A092261.P13352791853033325172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A092261.P13352791853033325172

namespace A092261

/-- `∑{d}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #]` -/
def P13352791853033325172.Spec : Prop :=
  ∀ n, (P13352791853033325172.a n : ℤ) = A092261 (n + 1)

end A092261

/-! ## A092261.P2199496149552210512

`∏{p}[n+1, #+1]/A048250((n+1)/∏{p}[n+1, #])`
-/

namespace A092261.P2199496149552210512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℚ) / (A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A092261.P2199496149552210512

namespace A092261

/-- `∏{p}[n+1, #+1]/A048250((n+1)/∏{p}[n+1, #])` -/
def P2199496149552210512.Spec : Prop :=
  ∀ n, P2199496149552210512.a n = (A092261 (n + 1) : ℚ)

end A092261

/-! ## A092261.P12735110216176773076

`A000203(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A092261.P12735110216176773076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A092261.P12735110216176773076

namespace A092261

/-- `A000203(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P12735110216176773076.Spec : Prop :=
  ∀ n, P12735110216176773076.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P15137002202378417522

`A351569(A056192(n+1))`
-/

namespace A092261.P15137002202378417522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A056192 (n + 1)).toNat

end

end A092261.P15137002202378417522

namespace A092261

/-- `A351569(A056192(n+1))` -/
def P15137002202378417522.Spec : Prop :=
  ∀ n, P15137002202378417522.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P5895002963871821974

`A366148(A350389(n+1))`
-/

namespace A092261.P5895002963871821974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366148 (A350389 (n + 1)).toNat

end

end A092261.P5895002963871821974

namespace A092261

/-- `A366148(A350389(n+1))` -/
def P5895002963871821974.Spec : Prop :=
  ∀ n, P5895002963871821974.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P11412107069544804844

`A351569(A367168(n+1))`
-/

namespace A092261.P11412107069544804844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351569 (A367168 (n + 1)).toNat

end

end A092261.P11412107069544804844

namespace A092261

/-- `A351569(A367168(n+1))` -/
def P11412107069544804844.Spec : Prop :=
  ∀ n, P11412107069544804844.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P5441443643525797324

`A366148(A368886(n+1))`
-/

namespace A092261.P5441443643525797324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366148 (A368886 (n + 1)).toNat

end

end A092261.P5441443643525797324

namespace A092261

/-- `A366148(A368886(n+1))` -/
def P5441443643525797324.Spec : Prop :=
  ∀ n, P5441443643525797324.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P17454925596228445250

`∏{p}[A055231(n+1), A129283(#)]`
-/

namespace A092261.P17454925596228445250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A129283 p

end

end A092261.P17454925596228445250

namespace A092261

/-- `∏{p}[A055231(n+1), A129283(#)]` -/
def P17454925596228445250.Spec : Prop :=
  ∀ n, P17454925596228445250.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P976869536222894537

`A245092(2*A055231(n+1)-1)`
-/

namespace A092261.P976869536222894537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * A055231 (n + 1) - 1).toNat

end

end A092261.P976869536222894537

namespace A092261

/-- `A245092(2*A055231(n+1)-1)` -/
def P976869536222894537.Spec : Prop :=
  ∀ n, P976869536222894537.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P8670947123109766136

`A000203((n+1)/A057521(n+1))`
-/

namespace A092261.P8670947123109766136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A092261.P8670947123109766136

namespace A092261

/-- `A000203((n+1)/A057521(n+1))` -/
def P8670947123109766136.Spec : Prop :=
  ∀ n, P8670947123109766136.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P17864866469798405789

`A001615((n+1)/A057521(n+1))`
-/

namespace A092261.P17864866469798405789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A092261.P17864866469798405789

namespace A092261

/-- `A001615((n+1)/A057521(n+1))` -/
def P17864866469798405789.Spec : Prop :=
  ∀ n, P17864866469798405789.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P9058377333153131920

`A034448((n+1)/A057521(n+1))`
-/

namespace A092261.P9058377333153131920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A092261.P9058377333153131920

namespace A092261

/-- `A034448((n+1)/A057521(n+1))` -/
def P9058377333153131920.Spec : Prop :=
  ∀ n, P9058377333153131920.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P9289706676828119150

`A048250((n+1)/A057521(n+1))`
-/

namespace A092261.P9289706676828119150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A092261.P9289706676828119150

namespace A092261

/-- `A048250((n+1)/A057521(n+1))` -/
def P9289706676828119150.Spec : Prop :=
  ∀ n, P9289706676828119150.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P15897292016587415157

`A049417((n+1)/A057521(n+1))`
-/

namespace A092261.P15897292016587415157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A092261.P15897292016587415157

namespace A092261

/-- `A049417((n+1)/A057521(n+1))` -/
def P15897292016587415157.Spec : Prop :=
  ∀ n, P15897292016587415157.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P15422433271397152292

`A000203(A197863(n+1)/(n+1))`
-/

namespace A092261.P15422433271397152292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A092261.P15422433271397152292

namespace A092261

/-- `A000203(A197863(n+1)/(n+1))` -/
def P15422433271397152292.Spec : Prop :=
  ∀ n, P15422433271397152292.a n = A092261 (n + 1)

end A092261

/-! ## A092261.P1010605592976681149

`A001615(A197863(n+1)/(n+1))`
-/

namespace A092261.P1010605592976681149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A092261.P1010605592976681149

namespace A092261

/-- `A001615(A197863(n+1)/(n+1))` -/
def P1010605592976681149.Spec : Prop :=
  ∀ n, P1010605592976681149.a n = A092261 (n + 1)

end A092261

/-!
# A092262: Primes p which equal prime(2^k) - prime(2^(k-1)) + 1 for some k.

The programs for A092262, there is no canonical definition to state claims against.
-/

/-! ## A092262.P2613312370546967380

`p?[A135373(n)+1]`
-/

namespace A092262.P2613312370546967380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135373 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092262.P2613312370546967380

/-! ## A092262.P10380853541279998020

`p?[Δ[A018249(n)]+1]`
-/

namespace A092262.P10380853541279998020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092262.P10380853541279998020

/-! ## A092262.P5690036690699470317

`record[A020639(A135373(n)+1)]`
-/

namespace A092262.P5690036690699470317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A135373 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092262.P5690036690699470317

/-! ## A092262.P12141839805718453103

`p?[Δ[A000040(2^n)]+1]`
-/

namespace A092262.P12141839805718453103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092262.P12141839805718453103

/-!
# A092263: a(1)=1, a(n+1)=ceiling(phi*a(n))+1 if a(n) is odd, a(n+1)=ceiling(phi*a(n)) if a(n) is even, where phi=(1+sqrt(5))/2.

The programs for A092263, the canonical program `A092263.P4479933173511747473` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092263 has offset 1).

The definition of A092263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092263.P4479933173511747473

`2*a(n-1)-a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=17`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092263

/-- `2*a(n-1)-a(n-2)+a(n-3)-a(n-5)` -/
def P4479933173511747473.Spec : Prop :=
  ∀ n, P4479933173511747473.a n = A092263 (n + 1)

theorem P4479933173511747473.correct : P4479933173511747473.Spec := by
  intro n
  simp only [A092263, Nat.add_sub_cancel]

end A092263

/-! ## A092263.P17768322972735426269

`ogf((1+x+x^2)/(1-2x+x^2-x^3+x^5))`
-/

namespace A092263.P17768322972735426269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -2, 1, -1, 0, 1] n

end

end A092263.P17768322972735426269

namespace A092263

/-- `ogf((1+x+x^2)/(1-2x+x^2-x^3+x^5))` -/
def P17768322972735426269.Spec : Prop :=
  ∀ n, P17768322972735426269.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P5074058523184501025

`a(n-2)+or(1, a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A092263.P5074058523184501025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Nat.lor 1 (a (n - 1) + 1)

end

end A092263.P5074058523184501025

namespace A092263

/-- `a(n-2)+or(1, a(n-1)+1)` -/
def P5074058523184501025.Spec : Prop :=
  ∀ n, (P5074058523184501025.a n : ℤ) = A092263 (n + 1)

end A092263

/-! ## A092263.P14598283143537165263

`floor(ϕ^n*(14+6*sqrt(5))/10)-1`
-/

namespace A092263.P14598283143537165263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ n * ((14 + 6 * Real.sqrt (5 : ℝ)) / 10)⌋ - 1

end

end A092263.P14598283143537165263

namespace A092263

/-- `floor(ϕ^n*(14+6*sqrt(5))/10)-1` -/
def P14598283143537165263.Spec : Prop :=
  ∀ n, P14598283143537165263.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P15172248055429410062

`∑[a(n-1)+a(n-3)+a(n-4)]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A092263.P15172248055429410062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f1 =>
  f1 (n - 1) + (f1 (n - 3) + f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P15172248055429410062

namespace A092263

/-- `∑[a(n-1)+a(n-3)+a(n-4)]` -/
def P15172248055429410062.Spec : Prop :=
  ∀ n, (P15172248055429410062.a n : ℤ) = A092263 (n + 1)

end A092263

/-! ## A092263.P5901357459225777

`∑[A293411(n)]`
-/

namespace A092263.P5901357459225777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P5901357459225777

namespace A092263

/-- `∑[A293411(n)]` -/
def P5901357459225777.Spec : Prop :=
  ∀ n, P5901357459225777.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P11107527480189036986

`∑[∑[A126116(n)]]`
-/

namespace A092263.P11107527480189036986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P11107527480189036986

namespace A092263

/-- `∑[∑[A126116(n)]]` -/
def P11107527480189036986.Spec : Prop :=
  ∀ n, P11107527480189036986.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P7111074226066302163

`∑[round(2/5*A000032(n+2))]`
-/

namespace A092263.P7111074226066302163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 5 * (A000032 (n + 2) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P7111074226066302163

namespace A092263

/-- `∑[round(2/5*A000032(n+2))]` -/
def P7111074226066302163.Spec : Prop :=
  ∀ n, P7111074226066302163.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P1362035927333742977

`∑[2*A000045(n+1)-a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A092263.P1362035927333742977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 * A000045 (n + 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P1362035927333742977

namespace A092263

/-- `∑[2*A000045(n+1)-a(n-2)]` -/
def P1362035927333742977.Spec : Prop :=
  ∀ n, P1362035927333742977.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P10259389287596256783

`∑[∑[A295683(n)-A056594(n)]]`
-/

namespace A092263.P10259389287596256783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 n - A056594 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P10259389287596256783

namespace A092263

/-- `∑[∑[A295683(n)-A056594(n)]]` -/
def P10259389287596256783.Spec : Prop :=
  ∀ n, P10259389287596256783.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P2621202088789089591

`∑[∑[A295690(n)-A236165(n)]]`
-/

namespace A092263.P2621202088789089591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 n - A236165 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P2621202088789089591

namespace A092263

/-- `∑[∑[A295690(n)-A236165(n)]]` -/
def P2621202088789089591.Spec : Prop :=
  ∀ n, P2621202088789089591.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P13408879106793438629

`∑[A103609(2*(n+1))+A074677(n)]`
-/

namespace A092263.P13408879106793438629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 1)) + A074677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P13408879106793438629

namespace A092263

/-- `∑[A103609(2*(n+1))+A074677(n)]` -/
def P13408879106793438629.Spec : Prop :=
  ∀ n, P13408879106793438629.a n = A092263 (n + 1)

end A092263

/-! ## A092263.P6464976346226189373

`∑[A000045(n+3)-round(A000032(n+3)/5)]`
-/

namespace A092263.P6464976346226189373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) - SequenceMachineLib.roundAway ((A000032 (n + 3) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092263.P6464976346226189373

namespace A092263

/-- `∑[A000045(n+3)-round(A000032(n+3)/5)]` -/
def P6464976346226189373.Spec : Prop :=
  ∀ n, P6464976346226189373.a n = A092263 (n + 1)

end A092263

/-!
# A092264: a(n)*a(n-5) = a(n-1)*a(n-4)+a(n-2)+a(n-3), with initial terms a(1) = ... = a(5) = 1.

The programs for A092264, the canonical program `A092264.P10569654102398348539` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092264 has offset 1).

The definition of A092264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092264.P10569654102398348539

`(a(n-1)*a(n-4)+a(n-2)+a(n-3))/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092264

/-- `(a(n-1)*a(n-4)+a(n-2)+a(n-3))/a(n-5)` -/
def P10569654102398348539.Spec : Prop :=
  ∀ n, P10569654102398348539.a n = (A092264 (n + 1) : ℚ)

end A092264

/-! ## A092264.P7709758164017233155

`A255565(round(n²/12)!)`
-/

namespace A092264.P7709758164017233155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255565 (Nat.factorial (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)).toNat)

end

end A092264.P7709758164017233155

namespace A092264

/-- `A255565(round(n²/12)!)` -/
def P7709758164017233155.Spec : Prop :=
  ∀ n, P7709758164017233155.a n = A092264 (n + 1)

end A092264

/-! ## A092264.P7715206181539719186

`A008619(floor((floor(n/5)/2+1)²)^round(n²/12))`
-/

namespace A092264.P7715206181539719186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((⌊((⌊(n : ℚ) / 5⌋ : ℚ) / 2 + 1) ^ 2⌋ : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℤ))).toNat

end

end A092264.P7715206181539719186

namespace A092264

/-- `A008619(floor((floor(n/5)/2+1)²)^round(n²/12))` -/
def P7715206181539719186.Spec : Prop :=
  ∀ n, P7715206181539719186.a n = A092264 (n + 1)

end A092264

/-! ## A092264.P14048989916715649107

`A158416(floor((floor(n/5)/2+1)²)^round(n²/12))`
-/

namespace A092264.P14048989916715649107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.roundAway ((⌊((⌊(n : ℚ) / 5⌋ : ℚ) / 2 + 1) ^ 2⌋ : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℤ))).toNat

end

end A092264.P14048989916715649107

namespace A092264

/-- `A158416(floor((floor(n/5)/2+1)²)^round(n²/12))` -/
def P14048989916715649107.Spec : Prop :=
  ∀ n, P14048989916715649107.a n = A092264 (n + 1)

end A092264

/-!
# A092265: Sum of smallest parts of all partitions of n into distinct parts.

The programs for A092265, there is no canonical definition to state claims against.
-/

/-! ## A092265.P5098190679869694868

`A005895(n+1)-A117455(n+1)`
-/

namespace A092265.P5098190679869694868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005895 (n + 1) - A117455 (n + 1)

end

end A092265.P5098190679869694868

/-! ## A092265.P1697435415399268145

`2*A034296(n+1)-A000005(n+1)`
-/

namespace A092265.P1697435415399268145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034296 (n + 1) - A000005 (n + 1)

end

end A092265.P1697435415399268145

/-! ## A092265.P5237367531159365937

`2*A034296(n+1)-A320111(2*(n+1))`
-/

namespace A092265.P5237367531159365937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A034296 (n + 1) - A320111 (2 * (n + 1))

end

end A092265.P5237367531159365937

/-! ## A092265.P15455980670834044991

`A034296(n+1)+A237665(n+1)`
-/

namespace A092265.P15455980670834044991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 (n + 1) + A237665 (n + 1)

end

end A092265.P15455980670834044991

/-! ## A092265.P18133568653282164762

`A320111(2*(n+1))+2*A237665(n+1)`
-/

namespace A092265.P18133568653282164762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + 2 * A237665 (n + 1)

end

end A092265.P18133568653282164762

/-! ## A092265.P15489941539985091334

`A000005(n+1)+A237665(n+1)+A237665(n+1)`
-/

namespace A092265.P15489941539985091334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A237665 (n + 1) + A237665 (n + 1))

end

end A092265.P15489941539985091334

/-! ## A092265.P11731515842105201593

`A005843(A237665(n+1))+A000005(n+1)`
-/

namespace A092265.P11731515842105201593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A237665 (n + 1)).toNat + A000005 (n + 1)

end

end A092265.P11731515842105201593

/-!
# A092266: Expansion of (1+4x)/AGM(1+4x,1-4x) where AGM denotes the arithmetic-geometric mean.

The programs for A092266, the canonical program `A092266.P15600889642678588184` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092266 has offset 0).

The definition of A092266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092266.P15600889642678588184

`A063886(n)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092266

/-- `A063886(n)²` -/
def P15600889642678588184.Spec : Prop :=
  ∀ n, P15600889642678588184.a n = A092266 n

theorem P15600889642678588184.correct : P15600889642678588184.Spec := by
  intro n
  simp only [A092266]

end A092266

/-! ## A092266.P1320204028964056079

`(xor(n, -2)/n+3)²*a(n-1)` with `a(0)=1`
-/

namespace A092266.P1320204028964056079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((Int.xor (n : ℤ) (-2) : ℚ) / (n : ℚ) + 3) ^ 2 * a (n - 1)

end

end A092266.P1320204028964056079

namespace A092266

/-- `(xor(n, -2)/n+3)²*a(n-1)` -/
def P1320204028964056079.Spec : Prop :=
  ∀ n, P1320204028964056079.a n = (A092266 n : ℚ)

end A092266

/-! ## A092266.P9866824915640151569

`((n-1)/floor(n/2))²*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A092266.P9866824915640151569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (((n : ℤ) - 1 : ℚ) / (⌊(n : ℚ) / 2⌋ : ℚ)) ^ 2 * a (n - 1)

end

end A092266.P9866824915640151569

namespace A092266

/-- `((n-1)/floor(n/2))²*a(n-1)` -/
def P9866824915640151569.Spec : Prop :=
  ∀ n, P9866824915640151569.a n = (A092266 n : ℚ)

end A092266

/-! ## A092266.P7549253984300064558

`C(or(1, n)-1, floor(n/2))²*4^(n%2)`
-/

namespace A092266.P7549253984300064558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.lor 1 n : ℤ) - 1).toNat ⌊(n : ℚ) / 2⌋.toNat ^ 2 * 4 ^ (n % 2)

end

end A092266.P7549253984300064558

namespace A092266

/-- `C(or(1, n)-1, floor(n/2))²*4^(n%2)` -/
def P7549253984300064558.Spec : Prop :=
  ∀ n, (P7549253984300064558.a n : ℤ) = A092266 n

end A092266

/-! ## A092266.P17963252720722587558

`(A047073(n+1)/2)²`
-/

namespace A092266.P17963252720722587558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A047073 (n + 1) : ℚ) / 2) ^ 2

end

end A092266.P17963252720722587558

namespace A092266

/-- `(A047073(n+1)/2)²` -/
def P17963252720722587558.Spec : Prop :=
  ∀ n, P17963252720722587558.a n = (A092266 n : ℚ)

end A092266

/-! ## A092266.P16443029947880335871

`A182027(A326178(n))²`
-/

namespace A092266.P16443029947880335871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A326178 n).toNat ^ 2

end

end A092266.P16443029947880335871

namespace A092266

/-- `A182027(A326178(n))²` -/
def P16443029947880335871.Spec : Prop :=
  ∀ n, P16443029947880335871.a n = A092266 n

end A092266

/-! ## A092266.P2348543797847746688

`A172068(∑[A110654(n)])²`
-/

namespace A092266.P2348543797847746688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A092266.P2348543797847746688

namespace A092266

/-- `A172068(∑[A110654(n)])²` -/
def P2348543797847746688.Spec : Prop :=
  ∀ n, P2348543797847746688.a n = A092266 n

end A092266

/-! ## A092266.P15379743526390539955

`A237520(∑[A110654(n)])²`
-/

namespace A092266.P15379743526390539955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A092266.P15379743526390539955

namespace A092266

/-- `A237520(∑[A110654(n)])²` -/
def P15379743526390539955.Spec : Prop :=
  ∀ n, P15379743526390539955.a n = A092266 n

end A092266

/-! ## A092266.P1466284118144603910

`A237520(A002620(n+1))²`
-/

namespace A092266.P1466284118144603910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A002620 (n + 1)).toNat ^ 2

end

end A092266.P1466284118144603910

namespace A092266

/-- `A237520(A002620(n+1))²` -/
def P1466284118144603910.Spec : Prop :=
  ∀ n, P1466284118144603910.a n = A092266 n

end A092266

/-! ## A092266.P2505647206994761252

`A237520(A024206(n+1))²`
-/

namespace A092266.P2505647206994761252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A024206 (n + 1)).toNat ^ 2

end

end A092266.P2505647206994761252

namespace A092266

/-- `A237520(A024206(n+1))²` -/
def P2505647206994761252.Spec : Prop :=
  ∀ n, P2505647206994761252.a n = A092266 n

end A092266

/-! ## A092266.P4869039879968976688

`A182027(A087156(n+1))²`
-/

namespace A092266.P4869039879968976688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A087156 (n + 1)).toNat ^ 2

end

end A092266.P4869039879968976688

namespace A092266

/-- `A182027(A087156(n+1))²` -/
def P4869039879968976688.Spec : Prop :=
  ∀ n, P4869039879968976688.a n = A092266 n

end A092266

/-! ## A092266.P287970494551759005

`A182027(A184985(n+1))²`
-/

namespace A092266.P287970494551759005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A184985 (n + 1)).toNat ^ 2

end

end A092266.P287970494551759005

namespace A092266

/-- `A182027(A184985(n+1))²` -/
def P287970494551759005.Spec : Prop :=
  ∀ n, P287970494551759005.a n = A092266 n

end A092266

/-! ## A092266.P16494975409774149230

`A182027(A199969(n+2))²`
-/

namespace A092266.P16494975409774149230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A199969 (n + 2)).toNat ^ 2

end

end A092266.P16494975409774149230

namespace A092266

/-- `A182027(A199969(n+2))²` -/
def P16494975409774149230.Spec : Prop :=
  ∀ n, P16494975409774149230.a n = A092266 n

end A092266

/-! ## A092266.P17027010852217662203

`(A138364(n)+A089849(n))²`
-/

namespace A092266.P17027010852217662203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138364 n + A089849 n) ^ 2

end

end A092266.P17027010852217662203

namespace A092266

/-- `(A138364(n)+A089849(n))²` -/
def P17027010852217662203.Spec : Prop :=
  ∀ n, P17027010852217662203.a n = A092266 n

end A092266

/-! ## A092266.P11265513466797073225

`(A000079(n)-A307768(n))²`
-/

namespace A092266.P11265513466797073225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A307768 n) ^ 2

end

end A092266.P11265513466797073225

namespace A092266

/-- `(A000079(n)-A307768(n))²` -/
def P11265513466797073225.Spec : Prop :=
  ∀ n, P11265513466797073225.a n = A092266 n

theorem P11265513466797073225.correct : P11265513466797073225.Spec := by
  intro n
  simp only [A092266, Nat.add_sub_cancel, A092266.P11265513466797073225.a, A092266.P15600889642678588184.a, A000079, A000079.P10855139691139572931.a, A063886, A063886.P2008880257839641201.a, A307768, A307768.P13717369919277474039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092266

/-! ## A092266.P17496118405726999035

`(A000034(n)*A128014(n))²`
-/

namespace A092266.P17496118405726999035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n * A128014 n) ^ 2

end

end A092266.P17496118405726999035

namespace A092266

/-- `(A000034(n)*A128014(n))²` -/
def P17496118405726999035.Spec : Prop :=
  ∀ n, P17496118405726999035.a n = A092266 n

end A092266

/-! ## A092266.P14418493742701099654

`lcm(A001316(n), A128014(n))²`
-/

namespace A092266.P14418493742701099654
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 n) (A128014 n) ^ 2

end

end A092266.P14418493742701099654

namespace A092266

/-- `lcm(A001316(n), A128014(n))²` -/
def P14418493742701099654.Spec : Prop :=
  ∀ n, (P14418493742701099654.a n : ℤ) = A092266 n

end A092266

/-! ## A092266.P9930884858429045415

`A182027(A163300(n+1)/2)²`
-/

namespace A092266.P9930884858429045415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (SequenceMachineLib.roundAway ((A163300 (n + 1) : ℚ) / 2)).toNat ^ 2

end

end A092266.P9930884858429045415

namespace A092266

/-- `A182027(A163300(n+1)/2)²` -/
def P9930884858429045415.Spec : Prop :=
  ∀ n, P9930884858429045415.a n = A092266 n

end A092266

/-! ## A092266.P862579916102702604

`(A036453(n+1)*A210736(n))²`
-/

namespace A092266.P862579916102702604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036453 (n + 1) * A210736 n) ^ 2

end

end A092266.P862579916102702604

namespace A092266

/-- `(A036453(n+1)*A210736(n))²` -/
def P862579916102702604.Spec : Prop :=
  ∀ n, P862579916102702604.a n = A092266 n

end A092266

/-!
# A092268: Total number of smallest parts in all partitions of n into odd parts.

The programs for A092268, there is no canonical definition to state claims against.
-/

/-! ## A092268.P277886888312409880

`A376581(n+2)-A156264(A004810(n+1))`
-/

namespace A092268.P277886888312409880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376581 (n + 2) - A156264 (A004810 (n + 1)).toNat

end

end A092268.P277886888312409880

/-! ## A092268.P5412960656168633635

`A229757(∑[A194436(n+1)])`
-/

namespace A092268.P5412960656168633635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092268.P5412960656168633635

/-! ## A092268.P10691901004479220316

`A112310(A133654(n+1))+A047967(n)`
-/

namespace A092268.P10691901004479220316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (A133654 (n + 1)).toNat + A047967 n

end

end A092268.P10691901004479220316

/-! ## A092268.P13725164900455970000

`A240732(n+1)+A095408(A240730(n+1))`
-/

namespace A092268.P13725164900455970000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240732 (n + 1) + A095408 (A240730 (n + 1)).toNat

end

end A092268.P13725164900455970000

/-! ## A092268.P2986823406788629552

`A104648(2*(n+1))+A102683(A001008(n+1))`
-/

namespace A092268.P2986823406788629552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104648 (2 * (n + 1)) + A102683 (A001008 (n + 1)).toNat

end

end A092268.P2986823406788629552

/-!
# A092269: Spt function: total number of smallest parts (counted with multiplicity) in all partitions of n.

The programs for A092269, there is no canonical definition to state claims against.
-/

/-! ## A092269.P11047419381946336109

`(A220909(n+1)-A220908(n+1))/2`
-/

namespace A092269.P11047419381946336109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220909 (n + 1) - A220908 (n + 1) : ℚ) / 2

end

end A092269.P11047419381946336109

/-! ## A092269.P14108964779180637792

`(n+1)*A000041(n+1)-A220908(n+1)/2`
-/

namespace A092269.P14108964779180637792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000041 (n + 1) : ℚ) - (A220908 (n + 1) : ℚ) / 2

end

end A092269.P14108964779180637792

/-! ## A092269.P9996611352837133101

`A066186(n+1)-A220907(n+1)`
-/

namespace A092269.P9996611352837133101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) - A220907 (n + 1)

end

end A092269.P9996611352837133101

/-! ## A092269.P13237041818136933359

`A211982(n+1)/2`
-/

namespace A092269.P13237041818136933359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211982 (n + 1) : ℚ) / 2

end

end A092269.P13237041818136933359

/-! ## A092269.P12393061296649057755

`A000070(n)+A195820(n+1)`
-/

namespace A092269.P12393061296649057755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + A195820 (n + 1)

end

end A092269.P12393061296649057755

/-! ## A092269.P1108259758728708078

`A215513(n+1)+A000041(n+1)`
-/

namespace A092269.P1108259758728708078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215513 (n + 1) + A000041 (n + 1)

end

end A092269.P1108259758728708078

/-! ## A092269.P16429248989754992446

`A000070(n+1)+A215513(n+1)-A000070(n)`
-/

namespace A092269.P16429248989754992446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A215513 (n + 1) - A000070 n)

end

end A092269.P16429248989754992446

/-! ## A092269.P15836256541447118479

`A006128(n+1)-A182984(n+1)`
-/

namespace A092269.P15836256541447118479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A182984 (n + 1)

end

end A092269.P15836256541447118479

/-! ## A092269.P14648323118538139760

`A046746(n+1)+A116686(n+1)-A182984(n+1)`
-/

namespace A092269.P14648323118538139760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046746 (n + 1) + (A116686 (n + 1) - A182984 (n + 1))

end

end A092269.P14648323118538139760

/-! ## A092269.P12802032204328735835

`A220489(n+1)+A220483(n+1)`
-/

namespace A092269.P12802032204328735835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220489 (n + 1) + A220483 (n + 1)

end

end A092269.P12802032204328735835

/-! ## A092269.P5164425957776965836

`A268191(n+1)+A000203(n+1)`
-/

namespace A092269.P5164425957776965836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268191 (n + 1) + A000203 (n + 1)

end

end A092269.P5164425957776965836

/-! ## A092269.P5505158815932444610

`A195820(n+1)+∑[A000041(n)]`
-/

namespace A092269.P5505158815932444610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092269.P5505158815932444610

/-! ## A092269.P771564082409085391

`A220479(n+1)+A120452(n+2)`
-/

namespace A092269.P771564082409085391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220479 (n + 1) + A120452 (n + 2)

end

end A092269.P771564082409085391

/-! ## A092269.P2264872922254580338

`A182978(n+1)-A182629(n+1)`
-/

namespace A092269.P2264872922254580338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182978 (n + 1) - A182629 (n + 1)

end

end A092269.P2264872922254580338

/-! ## A092269.P3986167998736061708

`A195820(n+1)+∑[∑[A002865(n)]]`
-/

namespace A092269.P3986167998736061708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092269.P3986167998736061708

/-! ## A092269.P11957568222275031542

`A195820(n+1)+∑[A035363(2*n)]`
-/

namespace A092269.P11957568222275031542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092269.P11957568222275031542

/-! ## A092269.P15028129380613562460

`A195820(n+1)+∑[A139582(n)/2]`
-/

namespace A092269.P15028129380613562460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195820 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092269.P15028129380613562460

/-! ## A092269.P1378287894792547925

`A195820(n+1)+∑[A047967(n)+A000009(n)]`
-/

namespace A092269.P1378287894792547925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 n + A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092269.P1378287894792547925

/-! ## A092269.P12274814361771177400

`A195820(n+1)+∑[A295341(n)+A000726(n)]`
-/

namespace A092269.P12274814361771177400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092269.P12274814361771177400

/-! ## A092269.P7591010791499757447

`A195820(n+1)+∑[A332281(n)+A332280(n)]`
-/

namespace A092269.P7591010791499757447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A332280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092269.P7591010791499757447

/-!
# A092270: If n mod 2 == 0 then 3^n else 2^n.

The programs for A092270, the canonical program `A092270.P17601386684851033590` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092270 has offset 0).

The definition of A092270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092270.P17601386684851033590

`13*a(n-2)-36*a(n-4)` with `a(0)=1, a(1)=2, a(2)=9, a(3)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092270

/-- `13*a(n-2)-36*a(n-4)` -/
def P17601386684851033590.Spec : Prop :=
  ∀ n, P17601386684851033590.a n = A092270 n

theorem P17601386684851033590.correct : P17601386684851033590.Spec := by
  intro n
  simp only [A092270]

end A092270

/-! ## A092270.P16311057896943415914

`(gcd(2, n)+1)^n`
-/

namespace A092270.P16311057896943415914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 1) ^ n

end

end A092270.P16311057896943415914

namespace A092270

/-- `(gcd(2, n)+1)^n` -/
def P16311057896943415914.Spec : Prop :=
  ∀ n, (P16311057896943415914.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P6867617946257862849

`(3-n%2)^n`
-/

namespace A092270.P6867617946257862849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ((n % 2 : ℕ) : ℤ)) ^ n

end

end A092270.P6867617946257862849

namespace A092270

/-- `(3-n%2)^n` -/
def P6867617946257862849.Spec : Prop :=
  ∀ n, P6867617946257862849.a n = A092270 n

end A092270

/-! ## A092270.P10557719502054515772

`(3-and(1, n))^n`
-/

namespace A092270.P10557719502054515772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (Nat.land 1 n : ℤ)) ^ n

end

end A092270.P10557719502054515772

namespace A092270

/-- `(3-and(1, n))^n` -/
def P10557719502054515772.Spec : Prop :=
  ∀ n, P10557719502054515772.a n = A092270 n

end A092270

/-! ## A092270.P7263380598806947105

`xor(3, and(1, n))^n`
-/

namespace A092270.P7263380598806947105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (Nat.land 1 n) ^ n

end

end A092270.P7263380598806947105

namespace A092270

/-- `xor(3, and(1, n))^n` -/
def P7263380598806947105.Spec : Prop :=
  ∀ n, (P7263380598806947105.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P13877922325636547622

`∑{d}[n, C(2, #)]^n`
-/

namespace A092270.P13877922325636547622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), Nat.choose 2 d) ^ n

end

end A092270.P13877922325636547622

namespace A092270

/-- `∑{d}[n, C(2, #)]^n` -/
def P13877922325636547622.Spec : Prop :=
  ∀ n, (P13877922325636547622.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P1034276291744114062

`(-n%2+3)^n`
-/

namespace A092270.P1034276291744114062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod (-(n : ℤ)) 2 + 3) ^ n

end

end A092270.P1034276291744114062

namespace A092270

/-- `(-n%2+3)^n` -/
def P1034276291744114062.Spec : Prop :=
  ∀ n, P1034276291744114062.a n = A092270 n

end A092270

/-! ## A092270.P16270010386744999428

`(1-or(n, -2))^n`
-/

namespace A092270.P16270010386744999428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.lor (n : ℤ) (-2)) ^ n

end

end A092270.P16270010386744999428

namespace A092270

/-- `(1-or(n, -2))^n` -/
def P16270010386744999428.Spec : Prop :=
  ∀ n, P16270010386744999428.a n = A092270 n

end A092270

/-! ## A092270.P41524604845552951

`xor(3, n²%2)^n`
-/

namespace A092270.P41524604845552951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n ^ 2 % 2) ^ n

end

end A092270.P41524604845552951

namespace A092270

/-- `xor(3, n²%2)^n` -/
def P41524604845552951.Spec : Prop :=
  ∀ n, (P41524604845552951.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P16151754601965766906

`(char[2*n]+2)^n`
-/

namespace A092270.P16151754601965766906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 2) ^ n

end

end A092270.P16151754601965766906

namespace A092270

/-- `(char[2*n]+2)^n` -/
def P16151754601965766906.Spec : Prop :=
  ∀ n, (P16151754601965766906.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P10456500319023964205

`abs((or(1, n+2)-n)^n)`
-/

namespace A092270.P10456500319023964205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((Nat.lor 1 (n + 2) : ℤ) - (n : ℤ)) ^ n|

end

end A092270.P10456500319023964205

namespace A092270

/-- `abs((or(1, n+2)-n)^n)` -/
def P10456500319023964205.Spec : Prop :=
  ∀ n, P10456500319023964205.a n = A092270 n

end A092270

/-! ## A092270.P1751239252418091624

`abs((n-2-or(1, n))^n)`
-/

namespace A092270.P1751239252418091624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 2 - (Nat.lor 1 n : ℤ)) ^ n|

end

end A092270.P1751239252418091624

namespace A092270

/-- `abs((n-2-or(1, n))^n)` -/
def P1751239252418091624.Spec : Prop :=
  ∀ n, P1751239252418091624.a n = A092270 n

end A092270

/-! ## A092270.P2434026452723887962

`∏{d}[1-a(n-1), #^n]` with `a(0)=3`
-/

namespace A092270.P2434026452723887962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A092270.P2434026452723887962

namespace A092270

/-- `∏{d}[1-a(n-1), #^n]` -/
def P2434026452723887962.Spec : Prop :=
  ∀ n, (P2434026452723887962.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P14141171440121117235

`∑{p}[1-a(n-1), #^n]` with `a(0)=3`
-/

namespace A092270.P14141171440121117235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A092270.P14141171440121117235

namespace A092270

/-- `∑{p}[1-a(n-1), #^n]` -/
def P14141171440121117235.Spec : Prop :=
  ∀ n, (P14141171440121117235.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P7506820006223652566

`∏{p}[1-a(n-1), #^n]` with `a(0)=3`
-/

namespace A092270.P7506820006223652566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ n

end

end A092270.P7506820006223652566

namespace A092270

/-- `∏{p}[1-a(n-1), #^n]` -/
def P7506820006223652566.Spec : Prop :=
  ∀ n, (P7506820006223652566.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P4080508307049159352

`∑{digits}[1-a(n-1), #^n]` with `a(0)=3`
-/

namespace A092270.P4080508307049159352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ n).sum

end

end A092270.P4080508307049159352

namespace A092270

/-- `∑{digits}[1-a(n-1), #^n]` -/
def P4080508307049159352.Spec : Prop :=
  ∀ n, (P4080508307049159352.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P3232045106707628274

`∏{digits}[1-a(n-1), #^n]` with `a(0)=3`
-/

namespace A092270.P3232045106707628274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ n).prod

end

end A092270.P3232045106707628274

namespace A092270

/-- `∏{digits}[1-a(n-1), #^n]` -/
def P3232045106707628274.Spec : Prop :=
  ∀ n, (P3232045106707628274.a n : ℤ) = A092270 n

end A092270

/-! ## A092270.P5596750586591000811

`abs((4-gcd(n-1, 2*n))^n)`
-/

namespace A092270.P5596750586591000811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 - (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ)) ^ n|

end

end A092270.P5596750586591000811

namespace A092270

/-- `abs((4-gcd(n-1, 2*n))^n)` -/
def P5596750586591000811.Spec : Prop :=
  ∀ n, P5596750586591000811.a n = A092270 n

end A092270

/-! ## A092270.P3553398740293268715

`floor(∑[1/a(n-2)]^n)` with `a(0)=3, a(1)=-1, a(2)=1`
-/

namespace A092270.P3553398740293268715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, -1, 1] fun n f1 =>
  1 / f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ n⌋

end

end A092270.P3553398740293268715

namespace A092270

/-- `floor(∑[1/a(n-2)]^n)` -/
def P3553398740293268715.Spec : Prop :=
  ∀ n, P3553398740293268715.a n = A092270 n

end A092270

/-! ## A092270.P6335378797210946773

`Δ[n-a(n-1)]²*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A092270.P6335378797210946773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (f1 (n + 1) - f1 n) ^ 2 * a (n - 2)

end

end A092270.P6335378797210946773

namespace A092270

/-- `Δ[n-a(n-1)]²*a(n-2)` -/
def P6335378797210946773.Spec : Prop :=
  ∀ n, P6335378797210946773.a n = A092270 n

end A092270

/-!
# A092271: Triangle read by rows. First in a series of triangular arrays counting permutations of partitions.

The programs for A092271, there is no canonical definition to state claims against.
-/

/-! ## A092271.P13435408733262558789

`A094587(comp[∑[n-2]]+1)/(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A092271.P13435408733262558789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ)

end

end A092271.P13435408733262558789

/-! ## A092271.P5039657617300719761

`(C(comp[∑[n]]-n, 2)-(n+1))!*A007318(comp[∑[n-2]]+1)`
-/

namespace A092271.P5039657617300719761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A007318 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1)

end

end A092271.P5039657617300719761

/-! ## A092271.P604073729503162818

`A279038(∑[A058398(n+1)])`
-/

namespace A092271.P604073729503162818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279038 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092271.P604073729503162818

/-! ## A092271.P3962439822617843387

`A007318(comp[∑[n-2]]+1)*A119502(n)`
-/

namespace A092271.P3962439822617843387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) * A119502 n

end

end A092271.P3962439822617843387

/-! ## A092271.P58238930206297209

`A074909(n)/A051340(n)*A119502(n)`
-/

namespace A092271.P58238930206297209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074909 n : ℚ) / (A051340 n : ℚ) * (A119502 n : ℚ)

end

end A092271.P58238930206297209

/-! ## A092271.P2722607115889695236

`gcd(A074909(n)*A119502(n), A134402(n))`
-/

namespace A092271.P2722607115889695236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074909 n * A119502 n) (A134402 n)

end

end A092271.P2722607115889695236

/-! ## A092271.P9437474696355827320

`A025581(n)!*A007318(A181133(n+1))`
-/

namespace A092271.P9437474696355827320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025581 n).toNat : ℤ) * A007318 (A181133 (n + 1)).toNat

end

end A092271.P9437474696355827320

/-! ## A092271.P3395183386279445409

`A094587(A181133(n+1))/A004736(n+1)`
-/

namespace A092271.P3395183386279445409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094587 (A181133 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A092271.P3395183386279445409

/-! ## A092271.P15979476601449437821

`A039948(A181133(n+1))/A104796(n+1)`
-/

namespace A092271.P15979476601449437821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039948 (A181133 (n + 1)).toNat : ℚ) / (A104796 (n + 1) : ℚ)

end

end A092271.P15979476601449437821

/-! ## A092271.P7660098695738201696

`gcd(A008297(n+1), A074909(n))*A119502(n)`
-/

namespace A092271.P7660098695738201696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A008297 (n + 1)) (A074909 n) : ℤ) * A119502 n

end

end A092271.P7660098695738201696

/-!
# A092275: Draw a line through every pair of points with coordinates (x, 1) and (x', 2) with x, x' in 1..n; a(n) is the number of intersection points above the line y = 2.

The programs for A092275, there is no canonical definition to state claims against.
-/

/-! ## A092275.P15891164028712801824

`(A347750(n+1)-A331755(n+2))/2`
-/

namespace A092275.P15891164028712801824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347750 (n + 1) - A331755 (n + 2) : ℚ) / 2

end

end A092275.P15891164028712801824

/-! ## A092275.P11743427893299841858

`∑[A065423(Δ[A159065(n+1)])]`
-/

namespace A092275.P11743427893299841858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092275.P11743427893299841858

/-! ## A092275.P6831043564557578481

`∑[A140106(Δ[A159065(n+1)])]`
-/

namespace A092275.P6831043564557578481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092275.P6831043564557578481

/-! ## A092275.P9227047422817383567

`∑[A249738(Δ[A159065(n+1)])]`
-/

namespace A092275.P9227047422817383567
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092275.P9227047422817383567

/-! ## A092275.P10706825005342916977

`A004526(A159065(n+2))-n`
-/

namespace A092275.P10706825005342916977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A159065 (n + 2)).toNat - (n : ℤ)

end

end A092275.P10706825005342916977

/-!
# A092276: Triangle read by rows: T(n,k) is the number of noncrossing trees with root degree equal to k.

The programs for A092276, the canonical program `A092276.P17837340510212105555` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092276 has offset 1).

The definition of A092276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092276.P17837340510212105555

`A071948(A061579(n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092276

/-- `A071948(A061579(n))` -/
def P17837340510212105555.Spec : Prop :=
  ∀ n, P17837340510212105555.a n = A092276 (n + 1)

theorem P17837340510212105555.correct : P17837340510212105555.Spec := by
  intro n
  simp only [A092276, Nat.add_sub_cancel]

end A092276

/-! ## A092276.P15857870510877696685

`A109971(A014132(n+1))`
-/

namespace A092276.P15857870510877696685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109971 (A014132 (n + 1)).toNat

end

end A092276.P15857870510877696685

namespace A092276

/-- `A109971(A014132(n+1))` -/
def P15857870510877696685.Spec : Prop :=
  ∀ n, P15857870510877696685.a n = A092276 (n + 1)

end A092276

/-! ## A092276.P548811689266055158

`A071948(A114327(n)+n)`
-/

namespace A092276.P548811689266055158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A114327 n + (n : ℤ)).toNat

end

end A092276.P548811689266055158

namespace A092276

/-- `A071948(A114327(n)+n)` -/
def P548811689266055158.Spec : Prop :=
  ∀ n, P548811689266055158.a n = A092276 (n + 1)

end A092276

/-! ## A092276.P16434549143020395764

`A071948(A038722(n+1)-1)`
-/

namespace A092276.P16434549143020395764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A038722 (n + 1) - 1).toNat

end

end A092276.P16434549143020395764

namespace A092276

/-- `A071948(A038722(n+1)-1)` -/
def P16434549143020395764.Spec : Prop :=
  ∀ n, P16434549143020395764.a n = A092276 (n + 1)

end A092276

/-! ## A092276.P9312587082169454933

`A071948(A093995(n+1)-(n+1))`
-/

namespace A092276.P9312587082169454933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A092276.P9312587082169454933

namespace A092276

/-- `A071948(A093995(n+1)-(n+1))` -/
def P9312587082169454933.Spec : Prop :=
  ∀ n, P9312587082169454933.a n = A092276 (n + 1)

end A092276

/-! ## A092276.P16797901147166410532

`A071948(A002024(n+1)²-n-1)`
-/

namespace A092276.P16797901147166410532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A002024 (n + 1) ^ 2 - (n : ℤ) - 1).toNat

end

end A092276.P16797901147166410532

namespace A092276

/-- `A071948(A002024(n+1)²-n-1)` -/
def P16797901147166410532.Spec : Prop :=
  ∀ n, P16797901147166410532.a n = A092276 (n + 1)

end A092276

/-! ## A092276.P11925005944533694935

`A071948(A038722(n+2))`
-/

namespace A092276.P11925005944533694935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071948 (A038722 (n + 2)).toNat

end

end A092276.P11925005944533694935

namespace A092276

/-- `A071948(A038722(n+2))` -/
def P11925005944533694935.Spec : Prop :=
  ∀ n, P11925005944533694935.a n = A092276 (n + 1)

end A092276

/-! ## A092276.P15975722177346298838

`A124305(A185871(n+1))`
-/

namespace A092276.P15975722177346298838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124305 (A185871 (n + 1)).toNat

end

end A092276.P15975722177346298838

namespace A092276

/-- `A124305(A185871(n+1))` -/
def P15975722177346298838.Spec : Prop :=
  ∀ n, P15975722177346298838.a n = A092276 (n + 1)

end A092276

/-! ## A092276.P16665007923797757531

`A100400(n+1)/∑[char[∑[n]]]`
-/

namespace A092276.P16665007923797757531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100400 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A092276.P16665007923797757531

namespace A092276

/-- `A100400(n+1)/∑[char[∑[n]]]` -/
def P16665007923797757531.Spec : Prop :=
  ∀ n, P16665007923797757531.a n = (A092276 (n + 1) : ℚ)

end A092276

/-! ## A092276.P7102652697139267729

`1/A002024(n+1)*A100400(n+1)`
-/

namespace A092276.P7102652697139267729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002024 (n + 1) : ℚ) * (A100400 (n + 1) : ℚ)

end

end A092276.P7102652697139267729

namespace A092276

/-- `1/A002024(n+1)*A100400(n+1)` -/
def P7102652697139267729.Spec : Prop :=
  ∀ n, P7102652697139267729.a n = (A092276 (n + 1) : ℚ)

end A092276

/-!
# A092277: a(n) = 7*n^2 + n.

The programs for A092277, the canonical program `A092277.P17700678065174571920` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092277 has offset 0).

The definition of A092277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n²+n` (program `A092277.P17700678065174571920`, by `A092277.P17700678065174571920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092277.P17700678065174571920

`7*n²+n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092277

/-- `7*n²+n` -/
def P17700678065174571920.Spec : Prop :=
  ∀ n, (P17700678065174571920.a n : ℤ) = A092277 n

theorem P17700678065174571920.correct : P17700678065174571920.Spec := by
  intro n
  simp only [A092277]

end A092277

/-! ## A092277.P7540044825774649363

`2*A022265(n)`
-/

namespace A092277.P7540044825774649363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022265 n

end

end A092277.P7540044825774649363

namespace A092277

/-- `2*A022265(n)` -/
def P7540044825774649363.Spec : Prop :=
  ∀ n, P7540044825774649363.a n = A092277 n

end A092277

/-! ## A092277.P15153990762975334810

`lcm(n, 7*n+1)`
-/

namespace A092277.P15153990762975334810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (7 * n + 1)

end

end A092277.P15153990762975334810

namespace A092277

/-- `lcm(n, 7*n+1)` -/
def P15153990762975334810.Spec : Prop :=
  ∀ n, (P15153990762975334810.a n : ℤ) = A092277 n

end A092277

/-! ## A092277.P7371428699568561914

`∑[a(n-1)+14]` with `a(0)=0, a(1)=8`
-/

namespace A092277.P7371428699568561914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092277.P7371428699568561914

namespace A092277

/-- `∑[a(n-1)+14]` -/
def P7371428699568561914.Spec : Prop :=
  ∀ n, (P7371428699568561914.a n : ℤ) = A092277 n

end A092277

/-! ## A092277.P9621904502680449579

`n*(xor(1, 6*n)+n)`
-/

namespace A092277.P9621904502680449579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.xor 1 (6 * n) + n)

end

end A092277.P9621904502680449579

namespace A092277

/-- `n*(xor(1, 6*n)+n)` -/
def P9621904502680449579.Spec : Prop :=
  ∀ n, (P9621904502680449579.a n : ℤ) = A092277 n

end A092277

/-! ## A092277.P5996382633256667653

`n*(or(1, 8*n)-n)`
-/

namespace A092277.P5996382633256667653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.lor 1 (8 * n) : ℤ) - (n : ℤ))

end

end A092277.P5996382633256667653

namespace A092277

/-- `n*(or(1, 8*n)-n)` -/
def P5996382633256667653.Spec : Prop :=
  ∀ n, P5996382633256667653.a n = A092277 n

end A092277

/-! ## A092277.P8255360253480185770

`∑[ogf((8x+6x^2)/(1-2x+x^2))]`
-/

namespace A092277.P8255360253480185770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092277.P8255360253480185770

namespace A092277

/-- `∑[ogf((8x+6x^2)/(1-2x+x^2))]` -/
def P8255360253480185770.Spec : Prop :=
  ∀ n, P8255360253480185770.a n = A092277 n

end A092277

/-! ## A092277.P10959736017245436908

`ogf((8x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A092277.P10959736017245436908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 6] [1, -3, 3, -1] n

end

end A092277.P10959736017245436908

namespace A092277

/-- `ogf((8x+6x^2)/(1-3x+3x^2-x^3))` -/
def P10959736017245436908.Spec : Prop :=
  ∀ n, P10959736017245436908.a n = A092277 n

end A092277

/-! ## A092277.P3767711617009447531

`2*((2*n)²-C(n, 2))`
-/

namespace A092277.P3767711617009447531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((2 * n) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))

end

end A092277.P3767711617009447531

namespace A092277

/-- `2*((2*n)²-C(n, 2))` -/
def P3767711617009447531.Spec : Prop :=
  ∀ n, P3767711617009447531.a n = A092277 n

theorem P3767711617009447531.correct : P3767711617009447531.Spec := by
  intro n
  simp only [A092277, Nat.add_sub_cancel, A092277.P3767711617009447531.a, A092277.P17700678065174571920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092277

/-! ## A092277.P4864809462466015417

`n*Δ[7*C(n, 2)+n]`
-/

namespace A092277.P4864809462466015417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A092277.P4864809462466015417

namespace A092277

/-- `n*Δ[7*C(n, 2)+n]` -/
def P4864809462466015417.Spec : Prop :=
  ∀ n, P4864809462466015417.a n = A092277 n

theorem P4864809462466015417.correct : P4864809462466015417.Spec := by
  intro n
  simp only [A092277, Nat.add_sub_cancel, A092277.P4864809462466015417.f1, A092277.P4864809462466015417.a, A092277.P17700678065174571920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092277

/-! ## A092277.P1383550180733028862

`2*(C(7*n, 2)/7+n)`
-/

namespace A092277.P1383550180733028862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (7 * n) 2 : ℚ) / 7 + (n : ℚ))

end

end A092277.P1383550180733028862

namespace A092277

/-- `2*(C(7*n, 2)/7+n)` -/
def P1383550180733028862.Spec : Prop :=
  ∀ n, P1383550180733028862.a n = (A092277 n : ℚ)

theorem P1383550180733028862.correct : P1383550180733028862.Spec := by
  intro n
  simp only [A092277, Nat.add_sub_cancel, A092277.P1383550180733028862.a, A092277.P17700678065174571920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092277

/-! ## A092277.P4811620918559751238

`n*(ceil(2/acot(3*n))+n)`
-/

namespace A092277.P4811620918559751238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (⌈2 / SequenceMachineLib.acot (3 * n : ℝ)⌉ + (n : ℤ))

end

end A092277.P4811620918559751238

namespace A092277

/-- `n*(ceil(2/acot(3*n))+n)` -/
def P4811620918559751238.Spec : Prop :=
  ∀ n, P4811620918559751238.a n = A092277 n

end A092277

/-! ## A092277.P934200926858494182

`2*(3-∑[a(n-1)-7])` with `a(0)=3`
-/

namespace A092277.P934200926858494182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092277.P934200926858494182

namespace A092277

/-- `2*(3-∑[a(n-1)-7])` -/
def P934200926858494182.Spec : Prop :=
  ∀ n, P934200926858494182.a n = A092277 n

end A092277

/-! ## A092277.P17496027250364398922

`n*A016993(n)`
-/

namespace A092277.P17496027250364398922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016993 n

end

end A092277.P17496027250364398922

namespace A092277

/-- `n*A016993(n)` -/
def P17496027250364398922.Spec : Prop :=
  ∀ n, P17496027250364398922.a n = A092277 n

theorem P17496027250364398922.correct : P17496027250364398922.Spec := by
  intro n
  simp only [A092277, Nat.add_sub_cancel, A092277.P17496027250364398922.a, A092277.P17700678065174571920.a, A016993, A016993.P16783903167149097063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092277

/-! ## A092277.P13601755290980653713

`n*sqrt(A016994(n))`
-/

namespace A092277.P13601755290980653713
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A016994 n : ℝ)

end

end A092277.P13601755290980653713

namespace A092277

/-- `n*sqrt(A016994(n))` -/
def P13601755290980653713.Spec : Prop :=
  ∀ n, P13601755290980653713.a n = (A092277 n : ℝ)

end A092277

/-! ## A092277.P12007905282954296999

`n*Δ[A001106(n)]`
-/

namespace A092277.P12007905282954296999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A092277.P12007905282954296999

namespace A092277

/-- `n*Δ[A001106(n)]` -/
def P12007905282954296999.Spec : Prop :=
  ∀ n, P12007905282954296999.a n = A092277 n

end A092277

/-! ## A092277.P2140386746834610538

`n*Δ[A389608(n)]`
-/

namespace A092277.P2140386746834610538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A092277.P2140386746834610538

namespace A092277

/-- `n*Δ[A389608(n)]` -/
def P2140386746834610538.Spec : Prop :=
  ∀ n, P2140386746834610538.a n = A092277 n

end A092277

/-! ## A092277.P10886159824206615295

`2*(A006124(n)-3)`
-/

namespace A092277.P10886159824206615295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006124 n - 3)

end

end A092277.P10886159824206615295

namespace A092277

/-- `2*(A006124(n)-3)` -/
def P10886159824206615295.Spec : Prop :=
  ∀ n, P10886159824206615295.a n = A092277 n

end A092277

/-! ## A092277.P3902849989345922838

`n*(A008589(n)+1)`
-/

namespace A092277.P3902849989345922838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008589 n + 1)

end

end A092277.P3902849989345922838

namespace A092277

/-- `n*(A008589(n)+1)` -/
def P3902849989345922838.Spec : Prop :=
  ∀ n, P3902849989345922838.a n = A092277 n

theorem P3902849989345922838.correct : P3902849989345922838.Spec := by
  intro n
  simp only [A092277, Nat.add_sub_cancel, A092277.P3902849989345922838.a, A092277.P17700678065174571920.a, A008589, A008589.P8963889148823201939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092277

/-! ## A092277.P10400809275690282124

`n*(A017005(n)-1)`
-/

namespace A092277.P10400809275690282124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A017005 n - 1)

end

end A092277.P10400809275690282124

namespace A092277

/-- `n*(A017005(n)-1)` -/
def P10400809275690282124.Spec : Prop :=
  ∀ n, P10400809275690282124.a n = A092277 n

theorem P10400809275690282124.correct : P10400809275690282124.Spec := by
  intro n
  simp only [A092277, Nat.add_sub_cancel, A092277.P10400809275690282124.a, A092277.P17700678065174571920.a, A017005, A017005.P14585839201288811509.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092277

/-!
# A092278: Floor( (3*n+4)/16 ).

The programs for A092278, the canonical program `A092278.P7619994046950136213` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092278 has offset 0).

The definition of A092278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3*n+4)/16)` (program `A092278.P7619994046950136213`, by `A092278.P7619994046950136213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092278.P7619994046950136213

`floor((3*n+4)/16)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092278

/-- `floor((3*n+4)/16)` -/
def P7619994046950136213.Spec : Prop :=
  ∀ n, P7619994046950136213.a n = A092278 n

theorem P7619994046950136213.correct : P7619994046950136213.Spec := by
  intro n
  simp only [A092278]

end A092278

/-! ## A092278.P12171309519180096866

`round((A032766(n)-2)/8)`
-/

namespace A092278.P12171309519180096866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032766 n - 2 : ℚ) / 8)

end

end A092278.P12171309519180096866

namespace A092278

/-- `round((A032766(n)-2)/8)` -/
def P12171309519180096866.Spec : Prop :=
  ∀ n, P12171309519180096866.a n = A092278 n

end A092278

/-! ## A092278.P6070247810552132616

`A002265(ceil((3*n+1)/4))`
-/

namespace A092278.P6070247810552132616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ⌈(3 * n + 1 : ℚ) / 4⌉.toNat

end

end A092278.P6070247810552132616

namespace A092278

/-- `A002265(ceil((3*n+1)/4))` -/
def P6070247810552132616.Spec : Prop :=
  ∀ n, P6070247810552132616.a n = A092278 n

end A092278

/-! ## A092278.P4535313786006772966

`round((A001651(n+1)-3)/8)`
-/

namespace A092278.P4535313786006772966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001651 (n + 1) - 3 : ℚ) / 8)

end

end A092278.P4535313786006772966

namespace A092278

/-- `round((A001651(n+1)-3)/8)` -/
def P4535313786006772966.Spec : Prop :=
  ∀ n, P4535313786006772966.a n = A092278 n

end A092278

/-! ## A092278.P3353634477928203248

`A008621(A037915(n))-1`
-/

namespace A092278.P3353634477928203248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A037915 n).toNat - 1

end

end A092278.P3353634477928203248

namespace A092278

/-- `A008621(A037915(n))-1` -/
def P3353634477928203248.Spec : Prop :=
  ∀ n, P3353634477928203248.a n = A092278 n

end A092278

/-! ## A092278.P17067122742359857044

`A008621(A057353(n)+1)-1`
-/

namespace A092278.P17067122742359857044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A057353 n + 1).toNat - 1

end

end A092278.P17067122742359857044

namespace A092278

/-- `A008621(A057353(n)+1)-1` -/
def P17067122742359857044.Spec : Prop :=
  ∀ n, P17067122742359857044.a n = A092278 n

end A092278

/-! ## A092278.P4711356140882925751

`A110655(A037915(n)+1)-1`
-/

namespace A092278.P4711356140882925751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A037915 n + 1).toNat - 1

end

end A092278.P4711356140882925751

namespace A092278

/-- `A110655(A037915(n)+1)-1` -/
def P4711356140882925751.Spec : Prop :=
  ∀ n, P4711356140882925751.a n = A092278 n

end A092278

/-! ## A092278.P6278703145858665944

`A110655(A057353(n)+2)-1`
-/

namespace A092278.P6278703145858665944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A057353 n + 2).toNat - 1

end

end A092278.P6278703145858665944

namespace A092278

/-- `A110655(A057353(n)+2)-1` -/
def P6278703145858665944.Spec : Prop :=
  ∀ n, P6278703145858665944.a n = A092278 n

end A092278

/-! ## A092278.P17277629943789663388

`A008621(n-A173711(n))-1`
-/

namespace A092278.P17277629943789663388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((n : ℤ) - A173711 n).toNat - 1

end

end A092278.P17277629943789663388

namespace A092278

/-- `A008621(n-A173711(n))-1` -/
def P17277629943789663388.Spec : Prop :=
  ∀ n, P17277629943789663388.a n = A092278 n

end A092278

/-! ## A092278.P14420472239920267389

`A122461(n-A173711(n))/2`
-/

namespace A092278.P14420472239920267389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122461 ((n : ℤ) - A173711 n).toNat : ℚ) / 2

end

end A092278.P14420472239920267389

namespace A092278

/-- `A122461(n-A173711(n))/2` -/
def P14420472239920267389.Spec : Prop :=
  ∀ n, P14420472239920267389.a n = (A092278 n : ℚ)

end A092278

/-! ## A092278.P10006152999065650354

`A004526(A004526(A057353(n)+1))`
-/

namespace A092278.P10006152999065650354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (A057353 n + 1).toNat).toNat

end

end A092278.P10006152999065650354

namespace A092278

/-- `A004526(A004526(A057353(n)+1))` -/
def P10006152999065650354.Spec : Prop :=
  ∀ n, P10006152999065650354.a n = A092278 n

end A092278

/-! ## A092278.P216010104679167595

`A004526(A057353(n)-A057360(n))`
-/

namespace A092278.P216010104679167595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057353 n - A057360 n).toNat

end

end A092278.P216010104679167595

namespace A092278

/-- `A004526(A057353(n)-A057360(n))` -/
def P216010104679167595.Spec : Prop :=
  ∀ n, P216010104679167595.a n = A092278 n

end A092278

/-! ## A092278.P9147812116975579915

`A004526(A110654(n-A110655(n)))`
-/

namespace A092278.P9147812116975579915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110654 ((n : ℤ) - A110655 n).toNat).toNat

end

end A092278.P9147812116975579915

namespace A092278

/-- `A004526(A110654(n-A110655(n)))` -/
def P9147812116975579915.Spec : Prop :=
  ∀ n, P9147812116975579915.a n = A092278 n

end A092278

/-! ## A092278.P14142372652021102819

`A002265(A037915(n))%A242112(n)`
-/

namespace A092278.P14142372652021102819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002265 (A037915 n).toNat) (A242112 n)

end

end A092278.P14142372652021102819

namespace A092278

/-- `A002265(A037915(n))%A242112(n)` -/
def P14142372652021102819.Spec : Prop :=
  ∀ n, P14142372652021102819.a n = A092278 n

end A092278

/-! ## A092278.P5513826115145761950

`A004526(A110654(A004526(A032766(n))))`
-/

namespace A092278.P5513826115145761950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A110654 (A004526 (A032766 n).toNat).toNat).toNat

end

end A092278.P5513826115145761950

namespace A092278

/-- `A004526(A110654(A004526(A032766(n))))` -/
def P5513826115145761950.Spec : Prop :=
  ∀ n, P5513826115145761950.a n = A092278 n

end A092278

/-! ## A092278.P12922406058844314541

`A057353(A057353(n))-A002265(A032766(n))`
-/

namespace A092278.P12922406058844314541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A057353 n).toNat - A002265 (A032766 n).toNat

end

end A092278.P12922406058844314541

namespace A092278

/-- `A057353(A057353(n))-A002265(A032766(n))` -/
def P12922406058844314541.Spec : Prop :=
  ∀ n, P12922406058844314541.a n = A092278 n

end A092278

/-! ## A092278.P12846010337753179480

`A132292(A293990(n+1))`
-/

namespace A092278.P12846010337753179480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A293990 (n + 1)).toNat

end

end A092278.P12846010337753179480

namespace A092278

/-- `A132292(A293990(n+1))` -/
def P12846010337753179480.Spec : Prop :=
  ∀ n, P12846010337753179480.a n = A092278 n

end A092278

/-! ## A092278.P4405355185913398927

`A132292(2*(A057353(n)+2))`
-/

namespace A092278.P4405355185913398927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (2 * (A057353 n + 2)).toNat

end

end A092278.P4405355185913398927

namespace A092278

/-- `A132292(2*(A057353(n)+2))` -/
def P4405355185913398927.Spec : Prop :=
  ∀ n, P4405355185913398927.a n = A092278 n

end A092278

/-! ## A092278.P1253895985619335928

`A132292(A266977(n)+n+1)`
-/

namespace A092278.P1253895985619335928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A266977 n + (n + 1 : ℤ)).toNat

end

end A092278.P1253895985619335928

namespace A092278

/-- `A132292(A266977(n)+n+1)` -/
def P1253895985619335928.Spec : Prop :=
  ∀ n, P1253895985619335928.a n = A092278 n

end A092278

/-! ## A092278.P12651761612210503691

`A132292(A008619(n)+2+n)`
-/

namespace A092278.P12651761612210503691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A008619 n + 2 + (n : ℤ)).toNat

end

end A092278.P12651761612210503691

namespace A092278

/-- `A132292(A008619(n)+2+n)` -/
def P12651761612210503691.Spec : Prop :=
  ∀ n, P12651761612210503691.a n = A092278 n

end A092278

/-!
# A092279: a(n) = floor(7*n/16) + 5.

The programs for A092279, the canonical program `A092279.P17195757739395321499` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092279 has offset 0).

The definition of A092279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7*n/16)+5` (program `A092279.P17195757739395321499`, by `A092279.P17195757739395321499.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092279.P17195757739395321499

`floor(7*n/16)+5`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092279

/-- `floor(7*n/16)+5` -/
def P17195757739395321499.Spec : Prop :=
  ∀ n, P17195757739395321499.a n = A092279 n

theorem P17195757739395321499.correct : P17195757739395321499.Spec := by
  intro n
  simp only [A092279]

end A092279

/-! ## A092279.P8057724985096319172

`A266977(6-A110656(n)+n)`
-/

namespace A092279.P8057724985096319172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (6 - A110656 n + (n : ℤ)).toNat

end

end A092279.P8057724985096319172

namespace A092279

/-- `A266977(6-A110656(n)+n)` -/
def P8057724985096319172.Spec : Prop :=
  ∀ n, P8057724985096319172.a n = A092279 n

end A092279

/-! ## A092279.P4747047137327603659

`A008619(8-A110656(n)+n)`
-/

namespace A092279.P4747047137327603659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (8 - A110656 n + (n : ℤ)).toNat

end

end A092279.P4747047137327603659

namespace A092279

/-- `A008619(8-A110656(n)+n)` -/
def P4747047137327603659.Spec : Prop :=
  ∀ n, P4747047137327603659.a n = A092279 n

end A092279

/-! ## A092279.P6461637827775747869

`A065033(9-A110656(n)+n)`
-/

namespace A092279.P6461637827775747869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (9 - A110656 n + (n : ℤ)).toNat

end

end A092279.P6461637827775747869

namespace A092279

/-- `A065033(9-A110656(n)+n)` -/
def P6461637827775747869.Spec : Prop :=
  ∀ n, P6461637827775747869.a n = A092279 n

end A092279

/-! ## A092279.P2688623953621752366

`A274047(A057353(n)+10+n)`
-/

namespace A092279.P2688623953621752366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274047 (A057353 n + 10 + (n : ℤ)).toNat

end

end A092279.P2688623953621752366

namespace A092279

/-- `A274047(A057353(n)+10+n)` -/
def P2688623953621752366.Spec : Prop :=
  ∀ n, P2688623953621752366.a n = A092279 n

end A092279

/-! ## A092279.P3942804055691769131

`A080513(A194237(2*(n+1))+6)`
-/

namespace A092279.P3942804055691769131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A194237 (2 * (n + 1)) + 6).toNat

end

end A092279.P3942804055691769131

namespace A092279

/-- `A080513(A194237(2*(n+1))+6)` -/
def P3942804055691769131.Spec : Prop :=
  ∀ n, P3942804055691769131.a n = A092279 n

end A092279

/-! ## A092279.P13065423805276967902

`A065033(A194237(2*(n+1))+8)`
-/

namespace A092279.P13065423805276967902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A194237 (2 * (n + 1)) + 8).toNat

end

end A092279.P13065423805276967902

namespace A092279

/-- `A065033(A194237(2*(n+1))+8)` -/
def P13065423805276967902.Spec : Prop :=
  ∀ n, P13065423805276967902.a n = A092279 n

end A092279

/-!
# A092280: Partial sums of periods of reciprocals.

The programs for A092280, there is no canonical definition to state claims against.
-/

/-! ## A092280.P3975763444872480415

`∑[A051626(n+2)]`
-/

namespace A092280.P3975763444872480415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092280.P3975763444872480415

/-! ## A092280.P1034360664439609405

`A051626(Δ[n²]-n+1)+a(n-1)` with `a(0)=0`
-/

namespace A092280.P1034360664439609405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A051626 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) + 1).toNat + a (n - 1)

end

end A092280.P1034360664439609405

/-! ## A092280.P1840936792625152180

`∑[A121341(A132740(n+2))]`
-/

namespace A092280.P1840936792625152180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (A132740 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092280.P1840936792625152180

/-! ## A092280.P9987976113443749940

`∑[A307070(A132740(2*(n+2)))]`
-/

namespace A092280.P9987976113443749940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307070 (A132740 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092280.P9987976113443749940

/-!
# A092281: Period of reciprocal of the primorials.

The programs for A092281, there is no canonical definition to state claims against.
-/

/-! ## A092281.P10383373634748056773

`lcm(a(n-1), A172372(n))` with `a(0)=1, a(1)=1`
-/

namespace A092281.P10383373634748056773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A172372 n)

end

end A092281.P10383373634748056773

/-! ## A092281.P3350723533277391048

`A007732(A006094(n+1)*A157727(n))`
-/

namespace A092281.P3350723533277391048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A006094 (n + 1) * A157727 n).toNat

end

end A092281.P3350723533277391048

/-! ## A092281.P13583732308486643158

`A051626(A006094(n+1)*A157268(n))`
-/

namespace A092281.P13583732308486643158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A006094 (n + 1) * A157268 n).toNat

end

end A092281.P13583732308486643158

/-! ## A092281.P1054152326137065738

`A007732(A006094(n+1)*A302835(n))`
-/

namespace A092281.P1054152326137065738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A006094 (n + 1) * A302835 n).toNat

end

end A092281.P1054152326137065738

/-!
# A092282: Difference between largest square number and largest cube number less than n.

The programs for A092282, the canonical program `A092282.P13295168445377338230` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092282 has offset 1).

The definition of A092282 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092282.P13295168445377338230

`floor((n+1)^(1/2))²-floor((n+1)^(1/3))^3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092282

/-- `floor((n+1)^(1/2))²-floor((n+1)^(1/3))^3` -/
def P13295168445377338230.Spec : Prop :=
  ∀ n, P13295168445377338230.a n = A092282 (n + 1)

theorem P13295168445377338230.correct : P13295168445377338230.Spec := by
  intro n
  simp only [A092282, Nat.add_sub_cancel]

end A092282

/-!
# A092283: Triangular array read by rows: T(n,k)=n+k^2, 1<=k<=n.

The programs for A092283, the canonical program `A092283.P6504931409094678130` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092283 has offset 1).

The definition of A092283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)+1+(col(n)+1)²` (program `A092283.P6504931409094678130`, by `A092283.P6504931409094678130.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092283.P6504931409094678130

`row(n)+1+(col(n)+1)²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092283

/-- `row(n)+1+(col(n)+1)²` -/
def P6504931409094678130.Spec : Prop :=
  ∀ n, (P6504931409094678130.a n : ℤ) = A092283 (n + 1)

theorem P6504931409094678130.correct : P6504931409094678130.Spec := by
  intro n
  simp only [A092283, Nat.add_sub_cancel]

end A092283

/-! ## A092283.P17203485359411851501

`(col(n)+1)*(col(n)+2)+row(n)-col(n)`
-/

namespace A092283.P17203485359411851501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triCol n + 1) * (SequenceMachineLib.triCol n + 2) : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A092283.P17203485359411851501

namespace A092283

/-- `(col(n)+1)*(col(n)+2)+row(n)-col(n)` -/
def P17203485359411851501.Spec : Prop :=
  ∀ n, P17203485359411851501.a n = A092283 (n + 1)

theorem P17203485359411851501.correct : P17203485359411851501.Spec := by
  intro n
  simp only [A092283, Nat.add_sub_cancel, A092283.P17203485359411851501.a, A092283.P6504931409094678130.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A092283

/-! ## A092283.P1833338663574717753

`2*(n+1)-A335821(n)`
-/

namespace A092283.P1833338663574717753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A335821 n

end

end A092283.P1833338663574717753

namespace A092283

/-- `2*(n+1)-A335821(n)` -/
def P1833338663574717753.Spec : Prop :=
  ∀ n, P1833338663574717753.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P12632272166907577413

`A133819(n+1)+∑[char[∑[n]]]`
-/

namespace A092283.P12632272166907577413
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092283.P12632272166907577413

namespace A092283

/-- `A133819(n+1)+∑[char[∑[n]]]` -/
def P12632272166907577413.Spec : Prop :=
  ∀ n, P12632272166907577413.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P3019706803571088596

`∑[char[∑[n]]]+A002260(n+1)²`
-/

namespace A092283.P3019706803571088596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A002260 (n + 1) ^ 2

end

end A092283.P3019706803571088596

namespace A092283

/-- `∑[char[∑[n]]]+A002260(n+1)²` -/
def P3019706803571088596.Spec : Prop :=
  ∀ n, P3019706803571088596.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P5455683968216500849

`A140756(n+1)²+comp[C(n, 2)]-(n+1)`
-/

namespace A092283.P5455683968216500849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) ^ 2 + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A092283.P5455683968216500849

namespace A092283

/-- `A140756(n+1)²+comp[C(n, 2)]-(n+1)` -/
def P5455683968216500849.Spec : Prop :=
  ∀ n, P5455683968216500849.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P9457216523951919862

`A154614(n+1)-A059036(n)`
-/

namespace A092283.P9457216523951919862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154614 (n + 1) - A059036 n

end

end A092283.P9457216523951919862

namespace A092283

/-- `A154614(n+1)-A059036(n)` -/
def P9457216523951919862.Spec : Prop :=
  ∀ n, P9457216523951919862.a n = A092283 (n + 1)

theorem P9457216523951919862.correct : P9457216523951919862.Spec := by
  intro n
  simp only [A092283, Nat.add_sub_cancel, A092283.P9457216523951919862.a, A092283.P6504931409094678130.a, A059036, A059036.P14090632459187506294.a, A154614, A154614.P18255365017366743044.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092283

/-! ## A092283.P6322502716975734332

`A185910(n+1)+A002260(n+1)`
-/

namespace A092283.P6322502716975734332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185910 (n + 1) + A002260 (n + 1)

end

end A092283.P6322502716975734332

namespace A092283

/-- `A185910(n+1)+A002260(n+1)` -/
def P6322502716975734332.Spec : Prop :=
  ∀ n, P6322502716975734332.a n = A092283 (n + 1)

theorem P6322502716975734332.correct : P6322502716975734332.Spec := by
  intro n
  simp only [A092283, Nat.add_sub_cancel, A092283.P6322502716975734332.a, A092283.P6504931409094678130.a, A002260, A002260.P9170571874073898642.a, A185910, A185910.P7848250070020019282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092283

/-! ## A092283.P12444525832838815071

`A002024(n+1)+(A002262(n)+1)²`
-/

namespace A092283.P12444525832838815071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A002262 n + 1) ^ 2

end

end A092283.P12444525832838815071

namespace A092283

/-- `A002024(n+1)+(A002262(n)+1)²` -/
def P12444525832838815071.Spec : Prop :=
  ∀ n, P12444525832838815071.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P14423376047632701112

`A002260(n+1)²+A003056(n)+1`
-/

namespace A092283.P14423376047632701112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 + (A003056 n + 1)

end

end A092283.P14423376047632701112

namespace A092283

/-- `A002260(n+1)²+A003056(n)+1` -/
def P14423376047632701112.Spec : Prop :=
  ∀ n, P14423376047632701112.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P10298602350911980464

`A002024(n+1)+A140756(n+1)²`
-/

namespace A092283.P10298602350911980464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A140756 (n + 1) ^ 2

end

end A092283.P10298602350911980464

namespace A092283

/-- `A002024(n+1)+A140756(n+1)²` -/
def P10298602350911980464.Spec : Prop :=
  ∀ n, P10298602350911980464.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P18374758879199244323

`A140756(n+1)²+A003056(n)+1`
-/

namespace A092283.P18374758879199244323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) ^ 2 + (A003056 n + 1)

end

end A092283.P18374758879199244323

namespace A092283

/-- `A140756(n+1)²+A003056(n)+1` -/
def P18374758879199244323.Spec : Prop :=
  ∀ n, P18374758879199244323.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P18340750571044406881

`A133196(n+1)+A133819(n+1)-2`
-/

namespace A092283.P18340750571044406881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133196 (n + 1) + (A133819 (n + 1) - 2)

end

end A092283.P18340750571044406881

namespace A092283

/-- `A133196(n+1)+A133819(n+1)-2` -/
def P18340750571044406881.Spec : Prop :=
  ∀ n, P18340750571044406881.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P5220523088403589226

`A002260(n+1)²+A003057(n+2)-1`
-/

namespace A092283.P5220523088403589226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 + (A003057 (n + 2) - 1)

end

end A092283.P5220523088403589226

namespace A092283

/-- `A002260(n+1)²+A003057(n+2)-1` -/
def P5220523088403589226.Spec : Prop :=
  ∀ n, P5220523088403589226.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P11012064102252795640

`A002260(n+1)²+A007401(n+1)-n`
-/

namespace A092283.P11012064102252795640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) ^ 2 + (A007401 (n + 1) - (n : ℤ))

end

end A092283.P11012064102252795640

namespace A092283

/-- `A002260(n+1)²+A007401(n+1)-n` -/
def P11012064102252795640.Spec : Prop :=
  ∀ n, P11012064102252795640.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P2138865386022866750

`A025581(n)+A002378(A002260(n+1))`
-/

namespace A092283.P2138865386022866750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A002378 (A002260 (n + 1)).toNat

end

end A092283.P2138865386022866750

namespace A092283

/-- `A025581(n)+A002378(A002260(n+1))` -/
def P2138865386022866750.Spec : Prop :=
  ∀ n, P2138865386022866750.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P14514717920297925968

`A002024(n+1)+A000290(A002260(n+1))`
-/

namespace A092283.P14514717920297925968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A000290 (A002260 (n + 1)).toNat

end

end A092283.P14514717920297925968

namespace A092283

/-- `A002024(n+1)+A000290(A002260(n+1))` -/
def P14514717920297925968.Spec : Prop :=
  ∀ n, P14514717920297925968.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P13435687486984424675

`A002024(n+1)+A054073(A054077(n+1))²`
-/

namespace A092283.P13435687486984424675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A054073 (A054077 (n + 1)).toNat ^ 2

end

end A092283.P13435687486984424675

namespace A092283

/-- `A002024(n+1)+A054073(A054077(n+1))²` -/
def P13435687486984424675.Spec : Prop :=
  ∀ n, P13435687486984424675.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P2762079035058216099

`A002024(n+1)+A054065(A054069(n+1))²`
-/

namespace A092283.P2762079035058216099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A054065 (A054069 (n + 1)).toNat ^ 2

end

end A092283.P2762079035058216099

namespace A092283

/-- `A002024(n+1)+A054065(A054069(n+1))²` -/
def P2762079035058216099.Spec : Prop :=
  ∀ n, P2762079035058216099.a n = A092283 (n + 1)

end A092283

/-! ## A092283.P6521841921618939672

`A002024(n+1)+A026100(A026098(n+1))²`
-/

namespace A092283.P6521841921618939672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A026100 (A026098 (n + 1)).toNat ^ 2

end

end A092283.P6521841921618939672

namespace A092283

/-- `A002024(n+1)+A026100(A026098(n+1))²` -/
def P6521841921618939672.Spec : Prop :=
  ∀ n, P6521841921618939672.a n = A092283 (n + 1)

end A092283

/-!
# A092285: Number of productions of a certain "divide-and-conquer" context-free grammar in Chomsky normal form that generates all permutations of n symbols.

The programs for A092285, there is no canonical definition to state claims against.
-/

/-! ## A092285.P8797547277049610975

`A330109(A164411(n+1))`
-/

namespace A092285.P8797547277049610975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330109 (A164411 (n + 1)).toNat

end

end A092285.P8797547277049610975

/-! ## A092285.P10103720446648366280

`∑[A208246(A278555(n))+1]`
-/

namespace A092285.P10103720446648366280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208246 (A278555 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092285.P10103720446648366280

/-!
# A092286: Fourth diagonal (m=3) of triangle A084938; a(n) = A084938(n+3,n) = (n^3 + 9*n^2 + 26*n)/6.

The programs for A092286, the canonical program `A092286.P12797197720896273286` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092286 has offset 0).

The definition of A092286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092286.P1446124311079875811

`1/6*n*(n²+9*n+26)`
-/

namespace A092286.P1446124311079875811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n : ℚ) * (n ^ 2 + 9 * n + 26 : ℚ)

end

end A092286.P1446124311079875811

namespace A092286

/-- `1/6*n*(n²+9*n+26)` -/
def P1446124311079875811.Spec : Prop :=
  ∀ n, P1446124311079875811.a n = (A092286 n : ℚ)

end A092286

/-! ## A092286.P12797197720896273286

`(n^3+9*n²+26*n)/6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092286

/-- `(n^3+9*n²+26*n)/6` -/
def P12797197720896273286.Spec : Prop :=
  ∀ n, P12797197720896273286.a n = (A092286 n : ℚ)

end A092286

/-! ## A092286.P7230904359484323056

`C(n+4, 3)-4`
-/

namespace A092286.P7230904359484323056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℤ) - 4

end

end A092286.P7230904359484323056

namespace A092286

/-- `C(n+4, 3)-4` -/
def P7230904359484323056.Spec : Prop :=
  ∀ n, P7230904359484323056.a n = A092286 n

end A092286

/-! ## A092286.P1961713331962241990

`record[abs(2-C(n, 3))-2]`
-/

namespace A092286.P1961713331962241990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose n 3 : ℤ)| - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092286.P1961713331962241990

namespace A092286

/-- `record[abs(2-C(n, 3))-2]` -/
def P1961713331962241990.Spec : Prop :=
  ∀ n, P1961713331962241990.a n = A092286 n

end A092286

/-! ## A092286.P7255547831122962091

`∑[C(3%comp[∑[n]]+n, 2)]`
-/

namespace A092286.P7255547831122962091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092286.P7255547831122962091

namespace A092286

/-- `∑[C(3%comp[∑[n]]+n, 2)]` -/
def P7255547831122962091.Spec : Prop :=
  ∀ n, (P7255547831122962091.a n : ℤ) = A092286 n

end A092286

/-! ## A092286.P12092340983284674980

`∑[C(n--3%comp[∑[n]], 2)]`
-/

namespace A092286.P12092340983284674980
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - Int.tmod (-3) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092286.P12092340983284674980

namespace A092286

/-- `∑[C(n--3%comp[∑[n]], 2)]` -/
def P12092340983284674980.Spec : Prop :=
  ∀ n, (P12092340983284674980.a n : ℤ) = A092286 n

end A092286

/-! ## A092286.P6874116446618319864

`∑[C(n+3, 2)%(2*n+1)²]`
-/

namespace A092286.P6874116446618319864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2 % (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092286.P6874116446618319864

namespace A092286

/-- `∑[C(n+3, 2)%(2*n+1)²]` -/
def P6874116446618319864.Spec : Prop :=
  ∀ n, (P6874116446618319864.a n : ℤ) = A092286 n

end A092286

/-! ## A092286.P10448786341294497526

`∑[C(n+3, C(2, (n+1)²)+2)]`
-/

namespace A092286.P10448786341294497526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (Nat.choose 2 ((n + 1) ^ 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092286.P10448786341294497526

namespace A092286

/-- `∑[C(n+3, C(2, (n+1)²)+2)]` -/
def P10448786341294497526.Spec : Prop :=
  ∀ n, (P10448786341294497526.a n : ℤ) = A092286 n

end A092286

/-! ## A092286.P6683127462567384289

`a(n-1)+(n+2)*(n+3)/2` with `a(0)=0`
-/

namespace A092286.P6683127462567384289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 2 : ℚ) * ((n + 3 : ℚ) / 2)

end

end A092286.P6683127462567384289

namespace A092286

/-- `a(n-1)+(n+2)*(n+3)/2` -/
def P6683127462567384289.Spec : Prop :=
  ∀ n, P6683127462567384289.a n = (A092286 n : ℚ)

end A092286

/-! ## A092286.P10374961093393546946

`∑[C(n+3, floor(2/(2*n+1))+2)]`
-/

namespace A092286.P10374961093393546946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (⌊2 / (2 * n + 1 : ℚ)⌋ + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092286.P10374961093393546946

namespace A092286

/-- `∑[C(n+3, floor(2/(2*n+1))+2)]` -/
def P10374961093393546946.Spec : Prop :=
  ∀ n, (P10374961093393546946.a n : ℤ) = A092286 n

end A092286

/-! ## A092286.P15237334799567923007

`A062748(n)-3`
-/

namespace A092286.P15237334799567923007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n - 3

end

end A092286.P15237334799567923007

namespace A092286

/-- `A062748(n)-3` -/
def P15237334799567923007.Spec : Prop :=
  ∀ n, P15237334799567923007.a n = A092286 n

end A092286

/-! ## A092286.P3290041328058513825

`A005586(n)+n`
-/

namespace A092286.P3290041328058513825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + (n : ℤ)

end

end A092286.P3290041328058513825

namespace A092286

/-- `A005586(n)+n` -/
def P3290041328058513825.Spec : Prop :=
  ∀ n, P3290041328058513825.a n = A092286 n

end A092286

/-! ## A092286.P10807191618144159900

`A166830(n+1)-2`
-/

namespace A092286.P10807191618144159900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) - 2

end

end A092286.P10807191618144159900

namespace A092286

/-- `A166830(n+1)-2` -/
def P10807191618144159900.Spec : Prop :=
  ∀ n, P10807191618144159900.a n = A092286 n

end A092286

/-! ## A092286.P3225525168689446060

`A222001(n+1)-6`
-/

namespace A092286.P3225525168689446060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) - 6

end

end A092286.P3225525168689446060

namespace A092286

/-- `A222001(n+1)-6` -/
def P3225525168689446060.Spec : Prop :=
  ∀ n, P3225525168689446060.a n = A092286 n

end A092286

/-! ## A092286.P3075603131821026314

`A005286(n)-1+n`
-/

namespace A092286.P3075603131821026314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n - 1 + (n : ℤ)

end

end A092286.P3075603131821026314

namespace A092286

/-- `A005286(n)-1+n` -/
def P3075603131821026314.Spec : Prop :=
  ∀ n, P3075603131821026314.a n = A092286 n

end A092286

/-! ## A092286.P6347845731120203086

`A006503(n)+3*n`
-/

namespace A092286.P6347845731120203086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n + (3 * n : ℤ)

end

end A092286.P6347845731120203086

namespace A092286

/-- `A006503(n)+3*n` -/
def P6347845731120203086.Spec : Prop :=
  ∀ n, P6347845731120203086.a n = A092286 n

end A092286

/-! ## A092286.P15372217324073659556

`∑[A062545(n)+∑[n]]`
-/

namespace A092286.P15372217324073659556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092286.P15372217324073659556

namespace A092286

/-- `∑[A062545(n)+∑[n]]` -/
def P15372217324073659556.Spec : Prop :=
  ∀ n, P15372217324073659556.a n = A092286 n

end A092286

/-! ## A092286.P11798733792942336605

`A323221(n)-∑[n+1]`
-/

namespace A092286.P11798733792942336605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323221 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A092286.P11798733792942336605

namespace A092286

/-- `A323221(n)-∑[n+1]` -/
def P11798733792942336605.Spec : Prop :=
  ∀ n, P11798733792942336605.a n = A092286 n

end A092286

/-! ## A092286.P4780581862691815007

`abs(3-∑[A000217(n+2)])`
-/

namespace A092286.P4780581862691815007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A092286.P4780581862691815007

namespace A092286

/-- `abs(3-∑[A000217(n+2)])` -/
def P4780581862691815007.Spec : Prop :=
  ∀ n, P4780581862691815007.a n = A092286 n

end A092286

/-!
# A092287: a(n) = Product_{j=1..n} Product_{k=1..n} gcd(j,k).

The programs for A092287, the canonical program `A092287.P13955186851701876767` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092287 has offset 0).

The definition of A092287 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051190, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092287.P7251615614467924533

`n!*A224479(n)²`
-/

namespace A092287.P7251615614467924533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A224479 n ^ 2

end

end A092287.P7251615614467924533

namespace A092287

/-- `n!*A224479(n)²` -/
def P7251615614467924533.Spec : Prop :=
  ∀ n, P7251615614467924533.a n = A092287 n

end A092287

/-! ## A092287.P13955186851701876767

`n*A051190(n)²*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A092287

/-- `n*A051190(n)²*a(n-1)` -/
def P13955186851701876767.Spec : Prop :=
  ∀ n, P13955186851701876767.a n = A092287 n

theorem P13955186851701876767.correct : P13955186851701876767.Spec := by
  intro n
  simp only [A092287]

end A092287

/-! ## A092287.P12032272198912627636

`A224497(n)^4*A056040(n)`
-/

namespace A092287.P12032272198912627636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224497 n ^ 4 * A056040 n

end

end A092287.P12032272198912627636

namespace A092287

/-- `A224497(n)^4*A056040(n)` -/
def P12032272198912627636.Spec : Prop :=
  ∀ n, P12032272198912627636.a n = A092287 n

end A092287

/-! ## A092287.P6999343477222654649

`A224479(n)²*∏[A007318(∑[n]+1)]`
-/

namespace A092287.P6999343477222654649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224479 n ^ 2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A092287.P6999343477222654649

namespace A092287

/-- `A224479(n)²*∏[A007318(∑[n]+1)]` -/
def P6999343477222654649.Spec : Prop :=
  ∀ n, P6999343477222654649.a n = A092287 n

end A092287

/-! ## A092287.P5463233127683041075

`∏[A051190(A028310(n))²*A028310(n)]`
-/

namespace A092287.P5463233127683041075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051190 (A028310 n).toNat ^ 2 * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092287.P5463233127683041075

namespace A092287

/-- `∏[A051190(A028310(n))²*A028310(n)]` -/
def P5463233127683041075.Spec : Prop :=
  ∀ n, P5463233127683041075.a n = A092287 n

end A092287

/-!
# A092289: Number of triangles of partition numbers with the n-partition number as largest side.

The programs for A092289, there is no canonical definition to state claims against.
-/

/-! ## A092289.P5570159824937515592

`∑[gcd(2, n)]-A190592(A228902(n))`
-/

namespace A092289.P5570159824937515592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A190592 (A228902 n).toNat

end

end A092289.P5570159824937515592

/-! ## A092289.P11447263833435872109

`A307224(A241578(n))+A032766(n)`
-/

namespace A092289.P11447263833435872109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307224 (A241578 n).toNat + A032766 n

end

end A092289.P11447263833435872109

/-! ## A092289.P17020156592115164538

`A055640(A000285(n))+A047207(n+1)`
-/

namespace A092289.P17020156592115164538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A000285 n).toNat + A047207 (n + 1)

end

end A092289.P17020156592115164538

/-! ## A092289.P10072537571391181250

`A001651(n+1)-A044940(A053808(n))`
-/

namespace A092289.P10072537571391181250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) - A044940 (A053808 n).toNat

end

end A092289.P10072537571391181250

/-! ## A092289.P10318098206282567676

`A007494(n+1)-A190592(A228902(n))`
-/

namespace A092289.P10318098206282567676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1) - A190592 (A228902 n).toNat

end

end A092289.P10318098206282567676

/-!
# A092291: Let p = n-th irregular prime, A000928(n). Then a(n) = smallest value of m such that numerator(Bernoulli(2*m)/(2*m)) / numerator(Bernoulli(2*m)/(2*m*(2*m-1))) equals p.

The programs for A092291, there is no canonical definition to state claims against.
-/

/-! ## A092291.P10911172631591077767

`A000463(A000928(n+1)*A281246(n+1))`
-/

namespace A092291.P10911172631591077767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A000928 (n + 1) * A281246 (n + 1)).toNat

end

end A092291.P10911172631591077767

/-! ## A092291.P17928729331715087811

`A001057(A000928(n+1)*A281246(n+1))`
-/

namespace A092291.P17928729331715087811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A000928 (n + 1) * A281246 (n + 1)).toNat

end

end A092291.P17928729331715087811

/-!
# A092292: a(n) = 3*n + A053838(n).

The programs for A092292, the canonical program `A092292.P6908978587120229622` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092292 has offset 0).

The definition of A092292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092292.P6908978587120229622

`3*n+A053838(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092292

/-- `3*n+A053838(n)` -/
def P6908978587120229622.Spec : Prop :=
  ∀ n, P6908978587120229622.a n = A092292 n

theorem P6908978587120229622.correct : P6908978587120229622.Spec := by
  intro n
  simp only [A092292]

end A092292

/-! ## A092292.P11347271008130935471

`(a(floor(n/3))+n)%3+3*n` with `a(0)=0`
-/

namespace A092292.P11347271008130935471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n) % 3 + 3 * n

end

end A092292.P11347271008130935471

namespace A092292

/-- `(a(floor(n/3))+n)%3+3*n` -/
def P11347271008130935471.Spec : Prop :=
  ∀ n, (P11347271008130935471.a n : ℤ) = A092292 n

end A092292

/-! ## A092292.P5608730511471755959

`A007089(n)%3+3*n`
-/

namespace A092292.P5608730511471755959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3 + (3 * n : ℤ)

end

end A092292.P5608730511471755959

namespace A092292

/-- `A007089(n)%3+3*n` -/
def P5608730511471755959.Spec : Prop :=
  ∀ n, P5608730511471755959.a n = A092292 n

end A092292

/-! ## A092292.P18440032866819173049

`A023717(n)%3+3*n`
-/

namespace A092292.P18440032866819173049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 n) 3 + (3 * n : ℤ)

end

end A092292.P18440032866819173049

namespace A092292

/-- `A023717(n)%3+3*n` -/
def P18440032866819173049.Spec : Prop :=
  ∀ n, P18440032866819173049.a n = A092292 n

end A092292

/-! ## A092292.P11416881843052156736

`A053735(n)%3+3*n`
-/

namespace A092292.P11416881843052156736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n) 3 + (3 * n : ℤ)

end

end A092292.P11416881843052156736

namespace A092292

/-- `A053735(n)%3+3*n` -/
def P11416881843052156736.Spec : Prop :=
  ∀ n, P11416881843052156736.a n = A092292 n

end A092292

/-! ## A092292.P2790292271616687506

`2*n+A026600(n+1)+n-1`
-/

namespace A092292.P2790292271616687506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A026600 (n + 1) + ((n : ℤ) - 1))

end

end A092292.P2790292271616687506

namespace A092292

/-- `2*n+A026600(n+1)+n-1` -/
def P2790292271616687506.Spec : Prop :=
  ∀ n, P2790292271616687506.a n = A092292 n

end A092292

/-! ## A092292.P15218794261023158765

`A053838(n)+A008585(n)`
-/

namespace A092292.P15218794261023158765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + A008585 n

end

end A092292.P15218794261023158765

namespace A092292

/-- `A053838(n)+A008585(n)` -/
def P15218794261023158765.Spec : Prop :=
  ∀ n, P15218794261023158765.a n = A092292 n

theorem P15218794261023158765.correct : P15218794261023158765.Spec := by
  intro n
  simp only [A092292, Nat.add_sub_cancel, A092292.P15218794261023158765.a, A092292.P6908978587120229622.a, A008585, A008585.P13732812384316341435.a, A053838, A053838.P12960240221396794079.a, A010872, A010872.P9752549328412734763.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092292

/-! ## A092292.P16102584564087984342

`A016945(n)-A026603(n+1)`
-/

namespace A092292.P16102584564087984342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A026603 (n + 1)

end

end A092292.P16102584564087984342

namespace A092292

/-- `A016945(n)-A026603(n+1)` -/
def P16102584564087984342.Spec : Prop :=
  ∀ n, P16102584564087984342.a n = A092292 n

end A092292

/-! ## A092292.P14268140122724171418

`A016777(n)+A053838(n)-1`
-/

namespace A092292.P14268140122724171418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A053838 n - 1)

end

end A092292.P14268140122724171418

namespace A092292

/-- `A016777(n)+A053838(n)-1` -/
def P14268140122724171418.Spec : Prop :=
  ∀ n, P14268140122724171418.a n = A092292 n

theorem P14268140122724171418.correct : P14268140122724171418.Spec := by
  intro n
  simp only [A092292, Nat.add_sub_cancel, A092292.P14268140122724171418.a, A092292.P6908978587120229622.a, A016777, A016777.P9931792138852554157.a, A053838, A053838.P12960240221396794079.a, A010872, A010872.P9752549328412734763.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092292

/-! ## A092292.P6766263028744428452

`A026601(n+1)-A090193(n)`
-/

namespace A092292.P6766263028744428452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (n + 1) - A090193 n

end

end A092292.P6766263028744428452

namespace A092292

/-- `A026601(n+1)-A090193(n)` -/
def P6766263028744428452.Spec : Prop :=
  ∀ n, P6766263028744428452.a n = A092292 n

end A092292

/-! ## A092292.P13422412914796383176

`A026602(n+1)-A090239(n)`
-/

namespace A092292.P13422412914796383176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026602 (n + 1) - A090239 n

end

end A092292.P13422412914796383176

namespace A092292

/-- `A026602(n+1)-A090239(n)` -/
def P13422412914796383176.Spec : Prop :=
  ∀ n, P13422412914796383176.a n = A092292 n

end A092292

/-! ## A092292.P7433957076015401190

`A016789(n)+A053838(n)-2`
-/

namespace A092292.P7433957076015401190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (A053838 n - 2)

end

end A092292.P7433957076015401190

namespace A092292

/-- `A016789(n)+A053838(n)-2` -/
def P7433957076015401190.Spec : Prop :=
  ∀ n, P7433957076015401190.a n = A092292 n

theorem P7433957076015401190.correct : P7433957076015401190.Spec := by
  intro n
  simp only [A092292, Nat.add_sub_cancel, A092292.P7433957076015401190.a, A092292.P6908978587120229622.a, A016789, A016789.P8277564872725303677.a, A053838, A053838.P12960240221396794079.a, A010872, A010872.P9752549328412734763.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092292

/-! ## A092292.P9653611512282631681

`A008585(n)+A007089(n)%3`
-/

namespace A092292.P9653611512282631681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + Int.tmod (A007089 n) 3

end

end A092292.P9653611512282631681

namespace A092292

/-- `A008585(n)+A007089(n)%3` -/
def P9653611512282631681.Spec : Prop :=
  ∀ n, P9653611512282631681.a n = A092292 n

end A092292

/-! ## A092292.P2758478814976827838

`A005843(n)+A053838(n)+n`
-/

namespace A092292.P2758478814976827838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A053838 n + (n : ℤ))

end

end A092292.P2758478814976827838

namespace A092292

/-- `A005843(n)+A053838(n)+n` -/
def P2758478814976827838.Spec : Prop :=
  ∀ n, P2758478814976827838.a n = A092292 n

theorem P2758478814976827838.correct : P2758478814976827838.Spec := by
  intro n
  simp only [A092292, Nat.add_sub_cancel, A092292.P2758478814976827838.a, A092292.P6908978587120229622.a, A005843, A005843.P3167286115683555970.a, A053838, A053838.P12960240221396794079.a, A010872, A010872.P9752549328412734763.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092292

/-! ## A092292.P11198701409673594773

`A026600(n+1)+A008585(n)-1`
-/

namespace A092292.P11198701409673594773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) + (A008585 n - 1)

end

end A092292.P11198701409673594773

namespace A092292

/-- `A026600(n+1)+A008585(n)-1` -/
def P11198701409673594773.Spec : Prop :=
  ∀ n, P11198701409673594773.a n = A092292 n

end A092292

/-! ## A092292.P7753001688088453348

`A079498(n+1)+1-A090193(n)`
-/

namespace A092292.P7753001688088453348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (n + 1) + (1 - A090193 n)

end

end A092292.P7753001688088453348

namespace A092292

/-- `A079498(n+1)+1-A090193(n)` -/
def P7753001688088453348.Spec : Prop :=
  ∀ n, P7753001688088453348.a n = A092292 n

end A092292

/-! ## A092292.P11632993894083492230

`A026600(n+1)+A016777(n)-2`
-/

namespace A092292.P11632993894083492230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) + (A016777 n - 2)

end

end A092292.P11632993894083492230

namespace A092292

/-- `A026600(n+1)+A016777(n)-2` -/
def P11632993894083492230.Spec : Prop :=
  ∀ n, P11632993894083492230.a n = A092292 n

end A092292

/-! ## A092292.P3583048992847975631

`A017197(n)-(A092296(n)+A092293(n))`
-/

namespace A092292.P3583048992847975631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - (A092296 n + A092293 n)

end

end A092292.P3583048992847975631

namespace A092292

/-- `A017197(n)-(A092296(n)+A092293(n))` -/
def P3583048992847975631.Spec : Prop :=
  ∀ n, P3583048992847975631.a n = A092292 n

end A092292

/-! ## A092292.P1038529719852942216

`A053838(n)+A092296(n)-A090193(n)`
-/

namespace A092292.P1038529719852942216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + (A092296 n - A090193 n)

end

end A092292.P1038529719852942216

namespace A092292

/-- `A053838(n)+A092296(n)-A090193(n)` -/
def P1038529719852942216.Spec : Prop :=
  ∀ n, P1038529719852942216.a n = A092292 n

theorem P1038529719852942216.correct : P1038529719852942216.Spec := by
  intro n
  simp only [A092292, Nat.add_sub_cancel, A092292.P1038529719852942216.a, A092292.P6908978587120229622.a, A053838, A053838.P12960240221396794079.a, A090193, A090193.P15358128269312827508.a, A092296, A092296.P9774238227988506209.a, A010872, A010872.P9752549328412734763.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092292

/-!
# A092293: a(n) = 3*n + A090239(n).

The programs for A092293, the canonical program `A092293.P13578287219996875528` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092293 has offset 0).

The definition of A092293 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090239, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092293.P13578287219996875528

`3*n+A090239(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092293

/-- `3*n+A090239(n)` -/
def P13578287219996875528.Spec : Prop :=
  ∀ n, P13578287219996875528.a n = A092293 n

theorem P13578287219996875528.correct : P13578287219996875528.Spec := by
  intro n
  simp only [A092293]

end A092293

/-! ## A092293.P17952048470235848748

`(a(floor(n/3))+n)%3+3*n` with `a(0)=2`
-/

namespace A092293.P17952048470235848748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n) % 3 + 3 * n

end

end A092293.P17952048470235848748

namespace A092293

/-- `(a(floor(n/3))+n)%3+3*n` -/
def P17952048470235848748.Spec : Prop :=
  ∀ n, (P17952048470235848748.a n : ℤ) = A092293 n

end A092293

/-! ## A092293.P539228269384697991

`eq[0, (a(n-1)+1-val(n, 3))%3]` with `a(0)=1`
-/

namespace A092293.P539228269384697991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod (f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 3 : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092293.P539228269384697991

namespace A092293

/-- `eq[0, (a(n-1)+1-val(n, 3))%3]` -/
def P539228269384697991.Spec : Prop :=
  ∀ n, (P539228269384697991.a n : ℤ) = A092293 n

end A092293

/-! ## A092293.P4638746162507410617

`eq[n%3, A090239(floor(n/3))]`
-/

namespace A092293.P4638746162507410617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092293.P4638746162507410617

namespace A092293

/-- `eq[n%3, A090239(floor(n/3))]` -/
def P4638746162507410617.Spec : Prop :=
  ∀ n, (P4638746162507410617.a n : ℤ) = A092293 n

end A092293

/-! ## A092293.P11290866950699882024

`6*n+2-A079498(n+1)`
-/

namespace A092293.P11290866950699882024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) - A079498 (n + 1)

end

end A092293.P11290866950699882024

namespace A092293

/-- `6*n+2-A079498(n+1)` -/
def P11290866950699882024.Spec : Prop :=
  ∀ n, P11290866950699882024.a n = A092293 n

end A092293

/-! ## A092293.P3532799673894189026

`A090239(n)+A008585(n)`
-/

namespace A092293.P3532799673894189026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n + A008585 n

end

end A092293.P3532799673894189026

namespace A092293

/-- `A090239(n)+A008585(n)` -/
def P3532799673894189026.Spec : Prop :=
  ∀ n, P3532799673894189026.a n = A092293 n

theorem P3532799673894189026.correct : P3532799673894189026.Spec := by
  intro n
  simp only [A092293, Nat.add_sub_cancel, A092293.P3532799673894189026.a, A092293.P13578287219996875528.a, A008585, A008585.P13732812384316341435.a, A090239, A090239.P14034865969312586321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092293

/-! ## A092293.P10570022333003033836

`A016945(n)-A026601(n+1)`
-/

namespace A092293.P10570022333003033836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A026601 (n + 1)

end

end A092293.P10570022333003033836

namespace A092293

/-- `A016945(n)-A026601(n+1)` -/
def P10570022333003033836.Spec : Prop :=
  ∀ n, P10570022333003033836.a n = A092293 n

end A092293

/-! ## A092293.P15135094806674819093

`A026602(n+1)-A053838(n)`
-/

namespace A092293.P15135094806674819093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026602 (n + 1) - A053838 n

end

end A092293.P15135094806674819093

namespace A092293

/-- `A026602(n+1)-A053838(n)` -/
def P15135094806674819093.Spec : Prop :=
  ∀ n, P15135094806674819093.a n = A092293 n

end A092293

/-! ## A092293.P17751534385583441121

`A016777(n)+A090239(n)-1`
-/

namespace A092293.P17751534385583441121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A090239 n - 1)

end

end A092293.P17751534385583441121

namespace A092293

/-- `A016777(n)+A090239(n)-1` -/
def P17751534385583441121.Spec : Prop :=
  ∀ n, P17751534385583441121.a n = A092293 n

theorem P17751534385583441121.correct : P17751534385583441121.Spec := by
  intro n
  simp only [A092293, Nat.add_sub_cancel, A092293.P17751534385583441121.a, A092293.P13578287219996875528.a, A016777, A016777.P9931792138852554157.a, A090239, A090239.P14034865969312586321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092293

/-! ## A092293.P14813777804879059988

`A026603(n+1)-A090193(n)`
-/

namespace A092293.P14813777804879059988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026603 (n + 1) - A090193 n

end

end A092293.P14813777804879059988

namespace A092293

/-- `A026603(n+1)-A090193(n)` -/
def P14813777804879059988.Spec : Prop :=
  ∀ n, P14813777804879059988.a n = A092293 n

end A092293

/-! ## A092293.P16547535371405053949

`A016789(n)+A090239(n)-2`
-/

namespace A092293.P16547535371405053949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (A090239 n - 2)

end

end A092293.P16547535371405053949

namespace A092293

/-- `A016789(n)+A090239(n)-2` -/
def P16547535371405053949.Spec : Prop :=
  ∀ n, P16547535371405053949.a n = A092293 n

theorem P16547535371405053949.correct : P16547535371405053949.Spec := by
  intro n
  simp only [A092293, Nat.add_sub_cancel, A092293.P16547535371405053949.a, A092293.P13578287219996875528.a, A016789, A016789.P8277564872725303677.a, A090239, A090239.P14034865969312586321.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092293

/-! ## A092293.P12785948624839440018

`A017197(n)-(A092296(n)+A092292(n))`
-/

namespace A092293.P12785948624839440018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - (A092296 n + A092292 n)

end

end A092293.P12785948624839440018

namespace A092293

/-- `A017197(n)-(A092296(n)+A092292(n))` -/
def P12785948624839440018.Spec : Prop :=
  ∀ n, P12785948624839440018.a n = A092293 n

end A092293

/-! ## A092293.P14154698089051179854

`A090239(n)+A092296(n)-A090193(n)`
-/

namespace A092293.P14154698089051179854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n + (A092296 n - A090193 n)

end

end A092293.P14154698089051179854

namespace A092293

/-- `A090239(n)+A092296(n)-A090193(n)` -/
def P14154698089051179854.Spec : Prop :=
  ∀ n, P14154698089051179854.a n = A092293 n

theorem P14154698089051179854.correct : P14154698089051179854.Spec := by
  intro n
  simp only [A092293, Nat.add_sub_cancel, A092293.P14154698089051179854.a, A092293.P13578287219996875528.a, A090193, A090193.P15358128269312827508.a, A090239, A090239.P14034865969312586321.a, A092296, A092296.P9774238227988506209.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092293

/-! ## A092293.P13137695305780170349

`A026608(3*n+1)+3*n`
-/

namespace A092293.P13137695305780170349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026608 (3 * n + 1) + (3 * n : ℤ)

end

end A092293.P13137695305780170349

namespace A092293

/-- `A026608(3*n+1)+3*n` -/
def P13137695305780170349.Spec : Prop :=
  ∀ n, P13137695305780170349.a n = A092293 n

end A092293

/-! ## A092293.P228908819557236036

`A016789(n)-A026610(A016777(n))`
-/

namespace A092293.P228908819557236036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A026610 (A016777 n).toNat

end

end A092293.P228908819557236036

namespace A092293

/-- `A016789(n)-A026610(A016777(n))` -/
def P228908819557236036.Spec : Prop :=
  ∀ n, P228908819557236036.a n = A092293 n

end A092293

/-! ## A092293.P10200730291642124201

`A090239(n)+A002517(A002517(n))`
-/

namespace A092293.P10200730291642124201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n + A002517 (A002517 n).toNat

end

end A092293.P10200730291642124201

namespace A092293

/-- `A090239(n)+A002517(A002517(n))` -/
def P10200730291642124201.Spec : Prop :=
  ∀ n, P10200730291642124201.a n = A092293 n

end A092293

/-! ## A092293.P4297871665496374414

`eq[1, A230641(n)%3]`
-/

namespace A092293.P4297871665496374414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230641 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092293.P4297871665496374414

namespace A092293

/-- `eq[1, A230641(n)%3]` -/
def P4297871665496374414.Spec : Prop :=
  ∀ n, (P4297871665496374414.a n : ℤ) = A092293 n

end A092293

/-! ## A092293.P14665806917014742835

`lt[1, A089792(n)%3]`
-/

namespace A092293.P14665806917014742835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089792 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092293.P14665806917014742835

namespace A092293

/-- `lt[1, A089792(n)%3]` -/
def P14665806917014742835.Spec : Prop :=
  ∀ n, (P14665806917014742835.a n : ℤ) = A092293 n

end A092293

/-! ## A092293.P3305656569659221592

`A004483(A092292(n))`
-/

namespace A092293.P3305656569659221592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A092292 n).toNat

end

end A092293.P3305656569659221592

namespace A092293

/-- `A004483(A092292(n))` -/
def P3305656569659221592.Spec : Prop :=
  ∀ n, P3305656569659221592.a n = A092293 n

end A092293

/-! ## A092293.P14843883126762486000

`eq[A080425(n), A090239(n)]`
-/

namespace A092293.P14843883126762486000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092293.P14843883126762486000

namespace A092293

/-- `eq[A080425(n), A090239(n)]` -/
def P14843883126762486000.Spec : Prop :=
  ∀ n, (P14843883126762486000.a n : ℤ) = A092293 n

end A092293

/-!
# A092294: Decimal expansion of 3 + sqrt(15).

The programs for A092294, there is no canonical definition to state claims against.
-/

/-! ## A092294.P12131860964505730600

`A010472(n)*A028920(A001223(n+1))`
-/

namespace A092294.P12131860964505730600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010472 (n + 1) * A028920 (A001223 (n + 1)).toNat

end

end A092294.P12131860964505730600

/-! ## A092294.P2930072575872595121

`A014963(A337645(n+1))*A010472(n)`
-/

namespace A092294.P2930072575872595121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A337645 (n + 1)).toNat * A010472 (n + 1)

end

end A092294.P2930072575872595121

/-! ## A092294.P564849885958851552

`gcd(A007918(n), A051903(n+1))*A010472(n)`
-/

namespace A092294.P564849885958851552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A007918 n) (A051903 (n + 1)) : ℤ) * A010472 (n + 1)

end

end A092294.P564849885958851552

/-! ## A092294.P17584207882220174809

`A010687(n+1)+A010472(n)-A040011(n)`
-/

namespace A092294.P17584207882220174809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 (n + 1) + (A010472 (n + 1) - A040011 n)

end

end A092294.P17584207882220174809

/-! ## A092294.P1061565251942997671

`A010472(n)*A322357(A020484(n))`
-/

namespace A092294.P1061565251942997671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010472 (n + 1) * A322357 (A020484 n).toNat

end

end A092294.P1061565251942997671

/-! ## A092294.P12189843759581170066

`A000034(A004277(n))*A010472(n)`
-/

namespace A092294.P12189843759581170066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A004277 n).toNat * A010472 (n + 1)

end

end A092294.P12189843759581170066

/-! ## A092294.P7561488576391174549

`A010472(n)*A014963(A016825(n))`
-/

namespace A092294.P7561488576391174549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010472 (n + 1) * A014963 (A016825 n).toNat

end

end A092294.P7561488576391174549

/-! ## A092294.P7514264134631411238

`A010472(n)*A014963(A017089(n))`
-/

namespace A092294.P7514264134631411238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010472 (n + 1) * A014963 (A017089 n).toNat

end

end A092294.P7514264134631411238

/-! ## A092294.P8901657999672503465

`A010472(n)*A322357(A192611(n+1))`
-/

namespace A092294.P8901657999672503465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010472 (n + 1) * A322357 (A192611 (n + 1)).toNat

end

end A092294.P8901657999672503465

/-! ## A092294.P916055968896774629

`A000034(A151878(n))*A010472(n)`
-/

namespace A092294.P916055968896774629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A151878 n).toNat * A010472 (n + 1)

end

end A092294.P916055968896774629

/-!
# A092295: Number of partitions of n with even number (or 0) 2's.

The programs for A092295, there is no canonical definition to state claims against.
-/

/-! ## A092295.P9485187427154593215

`A000041(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A092295.P9485187427154593215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000041 n - a (n - 2)

end

end A092295.P9485187427154593215

/-! ## A092295.P9022561077503317098

`∑[A002865(n)-a(n-2)]` with `a(0)=1, a(1)=0`
-/

namespace A092295.P9022561077503317098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A002865 n - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092295.P9022561077503317098

/-! ## A092295.P14742329708181308150

`A240058(n+1)+A182712(n+1)`
-/

namespace A092295.P14742329708181308150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240058 (n + 1) + A182712 (n + 1)

end

end A092295.P14742329708181308150

/-! ## A092295.P12139290935360038586

`A182714(n+3)+A182714(n+4)`
-/

namespace A092295.P12139290935360038586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 3) + A182714 (n + 4)

end

end A092295.P12139290935360038586

/-! ## A092295.P10270599268106286088

`A182712(n+1)+A240059(n+1)-A240059(n)`
-/

namespace A092295.P10270599268106286088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (n + 1) + (A240059 (n + 1) - A240059 n)

end

end A092295.P10270599268106286088

/-! ## A092295.P4113770620879222663

`A295341(n)+A000726(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A092295.P4113770620879222663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A295341 n + A000726 n - a (n - 2)

end

end A092295.P4113770620879222663

/-! ## A092295.P5328305845926633140

`A035363(2*n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A092295.P5328305845926633140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A035363 (2 * n) - a (n - 2)

end

end A092295.P5328305845926633140

/-! ## A092295.P7908600622964222951

`A024786(n+2)-2*A024788(n+2)`
-/

namespace A092295.P7908600622964222951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 2) - 2 * A024788 (n + 2)

end

end A092295.P7908600622964222951

/-! ## A092295.P2602970109874493499

`A024788(n+1)+A240059(n+1)-A024788(n+2)`
-/

namespace A092295.P2602970109874493499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 1) + (A240059 (n + 1) - A024788 (n + 2))

end

end A092295.P2602970109874493499

/-! ## A092295.P6069425034602165928

`A024788(n+4)-A024788(n+2)`
-/

namespace A092295.P6069425034602165928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 (n + 4) - A024788 (n + 2)

end

end A092295.P6069425034602165928

/-!
# A092296: a(n) = 3*n + A090193(n).

The programs for A092296, the canonical program `A092296.P9774238227988506209` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092296 has offset 0).

The definition of A092296 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090193, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092296.P9774238227988506209

`3*n+A090193(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092296

/-- `3*n+A090193(n)` -/
def P9774238227988506209.Spec : Prop :=
  ∀ n, P9774238227988506209.a n = A092296 n

theorem P9774238227988506209.correct : P9774238227988506209.Spec := by
  intro n
  simp only [A092296]

end A092296

/-! ## A092296.P4970318830941071480

`(a(floor(n/3))+n)%3+3*n` with `a(0)=1`
-/

namespace A092296.P4970318830941071480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n) % 3 + 3 * n

end

end A092296.P4970318830941071480

namespace A092296

/-- `(a(floor(n/3))+n)%3+3*n` -/
def P4970318830941071480.Spec : Prop :=
  ∀ n, (P4970318830941071480.a n : ℤ) = A092296 n

end A092296

/-! ## A092296.P7475686416853736868

`eq[0, (a(n-1)+1-val(n, 3))%3]` with `a(0)=2`
-/

namespace A092296.P7475686416853736868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  Int.tmod (f2 (n - 1) + (1 - (SequenceMachineLib.valuation n 3 : ℤ))) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092296.P7475686416853736868

namespace A092296

/-- `eq[0, (a(n-1)+1-val(n, 3))%3]` -/
def P7475686416853736868.Spec : Prop :=
  ∀ n, (P7475686416853736868.a n : ℤ) = A092296 n

end A092296

/-! ## A092296.P15707817418963038918

`eq[n%3, A090193(floor(n/3))]`
-/

namespace A092296.P15707817418963038918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092296.P15707817418963038918

namespace A092296

/-- `eq[n%3, A090193(floor(n/3))]` -/
def P15707817418963038918.Spec : Prop :=
  ∀ n, (P15707817418963038918.a n : ℤ) = A092296 n

end A092296

/-! ## A092296.P15187263325433712375

`6*n+3-A026602(n+1)`
-/

namespace A092296.P15187263325433712375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 3 : ℤ) - A026602 (n + 1)

end

end A092296.P15187263325433712375

namespace A092296

/-- `6*n+3-A026602(n+1)` -/
def P15187263325433712375.Spec : Prop :=
  ∀ n, P15187263325433712375.a n = A092296 n

end A092296

/-! ## A092296.P12389484978384645774

`A090193(n)+A008585(n)`
-/

namespace A092296.P12389484978384645774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n + A008585 n

end

end A092296.P12389484978384645774

namespace A092296

/-- `A090193(n)+A008585(n)` -/
def P12389484978384645774.Spec : Prop :=
  ∀ n, P12389484978384645774.a n = A092296 n

theorem P12389484978384645774.correct : P12389484978384645774.Spec := by
  intro n
  simp only [A092296, Nat.add_sub_cancel, A092296.P12389484978384645774.a, A092296.P9774238227988506209.a, A008585, A008585.P13732812384316341435.a, A090193, A090193.P15358128269312827508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092296

/-! ## A092296.P1581418474475564075

`A026601(n+1)-A053838(n)`
-/

namespace A092296.P1581418474475564075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (n + 1) - A053838 n

end

end A092296.P1581418474475564075

namespace A092296

/-- `A026601(n+1)-A053838(n)` -/
def P1581418474475564075.Spec : Prop :=
  ∀ n, P1581418474475564075.a n = A092296 n

end A092296

/-! ## A092296.P2792787323458311358

`A016777(n)+A090193(n)-1`
-/

namespace A092296.P2792787323458311358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A090193 n - 1)

end

end A092296.P2792787323458311358

namespace A092296

/-- `A016777(n)+A090193(n)-1` -/
def P2792787323458311358.Spec : Prop :=
  ∀ n, P2792787323458311358.a n = A092296 n

theorem P2792787323458311358.correct : P2792787323458311358.Spec := by
  intro n
  simp only [A092296, Nat.add_sub_cancel, A092296.P2792787323458311358.a, A092296.P9774238227988506209.a, A016777, A016777.P9931792138852554157.a, A090193, A090193.P15358128269312827508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092296

/-! ## A092296.P6678099488620603968

`A026603(n+1)-A090239(n)`
-/

namespace A092296.P6678099488620603968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026603 (n + 1) - A090239 n

end

end A092296.P6678099488620603968

namespace A092296

/-- `A026603(n+1)-A090239(n)` -/
def P6678099488620603968.Spec : Prop :=
  ∀ n, P6678099488620603968.a n = A092296 n

end A092296

/-! ## A092296.P4902356881811537189

`A079498(n+1)+1-A053838(n)`
-/

namespace A092296.P4902356881811537189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079498 (n + 1) + (1 - A053838 n)

end

end A092296.P4902356881811537189

namespace A092296

/-- `A079498(n+1)+1-A053838(n)` -/
def P4902356881811537189.Spec : Prop :=
  ∀ n, P4902356881811537189.a n = A092296 n

end A092296

/-! ## A092296.P3888334809354046916

`A026601(n+1)+1-A026600(n+1)`
-/

namespace A092296.P3888334809354046916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026601 (n + 1) + (1 - A026600 (n + 1))

end

end A092296.P3888334809354046916

namespace A092296

/-- `A026601(n+1)+1-A026600(n+1)` -/
def P3888334809354046916.Spec : Prop :=
  ∀ n, P3888334809354046916.a n = A092296 n

end A092296

/-! ## A092296.P8723387503372149137

`A017197(n)-(A092293(n)+A092292(n))`
-/

namespace A092296.P8723387503372149137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - (A092293 n + A092292 n)

end

end A092296.P8723387503372149137

namespace A092296

/-- `A017197(n)-(A092293(n)+A092292(n))` -/
def P8723387503372149137.Spec : Prop :=
  ∀ n, P8723387503372149137.a n = A092296 n

end A092296

/-! ## A092296.P5215634907387981488

`A090193(n)+A092293(n)-A090239(n)`
-/

namespace A092296.P5215634907387981488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n + (A092293 n - A090239 n)

end

end A092296.P5215634907387981488

namespace A092296

/-- `A090193(n)+A092293(n)-A090239(n)` -/
def P5215634907387981488.Spec : Prop :=
  ∀ n, P5215634907387981488.a n = A092296 n

theorem P5215634907387981488.correct : P5215634907387981488.Spec := by
  intro n
  simp only [A092296, Nat.add_sub_cancel, A092296.P5215634907387981488.a, A092296.P9774238227988506209.a, A090193, A090193.P15358128269312827508.a, A090239, A090239.P14034865969312586321.a, A092293, A092293.P13578287219996875528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092296

/-! ## A092296.P12399702346365984468

`A090193(n)+A002517(A002517(n))`
-/

namespace A092296.P12399702346365984468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090193 n + A002517 (A002517 n).toNat

end

end A092296.P12399702346365984468

namespace A092296

/-- `A090193(n)+A002517(A002517(n))` -/
def P12399702346365984468.Spec : Prop :=
  ∀ n, P12399702346365984468.a n = A092296 n

end A092296

/-! ## A092296.P6170834216393602290

`A004482(A092292(n))`
-/

namespace A092296.P6170834216393602290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004482 (A092292 n).toNat

end

end A092296.P6170834216393602290

namespace A092296

/-- `A004482(A092292(n))` -/
def P6170834216393602290.Spec : Prop :=
  ∀ n, P6170834216393602290.a n = A092296 n

end A092296

/-! ## A092296.P2623453365828461168

`A004483(A092293(n))`
-/

namespace A092296.P2623453365828461168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A092293 n).toNat

end

end A092296.P2623453365828461168

namespace A092296

/-- `A004483(A092293(n))` -/
def P2623453365828461168.Spec : Prop :=
  ∀ n, P2623453365828461168.a n = A092296 n

end A092296

/-! ## A092296.P5119357134993045077

`A159958(3*n+1)`
-/

namespace A092296.P5119357134993045077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159958 (3 * n + 1)

end

end A092296.P5119357134993045077

namespace A092296

/-- `A159958(3*n+1)` -/
def P5119357134993045077.Spec : Prop :=
  ∀ n, P5119357134993045077.a n = A092296 n

end A092296

/-! ## A092296.P7836305954131106623

`eq[1, A089792(n)%3]`
-/

namespace A092296.P7836305954131106623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089792 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092296.P7836305954131106623

namespace A092296

/-- `eq[1, A089792(n)%3]` -/
def P7836305954131106623.Spec : Prop :=
  ∀ n, (P7836305954131106623.a n : ℤ) = A092296 n

end A092296

/-! ## A092296.P8987271199793551206

`lt[1, A230641(n)%3]`
-/

namespace A092296.P8987271199793551206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230641 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092296.P8987271199793551206

namespace A092296

/-- `lt[1, A230641(n)%3]` -/
def P8987271199793551206.Spec : Prop :=
  ∀ n, (P8987271199793551206.a n : ℤ) = A092296 n

end A092296

/-! ## A092296.P11246692487589193348

`eq[2, (A053735(n)+n)%3]`
-/

namespace A092296.P11246692487589193348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053735 n + (n : ℤ)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092296.P11246692487589193348

namespace A092296

/-- `eq[2, (A053735(n)+n)%3]` -/
def P11246692487589193348.Spec : Prop :=
  ∀ n, (P11246692487589193348.a n : ℤ) = A092296 n

end A092296

/-!
# A092297: Number of ways of 3-coloring an annulus consisting of n zones joined like a pearl necklace.

The programs for A092297, the canonical program `A092297.P1715959916199650785` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092297 has offset 1).

The definition of A092297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092297.P11064188638640575855

`2*(2^n+(-1)^(n+1))`
-/

namespace A092297.P11064188638640575855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) + (-1) ^ (n + 1))

end

end A092297.P11064188638640575855

namespace A092297

/-- `2*(2^n+(-1)^(n+1))` -/
def P11064188638640575855.Spec : Prop :=
  ∀ n, P11064188638640575855.a n = A092297 (n + 1)

theorem P11064188638640575855.correct : P11064188638640575855.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092297, Nat.add_sub_cancel, A092297.P11064188638640575855.a, A092297.P1715959916199650785.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A092297, Nat.add_sub_cancel, A092297.P11064188638640575855.a, A092297.P1715959916199650785.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092297

/-! ## A092297.P1715959916199650785

`2*a(n-2)+a(n-1)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092297

/-- `2*a(n-2)+a(n-1)` -/
def P1715959916199650785.Spec : Prop :=
  ∀ n, (P1715959916199650785.a n : ℤ) = A092297 (n + 1)

theorem P1715959916199650785.correct : P1715959916199650785.Spec := by
  intro n
  simp only [A092297, Nat.add_sub_cancel]

end A092297

/-! ## A092297.P18432968653645758776

`ogf(6x/(1-x-2x^2))`
-/

namespace A092297.P18432968653645758776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -1, -2] n

end

end A092297.P18432968653645758776

namespace A092297

/-- `ogf(6x/(1-x-2x^2))` -/
def P18432968653645758776.Spec : Prop :=
  ∀ n, P18432968653645758776.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P15185852561323816256

`lcm(2, 1-(-2)^n)`
-/

namespace A092297.P15185852561323816256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (-2) ^ n)

end

end A092297.P15185852561323816256

namespace A092297

/-- `lcm(2, 1-(-2)^n)` -/
def P15185852561323816256.Spec : Prop :=
  ∀ n, (P15185852561323816256.a n : ℤ) = A092297 (n + 1)

end A092297

/-! ## A092297.P7785850849354884237

`3*or(1, ceil(2^(n+1)/3))-3`
-/

namespace A092297.P7785850849354884237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.lor 1 ⌈(2 ^ (n + 1) : ℚ) / 3⌉ - 3

end

end A092297.P7785850849354884237

namespace A092297

/-- `3*or(1, ceil(2^(n+1)/3))-3` -/
def P7785850849354884237.Spec : Prop :=
  ∀ n, P7785850849354884237.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P3786357529923517517

`2^(n+1)+2*cos((n-1)*π)`
-/

namespace A092297.P3786357529923517517
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℝ) + 2 * Real.cos (((n : ℤ) - 1 : ℝ) * Real.pi)

end

end A092297.P3786357529923517517

namespace A092297

/-- `2^(n+1)+2*cos((n-1)*π)` -/
def P3786357529923517517.Spec : Prop :=
  ∀ n, P3786357529923517517.a n = (A092297 (n + 1) : ℝ)

end A092297

/-! ## A092297.P14133489652661557704

`2^(n+1)+2^n-a(n-1)` with `a(0)=0`
-/

namespace A092297.P14133489652661557704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ (n + 1) : ℤ) + ((2 ^ n : ℤ) - a (n - 1))

end

end A092297.P14133489652661557704

namespace A092297

/-- `2^(n+1)+2^n-a(n-1)` -/
def P14133489652661557704.Spec : Prop :=
  ∀ n, P14133489652661557704.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P1037055022377303471

`a(n-1)+a(n-2)+floor(a(n-2))` with `a(0)=0, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A092297.P1037055022377303471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A092297.P1037055022377303471

namespace A092297

/-- `a(n-1)+a(n-2)+floor(a(n-2))` -/
def P1037055022377303471.Spec : Prop :=
  ∀ n, (P1037055022377303471.a n : ℤ) = A092297 (n + 1)

end A092297

/-! ## A092297.P13355751897381245129

`a(n-1)-(a(n-2)-3*a(n-2))` with `a(0)=0, a(1)=6`
-/

namespace A092297.P13355751897381245129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  a (n - 1) - (a (n - 2) - 3 * a (n - 2))

end

end A092297.P13355751897381245129

namespace A092297

/-- `a(n-1)-(a(n-2)-3*a(n-2))` -/
def P13355751897381245129.Spec : Prop :=
  ∀ n, P13355751897381245129.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P599705152145336887

`A269019(n+1)+1`
-/

namespace A092297.P599705152145336887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269019 (n + 1) + 1

end

end A092297.P599705152145336887

namespace A092297

/-- `A269019(n+1)+1` -/
def P599705152145336887.Spec : Prop :=
  ∀ n, P599705152145336887.a n = A092297 (n + 1)

theorem P599705152145336887.correct : P599705152145336887.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092297, Nat.add_sub_cancel, A092297.P599705152145336887.a, A092297.P1715959916199650785.a, A269019, A269019.P9311159951334276451.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A092297, Nat.add_sub_cancel, A092297.P599705152145336887.a, A092297.P1715959916199650785.a, A269019, A269019.P9311159951334276451.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A092297

/-! ## A092297.P8002003458609459111

`A135440(n)+2^n`
-/

namespace A092297.P8002003458609459111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135440 n + (2 ^ n : ℤ)

end

end A092297.P8002003458609459111

namespace A092297

/-- `A135440(n)+2^n` -/
def P8002003458609459111.Spec : Prop :=
  ∀ n, P8002003458609459111.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P7378040161687826430

`abs(Δ[A077925(n)]+2)`
-/

namespace A092297.P7378040161687826430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A092297.P7378040161687826430

namespace A092297

/-- `abs(Δ[A077925(n)]+2)` -/
def P7378040161687826430.Spec : Prop :=
  ∀ n, P7378040161687826430.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P9606639197090056686

`abs(A122803(n+1)+2)`
-/

namespace A092297.P9606639197090056686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122803 (n + 1) + 2|

end

end A092297.P9606639197090056686

namespace A092297

/-- `abs(A122803(n+1)+2)` -/
def P9606639197090056686.Spec : Prop :=
  ∀ n, P9606639197090056686.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P888624402321964133

`abs(Δ[A084247(n+1)]+2)`
-/

namespace A092297.P888624402321964133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A092297.P888624402321964133

namespace A092297

/-- `abs(Δ[A084247(n+1)]+2)` -/
def P888624402321964133.Spec : Prop :=
  ∀ n, P888624402321964133.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P10854480258359846951

`abs(2-Δ[A140966(n+1)])`
-/

namespace A092297.P10854480258359846951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A092297.P10854480258359846951

namespace A092297

/-- `abs(2-Δ[A140966(n+1)])` -/
def P10854480258359846951.Spec : Prop :=
  ∀ n, P10854480258359846951.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P9188696226354972186

`abs(2-Δ[A171501(n+1)])`
-/

namespace A092297.P9188696226354972186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (n + 1) - f1 n)|

end

end A092297.P9188696226354972186

namespace A092297

/-- `abs(2-Δ[A171501(n+1)])` -/
def P9188696226354972186.Spec : Prop :=
  ∀ n, P9188696226354972186.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P3282267181483952158

`abs(Δ[A077953(2*n)]+2)`
-/

namespace A092297.P3282267181483952158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 2|

end

end A092297.P3282267181483952158

namespace A092297

/-- `abs(Δ[A077953(2*n)]+2)` -/
def P3282267181483952158.Spec : Prop :=
  ∀ n, P3282267181483952158.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P1375752174979277764

`A082505(n)+a(n-2)` with `a(0)=0, a(1)=6`
-/

namespace A092297.P1375752174979277764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  A082505 n + a (n - 2)

end

end A092297.P1375752174979277764

namespace A092297

/-- `A082505(n)+a(n-2)` -/
def P1375752174979277764.Spec : Prop :=
  ∀ n, P1375752174979277764.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P9314022830712341681

`A101622(n)+A010676(n)`
-/

namespace A092297.P9314022830712341681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n + A010676 n

end

end A092297.P9314022830712341681

namespace A092297

/-- `A101622(n)+A010676(n)` -/
def P9314022830712341681.Spec : Prop :=
  ∀ n, P9314022830712341681.a n = A092297 (n + 1)

end A092297

/-! ## A092297.P912248150654447564

`A062510(n)+A062510(n)`
-/

namespace A092297.P912248150654447564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n + A062510 n

end

end A092297.P912248150654447564

namespace A092297

/-- `A062510(n)+A062510(n)` -/
def P912248150654447564.Spec : Prop :=
  ∀ n, P912248150654447564.a n = A092297 (n + 1)

theorem P912248150654447564.correct : P912248150654447564.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092297, Nat.add_sub_cancel, A092297.P912248150654447564.a, A092297.P1715959916199650785.a, A062510, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A092297, Nat.add_sub_cancel, A092297.P912248150654447564.a, A092297.P1715959916199650785.a, A062510, A062510.P5158205566425357391.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A092297

/-!
# A092298: Number of partitions of the n-th prime into integers <= n.

The programs for A092298, there is no canonical definition to state claims against.
-/

/-! ## A092298.P12028855822936411018

`A026820(A072205(n+1)+n)`
-/

namespace A092298.P12028855822936411018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A072205 (n + 1) + (n : ℤ)).toNat

end

end A092298.P12028855822936411018

/-! ## A092298.P14057160267825140631

`A026820(n+1+A008837(n+1))`
-/

namespace A092298.P14057160267825140631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 ((n + 1 : ℤ) + A008837 (n + 1)).toNat

end

end A092298.P14057160267825140631

