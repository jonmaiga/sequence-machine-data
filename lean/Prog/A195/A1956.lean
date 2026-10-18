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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A195602: Primes written with prime number of Roman numerals.

The programs for A195602, there is no canonical definition to state claims against.
-/

/-! ## A195602.P1943445680959892973

`p?[(n+1)*A001222(A006968(n+1))]`
-/

namespace A195602.P1943445680959892973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A006968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P1943445680959892973

/-! ## A195602.P15164674809380824917

`p?[A000027(n+1)*A003415(A006968(n+1))]`
-/

namespace A195602.P15164674809380824917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A003415 (A006968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P15164674809380824917

/-! ## A195602.P17253974398681805643

`p?[A003415(A006968(n+1))*A094759(n+1)]`
-/

namespace A195602.P17253974398681805643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006968 (n + 1)).toNat * A094759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P17253974398681805643

/-! ## A195602.P687987101482238162

`p?[A018783(A006968(n+1))*A250246(n+1)]`
-/

namespace A195602.P687987101482238162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A006968 (n + 1)).toNat * A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P687987101482238162

/-! ## A195602.P3595990750080549169

`p?[A003415(A006968(n+1))*A266646(n+1)]`
-/

namespace A195602.P3595990750080549169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006968 (n + 1)).toNat * A266646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P3595990750080549169

/-! ## A195602.P210961676751850738

`p?[A061397(n+1)*A336851(A006968(n+1))]`
-/

namespace A195602.P210961676751850738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) * A336851 (A006968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P210961676751850738

/-! ## A195602.P3365067069590118343

`p?[A003415(A006968(n+1))*A008619(2*n)]`
-/

namespace A195602.P3365067069590118343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006968 (n + 1)).toNat * A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P3365067069590118343

/-! ## A195602.P10849186024224715071

`p?[A003415(A006968(n+1))*A008611(3*n)]`
-/

namespace A195602.P10849186024224715071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A006968 (n + 1)).toNat * A008611 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A195602.P10849186024224715071

/-!
# A195603: Numerator of floor(Pi*10^n)/10^n.

The programs for A195603, the canonical program `A195603.P9917894924404432145` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195603 has offset 0).

The definition of A195603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195603.P9917894924404432145

`A011545(n)/gcd(A011545(n), A011557(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195603

/-- `A011545(n)/gcd(A011545(n), A011557(n))` -/
def P9917894924404432145.Spec : Prop :=
  ∀ n, P9917894924404432145.a n = (A195603 n : ℚ)

end A195603

/-! ## A195603.P4962307671271236816

`A000027(A011545(n))/A323206(2*n)`
-/

namespace A195603.P4962307671271236816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A011545 n).toNat : ℚ) / (A323206 (2 * n) : ℚ)

end

end A195603.P4962307671271236816

namespace A195603

/-- `A000027(A011545(n))/A323206(2*n)` -/
def P4962307671271236816.Spec : Prop :=
  ∀ n, P4962307671271236816.a n = (A195603 n : ℚ)

end A195603

/-!
# A195604: Numerator of floor(e*10^n)/10^n, where e = exp(1) = A001113.

The programs for A195604, the canonical program `A195604.P16326018069930801950` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195604 has offset 0).

The definition of A195604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195604.P16326018069930801950

`A011543(n)/gcd(A011543(n), A011557(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195604

/-- `A011543(n)/gcd(A011543(n), A011557(n))` -/
def P16326018069930801950.Spec : Prop :=
  ∀ n, P16326018069930801950.a n = (A195604 n : ℚ)

end A195604

/-! ## A195604.P5743426274942974990

`A011543(n)/A088863(A261235(n))`
-/

namespace A195604.P5743426274942974990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011543 n : ℚ) / (A088863 (A261235 n).toNat : ℚ)

end

end A195604.P5743426274942974990

namespace A195604

/-- `A011543(n)/A088863(A261235(n))` -/
def P5743426274942974990.Spec : Prop :=
  ∀ n, P5743426274942974990.a n = (A195604 n : ℚ)

end A195604

/-!
# A195605: a(n) = (4*n*(n+2)+(-1)^n+1)/2 + 1.

The programs for A195605, the canonical program `A195605.P1051201154411484577` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195605 has offset 0).

The definition of A195605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195605.P11411656676224519305

`(4*n*(n+2)+(-1)^n+3)/2`
-/

namespace A195605.P11411656676224519305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n * (n + 2)) : ℤ) + (-1) ^ n + 3 : ℚ) / 2

end

end A195605.P11411656676224519305

namespace A195605

/-- `(4*n*(n+2)+(-1)^n+3)/2` -/
def P11411656676224519305.Spec : Prop :=
  ∀ n, P11411656676224519305.a n = (A195605 n : ℚ)

end A195605

/-! ## A195605.P949181943944825809

`(4*n*(n+2)+(-1)^n+1)/2+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A195605.P949181943944825809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * (n * (n + 2)) : ℤ) + (-1) ^ n + 1 : ℚ) / 2 + 1

end

end A195605.P949181943944825809

namespace A195605

/-- `(4*n*(n+2)+(-1)^n+1)/2+1` -/
def P949181943944825809.Spec : Prop :=
  ∀ n, P949181943944825809.a n = (A195605 n : ℚ)

end A195605

/-! ## A195605.P1051201154411484577

`A047524(A000982(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195605

/-- `A047524(A000982(n+1))` -/
def P1051201154411484577.Spec : Prop :=
  ∀ n, P1051201154411484577.a n = A195605 n

theorem P1051201154411484577.correct : P1051201154411484577.Spec := by
  intro n
  simp only [A195605]

end A195605

/-! ## A195605.P446478234659941689

`∑[a(n-2)+8]` with `a(0)=2, a(1)=5, a(2)=11`
-/

namespace A195605.P446478234659941689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 11] fun n f1 =>
  f1 (n - 2) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195605.P446478234659941689

namespace A195605

/-- `∑[a(n-2)+8]` -/
def P446478234659941689.Spec : Prop :=
  ∀ n, (P446478234659941689.a n : ℤ) = A195605 n

end A195605

/-! ## A195605.P9829314607748575768

`∑[∑[8-a(n-1)]]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A195605.P9829314607748575768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 6] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195605.P9829314607748575768

namespace A195605

/-- `∑[∑[8-a(n-1)]]` -/
def P9829314607748575768.Spec : Prop :=
  ∀ n, P9829314607748575768.a n = A195605 n

end A195605

/-! ## A195605.P18054121323401086817

`record[(2*n-3)²-a(n-1)]` with `a(0)=2`
-/

namespace A195605.P18054121323401086817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((2 * n : ℤ) - 3) ^ 2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195605.P18054121323401086817

namespace A195605

/-- `record[(2*n-3)²-a(n-1)]` -/
def P18054121323401086817.Spec : Prop :=
  ∀ n, P18054121323401086817.a n = A195605 n

end A195605

/-! ## A195605.P12169160814411225137

`abs((n+1+n)²-a(n-1))` with `a(0)=2`
-/

namespace A195605.P12169160814411225137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  |((n + 1 + n) ^ 2 : ℤ) - a (n - 1)|

end

end A195605.P12169160814411225137

namespace A195605

/-- `abs((n+1+n)²-a(n-1))` -/
def P12169160814411225137.Spec : Prop :=
  ∀ n, P12169160814411225137.a n = A195605 n

end A195605

/-! ## A195605.P15084263571333085782

`floor((n+1+n)²-a(n-1))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A195605.P15084263571333085782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 1 + n) ^ 2 : ℤ) - a (n - 1)

end

end A195605.P15084263571333085782

namespace A195605

/-- `floor((n+1+n)²-a(n-1))` -/
def P15084263571333085782.Spec : Prop :=
  ∀ n, P15084263571333085782.a n = A195605 n

end A195605

/-!
# A195607: Numerator of floor(Phi*10^n)/10^n, where phi = (sqrt(5) + 1)/2 = A001622 is the Golden Ratio.

The programs for A195607, there is no canonical definition to state claims against.
-/

/-! ## A195607.P16954188421507902716

`A000201(A099377(∏[∑{p}[n+1, #²]+1]))`
-/

namespace A195607.P16954188421507902716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A099377 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A195607.P16954188421507902716

/-!
# A195608: Numbers n such that Sum_{i=1..n} A(i) = A(n)*A(n+1)/4, where A(n) = A001969(n).

The programs for A195608, the canonical program `A195608.P1474095549682633673` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195608 has offset 1).

The definition of A195608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195608.P1474095549682633673

`record[(n+1)*A228495(A228495(n)+1+n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A195608

/-- `record[(n+1)*A228495(A228495(n)+1+n)]` -/
def P1474095549682633673.Spec : Prop :=
  ∀ n, P1474095549682633673.a n = A195608 (n + 1)

theorem P1474095549682633673.correct : P1474095549682633673.Spec := by
  intro n
  simp only [A195608, Nat.add_sub_cancel]

end A195608

/-! ## A195608.P18349820782271073127

`filter[A006364(n+2), A035263(#)]`
-/

namespace A195608.P18349820782271073127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006364 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A195608.P18349820782271073127

namespace A195608

/-- `filter[A006364(n+2), A035263(#)]` -/
def P18349820782271073127.Spec : Prop :=
  ∀ n, P18349820782271073127.a n = A195608 (n + 1)

end A195608

/-! ## A195608.P18239000800035886707

`eq[1, A019428(A277822(n)+n)]`
-/

namespace A195608.P18239000800035886707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A277822 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195608.P18239000800035886707

namespace A195608

/-- `eq[1, A019428(A277822(n)+n)]` -/
def P18239000800035886707.Spec : Prop :=
  ∀ n, (P18239000800035886707.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P12663542422153608581

`∩[A003159(n+1), A006364(n+1)]`
-/

namespace A195608.P12663542422153608581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195608.P12663542422153608581

namespace A195608

/-- `∩[A003159(n+1), A006364(n+1)]` -/
def P12663542422153608581.Spec : Prop :=
  ∀ n, (P12663542422153608581.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P6003549449994981274

`∩[A006364(n+1), A053661(n+1)]`
-/

namespace A195608.P6003549449994981274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195608.P6003549449994981274

namespace A195608

/-- `∩[A006364(n+1), A053661(n+1)]` -/
def P6003549449994981274.Spec : Prop :=
  ∀ n, (P6003549449994981274.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P3395320362451645529

`A159966(A091785(n+1))`
-/

namespace A195608.P3395320362451645529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A091785 (n + 1)).toNat

end

end A195608.P3395320362451645529

namespace A195608

/-- `A159966(A091785(n+1))` -/
def P3395320362451645529.Spec : Prop :=
  ∀ n, P3395320362451645529.a n = A195608 (n + 1)

end A195608

/-! ## A195608.P2837539341870210099

`eq[A010673(n), A316826(n)]`
-/

namespace A195608.P2837539341870210099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195608.P2837539341870210099

namespace A195608

/-- `eq[A010673(n), A316826(n)]` -/
def P2837539341870210099.Spec : Prop :=
  ∀ n, (P2837539341870210099.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P16822750246427093801

`eq[A010673(n), A317189(n)]`
-/

namespace A195608.P16822750246427093801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195608.P16822750246427093801

namespace A195608

/-- `eq[A010673(n), A317189(n)]` -/
def P16822750246427093801.Spec : Prop :=
  ∀ n, (P16822750246427093801.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P7056080132261473192

`filter[A003159(n+1), A179020(#)]`
-/

namespace A195608.P7056080132261473192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179020 (f1 j).toNat = 1) n)

end

end A195608.P7056080132261473192

namespace A195608

/-- `filter[A003159(n+1), A179020(#)]` -/
def P7056080132261473192.Spec : Prop :=
  ∀ n, P7056080132261473192.a n = A195608 (n + 1)

end A195608

/-! ## A195608.P10616473958811835992

`filter[A053661(n+1), A179020(#)]`
-/

namespace A195608.P10616473958811835992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179020 (f1 j).toNat = 1) n)

end

end A195608.P10616473958811835992

namespace A195608

/-- `filter[A053661(n+1), A179020(#)]` -/
def P10616473958811835992.Spec : Prop :=
  ∀ n, P10616473958811835992.a n = A195608 (n + 1)

end A195608

/-! ## A195608.P4347641726773441051

`eq[2, A316826(n)+A176742(n)]`
-/

namespace A195608.P4347641726773441051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n + A176742 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195608.P4347641726773441051

namespace A195608

/-- `eq[2, A316826(n)+A176742(n)]` -/
def P4347641726773441051.Spec : Prop :=
  ∀ n, (P4347641726773441051.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P1008864984730560796

`eq[2*A316826(n), A316828(n)²]`
-/

namespace A195608.P1008864984730560796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195608.P1008864984730560796

namespace A195608

/-- `eq[2*A316826(n), A316828(n)²]` -/
def P1008864984730560796.Spec : Prop :=
  ∀ n, (P1008864984730560796.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P8808924364459591582

`eq[A010059(n), A076826(n+1)]+1`
-/

namespace A195608.P8808924364459591582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A195608.P8808924364459591582

namespace A195608

/-- `eq[A010059(n), A076826(n+1)]+1` -/
def P8808924364459591582.Spec : Prop :=
  ∀ n, (P8808924364459591582.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P6185887960787480506

`eq[A254655(n+2), A268676(n)]+1`
-/

namespace A195608.P6185887960787480506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A195608.P6185887960787480506

namespace A195608

/-- `eq[A254655(n+2), A268676(n)]+1` -/
def P6185887960787480506.Spec : Prop :=
  ∀ n, (P6185887960787480506.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P3481026305882045655

`eq[2, A005680(n+1)*A134451(n)]`
-/

namespace A195608.P3481026305882045655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (n + 1) * A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195608.P3481026305882045655

namespace A195608

/-- `eq[2, A005680(n+1)*A134451(n)]` -/
def P3481026305882045655.Spec : Prop :=
  ∀ n, (P3481026305882045655.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P2639608499923474938

`eq[A316826(n), A316828(xor(n, 2*n))]`
-/

namespace A195608.P2639608499923474938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195608.P2639608499923474938

namespace A195608

/-- `eq[A316826(n), A316828(xor(n, 2*n))]` -/
def P2639608499923474938.Spec : Prop :=
  ∀ n, (P2639608499923474938.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P15827608040939840398

`eq[1-A010060(n), A076826(n+1)]+1`
-/

namespace A195608.P15827608040939840398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A195608.P15827608040939840398

namespace A195608

/-- `eq[1-A010060(n), A076826(n+1)]+1` -/
def P15827608040939840398.Spec : Prop :=
  ∀ n, (P15827608040939840398.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P14473019239389834351

`eq[2, A005680(n+1)*A126241(n+1)]`
-/

namespace A195608.P14473019239389834351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (n + 1) * A126241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195608.P14473019239389834351

namespace A195608

/-- `eq[2, A005680(n+1)*A126241(n+1)]` -/
def P14473019239389834351.Spec : Prop :=
  ∀ n, (P14473019239389834351.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P10631241546614151669

`eq[A076826(n+1), A228495(2*n+1)]+1`
-/

namespace A195608.P10631241546614151669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A195608.P10631241546614151669

namespace A195608

/-- `eq[A076826(n+1), A228495(2*n+1)]+1` -/
def P10631241546614151669.Spec : Prop :=
  ∀ n, (P10631241546614151669.a n : ℤ) = A195608 (n + 1)

end A195608

/-! ## A195608.P9518443933740228103

`lt[A284948(n+1), A010059(A245710(n))]`
-/

namespace A195608.P9518443933740228103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A245710 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A195608.P9518443933740228103

namespace A195608

/-- `lt[A284948(n+1), A010059(A245710(n))]` -/
def P9518443933740228103.Spec : Prop :=
  ∀ n, (P9518443933740228103.a n : ℤ) = A195608 (n + 1)

end A195608

/-!
# A195609: Numbers n such that Sum_{i=1..n} A(i) = A(n)*A(n+1)/4, where A(n) = A000069(n).

The programs for A195609, the canonical program `A195609.P9577754204178047134` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195609 has offset 1).

The definition of A195609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5461 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195609.P9577754204178047134

`eq[1, A134451(A268726(n)+n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A195609

/-- `eq[1, A134451(A268726(n)+n)]` -/
def P9577754204178047134.Spec : Prop :=
  ∀ n, (P9577754204178047134.a n : ℤ) = A195609 (n + 1)

theorem P9577754204178047134.correct : P9577754204178047134.Spec := by
  intro n
  simp only [A195609, Nat.add_sub_cancel]

end A195609

/-! ## A195609.P8067922988256847396

`eq[1, A134451(n-A268726(n))]`
-/

namespace A195609.P8067922988256847396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 ((n : ℤ) - A268726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P8067922988256847396

namespace A195609

/-- `eq[1, A134451(n-A268726(n))]` -/
def P8067922988256847396.Spec : Prop :=
  ∀ n, (P8067922988256847396.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P1176917203473675792

`eq[1, A010060(A115384(n))]+2`
-/

namespace A195609.P1176917203473675792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A115384 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A195609.P1176917203473675792

namespace A195609

/-- `eq[1, A010060(A115384(n))]+2` -/
def P1176917203473675792.Spec : Prop :=
  ∀ n, (P1176917203473675792.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P4430697232480603359

`eq[2-a(n-1), A316826(n)]` with `a(0)=2`
-/

namespace A195609.P4430697232480603359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  2 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P4430697232480603359

namespace A195609

/-- `eq[2-a(n-1), A316826(n)]` -/
def P4430697232480603359.Spec : Prop :=
  ∀ n, (P4430697232480603359.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P14847823846974894480

`eq[2-a(and(n, n-2)), A292118(n)]` with `a(0)=4, a(1)=0, a(2)=1`
-/

namespace A195609.P14847823846974894480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 1] fun n f1 =>
  2 - f1 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292118 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P14847823846974894480

namespace A195609

/-- `eq[2-a(and(n, n-2)), A292118(n)]` -/
def P14847823846974894480.Spec : Prop :=
  ∀ n, (P14847823846974894480.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P6878416324168876033

`A159966(A091855(n+1))`
-/

namespace A195609.P6878416324168876033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A091855 (n + 1)).toNat

end

end A195609.P6878416324168876033

namespace A195609

/-- `A159966(A091855(n+1))` -/
def P6878416324168876033.Spec : Prop :=
  ∀ n, P6878416324168876033.a n = A195609 (n + 1)

end A195609

/-! ## A195609.P10459241269127142279

`lt[A010059(A245710(n)), 1]`
-/

namespace A195609.P10459241269127142279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A245710 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195609.P10459241269127142279

namespace A195609

/-- `lt[A010059(A245710(n)), 1]` -/
def P10459241269127142279.Spec : Prop :=
  ∀ n, (P10459241269127142279.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P7339849620879245327

`eq[1, A010060(n-A115384(n))]`
-/

namespace A195609.P7339849620879245327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((n : ℤ) - A115384 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P7339849620879245327

namespace A195609

/-- `eq[1, A010060(n-A115384(n))]` -/
def P7339849620879245327.Spec : Prop :=
  ∀ n, (P7339849620879245327.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P10995409858816091341

`eq[1, A000035(n-A268726(n))]`
-/

namespace A195609.P10995409858816091341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) - A268726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P10995409858816091341

namespace A195609

/-- `eq[1, A000035(n-A268726(n))]` -/
def P10995409858816091341.Spec : Prop :=
  ∀ n, (P10995409858816091341.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P893616399771524633

`eq[2, A001285(n-A115384(n))]`
-/

namespace A195609.P893616399771524633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 ((n : ℤ) - A115384 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P893616399771524633

namespace A195609

/-- `eq[2, A001285(n-A115384(n))]` -/
def P893616399771524633.Spec : Prop :=
  ∀ n, (P893616399771524633.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P4938877287486930813

`eq[(2*A316828(n))%3, A316826(n)!]`
-/

namespace A195609.P4938877287486930813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A316828 n) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A316826 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A195609.P4938877287486930813

namespace A195609

/-- `eq[(2*A316828(n))%3, A316826(n)!]` -/
def P4938877287486930813.Spec : Prop :=
  ∀ n, (P4938877287486930813.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P10282205342790928610

`eq[A056594(n), A101671(n)]`
-/

namespace A195609.P10282205342790928610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P10282205342790928610

namespace A195609

/-- `eq[A056594(n), A101671(n)]` -/
def P10282205342790928610.Spec : Prop :=
  ∀ n, (P10282205342790928610.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P4062234653592904876

`eq[A059841(n), A101671(n)]`
-/

namespace A195609.P4062234653592904876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P4062234653592904876

namespace A195609

/-- `eq[A059841(n), A101671(n)]` -/
def P4062234653592904876.Spec : Prop :=
  ∀ n, (P4062234653592904876.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P7467309686688819083

`eq[A095190(n), A127254(n)]`
-/

namespace A195609.P7467309686688819083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P7467309686688819083

namespace A195609

/-- `eq[A095190(n), A127254(n)]` -/
def P7467309686688819083.Spec : Prop :=
  ∀ n, (P7467309686688819083.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P13093406492728954302

`eq[A101671(n), A267043(n)]`
-/

namespace A195609.P13093406492728954302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P13093406492728954302

namespace A195609

/-- `eq[A101671(n), A267043(n)]` -/
def P13093406492728954302.Spec : Prop :=
  ∀ n, (P13093406492728954302.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P14696598144424224648

`eq[A176742(n), A316826(n)]`
-/

namespace A195609.P14696598144424224648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P14696598144424224648

namespace A195609

/-- `eq[A176742(n), A316826(n)]` -/
def P14696598144424224648.Spec : Prop :=
  ∀ n, (P14696598144424224648.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P16015118221882332722

`filter[A003159(n+1), A095190(#)]`
-/

namespace A195609.P16015118221882332722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095190 (f1 j).toNat = 1) n)

end

end A195609.P16015118221882332722

namespace A195609

/-- `filter[A003159(n+1), A095190(#)]` -/
def P16015118221882332722.Spec : Prop :=
  ∀ n, P16015118221882332722.a n = A195609 (n + 1)

end A195609

/-! ## A195609.P8511906637479230907

`eq[A005680(n+1), A076826(n)]`
-/

namespace A195609.P8511906637479230907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P8511906637479230907

namespace A195609

/-- `eq[A005680(n+1), A076826(n)]` -/
def P8511906637479230907.Spec : Prop :=
  ∀ n, (P8511906637479230907.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P6589012268142956571

`eq[1, A101671(n)+A000035(n)]`
-/

namespace A195609.P6589012268142956571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n + A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195609.P6589012268142956571

namespace A195609

/-- `eq[1, A101671(n)+A000035(n)]` -/
def P6589012268142956571.Spec : Prop :=
  ∀ n, (P6589012268142956571.a n : ℤ) = A195609 (n + 1)

end A195609

/-! ## A195609.P927013900016321720

`eq[A005680(n+1), A134451(n)]`
-/

namespace A195609.P927013900016321720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A195609.P927013900016321720

namespace A195609

/-- `eq[A005680(n+1), A134451(n)]` -/
def P927013900016321720.Spec : Prop :=
  ∀ n, (P927013900016321720.a n : ℤ) = A195609 (n + 1)

end A195609

/-!
# A195610: Smallest k such that A014657(n) divides 2^k + 1.

The programs for A195610, there is no canonical definition to state claims against.
-/

/-! ## A195610.P13063829919929302740

`A119513(A014657(n+1))`
-/

namespace A195610.P13063829919929302740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119513 (A014657 (n + 1)).toNat

end

end A195610.P13063829919929302740

/-! ## A195610.P13126346482475978941

`A007735(A014657(n+1))%A000041(n)`
-/

namespace A195610.P13126346482475978941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007735 (A014657 (n + 1)).toNat) (A000041 n)

end

end A195610.P13126346482475978941

/-! ## A195610.P5954077604610838046

`A054705(A014657(n+1))%A000124(n)`
-/

namespace A195610.P5954077604610838046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054705 (A014657 (n + 1)).toNat) (A000124 n)

end

end A195610.P5954077604610838046

/-! ## A195610.P1289129136375230271

`A007735(A014657(n+1))-char[A151722(n)]`
-/

namespace A195610.P1289129136375230271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A014657 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A195610.P1289129136375230271

/-! ## A195610.P7358256068055752692

`A007733(A014657(n+1))/2*A157928(n)`
-/

namespace A195610.P7358256068055752692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007733 (A014657 (n + 1)).toNat : ℚ) / 2 * (A157928 n : ℚ)

end

end A195610.P7358256068055752692

/-! ## A195610.P7131814544887144100

`A054705(A014657(n+1))*A057979(A060632(n))`
-/

namespace A195610.P7131814544887144100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (A014657 (n + 1)).toNat * A057979 (A060632 n).toNat

end

end A195610.P7131814544887144100

/-! ## A195610.P10147121509375106368

`A007735(A014657(n+1))-A036987(n²)`
-/

namespace A195610.P10147121509375106368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A014657 (n + 1)).toNat - A036987 (n ^ 2)

end

end A195610.P10147121509375106368

/-!
# A195613: Numbers n with property that n, 2n-1 and 2n+1 are composite.

The programs for A195613, there is no canonical definition to state claims against.
-/

/-! ## A195613.P16578960054425602286

`lt[3, A330241(2*(n+1))]`
-/

namespace A195613.P16578960054425602286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330241 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A195613.P16578960054425602286

/-! ## A195613.P17315037493483126051

`lt[A093074(2*(n+1)), n]+1`
-/

namespace A195613.P17315037493483126051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A195613.P17315037493483126051

/-! ## A195613.P5257906107741955848

`lt[A093074(A004277(n)), n]`
-/

namespace A195613.P5257906107741955848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195613.P5257906107741955848

/-! ## A195613.P8820030748665785003

`lt[A093074(A057543(n)), n]`
-/

namespace A195613.P8820030748665785003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A057543 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195613.P8820030748665785003

/-! ## A195613.P8192998229908955567

`record[A005451(A104278(n+3))]`
-/

namespace A195613.P8192998229908955567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A104278 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195613.P8192998229908955567

/-! ## A195613.P14912829650144101333

`filter[A104278(n+1), A005171(#)]`
-/

namespace A195613.P14912829650144101333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A195613.P14912829650144101333

/-! ## A195613.P18064539451237170707

`filter[A104278(n+1), A066247(#)]`
-/

namespace A195613.P18064539451237170707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A195613.P18064539451237170707

/-! ## A195613.P2812948439647445941

`lt[A093074(A004275(n+1)), n]`
-/

namespace A195613.P2812948439647445941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A004275 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195613.P2812948439647445941

/-! ## A195613.P1725593951638349079

`lt[A093074(A028310(2*n)), n]`
-/

namespace A195613.P1725593951638349079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A028310 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195613.P1725593951638349079

/-! ## A195613.P8909826977518190757

`lt[A093074(A028310(n)+n), n]`
-/

namespace A195613.P8909826977518190757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A028310 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A195613.P8909826977518190757

/-!
# A195614: Denominators a(n) of Pythagorean approximations b(n)/a(n) to 2.

The programs for A195614, the canonical program `A195614.P7821756319866621661` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195614 has offset 1).

The definition of A195614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195614.P7821756319866621661

`A014445(n+1)*A014445(n+2)/2`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195614

/-- `A014445(n+1)*A014445(n+2)/2` -/
def P7821756319866621661.Spec : Prop :=
  ∀ n, P7821756319866621661.a n = (A195614 (n + 1) : ℚ)

end A195614

/-! ## A195614.P12744466726289601256

`2*A156084(n+1)`
-/

namespace A195614.P12744466726289601256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156084 (n + 1)

end

end A195614.P12744466726289601256

namespace A195614

/-- `2*A156084(n+1)` -/
def P12744466726289601256.Spec : Prop :=
  ∀ n, P12744466726289601256.a n = A195614 (n + 1)

end A195614

/-! ## A195614.P5498193200494882984

`8*A156085(n+1)`
-/

namespace A195614.P5498193200494882984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A156085 (n + 1)

end

end A195614.P5498193200494882984

namespace A195614

/-- `8*A156085(n+1)` -/
def P5498193200494882984.Spec : Prop :=
  ∀ n, P5498193200494882984.a n = A195614 (n + 1)

end A195614

/-! ## A195614.P8303528646009673753

`∑[2*A014729(n+1)]`
-/

namespace A195614.P8303528646009673753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195614.P8303528646009673753

namespace A195614

/-- `∑[2*A014729(n+1)]` -/
def P8303528646009673753.Spec : Prop :=
  ∀ n, P8303528646009673753.a n = A195614 (n + 1)

end A195614

/-! ## A195614.P8103991584457461603

`∑[A175395(3*(n+1))]`
-/

namespace A195614.P8103991584457461603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195614.P8103991584457461603

namespace A195614

/-- `∑[A175395(3*(n+1))]` -/
def P8103991584457461603.Spec : Prop :=
  ∀ n, P8103991584457461603.a n = A195614 (n + 1)

end A195614

/-! ## A195614.P6777118425288734272

`∑[2*A014445(n+1)²]`
-/

namespace A195614.P6777118425288734272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014445 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195614.P6777118425288734272

namespace A195614

/-- `∑[2*A014445(n+1)²]` -/
def P6777118425288734272.Spec : Prop :=
  ∀ n, P6777118425288734272.a n = A195614 (n + 1)

end A195614

/-! ## A195614.P7145090522863226598

`∑[2*A000045(3*(n+1))²]`
-/

namespace A195614.P7145090522863226598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (3 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195614.P7145090522863226598

namespace A195614

/-- `∑[2*A000045(3*(n+1))²]` -/
def P7145090522863226598.Spec : Prop :=
  ∀ n, P7145090522863226598.a n = A195614 (n + 1)

end A195614

/-! ## A195614.P17741968391255132667

`A000045(6*(n+1))-a(n-1)` with `a(0)=8`
-/

namespace A195614.P17741968391255132667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A000045 (6 * (n + 1)) - a (n - 1)

end

end A195614.P17741968391255132667

namespace A195614

/-- `A000045(6*(n+1))-a(n-1)` -/
def P17741968391255132667.Spec : Prop :=
  ∀ n, P17741968391255132667.a n = A195614 (n + 1)

end A195614

/-! ## A195614.P6102432897784946090

`A153315(n+1)*A153315(n)`
-/

namespace A195614.P6102432897784946090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153315 (n + 1) * A153315 n

end

end A195614.P6102432897784946090

namespace A195614

/-- `A153315(n+1)*A153315(n)` -/
def P6102432897784946090.Spec : Prop :=
  ∀ n, P6102432897784946090.a n = A195614 (n + 1)

end A195614

/-!
# A195615: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 2.

The programs for A195615, the canonical program `A195615.P7592993155874647882` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195615 has offset 1).

The definition of A195615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195615.P7592993155874647882

`1/5*(4*A049629(n+1)+(-1)^(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195615

/-- `1/5*(4*A049629(n+1)+(-1)^(n+1))` -/
def P7592993155874647882.Spec : Prop :=
  ∀ n, P7592993155874647882.a n = (A195615 (n + 1) : ℚ)

end A195615

/-! ## A195615.P5563704891969727925

`Δ[Δ[A156085(n)]]`
-/

namespace A195615.P5563704891969727925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195615.P5563704891969727925

namespace A195615

/-- `Δ[Δ[A156085(n)]]` -/
def P5563704891969727925.Spec : Prop :=
  ∀ n, P5563704891969727925.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P1963486316988458902

`Δ[A099279(n+1)]`
-/

namespace A195615.P1963486316988458902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195615.P1963486316988458902

namespace A195615

/-- `Δ[A099279(n+1)]` -/
def P1963486316988458902.Spec : Prop :=
  ∀ n, P1963486316988458902.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P16315824385668017870

`Δ[∑[A033887(n)]²]`
-/

namespace A195615.P16315824385668017870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195615.P16315824385668017870

namespace A195615

/-- `Δ[∑[A033887(n)]²]` -/
def P16315824385668017870.Spec : Prop :=
  ∀ n, P16315824385668017870.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P15981325946872235751

`Δ[∑[A099843(n)]²]`
-/

namespace A195615.P15981325946872235751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195615.P15981325946872235751

namespace A195615

/-- `Δ[∑[A099843(n)]²]` -/
def P15981325946872235751.Spec : Prop :=
  ∀ n, P15981325946872235751.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P18318063186148692424

`Δ[Δ[A049652(n)]²]`
-/

namespace A195615.P18318063186148692424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195615.P18318063186148692424

namespace A195615

/-- `Δ[Δ[A049652(n)]²]` -/
def P18318063186148692424.Spec : Prop :=
  ∀ n, P18318063186148692424.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P877311444561672142

`record[Δ[A138268(n)²]]`
-/

namespace A195615.P877311444561672142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138268 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195615.P877311444561672142

namespace A195615

/-- `record[Δ[A138268(n)²]]` -/
def P877311444561672142.Spec : Prop :=
  ∀ n, P877311444561672142.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P16766091594730034183

`A114703(2*n+3)`
-/

namespace A195615.P16766091594730034183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114703 (2 * n + 3)

end

end A195615.P16766091594730034183

namespace A195615

/-- `A114703(2*n+3)` -/
def P16766091594730034183.Spec : Prop :=
  ∀ n, P16766091594730034183.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P7292928802094880139

`A001654(3*n+4)`
-/

namespace A195615.P7292928802094880139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (3 * n + 4)

end

end A195615.P7292928802094880139

namespace A195615

/-- `A001654(3*n+4)` -/
def P7292928802094880139.Spec : Prop :=
  ∀ n, P7292928802094880139.a n = A195615 (n + 1)

end A195615

/-! ## A195615.P15640952300118562588

`A070550(6*(n+1))`
-/

namespace A195615.P15640952300118562588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (6 * (n + 1))

end

end A195615.P15640952300118562588

namespace A195615

/-- `A070550(6*(n+1))` -/
def P15640952300118562588.Spec : Prop :=
  ∀ n, P15640952300118562588.a n = A195615 (n + 1)

end A195615

/-!
# A195616: Denominators of Pythagorean approximations to 3.

The programs for A195616, the canonical program `A195616.P4201674305914320878` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195616 has offset 1).

The definition of A195616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195616.P4201674305914320878

`(A085447(2*(n+1)+1)-6*(-1)^(n+1))/20`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195616

/-- `(A085447(2*(n+1)+1)-6*(-1)^(n+1))/20` -/
def P4201674305914320878.Spec : Prop :=
  ∀ n, P4201674305914320878.a n = (A195616 (n + 1) : ℚ)

end A195616

/-! ## A195616.P17978467849969513169

`round(A195617(n+1)/3)`
-/

namespace A195616.P17978467849969513169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195617 (n + 1) : ℚ) / 3)

end

end A195616.P17978467849969513169

namespace A195616

/-- `round(A195617(n+1)/3)` -/
def P17978467849969513169.Spec : Prop :=
  ∀ n, P17978467849969513169.a n = A195616 (n + 1)

end A195616

/-! ## A195616.P7507327288210851

`A195557(3*(n+1)+1)`
-/

namespace A195616.P7507327288210851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195557 (3 * (n + 1) + 1)

end

end A195616.P7507327288210851

namespace A195616

/-- `A195557(3*(n+1)+1)` -/
def P7507327288210851.Spec : Prop :=
  ∀ n, P7507327288210851.a n = A195616 (n + 1)

end A195616

/-! ## A195616.P17066884661009510782

`∑[3*A078469(n+1)²]`
-/

namespace A195616.P17066884661009510782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078469 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195616.P17066884661009510782

namespace A195616

/-- `∑[3*A078469(n+1)²]` -/
def P17066884661009510782.Spec : Prop :=
  ∀ n, P17066884661009510782.a n = A195616 (n + 1)

end A195616

/-! ## A195616.P647485400703779352

`A005668(n+1)*A078469(n+2)`
-/

namespace A195616.P647485400703779352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 1) * A078469 (n + 2)

end

end A195616.P647485400703779352

namespace A195616

/-- `A005668(n+1)*A078469(n+2)` -/
def P647485400703779352.Spec : Prop :=
  ∀ n, P647485400703779352.a n = A195616 (n + 1)

end A195616

/-! ## A195616.P10729501146756979335

`4*A041067(n+1)*A041067(n)`
-/

namespace A195616.P10729501146756979335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A041067 (n + 1) * A041067 n)

end

end A195616.P10729501146756979335

namespace A195616

/-- `4*A041067(n+1)*A041067(n)` -/
def P10729501146756979335.Spec : Prop :=
  ∀ n, P10729501146756979335.a n = A195616 (n + 1)

end A195616

/-! ## A195616.P9173326378404301519

`lcm(A078469(n+1), A078469(n+2))`
-/

namespace A195616.P9173326378404301519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A078469 (n + 1)) (A078469 (n + 2))

end

end A195616.P9173326378404301519

namespace A195616

/-- `lcm(A078469(n+1), A078469(n+2))` -/
def P9173326378404301519.Spec : Prop :=
  ∀ n, (P9173326378404301519.a n : ℤ) = A195616 (n + 1)

end A195616

/-!
# A195617: Numerators b(n) of Pythagorean approximations b(n)/a(n) to 3.

The programs for A195617, the canonical program `A195617.P14240144846517638029` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195617 has offset 1).

The definition of A195617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195617.P14240144846517638029

`(3*A085447(2*(n+1)+1)+2*(-1)^(n+1))/20`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195617

/-- `(3*A085447(2*(n+1)+1)+2*(-1)^(n+1))/20` -/
def P14240144846517638029.Spec : Prop :=
  ∀ n, P14240144846517638029.a n = (A195617 (n + 1) : ℚ)

end A195617

/-! ## A195617.P14474045700114020917

`Δ[A099366(n+1)]`
-/

namespace A195617.P14474045700114020917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099366 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195617.P14474045700114020917

namespace A195617

/-- `Δ[A099366(n+1)]` -/
def P14474045700114020917.Spec : Prop :=
  ∀ n, P14474045700114020917.a n = A195617 (n + 1)

end A195617

/-! ## A195617.P17073450753672764049

`Δ[A005668(n+1)²]`
-/

namespace A195617.P17073450753672764049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195617.P17073450753672764049

namespace A195617

/-- `Δ[A005668(n+1)²]` -/
def P17073450753672764049.Spec : Prop :=
  ∀ n, P17073450753672764049.a n = A195617 (n + 1)

end A195617

/-! ## A195617.P10668601372903115756

`A195556(3*(n+1)+1)`
-/

namespace A195617.P10668601372903115756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195556 (3 * (n + 1) + 1)

end

end A195617.P10668601372903115756

namespace A195617

/-- `A195556(3*(n+1)+1)` -/
def P10668601372903115756.Spec : Prop :=
  ∀ n, P10668601372903115756.a n = A195617 (n + 1)

end A195617

/-! ## A195617.P12131860404152453144

`Δ[(A078469(n+1)/2)²]`
-/

namespace A195617.P12131860404152453144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A078469 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195617.P12131860404152453144

namespace A195617

/-- `Δ[(A078469(n+1)/2)²]` -/
def P12131860404152453144.Spec : Prop :=
  ∀ n, P12131860404152453144.a n = (A195617 (n + 1) : ℚ)

end A195617

/-! ## A195617.P6516867115370876331

`Δ[A097315(n)-A099366(n)]`
-/

namespace A195617.P6516867115370876331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097315 n - A099366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195617.P6516867115370876331

namespace A195617

/-- `Δ[A097315(n)-A099366(n)]` -/
def P6516867115370876331.Spec : Prop :=
  ∀ n, P6516867115370876331.a n = A195617 (n + 1)

end A195617

/-! ## A195617.P8702735137431209039

`Δ[∑[A295334(A008486(n))]²]`
-/

namespace A195617.P8702735137431209039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A008486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195617.P8702735137431209039

namespace A195617

/-- `Δ[∑[A295334(A008486(n))]²]` -/
def P8702735137431209039.Spec : Prop :=
  ∀ n, P8702735137431209039.a n = A195617 (n + 1)

end A195617

/-! ## A195617.P5109191485121473352

`Δ[lcm(A041067(n), A041161(n))²]`
-/

namespace A195617.P5109191485121473352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041067 n) (A041161 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A195617.P5109191485121473352

namespace A195617

/-- `Δ[lcm(A041067(n), A041161(n))²]` -/
def P5109191485121473352.Spec : Prop :=
  ∀ n, P5109191485121473352.a n = A195617 (n + 1)

end A195617

/-! ## A195617.P9515114817427825437

`Δ[A041161(2*n)-A099366(n)]`
-/

namespace A195617.P9515114817427825437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041161 (2 * n) - A099366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195617.P9515114817427825437

namespace A195617

/-- `Δ[A041161(2*n)-A099366(n)]` -/
def P9515114817427825437.Spec : Prop :=
  ∀ n, P9515114817427825437.a n = A195617 (n + 1)

end A195617

/-! ## A195617.P16380931402301783085

`Δ[A041683(2*n)-A099366(n)]`
-/

namespace A195617.P16380931402301783085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041683 (2 * n) - A099366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195617.P16380931402301783085

namespace A195617

/-- `Δ[A041683(2*n)-A099366(n)]` -/
def P16380931402301783085.Spec : Prop :=
  ∀ n, P16380931402301783085.a n = A195617 (n + 1)

end A195617

/-!
# A195618: a(0) = 1; a(n) = A001208(n) + 1 for n > 0.

The programs for A195618, there is no canonical definition to state claims against.
-/

/-! ## A195618.P8030284241252840600

`∏{e}[A195264(n+1), A001208(n)+#]`
-/

namespace A195618.P8030284241252840600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001208 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A195618.P8030284241252840600

/-! ## A195618.P15916275899898168888

`A084192(A055998(n))+A057427(n)`
-/

namespace A195618.P15916275899898168888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (A055998 n).toNat + A057427 n

end

end A195618.P15916275899898168888

/-! ## A195618.P14811182414413924910

`A168046(n)+A084192(A055998(n))`
-/

namespace A195618.P14811182414413924910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n + A084192 (A055998 n).toNat

end

end A195618.P14811182414413924910

/-! ## A195618.P6379179247965001402

`A084192(A055998(n))-A057428(n)`
-/

namespace A195618.P6379179247965001402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (A055998 n).toNat - A057428 n

end

end A195618.P6379179247965001402

/-! ## A195618.P13815033992056090009

`A084192(A055998(n))+A000040(n+1)%2`
-/

namespace A195618.P13815033992056090009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084192 (A055998 n).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A195618.P13815033992056090009

/-!
# A195619: Denominators of Pythagorean approximations to 4.

The programs for A195619, the canonical program `A195619.P7175457883957837331` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195619 has offset 1).

The definition of A195619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195619.P7175457883957837331

`((4+sqrt(17))^(2*(n+1)+1)+(4-sqrt(17))^(2*(n+1)+1)-8*(-1)^(n+1))/34`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A195619

/-- `((4+sqrt(17))^(2*(n+1)+1)+(4-sqrt(17))^(2*(n+1)+1)-8*(-1)^(n+1))/34` -/
def P7175457883957837331.Spec : Prop :=
  ∀ n, P7175457883957837331.a n = (A195619 (n + 1) : ℝ)

end A195619

/-! ## A195619.P1073916758044915816

`4*(A078989(n+1)-(-1)^(n+1))/17`
-/

namespace A195619.P1073916758044915816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A078989 (n + 1) - (-1) ^ (n + 1) : ℚ) / 17)

end

end A195619.P1073916758044915816

namespace A195619

/-- `4*(A078989(n+1)-(-1)^(n+1))/17` -/
def P1073916758044915816.Spec : Prop :=
  ∀ n, P1073916758044915816.a n = (A195619 (n + 1) : ℚ)

end A195619

/-! ## A195619.P17655080359184251449

`∑[(4*A041025(n))²]`
-/

namespace A195619.P17655080359184251449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A041025 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195619.P17655080359184251449

namespace A195619

/-- `∑[(4*A041025(n))²]` -/
def P17655080359184251449.Spec : Prop :=
  ∀ n, P17655080359184251449.a n = A195619 (n + 1)

end A195619

/-! ## A195619.P10168062290787716983

`∑[16*A099369(n+1)]`
-/

namespace A195619.P10168062290787716983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A099369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195619.P10168062290787716983

namespace A195619

/-- `∑[16*A099369(n+1)]` -/
def P10168062290787716983.Spec : Prop :=
  ∀ n, P10168062290787716983.a n = A195619 (n + 1)

end A195619

/-! ## A195619.P9872424742521372142

`A195563(3*(n+1)+1)`
-/

namespace A195619.P9872424742521372142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195563 (3 * (n + 1) + 1)

end

end A195619.P9872424742521372142

namespace A195619

/-- `A195563(3*(n+1)+1)` -/
def P9872424742521372142.Spec : Prop :=
  ∀ n, P9872424742521372142.a n = A195619 (n + 1)

end A195619

/-! ## A195619.P3938546774150758775

`2*A041025(n)*A041025(n+1)`
-/

namespace A195619.P3938546774150758775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041025 n * A041025 (n + 1)

end

end A195619.P3938546774150758775

namespace A195619

/-- `2*A041025(n)*A041025(n+1)` -/
def P3938546774150758775.Spec : Prop :=
  ∀ n, P3938546774150758775.a n = A195619 (n + 1)

end A195619

/-! ## A195619.P7216736504535369590

`round(A195620(n+1)/4)`
-/

namespace A195619.P7216736504535369590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A195620 (n + 1) : ℚ) / 4)

end

end A195619.P7216736504535369590

namespace A195619

/-- `round(A195620(n+1)/4)` -/
def P7216736504535369590.Spec : Prop :=
  ∀ n, P7216736504535369590.a n = A195619 (n + 1)

end A195619

/-! ## A195619.P10203008504699889969

`floor(A195620(n+1)/4+A011782(n)/A011782(n+1))`
-/

namespace A195619.P10203008504699889969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A195620 (n + 1) : ℚ) / 4 + (A011782 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A195619.P10203008504699889969

namespace A195619

/-- `floor(A195620(n+1)/4+A011782(n)/A011782(n+1))` -/
def P10203008504699889969.Spec : Prop :=
  ∀ n, P10203008504699889969.a n = A195619 (n + 1)

end A195619

/-!
# A195620: Numerators of Pythagorean approximations to 4.

The programs for A195620, the canonical program `A195620.P356269486200707329` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195620 has offset 1).

The definition of A195620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195620.P356269486200707329

`(16*A078989(n+1)+(-1)^(n+1))/17`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195620

/-- `(16*A078989(n+1)+(-1)^(n+1))/17` -/
def P356269486200707329.Spec : Prop :=
  ∀ n, P356269486200707329.a n = (A195620 (n + 1) : ℚ)

end A195620

/-! ## A195620.P11059616538221941265

`Δ[A041025(n)²]`
-/

namespace A195620.P11059616538221941265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041025 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195620.P11059616538221941265

namespace A195620

/-- `Δ[A041025(n)²]` -/
def P11059616538221941265.Spec : Prop :=
  ∀ n, P11059616538221941265.a n = A195620 (n + 1)

end A195620

/-! ## A195620.P929997405383818352

`Δ[A099369(n+1)]`
-/

namespace A195620.P929997405383818352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195620.P929997405383818352

namespace A195620

/-- `Δ[A099369(n+1)]` -/
def P929997405383818352.Spec : Prop :=
  ∀ n, P929997405383818352.a n = A195620 (n + 1)

end A195620

/-! ## A195620.P2568141487838940422

`A195562(3*(n+1)+1)`
-/

namespace A195620.P2568141487838940422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195562 (3 * (n + 1) + 1)

end

end A195620.P2568141487838940422

namespace A195620

/-- `A195562(3*(n+1)+1)` -/
def P2568141487838940422.Spec : Prop :=
  ∀ n, P2568141487838940422.a n = A195620 (n + 1)

end A195620

/-! ## A195620.P4214091259842264628

`record[Δ[A099369(A080513(n))]]`
-/

namespace A195620.P4214091259842264628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099369 (A080513 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195620.P4214091259842264628

namespace A195620

/-- `record[Δ[A099369(A080513(n))]]` -/
def P4214091259842264628.Spec : Prop :=
  ∀ n, P4214091259842264628.a n = A195620 (n + 1)

end A195620

/-! ## A195620.P16464838105792538792

`Δ[record[A099369(A263275(n))]]`
-/

namespace A195620.P16464838105792538792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099369 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195620.P16464838105792538792

namespace A195620

/-- `Δ[record[A099369(A263275(n))]]` -/
def P16464838105792538792.Spec : Prop :=
  ∀ n, P16464838105792538792.a n = A195620 (n + 1)

end A195620

/-! ## A195620.P3829374155396528601

`A099369(n+2)-A099369(n+1)`
-/

namespace A195620.P3829374155396528601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099369 (n + 2) - A099369 (n + 1)

end

end A195620.P3829374155396528601

namespace A195620

/-- `A099369(n+2)-A099369(n+1)` -/
def P3829374155396528601.Spec : Prop :=
  ∀ n, P3829374155396528601.a n = A195620 (n + 1)

end A195620

/-! ## A195620.P6894500939083864704

`Δ[A041025(n)^A000005(A020483(n))]`
-/

namespace A195620.P6894500939083864704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041025 n : ℚ) ^ (A000005 (A020483 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195620.P6894500939083864704

namespace A195620

/-- `Δ[A041025(n)^A000005(A020483(n))]` -/
def P6894500939083864704.Spec : Prop :=
  ∀ n, P6894500939083864704.a n = (A195620 (n + 1) : ℚ)

end A195620

/-!
# A195622: Denominators of Pythagorean approximations to 5.

The programs for A195622, the canonical program `A195622.P6429422924912709284` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195622 has offset 1).

The definition of A195622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195622.P6429422924912709284

`5/26*(A097726(n+1)-(-1)^(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195622

/-- `5/26*(A097726(n+1)-(-1)^(n+1))` -/
def P6429422924912709284.Spec : Prop :=
  ∀ n, P6429422924912709284.a n = (A195622 (n + 1) : ℚ)

end A195622

/-! ## A195622.P1057760082927448141

`∑[5*A109107(n)²]`
-/

namespace A195622.P1057760082927448141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A109107 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195622.P1057760082927448141

namespace A195622

/-- `∑[5*A109107(n)²]` -/
def P1057760082927448141.Spec : Prop :=
  ∀ n, P1057760082927448141.a n = A195622 (n + 1)

end A195622

/-! ## A195622.P7648019164683548380

`A195572(3*(n+1)+1)`
-/

namespace A195622.P7648019164683548380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195572 (3 * (n + 1) + 1)

end

end A195622.P7648019164683548380

namespace A195622

/-- `A195572(3*(n+1)+1)` -/
def P7648019164683548380.Spec : Prop :=
  ∀ n, P7648019164683548380.a n = A195622 (n + 1)

end A195622

/-! ## A195622.P5256980725368233758

`A041041(n+1)*A109107(n)`
-/

namespace A195622.P5256980725368233758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 (n + 1) * A109107 n

end

end A195622.P5256980725368233758

namespace A195622

/-- `A041041(n+1)*A109107(n)` -/
def P5256980725368233758.Spec : Prop :=
  ∀ n, P5256980725368233758.a n = A195622 (n + 1)

end A195622

/-! ## A195622.P4019011798148580501

`lcm(A109107(n+1), A109107(n))`
-/

namespace A195622.P4019011798148580501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109107 (n + 1)) (A109107 n)

end

end A195622.P4019011798148580501

namespace A195622

/-- `lcm(A109107(n+1), A109107(n))` -/
def P4019011798148580501.Spec : Prop :=
  ∀ n, (P4019011798148580501.a n : ℤ) = A195622 (n + 1)

end A195622

/-! ## A195622.P4297268095079585300

`2*A041041(n)*A041041(n+1)`
-/

namespace A195622.P4297268095079585300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041041 n * A041041 (n + 1))

end

end A195622.P4297268095079585300

namespace A195622

/-- `2*A041041(n)*A041041(n+1)` -/
def P4297268095079585300.Spec : Prop :=
  ∀ n, P4297268095079585300.a n = A195622 (n + 1)

end A195622

/-!
# A195623: Numerators of Pythagorean approximations to 5.

The programs for A195623, the canonical program `A195623.P14818178124915173317` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195623 has offset 1).

The definition of A195623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195623.P14818178124915173317

`1/26*(25*A097726(n+1)+(-1)^(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A195623

/-- `1/26*(25*A097726(n+1)+(-1)^(n+1))` -/
def P14818178124915173317.Spec : Prop :=
  ∀ n, P14818178124915173317.a n = (A195623 (n + 1) : ℚ)

end A195623

/-! ## A195623.P8779434283961650835

`Δ[A041041(n)²]`
-/

namespace A195623.P8779434283961650835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041041 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195623.P8779434283961650835

namespace A195623

/-- `Δ[A041041(n)²]` -/
def P8779434283961650835.Spec : Prop :=
  ∀ n, P8779434283961650835.a n = A195623 (n + 1)

end A195623

/-! ## A195623.P2556387906711842137

`Δ[A099374(n+1)]`
-/

namespace A195623.P2556387906711842137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195623.P2556387906711842137

namespace A195623

/-- `Δ[A099374(n+1)]` -/
def P2556387906711842137.Spec : Prop :=
  ∀ n, P2556387906711842137.a n = A195623 (n + 1)

end A195623

/-! ## A195623.P9655856715563596949

`Δ[∑[A109108(n)]²]`
-/

namespace A195623.P9655856715563596949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195623.P9655856715563596949

namespace A195623

/-- `Δ[∑[A109108(n)]²]` -/
def P9655856715563596949.Spec : Prop :=
  ∀ n, P9655856715563596949.a n = A195623 (n + 1)

end A195623

/-! ## A195623.P17745361983213760649

`Δ[(A109107(n)/2)²]`
-/

namespace A195623.P17745361983213760649
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A109107 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A195623.P17745361983213760649

namespace A195623

/-- `Δ[(A109107(n)/2)²]` -/
def P17745361983213760649.Spec : Prop :=
  ∀ n, P17745361983213760649.a n = (A195623 (n + 1) : ℚ)

end A195623

/-!
# A195624: Minimum number of squares removed from an n-dimensional tic-tac-toe board to make winning impossible for either player.

The programs for A195624, there is no canonical definition to state claims against.
-/

/-! ## A195624.P17006285848657939951

`3^(n+2)-A156989(n+2)`
-/

namespace A195624.P17006285848657939951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) : ℤ) - A156989 (n + 2)

end

end A195624.P17006285848657939951

/-!
# A195629: Sequence with chaotic first differences: a(1)=2; a(n)=prime((prime(n) mod 10)+pi(a(n-1))).

The programs for A195629, there is no canonical definition to state claims against.
-/

/-! ## A195629.P4090372696405380118

`A008578(A101306(n+1))`
-/

namespace A195629.P4090372696405380118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A101306 (n + 1)).toNat

end

end A195629.P4090372696405380118

/-! ## A195629.P2374383879525122787

`A008578(∑[A007652(n+1)])`
-/

namespace A195629.P2374383879525122787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195629.P2374383879525122787

/-! ## A195629.P16722379789082254889

`A000040(A101306(n+1)-1)`
-/

namespace A195629.P16722379789082254889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A101306 (n + 1) - 1).toNat

end

end A195629.P16722379789082254889

/-! ## A195629.P16458793596939607106

`A008578(∑[Δ[A007504(n)]%10])`
-/

namespace A195629.P16458793596939607106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195629.P16458793596939607106

/-! ## A195629.P2166839622987492058

`A000040(∑[record[A110560(n)]%10])`
-/

namespace A195629.P2166839622987492058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195629.P2166839622987492058

/-! ## A195629.P15027659444291935881

`A000040(∑[A007652(n+1)]-1)`
-/

namespace A195629.P15027659444291935881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A195629.P15027659444291935881

/-! ## A195629.P6151197698298312927

`A000040(∑[A006005(n+1)%10])`
-/

namespace A195629.P6151197698298312927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195629.P6151197698298312927

/-! ## A195629.P18050842839760847028

`A008578(∑[A010879(p?[n%3+n])])`
-/

namespace A195629.P18050842839760847028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195629.P18050842839760847028

/-! ## A195629.P11154041865174481555

`A000040(∑[A099551(p?[n-(-1)^n])])`
-/

namespace A195629.P11154041865174481555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099551 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195629.P11154041865174481555

/-! ## A195629.P8993348439250439572

`A000040(∑[A000040(n+1)%10]-1)`
-/

namespace A195629.P8993348439250439572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A195629.P8993348439250439572

/-!
# A195635: Numerators b(n) of Pythagorean approximations b(n)/a(n) to sqrt(3/4).

The programs for A195635, there is no canonical definition to state claims against.
-/

/-! ## A195635.P10004968928684478264

`sqrt(A195636(n+1)²-A195634(n+1)²)`
-/

namespace A195635.P10004968928684478264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A195636 (n + 1) ^ 2 - A195634 (n + 1) ^ 2 : ℝ)

end

end A195635.P10004968928684478264

/-!
# A195637: Number of distinct residues of k^n (mod n), k=0..n-1.

The programs for A195637, there is no canonical definition to state claims against.
-/

/-! ## A195637.P4231819778722891221

`A029579(∏{p}[A170911(n+1), #])`
-/

namespace A195637.P4231819778722891221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A195637.P4231819778722891221

/-! ## A195637.P17604626281688481672

`A029579(∏{p}[A220416(n+1), #])`
-/

namespace A195637.P17604626281688481672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A195637.P17604626281688481672

/-! ## A195637.P1428626473309204114

`A119674(∏{p}[A170911(n+1), #])`
-/

namespace A195637.P1428626473309204114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119674 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A195637.P1428626473309204114

/-! ## A195637.P8971169271778839851

`A119674(∏{p}[A220416(n+1), #])`
-/

namespace A195637.P8971169271778839851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119674 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A195637.P8971169271778839851

/-! ## A195637.P4638310612256513238

`A212831(∏{p}[A170911(n+1), #])`
-/

namespace A195637.P4638310612256513238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A195637.P4638310612256513238

/-!
# A195638: Number of lower triangles of an n X n 0..n array with all row sums equal to the length of the row and all column sums equal to the length of the column.

The programs for A195638, there is no canonical definition to state claims against.
-/

/-! ## A195638.P12880326370374414950

`A195644(2*n²+1)`
-/

namespace A195638.P12880326370374414950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (2 * n ^ 2 + 1)

end

end A195638.P12880326370374414950

/-! ## A195638.P1678999368187839814

`A195643(∑[A290544(n)])`
-/

namespace A195638.P1678999368187839814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195638.P1678999368187839814

/-! ## A195638.P14199291089043970502

`A195643(∑[A290854(n)])`
-/

namespace A195638.P14199291089043970502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195643 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A195638.P14199291089043970502

/-! ## A195638.P7096718814708328495

`A195643(A154701(n+1))`
-/

namespace A195638.P7096718814708328495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195643 (A154701 (n + 1)).toNat

end

end A195638.P7096718814708328495

/-!
# A195639: Number of lower triangles of an n X n 0..3 array with all row sums equal to the length of the row and all column sums equal to the length of the column.

The programs for A195639, there is no canonical definition to state claims against.
-/

/-! ## A195639.P13322810274082724316

`A195644(∑[n+3]+1)`
-/

namespace A195639.P13322810274082724316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A195639.P13322810274082724316

/-! ## A195639.P5186556138094272480

`A324802(n+1)+A195644(A034856(n+2))`
-/

namespace A195639.P5186556138094272480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (n + 1) + A195644 (A034856 (n + 2)).toNat

end

end A195639.P5186556138094272480

/-! ## A195639.P13372975973578337883

`A325801(n+1)+A195644(A034856(n+2))`
-/

namespace A195639.P13372975973578337883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (n + 1) + A195644 (A034856 (n + 2)).toNat

end

end A195639.P13372975973578337883

/-! ## A195639.P14361431122495366349

`A057427(n+1)*A195644(A034856(n+2))`
-/

namespace A195639.P14361431122495366349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A195644 (A034856 (n + 2)).toNat

end

end A195639.P14361431122495366349

/-! ## A195639.P2938256186212078620

`C(A195644(A034856(n+2)), A081753(n+1))`
-/

namespace A195639.P2938256186212078620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A195644 (A034856 (n + 2)).toNat).toNat (A081753 (n + 1)).toNat

end

end A195639.P2938256186212078620

/-!
# A195640: Number of lower triangles of an n X n 0..4 array with all row sums equal to the length of the row and all column sums equal to the length of the column.

The programs for A195640, there is no canonical definition to state claims against.
-/

/-! ## A195640.P5933162474231361182

`A195644(A141214(n+1))`
-/

namespace A195640.P5933162474231361182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (A141214 (n + 1)).toNat

end

end A195640.P5933162474231361182

/-! ## A195640.P3131158263674820674

`A195644(A155212(n)+5)`
-/

namespace A195640.P3131158263674820674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (A155212 n + 5).toNat

end

end A195640.P3131158263674820674

/-! ## A195640.P7837408439697457785

`A195644(A056000(n)+7)`
-/

namespace A195640.P7837408439697457785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (A056000 n + 7).toNat

end

end A195640.P7837408439697457785

/-! ## A195640.P8088740196969557218

`A195644(eq[2, A054123(n)])`
-/

namespace A195640.P8088740196969557218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195640.P8088740196969557218

/-! ## A195640.P15732211233806898962

`A195644(eq[2, A152157(n)])`
-/

namespace A195640.P15732211233806898962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195640.P15732211233806898962

/-!
# A195641: Number of lower triangles of an n X n 0..5 array with all row sums equal to the length of the row and all column sums equal to the length of the column.

The programs for A195641, there is no canonical definition to state claims against.
-/

/-! ## A195641.P380528178625861561

`A195644(Δ[A264443(n)])`
-/

namespace A195641.P380528178625861561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (f1 (n + 1) - f1 n).toNat

end

end A195641.P380528178625861561

/-! ## A195641.P7648927791983614457

`A195644(A046691(n+3))`
-/

namespace A195641.P7648927791983614457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (A046691 (n + 3)).toNat

end

end A195641.P7648927791983614457

/-! ## A195641.P16657640977604111388

`A195644(eq[3, A152157(n)])`
-/

namespace A195641.P16657640977604111388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195641.P16657640977604111388

/-! ## A195641.P1631640827342927779

`A195644(eq[4, A054123(n)])`
-/

namespace A195641.P1631640827342927779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195641.P1631640827342927779

/-! ## A195641.P9929131652341128956

`A195644(eq[4, A193592(n)])`
-/

namespace A195641.P9929131652341128956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A195641.P9929131652341128956

/-!
# A195642: Number of lower triangles of an n X n 0..6 array with all row sums equal to the length of the row and all column sums equal to the length of the column.

The programs for A195642, there is no canonical definition to state claims against.
-/

/-! ## A195642.P1931597070808651508

`A195644(A052905(n+3))`
-/

namespace A195642.P1931597070808651508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (A052905 (n + 3)).toNat

end

end A195642.P1931597070808651508

/-! ## A195642.P15629652233498139494

`A195644(Δ[A264443(n+1)]-1)`
-/

namespace A195642.P15629652233498139494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (f1 (n + 1) - f1 n - 1).toNat

end

end A195642.P15629652233498139494

/-!
# A195647: a(n) is the optimal wire-length for an n X n grid.

The programs for A195647, there is no canonical definition to state claims against.
-/

/-! ## A195647.P10391426314179605312

`n*∑[A094838(3*n+5)]`
-/

namespace A195647.P10391426314179605312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195647.P10391426314179605312

/-! ## A195647.P17397942838532861283

`n*∑[A029837(A125609(n+1))]`
-/

namespace A195647.P17397942838532861283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A125609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195647.P17397942838532861283

/-! ## A195647.P15468118833816992551

`n*∑[A000005(A272697(n+1))]`
-/

namespace A195647.P15468118833816992551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A272697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A195647.P15468118833816992551

/-!
# A195662: Triangle T(n,k) read by rows: T(0,0) = -3, T(1,0) = 2, T(1,1) = 0 and T(n,k) = T(n-1,k) - T(n-2,k-2) otherwise.

The programs for A195662, there is no canonical definition to state claims against.
-/

/-! ## A195662.P8713895703562814037

`4*A192174(n)-A192011(n)`
-/

namespace A195662.P8713895703562814037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A192174 n - A192011 n

end

end A195662.P8713895703562814037

/-! ## A195662.P13805148172255894979

`A192011(n)+A192174(n)-A053119(n)`
-/

namespace A195662.P13805148172255894979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n + (A192174 n - A053119 n)

end

end A195662.P13805148172255894979

/-! ## A195662.P7648917190956626342

`A192011(n)+A192174(n)-A049310(A061579(n))`
-/

namespace A195662.P7648917190956626342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n + (A192174 n - A049310 (A061579 n).toNat)

end

end A195662.P7648917190956626342

/-! ## A195662.P7054029486809859891

`A192011(n)+A192174(n)-A259875(A004202(n+1))`
-/

namespace A195662.P7054029486809859891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n + (A192174 n - A259875 (A004202 (n + 1)).toNat)

end

end A195662.P7054029486809859891

/-! ## A195662.P17284686932715514913

`A053119(n)+2*A192174(n)-A127672(A061579(n))`
-/

namespace A195662.P17284686932715514913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n + 2 * A192174 n - A127672 (A061579 n).toNat

end

end A195662.P17284686932715514913

/-! ## A195662.P5849995368564764790

`A192174(n)+A192011(n)-A049310(A114327(n)+n)`
-/

namespace A195662.P5849995368564764790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 n + A192011 n - A049310 (A114327 n + (n : ℤ)).toNat

end

end A195662.P5849995368564764790

/-! ## A195662.P1357847647333435937

`A192174(n)+A192011(n)-A049310(A038722(n+1)-1)`
-/

namespace A195662.P1357847647333435937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 n + A192011 n - A049310 (A038722 (n + 1) - 1).toNat

end

end A195662.P1357847647333435937

/-! ## A195662.P8937768167809399152

`A195673(n)-A053119(n)`
-/

namespace A195662.P8937768167809399152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195673 n - A053119 n

end

end A195662.P8937768167809399152

/-! ## A195662.P17562041700884222249

`5*A192174(n)-A195673(n)`
-/

namespace A195662.P17562041700884222249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A192174 n - A195673 n

end

end A195662.P17562041700884222249

/-! ## A195662.P2674968098027649977

`A195673(n)-A049310(A061579(n))`
-/

namespace A195662.P2674968098027649977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195673 n - A049310 (A061579 n).toNat

end

end A195662.P2674968098027649977

/-!
# A195663: Array read by antidiagonals: Consecutive finite permutations of positive integers in reverse colexicographic order.

The programs for A195663, there is no canonical definition to state claims against.
-/

/-! ## A195663.P5279914887987220706

`A195664(n)+1`
-/

namespace A195663.P5279914887987220706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195664 n + 1

end

end A195663.P5279914887987220706

/-! ## A195663.P14641207079742228291

`A008619(2*A195664(n))`
-/

namespace A195663.P14641207079742228291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A195664 n).toNat

end

end A195663.P14641207079742228291

/-! ## A195663.P11812278170194901606

`A029579(2*A195664(n))`
-/

namespace A195663.P11812278170194901606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A195664 n).toNat

end

end A195663.P11812278170194901606

/-! ## A195663.P15046509594516065263

`A052938(2*A195664(n))`
-/

namespace A195663.P15046509594516065263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A195664 n).toNat

end

end A195663.P15046509594516065263

/-! ## A195663.P14742812487183348752

`A008611(3*A195664(n))`
-/

namespace A195663.P14742812487183348752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A195664 n).toNat

end

end A195663.P14742812487183348752

/-! ## A195663.P17230550294835563711

`A008620(3*A195664(n))`
-/

namespace A195663.P17230550294835563711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A195664 n).toNat

end

end A195663.P17230550294835563711

/-! ## A195663.P16681840954291409279

`A008621(4*A195664(n))`
-/

namespace A195663.P16681840954291409279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A195664 n).toNat

end

end A195663.P16681840954291409279

/-! ## A195663.P7313612337239195777

`A103221(6*A195664(n))`
-/

namespace A195663.P7313612337239195777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A195664 n).toNat

end

end A195663.P7313612337239195777

/-! ## A195663.P7978734492473396116

`A000005(2^A195664(n))`
-/

namespace A195663.P7978734492473396116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A195664 n : ℤ))).toNat

end

end A195663.P7978734492473396116

/-! ## A195663.P2999291450244156376

`2-(A008975(∑[n])-A195664(n))`
-/

namespace A195663.P2999291450244156376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A008975 (∑ j ∈ Finset.range (n + 1), f1 j) - A195664 n)

end

end A195663.P2999291450244156376

/-!
# A195664: Array read by antidiagonals: Consecutive finite permutations of nonnegative integers in reverse colexicographic order.

The programs for A195664, there is no canonical definition to state claims against.
-/

/-! ## A195664.P12570049108709889328

`A195663(n)-1`
-/

namespace A195664.P12570049108709889328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n - 1

end

end A195664.P12570049108709889328

/-! ## A195664.P11821164676813878600

`A023443(A195663(n))`
-/

namespace A195664.P11821164676813878600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A195663 n).toNat

end

end A195664.P11821164676813878600

/-! ## A195664.P355237531950043039

`(A195663(n)+n)%A004442(A004442(n+1))`
-/

namespace A195664.P355237531950043039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195663 n + (n : ℤ)) (A004442 (A004442 (n + 1)).toNat)

end

end A195664.P355237531950043039

/-! ## A195664.P3805032107067415394

`(A195663(n)+A060126(A060119(n)))%(n+1)`
-/

namespace A195664.P3805032107067415394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195663 n + A060126 (A060119 n).toNat) (n + 1 : ℤ)

end

end A195664.P3805032107067415394

/-! ## A195664.P15351424387351256590

`(A261098(A261098(n))+A195663(n))%(n+1)`
-/

namespace A195664.P15351424387351256590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261098 (A261098 n).toNat + A195663 n) (n + 1 : ℤ)

end

end A195664.P15351424387351256590

/-! ## A195664.P15635889420672127305

`A200748(n)%A195663(n)`
-/

namespace A195664.P15635889420672127305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A195663 n)

end

end A195664.P15635889420672127305

/-! ## A195664.P10846349267114039977

`A070198(n)%A195663(n)`
-/

namespace A195664.P10846349267114039977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A195663 n)

end

end A195664.P10846349267114039977

/-! ## A195664.P16802351079588450719

`A079782(n+1)%A195663(n)`
-/

namespace A195664.P16802351079588450719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A195663 n)

end

end A195664.P16802351079588450719

/-! ## A195664.P1646992895106447397

`A083685(n+1)%A195663(n)`
-/

namespace A195664.P1646992895106447397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A195663 n)

end

end A195664.P1646992895106447397

/-! ## A195664.P9268233528264324113

`A121934(n+1)%A195663(n)`
-/

namespace A195664.P9268233528264324113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A195663 n)

end

end A195664.P9268233528264324113

/-! ## A195664.P82247940044931380

`A030494(n+1)%A195663(n)`
-/

namespace A195664.P82247940044931380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A195663 n)

end

end A195664.P82247940044931380

/-! ## A195664.P17707580336281442937

`A072828(n+1)%A195663(n)`
-/

namespace A195664.P17707580336281442937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A195663 n)

end

end A195664.P17707580336281442937

/-!
# A195665: Consecutive bit-permutations of nonnegative integers.

The programs for A195665, there is no canonical definition to state claims against.
-/

/-! ## A195665.P16677058562258596040

`A163575(n+1)+Δ[A181101(A046388(n+1))]`
-/

namespace A195665.P16677058562258596040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181101 (A046388 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (n + 1) + (f1 (n + 1) - f1 n)

end

end A195665.P16677058562258596040

/-! ## A195665.P9479056377262246816

`(A275701(n+1)-n)%A097248(n+1)`
-/

namespace A195665.P9479056377262246816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275701 (n + 1) - (n : ℤ)) (A097248 (n + 1))

end

end A195665.P9479056377262246816

/-! ## A195665.P13754284334635071727

`A163575(n+1)-A015301(A088209(n))`
-/

namespace A195665.P13754284334635071727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (n + 1) - A015301 (A088209 n).toNat

end

end A195665.P13754284334635071727

/-! ## A195665.P5516432855104004664

`A163575(n+1)+A015301(A088209(n)+2)`
-/

namespace A195665.P5516432855104004664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (n + 1) + A015301 (A088209 n + 2).toNat

end

end A195665.P5516432855104004664

/-!
# A195666: Numbers whose sum of prime factors is 17.

The programs for A195666, there is no canonical definition to state claims against.
-/

/-! ## A195666.P3523927028005451841

`A064364(n+82)`
-/

namespace A195666.P3523927028005451841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064364 (n + 82)

end

end A195666.P3523927028005451841

/-! ## A195666.P9854095007788542755

`eq[17, A001414(n+1)]+1`
-/

namespace A195666.P9854095007788542755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195666.P9854095007788542755

/-! ## A195666.P10368163345344799926

`eq[18, A036288(n+1)]+1`
-/

namespace A195666.P10368163345344799926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A195666.P10368163345344799926

/-! ## A195666.P12667923770935069849

`eq[17, A001414(A028310(n))]`
-/

namespace A195666.P12667923770935069849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A195666.P12667923770935069849

/-! ## A195666.P10128951088676591713

`record[A175676(A049328(n+1))]`
-/

namespace A195666.P10128951088676591713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A049328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A195666.P10128951088676591713

/-!
# A195667: Length of the longest Sokoban game with n spaces.

The programs for A195667, there is no canonical definition to state claims against.
-/

/-! ## A195667.P60630630761204151

`∑[A000120(A318904(n+8)+1)]`
-/

namespace A195667.P60630630761204151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A318904 (n + 8) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195667.P60630630761204151

/-! ## A195667.P7808051617962336526

`A251631(A049697(n))+A239701(n)`
-/

namespace A195667.P7808051617962336526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A049697 n).toNat + A239701 n

end

end A195667.P7808051617962336526

/-! ## A195667.P8053763895843805221

`A034776(n+1)+A033665(A000292(n))`
-/

namespace A195667.P8053763895843805221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034776 (n + 1) + A033665 (A000292 n).toNat

end

end A195667.P8053763895843805221

/-! ## A195667.P1318352517320660681

`A133565(A127820(n+1))+A001318(n)`
-/

namespace A195667.P1318352517320660681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133565 (A127820 (n + 1)).toNat + A001318 n

end

end A195667.P1318352517320660681

/-! ## A195667.P12574423788978419523

`A261133(A092220(n)+A027379(n))-A357604(n+1)`
-/

namespace A195667.P12574423788978419523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261133 (A092220 n + A027379 n).toNat - A357604 (n + 1)

end

end A195667.P12574423788978419523

/-!
# A195668: Length of longest Sokoban game with n spaces and 1 bag.

The programs for A195668, there is no canonical definition to state claims against.
-/

/-! ## A195668.P5630855885264130663

`∑[A216199(A295275(n+1))-2]`
-/

namespace A195668.P5630855885264130663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216199 (A295275 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A195668.P5630855885264130663

/-!
# A195673: Triangle T(n,k) read by rows: T(0,0)=-2, T(1,0)=3, T(1,1)=0 and T(n,k) = T(n-1,k)-T(n-2,k-2) otherwise.

The programs for A195673, there is no canonical definition to state claims against.
-/

/-! ## A195673.P15612067336648816012

`A195662(n)+A053119(n)`
-/

namespace A195673.P15612067336648816012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195662 n + A053119 n

end

end A195673.P15612067336648816012

/-! ## A195673.P13091728758819782830

`A192174(n)+A192011(n)`
-/

namespace A195673.P13091728758819782830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 n + A192011 n

end

end A195673.P13091728758819782830

/-! ## A195673.P3477470086221879993

`5*A192174(n)-A195662(n)`
-/

namespace A195673.P3477470086221879993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A192174 n - A195662 n

end

end A195673.P3477470086221879993

/-! ## A195673.P14198947724314159019

`A195662(n)+A049310(∑[2*n]%comp[∑[n]])`
-/

namespace A195673.P14198947724314159019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195662 n + A049310 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A195673.P14198947724314159019

/-! ## A195673.P12834896696345482493

`A195662(n)+A049310(∑[char[∑[n]]]²-n-1)`
-/

namespace A195673.P12834896696345482493
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195662 n + A049310 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A195673.P12834896696345482493

/-! ## A195673.P42167060230120907

`A259875(A004202(n+1))+A195662(n)`
-/

namespace A195673.P42167060230120907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A004202 (n + 1)).toNat + A195662 n

end

end A195673.P42167060230120907

/-! ## A195673.P10907451308062757145

`A195662(n)+A053118(n)/A130321(n)`
-/

namespace A195673.P10907451308062757145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195662 n : ℚ) + (A053118 n : ℚ) / (A130321 n : ℚ)

end

end A195673.P10907451308062757145

/-! ## A195673.P10446332946445922649

`A193002(n)+A192575(n)`
-/

namespace A195673.P10446332946445922649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193002 n + A192575 n

end

end A195673.P10446332946445922649

/-! ## A195673.P15466716674520409665

`3*A192011(n)-A174559(n)`
-/

namespace A195673.P15466716674520409665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192011 n - A174559 n

end

end A195673.P15466716674520409665

/-! ## A195673.P18133608787679190225

`A192174(n)+A194084(n)-A135929(n)`
-/

namespace A195673.P18133608787679190225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192174 n + (A194084 n - A135929 n)

end

end A195673.P18133608787679190225

/-!
# A195675: Round(Pi^(n+1)/(Pi^2 + 1)).

The programs for A195675, there is no canonical definition to state claims against.
-/

/-! ## A195675.P1564047664097934787

`A082964(A090426(n+1))`
-/

namespace A195675.P1564047664097934787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A090426 (n + 1)).toNat

end

end A195675.P1564047664097934787

/-! ## A195675.P7388482072053852759

`A082964(A001672(n)-floor((π^n+n)/(π²+1)))`
-/

namespace A195675.P7388482072053852759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082964 (A001672 n - ⌊(Real.pi ^ n + (n : ℝ)) / (Real.pi ^ 2 + 1)⌋).toNat

end

end A195675.P7388482072053852759

/-! ## A195675.P11016791990721222348

`Δ[A002265(floor(π^n/e)+2)]+floor((π^n+n)/(π²+1))`
-/

namespace A195675.P11016791990721222348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (⌊Real.pi ^ n / Real.exp 1⌋ + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊(Real.pi ^ n + (n : ℝ)) / (Real.pi ^ 2 + 1)⌋

end

end A195675.P11016791990721222348

/-! ## A195675.P15520598055988407919

`A130371(A170953(n+1))`
-/

namespace A195675.P15520598055988407919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A170953 (n + 1)).toNat

end

end A195675.P15520598055988407919

/-!
# A195679: Order of n-th homotopy group of the topological group O(oo), with -1 if the homotopy group is Z.

The programs for A195679, the canonical program `A195679.P16043029098919508297` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195679 has offset 0).

The definition of A195679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A195679.P16043029098919508297

`a(n-8)` with `a(0)=2, a(1)=2, a(2)=1, a(3)=-1, a(4)=1, a(5)=1, a(6)=1, a(7)=-1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A195679

/-- `a(n-8)` -/
def P16043029098919508297.Spec : Prop :=
  ∀ n, P16043029098919508297.a n = A195679 n

theorem P16043029098919508297.correct : P16043029098919508297.Spec := by
  intro n
  simp only [A195679]

end A195679

/-!
# A195685: Primes p for which tau(2p-1) = tau(2p+1) = 4.

The programs for A195685, there is no canonical definition to state claims against.
-/

/-! ## A195685.P18333502690659349808

`A248201(n+1)/2`
-/

namespace A195685.P18333502690659349808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248201 (n + 1) : ℚ) / 2

end

end A195685.P18333502690659349808

/-! ## A195685.P14039090807085063416

`ceil(A039833(n+1)/2)`
-/

namespace A195685.P14039090807085063416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A039833 (n + 1) : ℚ) / 2⌉

end

end A195685.P14039090807085063416

/-! ## A195685.P10498432756113141883

`floor(A039833(abs(2*n-n)+1)/2)+1`
-/

namespace A195685.P10498432756113141883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039833 (|(2 * n : ℤ) - (n : ℤ)| + 1).toNat : ℚ) / 2⌋ + 1

end

end A195685.P10498432756113141883

/-! ## A195685.P17959822057008367814

`∩[A086006(n+1), A234098(n+1)]`
-/

namespace A195685.P17959822057008367814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P17959822057008367814

/-! ## A195685.P11161243713506053565

`∩[A234095(n+1), A234098(n+1)]`
-/

namespace A195685.P11161243713506053565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P11161243713506053565

/-! ## A195685.P8151843776734745770

`∩[A234098(n+1), A276045(n+1)]`
-/

namespace A195685.P8151843776734745770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P8151843776734745770

/-! ## A195685.P6389735504327039010

`∩[A086005(n+1), A169834(n+1)]/2`
-/

namespace A195685.P6389735504327039010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A195685.P6389735504327039010

/-! ## A195685.P9266061256306359851

`∩[A086005(n+1), A192220(n+1)]/2`
-/

namespace A195685.P9266061256306359851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192220 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A195685.P9266061256306359851

/-! ## A195685.P13420048804283252057

`∩[A169834(n+1), A192220(n+1)]/2`
-/

namespace A195685.P13420048804283252057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192220 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A195685.P13420048804283252057

/-! ## A195685.P2550408353831956848

`∩[A066470(n+1), A086006(n+1)]`
-/

namespace A195685.P2550408353831956848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P2550408353831956848

/-! ## A195685.P15829157137474900835

`∩[A066470(n+1), A234095(n+1)]`
-/

namespace A195685.P15829157137474900835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P15829157137474900835

/-! ## A195685.P8676072312745617686

`∩[A066470(n+1), A234098(n+1)]`
-/

namespace A195685.P8676072312745617686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P8676072312745617686

/-! ## A195685.P7754361824918124047

`∩[A066470(n+1), A276045(n+1)]`
-/

namespace A195685.P7754361824918124047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P7754361824918124047

/-! ## A195685.P4121997399739928860

`∩[A066470(n+1), A328058(n+1)]`
-/

namespace A195685.P4121997399739928860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A195685.P4121997399739928860

/-! ## A195685.P9893616492670366582

`∩[A110300(n+1), A169834(n+1)]/2`
-/

namespace A195685.P9893616492670366582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A195685.P9893616492670366582

/-! ## A195685.P8119053879369970460

`∩[A039832(n+1), A169834(n+1)]/2`
-/

namespace A195685.P8119053879369970460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A195685.P8119053879369970460

/-! ## A195685.P14804223688496397996

`∩[A169834(n+1), A263990(n+1)]/2`
-/

namespace A195685.P14804223688496397996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263990 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A195685.P14804223688496397996

/-! ## A195685.P6103372949088723563

`∩[A070552(n+1), A169834(n+1)]/2`
-/

namespace A195685.P6103372949088723563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A195685.P6103372949088723563

/-!
# A195686: a(n) = C(2*n,n) / gcd(n,C(2*n,n)).

The programs for A195686, the canonical program `A195686.P16431381377723371230` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A195686 has offset 0).

The definition of A195686 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A195686.P16431381377723371230

`(n+1)*A098512(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A195686

/-- `(n+1)*A098512(n)` -/
def P16431381377723371230.Spec : Prop :=
  ∀ n, P16431381377723371230.a n = A195686 n

theorem P16431381377723371230.correct : P16431381377723371230.Spec := by
  intro n
  simp only [A195686]

end A195686

/-! ## A195686.P165913505455494451

`A000984(n)/gcd(n, A000108(n))`
-/

namespace A195686.P165913505455494451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (n : ℤ) (A000108 n) : ℚ)

end

end A195686.P165913505455494451

namespace A195686

/-- `A000984(n)/gcd(n, A000108(n))` -/
def P165913505455494451.Spec : Prop :=
  ∀ n, P165913505455494451.a n = (A195686 n : ℚ)

end A195686

/-! ## A195686.P16930496339211939922

`A000984(n)/gcd(A000984(n), A045992(n))`
-/

namespace A195686.P16930496339211939922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (A000984 n) (A045992 n) : ℚ)

end

end A195686.P16930496339211939922

namespace A195686

/-- `A000984(n)/gcd(A000984(n), A045992(n))` -/
def P16930496339211939922.Spec : Prop :=
  ∀ n, P16930496339211939922.a n = (A195686 n : ℚ)

end A195686

/-! ## A195686.P6046615147797859276

`A000984(n)/gcd(A056616(n), A134758(n))`
-/

namespace A195686.P6046615147797859276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (A056616 n) (A134758 n) : ℚ)

end

end A195686.P6046615147797859276

namespace A195686

/-- `A000984(n)/gcd(A056616(n), A134758(n))` -/
def P6046615147797859276.Spec : Prop :=
  ∀ n, P6046615147797859276.a n = (A195686 n : ℚ)

end A195686

/-! ## A195686.P6261444746307230188

`A063886(2*n+1)/gcd(2*n, A063886(2*n+1))`
-/

namespace A195686.P6261444746307230188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (2 * n + 1) : ℚ) / (Int.gcd (2 * n : ℤ) (A063886 (2 * n + 1)) : ℚ)

end

end A195686.P6261444746307230188

namespace A195686

/-- `A063886(2*n+1)/gcd(2*n, A063886(2*n+1))` -/
def P6261444746307230188.Spec : Prop :=
  ∀ n, P6261444746307230188.a n = (A195686 n : ℚ)

end A195686

/-! ## A195686.P8378080133964329824

`A028329(n)/gcd(A005843(n), A028329(n))`
-/

namespace A195686.P8378080133964329824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028329 n : ℚ) / (Int.gcd (A005843 n) (A028329 n) : ℚ)

end

end A195686.P8378080133964329824

namespace A195686

/-- `A028329(n)/gcd(A005843(n), A028329(n))` -/
def P8378080133964329824.Spec : Prop :=
  ∀ n, P8378080133964329824.a n = (A195686 n : ℚ)

end A195686

/-! ## A195686.P16400926193872704617

`A000984(n)/gcd(n%A000984(n), A001700(n))`
-/

namespace A195686.P16400926193872704617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (Int.tmod (n : ℤ) (A000984 n)) (A001700 n) : ℚ)

end

end A195686.P16400926193872704617

namespace A195686

/-- `A000984(n)/gcd(n%A000984(n), A001700(n))` -/
def P16400926193872704617.Spec : Prop :=
  ∀ n, P16400926193872704617.a n = (A195686 n : ℚ)

end A195686

/-!
# A195690: Numbers such that the difference between the sum of the even divisors and the sum of the odd divisors is a perfect square.

The programs for A195690, there is no canonical definition to state claims against.
-/

/-! ## A195690.P5647156282680308304

`A316470(2*A271372(n+4))`
-/

namespace A195690.P5647156282680308304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (2 * A271372 (n + 4)).toNat

end

end A195690.P5647156282680308304

/-!
# A195697: First denominator and then numerator in a fraction expansion of log(2) - Pi/8.

The programs for A195697, there is no canonical definition to state claims against.
-/

/-! ## A195697.P13450624642379301892

`A195909(abs(xor(n, -2)))`
-/

namespace A195697.P13450624642379301892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 |Int.xor (n : ℤ) (-2)|.toNat

end

end A195697.P13450624642379301892

/-! ## A195697.P3977930699411269302

`A195909(xor(1, n)+1)`
-/

namespace A195697.P3977930699411269302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (Nat.xor 1 n + 1)

end

end A195697.P3977930699411269302

/-! ## A195697.P7487578991854570047

`A195909(2*or(1, n)-n)`
-/

namespace A195697.P7487578991854570047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (2 * Nat.lor 1 n - n)

end

end A195697.P7487578991854570047

/-! ## A195697.P15068287465157805095

`A195909(lcm(2, or(1, n))-n)`
-/

namespace A195697.P15068287465157805095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (Nat.lcm 2 (Nat.lor 1 n) - n)

end

end A195697.P15068287465157805095

/-! ## A195697.P2418308982791638337

`A195909((-1)^n+n+1)`
-/

namespace A195697.P2418308982791638337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A195697.P2418308982791638337

/-! ## A195697.P15403055318740502423

`or(char[1], A195909(A014681(n+1)))`
-/

namespace A195697.P15403055318740502423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A195909 (A014681 (n + 1)).toNat)

end

end A195697.P15403055318740502423

/-! ## A195697.P182319257027352939

`A195909(n+2)²/A195909(A014681(n+1))`
-/

namespace A195697.P182319257027352939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195909 (n + 2) ^ 2 : ℚ) / (A195909 (A014681 (n + 1)).toNat : ℚ)

end

end A195697.P182319257027352939

/-! ## A195697.P16649223348530423734

`A195909(A014681(n+1))+A000035(2*n)`
-/

namespace A195697.P16649223348530423734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195909 (A014681 (n + 1)).toNat + A000035 (2 * n)

end

end A195697.P16649223348530423734

/-! ## A195697.P7439018993677758060

`A014963(10*(n+1))*A195909(A014681(n+1))`
-/

namespace A195697.P7439018993677758060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A195909 (A014681 (n + 1)).toNat

end

end A195697.P7439018993677758060

/-! ## A195697.P13810890128096930660

`A007318(∑[n+2])*A195909(A014681(n+1))`
-/

namespace A195697.P13810890128096930660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A195909 (A014681 (n + 1)).toNat

end

end A195697.P13810890128096930660

