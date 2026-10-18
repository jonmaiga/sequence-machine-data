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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
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
# A072100: Column 2 of the array m(i,1)=m(1,j)=1 m(i,j)=m(i-1,j-1)+m(i-1,j+1) (a(n)=m(n,2)).

The programs for A072100, the canonical program `A072100.P14039858533410770621` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072100 has offset 1).

The definition of A072100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072100.P17209930884322075549

`∑[(n-1)*a(n-1)/floor(n/2)]` with `a(0)=1, a(1)=1`
-/

namespace A072100.P17209930884322075549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) * (f1 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P17209930884322075549

namespace A072100

/-- `∑[(n-1)*a(n-1)/floor(n/2)]` -/
def P17209930884322075549.Spec : Prop :=
  ∀ n, P17209930884322075549.a n = (A072100 (n + 1) : ℚ)

end A072100

/-! ## A072100.P3502657850626397880

`∑[A210736(n)]`
-/

namespace A072100.P3502657850626397880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P3502657850626397880

namespace A072100

/-- `∑[A210736(n)]` -/
def P3502657850626397880.Spec : Prop :=
  ∀ n, P3502657850626397880.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P14039858533410770621

`∑[A001405(abs(1-n))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072100

/-- `∑[A001405(abs(1-n))]` -/
def P14039858533410770621.Spec : Prop :=
  ∀ n, P14039858533410770621.a n = A072100 (n + 1)

theorem P14039858533410770621.correct : P14039858533410770621.Spec := by
  intro n
  simp only [A072100, Nat.add_sub_cancel]

end A072100

/-! ## A072100.P15913340968249637276

`∑[A182027(n+1)/2]`
-/

namespace A072100.P15913340968249637276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182027 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P15913340968249637276

namespace A072100

/-- `∑[A182027(n+1)/2]` -/
def P15913340968249637276.Spec : Prop :=
  ∀ n, P15913340968249637276.a n = (A072100 (n + 1) : ℚ)

end A072100

/-! ## A072100.P9167795071479669861

`∑[abs(A193382(2*n+1))]`
-/

namespace A072100.P9167795071479669861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A193382 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P9167795071479669861

namespace A072100

/-- `∑[abs(A193382(2*n+1))]` -/
def P9167795071479669861.Spec : Prop :=
  ∀ n, P9167795071479669861.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P15532802215564691920

`A001405(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A072100.P15532802215564691920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001405 (n - 1) + a (n - 1)

end

end A072100.P15532802215564691920

namespace A072100

/-- `A001405(n-1)+a(n-1)` -/
def P15532802215564691920.Spec : Prop :=
  ∀ n, P15532802215564691920.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P2984471604122631115

`A110199(n)+A037952(n)`
-/

namespace A072100.P2984471604122631115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 n + A037952 n

end

end A072100.P2984471604122631115

namespace A072100

/-- `A110199(n)+A037952(n)` -/
def P2984471604122631115.Spec : Prop :=
  ∀ n, P2984471604122631115.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P12748456164319267624

`A166588(n)+A014495(n)`
-/

namespace A072100.P12748456164319267624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 n + A014495 n

end

end A072100.P12748456164319267624

namespace A072100

/-- `A166588(n)+A014495(n)` -/
def P12748456164319267624.Spec : Prop :=
  ∀ n, P12748456164319267624.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P2364857423022749713

`A037952(n)+∑[A126120(n)]`
-/

namespace A072100.P2364857423022749713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P2364857423022749713

namespace A072100

/-- `A037952(n)+∑[A126120(n)]` -/
def P2364857423022749713.Spec : Prop :=
  ∀ n, P2364857423022749713.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P6720841271194887114

`∑[A050168(n)-A001405(n)]+1`
-/

namespace A072100.P6720841271194887114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n - A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072100.P6720841271194887114

namespace A072100

/-- `∑[A050168(n)-A001405(n)]+1` -/
def P6720841271194887114.Spec : Prop :=
  ∀ n, P6720841271194887114.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P3020159019414983865

`A001405(n)+1-∑[A210628(n)]`
-/

namespace A072100.P3020159019414983865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072100.P3020159019414983865

namespace A072100

/-- `A001405(n)+1-∑[A210628(n)]` -/
def P3020159019414983865.Spec : Prop :=
  ∀ n, P3020159019414983865.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P4367913211812758341

`A037952(n)+∑[A001405(n)-A037952(n)]`
-/

namespace A072100.P4367913211812758341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P4367913211812758341

namespace A072100

/-- `A037952(n)+∑[A001405(n)-A037952(n)]` -/
def P4367913211812758341.Spec : Prop :=
  ∀ n, P4367913211812758341.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P9287261360857183102

`(∑[A063886(n)]+1)/2`
-/

namespace A072100.P9287261360857183102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A072100.P9287261360857183102

namespace A072100

/-- `(∑[A063886(n)]+1)/2` -/
def P9287261360857183102.Spec : Prop :=
  ∀ n, P9287261360857183102.a n = (A072100 (n + 1) : ℚ)

end A072100

/-! ## A072100.P14964048357130563193

`(A191531(n)+2+n)/2`
-/

namespace A072100.P14964048357130563193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191531 n + 2 + (n : ℤ) : ℚ) / 2

end

end A072100.P14964048357130563193

namespace A072100

/-- `(A191531(n)+2+n)/2` -/
def P14964048357130563193.Spec : Prop :=
  ∀ n, P14964048357130563193.a n = (A072100 (n + 1) : ℚ)

end A072100

/-! ## A072100.P11149298906553060639

`A036256(n)-A014495(n)`
-/

namespace A072100.P11149298906553060639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - A014495 n

end

end A072100.P11149298906553060639

namespace A072100

/-- `A036256(n)-A014495(n)` -/
def P11149298906553060639.Spec : Prop :=
  ∀ n, P11149298906553060639.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P4867346616775543513

`A026010(n)-A191307(n)`
-/

namespace A072100.P4867346616775543513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 n - A191307 n

end

end A072100.P4867346616775543513

namespace A072100

/-- `A026010(n)-A191307(n)` -/
def P4867346616775543513.Spec : Prop :=
  ∀ n, P4867346616775543513.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P2841580804212124101

`∑[A001405(n)]-A014495(n)`
-/

namespace A072100.P2841580804212124101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014495 n

end

end A072100.P2841580804212124101

namespace A072100

/-- `∑[A001405(n)]-A014495(n)` -/
def P2841580804212124101.Spec : Prop :=
  ∀ n, P2841580804212124101.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P6970974893578460064

`A036256(n)+1-A001405(n)`
-/

namespace A072100.P6970974893578460064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n + (1 - A001405 n)

end

end A072100.P6970974893578460064

namespace A072100

/-- `A036256(n)+1-A001405(n)` -/
def P6970974893578460064.Spec : Prop :=
  ∀ n, P6970974893578460064.a n = A072100 (n + 1)

end A072100

/-! ## A072100.P7435914898741792156

`(A166588(n)+A036256(n))/2`
-/

namespace A072100.P7435914898741792156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166588 n + A036256 n : ℚ) / 2

end

end A072100.P7435914898741792156

namespace A072100

/-- `(A166588(n)+A036256(n))/2` -/
def P7435914898741792156.Spec : Prop :=
  ∀ n, P7435914898741792156.a n = (A072100 (n + 1) : ℚ)

end A072100

/-! ## A072100.P14710378203740441531

`A166588(n)+A218008(n)/2`
-/

namespace A072100.P14710378203740441531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166588 n : ℚ) + (A218008 n : ℚ) / 2

end

end A072100.P14710378203740441531

namespace A072100

/-- `A166588(n)+A218008(n)/2` -/
def P14710378203740441531.Spec : Prop :=
  ∀ n, P14710378203740441531.a n = (A072100 (n + 1) : ℚ)

end A072100

/-!
# A072103: Sorted perfect powers a^b for a, b > 1 with duplication.

The programs for A072103, there is no canonical definition to state claims against.
-/

/-! ## A072103.P127416794202233753

`A057898(A057897(n+1))+A057897(A187829(n+1))`
-/

namespace A072103.P127416794202233753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057898 (A057897 (n + 1)).toNat + A057897 (A187829 (n + 1)).toNat

end

end A072103.P127416794202233753

/-! ## A072103.P9218605801887231996

`A377468(A127238(2*n)+A077510(n+1))`
-/

namespace A072103.P9218605801887231996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A127238 (2 * n) + A077510 (n + 1)).toNat

end

end A072103.P9218605801887231996

/-! ## A072103.P95445553170433855

`A377468(A050376(2*(n+2))-A032793(n+1))`
-/

namespace A072103.P95445553170433855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A050376 (2 * (n + 2)) - A032793 (n + 1)).toNat

end

end A072103.P95445553170433855

/-! ## A072103.P12932092166850163475

`A377468(A359804(n+1)+A084810(n+2))`
-/

namespace A072103.P12932092166850163475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A359804 (n + 1) + A084810 (n + 2)).toNat

end

end A072103.P12932092166850163475

/-! ## A072103.P3389146845235724005

`A377468(A239689(3*n+5)+A001358(n+1))`
-/

namespace A072103.P3389146845235724005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A239689 (3 * n + 5) + A001358 (n + 1)).toNat

end

end A072103.P3389146845235724005

/-!
# A072106: The number of nontotients (even and odd) in the reduced residue system of n.

The programs for A072106, there is no canonical definition to state claims against.
-/

/-! ## A072106.P17881696202934136276

`A055034(n+1)-A168046(A308328(n+1))`
-/

namespace A072106.P17881696202934136276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - A168046 (A308328 (n + 1)).toNat

end

end A072106.P17881696202934136276

/-! ## A072106.P17060825618725280261

`A055034(n+1)-A000035(A146433(n+1))`
-/

namespace A072106.P17060825618725280261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - A000035 (A146433 (n + 1)).toNat

end

end A072106.P17060825618725280261

/-! ## A072106.P10921441439102491243

`A055034(n+1)-A008966(A000055(n))`
-/

namespace A072106.P10921441439102491243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - A008966 (A000055 n).toNat

end

end A072106.P10921441439102491243

/-! ## A072106.P5096438811912568229

`A055034(n+1)-A143104(A115022(n+1))`
-/

namespace A072106.P5096438811912568229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 1) - A143104 (A115022 (n + 1)).toNat

end

end A072106.P5096438811912568229

/-! ## A072106.P11489599026967317734

`A061775(A038754(n))-A003056(A106474(n))`
-/

namespace A072106.P11489599026967317734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A038754 n).toNat - A003056 (A106474 n).toNat

end

end A072106.P11489599026967317734

/-!
# A072107: a(n) = Sum_{k=1..n} A014963(k).

The programs for A072107, the canonical program `A072107.P18195778838886658705` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072107 has offset 1).

The definition of A072107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072107.P9661357843176130521

`∑[A014963(n+1)]`
-/

namespace A072107.P9661357843176130521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P9661357843176130521

namespace A072107

/-- `∑[A014963(n+1)]` -/
def P9661357843176130521.Spec : Prop :=
  ∀ n, P9661357843176130521.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P18195778838886658705

`∑[A020500(n+1)]+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072107

/-- `∑[A020500(n+1)]+1` -/
def P18195778838886658705.Spec : Prop :=
  ∀ n, P18195778838886658705.a n = A072107 (n + 1)

theorem P18195778838886658705.correct : P18195778838886658705.Spec := by
  intro n
  simp only [A072107, Nat.add_sub_cancel]

end A072107

/-! ## A072107.P13308979414849024442

`∑[A089026(∏{p}[n+1, #])]`
-/

namespace A072107.P13308979414849024442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P13308979414849024442

namespace A072107

/-- `∑[A089026(∏{p}[n+1, #])]` -/
def P13308979414849024442.Spec : Prop :=
  ∀ n, P13308979414849024442.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P10650841468682086798

`A265574(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A072107.P10650841468682086798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A265574 n + a (n - 1)

end

end A072107.P10650841468682086798

namespace A072107

/-- `A265574(n)+a(n-1)` -/
def P10650841468682086798.Spec : Prop :=
  ∀ n, P10650841468682086798.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P5562248162301421635

`∑[(n+1)/A048671(n+1)]`
-/

namespace A072107.P5562248162301421635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A048671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P5562248162301421635

namespace A072107

/-- `∑[(n+1)/A048671(n+1)]` -/
def P5562248162301421635.Spec : Prop :=
  ∀ n, P5562248162301421635.a n = (A072107 (n + 1) : ℚ)

end A072107

/-! ## A072107.P14219131371199111466

`∑[A140580(n+1)/(n+1)]`
-/

namespace A072107.P14219131371199111466
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140580 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P14219131371199111466

namespace A072107

/-- `∑[A140580(n+1)/(n+1)]` -/
def P14219131371199111466.Spec : Prop :=
  ∀ n, P14219131371199111466.a n = (A072107 (n + 1) : ℚ)

end A072107

/-! ## A072107.P5468909917326405926

`a(n-1)+1-A120112(n)` with `a(0)=1`
-/

namespace A072107.P5468909917326405926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A120112 n)

end

end A072107.P5468909917326405926

namespace A072107

/-- `a(n-1)+1-A120112(n)` -/
def P5468909917326405926.Spec : Prop :=
  ∀ n, P5468909917326405926.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P7088911680699259223

`∑[(n+1)²/A140651(n+1)]`
-/

namespace A072107.P7088911680699259223
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A140651 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P7088911680699259223

namespace A072107

/-- `∑[(n+1)²/A140651(n+1)]` -/
def P7088911680699259223.Spec : Prop :=
  ∀ n, P7088911680699259223.a n = (A072107 (n + 1) : ℚ)

end A072107

/-! ## A072107.P4329701384295233279

`A014963(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A072107.P4329701384295233279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (Nat.choose (n + 1) n) + a (n - 1)

end

end A072107.P4329701384295233279

namespace A072107

/-- `A014963(C(n+1, n))+a(n-1)` -/
def P4329701384295233279.Spec : Prop :=
  ∀ n, P4329701384295233279.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P4848008040832469349

`A014963(∏{p}[n+1, #])+a(n-1)` with `a(0)=1`
-/

namespace A072107.P4848008040832469349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n), p) + a (n - 1)

end

end A072107.P4848008040832469349

namespace A072107

/-- `A014963(∏{p}[n+1, #])+a(n-1)` -/
def P4848008040832469349.Spec : Prop :=
  ∀ n, P4848008040832469349.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P16419490204205738068

`∑[∏{d}[n+1, (n/#)^A008683(#)]]+1`
-/

namespace A072107.P16419490204205738068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), ((n : ℚ) / (d : ℚ)) ^ (A008683 d : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072107.P16419490204205738068

namespace A072107

/-- `∑[∏{d}[n+1, (n/#)^A008683(#)]]+1` -/
def P16419490204205738068.Spec : Prop :=
  ∀ n, P16419490204205738068.a n = (A072107 (n + 1) : ℚ)

end A072107

/-! ## A072107.P2325133013569290790

`A014963(2*n-n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A072107.P2325133013569290790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A014963 ((2 * n : ℤ) - (n : ℤ) + 1).toNat + a (n - 1)

end

end A072107.P2325133013569290790

namespace A072107

/-- `A014963(2*n-n+1)+a(n-1)` -/
def P2325133013569290790.Spec : Prop :=
  ∀ n, P2325133013569290790.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P4484214360523685378

`∑[A006530(n*∑{e}[∏{p}[n+1, #], #]!%2+1)]`
-/

namespace A072107.P4484214360523685378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n * (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P4484214360523685378

namespace A072107

/-- `∑[A006530(n*∑{e}[∏{p}[n+1, #], #]!%2+1)]` -/
def P4484214360523685378.Spec : Prop :=
  ∀ n, P4484214360523685378.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P5092328974153704240

`∑[A006530(A100994(n+1))]`
-/

namespace A072107.P5092328974153704240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P5092328974153704240

namespace A072107

/-- `∑[A006530(A100994(n+1))]` -/
def P5092328974153704240.Spec : Prop :=
  ∀ n, P5092328974153704240.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P1690312892667007337

`∑[A020639(A014963(abs(xor(n, -1))))]`
-/

namespace A072107.P1690312892667007337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014963 |Int.xor (n : ℤ) (-1)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P1690312892667007337

namespace A072107

/-- `∑[A020639(A014963(abs(xor(n, -1))))]` -/
def P1690312892667007337.Spec : Prop :=
  ∀ n, P1690312892667007337.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P8367428384168203566

`∑[A020639(A014963(-xor(n, -1)))]`
-/

namespace A072107.P8367428384168203566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014963 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P8367428384168203566

namespace A072107

/-- `∑[A020639(A014963(-xor(n, -1)))]` -/
def P8367428384168203566.Spec : Prop :=
  ∀ n, P8367428384168203566.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P10911223505063660583

`∑[A020639(A014963(Δ[n²]-n))]`
-/

namespace A072107.P10911223505063660583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A014963 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P10911223505063660583

namespace A072107

/-- `∑[A020639(A014963(Δ[n²]-n))]` -/
def P10911223505063660583.Spec : Prop :=
  ∀ n, P10911223505063660583.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P1832547711872835554

`A380118(n+1)+A034387(n+1)`
-/

namespace A072107.P1832547711872835554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380118 (n + 1) + A034387 (n + 1)

end

end A072107.P1832547711872835554

namespace A072107

/-- `A380118(n+1)+A034387(n+1)` -/
def P1832547711872835554.Spec : Prop :=
  ∀ n, P1832547711872835554.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P228253448694439426

`∑[A014963(A004277(n)-(n-1))]-1`
-/

namespace A072107.P228253448694439426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004277 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A072107.P228253448694439426

namespace A072107

/-- `∑[A014963(A004277(n)-(n-1))]-1` -/
def P228253448694439426.Spec : Prop :=
  ∀ n, P228253448694439426.a n = A072107 (n + 1)

end A072107

/-! ## A072107.P8446616591607898537

`∑[A006530(A014963(2*n-(n-1)))]`
-/

namespace A072107.P8446616591607898537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014963 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072107.P8446616591607898537

namespace A072107

/-- `∑[A006530(A014963(2*n-(n-1)))]` -/
def P8446616591607898537.Spec : Prop :=
  ∀ n, P8446616591607898537.a n = A072107 (n + 1)

end A072107

/-!
# A072108: Least k such that Sum_{i=1..k} gcd(k,i) = n * sigma(k).

The programs for A072108, there is no canonical definition to state claims against.
-/

/-! ## A072108.P17142697268586962076

`A349726(A018804((n+1)*A325633(n+1)))`
-/

namespace A072108.P17142697268586962076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349726 (A018804 ((n + 1 : ℤ) * A325633 (n + 1)).toNat).toNat

end

end A072108.P17142697268586962076

/-!
# A072109: Numbers k such that Sum_{i=1..k} gcd(k,i) divides Sum_{i=1..k} lcm(k,i).

The programs for A072109, there is no canonical definition to state claims against.
-/

/-! ## A072109.P1905729509033257939

`A004185((2*ceil(2*sqrt(n)))^n)`
-/

namespace A072109.P1905729509033257939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 ((2 * ⌈2 * Real.sqrt (n : ℝ)⌉) ^ n).toNat

end

end A072109.P1905729509033257939

/-!
# A072110: a(n) = 4*a(n-1) - a(n-2) - 2, with a(0)=1, a(1)=2.

The programs for A072110, the canonical program `A072110.P11874822658663533086` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072110 has offset 0).

The definition of A072110 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-a(n-2)-2` (program `A072110.P11874822658663533086`, by `A072110.P11874822658663533086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072110.P11874822658663533086

`4*a(n-1)-a(n-2)-2` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072110

/-- `4*a(n-1)-a(n-2)-2` -/
def P11874822658663533086.Spec : Prop :=
  ∀ n, P11874822658663533086.a n = A072110 n

theorem P11874822658663533086.correct : P11874822658663533086.Spec := by
  intro n
  simp only [A072110]

end A072110

/-! ## A072110.P12701796764010520305

`A001353(n)+1`
-/

namespace A072110.P12701796764010520305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + 1

end

end A072110.P12701796764010520305

namespace A072110

/-- `A001353(n)+1` -/
def P12701796764010520305.Spec : Prop :=
  ∀ n, P12701796764010520305.a n = A072110 n

end A072110

/-! ## A072110.P15313211783717782280

`A071954(n)/2`
-/

namespace A072110.P15313211783717782280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071954 n : ℚ) / 2

end

end A072110.P15313211783717782280

namespace A072110

/-- `A071954(n)/2` -/
def P15313211783717782280.Spec : Prop :=
  ∀ n, P15313211783717782280.a n = (A072110 n : ℚ)

end A072110

/-! ## A072110.P11552979170184303507

`∑[ogf((1-3x)/(1-4x+x^2))]`
-/

namespace A072110.P11552979170184303507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P11552979170184303507

namespace A072110

/-- `∑[ogf((1-3x)/(1-4x+x^2))]` -/
def P11552979170184303507.Spec : Prop :=
  ∀ n, P11552979170184303507.a n = A072110 n

end A072110

/-! ## A072110.P17202082353834284796

`ogf((1-3x)/(1-5x+5x^2-x^3))`
-/

namespace A072110.P17202082353834284796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -5, 5, -1] n

end

end A072110.P17202082353834284796

namespace A072110

/-- `ogf((1-3x)/(1-5x+5x^2-x^3))` -/
def P17202082353834284796.Spec : Prop :=
  ∀ n, P17202082353834284796.a n = A072110 n

end A072110

/-! ## A072110.P10847863738600742052

`∑[floor((sqrt(3)+2)*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A072110.P10847863738600742052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P10847863738600742052

namespace A072110

/-- `∑[floor((sqrt(3)+2)*a(n-1))]` -/
def P10847863738600742052.Spec : Prop :=
  ∀ n, P10847863738600742052.a n = A072110 n

end A072110

/-! ## A072110.P15000043139293073688

`floor((sqrt(3)+2)*a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A072110.P15000043139293073688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌋ - 2

end

end A072110.P15000043139293073688

namespace A072110

/-- `floor((sqrt(3)+2)*a(n-1))-2` -/
def P15000043139293073688.Spec : Prop :=
  ∀ n, P15000043139293073688.a n = A072110 n

end A072110

/-! ## A072110.P8854225255405529897

`ceil((sqrt(3)+2)*a(n-1))-3` with `a(0)=1, a(1)=2`
-/

namespace A072110.P8854225255405529897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ - 3

end

end A072110.P8854225255405529897

namespace A072110

/-- `ceil((sqrt(3)+2)*a(n-1))-3` -/
def P8854225255405529897.Spec : Prop :=
  ∀ n, P8854225255405529897.a n = A072110 n

end A072110

/-! ## A072110.P16264797893494234650

`∑[4*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A072110.P16264797893494234650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  4 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P16264797893494234650

namespace A072110

/-- `∑[4*a(n-1)-a(n-2)]` -/
def P16264797893494234650.Spec : Prop :=
  ∀ n, P16264797893494234650.a n = A072110 n

end A072110

/-! ## A072110.P11596876845526896632

`∑[lcm(4, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A072110.P11596876845526896632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.lcm 4 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P11596876845526896632

namespace A072110

/-- `∑[lcm(4, a(n-1))-a(n-2)]` -/
def P11596876845526896632.Spec : Prop :=
  ∀ n, P11596876845526896632.a n = A072110 n

end A072110

/-! ## A072110.P242464048378649295

`∑[a(n-1)/(1/2)²-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A072110.P242464048378649295
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P242464048378649295

namespace A072110

/-- `∑[a(n-1)/(1/2)²-a(n-2)]` -/
def P242464048378649295.Spec : Prop :=
  ∀ n, P242464048378649295.a n = (A072110 n : ℚ)

end A072110

/-! ## A072110.P9949781985618775360

`∑[A001835(n)]`
-/

namespace A072110.P9949781985618775360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P9949781985618775360

namespace A072110

/-- `∑[A001835(n)]` -/
def P9949781985618775360.Spec : Prop :=
  ∀ n, P9949781985618775360.a n = A072110 n

end A072110

/-! ## A072110.P9879581276700732447

`1-A106707(n)`
-/

namespace A072110.P9879581276700732447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106707 n

end

end A072110.P9879581276700732447

namespace A072110

/-- `1-A106707(n)` -/
def P9879581276700732447.Spec : Prop :=
  ∀ n, P9879581276700732447.a n = A072110 n

end A072110

/-! ## A072110.P1607449262681539102

`Δ[A101879(n)]+1`
-/

namespace A072110.P1607449262681539102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A072110.P1607449262681539102

namespace A072110

/-- `Δ[A101879(n)]+1` -/
def P1607449262681539102.Spec : Prop :=
  ∀ n, P1607449262681539102.a n = A072110 n

end A072110

/-! ## A072110.P10509151576425053421

`∑[A005246(2*n)]`
-/

namespace A072110.P10509151576425053421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P10509151576425053421

namespace A072110

/-- `∑[A005246(2*n)]` -/
def P10509151576425053421.Spec : Prop :=
  ∀ n, P10509151576425053421.a n = A072110 n

end A072110

/-! ## A072110.P8961967105538477906

`A002530(2*n)+1`
-/

namespace A072110.P8961967105538477906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (2 * n) + 1

end

end A072110.P8961967105538477906

namespace A072110

/-- `A002530(2*n)+1` -/
def P8961967105538477906.Spec : Prop :=
  ∀ n, P8961967105538477906.a n = A072110 n

end A072110

/-! ## A072110.P6218398334789940832

`A052530(n)/2+1`
-/

namespace A072110.P6218398334789940832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052530 n : ℚ) / 2 + 1

end

end A072110.P6218398334789940832

namespace A072110

/-- `A052530(n)/2+1` -/
def P6218398334789940832.Spec : Prop :=
  ∀ n, P6218398334789940832.a n = (A072110 n : ℚ)

end A072110

/-! ## A072110.P13225413837470365670

`A249578(3*n)+1`
-/

namespace A072110.P13225413837470365670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249578 (3 * n) + 1

end

end A072110.P13225413837470365670

namespace A072110

/-- `A249578(3*n)+1` -/
def P13225413837470365670.Spec : Prop :=
  ∀ n, P13225413837470365670.a n = A072110 n

end A072110

/-! ## A072110.P12861074716475139070

`∑[A122573(2*(n+1))]`
-/

namespace A072110.P12861074716475139070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122573 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072110.P12861074716475139070

namespace A072110

/-- `∑[A122573(2*(n+1))]` -/
def P12861074716475139070.Spec : Prop :=
  ∀ n, P12861074716475139070.a n = A072110 n

end A072110

/-! ## A072110.P7479266552071909847

`A079935(n)+a(n-1)` with `a(0)=1`
-/

namespace A072110.P7479266552071909847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079935 n + a (n - 1)

end

end A072110.P7479266552071909847

namespace A072110

/-- `A079935(n)+a(n-1)` -/
def P7479266552071909847.Spec : Prop :=
  ∀ n, P7479266552071909847.a n = A072110 n

end A072110

/-!
# A072111: Partial sum of pi(k) from k = 1 to 2^n.

The programs for A072111, there is no canonical definition to state claims against.
-/

/-! ## A072111.P8287239152106722752

`A046992(2^(n+1))`
-/

namespace A072111.P8287239152106722752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (2 ^ (n + 1))

end

end A072111.P8287239152106722752

/-! ## A072111.P16131079489674770007

`Δ[∑{d}[2^n, A046992(#)]]`
-/

namespace A072111.P16131079489674770007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A046992 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072111.P16131079489674770007

/-! ## A072111.P5303284998214393382

`A061536(2^(n+1))-1`
-/

namespace A072111.P5303284998214393382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (2 ^ (n + 1)) - 1

end

end A072111.P5303284998214393382

/-! ## A072111.P15809866553580678124

`record[A046992(A135530(n))]`
-/

namespace A072111.P15809866553580678124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (A135530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072111.P15809866553580678124

/-! ## A072111.P15042581368400268036

`record[A046992(sqrt(A094361(n)))]`
-/

namespace A072111.P15042581368400268036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (SequenceMachineLib.roundAway (Real.sqrt (A094361 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072111.P15042581368400268036

/-!
# A072114: Number of 3-almost primes (A014612) <= n.

The programs for A072114, the canonical program `A072114.P17969581037488263158` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072114 has offset 0).

The definition of A072114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072114.P4846258695904134708

`∑[char[eq[3, ∑{e}[n, #]]]]`
-/

namespace A072114.P4846258695904134708
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P4846258695904134708

namespace A072114

/-- `∑[char[eq[3, ∑{e}[n, #]]]]` -/
def P4846258695904134708.Spec : Prop :=
  ∀ n, (P4846258695904134708.a n : ℤ) = A072114 n

end A072114

/-! ## A072114.P4948142255457021518

`∑[char[A014612(n+1)]]`
-/

namespace A072114.P4948142255457021518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P4948142255457021518

namespace A072114

/-- `∑[char[A014612(n+1)]]` -/
def P4948142255457021518.Spec : Prop :=
  ∀ n, (P4948142255457021518.a n : ℤ) = A072114 n

end A072114

/-! ## A072114.P68723598146536316

`∑[A015582(∑{e}[n, #]+8)]`
-/

namespace A072114.P68723598146536316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015582 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P68723598146536316

namespace A072114

/-- `∑[A015582(∑{e}[n, #]+8)]` -/
def P68723598146536316.Spec : Prop :=
  ∀ n, P68723598146536316.a n = A072114 n

end A072114

/-! ## A072114.P5328022976207405271

`A101605(n)+a(n-1)` with `a(0)=0`
-/

namespace A072114.P5328022976207405271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101605 n + a (n - 1)

end

end A072114.P5328022976207405271

namespace A072114

/-- `A101605(n)+a(n-1)` -/
def P5328022976207405271.Spec : Prop :=
  ∀ n, P5328022976207405271.a n = A072114 n

end A072114

/-! ## A072114.P16977781277616669223

`∑[A015068(abs(3-∑{e}[n, #]))]`
-/

namespace A072114.P16977781277616669223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015068 |3 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P16977781277616669223

namespace A072114

/-- `∑[A015068(abs(3-∑{e}[n, #]))]` -/
def P16977781277616669223.Spec : Prop :=
  ∀ n, P16977781277616669223.a n = A072114 n

end A072114

/-! ## A072114.P13835653700417296292

`A101637(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A072114.P13835653700417296292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A101637 (2 * n) + a (n - 1)

end

end A072114.P13835653700417296292

namespace A072114

/-- `A101637(2*n)+a(n-1)` -/
def P13835653700417296292.Spec : Prop :=
  ∀ n, P13835653700417296292.a n = A072114 n

end A072114

/-! ## A072114.P13362733751393455974

`∑[char[eq[3, A001222(n+1)]+1]]`
-/

namespace A072114.P13362733751393455974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P13362733751393455974

namespace A072114

/-- `∑[char[eq[3, A001222(n+1)]+1]]` -/
def P13362733751393455974.Spec : Prop :=
  ∀ n, (P13362733751393455974.a n : ℤ) = A072114 n

end A072114

/-! ## A072114.P17969581037488263158

`∑[floor(A007814(∑{e}[n, #]+13)/4)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A072114

/-- `∑[floor(A007814(∑{e}[n, #]+13)/4)]` -/
def P17969581037488263158.Spec : Prop :=
  ∀ n, P17969581037488263158.a n = A072114 n

theorem P17969581037488263158.correct : P17969581037488263158.Spec := by
  intro n
  simp only [A072114]

end A072114

/-! ## A072114.P9895341070424508275

`∑[A101637(A008706(n))]`
-/

namespace A072114.P9895341070424508275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P9895341070424508275

namespace A072114

/-- `∑[A101637(A008706(n))]` -/
def P9895341070424508275.Spec : Prop :=
  ∀ n, P9895341070424508275.a n = A072114 n

end A072114

/-! ## A072114.P9747137741381738180

`∑[A101637(A008574(n)+n)]`
-/

namespace A072114.P9747137741381738180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A008574 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P9747137741381738180

namespace A072114

/-- `∑[A101637(A008574(n)+n)]` -/
def P9747137741381738180.Spec : Prop :=
  ∀ n, P9747137741381738180.a n = A072114 n

end A072114

/-! ## A072114.P14143143157799784696

`∑[A101637(A008458(n)-n)]`
-/

namespace A072114.P14143143157799784696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A008458 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P14143143157799784696

namespace A072114

/-- `∑[A101637(A008458(n)-n)]` -/
def P14143143157799784696.Spec : Prop :=
  ∀ n, P14143143157799784696.a n = A072114 n

end A072114

/-! ## A072114.P18209932836052794493

`∑[A101605(n+1)]-A101605(n+1)`
-/

namespace A072114.P18209932836052794493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101605 (n + 1)

end

end A072114.P18209932836052794493

namespace A072114

/-- `∑[A101605(n+1)]-A101605(n+1)` -/
def P18209932836052794493.Spec : Prop :=
  ∀ n, P18209932836052794493.a n = A072114 n

end A072114

/-! ## A072114.P10054682338680611936

`∑[A101637(2*(n+1))]-A101637(2*(n+1))`
-/

namespace A072114.P10054682338680611936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101637 (2 * (n + 1))

end

end A072114.P10054682338680611936

namespace A072114

/-- `∑[A101637(2*(n+1))]-A101637(2*(n+1))` -/
def P10054682338680611936.Spec : Prop :=
  ∀ n, P10054682338680611936.a n = A072114 n

end A072114

/-! ## A072114.P17359615491856304107

`∑[A064911(∑{e}[n, #]!)]`
-/

namespace A072114.P17359615491856304107
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072114.P17359615491856304107

namespace A072114

/-- `∑[A064911(∑{e}[n, #]!)]` -/
def P17359615491856304107.Spec : Prop :=
  ∀ n, P17359615491856304107.a n = A072114 n

end A072114

/-!
# A072116: a(n) = (2n)!/(phi(2n)!)^2.

The programs for A072116, there is no canonical definition to state claims against.
-/

/-! ## A072116.P13077289777980108214

`A000142(2*(n+1))/A001044(A000010(2*(n+1)))`
-/

namespace A072116.P13077289777980108214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (2 * (n + 1)) : ℚ) / (A001044 (A000010 (2 * (n + 1))).toNat : ℚ)

end

end A072116.P13077289777980108214

/-!
# A072118: a(n) = (2*n)!/core(n!)^2/(n+1) where core(x) is the squarefree part of x.

The programs for A072118, there is no canonical definition to state claims against.
-/

/-! ## A072118.P3656057247788585022

`A055071(n+1)²*A000108(n+1)`
-/

namespace A072118.P3656057247788585022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055071 (n + 1) ^ 2 * A000108 (n + 1)

end

end A072118.P3656057247788585022

/-!
# A072119: Least k such that k(k+1)(k+2)...(k+n) divides C(2k,k).

The programs for A072119, there is no canonical definition to state claims against.
-/

/-! ## A072119.P3177123135614048947

`A109497(A349132(n+1)^3)`
-/

namespace A072119.P3177123135614048947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A349132 (n + 1) ^ 3).toNat

end

end A072119.P3177123135614048947

/-!
# A072120: Least k such that n! divides C(2k,k).

The programs for A072120, there is no canonical definition to state claims against.
-/

/-! ## A072120.P6280208102833862910

`A324287(A001003(n)-A117525(n))`
-/

namespace A072120.P6280208102833862910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324287 (A001003 n - A117525 n).toNat

end

end A072120.P6280208102833862910

/-!
# A072121: a(1) = 1; for n > 1, a(n) = smallest number > a(n-1) having at least n divisors.

The programs for A072121, there is no canonical definition to state claims against.
-/

/-! ## A072121.P12423688463477589900

`lt[A356020(n+1), A057643(n+1)]+1`
-/

namespace A072121.P12423688463477589900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072121.P12423688463477589900

/-! ## A072121.P9330328839890806210

`lt[A087897(n), A331090(A033630(n))]`
-/

namespace A072121.P9330328839890806210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331090 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072121.P9330328839890806210

/-! ## A072121.P2872599259338681571

`∑[abs(A349382(A066843(n)))]`
-/

namespace A072121.P2872599259338681571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349382 (A066843 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072121.P2872599259338681571

/-! ## A072121.P16458692886614147861

`∑[A053828(A005378(n)!)]`
-/

namespace A072121.P16458692886614147861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (Nat.factorial (A005378 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072121.P16458692886614147861

/-! ## A072121.P13865946341252908814

`∑[A053828(∏[A151682(n)])]`
-/

namespace A072121.P13865946341252908814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072121.P13865946341252908814

/-!
# A072122: Numbers with 12 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A072122, there is no canonical definition to state claims against.
-/

/-! ## A072122.P5515056569251138599

`eq[12, A078719(A028310(n))]`
-/

namespace A072122.P5515056569251138599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072122.P5515056569251138599

/-! ## A072122.P6165940532722777315

`A020725(eq[11, A006667(n+1)])`
-/

namespace A072122.P6165940532722777315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072122.P6165940532722777315

/-! ## A072122.P13255601805350348130

`eq[12, A078719(A060000(n+1))]`
-/

namespace A072122.P13255601805350348130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072122.P13255601805350348130

/-! ## A072122.P15272489301594719333

`A354236(A155212(n+8)-3)`
-/

namespace A072122.P15272489301594719333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354236 (A155212 (n + 8) - 3).toNat

end

end A072122.P15272489301594719333

/-! ## A072122.P851139238465428089

`eq[11, A006667(A004277(n))]`
-/

namespace A072122.P851139238465428089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072122.P851139238465428089

/-! ## A072122.P1213106686803604501

`eq[11, A006667(A008574(n))]`
-/

namespace A072122.P1213106686803604501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072122.P1213106686803604501

/-!
# A072123: Remainder when Fibonacci(n) is divided by prime(n).

The programs for A072123, the canonical program `A072123.P16193012739039963475` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072123 has offset 1).

The definition of A072123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072123.P14808284791049504412

`∑[A212804(n)]%p?[A352844(n)]`
-/

namespace A072123.P14808284791049504412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A072123.P14808284791049504412

namespace A072123

/-- `∑[A212804(n)]%p?[A352844(n)]` -/
def P14808284791049504412.Spec : Prop :=
  ∀ n, P14808284791049504412.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P18150756112346972985

`A000045(n+1)%Δ[A007504(n)]`
-/

namespace A072123.P18150756112346972985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (f1 (n + 1) - f1 n)

end

end A072123.P18150756112346972985

namespace A072123

/-- `A000045(n+1)%Δ[A007504(n)]` -/
def P18150756112346972985.Spec : Prop :=
  ∀ n, P18150756112346972985.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P16193012739039963475

`A004397(n+1)%A000040(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072123

/-- `A004397(n+1)%A000040(n+1)` -/
def P16193012739039963475.Spec : Prop :=
  ∀ n, P16193012739039963475.a n = A072123 (n + 1)

theorem P16193012739039963475.correct : P16193012739039963475.Spec := by
  intro n
  simp only [A072123, Nat.add_sub_cancel]

end A072123

/-! ## A072123.P13239726659641201636

`A212804(n+2)%A000040(n+1)`
-/

namespace A072123.P13239726659641201636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (n + 2)) (A000040 (n + 1))

end

end A072123.P13239726659641201636

namespace A072123

/-- `A212804(n+2)%A000040(n+1)` -/
def P13239726659641201636.Spec : Prop :=
  ∀ n, P13239726659641201636.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P9431084931276075885

`(A000071(n+1)+1)%A000040(n+1)`
-/

namespace A072123.P9431084931276075885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000071 (n + 1) + 1) (A000040 (n + 1))

end

end A072123.P9431084931276075885

namespace A072123

/-- `(A000071(n+1)+1)%A000040(n+1)` -/
def P9431084931276075885.Spec : Prop :=
  ∀ n, P9431084931276075885.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P9818026637369816596

`(A001611(n+1)-1)%A000040(n+1)`
-/

namespace A072123.P9818026637369816596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001611 (n + 1) - 1) (A000040 (n + 1))

end

end A072123.P9818026637369816596

namespace A072123

/-- `(A001611(n+1)-1)%A000040(n+1)` -/
def P9818026637369816596.Spec : Prop :=
  ∀ n, P9818026637369816596.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P1665950934957919626

`A272912(2*n+1)%A000040(n+1)`
-/

namespace A072123.P1665950934957919626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272912 (2 * n + 1)) (A000040 (n + 1))

end

end A072123.P1665950934957919626

namespace A072123

/-- `A272912(2*n+1)%A000040(n+1)` -/
def P1665950934957919626.Spec : Prop :=
  ∀ n, P1665950934957919626.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P12384059369230928423

`A000045(n+1)-A000040(n+1)*A130732(n+1)`
-/

namespace A072123.P12384059369230928423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) - A000040 (n + 1) * A130732 (n + 1)

end

end A072123.P12384059369230928423

namespace A072123

/-- `A000045(n+1)-A000040(n+1)*A130732(n+1)` -/
def P12384059369230928423.Spec : Prop :=
  ∀ n, P12384059369230928423.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P12107038042388696524

`A123231(2*n+1)%A000040(n+1)`
-/

namespace A072123.P12107038042388696524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123231 (2 * n + 1)) (A000040 (n + 1))

end

end A072123.P12107038042388696524

namespace A072123

/-- `A123231(2*n+1)%A000040(n+1)` -/
def P12107038042388696524.Spec : Prop :=
  ∀ n, P12107038042388696524.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P8253114166619755814

`A163227(2*n+1)%A000040(n+1)`
-/

namespace A072123.P8253114166619755814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163227 (2 * n + 1)) (A000040 (n + 1))

end

end A072123.P8253114166619755814

namespace A072123

/-- `A163227(2*n+1)%A000040(n+1)` -/
def P8253114166619755814.Spec : Prop :=
  ∀ n, P8253114166619755814.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P6308914592563544562

`Δ[A000071(n+2)]%A000040(n+1)`
-/

namespace A072123.P6308914592563544562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1))

end

end A072123.P6308914592563544562

namespace A072123

/-- `Δ[A000071(n+2)]%A000040(n+1)` -/
def P6308914592563544562.Spec : Prop :=
  ∀ n, P6308914592563544562.a n = A072123 (n + 1)

end A072123

/-! ## A072123.P13409505098785429308

`A138822(n+1)%A000040(n+1)`
-/

namespace A072123.P13409505098785429308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138822 (n + 1)) (A000040 (n + 1))

end

end A072123.P13409505098785429308

namespace A072123

/-- `A138822(n+1)%A000040(n+1)` -/
def P13409505098785429308.Spec : Prop :=
  ∀ n, P13409505098785429308.a n = A072123 (n + 1)

end A072123

/-!
# A072125: Concatenation of first n entries (digits) of A007376 is not divisible by 3.

The programs for A072125, there is no canonical definition to state claims against.
-/

/-! ## A072125.P9118225860629396050

`eq[1, gcd(3, A054632(n))]`
-/

namespace A072125.P9118225860629396050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A054632 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072125.P9118225860629396050

/-! ## A072125.P13761725474669648697

`lt[0, A054632(n+1)²%3]+1`
-/

namespace A072125.P13761725474669648697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054632 (n + 1) ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072125.P13761725474669648697

/-! ## A072125.P15034366758715002399

`eq[1, A054632(abs(1-n)+1)²%3]`
-/

namespace A072125.P15034366758715002399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054632 (|1 - (n : ℤ)| + 1).toNat ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072125.P15034366758715002399

/-! ## A072125.P886652707529299747

`record[(n+1)/gcd(9, ∑[A007376(n+1)])]`
-/

namespace A072125.P886652707529299747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 9 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072125.P886652707529299747

/-! ## A072125.P2945536829509048412

`eq[1, A010142(A054632(n))]`
-/

namespace A072125.P2945536829509048412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 (A054632 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072125.P2945536829509048412

/-! ## A072125.P1508456893405371897

`eq[1, A010142(∑[A007376(n)])]`
-/

namespace A072125.P1508456893405371897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072125.P1508456893405371897

/-! ## A072125.P1100789688756371964

`eq[A010177(A054632(n)), A057427(n)]`
-/

namespace A072125.P1100789688756371964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 (A054632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072125.P1100789688756371964

/-! ## A072125.P12363753865272627746

`eq[A010177(A054632(n)), A057979(2*n)]`
-/

namespace A072125.P12363753865272627746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 (A054632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072125.P12363753865272627746

/-! ## A072125.P6040634679003345519

`A000007(n+1)+eq[1, A010177(A054632(n))]`
-/

namespace A072125.P6040634679003345519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010177 (A054632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A072125.P6040634679003345519

/-!
# A072126: Parity of the decimal digits of log(2).

The programs for A072126, there is no canonical definition to state claims against.
-/

/-! ## A072126.P5045826622328045034

`floor(A016655(n)/5)`
-/

namespace A072126.P5045826622328045034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A016655 (n + 1) : ℚ) / 5⌋

end

end A072126.P5045826622328045034

/-! ## A072126.P1058467074640770162

`A002162((n-1)%(n+1))%2`
-/

namespace A072126.P1058467074640770162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002162 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat) 2

end

end A072126.P1058467074640770162

/-! ## A072126.P10334353021193504832

`A002162(A028310(n)-1)%2`
-/

namespace A072126.P10334353021193504832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002162 (A028310 n - 1).toNat) 2

end

end A072126.P10334353021193504832

/-! ## A072126.P9416361029659533409

`and(1, A002162(A016825(n)%(n+1)))`
-/

namespace A072126.P9416361029659533409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002162 (Int.tmod (A016825 n) (n + 1 : ℤ)).toNat)

end

end A072126.P9416361029659533409

/-! ## A072126.P2258967090290046438

`and(1, A002162(A123108(2*n)-1))`
-/

namespace A072126.P2258967090290046438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002162 (A123108 (2 * n) - 1).toNat)

end

end A072126.P2258967090290046438

/-!
# A072128: Number of pairs of complex Golay sequences of length n.

The programs for A072128, there is no canonical definition to state claims against.
-/

/-! ## A072128.P14591197593682813432

`A053644(A042646(n))`
-/

namespace A072128.P14591197593682813432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A042646 n).toNat

end

end A072128.P14591197593682813432

/-! ## A072128.P4262650831046814330

`2*A145255(A022087(3*(n+1)))`
-/

namespace A072128.P4262650831046814330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145255 (A022087 (3 * (n + 1))).toNat

end

end A072128.P4262650831046814330

/-!
# A072129: Number of distinct ways of arranging the squares {1,4,9,...,(2n)^2} in a circle so that the sum of each two adjacent entries is a prime.

The programs for A072129, there is no canonical definition to state claims against.
-/

/-! ## A072129.P8814436060915335829

`A122197(A025239(n+1))*A330054(n)`
-/

namespace A072129.P8814436060915335829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (A025239 (n + 1)).toNat * A330054 n

end

end A072129.P8814436060915335829

/-! ## A072129.P9958136397279445012

`and(A253560(A000583(n+3)), A293742(n))`
-/

namespace A072129.P9958136397279445012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A253560 (A000583 (n + 3)).toNat) (A293742 n)

end

end A072129.P9958136397279445012

/-! ## A072129.P7812944164725006045

`and(A052349(n+1), A060966(A065046(n+1)))`
-/

namespace A072129.P7812944164725006045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052349 (n + 1)) (A060966 (A065046 (n + 1)).toNat)

end

end A072129.P7812944164725006045

/-!
# A072130: a(n+1) - 3*a(n) + a(n-1) = (2/3)*(1+w^(n+1)+w^(2*n+2)); a(1) = 0, a(2) = 1; where w is the cubic root of unity.

The programs for A072130, the canonical program `A072130.P12128710866314497501` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072130 has offset 1).

The definition of A072130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072130.P12128710866314497501

`3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=5, a(3)=14, a(4)=37`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072130

/-- `3*a(n-1)-a(n-2)+a(n-3)-3*a(n-4)+a(n-5)` -/
def P12128710866314497501.Spec : Prop :=
  ∀ n, P12128710866314497501.a n = A072130 (n + 1)

theorem P12128710866314497501.correct : P12128710866314497501.Spec := by
  intro n
  simp only [A072130, Nat.add_sub_cancel]

end A072130

/-! ## A072130.P1478879618786137949

`A245968(Δ[n²])`
-/

namespace A072130.P1478879618786137949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072130.P1478879618786137949

namespace A072130

/-- `A245968(Δ[n²])` -/
def P1478879618786137949.Spec : Prop :=
  ∀ n, P1478879618786137949.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P14042271319396624914

`A173495(Δ[n²])-1`
-/

namespace A072130.P14042271319396624914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173495 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A072130.P14042271319396624914

namespace A072130

/-- `A173495(Δ[n²])-1` -/
def P14042271319396624914.Spec : Prop :=
  ∀ n, P14042271319396624914.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P6671930174558905211

`floor(∑[A000032(2*n)/2])-1`
-/

namespace A072130.P6671930174558905211
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 1

end

end A072130.P6671930174558905211

namespace A072130

/-- `floor(∑[A000032(2*n)/2])-1` -/
def P6671930174558905211.Spec : Prop :=
  ∀ n, P6671930174558905211.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P7282273296184265620

`A173714(2*n)-A278718(2*n)`
-/

namespace A072130.P7282273296184265620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (2 * n) - A278718 (2 * n)

end

end A072130.P7282273296184265620

namespace A072130

/-- `A173714(2*n)-A278718(2*n)` -/
def P7282273296184265620.Spec : Prop :=
  ∀ n, P7282273296184265620.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P15759862905559395080

`A226956(2*n+1)-A010892(n)²`
-/

namespace A072130.P15759862905559395080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (2 * n + 1) - A010892 n ^ 2

end

end A072130.P15759862905559395080

namespace A072130

/-- `A226956(2*n+1)-A010892(n)²` -/
def P15759862905559395080.Spec : Prop :=
  ∀ n, P15759862905559395080.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P692324541300175855

`A173714(2*n)-Δ[A002264(n+1)]`
-/

namespace A072130.P692324541300175855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (2 * n) - (f1 (n + 1) - f1 n)

end

end A072130.P692324541300175855

namespace A072130

/-- `A173714(2*n)-Δ[A002264(n+1)]` -/
def P692324541300175855.Spec : Prop :=
  ∀ n, P692324541300175855.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P5936674378600219556

`A173714(2*n)-Δ[A008620(n+1)]`
-/

namespace A072130.P5936674378600219556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (2 * n) - (f1 (n + 1) - f1 n)

end

end A072130.P5936674378600219556

namespace A072130

/-- `A173714(2*n)-Δ[A008620(n+1)]` -/
def P5936674378600219556.Spec : Prop :=
  ∀ n, P5936674378600219556.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P16913362354742772408

`A293014(2*n)+∑[A000045(2*n)]`
-/

namespace A072130.P16913362354742772408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072130.P16913362354742772408

namespace A072130

/-- `A293014(2*n)+∑[A000045(2*n)]` -/
def P16913362354742772408.Spec : Prop :=
  ∀ n, P16913362354742772408.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P5249650506150764176

`A004695(2*(n+1))+A004695(2*n)`
-/

namespace A072130.P5249650506150764176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (2 * (n + 1)) + A004695 (2 * n)

end

end A072130.P5249650506150764176

namespace A072130

/-- `A004695(2*(n+1))+A004695(2*n)` -/
def P5249650506150764176.Spec : Prop :=
  ∀ n, P5249650506150764176.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P3216245379134778132

`A173434(2*n+1)+A000045(2*n)`
-/

namespace A072130.P3216245379134778132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173434 (2 * n + 1) + A000045 (2 * n)

end

end A072130.P3216245379134778132

namespace A072130

/-- `A173434(2*n+1)+A000045(2*n)` -/
def P3216245379134778132.Spec : Prop :=
  ∀ n, P3216245379134778132.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P11786667073813186734

`A201864(2*n+1)+A000045(2*n)`
-/

namespace A072130.P11786667073813186734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (2 * n + 1) + A000045 (2 * n)

end

end A072130.P11786667073813186734

namespace A072130

/-- `A201864(2*n+1)+A000045(2*n)` -/
def P11786667073813186734.Spec : Prop :=
  ∀ n, P11786667073813186734.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P6020368932073697284

`A147600(2*n)-A147997(2*n+1)`
-/

namespace A072130.P6020368932073697284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n) - A147997 (2 * n + 1)

end

end A072130.P6020368932073697284

namespace A072130

/-- `A147600(2*n)-A147997(2*n+1)` -/
def P6020368932073697284.Spec : Prop :=
  ∀ n, P6020368932073697284.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P12277339289418942578

`A279890(2*n+1)-A212804(2*n)`
-/

namespace A072130.P12277339289418942578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279890 (2 * n + 1) - A212804 (2 * n)

end

end A072130.P12277339289418942578

namespace A072130

/-- `A279890(2*n+1)-A212804(2*n)` -/
def P12277339289418942578.Spec : Prop :=
  ∀ n, P12277339289418942578.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P8849919914587618638

`A108014(2*n)-2*A278718(2*n)`
-/

namespace A072130.P8849919914587618638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108014 (2 * n) - 2 * A278718 (2 * n)

end

end A072130.P8849919914587618638

namespace A072130

/-- `A108014(2*n)-2*A278718(2*n)` -/
def P8849919914587618638.Spec : Prop :=
  ∀ n, P8849919914587618638.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P7938830597308761431

`A226956(2*n+1)-A128834(n+1)²`
-/

namespace A072130.P7938830597308761431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (2 * n + 1) - A128834 (n + 1) ^ 2

end

end A072130.P7938830597308761431

namespace A072130

/-- `A226956(2*n+1)-A128834(n+1)²` -/
def P7938830597308761431.Spec : Prop :=
  ∀ n, P7938830597308761431.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P3956942295734017040

`A173173(2*n+1)+A000045(2*n)-1`
-/

namespace A072130.P3956942295734017040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (2 * n + 1) + (A000045 (2 * n) - 1)

end

end A072130.P3956942295734017040

namespace A072130

/-- `A173173(2*n+1)+A000045(2*n)-1` -/
def P3956942295734017040.Spec : Prop :=
  ∀ n, P3956942295734017040.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P10605092327839477245

`A000045(2*n+1)+A293014(2*n)-1`
-/

namespace A072130.P10605092327839477245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) + (A293014 (2 * n) - 1)

end

end A072130.P10605092327839477245

namespace A072130

/-- `A000045(2*n+1)+A293014(2*n)-1` -/
def P10605092327839477245.Spec : Prop :=
  ∀ n, P10605092327839477245.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P6148338715180672488

`A226956(2*n+1)+A131532(2*n)-1`
-/

namespace A072130.P6148338715180672488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (2 * n + 1) + (A131532 (2 * n) - 1)

end

end A072130.P6148338715180672488

namespace A072130

/-- `A226956(2*n+1)+A131532(2*n)-1` -/
def P6148338715180672488.Spec : Prop :=
  ∀ n, P6148338715180672488.a n = A072130 (n + 1)

end A072130

/-! ## A072130.P11758550369076701581

`A000045(2*n)+2*A004697(2*n+1)`
-/

namespace A072130.P11758550369076701581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + 2 * A004697 (2 * n + 1)

end

end A072130.P11758550369076701581

namespace A072130

/-- `A000045(2*n)+2*A004697(2*n+1)` -/
def P11758550369076701581.Spec : Prop :=
  ∀ n, P11758550369076701581.a n = A072130 (n + 1)

end A072130

/-!
# A072131: T_7(n) in the notation of Bergeron et al., u_k(n) in the notation of Gessel: Related to Young tableaux of bounded height.

The programs for A072131, there is no canonical definition to state claims against.
-/

/-! ## A072131.P4179503816549944903

`A047888(A000124(n+6)+6)`
-/

namespace A072131.P4179503816549944903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A000124 (n + 6) + 6).toNat

end

end A072131.P4179503816549944903

/-! ## A072131.P15855985359454977223

`A047888(A052905(n+3)+12)`
-/

namespace A072131.P15855985359454977223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A052905 (n + 3) + 12).toNat

end

end A072131.P15855985359454977223

/-! ## A072131.P8769334221212085718

`A047888(eq[7, A002262(n)]-(n+7))`
-/

namespace A072131.P8769334221212085718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 7))

end

end A072131.P8769334221212085718

/-! ## A072131.P1264021791745977081

`A214015(A155212(n+5))`
-/

namespace A072131.P1264021791745977081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A155212 (n + 5)).toNat

end

end A072131.P1264021791745977081

/-! ## A072131.P3331495973226760509

`record[A214015(A056000(n+1)+2)]`
-/

namespace A072131.P3331495973226760509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A056000 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072131.P3331495973226760509

/-! ## A072131.P16294770054044906679

`record[A214015(A027379(n+3)-5)]`
-/

namespace A072131.P16294770054044906679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A027379 (n + 3) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072131.P16294770054044906679

/-! ## A072131.P13211135952435234049

`A214015(A000217(n+8)+n+1)`
-/

namespace A072131.P13211135952435234049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A072131.P13211135952435234049

/-! ## A072131.P15523670237177441697

`record[A214015(A155212(A008619(n)))]`
-/

namespace A072131.P15523670237177441697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A155212 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072131.P15523670237177441697

/-! ## A072131.P9611923161631873668

`record[A214015(A155212(A028242(n)))]`
-/

namespace A072131.P9611923161631873668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A155212 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072131.P9611923161631873668

/-! ## A072131.P11444361097467628468

`A214015(A020744(n)+A000124(n+7))`
-/

namespace A072131.P11444361097467628468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A020744 n + A000124 (n + 7)).toNat

end

end A072131.P11444361097467628468

/-!
# A072132: T_8(n) in the notation of Bergeron et al., u_k(n) in the notation of Gessel: Related to Young tableaux of bounded height.

The programs for A072132, there is no canonical definition to state claims against.
-/

/-! ## A072132.P10076086276422161408

`A047888(A000217(n+7)+8)`
-/

namespace A072132.P10076086276422161408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A000217 (n + 7) + 8).toNat

end

end A072132.P10076086276422161408

/-! ## A072132.P15068579379343762804

`record[A214015(A056000(n)+1)]`
-/

namespace A072132.P15068579379343762804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A056000 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072132.P15068579379343762804

/-! ## A072132.P18220841155925763193

`record[A214015(A155212(n)-1)]`
-/

namespace A072132.P18220841155925763193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A155212 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072132.P18220841155925763193

/-! ## A072132.P17833456578527348095

`record[A214015(A052905(n)+n)]`
-/

namespace A072132.P17833456578527348095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A052905 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072132.P17833456578527348095

/-! ## A072132.P13930492540951999332

`A214015(A000124(n+10)-10)`
-/

namespace A072132.P13930492540951999332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A000124 (n + 10) - 10).toNat

end

end A072132.P13930492540951999332

/-! ## A072132.P14400065812144967920

`record[A214015(A055999(n+1)-3)]`
-/

namespace A072132.P14400065812144967920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A055999 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072132.P14400065812144967920

/-!
# A072133: T_9(n) in the notation of Bergeron et al., u_k(n) in the notation of Gessel: Related to Young tableaux of bounded height.

The programs for A072133, there is no canonical definition to state claims against.
-/

/-! ## A072133.P753343262570251731

`A047888(A000217(n+7)+9)`
-/

namespace A072133.P753343262570251731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A000217 (n + 7) + 9).toNat

end

end A072133.P753343262570251731

/-! ## A072133.P3896083314674771249

`A047888(eq[7, A002262(n)]+2)`
-/

namespace A072133.P3896083314674771249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A072133.P3896083314674771249

/-! ## A072133.P6505559706261053366

`A214015(A056000(n+6))`
-/

namespace A072133.P6505559706261053366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A056000 (n + 6)).toNat

end

end A072133.P6505559706261053366

/-! ## A072133.P15146928947726226452

`A214015(A000096(n+9)-9)`
-/

namespace A072133.P15146928947726226452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A000096 (n + 9) - 9).toNat

end

end A072133.P15146928947726226452

/-! ## A072133.P13100871234752802877

`A214015(Δ[n²]+A000096(n+7)+9)`
-/

namespace A072133.P13100871234752802877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000096 (n + 7) + 9)).toNat

end

end A072133.P13100871234752802877

/-!
# A072134: Second generation sequence in which each number is skipped that can be written as sum of distinct previous entries. To make the first generation we start with all natural numbers: this gives the powers of 2 (A000079). For the second generation we start with the natural numbers from which are removed the numbers of the first generation.

The programs for A072134, the canonical program `A072134.P8768291983303801287` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072134 has offset 0).

The definition of A072134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072134.P8768291983303801287

`C(2, ceil(2^(n-1)))+2*3^floor(n/2)-(-1)^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072134

/-- `C(2, ceil(2^(n-1)))+2*3^floor(n/2)-(-1)^n` -/
def P8768291983303801287.Spec : Prop :=
  ∀ n, P8768291983303801287.a n = (A072134 n : ℚ)

end A072134

/-! ## A072134.P7633155563263546232

`A062547(n)+C(A029837(n+3), A274396(n+1))`
-/

namespace A072134.P7633155563263546232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 n + (Nat.choose (A029837 (n + 3)).toNat (A274396 (n + 1)).toNat : ℤ)

end

end A072134.P7633155563263546232

namespace A072134

/-- `A062547(n)+C(A029837(n+3), A274396(n+1))` -/
def P7633155563263546232.Spec : Prop :=
  ∀ n, P7633155563263546232.a n = A072134 n

end A072134

/-! ## A072134.P1302542643754932988

`A062547(n)+C(2, A000142(n))`
-/

namespace A072134.P1302542643754932988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062547 n + (Nat.choose 2 (A000142 n).toNat : ℤ)

end

end A072134.P1302542643754932988

namespace A072134

/-- `A062547(n)+C(2, A000142(n))` -/
def P1302542643754932988.Spec : Prop :=
  ∀ n, P1302542643754932988.a n = A072134 n

end A072134

/-! ## A072134.P16777572272422979983

`A105348(A258308(n))+A062547(n)`
-/

namespace A072134.P16777572272422979983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (A258308 n).toNat + A062547 n

end

end A072134.P16777572272422979983

namespace A072134

/-- `A105348(A258308(n))+A062547(n)` -/
def P16777572272422979983.Spec : Prop :=
  ∀ n, P16777572272422979983.a n = A072134 n

end A072134

/-! ## A072134.P16755697336010524361

`A105348(A273162(n+1))+A062547(n)`
-/

namespace A072134.P16755697336010524361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (A273162 (n + 1)).toNat + A062547 n

end

end A072134.P16755697336010524361

namespace A072134

/-- `A105348(A273162(n+1))+A062547(n)` -/
def P16755697336010524361.Spec : Prop :=
  ∀ n, P16755697336010524361.a n = A072134 n

end A072134

/-!
# A072136: Position of the first zero in the fractional part of the base n expansion of Pi.

The programs for A072136, there is no canonical definition to state claims against.
-/

/-! ## A072136.P5948194624490447661

`∏{e}[a(n-1)*∑[∑[n]], #]` with `a(0)=3, a(1)=0, a(2)=2, a(3)=0, a(4)=2, a(5)=1`
-/

namespace A072136.P5948194624490447661
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 2, 0, 2, 1] fun n f1 =>
  f1 (n - 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A072136.P5948194624490447661

/-! ## A072136.P755991483244029170

`A198317(or(7, ∑[n]))`
-/

namespace A072136.P755991483244029170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (Nat.lor 7 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A072136.P755991483244029170

/-! ## A072136.P7183481074452413067

`ceil(A029893(n+1)/68)`
-/

namespace A072136.P7183481074452413067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A029893 (n + 1) : ℚ) / 68⌉

end

end A072136.P7183481074452413067

/-! ## A072136.P6263540709384095269

`A117535(C(floor((n/2)²), ∏{p}[n+1, #]+1))`
-/

namespace A072136.P6263540709384095269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (Nat.choose ⌊((n : ℚ) / 2) ^ 2⌋.toNat (∏ p ∈ Nat.primeFactors (f1 n), p + 1))

end

end A072136.P6263540709384095269

/-! ## A072136.P713498938385538802

`A018744(A068038(n))`
-/

namespace A072136.P713498938385538802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018744 (A068038 n).toNat

end

end A072136.P713498938385538802

/-!
# A072137: Length of the preperiodic part of the 'Reverse and Subtract' trajectory of n.

The programs for A072137, there is no canonical definition to state claims against.
-/

/-! ## A072137.P2564438662672684028

`A151962(A000196(n²))`
-/

namespace A072137.P2564438662672684028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (A000196 (n ^ 2)).toNat

end

end A072137.P2564438662672684028

/-! ## A072137.P1570744174822941046

`A151962(A037213(n²))`
-/

namespace A072137.P1570744174822941046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (A037213 (n ^ 2)).toNat

end

end A072137.P1570744174822941046

/-! ## A072137.P10592428636301829106

`A151962(A038690(n²))`
-/

namespace A072137.P10592428636301829106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 (A038690 (n ^ 2)).toNat

end

end A072137.P10592428636301829106

/-! ## A072137.P17574246561014069325

`A010052(n²)*A151962(n)`
-/

namespace A072137.P17574246561014069325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n ^ 2) * A151962 n

end

end A072137.P17574246561014069325

/-! ## A072137.P17771579080700632755

`A151962(n)+A053186(A000290(n))`
-/

namespace A072137.P17771579080700632755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151962 n + A053186 (A000290 n).toNat

end

end A072137.P17771579080700632755

/-! ## A072137.P12309225727227810389

`and(A151142(n), A151962(n))`
-/

namespace A072137.P12309225727227810389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151142 n) (A151962 n)

end

end A072137.P12309225727227810389

/-! ## A072137.P14876924604884913717

`and(A151142(n), A343383(n))`
-/

namespace A072137.P14876924604884913717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151142 n) (A343383 n)

end

end A072137.P14876924604884913717

/-! ## A072137.P3150944804990438420

`and(A058000(n+1), A151962(n))`
-/

namespace A072137.P3150944804990438420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A151962 n)

end

end A072137.P3150944804990438420

/-! ## A072137.P16098418725772737597

`and(A084403(n+1), A151962(n))`
-/

namespace A072137.P16098418725772737597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A084403 (n + 1)) (A151962 n)

end

end A072137.P16098418725772737597

/-! ## A072137.P9017870601301748049

`and(A137050(n+1), A151962(n))`
-/

namespace A072137.P9017870601301748049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137050 (n + 1)) (A151962 n)

end

end A072137.P9017870601301748049

/-!
# A072138: Smallest k whose 'Reverse and Subtract' trajectory has a preperiodic part of length n.

The programs for A072138, there is no canonical definition to state claims against.
-/

/-! ## A072138.P16805667928593986727

`A004184(A109891(n))`
-/

namespace A072138.P16805667928593986727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A109891 n).toNat

end

end A072138.P16805667928593986727

/-! ## A072138.P16937501420810352640

`A109891(A055647(n))`
-/

namespace A072138.P16937501420810352640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109891 (A055647 n).toNat

end

end A072138.P16937501420810352640

/-! ## A072138.P700212868841531683

`A109891(A057846(n))`
-/

namespace A072138.P700212868841531683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109891 (A057846 n).toNat

end

end A072138.P700212868841531683

/-! ## A072138.P17381426093711932747

`A109891(A181940(∑[n]))`
-/

namespace A072138.P17381426093711932747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109891 (A181940 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A072138.P17381426093711932747

/-! ## A072138.P1735618942798955525

`A023443(A109891(n)+1)`
-/

namespace A072138.P1735618942798955525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A109891 n + 1).toNat

end

end A072138.P1735618942798955525

/-!
# A072140: The period length of the 'Reverse and Subtract' trajectory of n is greater than 1.

The programs for A072140, there is no canonical definition to state claims against.
-/

/-! ## A072140.P413428656102985160

`A317291(A306593(n+2)+A008621(n))`
-/

namespace A072140.P413428656102985160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317291 (A306593 (n + 2) + A008621 n).toNat

end

end A072140.P413428656102985160

/-! ## A072140.P13718850690469422605

`A317291(A309793(n)+A219327(n+3))`
-/

namespace A072140.P13718850690469422605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317291 (A309793 n + A219327 (n + 3)).toNat

end

end A072140.P13718850690469422605

/-! ## A072140.P844423635192923950

`A317291(A309793(n)+A306593(n+3))`
-/

namespace A072140.P844423635192923950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317291 (A309793 n + A306593 (n + 3)).toNat

end

end A072140.P844423635192923950

/-!
# A072141: Numbers n such that two applications of 'Reverse and Subtract' lead to n, whereas one application does not lead to n.

The programs for A072141, there is no canonical definition to state claims against.
-/

/-! ## A072141.P13274764099647693278

`∪[A008918(n+1), A101704(n+2)]`
-/

namespace A072141.P13274764099647693278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101704 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072141.P13274764099647693278

/-! ## A072141.P9646335344049648831

`∪[2*A001232(n+1), A101704(n+2)]`
-/

namespace A072141.P9646335344049648831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101704 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072141.P9646335344049648831

/-! ## A072141.P15500127803014545415

`∪[6*A001232(n+1), A008918(n+1)]`
-/

namespace A072141.P15500127803014545415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A001232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072141.P15500127803014545415

/-! ## A072141.P2315844424474804998

`(3-A008919(n+1)%2)*A008919(n+1)`
-/

namespace A072141.P2315844424474804998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - Int.tmod (A008919 (n + 1)) 2) * A008919 (n + 1)

end

end A072141.P2315844424474804998

/-! ## A072141.P1681413698384148496

`∪[A008918(n+1), A285040(n+1)+A008918(n+1)]`
-/

namespace A072141.P1681413698384148496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285040 (n + 1) + A008918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072141.P1681413698384148496

/-! ## A072141.P14019712626662343653

`∪[A008918(n+1), A222815(n+1)-A008918(n+1)]`
-/

namespace A072141.P14019712626662343653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222815 (n + 1) - A008918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072141.P14019712626662343653

/-!
# A072146: Numbers n with property that n sets a new record for the length of the preperiodic part of the 'Reverse and Subtract' trajectory of n.

The programs for A072146, there is no canonical definition to state claims against.
-/

/-! ## A072146.P10759532472790747889

`A072138(A072147(n+1))`
-/

namespace A072146.P10759532472790747889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072138 (A072147 (n + 1)).toNat

end

end A072146.P10759532472790747889

/-! ## A072146.P6507078690037696764

`A109891(A072147(comp[11*n]))`
-/

namespace A072146.P6507078690037696764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109891 (A072147 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A072146.P6507078690037696764

/-! ## A072146.P18319095520119299432

`A109891(A072147(n+1)+A006927(n))`
-/

namespace A072146.P18319095520119299432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109891 (A072147 (n + 1) + A006927 n).toNat

end

end A072146.P18319095520119299432

/-! ## A072146.P2355471484146620446

`A109891(A072147(n+1)+A033665(n))`
-/

namespace A072146.P2355471484146620446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109891 (A072147 (n + 1) + A033665 n).toNat

end

end A072146.P2355471484146620446

/-! ## A072146.P10389882257200495296

`A109891(A072147(n+1)+A056965(n))`
-/

namespace A072146.P10389882257200495296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109891 (A072147 (n + 1) + A056965 n).toNat

end

end A072146.P10389882257200495296

/-!
# A072147: Records for the length of the preperiodic part of the 'Reverse and Subtract' trajectories.

The programs for A072147, there is no canonical definition to state claims against.
-/

/-! ## A072147.P8842594556439083624

`eq[A004736(A091595(n)), A320536(n+2)]`
-/

namespace A072147.P8842594556439083624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A091595 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072147.P8842594556439083624

/-!
# A072150: Coordination sequence for AlPO_4-11 structure with respect to node (Y) where decagon, hexagon and square meet and is adjacent to node of type (X).

The programs for A072150, the canonical program `A072150.P7899580344826784914` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072150 has offset 0).

The definition of A072150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072150.P7899580344826784914

`A008486(n)-A002264(A265667(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A072150

/-- `A008486(n)-A002264(A265667(n+1))` -/
def P7899580344826784914.Spec : Prop :=
  ∀ n, P7899580344826784914.a n = A072150 n

theorem P7899580344826784914.correct : P7899580344826784914.Spec := by
  intro n
  simp only [A072150]

end A072150

/-! ## A072150.P8373136506316275305

`A008574(n)-A002264(A265667(n+1))-n`
-/

namespace A072150.P8373136506316275305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A002264 (A265667 (n + 1)).toNat - (n : ℤ)

end

end A072150.P8373136506316275305

namespace A072150

/-- `A008574(n)-A002264(A265667(n+1))-n` -/
def P8373136506316275305.Spec : Prop :=
  ∀ n, P8373136506316275305.a n = A072150 n

end A072150

/-! ## A072150.P15844179925796700456

`A004275(n+1)-A002264(A265667(n+1))+n`
-/

namespace A072150.P15844179925796700456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) - A002264 (A265667 (n + 1)).toNat + (n : ℤ)

end

end A072150.P15844179925796700456

namespace A072150

/-- `A004275(n+1)-A002264(A265667(n+1))+n` -/
def P15844179925796700456.Spec : Prop :=
  ∀ n, P15844179925796700456.a n = A072150 n

end A072150

/-! ## A072150.P9782410832333757817

`A004396(A315563(n))-A265187(n+1)`
-/

namespace A072150.P9782410832333757817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315563 n).toNat - A265187 (n + 1)

end

end A072150.P9782410832333757817

namespace A072150

/-- `A004396(A315563(n))-A265187(n+1)` -/
def P9782410832333757817.Spec : Prop :=
  ∀ n, P9782410832333757817.a n = A072150 n

end A072150

/-! ## A072150.P8869969293685523715

`A004525(A008458(n))-A002264(A265667(n+1))`
-/

namespace A072150.P8869969293685523715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008458 n).toNat - A002264 (A265667 (n + 1)).toNat

end

end A072150.P8869969293685523715

namespace A072150

/-- `A004525(A008458(n))-A002264(A265667(n+1))` -/
def P8869969293685523715.Spec : Prop :=
  ∀ n, P8869969293685523715.a n = A072150 n

end A072150

/-!
# A072151: Coordination sequence for AlPO_4-11 structure with respect to node (Z) where decagon, hexagon and square meet and is not adjacent to node of type (X).

The programs for A072151, there is no canonical definition to state claims against.
-/

/-! ## A072151.P17220322866111725663

`A124766(A301754(n+1))+A007094(2*n)`
-/

namespace A072151.P17220322866111725663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A301754 (n + 1)).toNat + A007094 (2 * n)

end

end A072151.P17220322866111725663

/-!
# A072153: Coordination sequence for VPl-5 structure with respect to node (Y) where 18-gon, hexagon and square meet.

The programs for A072153, the canonical program `A072153.P15671203336583528979` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072153 has offset 0).

The definition of A072153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1945 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072153.P15671203336583528979

`A004396(A315634(n))-A004525(3*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072153

/-- `A004396(A315634(n))-A004525(3*n)` -/
def P15671203336583528979.Spec : Prop :=
  ∀ n, P15671203336583528979.a n = A072153 n

theorem P15671203336583528979.correct : P15671203336583528979.Spec := by
  intro n
  simp only [A072153]

end A072153

/-!
# A072154: Coordination sequence for the planar net 4.6.12.

The programs for A072154, the canonical program `A072154.P2000532468975015435` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072154 has offset 0).

The definition of A072154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072154.P13738614352505545187

`comp[a(n-2)+7]+n` with `a(0)=0, a(1)=6, a(2)=8`
-/

namespace A072154.P13738614352505545187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6, 8] fun n f1 =>
  f1 (n - 2) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n

end

end A072154.P13738614352505545187

namespace A072154

/-- `comp[a(n-2)+7]+n` -/
def P13738614352505545187.Spec : Prop :=
  ∀ n, (P13738614352505545187.a n : ℤ) = A072154 n

end A072154

/-! ## A072154.P2000532468975015435

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2, a(5)=3, a(6)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072154

/-- `∑[floor(a(n-5))]` -/
def P2000532468975015435.Spec : Prop :=
  ∀ n, (P2000532468975015435.a n : ℤ) = A072154 n

theorem P2000532468975015435.correct : P2000532468975015435.Spec := by
  intro n
  simp only [A072154]

end A072154

/-! ## A072154.P7183603197158258034

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9, a(5)=12, a(6)=15`
-/

namespace A072154.P7183603197158258034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 9, 12, 15] fun n a =>
  a (n - 1) + a (n - 5) - a (n - 6)

end

end A072154.P7183603197158258034

namespace A072154

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P7183603197158258034.Spec : Prop :=
  ∀ n, P7183603197158258034.a n = A072154 n

end A072154

/-! ## A072154.P14870984654536168666

`A250120(n)-2*comp[Δ[lcm(3, n)]]`
-/

namespace A072154.P14870984654536168666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A072154.P14870984654536168666

namespace A072154

/-- `A250120(n)-2*comp[Δ[lcm(3, n)]]` -/
def P14870984654536168666.Spec : Prop :=
  ∀ n, P14870984654536168666.a n = A072154 n

end A072154

/-! ## A072154.P4639730574494049460

`comp[∑[A177499(2*(n+1))+1]]+1+n`
-/

namespace A072154.P4639730574494049460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (2 * (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 + n

end

end A072154.P4639730574494049460

namespace A072154

/-- `comp[∑[A177499(2*(n+1))+1]]+1+n` -/
def P4639730574494049460.Spec : Prop :=
  ∀ n, (P4639730574494049460.a n : ℤ) = A072154 n

end A072154

/-! ## A072154.P6718149200171364229

`A301729(A047448(n+1))`
-/

namespace A072154.P6718149200171364229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (A047448 (n + 1)).toNat

end

end A072154.P6718149200171364229

namespace A072154

/-- `A301729(A047448(n+1))` -/
def P6718149200171364229.Spec : Prop :=
  ∀ n, P6718149200171364229.a n = A072154 n

end A072154

/-! ## A072154.P10385690808574062403

`A047363(n+1)+A028310(n)`
-/

namespace A072154.P10385690808574062403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + A028310 n

end

end A072154.P10385690808574062403

namespace A072154

/-- `A047363(n+1)+A028310(n)` -/
def P10385690808574062403.Spec : Prop :=
  ∀ n, P10385690808574062403.a n = A072154 n

end A072154

/-! ## A072154.P16801938164882806958

`A008574(n)-A047486(n+1)`
-/

namespace A072154.P16801938164882806958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A047486 (n + 1)

end

end A072154.P16801938164882806958

namespace A072154

/-- `A008574(n)-A047486(n+1)` -/
def P16801938164882806958.Spec : Prop :=
  ∀ n, P16801938164882806958.a n = A072154 n

end A072154

/-! ## A072154.P5656680355890142781

`A250120(n)-A151988(2*n)`
-/

namespace A072154.P5656680355890142781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A151988 (2 * n)

end

end A072154.P5656680355890142781

namespace A072154

/-- `A250120(n)-A151988(2*n)` -/
def P5656680355890142781.Spec : Prop :=
  ∀ n, P5656680355890142781.a n = A072154 n

end A072154

/-! ## A072154.P969180453161572618

`2*A265078(n)-A299258(n)`
-/

namespace A072154.P969180453161572618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265078 n - A299258 n

end

end A072154.P969180453161572618

namespace A072154

/-- `2*A265078(n)-A299258(n)` -/
def P969180453161572618.Spec : Prop :=
  ∀ n, P969180453161572618.a n = A072154 n

end A072154

/-! ## A072154.P13284840209751515572

`∪[A092242(n+1), A136290(n)]`
-/

namespace A072154.P13284840209751515572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072154.P13284840209751515572

namespace A072154

/-- `∪[A092242(n+1), A136290(n)]` -/
def P13284840209751515572.Spec : Prop :=
  ∀ n, (P13284840209751515572.a n : ℤ) = A072154 n

end A072154

/-! ## A072154.P5223304961890716129

`∪[A263536(n+1), A136290(n)]`
-/

namespace A072154.P5223304961890716129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072154.P5223304961890716129

namespace A072154

/-- `∪[A263536(n+1), A136290(n)]` -/
def P5223304961890716129.Spec : Prop :=
  ∀ n, (P5223304961890716129.a n : ℤ) = A072154 n

end A072154

/-! ## A072154.P10693000405953128014

`A250120(n)-2*A047263(n+1)`
-/

namespace A072154.P10693000405953128014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - 2 * A047263 (n + 1)

end

end A072154.P10693000405953128014

namespace A072154

/-- `A250120(n)-2*A047263(n+1)` -/
def P10693000405953128014.Spec : Prop :=
  ∀ n, P10693000405953128014.a n = A072154 n

end A072154

/-! ## A072154.P7926962264471068691

`A047309(n+1)+A004273(n)-n`
-/

namespace A072154.P7926962264471068691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1) + (A004273 n - (n : ℤ))

end

end A072154.P7926962264471068691

namespace A072154

/-- `A047309(n+1)+A004273(n)-n` -/
def P7926962264471068691.Spec : Prop :=
  ∀ n, P7926962264471068691.a n = A072154 n

end A072154

/-! ## A072154.P4578588112916666806

`A047363(n+1)+A004277(n)-n`
-/

namespace A072154.P4578588112916666806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (A004277 n - (n : ℤ))

end

end A072154.P4578588112916666806

namespace A072154

/-- `A047363(n+1)+A004277(n)-n` -/
def P4578588112916666806.Spec : Prop :=
  ∀ n, P4578588112916666806.a n = A072154 n

end A072154

/-! ## A072154.P6390550768647612867

`A008486(n)-A047486(n+1)+n`
-/

namespace A072154.P6390550768647612867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A047486 (n + 1) + (n : ℤ)

end

end A072154.P6390550768647612867

namespace A072154

/-- `A008486(n)-A047486(n+1)+n` -/
def P6390550768647612867.Spec : Prop :=
  ∀ n, P6390550768647612867.a n = A072154 n

end A072154

/-! ## A072154.P6800343574135717416

`A047363(n+1)+gcd(n, A008574(n))`
-/

namespace A072154.P6800343574135717416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + (Int.gcd (n : ℤ) (A008574 n) : ℤ)

end

end A072154.P6800343574135717416

namespace A072154

/-- `A047363(n+1)+gcd(n, A008574(n))` -/
def P6800343574135717416.Spec : Prop :=
  ∀ n, P6800343574135717416.a n = A072154 n

end A072154

/-! ## A072154.P8574248148985762513

`2*A008486(2*n)-A250120(2*n)`
-/

namespace A072154.P8574248148985762513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008486 (2 * n) - A250120 (2 * n)

end

end A072154.P8574248148985762513

namespace A072154

/-- `2*A008486(2*n)-A250120(2*n)` -/
def P8574248148985762513.Spec : Prop :=
  ∀ n, P8574248148985762513.a n = A072154 n

end A072154

/-!
# A072155: Denominator of Sum_{k=1..n} phi(k)/k.

The programs for A072155, there is no canonical definition to state claims against.
-/

/-! ## A072155.P16975539651265128350

`(A250034(n+1)+A071708(n+1))/(n+2)`
-/

namespace A072155.P16975539651265128350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250034 (n + 1) + A071708 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A072155.P16975539651265128350

/-! ## A072155.P10928919369950227157

`gcd((n+1)*A250033(n+1), A250033(n+2))`
-/

namespace A072155.P10928919369950227157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) * A250033 (n + 1)) (A250033 (n + 2))

end

end A072155.P10928919369950227157

/-! ## A072155.P3249230419945389252

`gcd(A083346(A002805(n+1)), A250033(n+2))`
-/

namespace A072155.P3249230419945389252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083346 (A002805 (n + 1)).toNat) (A250033 (n + 2))

end

end A072155.P3249230419945389252

/-! ## A072155.P10379983764922604268

`A007913(∏[A210437(n+1)])`
-/

namespace A072155.P10379983764922604268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072155.P10379983764922604268

/-! ## A072155.P16876263528006206827

`A083346(A002805(n+1)*A112857(n))`
-/

namespace A072155.P16876263528006206827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A002805 (n + 1) * A112857 n).toNat

end

end A072155.P16876263528006206827

/-!
# A072156: Numerator of Sum_{k=1..n} phi(k)/k^2.

The programs for A072156, there is no canonical definition to state claims against.
-/

/-! ## A072156.P1362483006773529556

`A051724(A125796(n)+A036234(2*(n+1)))`
-/

namespace A072156.P1362483006773529556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A125796 n + A036234 (2 * (n + 1))).toNat

end

end A072156.P1362483006773529556

/-!
# A072157: Denominator of Sum_{k=1..n} phi(k)/k^2.

The programs for A072157, there is no canonical definition to state claims against.
-/

/-! ## A072157.P16983885763033016055

`A064549(∏[A332881(n+1)])`
-/

namespace A072157.P16983885763033016055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A072157.P16983885763033016055

/-! ## A072157.P11985592131466622965

`lcm(A000027(a(n-1)), A065642(n+1))` with `a(0)=1`
-/

namespace A072157.P11985592131466622965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (A000027 (a (n - 1))) (A065642 (n + 1))

end

end A072157.P11985592131466622965

/-! ## A072157.P11454299043967499758

`∏{p}[A055772(2*n+3), #]*A003418(n+1)`
-/

namespace A072157.P11454299043967499758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055772 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A003418 (n + 1)

end

end A072157.P11454299043967499758

/-! ## A072157.P9382988611499499331

`A034386(A032559(n+1))*A058312(n+1)`
-/

namespace A072157.P9382988611499499331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (A032559 (n + 1)).toNat * A058312 (n + 1)

end

end A072157.P9382988611499499331

/-! ## A072157.P8515056454211921681

`A007947(A253901(n+2))*A058312(n+1)`
-/

namespace A072157.P8515056454211921681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A253901 (n + 2)).toNat * A058312 (n + 1)

end

end A072157.P8515056454211921681

/-!
# A072159: Denominator of Sum_{k=1..n} phi(k)/k^3.

The programs for A072159, there is no canonical definition to state claims against.
-/

/-! ## A072159.P3955615237940124505

`A000290(A002805(n+1))*A034386(n+1)`
-/

namespace A072159.P3955615237940124505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002805 (n + 1)).toNat * A034386 (n + 1)

end

end A072159.P3955615237940124505

/-! ## A072159.P7879555914885622863

`A019555(A002805(n+1))*A068589(n+1)`
-/

namespace A072159.P7879555914885622863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A002805 (n + 1)).toNat * A068589 (n + 1)

end

end A072159.P7879555914885622863

/-! ## A072159.P5068326043687677443

`A019555(A058312(n+1))*A103931(n+1)`
-/

namespace A072159.P5068326043687677443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A058312 (n + 1)).toNat * A103931 (n + 1)

end

end A072159.P5068326043687677443

/-! ## A072159.P8959514064067631557

`A019555(A069047(n+1))*A103931(n+1)`
-/

namespace A072159.P8959514064067631557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A069047 (n + 1)).toNat * A103931 (n + 1)

end

end A072159.P8959514064067631557

/-! ## A072159.P2835450120171309382

`A019555(A213999(∑[n+2]-1))*A068589(n+1)`
-/

namespace A072159.P2835450120171309382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A213999 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat * A068589 (n + 1)

end

end A072159.P2835450120171309382

/-!
# A072161: Denominator of Sum_{k=1..n} phi(k)/k^4.

The programs for A072161, there is no canonical definition to state claims against.
-/

/-! ## A072161.P16175000271667840621

`∏{p}[A002805(n+1), #]*A069045(n+1)`
-/

namespace A072161.P16175000271667840621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) * A069045 (n + 1)

end

end A072161.P16175000271667840621

/-! ## A072161.P3895082164029335241

`A058312(n+1)²*A236563(A058312(n+1))`
-/

namespace A072161.P3895082164029335241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (n + 1) ^ 2 * A236563 (A058312 (n + 1)).toNat

end

end A072161.P3895082164029335241

/-! ## A072161.P18006716394923437156

`A085911(n+1)²*A236563(A085911(n+1))`
-/

namespace A072161.P18006716394923437156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085911 (n + 1) ^ 2 * A236563 (A085911 (n + 1)).toNat

end

end A072161.P18006716394923437156

/-!
# A072162: (Prime(n)+prime(n+1)+prime(n+2))/(n+1) is an integer; sequence gives prime(n).

The programs for A072162, there is no canonical definition to state claims against.
-/

/-! ## A072162.P13545942863984118037

`A141637(A123891(n))`
-/

namespace A072162.P13545942863984118037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141637 (A123891 n).toNat

end

end A072162.P13545942863984118037

/-!
# A072164: Numbers k >= 1 such that f(k) = k^k - (k-1)^(k-1) is prime.

The programs for A072164, there is no canonical definition to state claims against.
-/

/-! ## A072164.P18085856846586533766

`A140669(n+1)+1`
-/

namespace A072164.P18085856846586533766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140669 (n + 1) + 1

end

end A072164.P18085856846586533766

/-! ## A072164.P13747304251467078472

`A020725(A140669(n+1))`
-/

namespace A072164.P13747304251467078472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A140669 (n + 1)).toNat

end

end A072164.P13747304251467078472

/-! ## A072164.P11671116804415171887

`A173933(A191828(n))+1`
-/

namespace A072164.P11671116804415171887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173933 (A191828 n).toNat + 1

end

end A072164.P11671116804415171887

/-!
# A072165: Values of Moebius function of the products of two (not necessarily distinct) primes (semiprimes or 2-almost primes, A001358).

The programs for A072165, the canonical program `A072165.P14513375344439937773` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072165 has offset 1).

The definition of A072165 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072165.P14513375344439937773

`A008683(A001358(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A072165

/-- `A008683(A001358(n+1))` -/
def P14513375344439937773.Spec : Prop :=
  ∀ n, P14513375344439937773.a n = A072165 (n + 1)

theorem P14513375344439937773.correct : P14513375344439937773.Spec := by
  intro n
  simp only [A072165, Nat.add_sub_cancel]

end A072165

/-! ## A072165.P14140460563363007154

`log2(gcd(2, A083681(n+1)))`
-/

namespace A072165.P14140460563363007154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A083681 (n + 1)) : ℝ)

end

end A072165.P14140460563363007154

namespace A072165

/-- `log2(gcd(2, A083681(n+1)))` -/
def P14140460563363007154.Spec : Prop :=
  ∀ n, P14140460563363007154.a n = (A072165 (n + 1) : ℝ)

end A072165

/-! ## A072165.P8021289837637009237

`char[lt[0, A176506(n+1)]]`
-/

namespace A072165.P8021289837637009237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A072165.P8021289837637009237

namespace A072165

/-- `char[lt[0, A176506(n+1)]]` -/
def P8021289837637009237.Spec : Prop :=
  ∀ n, (P8021289837637009237.a n : ℤ) = A072165 (n + 1)

end A072165

/-! ## A072165.P17417826113596945817

`char[lt[1, A138510(n+1)]]`
-/

namespace A072165.P17417826113596945817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138510 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A072165.P17417826113596945817

namespace A072165

/-- `char[lt[1, A138510(n+1)]]` -/
def P17417826113596945817.Spec : Prop :=
  ∀ n, (P17417826113596945817.a n : ℤ) = A072165 (n + 1)

end A072165

/-! ## A072165.P1945731517092678653

`A057427(A176506(n+1))`
-/

namespace A072165.P1945731517092678653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A176506 (n + 1)).toNat

end

end A072165.P1945731517092678653

namespace A072165

/-- `A057427(A176506(n+1))` -/
def P1945731517092678653.Spec : Prop :=
  ∀ n, P1945731517092678653.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P5436274748090818872

`A359834(A075818(n+1))`
-/

namespace A072165.P5436274748090818872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (A075818 (n + 1)).toNat

end

end A072165.P5436274748090818872

namespace A072165

/-- `A359834(A075818(n+1))` -/
def P5436274748090818872.Spec : Prop :=
  ∀ n, P5436274748090818872.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P14943130071498026048

`A008683(sqrt(A074985(n+1)))`
-/

namespace A072165.P14943130071498026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A072165.P14943130071498026048

namespace A072165

/-- `A008683(sqrt(A074985(n+1)))` -/
def P14943130071498026048.Spec : Prop :=
  ∀ n, P14943130071498026048.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P18115270318610926159

`A008683(A088707(n+1)-1)`
-/

namespace A072165.P18115270318610926159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A088707 (n + 1) - 1).toNat

end

end A072165.P18115270318610926159

namespace A072165

/-- `A008683(A088707(n+1)-1)` -/
def P18115270318610926159.Spec : Prop :=
  ∀ n, P18115270318610926159.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P6819896062670790459

`A138532(C(2, A138510(n+1)))`
-/

namespace A072165.P6819896062670790459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138532 (Nat.choose 2 (A138510 (n + 1)).toNat)

end

end A072165.P6819896062670790459

namespace A072165

/-- `A138532(C(2, A138510(n+1)))` -/
def P6819896062670790459.Spec : Prop :=
  ∀ n, P6819896062670790459.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P5374606276077597609

`A001221(A075818(n+1)/2)-1`
-/

namespace A072165.P5374606276077597609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat - 1

end

end A072165.P5374606276077597609

namespace A072165

/-- `A001221(A075818(n+1)/2)-1` -/
def P5374606276077597609.Spec : Prop :=
  ∀ n, P5374606276077597609.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P10952435559608528742

`A008683(eq[2, A001222(n+1)]+1)`
-/

namespace A072165.P10952435559608528742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072165.P10952435559608528742

namespace A072165

/-- `A008683(eq[2, A001222(n+1)]+1)` -/
def P10952435559608528742.Spec : Prop :=
  ∀ n, P10952435559608528742.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P13547272084590582646

`A176506(n+1)-A089994(n+1)`
-/

namespace A072165.P13547272084590582646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1) - A089994 (n + 1)

end

end A072165.P13547272084590582646

namespace A072165

/-- `A176506(n+1)-A089994(n+1)` -/
def P13547272084590582646.Spec : Prop :=
  ∀ n, P13547272084590582646.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P872540643600289198

`A008966(A001358(2*n+1-n))`
-/

namespace A072165.P872540643600289198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A001358 (2 * n + 1 - n)).toNat

end

end A072165.P872540643600289198

namespace A072165

/-- `A008966(A001358(2*n+1-n))` -/
def P872540643600289198.Spec : Prop :=
  ∀ n, P872540643600289198.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P2949618598457745045

`1-∑{e}[A001358(n+1), A001222(#)]`
-/

namespace A072165.P2949618598457745045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A072165.P2949618598457745045

namespace A072165

/-- `1-∑{e}[A001358(n+1), A001222(#)]` -/
def P2949618598457745045.Spec : Prop :=
  ∀ n, P2949618598457745045.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P2943212633655599965

`A001221(eq[2, A001222(n+1)]+1)-1`
-/

namespace A072165.P2943212633655599965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A072165.P2943212633655599965

namespace A072165

/-- `A001221(eq[2, A001222(n+1)]+1)-1` -/
def P2943212633655599965.Spec : Prop :=
  ∀ n, P2943212633655599965.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P14963511236735955506

`A000005(eq[2, A001222(n+1)]+1)-3`
-/

namespace A072165.P14963511236735955506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 3

end

end A072165.P14963511236735955506

namespace A072165

/-- `A000005(eq[2, A001222(n+1)]+1)-3` -/
def P14963511236735955506.Spec : Prop :=
  ∀ n, P14963511236735955506.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P13054087749223234369

`A008683(eq[n-1-a(A001222(n))², n-2])` with `a(0)=1, a(1)=0`
-/

namespace A072165.P13054087749223234369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - 1 - f1 (A001222 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A072165.P13054087749223234369

namespace A072165

/-- `A008683(eq[n-1-a(A001222(n))², n-2])` -/
def P13054087749223234369.Spec : Prop :=
  ∀ n, P13054087749223234369.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P14982550298816430287

`A001222(A020639(A138510(n+1)))`
-/

namespace A072165.P14982550298816430287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020639 (A138510 (n + 1)).toNat).toNat

end

end A072165.P14982550298816430287

namespace A072165

/-- `A001222(A020639(A138510(n+1)))` -/
def P14982550298816430287.Spec : Prop :=
  ∀ n, P14982550298816430287.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P10052935028852165389

`A002100(A000005(A001358(n+1))²)`
-/

namespace A072165.P10052935028852165389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002100 (A000005 (A001358 (n + 1)).toNat ^ 2).toNat

end

end A072165.P10052935028852165389

namespace A072165

/-- `A002100(A000005(A001358(n+1))²)` -/
def P10052935028852165389.Spec : Prop :=
  ∀ n, P10052935028852165389.a n = A072165 (n + 1)

end A072165

/-! ## A072165.P11359884902815634817

`A046810(A000005(A001358(n+1))²)`
-/

namespace A072165.P11359884902815634817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A000005 (A001358 (n + 1)).toNat ^ 2).toNat

end

end A072165.P11359884902815634817

namespace A072165

/-- `A046810(A000005(A001358(n+1))²)` -/
def P11359884902815634817.Spec : Prop :=
  ∀ n, P11359884902815634817.a n = A072165 (n + 1)

end A072165

/-!
# A072166: Triangle in which first row is {1}; to get n-th row take first n numbers greater than last number in previous row which are congruent to 1 (mod n).

The programs for A072166, the canonical program `A072166.P2760346320925595557` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072166 has offset 1).

The definition of A072166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072166.P2760346320925595557

`A057427(n)+A033291(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072166

/-- `A057427(n)+A033291(n+1)` -/
def P2760346320925595557.Spec : Prop :=
  ∀ n, P2760346320925595557.a n = A072166 (n + 1)

theorem P2760346320925595557.correct : P2760346320925595557.Spec := by
  intro n
  simp only [A072166, Nat.add_sub_cancel]

end A072166

/-! ## A072166.P16034714734016740387

`A033291(n+1)-A057428(n)`
-/

namespace A072166.P16034714734016740387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033291 (n + 1) - A057428 n

end

end A072166.P16034714734016740387

namespace A072166

/-- `A033291(n+1)-A057428(n)` -/
def P16034714734016740387.Spec : Prop :=
  ∀ n, P16034714734016740387.a n = A072166 (n + 1)

end A072166

/-! ## A072166.P2728638875014837651

`A033291(n+1)+A010051(A020639(n+1))`
-/

namespace A072166.P2728638875014837651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033291 (n + 1) + A010051 (A020639 (n + 1)).toNat

end

end A072166.P2728638875014837651

namespace A072166

/-- `A033291(n+1)+A010051(A020639(n+1))` -/
def P2728638875014837651.Spec : Prop :=
  ∀ n, P2728638875014837651.a n = A072166 (n + 1)

end A072166

/-! ## A072166.P1299942408644017671

`A033291(n+1)+A001221(A034444(n+1))`
-/

namespace A072166.P1299942408644017671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033291 (n + 1) + A001221 (A034444 (n + 1)).toNat

end

end A072166.P1299942408644017671

namespace A072166

/-- `A033291(n+1)+A001221(A034444(n+1))` -/
def P1299942408644017671.Spec : Prop :=
  ∀ n, P1299942408644017671.a n = A072166 (n + 1)

end A072166

/-! ## A072166.P8967141934230429607

`A065475(A033291(n+1))`
-/

namespace A072166.P8967141934230429607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A033291 (n + 1)).toNat

end

end A072166.P8967141934230429607

namespace A072166

/-- `A065475(A033291(n+1))` -/
def P8967141934230429607.Spec : Prop :=
  ∀ n, P8967141934230429607.a n = A072166 (n + 1)

end A072166

/-! ## A072166.P9733594912077787251

`A184985(A033291(n+1)+1)`
-/

namespace A072166.P9733594912077787251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (A033291 (n + 1) + 1).toNat

end

end A072166.P9733594912077787251

namespace A072166

/-- `A184985(A033291(n+1)+1)` -/
def P9733594912077787251.Spec : Prop :=
  ∀ n, P9733594912077787251.a n = A072166 (n + 1)

end A072166

/-! ## A072166.P4015611232818129682

`A033291(n+1)+A000035(A106856(n+1))`
-/

namespace A072166.P4015611232818129682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033291 (n + 1) + A000035 (A106856 (n + 1)).toNat

end

end A072166.P4015611232818129682

namespace A072166

/-- `A033291(n+1)+A000035(A106856(n+1))` -/
def P4015611232818129682.Spec : Prop :=
  ∀ n, P4015611232818129682.a n = A072166 (n + 1)

end A072166

/-! ## A072166.P17512587873180747937

`A033291(n+1)+A000035(A075239(n+1))`
-/

namespace A072166.P17512587873180747937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033291 (n + 1) + A000035 (A075239 (n + 1)).toNat

end

end A072166.P17512587873180747937

namespace A072166

/-- `A033291(n+1)+A000035(A075239(n+1))` -/
def P17512587873180747937.Spec : Prop :=
  ∀ n, P17512587873180747937.a n = A072166 (n + 1)

end A072166

/-!
# A072167: T_10(n) in the notation of Bergeron et al., u_10(n) in the notation of Gessel: Related to Young tableaux of bounded height.

The programs for A072167, there is no canonical definition to state claims against.
-/

/-! ## A072167.P681920454684081862

`A047888(A161680(n+10)+10)`
-/

namespace A072167.P681920454684081862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (A161680 (n + 10) + 10).toNat

end

end A072167.P681920454684081862

/-! ## A072167.P4264672055817523092

`A047888(eq[10, A130270(n+1)])`
-/

namespace A072167.P4264672055817523092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072167.P4264672055817523092

/-! ## A072167.P4617653612695986408

`A047888(eq[11, A131818(n+1)])`
-/

namespace A072167.P4617653612695986408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072167.P4617653612695986408

/-! ## A072167.P14755118856911197228

`A214015(eq[11, A193592(n)])`
-/

namespace A072167.P14755118856911197228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072167.P14755118856911197228

/-! ## A072167.P12742660719295057857

`A214015(A000217(n+11)+n+1)`
-/

namespace A072167.P12742660719295057857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 (A000217 (n + 11) + (n + 1 : ℤ)).toNat

end

end A072167.P12742660719295057857

/-!
# A072168: Floor of ratio of volume of n-dimensional cube of side 2 to volume of n-dimensional ball of radius 1.

The programs for A072168, there is no canonical definition to state claims against.
-/

/-! ## A072168.P11688469855975236805

`A057649(n)-A010051(A193472(n))`
-/

namespace A072168.P11688469855975236805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057649 n - A010051 (A193472 n).toNat

end

end A072168.P11688469855975236805

/-! ## A072168.P18440354467079595605

`A171481(A350969(n+1)+A330052(n))-A010051(A193472(n))`
-/

namespace A072168.P18440354467079595605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171481 (A350969 (n + 1) + A330052 n).toNat - A010051 (A193472 n).toNat

end

end A072168.P18440354467079595605

/-! ## A072168.P9166659789243116490

`A057649(n%A196418(n+1))`
-/

namespace A072168.P9166659789243116490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057649 (Int.tmod (n : ℤ) (A196418 (n + 1))).toNat

end

end A072168.P9166659789243116490

/-! ## A072168.P9057875878699410711

`A057649(n*A327363(A327363(n)))`
-/

namespace A072168.P9057875878699410711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057649 ((n : ℤ) * A327363 (A327363 n).toNat).toNat

end

end A072168.P9057875878699410711

/-! ## A072168.P4847471699725098784

`gcd(A057649(n), A161716(A007051(n)))`
-/

namespace A072168.P4847471699725098784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057649 n) (A161716 (A007051 n).toNat)

end

end A072168.P4847471699725098784

/-!
# A072169: Commuting permutations: number of ordered triples of permutations f, g, h in Symm(n) which all commute.

The programs for A072169, there is no canonical definition to state claims against.
-/

/-! ## A072169.P8300050575062570931

`A061256(n)*n!`
-/

namespace A072169.P8300050575062570931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061256 n * (Nat.factorial n : ℤ)

end

end A072169.P8300050575062570931

/-! ## A072169.P14239195426569686534

`A000142(n)*A061256(n)`
-/

namespace A072169.P14239195426569686534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A061256 n

end

end A072169.P14239195426569686534

/-! ## A072169.P15365636065141102829

`∏[A028310(n)]*A061256(n)`
-/

namespace A072169.P15365636065141102829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A061256 n

end

end A072169.P15365636065141102829

/-! ## A072169.P16234563999993501212

`A061256(n)*A075263(A000217(n))`
-/

namespace A072169.P16234563999993501212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061256 n * A075263 (A000217 n).toNat

end

end A072169.P16234563999993501212

/-! ## A072169.P16911074627802869622

`A053529(n)/A000041(n)*A061256(n)`
-/

namespace A072169.P16911074627802869622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053529 n : ℚ) / (A000041 n : ℚ) * (A061256 n : ℚ)

end

end A072169.P16911074627802869622

/-! ## A072169.P1132618699397291077

`n!*A321876(∑[n+2]-1)`
-/

namespace A072169.P1132618699397291077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A321876 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A072169.P1132618699397291077

/-! ## A072169.P8843697966071272978

`A000142(n)*A321876(∑[n+2]-1)`
-/

namespace A072169.P8843697966071272978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A321876 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A072169.P8843697966071272978

/-!
# A072170: Square array T(n,k) (n >= 0, k >= 2) read by antidiagonals, where T(n,k) is the number of ways of writing n as Sum_{i>=0} c_i 2^i, c_i in {0,1,...,k-1}.

The programs for A072170, there is no canonical definition to state claims against.
-/

/-! ## A072170.P3119144828706404748

`A105446(A107030(n)+log2(gcd(2, n)))`
-/

namespace A072170.P3119144828706404748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105446 (SequenceMachineLib.roundAway ((A107030 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A072170.P3119144828706404748

/-! ## A072170.P6899029335387306361

`A080942(A274741(n))`
-/

namespace A072170.P6899029335387306361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080942 (A274741 n).toNat

end

end A072170.P6899029335387306361

/-! ## A072170.P4685093897616085243

`A393027(A369227(n+1))`
-/

namespace A072170.P4685093897616085243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393027 (A369227 (n + 1)).toNat

end

end A072170.P4685093897616085243

/-! ## A072170.P8065709866572665502

`A006530(A219347(n)^A007376(n))`
-/

namespace A072170.P8065709866572665502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A219347 n : ℚ) ^ (A007376 n : ℤ))).toNat

end

end A072170.P8065709866572665502

/-! ## A072170.P15359679437811538298

`A001511(A086892(n+1)*A225630(n))`
-/

namespace A072170.P15359679437811538298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A086892 (n + 1) * A225630 n).toNat

end

end A072170.P15359679437811538298

/-!
# A072171: Number of stars of visual magnitude n.

The programs for A072171, there is no canonical definition to state claims against.
-/

/-! ## A072171.P16249391923876556380

`A328077(A292333(n+1))`
-/

namespace A072171.P16249391923876556380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328077 (A292333 (n + 1)).toNat

end

end A072171.P16249391923876556380

/-!
# A072172: a(n) = (2*n+1)*5^(2*n+1).

The programs for A072172, the canonical program `A072172.P14508796257515314613` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072172 has offset 0).

The definition of A072172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*5^(2*n+1)` (program `A072172.P14508796257515314613`, by `A072172.P14508796257515314613.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072172.P14508796257515314613

`(2*n+1)*5^(2*n+1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072172

/-- `(2*n+1)*5^(2*n+1)` -/
def P14508796257515314613.Spec : Prop :=
  ∀ n, (P14508796257515314613.a n : ℤ) = A072172 n

theorem P14508796257515314613.correct : P14508796257515314613.Spec := by
  intro n
  simp only [A072172]

end A072172

/-! ## A072172.P17056846701901434513

`50*a(n-1)-625*a(n-2)` with `a(0)=5, a(1)=375`
-/

namespace A072172.P17056846701901434513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 375] fun n a =>
  50 * a (n - 1) - 625 * a (n - 2)

end

end A072172.P17056846701901434513

namespace A072172

/-- `50*a(n-1)-625*a(n-2)` -/
def P17056846701901434513.Spec : Prop :=
  ∀ n, P17056846701901434513.a n = A072172 n

theorem P17056846701901434513.correct : P17056846701901434513.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A072172, Nat.add_sub_cancel, A072172.P17056846701901434513.a, A072172.P14508796257515314613.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A072172, Nat.add_sub_cancel, A072172.P17056846701901434513.a, A072172.P14508796257515314613.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072172

/-! ## A072172.P9952652037959799206

`record[(n+1)*5^xor(1, n)]`
-/

namespace A072172.P9952652037959799206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 5 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072172.P9952652037959799206

namespace A072172

/-- `record[(n+1)*5^xor(1, n)]` -/
def P9952652037959799206.Spec : Prop :=
  ∀ n, (P9952652037959799206.a n : ℤ) = A072172 n

end A072172

/-! ## A072172.P13986860121388780891

`record[-(n+1)*(-5)^(n+1)]`
-/

namespace A072172.P13986860121388780891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (-5) ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072172.P13986860121388780891

namespace A072172

/-- `record[-(n+1)*(-5)^(n+1)]` -/
def P13986860121388780891.Spec : Prop :=
  ∀ n, P13986860121388780891.a n = A072172 n

end A072172

/-! ## A072172.P13956063682826970894

`A036291(Δ[n²])`
-/

namespace A072172.P13956063682826970894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036291 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072172.P13956063682826970894

namespace A072172

/-- `A036291(Δ[n²])` -/
def P13956063682826970894.Spec : Prop :=
  ∀ n, P13956063682826970894.a n = A072172 n

end A072172

/-! ## A072172.P16109238100261858127

`A050916(Δ[n²])-1`
-/

namespace A072172.P16109238100261858127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050916 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A072172.P16109238100261858127

namespace A072172

/-- `A050916(Δ[n²])-1` -/
def P16109238100261858127.Spec : Prop :=
  ∀ n, P16109238100261858127.a n = A072172 n

end A072172

/-! ## A072172.P6837375936206867838

`A064751(2*n+1)+1`
-/

namespace A072172.P6837375936206867838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064751 (2 * n + 1) + 1

end

end A072172.P6837375936206867838

namespace A072172

/-- `A064751(2*n+1)+1` -/
def P6837375936206867838.Spec : Prop :=
  ∀ n, P6837375936206867838.a n = A072172 n

end A072172

/-! ## A072172.P3822800278378996441

`lcm(5, A036291(2*n+1))`
-/

namespace A072172.P3822800278378996441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A036291 (2 * n + 1))

end

end A072172.P3822800278378996441

namespace A072172

/-- `lcm(5, A036291(2*n+1))` -/
def P3822800278378996441.Spec : Prop :=
  ∀ n, (P3822800278378996441.a n : ℤ) = A072172 n

end A072172

/-! ## A072172.P18320834774352149760

`A394526(2*n+1)+2*n`
-/

namespace A072172.P18320834774352149760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394526 (2 * n + 1) + (2 * n : ℤ)

end

end A072172.P18320834774352149760

namespace A072172

/-- `A394526(2*n+1)+2*n` -/
def P18320834774352149760.Spec : Prop :=
  ∀ n, P18320834774352149760.a n = A072172 n

end A072172

/-! ## A072172.P14941155396376176267

`A277975(2*n+1)-A277975(2*n)`
-/

namespace A072172.P14941155396376176267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277975 (2 * n + 1) - A277975 (2 * n)

end

end A072172.P14941155396376176267

namespace A072172

/-- `A277975(2*n+1)-A277975(2*n)` -/
def P14941155396376176267.Spec : Prop :=
  ∀ n, P14941155396376176267.a n = A072172 n

end A072172

/-!
# A072174: Maximum path length of a crippled knight on an n X n board.

The programs for A072174, there is no canonical definition to state claims against.
-/

/-! ## A072174.P5445548217189030431

`or(n², A044949(2*(n+1)))`
-/

namespace A072174.P5445548217189030431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (A044949 (2 * (n + 1)))

end

end A072174.P5445548217189030431

/-! ## A072174.P2390083873521480648

`A267682(n)+A237449(n)`
-/

namespace A072174.P2390083873521480648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 n + A237449 n

end

end A072174.P2390083873521480648

/-! ## A072174.P7670288558044239729

`A267682(n)+A244234(n)`
-/

namespace A072174.P7670288558044239729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267682 n + A244234 n

end

end A072174.P7670288558044239729

/-! ## A072174.P16562515327588021043

`A339163(n)+A253909(n)`
-/

namespace A072174.P16562515327588021043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339163 n + A253909 n

end

end A072174.P16562515327588021043

/-! ## A072174.P2759555221474745185

`A317186(n)-A236855(n)`
-/

namespace A072174.P2759555221474745185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n - A236855 n

end

end A072174.P2759555221474745185

/-!
# A072175: a(1)=1, a(2)=2, a(n) = a(n-1) + 1 - 2*sign(a(n-2)) for n>2.

The programs for A072175, the canonical program `A072175.P2504350055507988243` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072175 has offset 0).

The definition of A072175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072175.P2504350055507988243

`gcd(1-a(n-2), a(n-1))+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072175

/-- `gcd(1-a(n-2), a(n-1))+a(n-1)-a(n-2)` -/
def P2504350055507988243.Spec : Prop :=
  ∀ n, P2504350055507988243.a n = A072175 n

theorem P2504350055507988243.correct : P2504350055507988243.Spec := by
  intro n
  simp only [A072175]

end A072175

/-!
# A072176: Unimodal analog of Fibonacci numbers: a(n+1) = Sum_{k=0..floor(n/2)} A071922(n-k,k).

The programs for A072176, the canonical program `A072176.P14881051853867027260` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072176 has offset 1).

The definition of A072176 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072176.P14881051853867027260

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072176

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P14881051853867027260.Spec : Prop :=
  ∀ n, P14881051853867027260.a n = A072176 (n + 1)

theorem P14881051853867027260.correct : P14881051853867027260.Spec := by
  intro n
  simp only [A072176, Nat.add_sub_cancel]

end A072176

/-! ## A072176.P17230815522692223278

`A079974(2*n)`
-/

namespace A072176.P17230815522692223278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079974 (2 * n)

end

end A072176.P17230815522692223278

namespace A072176

/-- `A079974(2*n)` -/
def P17230815522692223278.Spec : Prop :=
  ∀ n, P17230815522692223278.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P1548557572783401848

`∑[A017898(2*n)]`
-/

namespace A072176.P1548557572783401848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072176.P1548557572783401848

namespace A072176

/-- `∑[A017898(2*n)]` -/
def P1548557572783401848.Spec : Prop :=
  ∀ n, P1548557572783401848.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P17880942156916590921

`A226517(4*(n+1))+1`
-/

namespace A072176.P17880942156916590921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (4 * (n + 1)) + 1

end

end A072176.P17880942156916590921

namespace A072176

/-- `A226517(4*(n+1))+1` -/
def P17880942156916590921.Spec : Prop :=
  ∀ n, P17880942156916590921.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P7255274030949543728

`A017898(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A072176.P7255274030949543728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A017898 (n + n) + a (n - 1)

end

end A072176.P7255274030949543728

namespace A072176

/-- `A017898(n+n)+a(n-1)` -/
def P7255274030949543728.Spec : Prop :=
  ∀ n, P7255274030949543728.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P11334931569210543289

`A052535(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A072176.P11334931569210543289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052535 (n - 2) + a (n - 1)

end

end A072176.P11334931569210543289

namespace A072176

/-- `A052535(n-2)+a(n-1)` -/
def P11334931569210543289.Spec : Prop :=
  ∀ n, P11334931569210543289.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P12338233933092222394

`∑[∑[A122789(2*n+1)-A122789(2*n)]]`
-/

namespace A072176.P12338233933092222394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (2 * n + 1) - A122789 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072176.P12338233933092222394

namespace A072176

/-- `∑[∑[A122789(2*n+1)-A122789(2*n)]]` -/
def P12338233933092222394.Spec : Prop :=
  ∀ n, P12338233933092222394.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P3360860637017871819

`∑[A003269(2*n+1)-A003269(2*n)]`
-/

namespace A072176.P3360860637017871819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n + 1) - A003269 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072176.P3360860637017871819

namespace A072176

/-- `∑[A003269(2*n+1)-A003269(2*n)]` -/
def P3360860637017871819.Spec : Prop :=
  ∀ n, P3360860637017871819.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P17176494149764961613

`A193146(2*n)-∑[A003269(2*n)]`
-/

namespace A072176.P17176494149764961613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193146 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072176.P17176494149764961613

namespace A072176

/-- `A193146(2*n)-∑[A003269(2*n)]` -/
def P17176494149764961613.Spec : Prop :=
  ∀ n, P17176494149764961613.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P4704755137097057850

`∑[A103632(2*n)]-A103632(2*n+1)`
-/

namespace A072176.P4704755137097057850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103632 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A103632 (2 * n + 1)

end

end A072176.P4704755137097057850

namespace A072176

/-- `∑[A103632(2*n)]-A103632(2*n+1)` -/
def P4704755137097057850.Spec : Prop :=
  ∀ n, P4704755137097057850.a n = A072176 (n + 1)

end A072176

/-! ## A072176.P11077725840524721741

`A079974(n+n)/A077028(∑[n])`
-/

namespace A072176.P11077725840524721741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079974 (n + n) : ℚ) / (A077028 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A072176.P11077725840524721741

namespace A072176

/-- `A079974(n+n)/A077028(∑[n])` -/
def P11077725840524721741.Spec : Prop :=
  ∀ n, P11077725840524721741.a n = (A072176 (n + 1) : ℚ)

end A072176

/-!
# A072179: Numbers n such that n^(n+1) - (n+1)^n is prime.

The programs for A072179, there is no canonical definition to state claims against.
-/

/-! ## A072179.P10686148002678388932

`A343112(A059167(n)+n)`
-/

namespace A072179.P10686148002678388932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343112 (A059167 n + (n : ℤ)).toNat

end

end A072179.P10686148002678388932

/-! ## A072179.P409206096525529877

`A081754(A070939(n+2)+A029846(n))`
-/

namespace A072179.P409206096525529877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (A070939 (n + 2) + A029846 n).toNat

end

end A072179.P409206096525529877

/-!
# A072181: a(1) = 1; for n >= 2, suppose a(n-1) = Product p_i^e_i and n = Product p_i^f_i, then a(n) = Product p_i^(e_i*f_i).

The programs for A072181, there is no canonical definition to state claims against.
-/

/-! ## A072181.P17674218170743696893

`A394655(A043316(n+1))`
-/

namespace A072181.P17674218170743696893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394655 (A043316 (n + 1)).toNat

end

end A072181.P17674218170743696893

/-! ## A072181.P12501251934270294267

`A394655(A044913(n+1))`
-/

namespace A072181.P12501251934270294267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394655 (A044913 (n + 1)).toNat

end

end A072181.P12501251934270294267

/-! ## A072181.P12296801935950261635

`A394655(A061147(n+1))`
-/

namespace A072181.P12296801935950261635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394655 (A061147 (n + 1)).toNat

end

end A072181.P12296801935950261635

/-! ## A072181.P7396690979217529534

`A394655(A061497(n+1))`
-/

namespace A072181.P7396690979217529534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394655 (A061497 (n + 1)).toNat

end

end A072181.P7396690979217529534

/-! ## A072181.P8402981709343594088

`A394655(A062003(n+1))`
-/

namespace A072181.P8402981709343594088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394655 (A062003 (n + 1)).toNat

end

end A072181.P8402981709343594088

/-!
# A072182: A Wallis pair (x,y) satisfies sigma(x^2) = sigma(y^2); sequence gives x's for Wallis pairs with x < y (ordered by values of x, then y).

The programs for A072182, there is no canonical definition to state claims against.
-/

/-! ## A072182.P2025510018496908409

`A289195(A072186(n+1)%A327624(n+1))`
-/

namespace A072182.P2025510018496908409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289195 (Int.tmod (A072186 (n + 1)) (A327624 (n + 1))).toNat

end

end A072182.P2025510018496908409

/-! ## A072182.P4400916665839255332

`A289195(A072186(n+1))%A133782(n+5)`
-/

namespace A072182.P4400916665839255332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289195 (A072186 (n + 1)).toNat) (A133782 (n + 5))

end

end A072182.P4400916665839255332

/-! ## A072182.P2376570416382730203

`A289195(A072186(n+1))*A345063(A050265(n+1))`
-/

namespace A072182.P2376570416382730203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289195 (A072186 (n + 1)).toNat * A345063 (A050265 (n + 1)).toNat

end

end A072182.P2376570416382730203

/-! ## A072182.P5258782143555273783

`A289195(A072186(n+1))%A141214(n)²`
-/

namespace A072182.P5258782143555273783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289195 (A072186 (n + 1)).toNat) (A141214 n ^ 2)

end

end A072182.P5258782143555273783

/-! ## A072182.P2964767097243123186

`A001221(A335367(n+1))*A289195(A072186(n+1))`
-/

namespace A072182.P2964767097243123186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A335367 (n + 1)).toNat * A289195 (A072186 (n + 1)).toNat

end

end A072182.P2964767097243123186

/-!
# A072183: Sequence arising from factorization of the Fibonacci numbers.

The programs for A072183, the canonical program `A072183.P11564982511114208187` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072183 has offset 1).

The definition of A072183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072183.P11564982511114208187

`A061446(A000034(n+1)*A283971(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A072183

/-- `A061446(A000034(n+1)*A283971(n+1))` -/
def P11564982511114208187.Spec : Prop :=
  ∀ n, P11564982511114208187.a n = A072183 (n + 1)

theorem P11564982511114208187.correct : P11564982511114208187.Spec := by
  intro n
  simp only [A072183, Nat.add_sub_cancel]

end A072183

/-! ## A072183.P17012597079352355072

`ratio[lcm(a(n-1), A005013(n))]` with `a(0)=1`
-/

namespace A072183.P17012597079352355072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.lcm (f1 (n - 1) : ℤ) (A005013 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A072183.P17012597079352355072

namespace A072183

/-- `ratio[lcm(a(n-1), A005013(n))]` -/
def P17012597079352355072.Spec : Prop :=
  ∀ n, P17012597079352355072.a n = (A072183 (n + 1) : ℚ)

end A072183

/-!
# A072185: Primes p = x1x2x3...xn in base 10 such that x1^p1 + x2^p2 + x3^p3 + ... + xn^pn is a prime, where pn is the n-th prime.

The programs for A072185, there is no canonical definition to state claims against.
-/

/-! ## A072185.P9555405617347114206

`p?[A088134(∑[A333737(n)])]`
-/

namespace A072185.P9555405617347114206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333737 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072185.P9555405617347114206

/-! ## A072185.P8850493010673813036

`∩[A088134(n+1), A386352(n+1)]`
-/

namespace A072185.P8850493010673813036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072185.P8850493010673813036

/-! ## A072185.P5547396218086348070

`filter[A084354(n+2), A103842(#)]`
-/

namespace A072185.P5547396218086348070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A072185.P5547396218086348070

/-! ## A072185.P357198080703659293

`p?[xor(A104144(n), A164932(n+1))]`
-/

namespace A072185.P357198080703659293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A104144 n) (A164932 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072185.P357198080703659293

/-! ## A072185.P11929493570302278209

`∩[A031954(n+1), A089392(n+1)]`
-/

namespace A072185.P11929493570302278209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031954 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072185.P11929493570302278209

/-!
# A072186: A Wallis pair (x,y) satisfies sigma(x^2) = sigma(y^2); sequence gives y's for Wallis pairs with x < y (ordered by values of x).

The programs for A072186, there is no canonical definition to state claims against.
-/

/-! ## A072186.P5873339168259054785

`A001068(A072182(n+1)%A327624(n+1))`
-/

namespace A072186.P5873339168259054785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (Int.tmod (A072182 (n + 1)) (A327624 (n + 1))).toNat

end

end A072186.P5873339168259054785

/-! ## A072186.P4086454780823505535

`A001068(A072182(n+1))*A345063(A050265(n+1))`
-/

namespace A072186.P4086454780823505535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A072182 (n + 1)).toNat * A345063 (A050265 (n + 1)).toNat

end

end A072186.P4086454780823505535

/-! ## A072186.P15007433058418656707

`A001068(A072182(n+1))%A133781(n+1)`
-/

namespace A072186.P15007433058418656707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001068 (A072182 (n + 1)).toNat) (A133781 (n + 1))

end

end A072186.P15007433058418656707

/-! ## A072186.P3662431011338034404

`A001068(A072182(n+1))*A001221(A335367(n+1))`
-/

namespace A072186.P3662431011338034404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A072182 (n + 1)).toNat * A001221 (A335367 (n + 1)).toNat

end

end A072186.P3662431011338034404

/-! ## A072186.P11287207617757366766

`record[lcm(10, A132016(n+1))/2]`
-/

namespace A072186.P11287207617757366766
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 10 (A132016 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072186.P11287207617757366766

/-!
# A072187: Number of up-down involutions of length n.

The programs for A072187, there is no canonical definition to state claims against.
-/

/-! ## A072187.P10266673764549189386

`A304872(5*(a(n-2)-a(n-4)))+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3, a(6)=6`
-/

namespace A072187.P10266673764549189386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3, 6] fun n a =>
  A304872 (5 * (a (n - 2) - a (n - 4))).toNat + 1

end

end A072187.P10266673764549189386

/-! ## A072187.P202283517105368001

`A003005(A007827(n))`
-/

namespace A072187.P202283517105368001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003005 (A007827 n).toNat

end

end A072187.P202283517105368001

/-! ## A072187.P10799311652070756560

`A122921(A054423(n))`
-/

namespace A072187.P10799311652070756560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A054423 n).toNat

end

end A072187.P10799311652070756560

/-! ## A072187.P7278082299871817691

`A229300(A002992(n))`
-/

namespace A072187.P7278082299871817691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (A002992 n).toNat

end

end A072187.P7278082299871817691

/-! ## A072187.P15896197656277306656

`A147820(A124973(n))`
-/

namespace A072187.P15896197656277306656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147820 (A124973 n).toNat

end

end A072187.P15896197656277306656

/-!
# A072190: Indices of primes with primitive root 2.

The programs for A072190, there is no canonical definition to state claims against.
-/

/-! ## A072190.P11304676173020572817

`eq[2, A001918(n+1)]+1`
-/

namespace A072190.P11304676173020572817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072190.P11304676173020572817

/-! ## A072190.P3816667490291153845

`eq[2, A002233(n+1)]+1`
-/

namespace A072190.P3816667490291153845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072190.P3816667490291153845

/-! ## A072190.P9964991541551929935

`eq[2, A122028(n+1)]+1`
-/

namespace A072190.P9964991541551929935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072190.P9964991541551929935

/-! ## A072190.P6895548007467606259

`eq[2, A229709(n+1)]+1`
-/

namespace A072190.P6895548007467606259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072190.P6895548007467606259

/-! ## A072190.P8798705603481021180

`eq[2, A236306(n+1)]+1`
-/

namespace A072190.P8798705603481021180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072190.P8798705603481021180

/-! ## A072190.P5656460862121983113

`eq[1, A001917(n+2)]+2`
-/

namespace A072190.P5656460862121983113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001917 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A072190.P5656460862121983113

/-! ## A072190.P12235548707963690372

`eq[1, A054505(n+2)]+2`
-/

namespace A072190.P12235548707963690372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054505 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A072190.P12235548707963690372

/-! ## A072190.P8337659848587298067

`lt[2, A060084(n+1)]+1`
-/

namespace A072190.P8337659848587298067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072190.P8337659848587298067

/-! ## A072190.P12315974698042289773

`eq[2, A122028(n)/A001222(a(n-1))!]` with `a(0)=1`
-/

namespace A072190.P12315974698042289773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (A122028 n : ℚ) / (Nat.factorial (A001222 (SequenceMachineLib.roundAway (f2 (n - 1))).toNat).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A072190.P12315974698042289773

/-! ## A072190.P16034339273185105866

`lt[1, A285139(A122028(n+1)+3)+1]+1`
-/

namespace A072190.P16034339273185105866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285139 (A122028 (n + 1) + 3).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072190.P16034339273185105866

/-! ## A072190.P11366235440551554199

`lt[A122028(n+1), A020639(3*(2*n+1))]+1`
-/

namespace A072190.P11366235440551554199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072190.P11366235440551554199

/-! ## A072190.P7506153490115274457

`lt[A319351(p?[2*n+1])², 10]+2`
-/

namespace A072190.P7506153490115274457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319351 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A072190.P7506153490115274457

/-! ## A072190.P15554818498695902417

`A000720(A001122(n+1))`
-/

namespace A072190.P15554818498695902417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001122 (n + 1)).toNat

end

end A072190.P15554818498695902417

/-! ## A072190.P7372248207132775671

`A000720(A217948(n+1))`
-/

namespace A072190.P7372248207132775671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A217948 (n + 1)).toNat

end

end A072190.P7372248207132775671

/-! ## A072190.P427141889518835127

`A000720(A071642(n+3)+1)`
-/

namespace A072190.P427141889518835127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071642 (n + 3) + 1).toNat

end

end A072190.P427141889518835127

/-! ## A072190.P12584320903899366440

`A099802(A051733(n+1))`
-/

namespace A072190.P12584320903899366440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A051733 (n + 1)).toNat

end

end A072190.P12584320903899366440

/-! ## A072190.P16731558878547761151

`eq[2, A103309(A008578(n+1))]`
-/

namespace A072190.P16731558878547761151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072190.P16731558878547761151

/-! ## A072190.P16010241188913666454

`eq[2, A046145(A000040(n+1))]+1`
-/

namespace A072190.P16010241188913666454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072190.P16010241188913666454

/-! ## A072190.P16455904644080887180

`A324861(A001122(2*n+1-n))`
-/

namespace A072190.P16455904644080887180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324861 (A001122 (2 * n + 1 - n)).toNat

end

end A072190.P16455904644080887180

/-!
# A072191: a(n) = a(n-1)^2 + 2.

The programs for A072191, the canonical program `A072191.P16816023296553632793` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072191 has offset 0).

The definition of A072191 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+2` (program `A072191.P16816023296553632793`, by `A072191.P16816023296553632793.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072191.P16816023296553632793

`a(n-1)²+2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072191

/-- `a(n-1)²+2` -/
def P16816023296553632793.Spec : Prop :=
  ∀ n, (P16816023296553632793.a n : ℤ) = A072191 n

theorem P16816023296553632793.correct : P16816023296553632793.Spec := by
  intro n
  simp only [A072191]

end A072191

/-! ## A072191.P10426872080006511204

`or(2, a(n-1)²)` with `a(0)=0`
-/

namespace A072191.P10426872080006511204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 2 (a (n - 1) ^ 2)

end

end A072191.P10426872080006511204

namespace A072191

/-- `or(2, a(n-1)²)` -/
def P10426872080006511204.Spec : Prop :=
  ∀ n, (P10426872080006511204.a n : ℤ) = A072191 n

end A072191

/-! ## A072191.P2643226825557340220

`xor(2, a(n-1)²)` with `a(0)=0`
-/

namespace A072191.P2643226825557340220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 2 (a (n - 1) ^ 2)

end

end A072191.P2643226825557340220

namespace A072191

/-- `xor(2, a(n-1)²)` -/
def P2643226825557340220.Spec : Prop :=
  ∀ n, (P2643226825557340220.a n : ℤ) = A072191 n

end A072191

/-! ## A072191.P13922708496000763442

`2+a(n-1)^2` with `a(0)=0`
-/

namespace A072191.P13922708496000763442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 + a (n - 1) ^ 2

end

end A072191.P13922708496000763442

namespace A072191

/-- `2+a(n-1)^2` -/
def P13922708496000763442.Spec : Prop :=
  ∀ n, (P13922708496000763442.a n : ℤ) = A072191 n

theorem P13922708496000763442.correct : P13922708496000763442.Spec := by
  intro n
  simp only [A072191, Nat.add_sub_cancel, A072191.P13922708496000763442.a, A072191.P16816023296553632793.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072191

/-!
# A072192: Indices of Sophie Germain primes: p and 2p+1 are primes.

The programs for A072192, the canonical program `A072192.P10191982082423407970` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072192 has offset 1).

The definition of A072192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A005384, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072192.P10191982082423407970

`A000720(A005384(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A072192

/-- `A000720(A005384(n+1))` -/
def P10191982082423407970.Spec : Prop :=
  ∀ n, P10191982082423407970.a n = A072192 (n + 1)

theorem P10191982082423407970.correct : P10191982082423407970.Spec := by
  intro n
  simp only [A072192, Nat.add_sub_cancel]

end A072192

/-! ## A072192.P7990850674498473828

`filter[n+1, A079295(#)]`
-/

namespace A072192.P7990850674498473828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079295 (f1 j) = 1) n)

end

end A072192.P7990850674498473828

namespace A072192

/-- `filter[n+1, A079295(#)]` -/
def P7990850674498473828.Spec : Prop :=
  ∀ n, (P7990850674498473828.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P2905609114819872379

`lt[0, A058888(n+1)]+1`
-/

namespace A072192.P2905609114819872379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072192.P2905609114819872379

namespace A072192

/-- `lt[0, A058888(n+1)]+1` -/
def P2905609114819872379.Spec : Prop :=
  ∀ n, (P2905609114819872379.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P11009691148277947249

`eq[1, A059787(n+1)]+1`
-/

namespace A072192.P11009691148277947249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072192.P11009691148277947249

namespace A072192

/-- `eq[1, A059787(n+1)]+1` -/
def P11009691148277947249.Spec : Prop :=
  ∀ n, (P11009691148277947249.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P13846618352614645125

`eq[1, A079295(n+1)]+1`
-/

namespace A072192.P13846618352614645125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072192.P13846618352614645125

namespace A072192

/-- `eq[1, A079295(n+1)]+1` -/
def P13846618352614645125.Spec : Prop :=
  ∀ n, (P13846618352614645125.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P3777395102707293419

`eq[1, A117673(n+1)]+1`
-/

namespace A072192.P3777395102707293419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072192.P3777395102707293419

namespace A072192

/-- `eq[1, A117673(n+1)]+1` -/
def P3777395102707293419.Spec : Prop :=
  ∀ n, (P3777395102707293419.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P3261048915144656443

`eq[2, A072056(n+1)]+1`
-/

namespace A072192.P3261048915144656443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072192.P3261048915144656443

namespace A072192

/-- `eq[2, A072056(n+1)]+1` -/
def P3261048915144656443.Spec : Prop :=
  ∀ n, (P3261048915144656443.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P6448061822524083061

`lt[1, A181697(n+1)]+1`
-/

namespace A072192.P6448061822524083061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072192.P6448061822524083061

namespace A072192

/-- `lt[1, A181697(n+1)]+1` -/
def P6448061822524083061.Spec : Prop :=
  ∀ n, (P6448061822524083061.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P18130747896186943127

`eq[2, A248596(n+1)]+1`
-/

namespace A072192.P18130747896186943127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248596 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072192.P18130747896186943127

namespace A072192

/-- `eq[2, A248596(n+1)]+1` -/
def P18130747896186943127.Spec : Prop :=
  ∀ n, (P18130747896186943127.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P15559087047844524175

`lt[A023595(n+1), 2]+1`
-/

namespace A072192.P15559087047844524175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023595 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072192.P15559087047844524175

namespace A072192

/-- `lt[A023595(n+1), 2]+1` -/
def P15559087047844524175.Spec : Prop :=
  ∀ n, (P15559087047844524175.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P3003930130216927182

`lt[A219433(n+1), 3]+1`
-/

namespace A072192.P3003930130216927182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219433 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072192.P3003930130216927182

namespace A072192

/-- `lt[A219433(n+1), 3]+1` -/
def P3003930130216927182.Spec : Prop :=
  ∀ n, (P3003930130216927182.a n : ℤ) = A072192 (n + 1)

end A072192

/-! ## A072192.P7360835863429247802

`A000720(A077065(n+1)/2)`
-/

namespace A072192.P7360835863429247802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A077065 (n + 1) : ℚ) / 2)).toNat

end

end A072192.P7360835863429247802

namespace A072192

/-- `A000720(A077065(n+1)/2)` -/
def P7360835863429247802.Spec : Prop :=
  ∀ n, P7360835863429247802.a n = A072192 (n + 1)

end A072192

/-! ## A072192.P8093718956410751161

`A000720((A005385(n+1)-1)/2)`
-/

namespace A072192.P8093718956410751161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A005385 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A072192.P8093718956410751161

namespace A072192

/-- `A000720((A005385(n+1)-1)/2)` -/
def P8093718956410751161.Spec : Prop :=
  ∀ n, P8093718956410751161.a n = A072192 (n + 1)

end A072192

/-! ## A072192.P16795652343752011647

`A000720(p?[A005097(n+1)])`
-/

namespace A072192.P16795652343752011647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A072192.P16795652343752011647

namespace A072192

/-- `A000720(p?[A005097(n+1)])` -/
def P16795652343752011647.Spec : Prop :=
  ∀ n, P16795652343752011647.a n = A072192 (n + 1)

end A072192

/-! ## A072192.P4477485146705396176

`record[A061395(A000010(n+3))]`
-/

namespace A072192.P4477485146705396176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A000010 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072192.P4477485146705396176

namespace A072192

/-- `record[A061395(A000010(n+3))]` -/
def P4477485146705396176.Spec : Prop :=
  ∀ n, P4477485146705396176.a n = A072192 (n + 1)

end A072192

/-! ## A072192.P15958921893565772561

`A000720(p?[n*A101264(n)])`
-/

namespace A072192.P15958921893565772561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A101264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A072192.P15958921893565772561

namespace A072192

/-- `A000720(p?[n*A101264(n)])` -/
def P15958921893565772561.Spec : Prop :=
  ∀ n, P15958921893565772561.a n = A072192 (n + 1)

end A072192

/-! ## A072192.P10097466066055689211

`eq[2, A000005(A072055(n+1))]+1`
-/

namespace A072192.P10097466066055689211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A072055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072192.P10097466066055689211

namespace A072192

/-- `eq[2, A000005(A072055(n+1))]+1` -/
def P10097466066055689211.Spec : Prop :=
  ∀ n, (P10097466066055689211.a n : ℤ) = A072192 (n + 1)

end A072192

/-!
# A072193: Irregular triangle read by rows of continued fraction expansions of the rational numbers 1/2, 1/3, 2/3, 1/4, 2/4, 3/4, 1/5, 2/5, ... A002260(k) / A003057(k+1).

The programs for A072193, there is no canonical definition to state claims against.
-/

/-! ## A072193.P7966079522434778754

`A177025(2*n+7)+A035186(A220123(n))`
-/

namespace A072193.P7966079522434778754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (2 * n + 7) + A035186 (A220123 n).toNat

end

end A072193.P7966079522434778754

/-! ## A072193.P17634568004905011483

`A070165(A287467(n)+A088433(n+5))`
-/

namespace A072193.P17634568004905011483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (A287467 n + A088433 (n + 5)).toNat

end

end A072193.P17634568004905011483

/-! ## A072193.P11137761781783501508

`A380560(n+4)+A112606(A145547(n+1))`
-/

namespace A072193.P11137761781783501508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380560 (n + 4) + A112606 (A145547 (n + 1)).toNat

end

end A072193.P11137761781783501508

/-! ## A072193.P429271472516324138

`A306680(n+1)+A090174(A098122(2*n+1))`
-/

namespace A072193.P429271472516324138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306680 (n + 1) + A090174 (A098122 (2 * n + 1)).toNat

end

end A072193.P429271472516324138

/-!
# A072194: Replace all prime factors p of n with n-p.

The programs for A072194, there is no canonical definition to state claims against.
-/

/-! ## A072194.P17793631031510074004

`∏{e}[A259939(n), n-#]`
-/

namespace A072194.P17793631031510074004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A072194.P17793631031510074004

/-! ## A072194.P4959820116394820715

`∏{e}[A037019(n+1), n-#]`
-/

namespace A072194.P4959820116394820715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A072194.P4959820116394820715

/-! ## A072194.P4547722802889483241

`∏{e}[A318843(n+1), n-#]`
-/

namespace A072194.P4547722802889483241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A072194.P4547722802889483241

/-! ## A072194.P16353152858494154569

`∏{e}[A348199(n+1), n-#]`
-/

namespace A072194.P16353152858494154569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A072194.P16353152858494154569

/-! ## A072194.P17449981956634627119

`∏{e}[A018782(n+1), n-#]`
-/

namespace A072194.P17449981956634627119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A072194.P17449981956634627119

/-!
# A072195: Replace all prime factors p of n with n/p.

The programs for A072195, the canonical program `A072195.P5071985017407282734` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072195 has offset 1).

The definition of A072195 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072195.P5071985017407282734

`(n+1)^(A001222(n+1)-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A072195

/-- `(n+1)^(A001222(n+1)-1)` -/
def P5071985017407282734.Spec : Prop :=
  ∀ n, P5071985017407282734.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P17245199788716602615

`(n+1)^(∑{e}[n+1, #]-1)`
-/

namespace A072195.P17245199788716602615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1 : ℤ)

end

end A072195.P17245199788716602615

namespace A072195

/-- `(n+1)^(∑{e}[n+1, #]-1)` -/
def P17245199788716602615.Spec : Prop :=
  ∀ n, P17245199788716602615.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P9490956318574244556

`(n+1)^∑{e}[n+1, #]/(n+1)`
-/

namespace A072195.P9490956318574244556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / (n + 1 : ℚ)

end

end A072195.P9490956318574244556

namespace A072195

/-- `(n+1)^∑{e}[n+1, #]/(n+1)` -/
def P9490956318574244556.Spec : Prop :=
  ∀ n, P9490956318574244556.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P1748102026355624269

`∏{e}[n+1, (n+1)^#]/(n+1)`
-/

namespace A072195.P1748102026355624269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ Nat.factorization (f1 n) p : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A072195.P1748102026355624269

namespace A072195

/-- `∏{e}[n+1, (n+1)^#]/(n+1)` -/
def P1748102026355624269.Spec : Prop :=
  ∀ n, P1748102026355624269.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P636691291098282271

`A176029(n+1)/(n+1)`
-/

namespace A072195.P636691291098282271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176029 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A072195.P636691291098282271

namespace A072195

/-- `A176029(n+1)/(n+1)` -/
def P636691291098282271.Spec : Prop :=
  ∀ n, P636691291098282271.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P121489264814185308

`(n+1)^A252736(n+1)`
-/

namespace A072195.P121489264814185308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A252736 (n + 1) : ℤ)

end

end A072195.P121489264814185308

namespace A072195

/-- `(n+1)^A252736(n+1)` -/
def P121489264814185308.Spec : Prop :=
  ∀ n, P121489264814185308.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P8260311419246487093

`(n+1)^(Δ[A022559(n)]-1)`
-/

namespace A072195.P8260311419246487093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n - 1 : ℤ)

end

end A072195.P8260311419246487093

namespace A072195

/-- `(n+1)^(Δ[A022559(n)]-1)` -/
def P8260311419246487093.Spec : Prop :=
  ∀ n, P8260311419246487093.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P16813077949828659399

`(n+1)^(A086436(n+1)-1)`
-/

namespace A072195.P16813077949828659399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A086436 (n + 1) - 1 : ℤ)

end

end A072195.P16813077949828659399

namespace A072195

/-- `(n+1)^(A086436(n+1)-1)` -/
def P16813077949828659399.Spec : Prop :=
  ∀ n, P16813077949828659399.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P17595413591731634451

`(n+1)^(A073093(n+1)-2)`
-/

namespace A072195.P17595413591731634451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A073093 (n + 1) - 2 : ℤ)

end

end A072195.P17595413591731634451

namespace A072195

/-- `(n+1)^(A073093(n+1)-2)` -/
def P17595413591731634451.Spec : Prop :=
  ∀ n, P17595413591731634451.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P4738875048012759907

`(n+1)^(n-A069345(n+1))`
-/

namespace A072195.P4738875048012759907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - A069345 (n + 1) : ℤ)

end

end A072195.P4738875048012759907

namespace A072195

/-- `(n+1)^(n-A069345(n+1))` -/
def P4738875048012759907.Spec : Prop :=
  ∀ n, P4738875048012759907.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P16493584589154719875

`(n+1)^(val(A165825(n+1), 4)-1)`
-/

namespace A072195.P16493584589154719875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4 : ℤ) - 1 : ℤ)

end

end A072195.P16493584589154719875

namespace A072195

/-- `(n+1)^(val(A165825(n+1), 4)-1)` -/
def P16493584589154719875.Spec : Prop :=
  ∀ n, P16493584589154719875.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P6593488777566244159

`(n+1)^(A222312(n+1)-(n+1))`
-/

namespace A072195.P6593488777566244159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A222312 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A072195.P6593488777566244159

namespace A072195

/-- `(n+1)^(A222312(n+1)-(n+1))` -/
def P6593488777566244159.Spec : Prop :=
  ∀ n, P6593488777566244159.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P5947067591777708758

`(n+1)^(n-1-A075795(n+1))`
-/

namespace A072195.P5947067591777708758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - 1 - A075795 (n + 1) : ℤ)

end

end A072195.P5947067591777708758

namespace A072195

/-- `(n+1)^(n-1-A075795(n+1))` -/
def P5947067591777708758.Spec : Prop :=
  ∀ n, P5947067591777708758.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P16722881310035162710

`(n+1)^(A387470(n+1)/(n+1))`
-/

namespace A072195.P16722881310035162710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A387470 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A072195.P16722881310035162710

namespace A072195

/-- `(n+1)^(A387470(n+1)/(n+1))` -/
def P16722881310035162710.Spec : Prop :=
  ∀ n, P16722881310035162710.a n = (A072195 (n + 1) : ℝ)

end A072195

/-! ## A072195.P15977663640458360225

`(n+1)^A001222(C(n+1, n))/(n+1)`
-/

namespace A072195.P15977663640458360225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001222 (Nat.choose (n + 1) n) : ℤ) / (n + 1 : ℚ)

end

end A072195.P15977663640458360225

namespace A072195

/-- `(n+1)^A001222(C(n+1, n))/(n+1)` -/
def P15977663640458360225.Spec : Prop :=
  ∀ n, P15977663640458360225.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P3984939408829578944

`A304404(n+1)*A363919(n+1)`
-/

namespace A072195.P3984939408829578944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304404 (n + 1) * A363919 (n + 1)

end

end A072195.P3984939408829578944

namespace A072195

/-- `A304404(n+1)*A363919(n+1)` -/
def P3984939408829578944.Spec : Prop :=
  ∀ n, P3984939408829578944.a n = A072195 (n + 1)

end A072195

/-! ## A072195.P12606532413740528934

`A363923(n+1)/A003557(n+1)`
-/

namespace A072195.P12606532413740528934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363923 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A072195.P12606532413740528934

namespace A072195

/-- `A363923(n+1)/A003557(n+1)` -/
def P12606532413740528934.Spec : Prop :=
  ∀ n, P12606532413740528934.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P2354523452691671100

`(n+1)^A001222(A032742(n+1))`
-/

namespace A072195.P2354523452691671100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001222 (A032742 (n + 1)).toNat : ℤ)

end

end A072195.P2354523452691671100

namespace A072195

/-- `(n+1)^A001222(A032742(n+1))` -/
def P2354523452691671100.Spec : Prop :=
  ∀ n, P2354523452691671100.a n = (A072195 (n + 1) : ℚ)

end A072195

/-! ## A072195.P11350330421072605588

`A000010(2^A001222(n+1))^log2(n+1)`
-/

namespace A072195.P11350330421072605588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (n + 1) : ℤ))).toNat : ℝ) ^ (Real.logb 2 (n + 1 : ℝ))

end

end A072195.P11350330421072605588

namespace A072195

/-- `A000010(2^A001222(n+1))^log2(n+1)` -/
def P11350330421072605588.Spec : Prop :=
  ∀ n, P11350330421072605588.a n = (A072195 (n + 1) : ℝ)

end A072195

/-!
# A072196: Multiples of 3 which on one operation of the Collatz function T (N -> 3N+1/2^r) yield the number 5.

The programs for A072196, the canonical program `A072196.P16893771847394059206` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072196 has offset 1).

The definition of A072196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072196.P16893771847394059206

`65*a(n-1)-64*a(n-2)` with `a(0)=3, a(1)=213`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072196

/-- `65*a(n-1)-64*a(n-2)` -/
def P16893771847394059206.Spec : Prop :=
  ∀ n, P16893771847394059206.a n = A072196 (n + 1)

theorem P16893771847394059206.correct : P16893771847394059206.Spec := by
  intro n
  simp only [A072196, Nat.add_sub_cancel]

end A072196

/-! ## A072196.P11422019834980398207

`(10*64^n-1)/3`
-/

namespace A072196.P11422019834980398207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * 64 ^ n : ℤ) - 1 : ℚ) / 3

end

end A072196.P11422019834980398207

namespace A072196

/-- `(10*64^n-1)/3` -/
def P11422019834980398207.Spec : Prop :=
  ∀ n, P11422019834980398207.a n = (A072196 (n + 1) : ℚ)

theorem P11422019834980398207.correct : P11422019834980398207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A072196, Nat.add_sub_cancel, A072196.P11422019834980398207.a, A072196.P16893771847394059206.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A072196, Nat.add_sub_cancel, A072196.P11422019834980398207.a, A072196.P16893771847394059206.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072196

/-! ## A072196.P16661873401292646570

`64*a(n-1)+21` with `a(0)=3`
-/

namespace A072196.P16661873401292646570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  64 * a (n - 1) + 21

end

end A072196.P16661873401292646570

namespace A072196

/-- `64*a(n-1)+21` -/
def P16661873401292646570.Spec : Prop :=
  ∀ n, (P16661873401292646570.a n : ℤ) = A072196 (n + 1)

end A072196

/-! ## A072196.P2321030840093655968

`A072197(3*n)`
-/

namespace A072196.P2321030840093655968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 (3 * n)

end

end A072196.P2321030840093655968

namespace A072196

/-- `A072197(3*n)` -/
def P2321030840093655968.Spec : Prop :=
  ∀ n, P2321030840093655968.a n = A072196 (n + 1)

end A072196

/-! ## A072196.P14151065978296509456

`A159290(6*n)`
-/

namespace A072196.P14151065978296509456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159290 (6 * n)

end

end A072196.P14151065978296509456

namespace A072196

/-- `A159290(6*n)` -/
def P14151065978296509456.Spec : Prop :=
  ∀ n, P14151065978296509456.a n = A072196 (n + 1)

end A072196

/-! ## A072196.P9730290277095136052

`A321421(3*n)+2`
-/

namespace A072196.P9730290277095136052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321421 (3 * n) + 2

end

end A072196.P9730290277095136052

namespace A072196

/-- `A321421(3*n)+2` -/
def P9730290277095136052.Spec : Prop :=
  ∀ n, P9730290277095136052.a n = A072196 (n + 1)

end A072196

/-! ## A072196.P895707558269477189

`A283323(6*n+1)`
-/

namespace A072196.P895707558269477189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283323 (6 * n + 1)

end

end A072196.P895707558269477189

namespace A072196

/-- `A283323(6*n+1)` -/
def P895707558269477189.Spec : Prop :=
  ∀ n, P895707558269477189.a n = A072196 (n + 1)

end A072196

/-! ## A072196.P7855939441516486382

`A048573(A016921(n))`
-/

namespace A072196.P7855939441516486382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 (A016921 n).toNat

end

end A072196.P7855939441516486382

namespace A072196

/-- `A048573(A016921(n))` -/
def P7855939441516486382.Spec : Prop :=
  ∀ n, P7855939441516486382.a n = A072196 (n + 1)

end A072196

/-! ## A072196.P11405932971150849612

`A081254(A016933(n))`
-/

namespace A072196.P11405932971150849612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (A016933 n).toNat

end

end A072196.P11405932971150849612

namespace A072196

/-- `A081254(A016933(n))` -/
def P11405932971150849612.Spec : Prop :=
  ∀ n, P11405932971150849612.a n = A072196 (n + 1)

end A072196

/-! ## A072196.P5540289492569834156

`A169969(A017545(n))`
-/

namespace A072196.P5540289492569834156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169969 (A017545 n).toNat

end

end A072196.P5540289492569834156

namespace A072196

/-- `A169969(A017545(n))` -/
def P5540289492569834156.Spec : Prop :=
  ∀ n, P5540289492569834156.a n = A072196 (n + 1)

end A072196

/-!
# A072197: a(n) = 4*a(n-1) + 1 with a(0) = 3.

The programs for A072197, the canonical program `A072197.P15341297638914803562` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072197 has offset 0).

The definition of A072197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+1` (program `A072197.P15341297638914803562`, by `A072197.P15341297638914803562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072197.P15341297638914803562

`4*a(n-1)+1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A072197

/-- `4*a(n-1)+1` -/
def P15341297638914803562.Spec : Prop :=
  ∀ n, (P15341297638914803562.a n : ℤ) = A072197 n

theorem P15341297638914803562.correct : P15341297638914803562.Spec := by
  intro n
  simp only [A072197]

end A072197

/-! ## A072197.P13203508718922844627

`2^(2*(n+1))-(2^(2*n+1)+1)/3`
-/

namespace A072197.P13203508718922844627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * (n + 1)) : ℚ) - (2 ^ (2 * n + 1) + 1 : ℚ) / 3

end

end A072197.P13203508718922844627

namespace A072197

/-- `2^(2*(n+1))-(2^(2*n+1)+1)/3` -/
def P13203508718922844627.Spec : Prop :=
  ∀ n, P13203508718922844627.a n = (A072197 n : ℚ)

theorem P13203508718922844627.correct : P13203508718922844627.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A072197, Nat.add_sub_cancel, A072197.P13203508718922844627.a, A072197.P15341297638914803562.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A072197, Nat.add_sub_cancel, A072197.P13203508718922844627.a, A072197.P15341297638914803562.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A072197

/-! ## A072197.P13616012461184513992

`ogf((3-2x)/(1-5x+4x^2))`
-/

namespace A072197.P13616012461184513992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -5, 4] n

end

end A072197.P13616012461184513992

namespace A072197

/-- `ogf((3-2x)/(1-5x+4x^2))` -/
def P13616012461184513992.Spec : Prop :=
  ∀ n, P13616012461184513992.a n = A072197 n

end A072197

/-! ## A072197.P16231212862775896154

`or(1, 4*a(n-1))` with `a(0)=3`
-/

namespace A072197.P16231212862775896154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A072197.P16231212862775896154

namespace A072197

/-- `or(1, 4*a(n-1))` -/
def P16231212862775896154.Spec : Prop :=
  ∀ n, (P16231212862775896154.a n : ℤ) = A072197 n

end A072197

/-! ## A072197.P4756534255064002207

`xor(1, 4*a(n-1))` with `a(0)=3`
-/

namespace A072197.P4756534255064002207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 (4 * a (n - 1))

end

end A072197.P4756534255064002207

namespace A072197

/-- `xor(1, 4*a(n-1))` -/
def P4756534255064002207.Spec : Prop :=
  ∀ n, (P4756534255064002207.a n : ℤ) = A072197 n

end A072197

/-! ## A072197.P2683763781258405533

`∑[4*a(n-1)]` with `a(0)=3, a(1)=10`
-/

namespace A072197.P2683763781258405533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072197.P2683763781258405533

namespace A072197

/-- `∑[4*a(n-1)]` -/
def P2683763781258405533.Spec : Prop :=
  ∀ n, (P2683763781258405533.a n : ℤ) = A072197 n

end A072197

/-! ## A072197.P17566366054563395822

`or(2*4^n, ∑[4^n])`
-/

namespace A072197.P17566366054563395822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * 4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072197.P17566366054563395822

namespace A072197

/-- `or(2*4^n, ∑[4^n])` -/
def P17566366054563395822.Spec : Prop :=
  ∀ n, (P17566366054563395822.a n : ℤ) = A072197 n

end A072197

/-! ## A072197.P12126967387323723888

`xor(2*4^n, ∑[4^n])`
-/

namespace A072197.P12126967387323723888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * 4 ^ n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072197.P12126967387323723888

namespace A072197

/-- `xor(2*4^n, ∑[4^n])` -/
def P12126967387323723888.Spec : Prop :=
  ∀ n, (P12126967387323723888.a n : ℤ) = A072197 n

end A072197

/-! ## A072197.P3136313506222448538

`(5-(a(n-1)-1)/a(n-1))*a(n-1)` with `a(0)=3`
-/

namespace A072197.P3136313506222448538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (5 - (a (n - 1) - 1) / a (n - 1)) * a (n - 1)

end

end A072197.P3136313506222448538

namespace A072197

/-- `(5-(a(n-1)-1)/a(n-1))*a(n-1)` -/
def P3136313506222448538.Spec : Prop :=
  ∀ n, P3136313506222448538.a n = (A072197 n : ℚ)

end A072197

/-! ## A072197.P12470344360846126353

`Δ[A172447(n)]`
-/

namespace A072197.P12470344360846126353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072197.P12470344360846126353

namespace A072197

/-- `Δ[A172447(n)]` -/
def P12470344360846126353.Spec : Prop :=
  ∀ n, P12470344360846126353.a n = A072197 n

end A072197

/-! ## A072197.P5101669958445307384

`A159290(2*n)`
-/

namespace A072197.P5101669958445307384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159290 (2 * n)

end

end A072197.P5101669958445307384

namespace A072197

/-- `A159290(2*n)` -/
def P5101669958445307384.Spec : Prop :=
  ∀ n, P5101669958445307384.a n = A072197 n

end A072197

/-! ## A072197.P15086604406926443025

`A048573(Δ[n²])`
-/

namespace A072197.P15086604406926443025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072197.P15086604406926443025

namespace A072197

/-- `A048573(Δ[n²])` -/
def P15086604406926443025.Spec : Prop :=
  ∀ n, P15086604406926443025.a n = A072197 n

end A072197

/-! ## A072197.P8564699945781010981

`A283323(Δ[n²])`
-/

namespace A072197.P8564699945781010981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283323 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072197.P8564699945781010981

namespace A072197

/-- `A283323(Δ[n²])` -/
def P8564699945781010981.Spec : Prop :=
  ∀ n, P8564699945781010981.a n = A072197 n

end A072197

/-! ## A072197.P8203806757374114868

`record[A096773(n+2)]`
-/

namespace A072197.P8203806757374114868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072197.P8203806757374114868

namespace A072197

/-- `record[A096773(n+2)]` -/
def P8203806757374114868.Spec : Prop :=
  ∀ n, P8203806757374114868.a n = A072197 n

end A072197

/-! ## A072197.P4412374116538595522

`Δ[A172416(Δ[n²])]`
-/

namespace A072197.P4412374116538595522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172416 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072197.P4412374116538595522

namespace A072197

/-- `Δ[A172416(Δ[n²])]` -/
def P4412374116538595522.Spec : Prop :=
  ∀ n, P4412374116538595522.a n = A072197 n

end A072197

/-! ## A072197.P10079740309937727272

`A081254(2*(n+1))`
-/

namespace A072197.P10079740309937727272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081254 (2 * (n + 1))

end

end A072197.P10079740309937727272

namespace A072197

/-- `A081254(2*(n+1))` -/
def P10079740309937727272.Spec : Prop :=
  ∀ n, P10079740309937727272.a n = A072197 n

end A072197

/-! ## A072197.P4941932789424372526

`A086893(2*(n+1))`
-/

namespace A072197.P4941932789424372526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086893 (2 * (n + 1))

end

end A072197.P4941932789424372526

namespace A072197

/-- `A086893(2*(n+1))` -/
def P4941932789424372526.Spec : Prop :=
  ∀ n, P4941932789424372526.a n = A072197 n

end A072197

/-! ## A072197.P1329281600337888844

`A096773(2*(n+1))`
-/

namespace A072197.P1329281600337888844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (2 * (n + 1))

end

end A072197.P1329281600337888844

namespace A072197

/-- `A096773(2*(n+1))` -/
def P1329281600337888844.Spec : Prop :=
  ∀ n, P1329281600337888844.a n = A072197 n

end A072197

/-! ## A072197.P8293568522476596341

`A169969(A016825(n))`
-/

namespace A072197.P8293568522476596341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169969 (A016825 n).toNat

end

end A072197.P8293568522476596341

namespace A072197

/-- `A169969(A016825(n))` -/
def P8293568522476596341.Spec : Prop :=
  ∀ n, P8293568522476596341.a n = A072197 n

end A072197

/-! ## A072197.P8387987234853315430

`A389642(A016897(n))`
-/

namespace A072197.P8387987234853315430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389642 (A016897 n).toNat

end

end A072197.P8387987234853315430

namespace A072197

/-- `A389642(A016897(n))` -/
def P8387987234853315430.Spec : Prop :=
  ∀ n, P8387987234853315430.a n = A072197 n

end A072197

/-!
# A072198: E12 range of preferred resistor values in electronic engineering.

The programs for A072198, there is no canonical definition to state claims against.
-/

/-! ## A072198.P10765120071830873426

`A072554(Δ[n²])`
-/

namespace A072198.P10765120071830873426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072198.P10765120071830873426

/-! ## A072198.P7352697166088980639

`A072554(2*n+1)+char[13]`
-/

namespace A072198.P7352697166088980639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072554 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A072198.P7352697166088980639

/-! ## A072198.P2091709333531297098

`record[(-1)^n*A072554(n+1)]`
-/

namespace A072198.P2091709333531297098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A072554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072198.P2091709333531297098

/-! ## A072198.P12317710212538982740

`record[A072554((n+1)/2^val(n+1, 2))]`
-/

namespace A072198.P12317710212538982740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072198.P12317710212538982740

/-! ## A072198.P11060794686405228079

`record[A072554(A099375(n))]`
-/

namespace A072198.P11060794686405228079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072554 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072198.P11060794686405228079

