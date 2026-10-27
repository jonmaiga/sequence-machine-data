import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
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
# A201100: Number of nX7 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201100, there is no canonical definition to state claims against.
-/

/-! ## A201100.P6310159196690204518

`A201101(A374008(n+1))`
-/

namespace A201100.P6310159196690204518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A374008 (n + 1)).toNat

end

end A201100.P6310159196690204518

/-! ## A201100.P13287011533113524011

`A201101(A055999(n+4))`
-/

namespace A201100.P13287011533113524011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A055999 (n + 4)).toNat

end

end A201100.P13287011533113524011

/-! ## A201100.P3673662966034381532

`A201101(A056119(n)+28)`
-/

namespace A201100.P3673662966034381532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (A056119 n + 28).toNat

end

end A201100.P3673662966034381532

/-! ## A201100.P4106422075184851847

`A201101(eq[4, A219347(n)])`
-/

namespace A201100.P4106422075184851847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201100.P4106422075184851847

/-! ## A201100.P15527473532082225584

`A201101(eq[6, A193592(n)])`
-/

namespace A201100.P15527473532082225584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201100.P15527473532082225584

/-!
# A201101: T(n,k)=Number of nXk 0..7 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201101, there is no canonical definition to state claims against.
-/

/-! ## A201101.P1176573792535619216

`A162794(A385816(n)+A356760(n))`
-/

namespace A201101.P1176573792535619216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162794 (A385816 n + A356760 n).toNat

end

end A201101.P1176573792535619216

/-!
# A201102: Number of n X 2 0..7 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201102, there is no canonical definition to state claims against.
-/

/-! ## A201102.P2955543975506952945

`A201105(∑[n+1]+2)`
-/

namespace A201102.P2955543975506952945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201105 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201102.P2955543975506952945

/-! ## A201102.P10986324967697874590

`A262257(n)+A201105(A000096(n)+3)`
-/

namespace A201102.P10986324967697874590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262257 n + A201105 (A000096 n + 3).toNat

end

end A201102.P10986324967697874590

/-! ## A201102.P12489703645809519667

`A201105(A000096(n+1))*A309861(n)`
-/

namespace A201102.P12489703645809519667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201105 (A000096 (n + 1)).toNat * A309861 n

end

end A201102.P12489703645809519667

/-!
# A201103: Number of nX3 0..7 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201103, there is no canonical definition to state claims against.
-/

/-! ## A201103.P17545882660124795653

`A201105(∑[n+2]+4)`
-/

namespace A201103.P17545882660124795653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201105 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201103.P17545882660124795653

/-! ## A201103.P5671870962858160421

`lcm((-1)^∑{e}[n+1, #], A201105(A167614(n+1)))`
-/

namespace A201103.P5671870962858160421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A201105 (A167614 (n + 1)).toNat)

end

end A201103.P5671870962858160421

/-! ## A201103.P14888135768930225584

`A201105(A167614(n+1))+A036422(n)`
-/

namespace A201103.P14888135768930225584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201105 (A167614 (n + 1)).toNat + A036422 n

end

end A201103.P14888135768930225584

/-!
# A201104: Number of nX4 0..7 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201104, there is no canonical definition to state claims against.
-/

/-! ## A201104.P118358639248911038

`A201105(A020752(n+1))`
-/

namespace A201104.P118358639248911038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201105 (A020752 (n + 1)).toNat

end

end A201104.P118358639248911038

/-!
# A201105: T(n,k)=Number of nXk 0..7 arrays with every row and column running average nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201105, there is no canonical definition to state claims against.
-/

/-! ## A201105.P4734439231628905927

`A138405(A048615(n+1))%A151731(2*(n+2))`
-/

namespace A201105.P4734439231628905927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138405 (A048615 (n + 1)).toNat) (A151731 (2 * (n + 2)))

end

end A201105.P4734439231628905927

/-!
# A201106: a(n) = binomial(n^2,3)/(2*n).

The programs for A201106, the canonical program `A201106.P9329069864372133690` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201106 has offset 1).

The definition of A201106 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201106.P9329069864372133690

`C((n+1)², 3)/(2*(n+1))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201106

/-- `C((n+1)², 3)/(2*(n+1))` -/
def P9329069864372133690.Spec : Prop :=
  ∀ n, P9329069864372133690.a n = (A201106 (n + 1) : ℚ)

end A201106

/-! ## A201106.P6102052302096218744

`n*(n+1)*((n+1)^3+(n+1)²-2*(n+1)-2)/12`
-/

namespace A201106.P6102052302096218744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * (((n + 1) ^ 3 + (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) - 2) : ℚ) / 12

end

end A201106.P6102052302096218744

namespace A201106

/-- `n*(n+1)*((n+1)^3+(n+1)²-2*(n+1)-2)/12` -/
def P6102052302096218744.Spec : Prop :=
  ∀ n, P6102052302096218744.a n = (A201106 (n + 1) : ℚ)

end A201106

/-! ## A201106.P484009263511234945

`∑[∑[10*C(n+1, 3)+n]]`
-/

namespace A201106.P484009263511234945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (n + 1) 3 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201106.P484009263511234945

namespace A201106

/-- `∑[∑[10*C(n+1, 3)+n]]` -/
def P484009263511234945.Spec : Prop :=
  ∀ n, (P484009263511234945.a n : ℤ) = A201106 (n + 1)

end A201106

/-! ## A201106.P3901498119093030376

`∑[n²]*∑[n]-a(n-1)` with `a(0)=0`
-/

namespace A201106.P3901498119093030376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j) : ℕ) : ℤ) - a (n - 1)

end

end A201106.P3901498119093030376

namespace A201106

/-- `∑[n²]*∑[n]-a(n-1)` -/
def P3901498119093030376.Spec : Prop :=
  ∀ n, P3901498119093030376.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P15042320858262952822

`Δ[C(n+1, n-2)²-a(n-1)]` with `a(0)=0, a(1)=0`
-/

namespace A201106.P15042320858262952822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  (Nat.choose (n + 1) ((n : ℤ) - 2).toNat ^ 2 : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201106.P15042320858262952822

namespace A201106

/-- `Δ[C(n+1, n-2)²-a(n-1)]` -/
def P15042320858262952822.Spec : Prop :=
  ∀ n, P15042320858262952822.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P10174166127935518602

`∑[A264853(n)]`
-/

namespace A201106.P10174166127935518602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201106.P10174166127935518602

namespace A201106

/-- `∑[A264853(n)]` -/
def P10174166127935518602.Spec : Prop :=
  ∀ n, P10174166127935518602.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P15509713451892847982

`∑[∑[A004466(n)]]`
-/

namespace A201106.P15509713451892847982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201106.P15509713451892847982

namespace A201106

/-- `∑[∑[A004466(n)]]` -/
def P15509713451892847982.Spec : Prop :=
  ∀ n, P15509713451892847982.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P1474400924776084405

`2/(n+1)*A337899(n+1)`
-/

namespace A201106.P1474400924776084405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A337899 (n + 1) : ℚ)

end

end A201106.P1474400924776084405

namespace A201106

/-- `2/(n+1)*A337899(n+1)` -/
def P1474400924776084405.Spec : Prop :=
  ∀ n, P1474400924776084405.a n = (A201106 (n + 1) : ℚ)

end A201106

/-! ## A201106.P12891033404549381609

`A085462(n+1)-A051878(n)`
-/

namespace A201106.P12891033404549381609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - A051878 n

end

end A201106.P12891033404549381609

namespace A201106

/-- `A085462(n+1)-A051878(n)` -/
def P12891033404549381609.Spec : Prop :=
  ∀ n, P12891033404549381609.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P2829295379864911267

`A220892(n)-A072474(n+1)`
-/

namespace A201106.P2829295379864911267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220892 n - A072474 (n + 1)

end

end A201106.P2829295379864911267

namespace A201106

/-- `A220892(n)-A072474(n+1)` -/
def P2829295379864911267.Spec : Prop :=
  ∀ n, P2829295379864911267.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P6271779809598245367

`A076461(n+1)%A108674(n)`
-/

namespace A201106.P6271779809598245367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076461 (n + 1)) (A108674 n)

end

end A201106.P6271779809598245367

namespace A201106

/-- `A076461(n+1)%A108674(n)` -/
def P6271779809598245367.Spec : Prop :=
  ∀ n, P6271779809598245367.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P11104315532998925177

`A095166(n+1)-A006322(n+1)`
-/

namespace A201106.P11104315532998925177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (n + 1) - A006322 (n + 1)

end

end A201106.P11104315532998925177

namespace A201106

/-- `A095166(n+1)-A006322(n+1)` -/
def P11104315532998925177.Spec : Prop :=
  ∀ n, P11104315532998925177.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P46407299331430482

`A185355(n+1)+n*A002415(n)`
-/

namespace A201106.P46407299331430482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 1) + (n : ℤ) * A002415 n

end

end A201106.P46407299331430482

namespace A201106

/-- `A185355(n+1)+n*A002415(n)` -/
def P46407299331430482.Spec : Prop :=
  ∀ n, P46407299331430482.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P3330529025338261896

`A000292(n)+A000292(n+1)*A161680(n)`
-/

namespace A201106.P3330529025338261896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + A000292 (n + 1) * A161680 n

end

end A201106.P3330529025338261896

namespace A201106

/-- `A000292(n)+A000292(n+1)*A161680(n)` -/
def P3330529025338261896.Spec : Prop :=
  ∀ n, P3330529025338261896.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P3327553137626167794

`Δ[∑[C(n, 2)]²-a(n-1)]` with `a(0)=0`
-/

namespace A201106.P3327553137626167794
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201106.P3327553137626167794

namespace A201106

/-- `Δ[∑[C(n, 2)]²-a(n-1)]` -/
def P3327553137626167794.Spec : Prop :=
  ∀ n, P3327553137626167794.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P6971755675988426930

`A244864(n)-A002418(n+1)`
-/

namespace A201106.P6971755675988426930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A002418 (n + 1)

end

end A201106.P6971755675988426930

namespace A201106

/-- `A244864(n)-A002418(n+1)` -/
def P6971755675988426930.Spec : Prop :=
  ∀ n, P6971755675988426930.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P9063838461140154393

`∑[A002578(n²+n+1)]`
-/

namespace A201106.P9063838461140154393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002578 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201106.P9063838461140154393

namespace A201106

/-- `∑[A002578(n²+n+1)]` -/
def P9063838461140154393.Spec : Prop :=
  ∀ n, P9063838461140154393.a n = A201106 (n + 1)

end A201106

/-! ## A201106.P3654297374749177128

`∑[A059293(n²+n+1)]`
-/

namespace A201106.P3654297374749177128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059293 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201106.P3654297374749177128

namespace A201106

/-- `∑[A059293(n²+n+1)]` -/
def P3654297374749177128.Spec : Prop :=
  ∀ n, P3654297374749177128.a n = A201106 (n + 1)

end A201106

/-!
# A201107: Primes of the form 2k^3+1.

The programs for A201107, there is no canonical definition to state claims against.
-/

/-! ## A201107.P15603061630820576735

`2*A168550(n+1)^3+1`
-/

namespace A201107.P15603061630820576735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168550 (n + 1) ^ 3 + 1

end

end A201107.P15603061630820576735

/-! ## A201107.P8979809159197968292

`A033562(A168550(n+1))`
-/

namespace A201107.P8979809159197968292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 (A168550 (n + 1)).toNat

end

end A201107.P8979809159197968292

/-! ## A201107.P6011178828356838010

`∩[A173587(n+1), A033562(n)]`
-/

namespace A201107.P6011178828356838010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201107.P6011178828356838010

/-! ## A201107.P3128659190306743196

`p?[2*n^3+1]`
-/

namespace A201107.P3128659190306743196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201107.P3128659190306743196

/-! ## A201107.P3190885297338431293

`or(1, p?[or(1, 2*n^3)])`
-/

namespace A201107.P3190885297338431293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201107.P3190885297338431293

/-!
# A201108: Primes of the form 2n^3+3.

The programs for A201108, there is no canonical definition to state claims against.
-/

/-! ## A201108.P7847453810414303095

`p?[2*n^3+3]`
-/

namespace A201108.P7847453810414303095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201108.P7847453810414303095

/-! ## A201108.P5028585569074026687

`∑{d}[p?[2*n*n²+3], #]-1`
-/

namespace A201108.P5028585569074026687
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - 1

end

end A201108.P5028585569074026687

/-! ## A201108.P5766031456608689667

`or(1, p?[A033431(n)+3])`
-/

namespace A201108.P5766031456608689667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201108.P5766031456608689667

/-!
# A201109: Primes of the form 2n^3+5.

The programs for A201109, there is no canonical definition to state claims against.
-/

/-! ## A201109.P16378813405225038611

`p?[2*n^3+5]`
-/

namespace A201109.P16378813405225038611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201109.P16378813405225038611

/-! ## A201109.P16925724046872187034

`round(sqrt(p?[2*n*n²+5]²+1))`
-/

namespace A201109.P16925724046872187034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A201109.P16925724046872187034

/-! ## A201109.P1012352795604161040

`or(1, p?[A033431(n)+5])`
-/

namespace A201109.P1012352795604161040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201109.P1012352795604161040

/-! ## A201109.P13346210076916270964

`p?[2*n*n²+5]-A326681(n)`
-/

namespace A201109.P13346210076916270964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A326681 n

end

end A201109.P13346210076916270964

/-!
# A201110: Primes of the form 2n^3+7.

The programs for A201110, there is no canonical definition to state claims against.
-/

/-! ## A201110.P1901096199055765793

`A033431(A125559(n+1))+7`
-/

namespace A201110.P1901096199055765793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (A125559 (n + 1)).toNat + 7

end

end A201110.P1901096199055765793

/-! ## A201110.P170335459016587055

`p?[2*n^3+7]`
-/

namespace A201110.P170335459016587055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201110.P170335459016587055

/-! ## A201110.P10394083056265396515

`record[∑{p}[2*n^3+7, #]]`
-/

namespace A201110.P10394083056265396515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201110.P10394083056265396515

/-!
# A201111: Primes of the form 2n^3+9.

The programs for A201111, there is no canonical definition to state claims against.
-/

/-! ## A201111.P12127627415289124104

`p?[2*n^3+9]`
-/

namespace A201111.P12127627415289124104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201111.P12127627415289124104

/-! ## A201111.P15978612486231506537

`or(1, p?[2*n*n²+9])`
-/

namespace A201111.P15978612486231506537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * n ^ 2) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201111.P15978612486231506537

/-! ## A201111.P3138270231410373318

`A007318(∑[n])*p?[A033431(n)+9]`
-/

namespace A201111.P3138270231410373318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201111.P3138270231410373318

/-! ## A201111.P6916630864402727705

`A000041(C(2, n+2))*p?[A033431(n)+9]`
-/

namespace A201111.P6916630864402727705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201111.P6916630864402727705

/-!
# A201112: Primes of the form 3n^3+1.

The programs for A201112, there is no canonical definition to state claims against.
-/

/-! ## A201112.P14083981511351593858

`A117642(A116954(n+1))+1`
-/

namespace A201112.P14083981511351593858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 (A116954 (n + 1)).toNat + 1

end

end A201112.P14083981511351593858

/-! ## A201112.P13226469900981495935

`p?[3*n^3+1]`
-/

namespace A201112.P13226469900981495935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201112.P13226469900981495935

/-! ## A201112.P15062843664174150795

`or(1, p?[3*n*n²+1])`
-/

namespace A201112.P15062843664174150795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * n ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201112.P15062843664174150795

/-! ## A201112.P13154553995176021389

`xor(1, p?[3*n*n²+1]-1)`
-/

namespace A201112.P13154553995176021389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1)

end

end A201112.P13154553995176021389

/-!
# A201113: Primes of the form 3n^3+2.

The programs for A201113, there is no canonical definition to state claims against.
-/

/-! ## A201113.P17814462284360759032

`p?[3*n^3+2]`
-/

namespace A201113.P17814462284360759032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201113.P17814462284360759032

/-! ## A201113.P6414456363875892223

`gcd(n, n+1)*p?[3*n*n²+2]`
-/

namespace A201113.P6414456363875892223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n * n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201113.P6414456363875892223

/-! ## A201113.P3851408568425521986

`A007318(∑[n])*p?[A117642(n)+2]`
-/

namespace A201113.P3851408568425521986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201113.P3851408568425521986

/-! ## A201113.P2872665970739258565

`p?[A117642(n)+2]%A201114(n+1)`
-/

namespace A201113.P2872665970739258565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A201114 (n + 1))

end

end A201113.P2872665970739258565

/-!
# A201114: Primes of the form 3n^3+4.

The programs for A201114, there is no canonical definition to state claims against.
-/

/-! ## A201114.P17288034521050898001

`p?[3*n^3+4]`
-/

namespace A201114.P17288034521050898001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201114.P17288034521050898001

/-! ## A201114.P12425648050032121172

`or(1, p?[A117642(n)+4])`
-/

namespace A201114.P12425648050032121172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201114.P12425648050032121172

/-! ## A201114.P2444935092682349280

`p?[A117642(n)+4]/A007318(C(2, n))`
-/

namespace A201114.P2444935092682349280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201114.P2444935092682349280

/-! ## A201114.P1040373629907391482

`p?[A117642(n)+4]^A007318(C(3, n))`
-/

namespace A201114.P1040373629907391482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A201114.P1040373629907391482

/-! ## A201114.P14633917712656077181

`A007318(A007318(n))*p?[A117642(n)+4]`
-/

namespace A201114.P14633917712656077181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201114.P14633917712656077181

/-!
# A201115: Primes of the form 3n^3+5.

The programs for A201115, there is no canonical definition to state claims against.
-/

/-! ## A201115.P17796746357333660680

`p?[3*n^3+5]`
-/

namespace A201115.P17796746357333660680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201115.P17796746357333660680

/-! ## A201115.P13518210469201990201

`or(1, p?[A117642(n)+5])`
-/

namespace A201115.P13518210469201990201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201115.P13518210469201990201

/-! ## A201115.P482532702808450972

`A007318(∑[n])*p?[A117642(n)+5]`
-/

namespace A201115.P482532702808450972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201115.P482532702808450972

/-! ## A201115.P828159988722412977

`p?[A117642(n)+5]%A201114(n+1)`
-/

namespace A201115.P828159988722412977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A201114 (n + 1))

end

end A201115.P828159988722412977

/-! ## A201115.P6589452311370190135

`p?[A117642(n)+5]+A000045(C(n, 64))`
-/

namespace A201115.P6589452311370190135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (Nat.choose n 64)

end

end A201115.P6589452311370190135

/-!
# A201116: Primes of the form 3n^3+7.

The programs for A201116, there is no canonical definition to state claims against.
-/

/-! ## A201116.P3391460598329434392

`p?[3*n^3+7]`
-/

namespace A201116.P3391460598329434392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201116.P3391460598329434392

/-! ## A201116.P6594034749573468409

`or(1, p?[A117642(n)+7])`
-/

namespace A201116.P6594034749573468409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201116.P6594034749573468409

/-! ## A201116.P16522943739504202930

`p?[A117642(n)+7]%A201114(2*(n+1))`
-/

namespace A201116.P16522943739504202930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A201114 (2 * (n + 1)))

end

end A201116.P16522943739504202930

/-! ## A201116.P17345521433004582455

`A000041(C(2, n+2))*p?[A117642(n)+7]`
-/

namespace A201116.P17345521433004582455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201116.P17345521433004582455

/-!
# A201117: Primes of the form 3*k^3 + 8.

The programs for A201117, there is no canonical definition to state claims against.
-/

/-! ## A201117.P15992278551506798426

`p?[3*n^3+8]`
-/

namespace A201117.P15992278551506798426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201117.P15992278551506798426

/-! ## A201117.P14128792471835695194

`or(1, p?[A117642(n)+8])`
-/

namespace A201117.P14128792471835695194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201117.P14128792471835695194

/-! ## A201117.P3519183789332229630

`A007318(∑[n])*p?[A117642(n)+8]`
-/

namespace A201117.P3519183789332229630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201117.P3519183789332229630

/-! ## A201117.P1320902105810739534

`p?[A117642(n)+8]/A007318(C(n, 2))`
-/

namespace A201117.P1320902105810739534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A201117.P1320902105810739534

/-! ## A201117.P2175462652129936300

`A000041(C(n, 47))*p?[A117642(n)+8]`
-/

namespace A201117.P2175462652129936300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 47) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201117.P2175462652129936300

/-!
# A201118: Primes of the form 3n^3+10.

The programs for A201118, there is no canonical definition to state claims against.
-/

/-! ## A201118.P12041418945521552039

`p?[3*n^3+10]`
-/

namespace A201118.P12041418945521552039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 3 + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201118.P12041418945521552039

/-! ## A201118.P11313345215991829216

`or(1, p?[A117642(n)+10])`
-/

namespace A201118.P11313345215991829216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201118.P11313345215991829216

/-! ## A201118.P10439692799192983095

`A014963(6*(n+1))*p?[A117642(n)+10]`
-/

namespace A201118.P10439692799192983095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201118.P10439692799192983095

/-! ## A201118.P11862617046137581415

`A000203(gcd(n, n+1))*p?[A117642(n)+10]`
-/

namespace A201118.P11862617046137581415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117642 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201118.P11862617046137581415

/-!
# A201119: Primes of the form 4k^3+5.

The programs for A201119, there is no canonical definition to state claims against.
-/

/-! ## A201119.P1075361605035029118

`p?[4*n^3+5]`
-/

namespace A201119.P1075361605035029118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201119.P1075361605035029118

/-! ## A201119.P13939796579629671719

`round(sqrt(p?[n*(2*n)²+5]²+1))`
-/

namespace A201119.P13939796579629671719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) ^ 2 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A201119.P13939796579629671719

/-!
# A201120: Primes of the form 4k^3+7.

The programs for A201120, there is no canonical definition to state claims against.
-/

/-! ## A201120.P1941391289206535658

`p?[4*n^3+7]`
-/

namespace A201120.P1941391289206535658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201120.P1941391289206535658

/-! ## A201120.P6298777987457405578

`or(1, p?[A100214(n)+3])`
-/

namespace A201120.P6298777987457405578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201120.P6298777987457405578

/-! ## A201120.P7094279340391561038

`A007318(∑[n])*p?[A100214(n)+3]`
-/

namespace A201120.P7094279340391561038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201120.P7094279340391561038

/-! ## A201120.P15711035512120931121

`A007318(C(n, 2))²*p?[A100214(n)+3]`
-/

namespace A201120.P15711035512120931121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201120.P15711035512120931121

/-!
# A201121: Primes of the form 4n^3+9.

The programs for A201121, there is no canonical definition to state claims against.
-/

/-! ## A201121.P13924301044530631565

`p?[4*n^3+9]`
-/

namespace A201121.P13924301044530631565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201121.P13924301044530631565

/-! ## A201121.P10465904186541125188

`A007318(∑[n])*p?[A317614(n+1)+9]`
-/

namespace A201121.P10465904186541125188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201121.P10465904186541125188

/-! ## A201121.P8948704661774568941

`A014963(6*(n+2))*p?[A317614(n+1)+9]`
-/

namespace A201121.P8948704661774568941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201121.P8948704661774568941

/-! ## A201121.P11815463432834985521

`A000108(C(2, 2*n))*p?[A317614(n+1)+9]`
-/

namespace A201121.P11815463432834985521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201121.P11815463432834985521

/-!
# A201122: Differences between odd powers of 6 and the next smaller square.

The programs for A201122, the canonical program `A201122.P16659290722796391482` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201122 has offset 1).

The definition of A201122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201122.P16659290722796391482

`6^(2*(n+1)-1)-floor(sqrt(6^(2*(n+1)-1)))²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201122

/-- `6^(2*(n+1)-1)-floor(sqrt(6^(2*(n+1)-1)))²` -/
def P16659290722796391482.Spec : Prop :=
  ∀ n, P16659290722796391482.a n = (A201122 (n + 1) : ℚ)

end A201122

/-!
# A201123: Differences between odd powers of 7 and the next smaller square.

The programs for A201123, the canonical program `A201123.P1951617989977551522` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201123 has offset 1).

The definition of A201123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201123.P1951617989977551522

`7^(2*(n+1)-1)-floor(sqrt(7^(2*(n+1)-1)))²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201123

/-- `7^(2*(n+1)-1)-floor(sqrt(7^(2*(n+1)-1)))²` -/
def P1951617989977551522.Spec : Prop :=
  ∀ n, P1951617989977551522.a n = (A201123 (n + 1) : ℚ)

end A201123

/-!
# A201124: Differences between odd powers of 3 and the next smaller square.

The programs for A201124, the canonical program `A201124.P16168866547743370331` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201124 has offset 1).

The definition of A201124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201124.P16168866547743370331

`3^(2*(n+1)-1)-floor(sqrt(3^(2*(n+1)-1)))²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201124

/-- `3^(2*(n+1)-1)-floor(sqrt(3^(2*(n+1)-1)))²` -/
def P16168866547743370331.Spec : Prop :=
  ∀ n, P16168866547743370331.a n = (A201124 (n + 1) : ℚ)

end A201124

/-! ## A201124.P13519514821313073931

`A120864(3^n)`
-/

namespace A201124.P13519514821313073931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120864 (3 ^ n)

end

end A201124.P13519514821313073931

namespace A201124

/-- `A120864(3^n)` -/
def P13519514821313073931.Spec : Prop :=
  ∀ n, P13519514821313073931.a n = A201124 (n + 1)

end A201124

/-! ## A201124.P15390726917671038734

`or(2, A120864(A000244(n)))`
-/

namespace A201124.P15390726917671038734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A120864 (A000244 n).toNat)

end

end A201124.P15390726917671038734

namespace A201124

/-- `or(2, A120864(A000244(n)))` -/
def P15390726917671038734.Spec : Prop :=
  ∀ n, P15390726917671038734.a n = A201124 (n + 1)

end A201124

/-! ## A201124.P10398991222452830723

`A180497(3^(n+1))/3`
-/

namespace A201124.P10398991222452830723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180497 (3 ^ (n + 1)) : ℚ) / 3

end

end A201124.P10398991222452830723

namespace A201124

/-- `A180497(3^(n+1))/3` -/
def P10398991222452830723.Spec : Prop :=
  ∀ n, P10398991222452830723.a n = (A201124 (n + 1) : ℚ)

end A201124

/-!
# A201125: Differences between odd powers of 2 and the next smaller square.

The programs for A201125, the canonical program `A201125.P7903225629184065171` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201125 has offset 1).

The definition of A201125 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201125.P7903225629184065171

`2^(2*(n+1)-1)-floor(sqrt(2^(2*(n+1)-1)))²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201125

/-- `2^(2*(n+1)-1)-floor(sqrt(2^(2*(n+1)-1)))²` -/
def P7903225629184065171.Spec : Prop :=
  ∀ n, P7903225629184065171.a n = (A201125 (n + 1) : ℚ)

end A201125

/-! ## A201125.P9709156485032680198

`A095803(n+1)/4`
-/

namespace A201125.P9709156485032680198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095803 (n + 1) : ℚ) / 4

end

end A201125.P9709156485032680198

namespace A201125

/-- `A095803(n+1)/4` -/
def P9709156485032680198.Spec : Prop :=
  ∀ n, P9709156485032680198.a n = (A201125 (n + 1) : ℚ)

end A201125

/-! ## A201125.P10161186220591709827

`A056007(Δ[n²])`
-/

namespace A201125.P10161186220591709827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A201125.P10161186220591709827

namespace A201125

/-- `A056007(Δ[n²])` -/
def P10161186220591709827.Spec : Prop :=
  ∀ n, P10161186220591709827.a n = A201125 (n + 1)

end A201125

/-! ## A201125.P15495824529430599260

`A056007(2*n+1)²/A056007(A004273(n+1))`
-/

namespace A201125.P15495824529430599260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056007 (2 * n + 1) ^ 2 : ℚ) / (A056007 (A004273 (n + 1)).toNat : ℚ)

end

end A201125.P15495824529430599260

namespace A201125

/-- `A056007(2*n+1)²/A056007(A004273(n+1))` -/
def P15495824529430599260.Spec : Prop :=
  ∀ n, P15495824529430599260.a n = (A201125 (n + 1) : ℚ)

end A201125

/-!
# A201127: Maximum water retention of a semi-magic square of order n.

The programs for A201127, there is no canonical definition to state claims against.
-/

/-! ## A201127.P2917774680868691121

`A046072(A309205(n+1))+A011779(3*n+1)`
-/

namespace A201127.P2917774680868691121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A309205 (n + 1)).toNat + A011779 (3 * n + 1)

end

end A201127.P2917774680868691121

/-!
# A201128: E.g.f. satisfies: A(x) = 1 + tan(x*A(x)).

The programs for A201128, there is no canonical definition to state claims against.
-/

/-! ## A201128.P13607159667758177900

`A269381(C(∑[n], n))`
-/

namespace A201128.P13607159667758177900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A201128.P13607159667758177900

/-! ## A201128.P12495532374340878626

`A032742(∑[∏[n*a(2%n)]])` with `a(0)=1`
-/

namespace A201128.P12495532374340878626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  n * f2 (2 % n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A201128.P12495532374340878626

/-!
# A201135: Number of n X n 0..5 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201135, there is no canonical definition to state claims against.
-/

/-! ## A201135.P9454969171477477209

`A201142(∑[4*n]+1)`
-/

namespace A201135.P9454969171477477209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201135.P9454969171477477209

/-! ## A201135.P10520550085329790956

`lcm(2, A201142(A001844(n)))`
-/

namespace A201135.P10520550085329790956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A201142 (A001844 n).toNat)

end

end A201135.P10520550085329790956

/-! ## A201135.P9964627828807086667

`record[A201142(A272267(n+1))]`
-/

namespace A201135.P9964627828807086667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201135.P9964627828807086667

/-! ## A201135.P16367802491326951239

`record[A201142(A330613(n+1))]`
-/

namespace A201135.P16367802491326951239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201135.P16367802491326951239

/-! ## A201135.P3660731498342015942

`record[A003982(n)*A201142(n+1)]`
-/

namespace A201135.P3660731498342015942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201135.P3660731498342015942

/-!
# A201136: Number of n X 2 0..5 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201136, there is no canonical definition to state claims against.
-/

/-! ## A201136.P2364813435557979215

`A201142(∑[n+1]+2)`
-/

namespace A201136.P2364813435557979215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201136.P2364813435557979215

/-! ## A201136.P16124130170689308718

`A201142(A000096(n)+3)+char[22]`
-/

namespace A201136.P16124130170689308718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201136.P16124130170689308718

/-! ## A201136.P7150736870590146558

`A201142(A133263(n+1))%A042112(n)`
-/

namespace A201136.P7150736870590146558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201142 (A133263 (n + 1)).toNat) (A042112 n)

end

end A201136.P7150736870590146558

/-! ## A201136.P7518497329803243706

`lcm(A033999(n), A201142(A133263(n+1)))`
-/

namespace A201136.P7518497329803243706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A201142 (A133263 (n + 1)).toNat)

end

end A201136.P7518497329803243706

/-! ## A201136.P14452705442522559314

`A020985(n)²*A201142(A000096(n)+3)`
-/

namespace A201136.P14452705442522559314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A201142 (A000096 n + 3).toNat

end

end A201136.P14452705442522559314

/-!
# A201137: Number of nX3 0..5 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201137, there is no canonical definition to state claims against.
-/

/-! ## A201137.P6559233789203528820

`A201142(∑[n+2]+4)`
-/

namespace A201137.P6559233789203528820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A201137.P6559233789203528820

/-! ## A201137.P10953530872942298979

`and(-1, A201142(A167614(n+1)))`
-/

namespace A201137.P10953530872942298979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A201142 (A167614 (n + 1)).toNat)

end

end A201137.P10953530872942298979

/-! ## A201137.P2294206960823939685

`A201142(A034856(n+1)+5)+char[22]`
-/

namespace A201137.P2294206960823939685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201137.P2294206960823939685

/-! ## A201137.P12098464947666723795

`A201142(A167614(n+1))*A304042(n)`
-/

namespace A201137.P12098464947666723795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A167614 (n + 1)).toNat * A304042 n

end

end A201137.P12098464947666723795

/-! ## A201137.P9687193970052052096

`A201142(A167614(n+1))%A001546(n)`
-/

namespace A201137.P9687193970052052096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201142 (A167614 (n + 1)).toNat) (A001546 n)

end

end A201137.P9687193970052052096

/-!
# A201138: Number of nX4 0..5 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201138, there is no canonical definition to state claims against.
-/

/-! ## A201138.P1794269976433104271

`A201142(∑[n+3]+7)`
-/

namespace A201138.P1794269976433104271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A201138.P1794269976433104271

/-! ## A201138.P10812870868107280131

`or(char[1], A201142(A167614(n+2)+1))`
-/

namespace A201138.P10812870868107280131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A201142 (A167614 (n + 2) + 1).toNat)

end

end A201138.P10812870868107280131

/-! ## A201138.P2352679783921575105

`A201142(A000124(n+3)+3)+char[23]`
-/

namespace A201138.P2352679783921575105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A000124 (n + 3) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201138.P2352679783921575105

/-! ## A201138.P13737284483007338230

`A007318(C(n, 2))*A201142(A167614(n+2)+1)`
-/

namespace A201138.P13737284483007338230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A201142 (A167614 (n + 2) + 1).toNat

end

end A201138.P13737284483007338230

/-! ## A201138.P16738983635958429908

`A007318(C(2, n))*A201142(A000124(n+3)+3)`
-/

namespace A201138.P16738983635958429908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A201142 (A000124 (n + 3) + 3).toNat

end

end A201138.P16738983635958429908

/-!
# A201139: Number of nX5 0..5 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201139, there is no canonical definition to state claims against.
-/

/-! ## A201139.P3737713097026366450

`A201142(A374005(n+1))`
-/

namespace A201139.P3737713097026366450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A374005 (n + 1)).toNat

end

end A201139.P3737713097026366450

/-! ## A201139.P12844375893672448361

`A201142(A167499(n+3))`
-/

namespace A201139.P12844375893672448361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A167499 (n + 3)).toNat

end

end A201139.P12844375893672448361

/-! ## A201139.P9418814947312433192

`A201142(A155212(n)+13)`
-/

namespace A201139.P9418814947312433192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A155212 n + 13).toNat

end

end A201139.P9418814947312433192

/-! ## A201139.P10569628307987268883

`A201142(A056000(n)+15)`
-/

namespace A201139.P10569628307987268883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A056000 n + 15).toNat

end

end A201139.P10569628307987268883

/-! ## A201139.P414875629872726049

`A201142(eq[7, A066657(n)])`
-/

namespace A201139.P414875629872726049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201139.P414875629872726049

/-!
# A201140: Number of nX6 0..5 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201140, there is no canonical definition to state claims against.
-/

/-! ## A201140.P10984954799947331502

`A201142(C(n+6, 2)+6)`
-/

namespace A201140.P10984954799947331502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (Nat.choose (n + 6) 2 + 6)

end

end A201140.P10984954799947331502

/-! ## A201140.P3546778687799491963

`A201142(A374007(n+1))`
-/

namespace A201140.P3546778687799491963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A374007 (n + 1)).toNat

end

end A201140.P3546778687799491963

/-! ## A201140.P14890077193407562124

`A201142(A167614(n+4)+3)`
-/

namespace A201140.P14890077193407562124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A167614 (n + 4) + 3).toNat

end

end A201140.P14890077193407562124

/-! ## A201140.P4149959936203126383

`A201142(A055998(n+3)+9)`
-/

namespace A201140.P4149959936203126383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A055998 (n + 3) + 9).toNat

end

end A201140.P4149959936203126383

/-! ## A201140.P14600702200925367796

`A201142(A052905(n+2)+11)`
-/

namespace A201140.P14600702200925367796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A052905 (n + 2) + 11).toNat

end

end A201140.P14600702200925367796

/-!
# A201141: Number of nX7 0..5 arrays with every row and column nondecreasing rightwards and downwards, and the number of instances of each value within one of each other.

The programs for A201141, there is no canonical definition to state claims against.
-/

/-! ## A201141.P5148128541201493776

`A201142(A374008(n+1))`
-/

namespace A201141.P5148128541201493776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A374008 (n + 1)).toNat

end

end A201141.P5148128541201493776

/-! ## A201141.P14802219404565355814

`A201142(A055999(n+4))`
-/

namespace A201141.P14802219404565355814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (A055999 (n + 4)).toNat

end

end A201141.P14802219404565355814

/-! ## A201141.P539098079744577876

`A201142(eq[4, A219347(n)])`
-/

namespace A201141.P539098079744577876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201141.P539098079744577876

/-! ## A201141.P16126059260567691589

`A201142(eq[6, A193592(n)])`
-/

namespace A201141.P16126059260567691589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201141.P16126059260567691589

/-! ## A201141.P9221412989098654518

`A201142(eq[11, A066657(n)])`
-/

namespace A201141.P9221412989098654518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201141.P9221412989098654518

/-!
# A201143: Irregular triangular array read by rows T(n,k) is the number of 2-colored labeled graphs that have exactly k edges, n >= 2, 0 <= k <= A033638(n).

The programs for A201143, there is no canonical definition to state claims against.
-/

/-! ## A201143.P9224114618811669830

`A241669(n+2)/2`
-/

namespace A201143.P9224114618811669830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241669 (n + 2) : ℚ) / 2

end

end A201143.P9224114618811669830

/-! ## A201143.P8154540990262975904

`A273943(A241669(n+2))`
-/

namespace A201143.P8154540990262975904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A241669 (n + 2)).toNat

end

end A201143.P8154540990262975904

/-! ## A201143.P8122176789515029490

`Δ[A014682(∑[A241669(n+1)])]`
-/

namespace A201143.P8122176789515029490
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A201143.P8122176789515029490

/-! ## A201143.P12687792555306768325

`A004526(A241669(n+2)+1)`
-/

namespace A201143.P12687792555306768325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A241669 (n + 2) + 1).toNat

end

end A201143.P12687792555306768325

/-! ## A201143.P3707796838956231844

`A001057(A241669(n+2)-1)`
-/

namespace A201143.P3707796838956231844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A241669 (n + 2) - 1).toNat

end

end A201143.P3707796838956231844

/-!
# A201144: The pebble sequence: a(n) is the length of the longest non-repeating sequence of pebble-moves among the partitions of n.

The programs for A201144, there is no canonical definition to state claims against.
-/

/-! ## A201144.P3166758468157645531

`A188160(n+1)+1`
-/

namespace A201144.P3166758468157645531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188160 (n + 1) + 1

end

end A201144.P3166758468157645531

/-!
# A201145: Triangle read by rows: number of meanders filling out an n X k grid, unreduced for symmetry.

The programs for A201145, there is no canonical definition to state claims against.
-/

/-! ## A201145.P157318757694620075

`and(A129618(n+1), A136220(A156953(n)))`
-/

namespace A201145.P157318757694620075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A129618 (n + 1)) (A136220 (A156953 n).toNat)

end

end A201145.P157318757694620075

/-! ## A201145.P3515232739948936106

`A147059(n+1)%A146969(A146941(n+1))`
-/

namespace A201145.P3515232739948936106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147059 (n + 1)) (A146969 (A146941 (n + 1)).toNat)

end

end A201145.P3515232739948936106

/-! ## A201145.P5824782946579239452

`and(A000041(A233543(n)), A276698(2*(n+2)))`
-/

namespace A201145.P5824782946579239452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 (A233543 n).toNat) (A276698 (2 * (n + 2)))

end

end A201145.P5824782946579239452

/-! ## A201145.P7001476673814371773

`A279863(A323128(n)+1)`
-/

namespace A201145.P7001476673814371773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279863 (A323128 n + 1).toNat

end

end A201145.P7001476673814371773

/-! ## A201145.P15662743987594932439

`A226912(A005517(n+2))`
-/

namespace A201145.P15662743987594932439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226912 (A005517 (n + 2)).toNat

end

end A201145.P15662743987594932439

/-!
# A201146: Triangle read by rows: T(n,k) = (n#)/(k#), 1 <= k <= n.

The programs for A201146, the canonical program `A201146.P15453871938677034455` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201146 has offset 1).

The definition of A201146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201146.P15453871938677034455

`A034386(A002024(n+1))/A034386(A002260(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A201146

/-- `A034386(A002024(n+1))/A034386(A002260(n+1))` -/
def P15453871938677034455.Spec : Prop :=
  ∀ n, P15453871938677034455.a n = (A201146 (n + 1) : ℚ)

end A201146

/-! ## A201146.P17665583835454660046

`∏{p}[A096334(n), A089026(A036234(#))]`
-/

namespace A201146.P17665583835454660046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A089026 (A036234 p).toNat

end

end A201146.P17665583835454660046

namespace A201146

/-- `∏{p}[A096334(n), A089026(A036234(#))]` -/
def P17665583835454660046.Spec : Prop :=
  ∀ n, P17665583835454660046.a n = A201146 (n + 1)

end A201146

/-! ## A201146.P6942925908899186931

`A076686(16*A173333(n+1))`
-/

namespace A201146.P6942925908899186931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (16 * A173333 (n + 1)).toNat

end

end A201146.P6942925908899186931

namespace A201146

/-- `A076686(16*A173333(n+1))` -/
def P6942925908899186931.Spec : Prop :=
  ∀ n, P6942925908899186931.a n = A201146 (n + 1)

end A201146

/-! ## A201146.P2728921089910550356

`A076686(lcm(49, A173333(n+1)))`
-/

namespace A201146.P2728921089910550356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076686 (Int.lcm 49 (A173333 (n + 1)))

end

end A201146.P2728921089910550356

namespace A201146

/-- `A076686(lcm(49, A173333(n+1)))` -/
def P2728921089910550356.Spec : Prop :=
  ∀ n, P2728921089910550356.a n = A201146 (n + 1)

end A201146

/-! ## A201146.P17829494614155151814

`A007913((n+1)²*A173333(n+1))`
-/

namespace A201146.P17829494614155151814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (((n + 1) ^ 2 : ℤ) * A173333 (n + 1)).toNat

end

end A201146.P17829494614155151814

namespace A201146

/-- `A007913((n+1)²*A173333(n+1))` -/
def P17829494614155151814.Spec : Prop :=
  ∀ n, P17829494614155151814.a n = A201146 (n + 1)

end A201146

/-!
# A201147: Numbers m such that m, m-1 and m-2 are 1,2,3-almost primes respectively.

The programs for A201147, the canonical program `A201147.P7622297176965063272` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201147 has offset 1).

The definition of A201147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 638 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201147.P4552022011415231585

`∩[A005385(n+1), A063642(n+1)]`
-/

namespace A201147.P4552022011415231585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P4552022011415231585

namespace A201147

/-- `∩[A005385(n+1), A063642(n+1)]` -/
def P4552022011415231585.Spec : Prop :=
  ∀ n, (P4552022011415231585.a n : ℤ) = A201147 (n + 1)

end A201147

/-! ## A201147.P7622297176965063272

`∩[A063642(n+1), A065966(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A201147

/-- `∩[A063642(n+1), A065966(n+1)]` -/
def P7622297176965063272.Spec : Prop :=
  ∀ n, (P7622297176965063272.a n : ℤ) = A201147 (n + 1)

theorem P7622297176965063272.correct : P7622297176965063272.Spec := by
  intro n
  simp only [A201147, Nat.add_sub_cancel]

end A201147

/-! ## A201147.P2369173450510658160

`∩[A063642(n+1), A079148(n+1)]`
-/

namespace A201147.P2369173450510658160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P2369173450510658160

namespace A201147

/-- `∩[A063642(n+1), A079148(n+1)]` -/
def P2369173450510658160.Spec : Prop :=
  ∀ n, (P2369173450510658160.a n : ℤ) = A201147 (n + 1)

end A201147

/-! ## A201147.P2887765686906371780

`∩[A063642(n+1), A391049(n+1)]`
-/

namespace A201147.P2887765686906371780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P2887765686906371780

namespace A201147

/-- `∩[A063642(n+1), A391049(n+1)]` -/
def P2887765686906371780.Spec : Prop :=
  ∀ n, (P2887765686906371780.a n : ℤ) = A201147 (n + 1)

end A201147

/-! ## A201147.P8721491166978711460

`∩[A063642(n+1), A395563(n+1)]`
-/

namespace A201147.P8721491166978711460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P8721491166978711460

namespace A201147

/-- `∩[A063642(n+1), A395563(n+1)]` -/
def P8721491166978711460.Spec : Prop :=
  ∀ n, (P8721491166978711460.a n : ℤ) = A201147 (n + 1)

end A201147

/-! ## A201147.P8892980892795436174

`∩[A063642(n+1), A072055(n+1)]`
-/

namespace A201147.P8892980892795436174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P8892980892795436174

namespace A201147

/-- `∩[A063642(n+1), A072055(n+1)]` -/
def P8892980892795436174.Spec : Prop :=
  ∀ n, (P8892980892795436174.a n : ℤ) = A201147 (n + 1)

end A201147

/-! ## A201147.P12239036909722249324

`∩[A063642(n+1), A166496(n+1)]`
-/

namespace A201147.P12239036909722249324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P12239036909722249324

namespace A201147

/-- `∩[A063642(n+1), A166496(n+1)]` -/
def P12239036909722249324.Spec : Prop :=
  ∀ n, (P12239036909722249324.a n : ℤ) = A201147 (n + 1)

end A201147

/-! ## A201147.P11808563024151911116

`p?[A072055(n+1)*A285726(A278229(n+1))]`
-/

namespace A201147.P11808563024151911116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) * A285726 (A278229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201147.P11808563024151911116

namespace A201147

/-- `p?[A072055(n+1)*A285726(A278229(n+1))]` -/
def P11808563024151911116.Spec : Prop :=
  ∀ n, P11808563024151911116.a n = A201147 (n + 1)

end A201147

/-! ## A201147.P4184865969642527718

`∩[A063642(n+1), A124109(n+1)]`
-/

namespace A201147.P4184865969642527718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P4184865969642527718

namespace A201147

/-- `∩[A063642(n+1), A124109(n+1)]` -/
def P4184865969642527718.Spec : Prop :=
  ∀ n, (P4184865969642527718.a n : ℤ) = A201147 (n + 1)

end A201147

/-! ## A201147.P17839237595458426

`∩[A063642(n+1), A088707(n+1)]`
-/

namespace A201147.P17839237595458426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A201147.P17839237595458426

namespace A201147

/-- `∩[A063642(n+1), A088707(n+1)]` -/
def P17839237595458426.Spec : Prop :=
  ∀ n, (P17839237595458426.a n : ℤ) = A201147 (n + 1)

end A201147

/-!
# A201148: Number of n X n 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201148, there is no canonical definition to state claims against.
-/

/-! ## A201148.P7980808925285652754

`A201155(∑[4*n]+1)`
-/

namespace A201148.P7980808925285652754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201148.P7980808925285652754

/-! ## A201148.P10690259175974857923

`record[A201155(Δ[A235355(n)])]`
-/

namespace A201148.P10690259175974857923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201148.P10690259175974857923

/-! ## A201148.P9825842382722109001

`record[A201155(A330613(n+1))]`
-/

namespace A201148.P9825842382722109001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201148.P9825842382722109001

/-! ## A201148.P11039848592696781462

`A201155(A001844(n))+char[9]`
-/

namespace A201148.P11039848592696781462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201148.P11039848592696781462

/-! ## A201148.P9856672541958839112

`record[A003982(n)*A201155(n+1)]`
-/

namespace A201148.P9856672541958839112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A201155 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201148.P9856672541958839112

/-!
# A201149: Number of nX2 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201149, there is no canonical definition to state claims against.
-/

/-! ## A201149.P11849968868824269662

`A200528(n+1)-A201189(n+1)`
-/

namespace A201149.P11849968868824269662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200528 (n + 1) - A201189 (n + 1)

end

end A201149.P11849968868824269662

/-! ## A201149.P5181112097730598965

`A200534(∑[n+1]+2)-A201189(n+1)`
-/

namespace A201149.P5181112097730598965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A201189 (n + 1)

end

end A201149.P5181112097730598965

/-! ## A201149.P5665126953136078509

`A200534(A133263(n+1))+A000007(n+1)-A201189(n+1)`
-/

namespace A201149.P5665126953136078509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A133263 (n + 1)).toNat + A000007 (n + 1) - A201189 (n + 1)

end

end A201149.P5665126953136078509

/-! ## A201149.P13343823901834039791

`A201155(∑[n+1]+2)`
-/

namespace A201149.P13343823901834039791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201149.P13343823901834039791

/-! ## A201149.P15279587871084765221

`record[A201155(n+3)/A091965(n)]`
-/

namespace A201149.P15279587871084765221
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201155 (n + 3) : ℚ) / (A091965 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201149.P15279587871084765221

/-!
# A201150: Number of nX3 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201150, there is no canonical definition to state claims against.
-/

/-! ## A201150.P8913863416872477674

`A200529(n+1)-A201190(n+1)`
-/

namespace A201150.P8913863416872477674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200529 (n + 1) - A201190 (n + 1)

end

end A201150.P8913863416872477674

/-! ## A201150.P15368887713008828427

`A200529(n+1)+A057428(n)*A201190(n+1)`
-/

namespace A201150.P15368887713008828427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200529 (n + 1) + A057428 n * A201190 (n + 1)

end

end A201150.P15368887713008828427

/-! ## A201150.P8228019318427756955

`A200534(∑[n+2]+4)-A201190(n+1)`
-/

namespace A201150.P8228019318427756955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 4) - A201190 (n + 1)

end

end A201150.P8228019318427756955

/-! ## A201150.P17357367783773043868

`A200534(A167614(n+1))+A185284(n)-A201190(n+1)`
-/

namespace A201150.P17357367783773043868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167614 (n + 1)).toNat + A185284 n - A201190 (n + 1)

end

end A201150.P17357367783773043868

/-! ## A201150.P4146232599082300906

`A015082(n)*A200534(A167614(n+1))-A201190(n+1)`
-/

namespace A201150.P4146232599082300906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 n * A200534 (A167614 (n + 1)).toNat - A201190 (n + 1)

end

end A201150.P4146232599082300906

/-!
# A201151: Number of nX4 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201151, there is no canonical definition to state claims against.
-/

/-! ## A201151.P10843826049616590080

`A200530(n+1)-A201191(n+1)`
-/

namespace A201151.P10843826049616590080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200530 (n + 1) - A201191 (n + 1)

end

end A201151.P10843826049616590080

/-! ## A201151.P7733484595267555879

`A200534(A141214(n)+7)-A201191(n+1)`
-/

namespace A201151.P7733484595267555879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A141214 n + 7).toNat - A201191 (n + 1)

end

end A201151.P7733484595267555879

/-! ## A201151.P10815999341402666351

`A200534(A052905(n)+9)-A201191(n+1)`
-/

namespace A201151.P10815999341402666351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A052905 n + 9).toNat - A201191 (n + 1)

end

end A201151.P10815999341402666351

/-! ## A201151.P4313795733800425249

`A200534(A055999(n)+10)-A201191(n+1)`
-/

namespace A201151.P4313795733800425249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A055999 n + 10).toNat - A201191 (n + 1)

end

end A201151.P4313795733800425249

/-! ## A201151.P16485603859192479845

`A200534(A167614(n+2)+1)-A201191(n+1)`
-/

namespace A201151.P16485603859192479845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167614 (n + 2) + 1).toNat - A201191 (n + 1)

end

end A201151.P16485603859192479845

/-!
# A201152: Number of nX5 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201152, there is no canonical definition to state claims against.
-/

/-! ## A201152.P2872486231107318929

`A200531(n+1)-A201192(n+1)`
-/

namespace A201152.P2872486231107318929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200531 (n + 1) - A201192 (n + 1)

end

end A201152.P2872486231107318929

/-! ## A201152.P2740568455525255371

`A200534(A167499(n+3))-A201192(n+1)`
-/

namespace A201152.P2740568455525255371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167499 (n + 3)).toNat - A201192 (n + 1)

end

end A201152.P2740568455525255371

/-! ## A201152.P14282528095165150083

`A200534(A155212(n)+13)-A201192(n+1)`
-/

namespace A201152.P14282528095165150083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A155212 n + 13).toNat - A201192 (n + 1)

end

end A201152.P14282528095165150083

/-! ## A201152.P12515361555302987788

`A200534(eq[7, A066657(n)])-A201192(n+1)`
-/

namespace A201152.P12515361555302987788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A201192 (n + 1)

end

end A201152.P12515361555302987788

/-! ## A201152.P18375064468963890868

`A200534(A034856(n+3)+7)-A201192(n+1)`
-/

namespace A201152.P18375064468963890868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A034856 (n + 3) + 7).toNat - A201192 (n + 1)

end

end A201152.P18375064468963890868

/-!
# A201153: Number of nX6 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201153, there is no canonical definition to state claims against.
-/

/-! ## A201153.P13133407099192016765

`A200532(n+1)-A201193(n+1)`
-/

namespace A201153.P13133407099192016765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200532 (n + 1) - A201193 (n + 1)

end

end A201153.P13133407099192016765

/-! ## A201153.P3370854113552381822

`A200534(A056115(n)+21)-A201193(n+1)`
-/

namespace A201153.P3370854113552381822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A056115 n + 21).toNat - A201193 (n + 1)

end

end A201153.P3370854113552381822

/-! ## A201153.P16521018062413837027

`A200534(eq[7, A131818(n+1)])-A201193(n+1)`
-/

namespace A201153.P16521018062413837027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A201193 (n + 1)

end

end A201153.P16521018062413837027

/-! ## A201153.P98849847344830783

`A200534(A052905(n+3))-A201193(n+1)`
-/

namespace A201153.P98849847344830783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A052905 (n + 3)).toNat - A201193 (n + 1)

end

end A201153.P98849847344830783

/-! ## A201153.P6698218097339329483

`A200534(eq[5, A193592(n)])-A201193(n+1)`
-/

namespace A201153.P6698218097339329483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A201193 (n + 1)

end

end A201153.P6698218097339329483

/-!
# A201154: Number of nX7 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201154, there is no canonical definition to state claims against.
-/

/-! ## A201154.P2830572398972372998

`A200533(n+1)-A201194(n+1)`
-/

namespace A201154.P2830572398972372998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200533 (n + 1) - A201194 (n + 1)

end

end A201154.P2830572398972372998

/-! ## A201154.P6785463663455876351

`A201155(eq[11, A066657(n)])`
-/

namespace A201154.P6785463663455876351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201154.P6785463663455876351

/-! ## A201154.P9914562258117847175

`A201155(A166136(n+5)+1)`
-/

namespace A201154.P9914562258117847175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (A166136 (n + 5) + 1).toNat

end

end A201154.P9914562258117847175

/-! ## A201154.P12565157595751378961

`A201155(A167499(n+5)+2)`
-/

namespace A201154.P12565157595751378961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (A167499 (n + 5) + 2).toNat

end

end A201154.P12565157595751378961

/-! ## A201154.P17566601675973428772

`A201155(A167614(n+5)+4)`
-/

namespace A201154.P17566601675973428772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201155 (A167614 (n + 5) + 4).toNat

end

end A201154.P17566601675973428772

/-!
# A201155: T(n,k)=Number of nXk 0..2 arrays with every diagonal, row and column running average nondecreasing rightwards and downwards and diagonally.

The programs for A201155, there is no canonical definition to state claims against.
-/

/-! ## A201155.P16451612605070161741

`A200534(n+1)-A201195(n+1)`
-/

namespace A201155.P16451612605070161741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (n + 1) - A201195 (n + 1)

end

end A201155.P16451612605070161741

/-! ## A201155.P12641415695285207203

`A200534(n+1)+A057428(n)*A201195(n+1)`
-/

namespace A201155.P12641415695285207203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (n + 1) + A057428 n * A201195 (n + 1)

end

end A201155.P12641415695285207203

/-! ## A201155.P6966723057859885703

`A085735(A200534(n+1))`
-/

namespace A201155.P6966723057859885703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A200534 (n + 1)).toNat

end

end A201155.P6966723057859885703

/-! ## A201155.P8035831867904806317

`A175056(A209382(n+1))-2`
-/

namespace A201155.P8035831867904806317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175056 (A209382 (n + 1)).toNat - 2

end

end A201155.P8035831867904806317

/-! ## A201155.P7076852038695547296

`A200534(n+1)-A064990(A189389(n))`
-/

namespace A201155.P7076852038695547296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (n + 1) - A064990 (A189389 n).toNat

end

end A201155.P7076852038695547296

/-!
# A201156: Row sums of triangle A201146.

The programs for A201156, the canonical program `A201156.P12740422447403239301` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201156 has offset 1).

The definition of A201156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A201156.P4975541070385523958

`(n*char[p?[xor(3, n)]-1]+1)*a(n-1)+1` with `a(0)=1`
-/

namespace A201156.P4975541070385523958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) * a (n - 1) + 1

end

end A201156.P4975541070385523958

namespace A201156

/-- `(n*char[p?[xor(3, n)]-1]+1)*a(n-1)+1` -/
def P4975541070385523958.Spec : Prop :=
  ∀ n, (P4975541070385523958.a n : ℤ) = A201156 (n + 1)

end A201156

/-! ## A201156.P13922208381220619879

`(n*char[p?[∏{p}[n, #]]-1]+1)*a(n-1)+1` with `a(0)=1`
-/

namespace A201156.P13922208381220619879
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) * a (n - 1) + 1

end

end A201156.P13922208381220619879

namespace A201156

/-- `(n*char[p?[∏{p}[n, #]]-1]+1)*a(n-1)+1` -/
def P13922208381220619879.Spec : Prop :=
  ∀ n, (P13922208381220619879.a n : ℤ) = A201156 (n + 1)

end A201156

/-! ## A201156.P7319779441560181844

`a(n-1)*A089026(n+1)+1` with `a(0)=1`
-/

namespace A201156.P7319779441560181844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A089026 (n + 1) + 1

end

end A201156.P7319779441560181844

namespace A201156

/-- `a(n-1)*A089026(n+1)+1` -/
def P7319779441560181844.Spec : Prop :=
  ∀ n, P7319779441560181844.a n = A201156 (n + 1)

end A201156

/-! ## A201156.P11812798599237221156

`a(n-1)*A014963(A139693(n))+1` with `a(0)=1`
-/

namespace A201156.P11812798599237221156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (A139693 n).toNat + 1

end

end A201156.P11812798599237221156

namespace A201156

/-- `a(n-1)*A014963(A139693(n))+1` -/
def P11812798599237221156.Spec : Prop :=
  ∀ n, P11812798599237221156.a n = A201156 (n + 1)

end A201156

/-! ## A201156.P13933765580993677955

`∑[1/A034386(n+1)]*A034386(n+1)`
-/

namespace A201156.P13933765580993677955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A034386 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A034386 (n + 1) : ℚ)

end

end A201156.P13933765580993677955

namespace A201156

/-- `∑[1/A034386(n+1)]*A034386(n+1)` -/
def P13933765580993677955.Spec : Prop :=
  ∀ n, P13933765580993677955.a n = (A201156 (n + 1) : ℚ)

end A201156

/-! ## A201156.P12740422447403239301

`a(n-1)*A014963(A057723(n+1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A201156

/-- `a(n-1)*A014963(A057723(n+1))+1` -/
def P12740422447403239301.Spec : Prop :=
  ∀ n, P12740422447403239301.a n = A201156 (n + 1)

theorem P12740422447403239301.correct : P12740422447403239301.Spec := by
  intro n
  simp only [A201156, Nat.add_sub_cancel]

end A201156

/-! ## A201156.P11863107247218631991

`a(n-1)*A014963(A030664(n+1))+1` with `a(0)=1`
-/

namespace A201156.P11863107247218631991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014963 (A030664 (n + 1)).toNat + 1

end

end A201156.P11863107247218631991

namespace A201156

/-- `a(n-1)*A014963(A030664(n+1))+1` -/
def P11863107247218631991.Spec : Prop :=
  ∀ n, P11863107247218631991.a n = A201156 (n + 1)

end A201156

/-!
# A201157: y-values in the solution to 5*x^2 - 20 = y^2.

The programs for A201157, the canonical program `A201157.P16464963827805204860` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201157 has offset 1).

The definition of A201157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A201157.P16464963827805204860

`3*a(n-1)-a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201157

/-- `3*a(n-1)-a(n-2)` -/
def P16464963827805204860.Spec : Prop :=
  ∀ n, P16464963827805204860.a n = A201157 (n + 1)

theorem P16464963827805204860.correct : P16464963827805204860.Spec := by
  intro n
  simp only [A201157, Nat.add_sub_cancel]

end A201157

/-! ## A201157.P8434604765127486668

`5*A000045(2*n)`
-/

namespace A201157.P8434604765127486668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 (2 * n)

end

end A201157.P8434604765127486668

namespace A201157

/-- `5*A000045(2*n)` -/
def P8434604765127486668.Spec : Prop :=
  ∀ n, P8434604765127486668.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P11600520699853173457

`ogf(5x/(1-3x+x^2))`
-/

namespace A201157.P11600520699853173457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -3, 1] n

end

end A201157.P11600520699853173457

namespace A201157

/-- `ogf(5x/(1-3x+x^2))` -/
def P11600520699853173457.Spec : Prop :=
  ∀ n, P11600520699853173457.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P15089163029147597526

`ceil(ϕ²*a(n-1))` with `a(0)=0, a(1)=5, a(2)=15`
-/

namespace A201157.P15089163029147597526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 15] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A201157.P15089163029147597526

namespace A201157

/-- `ceil(ϕ²*a(n-1))` -/
def P15089163029147597526.Spec : Prop :=
  ∀ n, P15089163029147597526.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P17693540717355048959

`∑[record[a(n-2)-a(n-1)]]` with `a(0)=0, a(1)=5`
-/

namespace A201157.P17693540717355048959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A201157.P17693540717355048959

namespace A201157

/-- `∑[record[a(n-2)-a(n-1)]]` -/
def P17693540717355048959.Spec : Prop :=
  ∀ n, P17693540717355048959.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P1853514735417872904

`record[Δ[a(n-2)-a(n-1)]]` with `a(0)=5, a(1)=5`
-/

namespace A201157.P1853514735417872904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f2 =>
  f2 (n - 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201157.P1853514735417872904

namespace A201157

/-- `record[Δ[a(n-2)-a(n-1)]]` -/
def P1853514735417872904.Spec : Prop :=
  ∀ n, P1853514735417872904.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P7883729288624221348

`record[a(n-2)-a(n-1)]+a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A201157.P7883729288624221348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + a (n - 1)

end

end A201157.P7883729288624221348

namespace A201157

/-- `record[a(n-2)-a(n-1)]+a(n-1)` -/
def P7883729288624221348.Spec : Prop :=
  ∀ n, P7883729288624221348.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P13438273093148142098

`a(n-1)+a(n-1)+a(n-1)-a(n-2)` with `a(0)=0, a(1)=5`
-/

namespace A201157.P13438273093148142098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A201157.P13438273093148142098

namespace A201157

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-2)` -/
def P13438273093148142098.Spec : Prop :=
  ∀ n, P13438273093148142098.a n = A201157 (n + 1)

theorem P13438273093148142098.correct : P13438273093148142098.Spec := by
  intro n
  simp only [A201157, Nat.add_sub_cancel, A201157.P13438273093148142098.a, A201157.P16464963827805204860.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A201157

/-! ## A201157.P825032455023260003

`a(n-1)-(a(n-2)-a(n-1)-a(n-1))` with `a(0)=0, a(1)=5`
-/

namespace A201157.P825032455023260003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 1))

end

end A201157.P825032455023260003

namespace A201157

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-1))` -/
def P825032455023260003.Spec : Prop :=
  ∀ n, P825032455023260003.a n = A201157 (n + 1)

theorem P825032455023260003.correct : P825032455023260003.Spec := by
  intro n
  simp only [A201157, Nat.add_sub_cancel, A201157.P825032455023260003.a, A201157.P16464963827805204860.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A201157

/-! ## A201157.P9181468841445762977

`A022088(2*n)`
-/

namespace A201157.P9181468841445762977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (2 * n)

end

end A201157.P9181468841445762977

namespace A201157

/-- `A022088(2*n)` -/
def P9181468841445762977.Spec : Prop :=
  ∀ n, P9181468841445762977.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P478219498017769898

`A203976(2*n)`
-/

namespace A201157.P478219498017769898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (2 * n)

end

end A201157.P478219498017769898

namespace A201157

/-- `A203976(2*n)` -/
def P478219498017769898.Spec : Prop :=
  ∀ n, P478219498017769898.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P12225394908989759961

`5*A001906(n)`
-/

namespace A201157.P12225394908989759961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001906 n

end

end A201157.P12225394908989759961

namespace A201157

/-- `5*A001906(n)` -/
def P12225394908989759961.Spec : Prop :=
  ∀ n, P12225394908989759961.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P9700973963659339118

`abs(Δ[A098149(n)])`
-/

namespace A201157.P9700973963659339118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A201157.P9700973963659339118

namespace A201157

/-- `abs(Δ[A098149(n)])` -/
def P9700973963659339118.Spec : Prop :=
  ∀ n, P9700973963659339118.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P229949290509253178

`5*Δ[A001519(n)]`
-/

namespace A201157.P229949290509253178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A201157.P229949290509253178

namespace A201157

/-- `5*Δ[A001519(n)]` -/
def P229949290509253178.Spec : Prop :=
  ∀ n, P229949290509253178.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P12111331532478460231

`5*Δ[A032908(n)]`
-/

namespace A201157.P12111331532478460231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A201157.P12111331532478460231

namespace A201157

/-- `5*Δ[A032908(n)]` -/
def P12111331532478460231.Spec : Prop :=
  ∀ n, P12111331532478460231.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P10027177143675129272

`A371843(2*n)-1`
-/

namespace A201157.P10027177143675129272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 (2 * n) - 1

end

end A201157.P10027177143675129272

namespace A201157

/-- `A371843(2*n)-1` -/
def P10027177143675129272.Spec : Prop :=
  ∀ n, P10027177143675129272.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P17016696758414574213

`5*(A055588(n)-1)`
-/

namespace A201157.P17016696758414574213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A055588 n - 1)

end

end A201157.P17016696758414574213

namespace A201157

/-- `5*(A055588(n)-1)` -/
def P17016696758414574213.Spec : Prop :=
  ∀ n, P17016696758414574213.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P17770427043737787179

`5*(A249450(n)+2)`
-/

namespace A201157.P17770427043737787179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A249450 n + 2)

end

end A201157.P17770427043737787179

namespace A201157

/-- `5*(A249450(n)+2)` -/
def P17770427043737787179.Spec : Prop :=
  ∀ n, P17770427043737787179.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P18400524987318443186

`5*A005013(2*n)`
-/

namespace A201157.P18400524987318443186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005013 (2 * n)

end

end A201157.P18400524987318443186

namespace A201157

/-- `5*A005013(2*n)` -/
def P18400524987318443186.Spec : Prop :=
  ∀ n, P18400524987318443186.a n = A201157 (n + 1)

end A201157

/-! ## A201157.P18136250209563077106

`5*A094966(2*n)`
-/

namespace A201157.P18136250209563077106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A094966 (2 * n)

end

end A201157.P18136250209563077106

namespace A201157

/-- `5*A094966(2*n)` -/
def P18136250209563077106.Spec : Prop :=
  ∀ n, P18136250209563077106.a n = A201157 (n + 1)

end A201157

/-!
# A201158: Expansion of e.g.f. exp(x)/(cos(x) - sin(x)).

The programs for A201158, there is no canonical definition to state claims against.
-/

/-! ## A201158.P11937027900821988050

`A391886(∑[n]+n)`
-/

namespace A201158.P11937027900821988050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391886 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A201158.P11937027900821988050

/-! ## A201158.P14207595441101171595

`A003963(A095320((n+1)!))`
-/

namespace A201158.P14207595441101171595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A095320 (Nat.factorial (n + 1))).toNat

end

end A201158.P14207595441101171595

/-!
# A201163: Expansion of g.f. 1+x+(1+3*x+x^2)/(1+x)^3.

The programs for A201163, the canonical program `A201163.P10324216245831371472` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A201163 has offset 0).

The definition of A201163 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+7x+7x^2+4x^3+x^4)/(1+3x+3x^2+x^3))` (program `A201163.P10324216245831371472`, by `A201163.P10324216245831371472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A201163.P10324216245831371472

`ogf((2+7x+7x^2+4x^3+x^4)/(1+3x+3x^2+x^3))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A201163

/-- `ogf((2+7x+7x^2+4x^3+x^4)/(1+3x+3x^2+x^3))` -/
def P10324216245831371472.Spec : Prop :=
  ∀ n, P10324216245831371472.a n = A201163 n

theorem P10324216245831371472.correct : P10324216245831371472.Spec := by
  intro n
  simp only [A201163]

end A201163

/-! ## A201163.P842397878824201503

`n*(-1)^(n+1)-a(n-1)` with `a(0)=2, a(1)=1, a(2)=-2`
-/

namespace A201163.P842397878824201503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -2] fun n a =>
  (n : ℤ) * (-1) ^ (n + 1) - a (n - 1)

end

end A201163.P842397878824201503

namespace A201163

/-- `n*(-1)^(n+1)-a(n-1)` -/
def P842397878824201503.Spec : Prop :=
  ∀ n, P842397878824201503.a n = A201163 n

end A201163

/-! ## A201163.P14127536872866535862

`(3-(A133263(n)+char[1]))*A033999(n)`
-/

namespace A201163.P14127536872866535862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (A133263 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))) * A033999 n

end

end A201163.P14127536872866535862

namespace A201163

/-- `(3-(A133263(n)+char[1]))*A033999(n)` -/
def P14127536872866535862.Spec : Prop :=
  ∀ n, P14127536872866535862.a n = A201163 n

end A201163

/-! ## A201163.P9616208034475290750

`(A154955(n+1)+1-∑[n])*A034947(2*n+1)`
-/

namespace A201163.P9616208034475290750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A154955 (n + 1) + 1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) * A034947 (2 * n + 1)

end

end A201163.P9616208034475290750

namespace A201163

/-- `(A154955(n+1)+1-∑[n])*A034947(2*n+1)` -/
def P9616208034475290750.Spec : Prop :=
  ∀ n, P9616208034475290750.a n = A201163 n

end A201163

/-! ## A201163.P7722160636467831134

`(3-(A133263(n)+char[1]))*A056594(A005843(n))`
-/

namespace A201163.P7722160636467831134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (A133263 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))) * A056594 (A005843 n).toNat

end

end A201163.P7722160636467831134

namespace A201163

/-- `(3-(A133263(n)+char[1]))*A056594(A005843(n))` -/
def P7722160636467831134.Spec : Prop :=
  ∀ n, P7722160636467831134.a n = A201163 n

end A201163

/-! ## A201163.P6354730837815223446

`A133223(n+1)-Δ[A029578(n²)]`
-/

namespace A201163.P6354730837815223446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1) - (f1 (n + 1) - f1 n)

end

end A201163.P6354730837815223446

namespace A201163

/-- `A133223(n+1)-Δ[A029578(n²)]` -/
def P6354730837815223446.Spec : Prop :=
  ∀ n, P6354730837815223446.a n = A201163 n

end A201163

/-! ## A201163.P2581395044415589336

`A000007(n)-A144505(A152948(n+1))`
-/

namespace A201163.P2581395044415589336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A144505 (A152948 (n + 1)).toNat

end

end A201163.P2581395044415589336

namespace A201163

/-- `A000007(n)-A144505(A152948(n+1))` -/
def P2581395044415589336.Spec : Prop :=
  ∀ n, P2581395044415589336.a n = A201163 n

end A201163

/-!
# A201165: Triangle read by rows: Pascal's triangle (A007318) times the Fibonacci triangle (A139375).

The programs for A201165, there is no canonical definition to state claims against.
-/

/-! ## A201165.P2986114524714166161

`A242435(A080510(n+1))+A188137(n+1)`
-/

namespace A201165.P2986114524714166161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242435 (A080510 (n + 1)).toNat + A188137 (n + 1)

end

end A201165.P2986114524714166161

/-! ## A201165.P16709211258880872777

`A321993(A188137(n+1))`
-/

namespace A201165.P16709211258880872777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A188137 (n + 1)).toNat

end

end A201165.P16709211258880872777

/-! ## A201165.P16397911951360866497

`A188137(n+1)+A000038(A046056(n+2))`
-/

namespace A201165.P16397911951360866497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188137 (n + 1) + A000038 (A046056 (n + 2)).toNat

end

end A201165.P16397911951360866497

/-!
# A201166: Triangle read by rows: the Fibonacci triangle times Pascal's triangle (A007318).

The programs for A201166, there is no canonical definition to state claims against.
-/

/-! ## A201166.P2233993291510359389

`A356944(A096164(n+1))`
-/

namespace A201166.P2233993291510359389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A096164 (n + 1)).toNat

end

end A201166.P2233993291510359389

/-! ## A201166.P17834256407472785503

`or(A054456(n), A356944(A054456(n)))`
-/

namespace A201166.P17834256407472785503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054456 n) (A356944 (A054456 n).toNat)

end

end A201166.P17834256407472785503

/-! ## A201166.P6582903529903653658

`or(A007031(A033184(n+1)), A054456(n))`
-/

namespace A201166.P6582903529903653658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007031 (A033184 (n + 1)).toNat) (A054456 n)

end

end A201166.P6582903529903653658

/-! ## A201166.P2869120702479850717

`or(A096164(n+1), A321993(A054456(n)))`
-/

namespace A201166.P2869120702479850717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096164 (n + 1)) (A321993 (A054456 n).toNat)

end

end A201166.P2869120702479850717

/-! ## A201166.P1976998106403591695

`A321993(2*A096164(n+1)-A054456(n))`
-/

namespace A201166.P1976998106403591695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (2 * A096164 (n + 1) - A054456 n).toNat

end

end A201166.P1976998106403591695

/-!
# A201167: Triangle read by rows: lower triangular matrix which is inverse to the Fibonacci triangle (A139375) regarded as a lower triangular matrix.

The programs for A201167, there is no canonical definition to state claims against.
-/

/-! ## A201167.P4026958878015218084

`A316867(n)+A104562(n)%A032485(n+1)`
-/

namespace A201167.P4026958878015218084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n + Int.tmod (A104562 n) (A032485 (n + 1))

end

end A201167.P4026958878015218084

/-! ## A201167.P1382778758326310953

`∑{e}[A308949(n+1), #]!*A104562(n)`
-/

namespace A201167.P1382778758326310953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℤ) * A104562 n

end

end A201167.P1382778758326310953

/-! ## A201167.P17217636895234808336

`A185016(A004111(n))+A104562(n)`
-/

namespace A201167.P17217636895234808336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A004111 n).toNat + A104562 n

end

end A201167.P17217636895234808336

/-! ## A201167.P15197136129260204396

`A319710(A104545(n))+A104562(n)`
-/

namespace A201167.P15197136129260204396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A104545 n).toNat + A104562 n

end

end A201167.P15197136129260204396

/-! ## A201167.P725957543111449287

`A319710(A308949(n+1))+A104562(n)`
-/

namespace A201167.P725957543111449287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A308949 (n + 1)).toNat + A104562 n

end

end A201167.P725957543111449287

/-!
# A201168: The number of permutations avoiding the "boxed" pattern 123.

The programs for A201168, there is no canonical definition to state claims against.
-/

/-! ## A201168.P8839894949532293086

`A000110(n)-A105519(A075834(n))`
-/

namespace A201168.P8839894949532293086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A105519 (A075834 n).toNat

end

end A201168.P8839894949532293086

/-! ## A201168.P17208074229756443299

`A220658(A058681(n))+A002846(n+1)`
-/

namespace A201168.P17208074229756443299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A058681 n).toNat + A002846 (n + 1)

end

end A201168.P17208074229756443299

/-! ## A201168.P3502085431856224691

`A244479(A149443(n))+A003160(n+1)`
-/

namespace A201168.P3502085431856224691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A149443 n).toNat + A003160 (n + 1)

end

end A201168.P3502085431856224691

/-! ## A201168.P11154984992467636547

`A300385(A000079(n+1))+A220658(A058681(n))`
-/

namespace A201168.P11154984992467636547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300385 (A000079 (n + 1)).toNat + A220658 (A058681 n).toNat

end

end A201168.P11154984992467636547

/-!
# A201169: G.f. A(x) satisfies A(x) = 1 + x/sqrt(1-4*x^2) * A(x/sqrt(1-4*x^2)).

The programs for A201169, there is no canonical definition to state claims against.
-/

/-! ## A201169.P7434254604921496117

`A321698(ceil(2^(n-1))-floor(n/2))`
-/

namespace A201169.P7434254604921496117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - ⌊(n : ℚ) / 2⌋).toNat

end

end A201169.P7434254604921496117

/-! ## A201169.P11665869009078093104

`A051889(A141583(n))`
-/

namespace A201169.P11665869009078093104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A141583 n).toNat

end

end A201169.P11665869009078093104

/-! ## A201169.P7998781287721023537

`A220494(A187741(n))`
-/

namespace A201169.P7998781287721023537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220494 (A187741 n).toNat

end

end A201169.P7998781287721023537

/-! ## A201169.P7181061877999027142

`A370647(A339837(n))`
-/

namespace A201169.P7181061877999027142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370647 (A339837 n).toNat

end

end A201169.P7181061877999027142

/-!
# A201170: Sequence of traces arising in study of Thue-Morse sequence.

The programs for A201170, there is no canonical definition to state claims against.
-/

/-! ## A201170.P6877353930497305609

`A000027(A002144(n+1)*A225432(n+1))`
-/

namespace A201170.P6877353930497305609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A002144 (n + 1) * A225432 (n + 1)).toNat

end

end A201170.P6877353930497305609

/-! ## A201170.P9856171409223335588

`A000027(lcm(A002144(n+1), A225432(n+1)))`
-/

namespace A201170.P9856171409223335588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm (A002144 (n + 1)) (A225432 (n + 1)))

end

end A201170.P9856171409223335588

/-! ## A201170.P1675904416346281910

`p?[A077426(n+1)]*A028310(A225432(n+1))`
-/

namespace A201170.P1675904416346281910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077426 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A028310 (A225432 (n + 1)).toNat

end

end A201170.P1675904416346281910

/-! ## A201170.P5298241498515613476

`record[A014963(4*n+5)]*A028310(A225432(n+1))`
-/

namespace A201170.P5298241498515613476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A028310 (A225432 (n + 1)).toNat

end

end A201170.P5298241498515613476

/-! ## A201170.P4385443351380735248

`p?[eq[1, A146326(n+1)%2]+1]*A078357(A029804(n+1)+1)`
-/

namespace A201170.P4385443351380735248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146326 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A078357 (A029804 (n + 1) + 1).toNat

end

end A201170.P4385443351380735248

/-!
# A201171: Primes of the form 5n^3+1.

The programs for A201171, there is no canonical definition to state claims against.
-/

/-! ## A201171.P10962153131777605468

`p?[5*n^3+1]`
-/

namespace A201171.P10962153131777605468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201171.P10962153131777605468

/-! ## A201171.P13437042042042588516

`or(1, p?[5*n*n²+1])`
-/

namespace A201171.P13437042042042588516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n * n ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201171.P13437042042042588516

/-! ## A201171.P13697068536611278324

`abs(1-p?[5*n*n²+1])+1`
-/

namespace A201171.P13697068536611278324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n * n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 1

end

end A201171.P13697068536611278324

/-!
# A201172: Primes of the form 5n^3+2.

The programs for A201172, there is no canonical definition to state claims against.
-/

/-! ## A201172.P8316065842300231396

`p?[5*n^3+2]`
-/

namespace A201172.P8316065842300231396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201172.P8316065842300231396

/-! ## A201172.P11185377671960216510

`gcd(n, n+1)*p?[A244725(n)+2]`
-/

namespace A201172.P11185377671960216510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201172.P11185377671960216510

/-! ## A201172.P14423763421936835530

`A025466(n)+p?[A244725(n)+2]`
-/

namespace A201172.P14423763421936835530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 n + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201172.P14423763421936835530

/-! ## A201172.P8630863787113587

`p?[A244725(n)+2]+A008683(8*n+4)`
-/

namespace A201172.P8630863787113587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (8 * n + 4)

end

end A201172.P8630863787113587

/-! ## A201172.P1002620387299583064

`A000041(C(2, n+2))*p?[A244725(n)+2]`
-/

namespace A201172.P1002620387299583064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201172.P1002620387299583064

/-!
# A201173: Primes of the form 5n^3+3.

The programs for A201173, there is no canonical definition to state claims against.
-/

/-! ## A201173.P6374338055525931799

`p?[5*n^3+3]`
-/

namespace A201173.P6374338055525931799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201173.P6374338055525931799

/-! ## A201173.P330345272824710311

`p?[A244725(n)+3]+A000045(C(n, 64)²)`
-/

namespace A201173.P330345272824710311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A000045 (Nat.choose n 64 ^ 2)

end

end A201173.P330345272824710311

/-!
# A201174: Primes of the form 5n^3+4.

The programs for A201174, there is no canonical definition to state claims against.
-/

/-! ## A201174.P11098964041757346342

`p?[5*n^3+4]`
-/

namespace A201174.P11098964041757346342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201174.P11098964041757346342

/-! ## A201174.P13251397027373454214

`or(1, p?[A100214(n)+A000578(n)])`
-/

namespace A201174.P13251397027373454214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n + A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201174.P13251397027373454214

/-! ## A201174.P4691093034464055209

`A014963(6*(n+1))*p?[A100214(n)+A000578(n)]`
-/

namespace A201174.P4691093034464055209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n + A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201174.P4691093034464055209

/-! ## A201174.P10033281951626569766

`A000040(n+2)%2*p?[A100214(n)+A000578(n)]`
-/

namespace A201174.P10033281951626569766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n + A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201174.P10033281951626569766

/-! ## A201174.P6003131569043082009

`A008683(n+1)²!*p?[A100214(n)+A000578(n)]`
-/

namespace A201174.P6003131569043082009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100214 n + A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201174.P6003131569043082009

/-!
# A201175: Primes of the form 5n^3+6.

The programs for A201175, there is no canonical definition to state claims against.
-/

/-! ## A201175.P16313629558923609925

`p?[5*n^3+6]`
-/

namespace A201175.P16313629558923609925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201175.P16313629558923609925

/-! ## A201175.P1613289706926922359

`record[A020639(5*((n+1)^3+1)+1)]`
-/

namespace A201175.P1613289706926922359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * ((n + 1) ^ 3 + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201175.P1613289706926922359

/-!
# A201176: Primes of the form 5n^3+7.

The programs for A201176, there is no canonical definition to state claims against.
-/

/-! ## A201176.P17206090389886493289

`p?[5*n^3+7]`
-/

namespace A201176.P17206090389886493289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201176.P17206090389886493289

/-! ## A201176.P11292919209630139466

`record[p?[xor(7, A244725(n))]]`
-/

namespace A201176.P11292919209630139466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 (A244725 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201176.P11292919209630139466

/-! ## A201176.P8338436578860681982

`A007318(∑[n])*p?[A244725(n)+7]`
-/

namespace A201176.P8338436578860681982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201176.P8338436578860681982

/-! ## A201176.P17335081240540334564

`p?[A244725(n)+7]/A007318(C(2, n))`
-/

namespace A201176.P17335081240540334564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A201176.P17335081240540334564

/-! ## A201176.P16589471060666786781

`p?[A244725(n)+7]%A000045(n+34)`
-/

namespace A201176.P16589471060666786781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244725 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000045 (n + 34))

end

end A201176.P16589471060666786781

/-!
# A201177: Primes of the form 5n^3+8.

The programs for A201177, there is no canonical definition to state claims against.
-/

/-! ## A201177.P17698953552669910739

`p?[5*n^3+8]`
-/

namespace A201177.P17698953552669910739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201177.P17698953552669910739

/-!
# A201178: Primes of the form 5k^3+9.

The programs for A201178, there is no canonical definition to state claims against.
-/

/-! ## A201178.P11361328156953111300

`p?[5*n^3+9]`
-/

namespace A201178.P11361328156953111300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 3 + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201178.P11361328156953111300

/-!
# A201179: Primes of the form 6n^3+1.

The programs for A201179, there is no canonical definition to state claims against.
-/

/-! ## A201179.P3834540427027446528

`p?[6*n^3+1]`
-/

namespace A201179.P3834540427027446528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201179.P3834540427027446528

/-! ## A201179.P13697380788569219952

`or(1, p?[6*n*n²+1])`
-/

namespace A201179.P13697380788569219952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (n * n ^ 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A201179.P13697380788569219952

/-!
# A201180: Primes of the form 6n^5+5.

The programs for A201180, there is no canonical definition to state claims against.
-/

/-! ## A201180.P18117587455181956484

`p?[6*n^3+5]`
-/

namespace A201180.P18117587455181956484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 3 + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201180.P18117587455181956484

/-! ## A201180.P3124024609018288274

`or(1, p?[A309337(n)+5])`
-/

namespace A201180.P3124024609018288274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201180.P3124024609018288274

/-! ## A201180.P2832131103221659032

`A007318(∑[n])*p?[A309337(n)+5]`
-/

namespace A201180.P2832131103221659032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201180.P2832131103221659032

/-! ## A201180.P3622449674882137418

`p?[A309337(n)+5]/A007318(and(3, -n))`
-/

namespace A201180.P3622449674882137418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Int.land 3 (-(n : ℤ))).toNat : ℚ)

end

end A201180.P3622449674882137418

/-! ## A201180.P11841903612805688431

`p?[A309337(n)+5]+A008683(9*(n+1))`
-/

namespace A201180.P11841903612805688431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (9 * (n + 1))

end

end A201180.P11841903612805688431

/-!
# A201181: Primes of the form 6k^3+7.

The programs for A201181, there is no canonical definition to state claims against.
-/

/-! ## A201181.P3490552853473828934

`p?[6*n^3+7]`
-/

namespace A201181.P3490552853473828934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 3 + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201181.P3490552853473828934

/-! ## A201181.P17997686223441312515

`or(1, p?[A309337(n)+7])`
-/

namespace A201181.P17997686223441312515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A201181.P17997686223441312515

/-! ## A201181.P5986506483067129776

`A007318(∑[n])*p?[A309337(n)+7]`
-/

namespace A201181.P5986506483067129776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A201181.P5986506483067129776

/-! ## A201181.P8869706677915480305

`p?[A309337(n)+7]/A007318(C(n, n²))`
-/

namespace A201181.P8869706677915480305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A201181.P8869706677915480305

/-! ## A201181.P13151225049138003299

`A000041(C(2, n+2))*p?[A309337(n)+7]`
-/

namespace A201181.P13151225049138003299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309337 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A201181.P13151225049138003299

/-!
# A201182: Primes of the form 7*k^3+1.

The programs for A201182, there is no canonical definition to state claims against.
-/

/-! ## A201182.P8864359566357786940

`p?[7*n^3+1]`
-/

namespace A201182.P8864359566357786940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201182.P8864359566357786940

/-! ## A201182.P7739111534963091910

`p?[7*n*n²+1]-1-log2(1/2)`
-/

namespace A201182.P7739111534963091910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (n * n ^ 2) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

end

end A201182.P7739111534963091910

/-!
# A201183: Primes of the form 7n^3+2.

The programs for A201183, there is no canonical definition to state claims against.
-/

/-! ## A201183.P18244408232720273519

`p?[7*n^3+2]`
-/

namespace A201183.P18244408232720273519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201183.P18244408232720273519

/-!
# A201184: Primes of the form 7k^3+3.

The programs for A201184, there is no canonical definition to state claims against.
-/

/-! ## A201184.P10614233174517666061

`p?[7*n^3+3]`
-/

namespace A201184.P10614233174517666061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201184.P10614233174517666061

/-!
# A201185: Primes of the form 7k^3+4.

The programs for A201185, there is no canonical definition to state claims against.
-/

/-! ## A201185.P10596325720471832189

`p?[7*n^3+4]`
-/

namespace A201185.P10596325720471832189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n ^ 3 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A201185.P10596325720471832189

/-!
# A201186: Incorrect list of perfect numbers from Robert Recorde's Whetstone of Witte.

The programs for A201186, there is no canonical definition to state claims against.
-/

/-! ## A201186.P5813155822297405256

`C(2*lcm(2, 4^n), 2)`
-/

namespace A201186.P5813155822297405256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Nat.lcm 2 (4 ^ n)) 2

end

end A201186.P5813155822297405256

/-! ## A201186.P4274633734654114284

`C(2^ceil(2/acot(n)), 2)`
-/

namespace A201186.P4274633734654114284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈2 / SequenceMachineLib.acot (n : ℝ)⌉ : ℤ))).toNat 2

end

end A201186.P4274633734654114284

/-! ## A201186.P8116729268904935024

`C(4*ceil(4^n/2), 2)`
-/

namespace A201186.P8116729268904935024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * ⌈(4 ^ n : ℚ) / 2⌉).toNat 2

end

end A201186.P8116729268904935024

/-! ## A201186.P4108168357455412270

`record[-(6*a(n-1)+8*a(n-2))]` with `a(0)=6, a(1)=1, a(2)=-6`
-/

namespace A201186.P4108168357455412270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 1, -6] fun n f1 =>
  -(6 * f1 (n - 1) + 8 * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A201186.P4108168357455412270

/-!
# A201188: Number of n X n 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201188, there is no canonical definition to state claims against.
-/

/-! ## A201188.P14764673079903372241

`A201195(∑[4*n]+1)`
-/

namespace A201188.P14764673079903372241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A201188.P14764673079903372241

/-! ## A201188.P6446529577892751068

`A201195(A001844(n))+char[9]`
-/

namespace A201188.P6446529577892751068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A201188.P6446529577892751068

/-! ## A201188.P10836257145773464310

`A200527(n+1)-A201148(n+1)`
-/

namespace A201188.P10836257145773464310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200527 (n + 1) - A201148 (n + 1)

end

end A201188.P10836257145773464310

/-! ## A201188.P8213810181053780795

`A326456(n)+A201195(A001844(n))`
-/

namespace A201188.P8213810181053780795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326456 n + A201195 (A001844 n).toNat

end

end A201188.P8213810181053780795

/-! ## A201188.P8697403939701089882

`A015082(n)*A201195(A001844(n))`
-/

namespace A201188.P8697403939701089882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015082 n * A201195 (A001844 n).toNat

end

end A201188.P8697403939701089882

/-!
# A201189: Number of nX2 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201189, there is no canonical definition to state claims against.
-/

/-! ## A201189.P7669743419613452284

`A200528(n+1)-A201149(n+1)`
-/

namespace A201189.P7669743419613452284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200528 (n + 1) - A201149 (n + 1)

end

end A201189.P7669743419613452284

/-! ## A201189.P4001151258024228968

`A200534(∑[n+1]+2)-A201149(n+1)`
-/

namespace A201189.P4001151258024228968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A201149 (n + 1)

end

end A201189.P4001151258024228968

/-! ## A201189.P18008022625286133467

`A200534(∑[n+1]+2)%A201149(A120951(n+1))`
-/

namespace A201189.P18008022625286133467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (A201149 (A120951 (n + 1)).toNat)

end

end A201189.P18008022625286133467

/-! ## A201189.P10591678957280039873

`A200534(A133263(n+1))+A000007(n+1)-A201149(n+1)`
-/

namespace A201189.P10591678957280039873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A133263 (n + 1)).toNat + A000007 (n + 1) - A201149 (n + 1)

end

end A201189.P10591678957280039873

/-! ## A201189.P1205375383562597202

`A201195(∑[n+1]+2)`
-/

namespace A201189.P1205375383562597202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A201189.P1205375383562597202

/-!
# A201190: Number of nX3 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201190, there is no canonical definition to state claims against.
-/

/-! ## A201190.P7986295640077997173

`A200529(n+1)-A201150(n+1)`
-/

namespace A201190.P7986295640077997173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200529 (n + 1) - A201150 (n + 1)

end

end A201190.P7986295640077997173

/-! ## A201190.P2639459287618282568

`A200534(A167614(n+1))-A201150(n+1)`
-/

namespace A201190.P2639459287618282568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167614 (n + 1)).toNat - A201150 (n + 1)

end

end A201190.P2639459287618282568

/-! ## A201190.P11562337357045533337

`A200534(A167614(n+1))%A201150(A085735(n+1))`
-/

namespace A201190.P11562337357045533337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (A167614 (n + 1)).toNat) (A201150 (A085735 (n + 1)).toNat)

end

end A201190.P11562337357045533337

/-! ## A201190.P12969944254829038432

`(A200534(A167614(n+1))+A185284(n))%A201150(n+1)`
-/

namespace A201190.P12969944254829038432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (A167614 (n + 1)).toNat + A185284 n) (A201150 (n + 1))

end

end A201190.P12969944254829038432

/-! ## A201190.P14316650547465327974

`(A015082(n)*A200534(A167614(n+1)))%A201150(n+1)`
-/

namespace A201190.P14316650547465327974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015082 n * A200534 (A167614 (n + 1)).toNat) (A201150 (n + 1))

end

end A201190.P14316650547465327974

/-!
# A201191: Number of nX4 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201191, there is no canonical definition to state claims against.
-/

/-! ## A201191.P5408029625736857718

`A200530(n+1)-A201151(n+1)`
-/

namespace A201191.P5408029625736857718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200530 (n + 1) - A201151 (n + 1)

end

end A201191.P5408029625736857718

/-! ## A201191.P8936893325115615562

`A200534(A141214(n)+7)-A201151(n+1)`
-/

namespace A201191.P8936893325115615562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A141214 n + 7).toNat - A201151 (n + 1)

end

end A201191.P8936893325115615562

/-! ## A201191.P11416869214290025794

`A200534(A052905(n)+9)-A201151(n+1)`
-/

namespace A201191.P11416869214290025794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A052905 n + 9).toNat - A201151 (n + 1)

end

end A201191.P11416869214290025794

/-! ## A201191.P3396387967092838245

`A200534(A055999(n)+10)-A201151(n+1)`
-/

namespace A201191.P3396387967092838245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A055999 n + 10).toNat - A201151 (n + 1)

end

end A201191.P3396387967092838245

/-! ## A201191.P3586670475869371774

`A200534(A167614(n+2)+1)-A201151(n+1)`
-/

namespace A201191.P3586670475869371774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167614 (n + 2) + 1).toNat - A201151 (n + 1)

end

end A201191.P3586670475869371774

/-!
# A201192: Number of nX5 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201192, there is no canonical definition to state claims against.
-/

/-! ## A201192.P9399967209309282294

`A200531(n+1)-A201152(n+1)`
-/

namespace A201192.P9399967209309282294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200531 (n + 1) - A201152 (n + 1)

end

end A201192.P9399967209309282294

/-! ## A201192.P8662003131405685424

`A200534(A167499(n+3))-A201152(n+1)`
-/

namespace A201192.P8662003131405685424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A167499 (n + 3)).toNat - A201152 (n + 1)

end

end A201192.P8662003131405685424

/-! ## A201192.P15859518561055871651

`A200534(A155212(n)+13)-A201152(n+1)`
-/

namespace A201192.P15859518561055871651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A155212 n + 13).toNat - A201152 (n + 1)

end

end A201192.P15859518561055871651

/-! ## A201192.P6050738469957357404

`A200534(eq[7, A066657(n)])-A201152(n+1)`
-/

namespace A201192.P6050738469957357404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A201152 (n + 1)

end

end A201192.P6050738469957357404

/-! ## A201192.P17906042854731083239

`A200534(A000217(n+4)+5)-A201152(n+1)`
-/

namespace A201192.P17906042854731083239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A000217 (n + 4) + 5).toNat - A201152 (n + 1)

end

end A201192.P17906042854731083239

/-!
# A201193: Number of nX6 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201193, there is no canonical definition to state claims against.
-/

/-! ## A201193.P3542592302586805314

`A200532(n+1)-A201153(n+1)`
-/

namespace A201193.P3542592302586805314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200532 (n + 1) - A201153 (n + 1)

end

end A201193.P3542592302586805314

/-! ## A201193.P12403587537402961919

`A200534(A056115(n)+21)-A201153(n+1)`
-/

namespace A201193.P12403587537402961919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (A056115 n + 21).toNat - A201153 (n + 1)

end

end A201193.P12403587537402961919

/-! ## A201193.P10163965481816224775

`A200534(eq[7, A131818(n+1)])-A201153(n+1)`
-/

namespace A201193.P10163965481816224775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A201153 (n + 1)

end

end A201193.P10163965481816224775

/-! ## A201193.P1227183036277528825

`A200534(A056115(n)+21)%A201153(A120951(n+1))`
-/

namespace A201193.P1227183036277528825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (A056115 n + 21).toNat) (A201153 (A120951 (n + 1)).toNat)

end

end A201193.P1227183036277528825

/-! ## A201193.P14980236721993030173

`A200534(eq[5, A193592(n)])-A201153(n+1)`
-/

namespace A201193.P14980236721993030173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A201153 (n + 1)

end

end A201193.P14980236721993030173

/-!
# A201194: Number of n X 7 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201194, there is no canonical definition to state claims against.
-/

/-! ## A201194.P10023924279183514056

`A200533(n+1)-A201154(n+1)`
-/

namespace A201194.P10023924279183514056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200533 (n + 1) - A201154 (n + 1)

end

end A201194.P10023924279183514056

/-! ## A201194.P5713486134727925638

`A201195(A167487(n+5))`
-/

namespace A201194.P5713486134727925638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (A167487 (n + 5)).toNat

end

end A201194.P5713486134727925638

/-! ## A201194.P2056322020165843781

`A201195(eq[11, A066657(n)])`
-/

namespace A201194.P2056322020165843781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A201194.P2056322020165843781

/-! ## A201194.P1837375729950716279

`A201195(A167499(n+5)+2)`
-/

namespace A201194.P1837375729950716279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (A167499 (n + 5) + 2).toNat

end

end A201194.P1837375729950716279

/-! ## A201194.P11635067342330148610

`A201195(A167614(n+5)+4)`
-/

namespace A201194.P11635067342330148610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201195 (A167614 (n + 5) + 4).toNat

end

end A201194.P11635067342330148610

/-!
# A201195: T(n,k)=Number of nXk 0..2 arrays with every row and column running average nondecreasing rightwards and downwards but some diagonal running average having a decrease.

The programs for A201195, there is no canonical definition to state claims against.
-/

/-! ## A201195.P3058543264195434037

`A200534(n+1)-A201155(n+1)`
-/

namespace A201195.P3058543264195434037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200534 (n + 1) - A201155 (n + 1)

end

end A201195.P3058543264195434037

/-! ## A201195.P8732323397044237638

`A200534(C(n+1, n))%A201155(n+1)`
-/

namespace A201195.P8732323397044237638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (Nat.choose (n + 1) n)) (A201155 (n + 1))

end

end A201195.P8732323397044237638

/-! ## A201195.P10319394215791417802

`A200534(A000027(n+1))%A201155(n+1)`
-/

namespace A201195.P10319394215791417802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (A000027 (n + 1)).toNat) (A201155 (n + 1))

end

end A201195.P10319394215791417802

/-! ## A201195.P5288554133057294199

`A200534(A000038(n)+1+n)%A201155(n+1)`
-/

namespace A201195.P5288554133057294199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (A000038 n + 1 + (n : ℤ)).toNat) (A201155 (n + 1))

end

end A201195.P5288554133057294199

/-! ## A201195.P12826586354683217951

`A200534(A059841(2*n)+n)%A201155(n+1)`
-/

namespace A201195.P12826586354683217951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200534 (A059841 (2 * n) + (n : ℤ)).toNat) (A201155 (n + 1))

end

end A201195.P12826586354683217951

/-! ## A201195.P15072925895258915432

`(A200534(n+1)%A201155(n+1))%A053809(n)`
-/

namespace A201195.P15072925895258915432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A200534 (n + 1)) (A201155 (n + 1))) (A053809 n)

end

end A201195.P15072925895258915432

/-!
# A201197: E.g.f A(x) satisfies A(x) = 1 + sinh(x)*A(sinh(x)).

The programs for A201197, there is no canonical definition to state claims against.
-/

/-! ## A201197.P3489995867780185270

`or(A052375(A000699(n)), A088715(n))`
-/

namespace A201197.P3489995867780185270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052375 (A000699 n).toNat) (A088715 n)

end

end A201197.P3489995867780185270

/-! ## A201197.P2097766628551731010

`∑[∑[A172311(floor(n!/2))]]+1`
-/

namespace A201197.P2097766628551731010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 ⌊(Nat.factorial n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A201197.P2097766628551731010

/-!
# A201198: Triangle version of the array w(N,L) of the average number of round trips of length L on Laguerre graphs L_N.

The programs for A201198, there is no canonical definition to state claims against.
-/

/-! ## A201198.P14185516128612845185

`A325400(A385291(n+1))`
-/

namespace A201198.P14185516128612845185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (A385291 (n + 1)).toNat

end

end A201198.P14185516128612845185

/-! ## A201198.P7270662729823086536

`A349933(n)-A070176(A101881(A060187(n+1)))`
-/

namespace A201198.P7270662729823086536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349933 n - A070176 (A101881 (A060187 (n + 1)).toNat).toNat

end

end A201198.P7270662729823086536

/-! ## A201198.P1801619011288010345

`A147968(A060543(n))`
-/

namespace A201198.P1801619011288010345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A060543 n).toNat

end

end A201198.P1801619011288010345

/-! ## A201198.P104922197545067742

`A113221(A142589(n))`
-/

namespace A201198.P104922197545067742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A142589 n).toNat

end

end A201198.P104922197545067742

/-! ## A201198.P2803102637317876239

`A213183(A134523(n))`
-/

namespace A201198.P2803102637317876239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213183 (A134523 n).toNat

end

end A201198.P2803102637317876239

