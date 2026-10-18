import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
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

/-!
# A336005: a(n) is the number of terms in the mixed binary-ternary representation of n. See Comments.

The programs for A336005, there is no canonical definition to state claims against.
-/

/-! ## A336005.P18144596396301582664

`A237442(∏{p}[n+1, #]*A197537(n+1))`
-/

namespace A336005.P18144596396301582664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A197537 (n + 1)).toNat

end

end A336005.P18144596396301582664

/-! ## A336005.P6861353675740882532

`A001221(A327076(3*(n+1))*A335465(n))`
-/

namespace A336005.P6861353675740882532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327076 (3 * (n + 1)) * A335465 n).toNat

end

end A336005.P6861353675740882532

/-! ## A336005.P10575709446107855604

`A237442((n+1)*A197537(n+1))`
-/

namespace A336005.P10575709446107855604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237442 ((n + 1 : ℤ) * A197537 (n + 1)).toNat

end

end A336005.P10575709446107855604

/-! ## A336005.P9726112009216475135

`A296773(A131235(n))+A171157(n+1)`
-/

namespace A336005.P9726112009216475135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296773 (A131235 n).toNat + A171157 (n + 1)

end

end A336005.P9726112009216475135

/-! ## A336005.P17283909445823395284

`A348613(A059922(n))+A237442(n+1)`
-/

namespace A336005.P17283909445823395284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A059922 n).toNat + A237442 (n + 1)

end

end A336005.P17283909445823395284

/-!
# A336006: a(n) = the least k such that the mixed binary-ternary representation of k has n terms. See Comments.

The programs for A336006, there is no canonical definition to state claims against.
-/

/-! ## A336006.P10259689041186641047

`∑[A003557(A334151(2*n+1))]`
-/

namespace A336006.P10259689041186641047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A334151 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336006.P10259689041186641047

/-! ## A336006.P16518491004535217334

`∑[record[A081676(A114295(n))]]`
-/

namespace A336006.P16518491004535217334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (A114295 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336006.P16518491004535217334

/-!
# A336008: Complement of A335999.

The programs for A336008, there is no canonical definition to state claims against.
-/

/-! ## A336008.P3622402034231356869

`A026278(n+1)+1`
-/

namespace A336008.P3622402034231356869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026278 (n + 1) + 1

end

end A336008.P3622402034231356869

/-! ## A336008.P9394872208178920136

`A026277(n+1)+4+n`
-/

namespace A336008.P9394872208178920136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026277 (n + 1) + 4 + (n : ℤ)

end

end A336008.P9394872208178920136

/-! ## A336008.P1344464771720260014

`A335999(n+2)+3+n`
-/

namespace A336008.P1344464771720260014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335999 (n + 2) + 3 + (n : ℤ)

end

end A336008.P1344464771720260014

/-! ## A336008.P13547367098470575535

`record[A026276(n+1)+n+4]`
-/

namespace A336008.P13547367098470575535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026276 (n + 1) + (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336008.P13547367098470575535

/-! ## A336008.P10316091467973142705

`A020725(A026278(n+1))`
-/

namespace A336008.P10316091467973142705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A026278 (n + 1)).toNat

end

end A336008.P10316091467973142705

/-! ## A336008.P1557208697772464805

`A004956(A026277(n+1)+2)`
-/

namespace A336008.P1557208697772464805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A026277 (n + 1) + 2).toNat

end

end A336008.P1557208697772464805

/-! ## A336008.P12527640385262483648

`A004956(A335999(n+2)+1)`
-/

namespace A336008.P12527640385262483648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A335999 (n + 2) + 1).toNat

end

end A336008.P12527640385262483648

/-! ## A336008.P13483217213617332266

`A026351(A335999(n+2)+1)`
-/

namespace A336008.P13483217213617332266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A335999 (n + 2) + 1).toNat

end

end A336008.P13483217213617332266

/-!
# A336009: a(0) = ... = a(3) = 1; a(n) = Sum_{k=0..n-4} binomial(n-4,k) * a(k) * a(n-k-4).

The programs for A336009, there is no canonical definition to state claims against.
-/

/-! ## A336009.P10626441951671434327

`2*A325328(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A336009.P10626441951671434327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  2 * A325328 (a (n - 1)).toNat

end

end A336009.P10626441951671434327

/-! ## A336009.P12890476336950358866

`A320230(A052325(n+1))`
-/

namespace A336009.P12890476336950358866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320230 (A052325 (n + 1)).toNat

end

end A336009.P12890476336950358866

/-! ## A336009.P999737143445837790

`A359536(A344492(n+1))`
-/

namespace A336009.P999737143445837790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A344492 (n + 1)).toNat

end

end A336009.P999737143445837790

/-! ## A336009.P7805445928292174752

`floor(A250120(A099583(n))^(4/95)^n)`
-/

namespace A336009.P7805445928292174752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A250120 (A099583 n).toNat : ℝ) ^ ((4 : ℚ) / 95 : ℝ)) ^ n⌋

end

end A336009.P7805445928292174752

/-! ## A336009.P1516288231020288055

`A135662(A318870(n)+A171367(n))`
-/

namespace A336009.P1516288231020288055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A318870 n + A171367 n).toNat

end

end A336009.P1516288231020288055

/-!
# A336010: a(0) = ... = a(4) = 1; a(n) = Sum_{k=0..n-5} binomial(n-5,k) * a(k) * a(n-k-5).

The programs for A336010, there is no canonical definition to state claims against.
-/

/-! ## A336010.P393633266937834930

`A308032(n+1)+A165877(A326473(n))`
-/

namespace A336010.P393633266937834930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308032 (n + 1) + A165877 (A326473 n).toNat

end

end A336010.P393633266937834930

/-!
# A336011: Given the two curves y = (1 - exp(x/2))/(exp(x) + exp(x/2)) and y = (exp(-x) - 1)/2, draw a line tangent to both. This sequence is the decimal expansion of the y-coordinate (negated) of the point at which the line touches y = (1 - exp(x/2))/(exp(x) + exp(x/2)).

The programs for A336011, there is no canonical definition to state claims against.
-/

/-! ## A336011.P11958144782612255564

`A335825(n+2)`
-/

namespace A336011.P11958144782612255564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335825 (n + 2)

end

end A336011.P11958144782612255564

/-!
# A336012: a(n) is the number of chains from {} to a top element in the poset of even sized subsets of {1,2,...,n} ordered by inclusion.

The programs for A336012, there is no canonical definition to state claims against.
-/

/-! ## A336012.P8340244556831300472

`A093178(n)*A094088(A004526(n))`
-/

namespace A336012.P8340244556831300472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A094088 (A004526 n).toNat

end

end A336012.P8340244556831300472

/-! ## A336012.P8494147025444204839

`A093178(n)*A094088(A123108(n))`
-/

namespace A336012.P8494147025444204839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A094088 (A123108 n).toNat

end

end A336012.P8494147025444204839

/-! ## A336012.P18297616890037285328

`A214407(∑[A014681(n)])`
-/

namespace A336012.P18297616890037285328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214407 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336012.P18297616890037285328

/-! ## A336012.P16852531799493538949

`A214407(A000217(n)+A000035(n))`
-/

namespace A336012.P16852531799493538949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214407 (A000217 n + A000035 n).toNat

end

end A336012.P16852531799493538949

/-!
# A336016: a(n) is the number of primes q less than primorial(n) having k = 2 as the least exponent such that q^k == 1 (mod primorial(n)).

The programs for A336016, there is no canonical definition to state claims against.
-/

/-! ## A336016.P11320184774354316019

`record[A329566(∑[A239518(2*n+1)])]`
-/

namespace A336016.P11320184774354316019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239518 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329566 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336016.P11320184774354316019

/-!
# A336017: a(n) = floor(frac(Pi*n)*n), where frac denotes the fractional part.

The programs for A336017, the canonical program `A336017.P15477376785968141573` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336017 has offset 0).

The definition of A336017 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336017.P15477376785968141573

`floor((π*n-floor(π*n))*n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A336017

/-- `floor((π*n-floor(π*n))*n)` -/
def P15477376785968141573.Spec : Prop :=
  ∀ n, P15477376785968141573.a n = A336017 n

theorem P15477376785968141573.correct : P15477376785968141573.Spec := by
  intro n
  simp only [A336017]

end A336017

/-! ## A336017.P14274543659858768691

`floor(π*n²)%A028310(n)`
-/

namespace A336017.P14274543659858768691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.pi * (n ^ 2 : ℝ)⌋ (A028310 n)

end

end A336017.P14274543659858768691

namespace A336017

/-- `floor(π*n²)%A028310(n)` -/
def P14274543659858768691.Spec : Prop :=
  ∀ n, P14274543659858768691.a n = A336017 n

end A336017

/-! ## A336017.P16697530277932511619

`A066643(n)%sqrt(n^(2%(n+1)))`
-/

namespace A336017.P16697530277932511619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066643 n) (SequenceMachineLib.roundAway (Real.sqrt (n ^ (2 % (n + 1)) : ℝ)))

end

end A336017.P16697530277932511619

namespace A336017

/-- `A066643(n)%sqrt(n^(2%(n+1)))` -/
def P16697530277932511619.Spec : Prop :=
  ∀ n, P16697530277932511619.a n = A336017 n

end A336017

/-! ## A336017.P17543326911254913004

`A066643(n)%-A028310(n)`
-/

namespace A336017.P17543326911254913004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066643 n) (-A028310 n)

end

end A336017.P17543326911254913004

namespace A336017

/-- `A066643(n)%-A028310(n)` -/
def P17543326911254913004.Spec : Prop :=
  ∀ n, P17543326911254913004.a n = A336017 n

end A336017

/-! ## A336017.P7539308868047136170

`A066643(n)-n*A022844(n)`
-/

namespace A336017.P7539308868047136170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n - (n : ℤ) * A022844 n

end

end A336017.P7539308868047136170

namespace A336017

/-- `A066643(n)-n*A022844(n)` -/
def P7539308868047136170.Spec : Prop :=
  ∀ n, P7539308868047136170.a n = A336017 n

end A336017

/-! ## A336017.P13382555985875367463

`A066643(A233583(n+1))%A233583(n+1)`
-/

namespace A336017.P13382555985875367463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066643 (A233583 (n + 1)).toNat) (A233583 (n + 1))

end

end A336017.P13382555985875367463

namespace A336017

/-- `A066643(A233583(n+1))%A233583(n+1)` -/
def P13382555985875367463.Spec : Prop :=
  ∀ n, P13382555985875367463.a n = A336017 n

end A336017

/-! ## A336017.P3345755496730611225

`A022844(n²)%A134478(∑[n])`
-/

namespace A336017.P3345755496730611225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022844 (n ^ 2)) (A134478 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A336017.P3345755496730611225

namespace A336017

/-- `A022844(n²)%A134478(∑[n])` -/
def P3345755496730611225.Spec : Prop :=
  ∀ n, P3345755496730611225.a n = A336017 n

end A336017

/-! ## A336017.P2197545428478990103

`A022844(n²)-n*A022844(n)`
-/

namespace A336017.P2197545428478990103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n ^ 2) - (n : ℤ) * A022844 n

end

end A336017.P2197545428478990103

namespace A336017

/-- `A022844(n²)-n*A022844(n)` -/
def P2197545428478990103.Spec : Prop :=
  ∀ n, P2197545428478990103.a n = A336017 n

end A336017

/-! ## A336017.P2951630658094529464

`n*A195125(n)-A195125(n²)`
-/

namespace A336017.P2951630658094529464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A195125 n - A195125 (n ^ 2)

end

end A336017.P2951630658094529464

namespace A336017

/-- `n*A195125(n)-A195125(n²)` -/
def P2951630658094529464.Spec : Prop :=
  ∀ n, P2951630658094529464.a n = A336017 n

end A336017

/-!
# A336018: a(n) = floor(frac(log_2(n))*n), where frac denotes the fractional part.

The programs for A336018, the canonical program `A336018.P4470048094391084160` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336018 has offset 1).

The definition of A336018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A336018.P5476461840053229245

`floor((log2(n+1)-floor(log2(n+1)))*(n+1))`
-/

namespace A336018.P5476461840053229245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.logb 2 (n + 1 : ℝ) - (Nat.log 2 (n + 1) : ℝ)) * (n + 1 : ℝ)⌋

end

end A336018.P5476461840053229245

namespace A336018

/-- `floor((log2(n+1)-floor(log2(n+1)))*(n+1))` -/
def P5476461840053229245.Spec : Prop :=
  ∀ n, P5476461840053229245.a n = A336018 (n + 1)

end A336018

/-! ## A336018.P4470048094391084160

`A326299(n+1)-A340301(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336018

/-- `A326299(n+1)-A340301(n+1)` -/
def P4470048094391084160.Spec : Prop :=
  ∀ n, P4470048094391084160.a n = A336018 (n + 1)

theorem P4470048094391084160.correct : P4470048094391084160.Spec := by
  intro n
  simp only [A336018, Nat.add_sub_cancel]

end A336018

/-! ## A336018.P13383966438990984873

`floor((n+1)*log2(n+1))%(n+1)`
-/

namespace A336018.P13383966438990984873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n + 1 : ℝ) * Real.logb 2 (n + 1 : ℝ)⌋ (n + 1 : ℤ)

end

end A336018.P13383966438990984873

namespace A336018

/-- `floor((n+1)*log2(n+1))%(n+1)` -/
def P13383966438990984873.Spec : Prop :=
  ∀ n, P13383966438990984873.a n = A336018 (n + 1)

end A336018

/-! ## A336018.P6623110557573633099

`abs(ceil((n+1)*(log2(n+1)-acot(n+1)))%(n+1))`
-/

namespace A336018.P6623110557573633099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod ⌈(n + 1 : ℝ) * (Real.logb 2 (n + 1 : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))⌉ (n + 1 : ℤ)|

end

end A336018.P6623110557573633099

namespace A336018

/-- `abs(ceil((n+1)*(log2(n+1)-acot(n+1)))%(n+1))` -/
def P6623110557573633099.Spec : Prop :=
  ∀ n, P6623110557573633099.a n = A336018 (n + 1)

end A336018

/-! ## A336018.P11838111109307151662

`abs((A259368(n+1)-1)%(n+1))`
-/

namespace A336018.P11838111109307151662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A259368 (n + 1) - 1) (n + 1 : ℤ)|

end

end A336018.P11838111109307151662

namespace A336018

/-- `abs((A259368(n+1)-1)%(n+1))` -/
def P11838111109307151662.Spec : Prop :=
  ∀ n, P11838111109307151662.a n = A336018 (n + 1)

end A336018

/-! ## A336018.P879952499020687544

`A259368(n+1)-(A340301(n+1)+1)`
-/

namespace A336018.P879952499020687544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259368 (n + 1) - (A340301 (n + 1) + 1)

end

end A336018.P879952499020687544

namespace A336018

/-- `A259368(n+1)-(A340301(n+1)+1)` -/
def P879952499020687544.Spec : Prop :=
  ∀ n, P879952499020687544.a n = A336018 (n + 1)

end A336018

/-! ## A336018.P17106143927535742636

`A259368(n+1)%(n+1)-A057427(n)`
-/

namespace A336018.P17106143927535742636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259368 (n + 1)) (n + 1 : ℤ) - A057427 n

end

end A336018.P17106143927535742636

namespace A336018

/-- `A259368(n+1)%(n+1)-A057427(n)` -/
def P17106143927535742636.Spec : Prop :=
  ∀ n, P17106143927535742636.a n = A336018 (n + 1)

end A336018

/-! ## A336018.P6661518708287159579

`A326299(n+1)-(n+1)*A000523(n+1)`
-/

namespace A336018.P6661518708287159579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326299 (n + 1) - (n + 1 : ℤ) * A000523 (n + 1)

end

end A336018.P6661518708287159579

namespace A336018

/-- `A326299(n+1)-(n+1)*A000523(n+1)` -/
def P6661518708287159579.Spec : Prop :=
  ∀ n, P6661518708287159579.a n = A336018 (n + 1)

end A336018

/-! ## A336018.P15934876991451665884

`A023443(A259368(n+1)-A340301(n+1))`
-/

namespace A336018.P15934876991451665884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A259368 (n + 1) - A340301 (n + 1)).toNat

end

end A336018.P15934876991451665884

namespace A336018

/-- `A023443(A259368(n+1)-A340301(n+1))` -/
def P15934876991451665884.Spec : Prop :=
  ∀ n, P15934876991451665884.a n = A336018 (n + 1)

end A336018

/-!
# A336020: a(0) = a(1) = a(2) = 1; a(n) = Sum_{k=0..n-3} Stirling2(n-3,k) * a(k).

The programs for A336020, there is no canonical definition to state claims against.
-/

/-! ## A336020.P13992716842894662881

`∏{e}[floor(5^(n-1)), A006966(#)]`
-/

namespace A336020.P13992716842894662881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006966 (Nat.factorization (f1 n).natAbs p)

end

end A336020.P13992716842894662881

/-! ## A336020.P17473408992513547265

`A006966(A250264(n))`
-/

namespace A336020.P17473408992513547265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (A250264 n).toNat

end

end A336020.P17473408992513547265

/-! ## A336020.P1906176144759815196

`A006966((n-1)^A027868(n))`
-/

namespace A336020.P1906176144759815196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) ^ (A027868 n : ℤ))).toNat

end

end A336020.P1906176144759815196

/-! ## A336020.P13915933860646276979

`A006966(ceil(log(A123431(n+1))))`
-/

namespace A336020.P13915933860646276979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 ⌈Real.log (A123431 (n + 1) : ℝ)⌉.toNat

end

end A336020.P13915933860646276979

/-! ## A336020.P6608106856932919167

`A006966(A332305(n)+log2(gcd(2, n)))`
-/

namespace A336020.P6608106856932919167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006966 (SequenceMachineLib.roundAway ((A332305 n : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A336020.P6608106856932919167

/-!
# A336021: a(0) = ... = a(3) = 1; a(n) = Sum_{k=0..n-4} Stirling2(n-4,k) * a(k).

The programs for A336021, there is no canonical definition to state claims against.
-/

/-! ## A336021.P11914199177681795275

`A336022(n+1)+A101638(A007548(n+1))`
-/

namespace A336021.P11914199177681795275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336022 (n + 1) + A101638 (A007548 (n + 1)).toNat

end

end A336021.P11914199177681795275

/-! ## A336021.P18019088590268373680

`A335467(ceil(n!/exp(n))+1)`
-/

namespace A336021.P18019088590268373680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (⌈(Nat.factorial n : ℝ) / Real.exp (n : ℝ)⌉ + 1).toNat

end

end A336021.P18019088590268373680

/-! ## A336021.P15319719195775369166

`A335469(floor((4-6/n)*a(n-1)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A336021.P15319719195775369166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A335469 ⌊(4 - 6 / (n : ℚ)) * (a (n - 1) : ℚ)⌋.toNat

end

end A336021.P15319719195775369166

/-! ## A336021.P6776634429389691956

`A125311(A025723(n))`
-/

namespace A336021.P6776634429389691956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125311 (A025723 n).toNat

end

end A336021.P6776634429389691956

/-! ## A336021.P813986496259149081

`A205810(A151336(n))`
-/

namespace A336021.P813986496259149081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205810 (A151336 n).toNat

end

end A336021.P813986496259149081

/-!
# A336022: a(0) = ... = a(4) = 1; a(n) = Sum_{k=0..n-5} Stirling2(n-5,k) * a(k).

The programs for A336022, there is no canonical definition to state claims against.
-/

/-! ## A336022.P11779179033096626998

`A000110(∑[floor(n/6)^(n+1)])`
-/

namespace A336022.P11779179033096626998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 6⌋ ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336022.P11779179033096626998

/-! ## A336022.P8846510525979185102

`A127568(A191321(n))`
-/

namespace A336022.P8846510525979185102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 (A191321 n).toNat

end

end A336022.P8846510525979185102

/-! ## A336022.P2562248693850306526

`A321738(A023422(n))`
-/

namespace A336022.P2562248693850306526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321738 (A023422 n).toNat

end

end A336022.P2562248693850306526

/-! ## A336022.P15686452336999118415

`A216460(A240944(n))`
-/

namespace A336022.P15686452336999118415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216460 (A240944 n).toNat

end

end A336022.P15686452336999118415

/-! ## A336022.P4528287044314780521

`A321738(A344493(n))`
-/

namespace A336022.P4528287044314780521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321738 (A344493 n).toNat

end

end A336022.P4528287044314780521

/-!
# A336023: a(0) = a(1) = a(2) = 1; a(n) = (1/2) * Sum_{k=0..n-2} binomial(n-2,k) * a(k) * a(n-k-2).

The programs for A336023, there is no canonical definition to state claims against.
-/

/-! ## A336023.P3576604218516381980

`A054404(A007476(n)+A000034(n))`
-/

namespace A336023.P3576604218516381980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A007476 n + A000034 n).toNat

end

end A336023.P3576604218516381980

/-! ## A336023.P2073432608768194612

`A140202(A007999(n))`
-/

namespace A336023.P2073432608768194612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A007999 n).toNat

end

end A336023.P2073432608768194612

/-! ## A336023.P12223760189827344953

`A333524(A181600(n))`
-/

namespace A336023.P12223760189827344953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333524 (A181600 n).toNat

end

end A336023.P12223760189827344953

/-! ## A336023.P10493732827206379772

`A319161(A333497(n))`
-/

namespace A336023.P10493732827206379772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319161 (A333497 n).toNat

end

end A336023.P10493732827206379772

/-! ## A336023.P7854673856435787151

`A333524(A358902(n))`
-/

namespace A336023.P7854673856435787151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333524 (A358902 n).toNat

end

end A336023.P7854673856435787151

/-!
# A336029: Given the two curves y = (1 - exp(x/2))/(exp(x) + exp(x/2)) and y = (exp(-x) - 1)/2, draw a line tangent to both. This sequence is the decimal expansion of the y-coordinate (negated) of the point at which the line touches y = (exp(-x) - 1)/2.

The programs for A336029, there is no canonical definition to state claims against.
-/

/-! ## A336029.P8162520225094581945

`9-A335822(n)`
-/

namespace A336029.P8162520225094581945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A335822 n

end

end A336029.P8162520225094581945

/-!
# A336030: a(n) = Fibonacci(n-1) + Fibonacci(floor(n/2)).

The programs for A336030, the canonical program `A336030.P17066475471649328389` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336030 has offset 0).

The definition of A336030 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336030.P17066475471649328389

`A212804(n)+A103609(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336030

/-- `A212804(n)+A103609(n)` -/
def P17066475471649328389.Spec : Prop :=
  ∀ n, P17066475471649328389.a n = A336030 n

theorem P17066475471649328389.correct : P17066475471649328389.Spec := by
  intro n
  simp only [A336030]

end A336030

/-! ## A336030.P13010616577279839706

`A212804(n)+A000045(floor(n/2))`
-/

namespace A336030.P13010616577279839706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A000045 ⌊(n : ℚ) / 2⌋.toNat

end

end A336030.P13010616577279839706

namespace A336030

/-- `A212804(n)+A000045(floor(n/2))` -/
def P13010616577279839706.Spec : Prop :=
  ∀ n, P13010616577279839706.a n = A336030 n

end A336030

/-! ## A336030.P2182779767194772757

`A000045(abs(1-n))+A000045(floor(n/2))`
-/

namespace A336030.P2182779767194772757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat + A000045 ⌊(n : ℚ) / 2⌋.toNat

end

end A336030.P2182779767194772757

namespace A336030

/-- `A000045(abs(1-n))+A000045(floor(n/2))` -/
def P2182779767194772757.Spec : Prop :=
  ∀ n, P2182779767194772757.a n = A336030 n

end A336030

/-! ## A336030.P9424564765512494735

`A212804(A008619(n))+A212804(n)`
-/

namespace A336030.P9424564765512494735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A008619 n).toNat + A212804 n

end

end A336030.P9424564765512494735

namespace A336030

/-- `A212804(A008619(n))+A212804(n)` -/
def P9424564765512494735.Spec : Prop :=
  ∀ n, P9424564765512494735.a n = A336030 n

end A336030

/-! ## A336030.P16446613950105193344

`A212804(A004526(n)+1)+A212804(n)`
-/

namespace A336030.P16446613950105193344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A004526 n + 1).toNat + A212804 n

end

end A336030.P16446613950105193344

namespace A336030

/-- `A212804(A004526(n)+1)+A212804(n)` -/
def P16446613950105193344.Spec : Prop :=
  ∀ n, P16446613950105193344.a n = A336030 n

end A336030

/-! ## A336030.P901114679591611762

`A212804(A110654(n+1))+A212804(n)`
-/

namespace A336030.P901114679591611762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A110654 (n + 1)).toNat + A212804 n

end

end A336030.P901114679591611762

namespace A336030

/-- `A212804(A110654(n+1))+A212804(n)` -/
def P901114679591611762.Spec : Prop :=
  ∀ n, P901114679591611762.a n = A336030 n

end A336030

/-! ## A336030.P14087333408341968829

`A212804(A110655(2*(n+1)))+A212804(n)`
-/

namespace A336030.P14087333408341968829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A110655 (2 * (n + 1))).toNat + A212804 n

end

end A336030.P14087333408341968829

namespace A336030

/-- `A212804(A110655(2*(n+1)))+A212804(n)` -/
def P14087333408341968829.Spec : Prop :=
  ∀ n, P14087333408341968829.a n = A336030 n

end A336030

/-! ## A336030.P15435271350395426441

`A103609(n)+Δ[A000045(n)]`
-/

namespace A336030.P15435271350395426441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + (f1 (n + 1) - f1 n)

end

end A336030.P15435271350395426441

namespace A336030

/-- `A103609(n)+Δ[A000045(n)]` -/
def P15435271350395426441.Spec : Prop :=
  ∀ n, P15435271350395426441.a n = A336030 n

end A336030

/-! ## A336030.P5634249547493796721

`A103609(n)+Δ[A001611(n)]`
-/

namespace A336030.P5634249547493796721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + (f1 (n + 1) - f1 n)

end

end A336030.P5634249547493796721

namespace A336030

/-- `A103609(n)+Δ[A001611(n)]` -/
def P5634249547493796721.Spec : Prop :=
  ∀ n, P5634249547493796721.a n = A336030 n

end A336030

/-! ## A336030.P12111685037335751789

`A103609(n)+A118658(n)/2`
-/

namespace A336030.P12111685037335751789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 n : ℚ) + (A118658 n : ℚ) / 2

end

end A336030.P12111685037335751789

namespace A336030

/-- `A103609(n)+A118658(n)/2` -/
def P12111685037335751789.Spec : Prop :=
  ∀ n, P12111685037335751789.a n = (A336030 n : ℚ)

end A336030

/-! ## A336030.P8998098120352335472

`A103609(n)+Δ[A103609(2*n)]`
-/

namespace A336030.P8998098120352335472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + (f1 (n + 1) - f1 n)

end

end A336030.P8998098120352335472

namespace A336030

/-- `A103609(n)+Δ[A103609(2*n)]` -/
def P8998098120352335472.Spec : Prop :=
  ∀ n, P8998098120352335472.a n = A336030 n

end A336030

/-! ## A336030.P1022854355011941040

`Δ[A000045(n)]+A000045(floor(n/2))`
-/

namespace A336030.P1022854355011941040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 ⌊(n : ℚ) / 2⌋.toNat

end

end A336030.P1022854355011941040

namespace A336030

/-- `Δ[A000045(n)]+A000045(floor(n/2))` -/
def P1022854355011941040.Spec : Prop :=
  ∀ n, P1022854355011941040.a n = A336030 n

end A336030

/-! ## A336030.P5118171346988301057

`A000045(A004526(n))+Δ[A000045(n)]`
-/

namespace A336030.P5118171346988301057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004526 n).toNat + (f1 (n + 1) - f1 n)

end

end A336030.P5118171346988301057

namespace A336030

/-- `A000045(A004526(n))+Δ[A000045(n)]` -/
def P5118171346988301057.Spec : Prop :=
  ∀ n, P5118171346988301057.a n = A336030 n

end A336030

/-! ## A336030.P1913500304594919568

`A000045(n+1)+A103609(n)-A000045(n)`
-/

namespace A336030.P1913500304594919568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A103609 n - A000045 n)

end

end A336030.P1913500304594919568

namespace A336030

/-- `A000045(n+1)+A103609(n)-A000045(n)` -/
def P1913500304594919568.Spec : Prop :=
  ∀ n, P1913500304594919568.a n = A336030 n

end A336030

/-! ## A336030.P1358921143859102102

`A103609(n)+Δ[A001588(n)/2]`
-/

namespace A336030.P1358921143859102102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001588 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103609 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A336030.P1358921143859102102

namespace A336030

/-- `A103609(n)+Δ[A001588(n)/2]` -/
def P1358921143859102102.Spec : Prop :=
  ∀ n, P1358921143859102102.a n = (A336030 n : ℚ)

end A336030

/-! ## A336030.P15029420508781887823

`A103609(n)+Δ[Δ[A000071(n+1)]]`
-/

namespace A336030.P15029420508781887823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + (f1 (n + 1) - f1 n)

end

end A336030.P15029420508781887823

namespace A336030

/-- `A103609(n)+Δ[Δ[A000071(n+1)]]` -/
def P15029420508781887823.Spec : Prop :=
  ∀ n, P15029420508781887823.a n = A336030 n

end A336030

/-! ## A336030.P1083904864914218370

`A103609(n)+Δ[A000032(n)-A118658(n)]`
-/

namespace A336030.P1083904864914218370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + (f1 (n + 1) - f1 n)

end

end A336030.P1083904864914218370

namespace A336030

/-- `A103609(n)+Δ[A000032(n)-A118658(n)]` -/
def P1083904864914218370.Spec : Prop :=
  ∀ n, P1083904864914218370.a n = A336030 n

end A336030

/-! ## A336030.P7066811855342506556

`A103609(n)+Δ[A001612(n)-A118658(n)]`
-/

namespace A336030.P7066811855342506556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n - A118658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + (f1 (n + 1) - f1 n)

end

end A336030.P7066811855342506556

namespace A336030

/-- `A103609(n)+Δ[A001612(n)-A118658(n)]` -/
def P7066811855342506556.Spec : Prop :=
  ∀ n, P7066811855342506556.a n = A336030 n

end A336030

/-!
# A336033: a(n) is the number of k such that 1 <= k < n and a(k) XOR ... XOR a(n-1) = 0 (where XOR denotes the bitwise XOR operator).

The programs for A336033, there is no canonical definition to state claims against.
-/

/-! ## A336033.P14842832856969495545

`xor(A340488(n+1), A340488(n+2))`
-/

namespace A336033.P14842832856969495545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A340488 (n + 1)) (A340488 (n + 2))

end

end A336033.P14842832856969495545

/-! ## A336033.P5206051384241905202

`xor(∑[A340499(n+1)], ∑[A340499(A004277(n)-n)])`
-/

namespace A336033.P5206051384241905202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A336033.P5206051384241905202

/-! ## A336033.P9814907613379995269

`xor(Δ[A340496(n+1)]-A340499(n+1), ∑[A340499(n+1)])`
-/

namespace A336033.P9814907613379995269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n - A340499 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A336033.P9814907613379995269

/-! ## A336033.P1413614816929388157

`xor(∑[A340499(A028690(n+1)%2+n)], ∑[A340499(n+1)])`
-/

namespace A336033.P1413614816929388157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (Int.tmod (A028690 (n + 1)) 2 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A336033.P1413614816929388157

/-! ## A336033.P5542598859473657708

`xor(A340496(n+1)-A340496(A000007(n)+n), ∑[A340499(n+1)])`
-/

namespace A336033.P5542598859473657708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A340496 (n + 1) - A340496 (A000007 n + (n : ℤ)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336033.P5542598859473657708

/-! ## A336033.P3641526312187913347

`xor(A340496(n+2)-(A340499(n+1)+A340496(n+1)), ∑[A340499(n+1)])`
-/

namespace A336033.P3641526312187913347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A340496 (n + 2) - (A340499 (n + 1) + A340496 (n + 1))) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A336033.P3641526312187913347

/-! ## A336033.P16718261829981350252

`xor(∑[A340499(n+1)], Δ[A340496(A000007(n)+n)])`
-/

namespace A336033.P16718261829981350252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A336033.P16718261829981350252

/-! ## A336033.P10280816001034774579

`xor(Δ[A340496(n+1)], Δ[A340496(A000007(n)+n)])`
-/

namespace A336033.P10280816001034774579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A336033.P10280816001034774579

/-!
# A336037: a(n+1) is the number of times the binary representation of a(n) is the concatenation of that of one or more consecutive terms in this sequence so far with a(1) = 1.

The programs for A336037, there is no canonical definition to state claims against.
-/

/-! ## A336037.P1373182612097458177

`A330524(n+1)*A336022(A165878(n))`
-/

namespace A336037.P1373182612097458177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330524 (n + 1) * A336022 (A165878 n).toNat

end

end A336037.P1373182612097458177

/-! ## A336037.P12066834338917564139

`A330524(n+1)+A113092(A137795(n+1))`
-/

namespace A336037.P12066834338917564139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330524 (n + 1) + A113092 (A137795 (n + 1)).toNat

end

end A336037.P12066834338917564139

/-! ## A336037.P5525504247351246998

`A330524(A250248(n+1)%A188000(n+2))`
-/

namespace A336037.P5525504247351246998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330524 (Int.tmod (A250248 (n + 1)) (A188000 (n + 2))).toNat

end

end A336037.P5525504247351246998

/-!
# A336039: Numbers k such that A000081(k) is divisible by k.

The programs for A336039, there is no canonical definition to state claims against.
-/

/-! ## A336039.P3286978315758452083

`record[gcd(n+1, A000081(n+1))]`
-/

namespace A336039.P3286978315758452083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000081 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336039.P3286978315758452083

/-!
# A336040: Characteristic function of refactorable numbers (A033950).

The programs for A336040, the canonical program `A336040.P10759286012738272429` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336040 has offset 1).

The definition of A336040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336040.P11841397498619626366

`1-A368625(n+1)`
-/

namespace A336040.P11841397498619626366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A368625 (n + 1)

end

end A336040.P11841397498619626366

namespace A336040

/-- `1-A368625(n+1)` -/
def P11841397498619626366.Spec : Prop :=
  ∀ n, P11841397498619626366.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P1351152842520092278

`floor(acot(A054008(n+1)))`
-/

namespace A336040.P1351152842520092278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A054008 (n + 1) : ℝ)⌋

end

end A336040.P1351152842520092278

namespace A336040

/-- `floor(acot(A054008(n+1)))` -/
def P1351152842520092278.Spec : Prop :=
  ∀ n, P1351152842520092278.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P15997171724760378255

`floor(1/A090387(n+1))`
-/

namespace A336040.P15997171724760378255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A090387 (n + 1) : ℚ)⌋

end

end A336040.P15997171724760378255

namespace A336040

/-- `floor(1/A090387(n+1))` -/
def P15997171724760378255.Spec : Prop :=
  ∀ n, P15997171724760378255.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P4069359469473091526

`floor(1/A124332(n+1))`
-/

namespace A336040.P4069359469473091526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A124332 (n + 1) : ℚ)⌋

end

end A336040.P4069359469473091526

namespace A336040

/-- `floor(1/A124332(n+1))` -/
def P4069359469473091526.Spec : Prop :=
  ∀ n, P4069359469473091526.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P1593661694901601656

`floor(1/A298734(n+1))`
-/

namespace A336040.P1593661694901601656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A298734 (n + 1) : ℚ)⌋

end

end A336040.P1593661694901601656

namespace A336040

/-- `floor(1/A298734(n+1))` -/
def P1593661694901601656.Spec : Prop :=
  ∀ n, P1593661694901601656.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P12400573956843166049

`char[A033950(n+1)-1]`
-/

namespace A336040.P12400573956843166049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336040.P12400573956843166049

namespace A336040

/-- `char[A033950(n+1)-1]` -/
def P12400573956843166049.Spec : Prop :=
  ∀ n, (P12400573956843166049.a n : ℤ) = A336040 (n + 1)

end A336040

/-! ## A336040.P17312861698567109101

`char[A272347(n+1)-1]`
-/

namespace A336040.P17312861698567109101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272347 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A336040.P17312861698567109101

namespace A336040

/-- `char[A272347(n+1)-1]` -/
def P17312861698567109101.Spec : Prop :=
  ∀ n, (P17312861698567109101.a n : ℤ) = A336040 (n + 1)

end A336040

/-! ## A336040.P10759286012738272429

`C(n+1, A009230(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336040

/-- `C(n+1, A009230(n+1))` -/
def P10759286012738272429.Spec : Prop :=
  ∀ n, (P10759286012738272429.a n : ℤ) = A336040 (n + 1)

theorem P10759286012738272429.correct : P10759286012738272429.Spec := by
  intro n
  simp only [A336040, Nat.add_sub_cancel]

end A336040

/-! ## A336040.P2966174616521990641

`C(A122377(n+1), n+1)`
-/

namespace A336040.P2966174616521990641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122377 (n + 1)).toNat (n + 1)

end

end A336040.P2966174616521990641

namespace A336040

/-- `C(A122377(n+1), n+1)` -/
def P2966174616521990641.Spec : Prop :=
  ∀ n, (P2966174616521990641.a n : ℤ) = A336040 (n + 1)

end A336040

/-! ## A336040.P18430519598677956698

`floor(acot((n+1)%A000005(n+1)))`
-/

namespace A336040.P18430519598677956698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod (n + 1 : ℤ) (A000005 (n + 1)) : ℝ)⌋

end

end A336040.P18430519598677956698

namespace A336040

/-- `floor(acot((n+1)%A000005(n+1)))` -/
def P18430519598677956698.Spec : Prop :=
  ∀ n, P18430519598677956698.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P1830103169326290693

`A000007(A054008(n+1))`
-/

namespace A336040.P1830103169326290693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054008 (n + 1)).toNat

end

end A336040.P1830103169326290693

namespace A336040

/-- `A000007(A054008(n+1))` -/
def P1830103169326290693.Spec : Prop :=
  ∀ n, P1830103169326290693.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P2803336179916452674

`A063524(A124332(n+1))`
-/

namespace A336040.P2803336179916452674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A124332 (n + 1)).toNat

end

end A336040.P2803336179916452674

namespace A336040

/-- `A063524(A124332(n+1))` -/
def P2803336179916452674.Spec : Prop :=
  ∀ n, P2803336179916452674.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P5260352320148282101

`A010051(2*A298734(n+1))`
-/

namespace A336040.P5260352320148282101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A298734 (n + 1)).toNat

end

end A336040.P5260352320148282101

namespace A336040

/-- `A010051(2*A298734(n+1))` -/
def P5260352320148282101.Spec : Prop :=
  ∀ n, P5260352320148282101.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P15958749064885090119

`A113430(A090387(n+1)²)²`
-/

namespace A336040.P15958749064885090119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113430 (A090387 (n + 1) ^ 2).toNat ^ 2

end

end A336040.P15958749064885090119

namespace A336040

/-- `A113430(A090387(n+1)²)²` -/
def P15958749064885090119.Spec : Prop :=
  ∀ n, P15958749064885090119.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P10326459294679996703

`∏{d}[A054008(n+1), A054008(#)]`
-/

namespace A336040.P10326459294679996703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A054008 d

end

end A336040.P10326459294679996703

namespace A336040

/-- `∏{d}[A054008(n+1), A054008(#)]` -/
def P10326459294679996703.Spec : Prop :=
  ∀ n, P10326459294679996703.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P13985307244013894434

`2-A000122(A054008(n+1)²)`
-/

namespace A336040.P13985307244013894434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000122 (A054008 (n + 1) ^ 2).toNat

end

end A336040.P13985307244013894434

namespace A336040

/-- `2-A000122(A054008(n+1)²)` -/
def P13985307244013894434.Spec : Prop :=
  ∀ n, P13985307244013894434.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P15176977602609839073

`A000122(2*A054008(n+1)²)`
-/

namespace A336040.P15176977602609839073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (2 * A054008 (n + 1) ^ 2).toNat

end

end A336040.P15176977602609839073

namespace A336040

/-- `A000122(2*A054008(n+1)²)` -/
def P15176977602609839073.Spec : Prop :=
  ∀ n, P15176977602609839073.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P8104948603246428288

`A063524(n+2-A122377(n+1))`
-/

namespace A336040.P8104948603246428288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 ((n + 2 : ℤ) - A122377 (n + 1)).toNat

end

end A336040.P8104948603246428288

namespace A336040

/-- `A063524(n+2-A122377(n+1))` -/
def P8104948603246428288.Spec : Prop :=
  ∀ n, P8104948603246428288.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P11255505899717788129

`A063524((n+1)/A122377(n+1))`
-/

namespace A336040.P11255505899717788129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A122377 (n + 1) : ℚ))).toNat

end

end A336040.P11255505899717788129

namespace A336040

/-- `A063524((n+1)/A122377(n+1))` -/
def P11255505899717788129.Spec : Prop :=
  ∀ n, P11255505899717788129.a n = A336040 (n + 1)

end A336040

/-! ## A336040.P4589789542492381721

`C(A009191(n+1), A000005(n+1))`
-/

namespace A336040.P4589789542492381721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009191 (n + 1)).toNat (A000005 (n + 1)).toNat

end

end A336040.P4589789542492381721

namespace A336040

/-- `C(A009191(n+1), A000005(n+1))` -/
def P4589789542492381721.Spec : Prop :=
  ∀ n, (P4589789542492381721.a n : ℤ) = A336040 (n + 1)

end A336040

/-!
# A336041: Number of refactorable divisors of n.

The programs for A336041, the canonical program `A336041.P14047434541589637692` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336041 has offset 1).

The definition of A336041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336041.P9988712911646528798

`A000005(n+1)-A349658(n+1)`
-/

namespace A336041.P9988712911646528798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A349658 (n + 1)

end

end A336041.P9988712911646528798

namespace A336041

/-- `A000005(n+1)-A349658(n+1)` -/
def P9988712911646528798.Spec : Prop :=
  ∀ n, P9988712911646528798.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P14047434541589637692

`∑{d}[n+1, A336040(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336041

/-- `∑{d}[n+1, A336040(#)]` -/
def P14047434541589637692.Spec : Prop :=
  ∀ n, P14047434541589637692.a n = A336041 (n + 1)

theorem P14047434541589637692.correct : P14047434541589637692.Spec := by
  intro n
  simp only [A336041, Nat.add_sub_cancel]

end A336041

/-! ## A336041.P12859998602073689715

`Δ[A006218(n)]-A349658(n+1)`
-/

namespace A336041.P12859998602073689715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A349658 (n + 1)

end

end A336041.P12859998602073689715

namespace A336041

/-- `Δ[A006218(n)]-A349658(n+1)` -/
def P12859998602073689715.Spec : Prop :=
  ∀ n, P12859998602073689715.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P7655011295612789280

`∑{d}[n+1, A010051(2*A298734(#))]`
-/

namespace A336041.P7655011295612789280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (2 * A298734 d).toNat

end

end A336041.P7655011295612789280

namespace A336041

/-- `∑{d}[n+1, A010051(2*A298734(#))]` -/
def P7655011295612789280.Spec : Prop :=
  ∀ n, P7655011295612789280.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P7360712634430514046

`∑{d}[n+1, A112316(#%A000005(#))]`
-/

namespace A336041.P7360712634430514046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A112316 (Int.tmod (d : ℤ) (A000005 d)).toNat

end

end A336041.P7360712634430514046

namespace A336041

/-- `∑{d}[n+1, A112316(#%A000005(#))]` -/
def P7360712634430514046.Spec : Prop :=
  ∀ n, P7360712634430514046.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P16291455183405150897

`A087990(n+1)+A087991(n+1)-A349658(n+1)`
-/

namespace A336041.P16291455183405150897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087990 (n + 1) + (A087991 (n + 1) - A349658 (n + 1))

end

end A336041.P16291455183405150897

namespace A336041

/-- `A087990(n+1)+A087991(n+1)-A349658(n+1)` -/
def P16291455183405150897.Spec : Prop :=
  ∀ n, P16291455183405150897.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P17281821830309722933

`A000005(n+1)+A335182(n+1)-A349322(n+1)`
-/

namespace A336041.P17281821830309722933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A335182 (n + 1) - A349322 (n + 1))

end

end A336041.P17281821830309722933

namespace A336041

/-- `A000005(n+1)+A335182(n+1)-A349322(n+1)` -/
def P17281821830309722933.Spec : Prop :=
  ∀ n, P17281821830309722933.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P12588514648992342609

`A195150(n+1)+A195155(n+1)-A349658(n+1)`
-/

namespace A336041.P12588514648992342609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (n + 1) + (A195155 (n + 1) - A349658 (n + 1))

end

end A336041.P12588514648992342609

namespace A336041

/-- `A195150(n+1)+A195155(n+1)-A349658(n+1)` -/
def P12588514648992342609.Spec : Prop :=
  ∀ n, P12588514648992342609.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P2115957527929844480

`A353351(n+1)+A353352(n+1)-A349658(n+1)`
-/

namespace A336041.P2115957527929844480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353351 (n + 1) + (A353352 (n + 1) - A349658 (n + 1))

end

end A336041.P2115957527929844480

namespace A336041

/-- `A353351(n+1)+A353352(n+1)-A349658(n+1)` -/
def P2115957527929844480.Spec : Prop :=
  ∀ n, P2115957527929844480.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P9976816354966079775

`A353361(n+1)+A353362(n+1)-A349658(n+1)`
-/

namespace A336041.P9976816354966079775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (n + 1) + (A353362 (n + 1) - A349658 (n + 1))

end

end A336041.P9976816354966079775

namespace A336041

/-- `A353361(n+1)+A353362(n+1)-A349658(n+1)` -/
def P9976816354966079775.Spec : Prop :=
  ∀ n, P9976816354966079775.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P11766780956585618954

`A353371(n+1)+A353372(n+1)-A349658(n+1)`
-/

namespace A336041.P11766780956585618954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (n + 1) + (A353372 (n + 1) - A349658 (n + 1))

end

end A336041.P11766780956585618954

namespace A336041

/-- `A353371(n+1)+A353372(n+1)-A349658(n+1)` -/
def P11766780956585618954.Spec : Prop :=
  ∀ n, P11766780956585618954.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P6534020454538370802

`A353375(n+1)+A353376(n+1)-A349658(n+1)`
-/

namespace A336041.P6534020454538370802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353375 (n + 1) + (A353376 (n + 1) - A349658 (n + 1))

end

end A336041.P6534020454538370802

namespace A336041

/-- `A353375(n+1)+A353376(n+1)-A349658(n+1)` -/
def P6534020454538370802.Spec : Prop :=
  ∀ n, P6534020454538370802.a n = A336041 (n + 1)

end A336041

/-! ## A336041.P16989184818830941127

`∑{d}[n+1, A057427(#)]-A349658(n+1)`
-/

namespace A336041.P16989184818830941127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A349658 (n + 1)

end

end A336041.P16989184818830941127

namespace A336041

/-- `∑{d}[n+1, A057427(#)]-A349658(n+1)` -/
def P16989184818830941127.Spec : Prop :=
  ∀ n, P16989184818830941127.a n = A336041 (n + 1)

end A336041

/-!
# A336046: Expansion of e.g.f. Product_{k>0} (1 + tan(x)^k / k!).

The programs for A336046, there is no canonical definition to state claims against.
-/

/-! ## A336046.P10432151270296010041

`A102330(A321446(n))-A051731(n+1)`
-/

namespace A336046.P10432151270296010041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102330 (A321446 n).toNat - A051731 (n + 1)

end

end A336046.P10432151270296010041

/-! ## A336046.P11541117310379173020

`A192684(lt[A089738(n), A215644(n+2)])`
-/

namespace A336046.P11541117310379173020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089738 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215644 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192684 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336046.P11541117310379173020

/-! ## A336046.P4477644062007083489

`A192684(lt[A097777(n), A215644(n+2)])`
-/

namespace A336046.P4477644062007083489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215644 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192684 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A336046.P4477644062007083489

/-!
# A336059: Numbers p such that p, 2p-1, 3p-2, 4p-3 are primes.

The programs for A336059, there is no canonical definition to state claims against.
-/

/-! ## A336059.P11013872598911304865

`A237189(n+1)+1`
-/

namespace A336059.P11013872598911304865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237189 (n + 1) + 1

end

end A336059.P11013872598911304865

/-! ## A336059.P9094048478106885000

`or(1, A237189(4/2-(1-n)))`
-/

namespace A336059.P9094048478106885000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237189 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - (n : ℤ) : ℚ))).toNat)

end

end A336059.P9094048478106885000

/-! ## A336059.P17892892824067468732

`xor(1, A237189(1-(n-2*n)))`
-/

namespace A336059.P17892892824067468732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A237189 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat)

end

end A336059.P17892892824067468732

/-! ## A336059.P15500365654486641596

`2*A124409(n+1)+1`
-/

namespace A336059.P15500365654486641596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124409 (n + 1) + 1

end

end A336059.P15500365654486641596

/-! ## A336059.P2259667708445473780

`A124409(A000027(n+1))+A124409(n+1)+1`
-/

namespace A336059.P2259667708445473780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (A000027 (n + 1)).toNat + (A124409 (n + 1) + 1)

end

end A336059.P2259667708445473780

/-! ## A336059.P130715572161357036

`∩[A057326(n+1), A174734(n+1)]`
-/

namespace A336059.P130715572161357036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174734 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336059.P130715572161357036

/-! ## A336059.P1980221257663389108

`∩[A064238(n+1), A123998(n+1)]+1`
-/

namespace A336059.P1980221257663389108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A336059.P1980221257663389108

/-! ## A336059.P1326950093616796019

`∩[A057326(n+1), A088878(n+1)]`
-/

namespace A336059.P1326950093616796019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336059.P1326950093616796019

/-!
# A336060: Numbers p such that p, 2p-1, 3p-2, 4p-3, 5p-4, 6p-5, 7p-6, 8p-7 are primes.

The programs for A336060, there is no canonical definition to state claims against.
-/

/-! ## A336060.P11747473121347460223

`2*A105657(n+1)+3`
-/

namespace A336060.P11747473121347460223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105657 (n + 1) + 3

end

end A336060.P11747473121347460223

/-!
# A336061: Numerators of coefficients associated with the second virial coefficient for rigid spheres with imbedded point dipoles.

The programs for A336061, there is no canonical definition to state claims against.
-/

/-! ## A336061.P11818149658189005000

`A165725(A006134(n+1))`
-/

namespace A336061.P11818149658189005000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165725 (A006134 (n + 1)).toNat

end

end A336061.P11818149658189005000

/-! ## A336061.P17773743669552408301

`A214685(A054114(n)+1)`
-/

namespace A336061.P17773743669552408301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A054114 n + 1).toNat

end

end A336061.P17773743669552408301

/-! ## A336061.P8087412378483974869

`A214685(A066796(n+1)+1)`
-/

namespace A336061.P8087412378483974869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214685 (A066796 (n + 1) + 1).toNat

end

end A336061.P8087412378483974869

/-!
# A336063: Numbers divisible by the minimal exponent in their prime factorization (A051904).

The programs for A336063, the canonical program `A336063.P8617069619365825511` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336063 has offset 1).

The definition of A336063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336063.P8617069619365825511

`lt[A095683(2*A065091(n+1)), A136176(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A336063

/-- `lt[A095683(2*A065091(n+1)), A136176(n+1)]+1` -/
def P8617069619365825511.Spec : Prop :=
  ∀ n, (P8617069619365825511.a n : ℤ) = A336063 (n + 1)

theorem P8617069619365825511.correct : P8617069619365825511.Spec := by
  intro n
  simp only [A336063, Nat.add_sub_cancel]

end A336063

/-! ## A336063.P279468500719832972

`lt[A185284(A347438(n+1)²), A136176(n+1)]+1`
-/

namespace A336063.P279468500719832972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A347438 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P279468500719832972

namespace A336063

/-- `lt[A185284(A347438(n+1)²), A136176(n+1)]+1` -/
def P279468500719832972.Spec : Prop :=
  ∀ n, (P279468500719832972.a n : ℤ) = A336063 (n + 1)

end A336063

/-! ## A336063.P4852041629528547278

`lt[A095683(A088878(n+1)), A136176(n+1)]+1`
-/

namespace A336063.P4852041629528547278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (A088878 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P4852041629528547278

namespace A336063

/-- `lt[A095683(A088878(n+1)), A136176(n+1)]+1` -/
def P4852041629528547278.Spec : Prop :=
  ∀ n, (P4852041629528547278.a n : ℤ) = A336063 (n + 1)

end A336063

/-! ## A336063.P15183736483576467182

`lt[A095683(A265402(3*n+1)), A136176(n+1)]+1`
-/

namespace A336063.P15183736483576467182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095683 (A265402 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P15183736483576467182

namespace A336063

/-- `lt[A095683(A265402(3*n+1)), A136176(n+1)]+1` -/
def P15183736483576467182.Spec : Prop :=
  ∀ n, (P15183736483576467182.a n : ℤ) = A336063 (n + 1)

end A336063

/-! ## A336063.P6099452029922549597

`lt[A112765(A227080(n+1)), A136176(n+1)]+1`
-/

namespace A336063.P6099452029922549597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A227080 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P6099452029922549597

namespace A336063

/-- `lt[A112765(A227080(n+1)), A136176(n+1)]+1` -/
def P6099452029922549597.Spec : Prop :=
  ∀ n, (P6099452029922549597.a n : ℤ) = A336063 (n + 1)

end A336063

/-! ## A336063.P7425443002317613287

`lt[A185284(A158405(n+1)), A136176(n+1)]+1`
-/

namespace A336063.P7425443002317613287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A158405 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P7425443002317613287

namespace A336063

/-- `lt[A185284(A158405(n+1)), A136176(n+1)]+1` -/
def P7425443002317613287.Spec : Prop :=
  ∀ n, (P7425443002317613287.a n : ℤ) = A336063 (n + 1)

end A336063

/-! ## A336063.P183123281103989087

`lt[A083889(A014574(n+1)+1), A136176(n+1)]+1`
-/

namespace A336063.P183123281103989087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083889 (A014574 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P183123281103989087

namespace A336063

/-- `lt[A083889(A014574(n+1)+1), A136176(n+1)]+1` -/
def P183123281103989087.Spec : Prop :=
  ∀ n, (P183123281103989087.a n : ℤ) = A336063 (n + 1)

end A336063

/-! ## A336063.P10001795743679206938

`lt[A185284(A200524(3*n+2)), A136176(n+1)]+1`
-/

namespace A336063.P10001795743679206938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A200524 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P10001795743679206938

namespace A336063

/-- `lt[A185284(A200524(3*n+2)), A136176(n+1)]+1` -/
def P10001795743679206938.Spec : Prop :=
  ∀ n, (P10001795743679206938.a n : ℤ) = A336063 (n + 1)

end A336063

/-! ## A336063.P12737140769634245087

`lt[A185284(A284593(2*(n+1))), A136176(n+1)]+1`
-/

namespace A336063.P12737140769634245087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A284593 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A336063.P12737140769634245087

namespace A336063

/-- `lt[A185284(A284593(2*(n+1))), A136176(n+1)]+1` -/
def P12737140769634245087.Spec : Prop :=
  ∀ n, (P12737140769634245087.a n : ℤ) = A336063 (n + 1)

end A336063

/-!
# A336064: Numbers divisible by the maximal exponent in their prime factorization (A051903).

The programs for A336064, the canonical program `A336064.P590029213044749374` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336064 has offset 1).

The definition of A336064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336064.P590029213044749374

`eq[n+1, lcm(n+1, A051903(n+1))]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336064

/-- `eq[n+1, lcm(n+1, A051903(n+1))]+1` -/
def P590029213044749374.Spec : Prop :=
  ∀ n, (P590029213044749374.a n : ℤ) = A336064 (n + 1)

theorem P590029213044749374.correct : P590029213044749374.Spec := by
  intro n
  simp only [A336064, Nat.add_sub_cancel]

end A336064

/-! ## A336064.P16747850961197216784

`∪[A144338(n+1), A144976(n+1)]`
-/

namespace A336064.P16747850961197216784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A336064.P16747850961197216784

namespace A336064

/-- `∪[A144338(n+1), A144976(n+1)]` -/
def P16747850961197216784.Spec : Prop :=
  ∀ n, (P16747850961197216784.a n : ℤ) = A336064 (n + 1)

end A336064

/-! ## A336064.P9322120340516790277

`lt[A010894(n), A132429(A072070(n))]`
-/

namespace A336064.P9322120340516790277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132429 (A072070 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336064.P9322120340516790277

namespace A336064

/-- `lt[A010894(n), A132429(A072070(n))]` -/
def P9322120340516790277.Spec : Prop :=
  ∀ n, (P9322120340516790277.a n : ℤ) = A336064 (n + 1)

end A336064

/-! ## A336064.P282102069819548836

`lt[A010894(n), A136176(A028310(n))²]`
-/

namespace A336064.P282102069819548836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A028310 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336064.P282102069819548836

namespace A336064

/-- `lt[A010894(n), A136176(A028310(n))²]` -/
def P282102069819548836.Spec : Prop :=
  ∀ n, (P282102069819548836.a n : ℤ) = A336064 (n + 1)

end A336064

/-! ## A336064.P14307090422024839308

`lt[A010894(n), A136176(A028310(n))]`
-/

namespace A336064.P14307090422024839308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336064.P14307090422024839308

namespace A336064

/-- `lt[A010894(n), A136176(A028310(n))]` -/
def P14307090422024839308.Spec : Prop :=
  ∀ n, (P14307090422024839308.a n : ℤ) = A336064 (n + 1)

end A336064

/-!
# A336066: Numbers k such that the exponent of the highest power of 2 dividing k (A007814) is a divisor of k.

The programs for A336066, there is no canonical definition to state claims against.
-/

/-! ## A336066.P12681581769358078537

`∩[A122080(n+1), A336064(n+1)]`
-/

namespace A336066.P12681581769358078537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336066.P12681581769358078537

/-! ## A336066.P2210445435601958467

`∩[A336064(n+1), A390445(n+1)]`
-/

namespace A336066.P2210445435601958467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336066.P2210445435601958467

/-! ## A336066.P16443876048835083408

`∩[A105360(n+1), A336064(n+1)]`
-/

namespace A336066.P16443876048835083408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336066.P16443876048835083408

/-! ## A336066.P1410439362371417859

`∩[A336064(n+1), A000196(A033954(n))]`
-/

namespace A336066.P1410439362371417859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033954 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336066.P1410439362371417859

/-! ## A336066.P6539487962902622312

`∩[A084564(n+1), A336064(n+1)]`
-/

namespace A336066.P6539487962902622312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A336066.P6539487962902622312

/-!
# A336068: Numbers k such that the exponent of the highest power of 3 dividing k (A007949) is a divisor of k.

The programs for A336068, the canonical program `A336068.P10652948388313036667` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A336068 has offset 1).

The definition of A336068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A336068.P10652948388313036667

`eq[n+1, lcm(n+1, A007949(n+1))]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A336068

/-- `eq[n+1, lcm(n+1, A007949(n+1))]+1` -/
def P10652948388313036667.Spec : Prop :=
  ∀ n, (P10652948388313036667.a n : ℤ) = A336068 (n + 1)

theorem P10652948388313036667.correct : P10652948388313036667.Spec := by
  intro n
  simp only [A336068, Nat.add_sub_cancel]

end A336068

/-! ## A336068.P10799149546051775492

`A008486(∪[A032559(n+4), A057354(3*n+4)])`
-/

namespace A336068.P10799149546051775492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A336068.P10799149546051775492

namespace A336068

/-- `A008486(∪[A032559(n+4), A057354(3*n+4)])` -/
def P10799149546051775492.Spec : Prop :=
  ∀ n, P10799149546051775492.a n = A336068 (n + 1)

end A336068

/-! ## A336068.P7275223088882730647

`3*A172471(∑[A114904(n+1)])`
-/

namespace A336068.P7275223088882730647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A336068.P7275223088882730647

namespace A336068

/-- `3*A172471(∑[A114904(n+1)])` -/
def P7275223088882730647.Spec : Prop :=
  ∀ n, P7275223088882730647.a n = A336068 (n + 1)

end A336068

/-! ## A336068.P2390230950357639739

`lt[A178623(A261029(n)), A137457(n)]`
-/

namespace A336068.P2390230950357639739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178623 (A261029 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137457 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336068.P2390230950357639739

namespace A336068

/-- `lt[A178623(A261029(n)), A137457(n)]` -/
def P2390230950357639739.Spec : Prop :=
  ∀ n, (P2390230950357639739.a n : ℤ) = A336068 (n + 1)

end A336068

/-! ## A336068.P254442069775855219

`lt[A005928(n+1), A005928(A245474(n)²)]`
-/

namespace A336068.P254442069775855219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A245474 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A336068.P254442069775855219

namespace A336068

/-- `lt[A005928(n+1), A005928(A245474(n)²)]` -/
def P254442069775855219.Spec : Prop :=
  ∀ n, (P254442069775855219.a n : ℤ) = A336068 (n + 1)

end A336068

/-!
# A336070: Number of inversion sequences avoiding the vincular pattern 10-0 (or 10-1).

The programs for A336070, there is no canonical definition to state claims against.
-/

/-! ## A336070.P8385633995443718368

`∑[A369476(abs(1-n))]`
-/

namespace A336070.P8385633995443718368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369476 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336070.P8385633995443718368

/-! ## A336070.P7141071683326032977

`A125273(n)+A004198(A039648(n))`
-/

namespace A336070.P7141071683326032977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125273 n + A004198 (A039648 n).toNat

end

end A336070.P7141071683326032977

/-! ## A336070.P11364300211565230558

`A125273(n)+A004198(A040027(n))`
-/

namespace A336070.P11364300211565230558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125273 n + A004198 (A040027 n).toNat

end

end A336070.P11364300211565230558

/-! ## A336070.P12225871544057169902

`A358470(A157210(n))+A132427(n²)`
-/

namespace A336070.P12225871544057169902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358470 (A157210 n).toNat + A132427 (n ^ 2)

end

end A336070.P12225871544057169902

/-!
# A336071: Number of inversion sequences avoiding the vincular pattern 1-01 (or 1-10).

The programs for A336071, there is no canonical definition to state claims against.
-/

/-! ## A336071.P6721260930450065201

`A200403(n+1)-A256812((n+1)*Δ[n^3])`
-/

namespace A336071.P6721260930450065201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200403 (n + 1) - A256812 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A336071.P6721260930450065201

/-! ## A336071.P2852316811777205946

`A350899(A157003(n))+A200405(n+1)`
-/

namespace A336071.P2852316811777205946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350899 (A157003 n).toNat + A200405 (n + 1)

end

end A336071.P2852316811777205946

/-!
# A336072: Number of inversion sequences avoiding the vincular pattern 2-01 (or 2-10).

The programs for A336072, there is no canonical definition to state claims against.
-/

/-! ## A336072.P2513673483243368640

`A193938(n+1)+A133430(A090339(n))`
-/

namespace A336072.P2513673483243368640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193938 (n + 1) + A133430 (A090339 n).toNat

end

end A336072.P2513673483243368640

/-! ## A336072.P145657162626571277

`A298432(n+1)+A209899(A303172(n))`
-/

namespace A336072.P145657162626571277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298432 (n + 1) + A209899 (A303172 n).toNat

end

end A336072.P145657162626571277

/-! ## A336072.P17000757542681294757

`A028310(A338866(n+1)+A298432(n+1))`
-/

namespace A336072.P17000757542681294757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A338866 (n + 1) + A298432 (n + 1)).toNat

end

end A336072.P17000757542681294757

/-!
# A336087: Triangle read by rows: T(n, k) is the number of forests with n (unlabeled) nodes and k planted trees.

The programs for A336087, there is no canonical definition to state claims against.
-/

/-! ## A336087.P16942749933038740705

`A000120(A000055(n)%A176088(n))`
-/

namespace A336087.P16942749933038740705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A000055 n) (A176088 n)).toNat

end

end A336087.P16942749933038740705

/-! ## A336087.P13200512385926035494

`A165566(A038426(n))%A026807(n+1)`
-/

namespace A336087.P13200512385926035494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165566 (A038426 n).toNat) (A026807 (n + 1))

end

end A336087.P13200512385926035494

/-! ## A336087.P15757899780494836818

`A179030(A000032(n))%A179045(n+1)`
-/

namespace A336087.P15757899780494836818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179030 (A000032 n).toNat) (A179045 (n + 1))

end

end A336087.P15757899780494836818

/-! ## A336087.P7708837377232688448

`A131550(n+1)²%A066633(n+1)`
-/

namespace A336087.P7708837377232688448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131550 (n + 1) ^ 2) (A066633 (n + 1))

end

end A336087.P7708837377232688448

/-! ## A336087.P14751370914389197680

`∑[A193888(n+1)]%A346873(n+1)`
-/

namespace A336087.P14751370914389197680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A346873 (n + 1))

end

end A336087.P14751370914389197680

/-!
# A336090: Number of k's, 1 <= k <= n, such that the continued fraction for n^2/k^2 has twice as many elements as the continued fraction for n/k.

The programs for A336090, there is no canonical definition to state claims against.
-/

/-! ## A336090.P16768722877871178947

`∑{d}[n+1, A336344(#)]`
-/

namespace A336090.P16768722877871178947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336344 d

end

end A336090.P16768722877871178947

/-! ## A336090.P14694227245051461367

`A066207(A003000(n))%A131333(n+1)`
-/

namespace A336090.P14694227245051461367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066207 (A003000 n).toNat) (A131333 (n + 1))

end

end A336090.P14694227245051461367

/-! ## A336090.P10149824083635164020

`A167788(n+1)%A358371(A266101(n+1))`
-/

namespace A336090.P10149824083635164020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167788 (n + 1)) (A358371 (A266101 (n + 1)).toNat)

end

end A336090.P10149824083635164020

/-! ## A336090.P11190614398570561520

`A321043(A321000(2*(n+1)))%A321029(n+1)`
-/

namespace A336090.P11190614398570561520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321043 (A321000 (2 * (n + 1))).toNat) (A321029 (n + 1))

end

end A336090.P11190614398570561520

/-! ## A336090.P10620739229128802571

`A037813(xor(A083172(2*(n+1)), A112927(n+1))+1)`
-/

namespace A336090.P10620739229128802571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (Int.xor (A083172 (2 * (n + 1))) (A112927 (n + 1)) + 1).toNat

end

end A336090.P10620739229128802571

/-!
# A336091: Number of ordered ways of writing the n-th n-gonal pyramidal number as a sum of n n-gonal pyramidal numbers (with 0's allowed).

The programs for A336091, there is no canonical definition to state claims against.
-/

/-! ## A336091.P745093815965511834

`A238110(A333375(n))`
-/

namespace A336091.P745093815965511834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238110 (A333375 n).toNat

end

end A336091.P745093815965511834

/-! ## A336091.P8886219058288167196

`A360068(A098011(n+2))+n`
-/

namespace A336091.P8886219058288167196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360068 (A098011 (n + 2)).toNat + (n : ℤ)

end

end A336091.P8886219058288167196

/-! ## A336091.P13788187803483800493

`A339628(A136122(n)-1)+n`
-/

namespace A336091.P13788187803483800493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339628 (A136122 n - 1).toNat + (n : ℤ)

end

end A336091.P13788187803483800493

/-!
# A336093: Let P(n) = primorial(n) = A002110(n); a(n) is the number of primes q < P(n) such that P(n) - q is also prime and q^2==1 (mod P(n)).

The programs for A336093, there is no canonical definition to state claims against.
-/

/-! ## A336093.P17580902804054232518

`A000124(n)-A195916(A017929(n))`
-/

namespace A336093.P17580902804054232518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A195916 (A017929 n).toNat

end

end A336093.P17580902804054232518

/-! ## A336093.P12600507176274763358

`A112621(A259792(n))*A134735(2*(n+1))`
-/

namespace A336093.P12600507176274763358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112621 (A259792 n).toNat * A134735 (2 * (n + 1))

end

end A336093.P12600507176274763358

/-!
# A336094: Digit of Pi multiplied by the next digit of Pi.

The programs for A336094, there is no canonical definition to state claims against.
-/

/-! ## A336094.P13041548243810628610

`Δ[A046974(n)]*A000796(n)`
-/

namespace A336094.P13041548243810628610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000796 (n + 1)

end

end A336094.P13041548243810628610

/-! ## A336094.P12153603028477808476

`A000796(n+1)*A000796(n)`
-/

namespace A336094.P12153603028477808476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1 + 1) * A000796 (n + 1)

end

end A336094.P12153603028477808476

/-! ## A336094.P16530382877120880338

`Δ[A046974(n)]*Δ[A059582(n)]`
-/

namespace A336094.P16530382877120880338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A336094.P16530382877120880338

/-! ## A336094.P15214191027750869082

`(9-A030644(n))*Δ[A046974(n)]`
-/

namespace A336094.P15214191027750869082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1)) * (f1 (n + 1) - f1 n)

end

end A336094.P15214191027750869082

/-! ## A336094.P12086666469146326346

`Δ[A046974(n)]*A001355(Δ[n²])`
-/

namespace A336094.P12086666469146326346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A336094.P12086666469146326346

/-! ## A336094.P16844899437493115140

`Δ[A046974(n)]*A110766(Δ[n²])`
-/

namespace A336094.P16844899437493115140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A110766 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A336094.P16844899437493115140

/-! ## A336094.P5264738928986031911

`(A123152(n+1)-1)*Δ[A046974(n)]`
-/

namespace A336094.P5264738928986031911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123152 (n + 1) - 1) * (f1 (n + 1) - f1 n)

end

end A336094.P5264738928986031911

/-! ## A336094.P5853072116188703372

`(A123152(n+2)-1)*A001355(2*n+1)`
-/

namespace A336094.P5853072116188703372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123152 (n + 2) - 1) * A001355 (2 * n + 1)

end

end A336094.P5853072116188703372

/-! ## A336094.P3324230370545237944

`A001355(2*n+1)*A001355(2*n+3)`
-/

namespace A336094.P3324230370545237944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) * A001355 (2 * n + 3)

end

end A336094.P3324230370545237944

/-! ## A336094.P17263446752816325025

`A110766(2*n+1)*A110766(2*n+3)`
-/

namespace A336094.P17263446752816325025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) * A110766 (2 * n + 3)

end

end A336094.P17263446752816325025

/-!
# A336095: a(n) = a(f(n)) + a(n-f(n)) with a(1) = a(2) = 1 (f = A000006).

The programs for A336095, there is no canonical definition to state claims against.
-/

/-! ## A336095.P13555230893984533445

`∑[A254651(A024431(n*A254651(n)))]`
-/

namespace A336095.P13555230893984533445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (A024431 ((n : ℤ) * A254651 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336095.P13555230893984533445

/-! ## A336095.P1839185932398246356

`∑[A254651(A024431(n))]`
-/

namespace A336095.P1839185932398246356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (A024431 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336095.P1839185932398246356

/-! ## A336095.P13140408488530707599

`A325400(a(n-1))+A254651(A024431(n))` with `a(0)=1`
-/

namespace A336095.P13140408488530707599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A325400 (a (n - 1)).toNat + A254651 (A024431 n).toNat

end

end A336095.P13140408488530707599

/-! ## A336095.P16963137587155697882

`∑[or(A010059(n+1), A316533(n+5))]`
-/

namespace A336095.P16963137587155697882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 (n + 1)) (A316533 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336095.P16963137587155697882

/-! ## A336095.P342782440322816986

`∑[A011655(A008277(n+1)*A046117(n+1)+2)]`
-/

namespace A336095.P342782440322816986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A008277 (n + 1) * A046117 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A336095.P342782440322816986

/-!
# A336097: E.g.f.: Product_{k>=1} (1 - (1 - exp(x))^k).

The programs for A336097, there is no canonical definition to state claims against.
-/

/-! ## A336097.P3334130323062854384

`A346476(A001118(n)+A000079(n))`
-/

namespace A336097.P3334130323062854384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346476 (A001118 n + A000079 n).toNat

end

end A336097.P3334130323062854384

/-! ## A336097.P6185371776616466002

`2-(A058305(A000302(n))+A001118(n))`
-/

namespace A336097.P6185371776616466002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A058305 (A000302 n).toNat + A001118 n)

end

end A336097.P6185371776616466002

/-! ## A336097.P3065188019042147605

`2-A000918(n+1)-(A023443(A001118(n))-A000918(n))`
-/

namespace A336097.P3065188019042147605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000918 (n + 1) - (A023443 (A001118 n).toNat - A000918 n)

end

end A336097.P3065188019042147605

/-!
# A336099: Number of solutions of the equation k = n*sopf(k) in positive integers where sopf(k) is the sum of distinct prime factors of k.

The programs for A336099, there is no canonical definition to state claims against.
-/

/-! ## A336099.P3775392532628273214

`A008619(A028920(n)-A331671(A067298(n)))`
-/

namespace A336099.P3775392532628273214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A028920 n - A331671 (A067298 n).toNat).toNat

end

end A336099.P3775392532628273214

/-! ## A336099.P14336799040197616199

`gcd(∑[A318157(n+2)], A318166(n+2))`
-/

namespace A336099.P14336799040197616199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318157 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A318166 (n + 2))

end

end A336099.P14336799040197616199

/-! ## A336099.P8170660869212783390

`A097747(A223453(n+1)%A020639(n+2))`
-/

namespace A336099.P8170660869212783390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097747 (Int.tmod (A223453 (n + 1)) (A020639 (n + 2))).toNat

end

end A336099.P8170660869212783390

/-! ## A336099.P10300670356249389729

`A001222(A166651(A328169(A319525(n+2))))`
-/

namespace A336099.P10300670356249389729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A166651 (A328169 (A319525 (n + 2)).toNat).toNat).toNat

end

end A336099.P10300670356249389729

/-! ## A336099.P3390402270108432619

`gcd(A000166(n)+4, A153694(n+1))`
-/

namespace A336099.P3390402270108432619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000166 n + 4) (A153694 (n + 1))

end

end A336099.P3390402270108432619

