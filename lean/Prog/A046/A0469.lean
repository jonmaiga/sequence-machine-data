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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A046901: a(n) = a(n-1) - n if a(n-1) > n, else a(n) = a(n-1) + n.

The programs for A046901, the canonical program `A046901.P15262064477382565449` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046901 has offset 1).

The definition of A046901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008343, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046901.P15262064477382565449

`A008343(n+2)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046901

/-- `A008343(n+2)+1` -/
def P15262064477382565449.Spec : Prop :=
  ∀ n, P15262064477382565449.a n = A046901 (n + 1)

theorem P15262064477382565449.correct : P15262064477382565449.Spec := by
  intro n
  simp only [A046901, Nat.add_sub_cancel]

end A046901

/-! ## A046901.P8572477640996351728

`(a(n-1)+n)%(2*(n+1))+1` with `a(0)=1`
-/

namespace A046901.P8572477640996351728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + n) % (2 * (n + 1)) + 1

end

end A046901.P8572477640996351728

namespace A046901

/-- `(a(n-1)+n)%(2*(n+1))+1` -/
def P8572477640996351728.Spec : Prop :=
  ∀ n, (P8572477640996351728.a n : ℤ) = A046901 (n + 1)

end A046901

/-! ## A046901.P277563320964643829

`a(n-1)-Δ[(a(n-1)-n)%(2*n)]` with `a(0)=1`
-/

namespace A046901.P277563320964643829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.tmod (f1 (n - 1) - (n : ℤ)) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A046901.P277563320964643829

namespace A046901

/-- `a(n-1)-Δ[(a(n-1)-n)%(2*n)]` -/
def P277563320964643829.Spec : Prop :=
  ∀ n, P277563320964643829.a n = A046901 (n + 1)

end A046901

/-! ## A046901.P12395634707479178780

`A008611(A008343(Δ[A045943(n)]))`
-/

namespace A046901.P12395634707479178780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008343 (f1 (n + 1) - f1 n).toNat).toNat

end

end A046901.P12395634707479178780

namespace A046901

/-- `A008611(A008343(Δ[A045943(n)]))` -/
def P12395634707479178780.Spec : Prop :=
  ∀ n, P12395634707479178780.a n = A046901 (n + 1)

end A046901

/-! ## A046901.P917087895329259538

`A256243((n+1)²-(a(n-1)+a(n-1))+1)` with `a(0)=1`
-/

namespace A046901.P917087895329259538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A256243 (((n + 1) ^ 2 : ℤ) - (a (n - 1) + a (n - 1)) + 1).toNat

end

end A046901.P917087895329259538

namespace A046901

/-- `A256243((n+1)²-(a(n-1)+a(n-1))+1)` -/
def P917087895329259538.Spec : Prop :=
  ∀ n, P917087895329259538.a n = A046901 (n + 1)

end A046901

/-! ## A046901.P2634467275978027685

`A074294(a(n-1)+(n+1)²)` with `a(0)=1`
-/

namespace A046901.P2634467275978027685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074294 (a (n - 1) + ((n + 1) ^ 2 : ℤ)).toNat

end

end A046901.P2634467275978027685

namespace A046901

/-- `A074294(a(n-1)+(n+1)²)` -/
def P2634467275978027685.Spec : Prop :=
  ∀ n, P2634467275978027685.a n = A046901 (n + 1)

end A046901

/-! ## A046901.P6453165497378778813

`A002260(A047838(2*(n+1))+a(n-1)+1)` with `a(0)=1`
-/

namespace A046901.P6453165497378778813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002260 (A047838 (2 * (n + 1)) + a (n - 1) + 1).toNat

end

end A046901.P6453165497378778813

namespace A046901

/-- `A002260(A047838(2*(n+1))+a(n-1)+1)` -/
def P6453165497378778813.Spec : Prop :=
  ∀ n, P6453165497378778813.a n = A046901 (n + 1)

end A046901

/-!
# A046902: Clark's triangle: left border = 0 1 1 1..., right border = multiples of 6; other entries = sum of 2 entries above.

The programs for A046902, the canonical program `A046902.P13185243045177966618` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046902 has offset 0).

The definition of A046902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046902.P13185243045177966618

`A096956(A007401(n+1))-A097805(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A046902

/-- `A096956(A007401(n+1))-A097805(n)` -/
def P13185243045177966618.Spec : Prop :=
  ∀ n, P13185243045177966618.a n = A046902 n

theorem P13185243045177966618.correct : P13185243045177966618.Spec := by
  intro n
  simp only [A046902]

end A046902

/-! ## A046902.P11468302537983594594

`A090850(A061579(n))`
-/

namespace A046902.P11468302537983594594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (A061579 n).toNat

end

end A046902.P11468302537983594594

namespace A046902

/-- `A090850(A061579(n))` -/
def P11468302537983594594.Spec : Prop :=
  ∀ n, P11468302537983594594.a n = A046902 n

end A046902

/-! ## A046902.P10760191202922362556

`A090850(A114327(n)+n)`
-/

namespace A046902.P10760191202922362556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (A114327 n + (n : ℤ)).toNat

end

end A046902.P10760191202922362556

namespace A046902

/-- `A090850(A114327(n)+n)` -/
def P10760191202922362556.Spec : Prop :=
  ∀ n, P10760191202922362556.a n = A046902 n

end A046902

/-! ## A046902.P10694596121757063166

`A090850(A038722(n+1)-1)`
-/

namespace A046902.P10694596121757063166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (A038722 (n + 1) - 1).toNat

end

end A046902.P10694596121757063166

namespace A046902

/-- `A090850(A038722(n+1)-1)` -/
def P10694596121757063166.Spec : Prop :=
  ∀ n, P10694596121757063166.a n = A046902 n

end A046902

/-! ## A046902.P8124535805204452625

`A090850(A093995(n+1)-(n+1))`
-/

namespace A046902.P8124535805204452625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A046902.P8124535805204452625

namespace A046902

/-- `A090850(A093995(n+1)-(n+1))` -/
def P8124535805204452625.Spec : Prop :=
  ∀ n, P8124535805204452625.a n = A046902 n

end A046902

/-! ## A046902.P732997228669808150

`A090850(A002378(n)%A014132(n+1))`
-/

namespace A046902.P732997228669808150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A046902.P732997228669808150

namespace A046902

/-- `A090850(A002378(n)%A014132(n+1))` -/
def P732997228669808150.Spec : Prop :=
  ∀ n, P732997228669808150.a n = A046902 n

end A046902

/-!
# A046903: Largest odd number that can be represented in no more than n ways as p + 2*i^2 where p is 1 or a prime and i >= 0.

The programs for A046903, there is no canonical definition to state claims against.
-/

/-! ## A046903.P125855820742828078

`A007947(A055108(n-floor(n/∏{p}[n+1, #])))`
-/

namespace A046903.P125855820742828078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A055108 ((n : ℤ) - ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋).toNat).toNat

end

end A046903.P125855820742828078

/-!
# A046904: Number of isomorphism classes of posets with n points with property that there is no nonsingleton proper subset T for which x not in T implies xT or x incomparable with every element of T.

The programs for A046904, there is no canonical definition to state claims against.
-/

/-! ## A046904.P7192490138176118370

`A354693(floor(acot(n)+n))`
-/

namespace A046904.P7192490138176118370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354693 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A046904.P7192490138176118370

/-! ## A046904.P3408095567728084581

`A354693(char[2*n²]+n)`
-/

namespace A046904.P3408095567728084581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354693 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A046904.P3408095567728084581

/-! ## A046904.P17402065018630893410

`A025826(A094539(n))`
-/

namespace A046904.P17402065018630893410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 (A094539 n).toNat

end

end A046904.P17402065018630893410

/-! ## A046904.P14093355276772524751

`A033461(A289438(2*(n+1))+A023871(n))`
-/

namespace A046904.P14093355276772524751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A289438 (2 * (n + 1)) + A023871 n).toNat

end

end A046904.P14093355276772524751

/-!
# A046905: Number of posets with n points with property that there is no nonsingleton proper subset T for which x not in T implies xT or x incomparable with every element of T.

The programs for A046905, there is no canonical definition to state claims against.
-/

/-! ## A046905.P15018779928982566743

`A339059(n*∑[and(n, -2)])`
-/

namespace A046905.P15018779928982566743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A046905.P15018779928982566743

/-! ## A046905.P10306037925676414293

`A339059(n*floor(n²/2))`
-/

namespace A046905.P10306037925676414293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 ((n : ℤ) * ⌊(n ^ 2 : ℚ) / 2⌋).toNat

end

end A046905.P10306037925676414293

/-!
# A046906: Number of connected irreducible posets with n labeled points.

The programs for A046906, there is no canonical definition to state claims against.
-/

/-! ## A046906.P16748615742113428860

`A001927(n)+A046908(n)-A001035(n)`
-/

namespace A046906.P16748615742113428860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001927 n + (A046908 n - A001035 n)

end

end A046906.P16748615742113428860

/-! ## A046906.P6675081776468452895

`A141767(a(n-1)-xor(-1, a(n-2))+1)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A046906.P6675081776468452895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  A141767 (a (n - 1) - Int.xor (-1) (a (n - 2)) + 1).toNat

end

end A046906.P6675081776468452895

/-!
# A046907: Number of isomorphism classes of irreducible posets with n labeled points.

The programs for A046907, there is no canonical definition to state claims against.
-/

/-! ## A046907.P13230641738098834325

`A063272(comp[or(7, n)]!)`
-/

namespace A046907.P13230641738098834325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A046907.P13230641738098834325

/-! ## A046907.P15514840380056876046

`A036372(A041101(n))`
-/

namespace A046907.P15514840380056876046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036372 (A041101 n).toNat

end

end A046907.P15514840380056876046

/-! ## A046907.P13310267486554265569

`A036372(A041809(n))`
-/

namespace A046907.P13310267486554265569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036372 (A041809 n).toNat

end

end A046907.P13310267486554265569

/-!
# A046908: Number of irreducible posets with n labeled points.

The programs for A046908, there is no canonical definition to state claims against.
-/

/-! ## A046908.P456616325197889618

`A001035(n)+A046906(n)-A001927(n)`
-/

namespace A046908.P456616325197889618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001035 n + (A046906 n - A001927 n)

end

end A046908.P456616325197889618

/-! ## A046908.P10164735504842913923

`A354615(∑[round(acot(n)+n)]-2)`
-/

namespace A046908.P10164735504842913923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354615 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A046908.P10164735504842913923

/-! ## A046908.P1927293977403225427

`A354615(ceil((n²+n)*cot(atan(2))))`
-/

namespace A046908.P1927293977403225427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354615 ⌈(n ^ 2 + n : ℝ) * Real.cot (Real.arctan (2 : ℝ))⌉.toNat

end

end A046908.P1927293977403225427

/-! ## A046908.P4106352694476556591

`A354615(A133263(n)-1)`
-/

namespace A046908.P4106352694476556591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354615 (A133263 n - 1).toNat

end

end A046908.P4106352694476556591

/-! ## A046908.P17918236463920843359

`or(1, A354615(A000124(n)))`
-/

namespace A046908.P17918236463920843359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A354615 (A000124 n).toNat)

end

end A046908.P17918236463920843359

/-!
# A046909: Number of isomorphism classes of connected irreducible quasiorders with n labeled points.

The programs for A046909, there is no canonical definition to state claims against.
-/

/-! ## A046909.P14904707485872057717

`A060384(∏[∏[A210545(n+1)]])`
-/

namespace A046909.P14904707485872057717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046909.P14904707485872057717

/-! ## A046909.P1034543609054321256

`ceil(A104759(n+1)/A116460(2*n+3))`
-/

namespace A046909.P1034543609054321256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104759 (n + 1) : ℚ) / (A116460 (2 * n + 3) : ℚ)⌉

end

end A046909.P1034543609054321256

/-! ## A046909.P4970197682179569361

`A341098(A026632(n)-A094424(n+1))`
-/

namespace A046909.P4970197682179569361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341098 ((A026632 n - A094424 (n + 1)).toNat + 72)

end

end A046909.P4970197682179569361

/-! ## A046909.P4751507801811125835

`A001928(n)+A046911(n)-A001930(n)`
-/

namespace A046909.P4751507801811125835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001928 n + (A046911 n - A001930 n)

end

end A046909.P4751507801811125835

/-!
# A046910: Number of connected irreducible quasiorders with n labeled points.

The programs for A046910, there is no canonical definition to state claims against.
-/

/-! ## A046910.P1173835630207958208

`A001929(n)+A046912(n)-A000798(n)`
-/

namespace A046910.P1173835630207958208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001929 n + (A046912 n - A000798 n)

end

end A046910.P1173835630207958208

/-! ## A046910.P1751342141861804448

`A005408(A281780(n))`
-/

namespace A046910.P1751342141861804448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A281780 n).toNat

end

end A046910.P1751342141861804448

/-!
# A046911: Number of isomorphism classes of irreducible quasiorders with n labeled points.

The programs for A046911, there is no canonical definition to state claims against.
-/

/-! ## A046911.P15871941252636747987

`A001930(n)+A046909(n)-A001928(n)`
-/

namespace A046911.P15871941252636747987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001930 n + (A046909 n - A001928 n)

end

end A046911.P15871941252636747987

/-! ## A046911.P650906234235059287

`A328399(A080907(n!))`
-/

namespace A046911.P650906234235059287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A080907 (Nat.factorial n)).toNat

end

end A046911.P650906234235059287

/-! ## A046911.P12060162611648626954

`A241827(A330145(2*n)+n)`
-/

namespace A046911.P12060162611648626954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (A330145 (2 * n) + (n : ℤ)).toNat

end

end A046911.P12060162611648626954

/-!
# A046912: Number of irreducible quasiorders with n labeled points.

The programs for A046912, there is no canonical definition to state claims against.
-/

/-! ## A046912.P4362017590755228174

`abs(record[Δ[A335987(n)]])`
-/

namespace A046912.P4362017590755228174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335987 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A046912.P4362017590755228174

/-! ## A046912.P2182072072642100877

`A335987(A133263(n)-1)`
-/

namespace A046912.P2182072072642100877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335987 (A133263 n - 1).toNat

end

end A046912.P2182072072642100877

/-! ## A046912.P15769824902011053968

`A335987(eq[1, A131689(n)])`
-/

namespace A046912.P15769824902011053968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046912.P15769824902011053968

/-! ## A046912.P5983253745748225239

`A335987(A057427(n)+A000217(n))`
-/

namespace A046912.P5983253745748225239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335987 (A057427 n + A000217 n).toNat

end

end A046912.P5983253745748225239

/-! ## A046912.P16488520885758127116

`A335987(A000124(n)%A290575(n))`
-/

namespace A046912.P16488520885758127116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335987 (Int.tmod (A000124 n) (A290575 n)).toNat

end

end A046912.P16488520885758127116

/-!
# A046913: Sum of divisors of n not congruent to 0 mod 3.

The programs for A046913, the canonical program `A046913.P11129583654018100697` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046913 has offset 1).

The definition of A046913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046913.P11129583654018100697

`∑{d}[n+1, #%lcm(3, #)]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046913

/-- `∑{d}[n+1, #%lcm(3, #)]` -/
def P11129583654018100697.Spec : Prop :=
  ∀ n, (P11129583654018100697.a n : ℤ) = A046913 (n + 1)

theorem P11129583654018100697.correct : P11129583654018100697.Spec := by
  intro n
  simp only [A046913, Nat.add_sub_cancel]

end A046913

/-! ## A046913.P4927709440309818163

`∑{d}[n+1, #*#²%3]`
-/

namespace A046913.P4927709440309818163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d * (d ^ 2 % 3)

end

end A046913.P4927709440309818163

namespace A046913

/-- `∑{d}[n+1, #*#²%3]` -/
def P4927709440309818163.Spec : Prop :=
  ∀ n, (P4927709440309818163.a n : ℤ) = A046913 (n + 1)

end A046913

/-! ## A046913.P6109094946899784210

`∑{d}[(n+1)/3^val(n+1, 3), #]`
-/

namespace A046913.P6109094946899784210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A046913.P6109094946899784210

namespace A046913

/-- `∑{d}[(n+1)/3^val(n+1, 3), #]` -/
def P6109094946899784210.Spec : Prop :=
  ∀ n, (P6109094946899784210.a n : ℤ) = A046913 (n + 1)

end A046913

/-! ## A046913.P9791391562049494474

`∑{d}[A038502(n+1), #]`
-/

namespace A046913.P9791391562049494474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A046913.P9791391562049494474

namespace A046913

/-- `∑{d}[A038502(n+1), #]` -/
def P9791391562049494474.Spec : Prop :=
  ∀ n, (P9791391562049494474.a n : ℤ) = A046913 (n + 1)

end A046913

/-! ## A046913.P3016879829789347444

`∑{d}[n+1, A091684(#)]`
-/

namespace A046913.P3016879829789347444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091684 d

end

end A046913.P3016879829789347444

namespace A046913

/-- `∑{d}[n+1, A091684(#)]` -/
def P3016879829789347444.Spec : Prop :=
  ∀ n, P3016879829789347444.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P7190831468077129711

`A000203((n+1)/3^val(n+1, 3))`
-/

namespace A046913.P7190831468077129711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A046913.P7190831468077129711

namespace A046913

/-- `A000203((n+1)/3^val(n+1, 3))` -/
def P7190831468077129711.Spec : Prop :=
  ∀ n, P7190831468077129711.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P10704714675862904187

`∑{d}[n+1, #*A061347((n+1)/#)]`
-/

namespace A046913.P10704714675862904187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A061347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046913.P10704714675862904187

namespace A046913

/-- `∑{d}[n+1, #*A061347((n+1)/#)]` -/
def P10704714675862904187.Spec : Prop :=
  ∀ n, P10704714675862904187.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P12035725174589504993

`A000203(A038502(n+1))`
-/

namespace A046913.P12035725174589504993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A038502 (n + 1)).toNat

end

end A046913.P12035725174589504993

namespace A046913

/-- `A000203(A038502(n+1))` -/
def P12035725174589504993.Spec : Prop :=
  ∀ n, P12035725174589504993.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P4522501073745513486

`A078182(n+1)+A078181(n+1)`
-/

namespace A046913.P4522501073745513486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078182 (n + 1) + A078181 (n + 1)

end

end A046913.P4522501073745513486

namespace A046913

/-- `A078182(n+1)+A078181(n+1)` -/
def P4522501073745513486.Spec : Prop :=
  ∀ n, P4522501073745513486.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P1152322689996152495

`A144613(n+1)-A272027(n+1)`
-/

namespace A046913.P1152322689996152495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144613 (n + 1) - A272027 (n + 1)

end

end A046913.P1152322689996152495

namespace A046913

/-- `A144613(n+1)-A272027(n+1)` -/
def P1152322689996152495.Spec : Prop :=
  ∀ n, P1152322689996152495.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P6292490369143459760

`A038712(n+1)*A186099(n+1)`
-/

namespace A046913.P6292490369143459760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A186099 (n + 1)

end

end A046913.P6292490369143459760

namespace A046913

/-- `A038712(n+1)*A186099(n+1)` -/
def P6292490369143459760.Spec : Prop :=
  ∀ n, P6292490369143459760.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P2002709911629584348

`A000203((n+1)/A038500(n+1))`
-/

namespace A046913.P2002709911629584348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A046913.P2002709911629584348

namespace A046913

/-- `A000203((n+1)/A038500(n+1))` -/
def P2002709911629584348.Spec : Prop :=
  ∀ n, P2002709911629584348.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P13186550038091087362

`A000203(n+1)/A080278(n+1)`
-/

namespace A046913.P13186550038091087362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A080278 (n + 1) : ℚ)

end

end A046913.P13186550038091087362

namespace A046913

/-- `A000203(n+1)/A080278(n+1)` -/
def P13186550038091087362.Spec : Prop :=
  ∀ n, P13186550038091087362.a n = (A046913 (n + 1) : ℚ)

end A046913

/-! ## A046913.P11885232181175832507

`A078708((n+1)/A038500(n+1))`
-/

namespace A046913.P11885232181175832507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078708 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A046913.P11885232181175832507

namespace A046913

/-- `A078708((n+1)/A038500(n+1))` -/
def P11885232181175832507.Spec : Prop :=
  ∀ n, P11885232181175832507.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P13482794467528645844

`A144613(n+1)/A088838(n+1)`
-/

namespace A046913.P13482794467528645844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144613 (n + 1) : ℚ) / (A088838 (n + 1) : ℚ)

end

end A046913.P13482794467528645844

namespace A046913

/-- `A144613(n+1)/A088838(n+1)` -/
def P13482794467528645844.Spec : Prop :=
  ∀ n, P13482794467528645844.a n = (A046913 (n + 1) : ℚ)

end A046913

/-! ## A046913.P14218635760595618775

`A283123(n+1)%A144613(n+1)`
-/

namespace A046913.P14218635760595618775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283123 (n + 1)) (A144613 (n + 1))

end

end A046913.P14218635760595618775

namespace A046913

/-- `A283123(n+1)%A144613(n+1)` -/
def P14218635760595618775.Spec : Prop :=
  ∀ n, P14218635760595618775.a n = A046913 (n + 1)

end A046913

/-! ## A046913.P1487330025317100420

`gcd(A000203(n+1), A078708(n+1))`
-/

namespace A046913.P1487330025317100420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A078708 (n + 1))

end

end A046913.P1487330025317100420

namespace A046913

/-- `gcd(A000203(n+1), A078708(n+1))` -/
def P1487330025317100420.Spec : Prop :=
  ∀ n, (P1487330025317100420.a n : ℤ) = A046913 (n + 1)

end A046913

/-! ## A046913.P15010741459845948079

`gcd(A143348(n+1), A144613(n+1))`
-/

namespace A046913.P15010741459845948079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A144613 (n + 1))

end

end A046913.P15010741459845948079

namespace A046913

/-- `gcd(A143348(n+1), A144613(n+1))` -/
def P15010741459845948079.Spec : Prop :=
  ∀ n, (P15010741459845948079.a n : ℤ) = A046913 (n + 1)

end A046913

/-! ## A046913.P8874802810309929026

`A116607(n+1)/A061347(n+1)²`
-/

namespace A046913.P8874802810309929026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116607 (n + 1) : ℚ) / (A061347 (n + 1) ^ 2 : ℚ)

end

end A046913.P8874802810309929026

namespace A046913

/-- `A116607(n+1)/A061347(n+1)²` -/
def P8874802810309929026.Spec : Prop :=
  ∀ n, P8874802810309929026.a n = (A046913 (n + 1) : ℚ)

end A046913

/-! ## A046913.P11333642217075610346

`A326503(n+1)+2*A078182(n+1)`
-/

namespace A046913.P11333642217075610346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326503 (n + 1) + 2 * A078182 (n + 1)

end

end A046913.P11333642217075610346

namespace A046913

/-- `A326503(n+1)+2*A078182(n+1)` -/
def P11333642217075610346.Spec : Prop :=
  ∀ n, P11333642217075610346.a n = A046913 (n + 1)

end A046913

/-!
# A046914: Sum of aliquot factors (divisors excluding the number itself) of 10^n.

The programs for A046914, the canonical program `A046914.P11991733717254877408` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046914 has offset 0).

The definition of A046914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046914.P11991733717254877408

`(2^(n+1)-1)*(5^(n+1)-1)/4-10^n`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046914

/-- `(2^(n+1)-1)*(5^(n+1)-1)/4-10^n` -/
def P11991733717254877408.Spec : Prop :=
  ∀ n, P11991733717254877408.a n = (A046914 n : ℚ)

end A046914

/-!
# A046915: Sum of divisors of 10^n.

The programs for A046915, the canonical program `A046915.P17110626662330877457` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046915 has offset 0).

The definition of A046915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046915.P17110626662330877457

`∑[2^n]*∑[5^n]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046915

/-- `∑[2^n]*∑[5^n]` -/
def P17110626662330877457.Spec : Prop :=
  ∀ n, (P17110626662330877457.a n : ℤ) = A046915 n

theorem P17110626662330877457.correct : P17110626662330877457.Spec := by
  intro n
  simp only [A046915]

end A046915

/-! ## A046915.P6659531410380911260

`A046914(n)+Δ[((dr(9^n)+1)^n-1)/9]`
-/

namespace A046915.P6659531410380911260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digitalRoot (9 ^ n : ℤ) + 1) ^ n : ℤ) - 1 : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046914 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A046915.P6659531410380911260

namespace A046915

/-- `A046914(n)+Δ[((dr(9^n)+1)^n-1)/9]` -/
def P6659531410380911260.Spec : Prop :=
  ∀ n, P6659531410380911260.a n = (A046915 n : ℚ)

end A046915

/-! ## A046915.P36389845446088180

`A046914(n)+A011557(n)`
-/

namespace A046915.P36389845446088180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046914 n + A011557 n

end

end A046915.P36389845446088180

namespace A046915

/-- `A046914(n)+A011557(n)` -/
def P36389845446088180.Spec : Prop :=
  ∀ n, P36389845446088180.a n = A046915 n

end A046915

/-! ## A046915.P9007116725648169327

`A046914(n)+Δ[A002275(n)]`
-/

namespace A046915.P9007116725648169327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046914 n + (f1 (n + 1) - f1 n)

end

end A046915.P9007116725648169327

namespace A046915

/-- `A046914(n)+Δ[A002275(n)]` -/
def P9007116725648169327.Spec : Prop :=
  ∀ n, P9007116725648169327.a n = A046915 n

end A046915

/-! ## A046915.P8908974254137847769

`A002283(n)+A046914(n)+1`
-/

namespace A046915.P8908974254137847769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A046914 n + 1)

end

end A046915.P8908974254137847769

namespace A046915

/-- `A002283(n)+A046914(n)+1` -/
def P8908974254137847769.Spec : Prop :=
  ∀ n, P8908974254137847769.a n = A046915 n

end A046915

/-! ## A046915.P721792798266331639

`A046914(n)+Δ[A002276(n)/2]`
-/

namespace A046915.P721792798266331639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046914 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A046915.P721792798266331639

namespace A046915

/-- `A046914(n)+Δ[A002276(n)/2]` -/
def P721792798266331639.Spec : Prop :=
  ∀ n, P721792798266331639.a n = (A046915 n : ℚ)

end A046915

/-! ## A046915.P3905451604671436993

`A046914(n)+Δ[A002277(n)/3]`
-/

namespace A046915.P3905451604671436993
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046914 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A046915.P3905451604671436993

namespace A046915

/-- `A046914(n)+Δ[A002277(n)/3]` -/
def P3905451604671436993.Spec : Prop :=
  ∀ n, P3905451604671436993.a n = (A046915 n : ℚ)

end A046915

/-! ## A046915.P8411416343603301838

`A046914(n)+Δ[A093137(n)/3]`
-/

namespace A046915.P8411416343603301838
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093137 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046914 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A046915.P8411416343603301838

namespace A046915

/-- `A046914(n)+Δ[A093137(n)/3]` -/
def P8411416343603301838.Spec : Prop :=
  ∀ n, P8411416343603301838.a n = (A046915 n : ℚ)

end A046915

/-! ## A046915.P5488858459566437343

`∑[A000079(n)]+A000225(n+1)*A104891(n)`
-/

namespace A046915.P5488858459566437343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000225 (n + 1) * A104891 n

end

end A046915.P5488858459566437343

namespace A046915

/-- `∑[A000079(n)]+A000225(n+1)*A104891(n)` -/
def P5488858459566437343.Spec : Prop :=
  ∀ n, P5488858459566437343.a n = A046915 n

end A046915

/-! ## A046915.P5951299046424660679

`A000079(n+1)*A003463(n+1)-A003463(n+1)`
-/

namespace A046915.P5951299046424660679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A003463 (n + 1) - A003463 (n + 1)

end

end A046915.P5951299046424660679

namespace A046915

/-- `A000079(n+1)*A003463(n+1)-A003463(n+1)` -/
def P5951299046424660679.Spec : Prop :=
  ∀ n, P5951299046424660679.a n = A046915 n

end A046915

/-!
# A046916: a(n) = n*2^n + 2*n^2 + 1.

The programs for A046916, the canonical program `A046916.P2495984086413320043` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046916 has offset 0).

The definition of A046916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^n+2*n²+1` (program `A046916.P2495984086413320043`, by `A046916.P2495984086413320043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A046916.P2495984086413320043

`n*2^n+2*n²+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046916

/-- `n*2^n+2*n²+1` -/
def P2495984086413320043.Spec : Prop :=
  ∀ n, (P2495984086413320043.a n : ℤ) = A046916 n

theorem P2495984086413320043.correct : P2495984086413320043.Spec := by
  intro n
  simp only [A046916]

end A046916

/-! ## A046916.P16681008414420472577

`xor(1, n*A100314(n))`
-/

namespace A046916.P16681008414420472577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * A100314 n)

end

end A046916.P16681008414420472577

namespace A046916

/-- `xor(1, n*A100314(n))` -/
def P16681008414420472577.Spec : Prop :=
  ∀ n, P16681008414420472577.a n = A046916 n

end A046916

/-! ## A046916.P4420417171526713752

`xor(1, 2*n*A288133(n+1))`
-/

namespace A046916.P4420417171526713752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((2 * n : ℤ) * A288133 (n + 1))

end

end A046916.P4420417171526713752

namespace A046916

/-- `xor(1, 2*n*A288133(n+1))` -/
def P4420417171526713752.Spec : Prop :=
  ∀ n, P4420417171526713752.a n = A046916 n

end A046916

/-! ## A046916.P628871659026149898

`or(1, n*(A155559(n)+2*n))`
-/

namespace A046916.P628871659026149898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * (A155559 n + (2 * n : ℤ)))

end

end A046916.P628871659026149898

namespace A046916

/-- `or(1, n*(A155559(n)+2*n))` -/
def P628871659026149898.Spec : Prop :=
  ∀ n, P628871659026149898.a n = A046916 n

end A046916

/-! ## A046916.P10180667144599493397

`xor(1, n*(A000079(n)+2*n))`
-/

namespace A046916.P10180667144599493397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A000079 n + (2 * n : ℤ)))

end

end A046916.P10180667144599493397

namespace A046916

/-- `xor(1, n*(A000079(n)+2*n))` -/
def P10180667144599493397.Spec : Prop :=
  ∀ n, P10180667144599493397.a n = A046916 n

end A046916

/-! ## A046916.P12924315296025935927

`xor(1, (A011782(n)+n)*2*n)`
-/

namespace A046916.P12924315296025935927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((A011782 n + (n : ℤ)) * (2 * n : ℤ))

end

end A046916.P12924315296025935927

namespace A046916

/-- `xor(1, (A011782(n)+n)*2*n)` -/
def P12924315296025935927.Spec : Prop :=
  ∀ n, P12924315296025935927.a n = A046916 n

end A046916

/-! ## A046916.P12048585659418337951

`or(1, A002064(n)+A001105(n))`
-/

namespace A046916.P12048585659418337951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002064 n + A001105 n)

end

end A046916.P12048585659418337951

namespace A046916

/-- `or(1, A002064(n)+A001105(n))` -/
def P12048585659418337951.Spec : Prop :=
  ∀ n, P12048585659418337951.a n = A046916 n

end A046916

/-!
# A046919: Maximal coefficient of polynomial p(n), with p(3)=1, p(n) = (1 - t^(2*n - 4))*(1 - t^(2*n - 3))*p(n - 1)/((1 - t^(n - 3))*(1 - t^n)).

The programs for A046919, there is no canonical definition to state claims against.
-/

/-! ## A046919.P6235045630362911982

`A201503(A184636(n+1)-1)`
-/

namespace A046919.P6235045630362911982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A184636 (n + 1) - 1).toNat

end

end A046919.P6235045630362911982

/-! ## A046919.P6605270602566693311

`A201503(A080476(2*n+1)+2*n+1)`
-/

namespace A046919.P6605270602566693311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A080476 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A046919.P6605270602566693311

/-! ## A046919.P9873385377843586152

`A188175(floor(acot(n)+n))`
-/

namespace A046919.P9873385377843586152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188175 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A046919.P9873385377843586152

/-! ## A046919.P10661530928613942413

`A188175(n^floor(atan(n)))`
-/

namespace A046919.P10661530928613942413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188175 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A046919.P10661530928613942413

/-! ## A046919.P6319596672460121389

`A188175(C(n, floor(atan(n))))`
-/

namespace A046919.P6319596672460121389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188175 (Nat.choose n ⌊Real.arctan (n : ℝ)⌋.toNat)

end

end A046919.P6319596672460121389

/-!
# A046920: Number of ways to express n as p+2a^2; p = 1 or prime, a >= 0.

The programs for A046920, there is no canonical definition to state claims against.
-/

/-! ## A046920.P2817722314494606086

`A379480(n)+A046922(n+1)`
-/

namespace A046920.P2817722314494606086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 n + A046922 (n + 1)

end

end A046920.P2817722314494606086

/-! ## A046920.P8008782163018003809

`A046922(n+1)+char[A001105(n)]`
-/

namespace A046920.P8008782163018003809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046920.P8008782163018003809

/-! ## A046920.P12821502091819667436

`A046922(n+1)+A010052(2*n)`
-/

namespace A046920.P12821502091819667436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (n + 1) + A010052 (2 * n)

end

end A046920.P12821502091819667436

/-! ## A046920.P17086950272072733076

`A046922(n+1)+A046922(A016825(n))`
-/

namespace A046920.P17086950272072733076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (n + 1) + A046922 (A016825 n).toNat

end

end A046920.P17086950272072733076

/-! ## A046920.P8106760304809781339

`A046922(n+1)+A046922(Δ[A001105(n)])`
-/

namespace A046920.P8106760304809781339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (n + 1) + A046922 (f1 (n + 1) - f1 n).toNat

end

end A046920.P8106760304809781339

/-! ## A046920.P16224613116315407787

`A046922(n+1)+A046922(A008574(n)+2)`
-/

namespace A046920.P16224613116315407787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (n + 1) + A046922 (A008574 n + 2).toNat

end

end A046920.P16224613116315407787

/-!
# A046921: Number of ways to express 2n+1 as p+2a^2; p = 1 or prime, a >= 0.

The programs for A046921, there is no canonical definition to state claims against.
-/

/-! ## A046921.P3344851383836947151

`A046920(A005408(n))`
-/

namespace A046921.P3344851383836947151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A005408 n).toNat

end

end A046921.P3344851383836947151

/-! ## A046921.P2777927310352768514

`A046923(n)+A010052(n)`
-/

namespace A046921.P2777927310352768514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n + A010052 n

end

end A046921.P2777927310352768514

/-! ## A046921.P10830861180584924246

`A046920(Δ[n²])`
-/

namespace A046921.P10830861180584924246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046921.P10830861180584924246

/-! ## A046921.P16450078633687529070

`xor(1, xor(1, A046920(2*n+1)))`
-/

namespace A046921.P16450078633687529070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A046920 (2 * n + 1)))

end

end A046921.P16450078633687529070

/-! ## A046921.P16737225764631078195

`A046922(2*n+1)+char[n²]`
-/

namespace A046921.P16737225764631078195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A046921.P16737225764631078195

/-! ## A046921.P15967173133110161047

`A046923(n)+A046920(2*(n+1))`
-/

namespace A046921.P15967173133110161047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n + A046920 (2 * (n + 1))

end

end A046921.P15967173133110161047

/-! ## A046921.P8682146341741704419

`A046923(n)+A046922(2*(n+1))`
-/

namespace A046921.P8682146341741704419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046923 n + A046922 (2 * (n + 1))

end

end A046921.P8682146341741704419

/-! ## A046921.P1356557027810792432

`A046920(2*n+1)+char[A046903(n)]`
-/

namespace A046921.P1356557027810792432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046903 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046921.P1356557027810792432

/-! ## A046921.P414653654845470061

`A379480(2*n)+A046922(2*n+1)`
-/

namespace A046921.P414653654845470061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (2 * n) + A046922 (2 * n + 1)

end

end A046921.P414653654845470061

/-! ## A046921.P526755936350197319

`A046920(2*n+1)+A010051(2*(n+2))`
-/

namespace A046921.P526755936350197319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A046921.P526755936350197319

/-! ## A046921.P6574029295664557677

`A000007(n+1)+A046922(2*n+1)+A046922(2*n+2)`
-/

namespace A046921.P6574029295664557677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A046922 (2 * n + 1) + A046922 (2 * n + 2))

end

end A046921.P6574029295664557677

/-! ## A046921.P11561445876282063704

`A000038(n+1)+A046922(2*n+1)+A046922(2*n+2)`
-/

namespace A046921.P11561445876282063704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A046922 (2 * n + 1) + A046922 (2 * n + 2))

end

end A046921.P11561445876282063704

/-! ## A046921.P15631703726819226025

`A001222(2^A046920(2*n+1))`
-/

namespace A046921.P15631703726819226025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A046920 (2 * n + 1) : ℤ))).toNat

end

end A046921.P15631703726819226025

/-!
# A046922: Number of ways to express n as p+2a^2; p prime, a >= 0.

The programs for A046922, there is no canonical definition to state claims against.
-/

/-! ## A046922.P13482144294202517628

`A046920(n+1)-A379480(n)`
-/

namespace A046922.P13482144294202517628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 1) - A379480 n

end

end A046922.P13482144294202517628

/-! ## A046922.P5306208150009883195

`A046920(n+1)-char[A001105(n)]`
-/

namespace A046922.P5306208150009883195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046922.P5306208150009883195

/-! ## A046922.P5831132686729376788

`A317684(n+1)-A317682(n+1)`
-/

namespace A046922.P5831132686729376788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 (n + 1) - A317682 (n + 1)

end

end A046922.P5831132686729376788

/-! ## A046922.P17119490471311522200

`A046920(n+1)-A010052(A266073(n))`
-/

namespace A046922.P17119490471311522200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 1) - A010052 (A266073 n).toNat

end

end A046922.P17119490471311522200

/-! ## A046922.P15946871701008680930

`A046920(n+1)-A010052(2*n)`
-/

namespace A046922.P15946871701008680930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 1) - A010052 (2 * n)

end

end A046922.P15946871701008680930

/-! ## A046922.P1853180198606614726

`A046920(n+1)-A077606(A008574(n))²`
-/

namespace A046922.P1853180198606614726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 1) - A077606 (A008574 n).toNat ^ 2

end

end A046922.P1853180198606614726

/-! ## A046922.P18022251491688551575

`A077606(A077606(n+1)+A008574(n))+A046920(n+1)`
-/

namespace A046922.P18022251491688551575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (A077606 (n + 1) + A008574 n).toNat + A046920 (n + 1)

end

end A046922.P18022251491688551575

/-! ## A046922.P17159824290479133668

`A046920(n+1)-A046920(4*n+2)`
-/

namespace A046922.P17159824290479133668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 1) - A046920 (4 * n + 2)

end

end A046922.P17159824290479133668

/-! ## A046922.P14407049499669963226

`A046920(n+1)-A046920(A016825(n))²`
-/

namespace A046922.P14407049499669963226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (n + 1) - A046920 (A016825 n).toNat ^ 2

end

end A046922.P14407049499669963226

/-!
# A046923: Number of ways to express 2n+1 as p+2a^2; p prime, a >= 0.

The programs for A046923, there is no canonical definition to state claims against.
-/

/-! ## A046923.P17254653492360444825

`A046921(n)-char[n²]`
-/

namespace A046923.P17254653492360444825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046921 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A046923.P17254653492360444825

/-! ## A046923.P573709287762586865

`A143539(n+1)+A101264(n)`
-/

namespace A046923.P573709287762586865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1) + A101264 n

end

end A046923.P573709287762586865

/-! ## A046923.P4082325858630270178

`A143539(n+1)+A010051(2*n+1)`
-/

namespace A046923.P4082325858630270178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143539 (n + 1) + A010051 (2 * n + 1)

end

end A046923.P4082325858630270178

/-! ## A046923.P3950537896948584323

`A046922(Δ[n²])`
-/

namespace A046923.P3950537896948584323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046923.P3950537896948584323

/-! ## A046923.P12720993304229939523

`A046920(2*n+1)-char[n²]`
-/

namespace A046923.P12720993304229939523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A046923.P12720993304229939523

/-! ## A046923.P27740083526380952

`A046922(2*n+1)+A010051(2*(n+2))`
-/

namespace A046923.P27740083526380952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A046923.P27740083526380952

/-! ## A046923.P6744924947449654713

`A317684(2*n+1)-A317682(2*n+1)`
-/

namespace A046923.P6744924947449654713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 (2 * n + 1) - A317682 (2 * n + 1)

end

end A046923.P6744924947449654713

/-! ## A046923.P4671857976951966175

`A046920(A228466(A046922(2*n+1)))`
-/

namespace A046923.P4671857976951966175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046920 (A228466 (A046922 (2 * n + 1)).toNat).toNat

end

end A046923.P4671857976951966175

/-! ## A046923.P8946793317147925535

`A046922(2*n+1)+A000032(2*n)*A000038(n+1)`
-/

namespace A046923.P8946793317147925535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046922 (2 * n + 1) + A000032 (2 * n) * A000038 (n + 1)

end

end A046923.P8946793317147925535

/-!
# A046924: Number of ways to express n as p+2q; p, q = 1 or prime.

The programs for A046924, there is no canonical definition to state claims against.
-/

/-! ## A046924.P2623258726729822067

`A008706(A351344(n))%A193513(n)`
-/

namespace A046924.P2623258726729822067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008706 (A351344 n).toNat) (A193513 n)

end

end A046924.P2623258726729822067

/-! ## A046924.P12536996954038265348

`A032741(A077168(n)-A260883(n+1))`
-/

namespace A046924.P12536996954038265348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A077168 n - A260883 (n + 1)).toNat

end

end A046924.P12536996954038265348

/-! ## A046924.P3037068057120605620

`A213020(n+2)%A093640(A372889(n))`
-/

namespace A046924.P3037068057120605620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213020 (n + 2)) (A093640 (A372889 n).toNat)

end

end A046924.P3037068057120605620

/-! ## A046924.P354244561557393021

`A106404(A288331(n)+A106404(3*n+1))`
-/

namespace A046924.P354244561557393021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A288331 n + A106404 (3 * n + 1)).toNat

end

end A046924.P354244561557393021

/-!
# A046925: Number of ways to express 2n+1 as p+2q; p, q = 1 or prime.

The programs for A046925, there is no canonical definition to state claims against.
-/

/-! ## A046925.P1335046838902794953

`A046924(Δ[n²])`
-/

namespace A046925.P1335046838902794953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046924 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046925.P1335046838902794953

/-! ## A046925.P5192288387640182875

`A046924(2*n+1)%(n+1)`
-/

namespace A046925.P5192288387640182875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046924 (2 * n + 1)) (n + 1 : ℤ)

end

end A046925.P5192288387640182875

/-! ## A046925.P14183166262246228573

`A046924(A005408(n))*A054977(n)`
-/

namespace A046925.P14183166262246228573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046924 (A005408 n).toNat * A054977 n

end

end A046925.P14183166262246228573

/-! ## A046925.P7238412991529007794

`A046924(A005408(n))*A057427(n)`
-/

namespace A046925.P7238412991529007794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046924 (A005408 n).toNat * A057427 n

end

end A046925.P7238412991529007794

/-! ## A046925.P16400833469914458507

`A046924(A005408(n))+A000007(n+1)`
-/

namespace A046925.P16400833469914458507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046924 (A005408 n).toNat + A000007 (n + 1)

end

end A046925.P16400833469914458507

/-! ## A046925.P8412914917349531040

`(1-A000007(n))*A046924(A005408(n))`
-/

namespace A046925.P8412914917349531040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A046924 (A005408 n).toNat

end

end A046925.P8412914917349531040

/-! ## A046925.P2328902094886169293

`A218007(2*n+1)-A218469(2*n+1)`
-/

namespace A046925.P2328902094886169293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218007 (2 * n + 1) - A218469 (2 * n + 1)

end

end A046925.P2328902094886169293

/-!
# A046926: Number of ways to express n as p+2q; p, q primes.

The programs for A046926, there is no canonical definition to state claims against.
-/

/-! ## A046926.P13352805016064792716

`A068307(n+1)-A125688(n+1)`
-/

namespace A046926.P13352805016064792716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 1) - A125688 (n + 1)

end

end A046926.P13352805016064792716

/-! ## A046926.P5779419601422160018

`A083338(xor(n, A060576(n)))-A125688(n+1)`
-/

namespace A046926.P5779419601422160018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (Int.xor (n : ℤ) (A060576 n)).toNat - A125688 (n + 1)

end

end A046926.P5779419601422160018

/-! ## A046926.P5667782910582952250

`A068307(n+1)+A057428(n)*A125688(n+1)`
-/

namespace A046926.P5667782910582952250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 1) + A057428 n * A125688 (n + 1)

end

end A046926.P5667782910582952250

/-! ## A046926.P16212484689121034003

`A083338(A004442(A159075(n)+n))-A125688(n+1)`
-/

namespace A046926.P16212484689121034003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A004442 (A159075 n + (n : ℤ)).toNat).toNat - A125688 (n + 1)

end

end A046926.P16212484689121034003

/-! ## A046926.P13655242780001047479

`A071335(n+1)-(A061358(n+1)+A010051(n+1))-A125688(n+1)`
-/

namespace A046926.P13655242780001047479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - (A061358 (n + 1) + A010051 (n + 1)) - A125688 (n + 1)

end

end A046926.P13655242780001047479

/-! ## A046926.P10611278604251045621

`A083338(xor(1, A233583(n+1)))-A125688(n+1)`
-/

namespace A046926.P10611278604251045621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (Int.xor 1 (A233583 (n + 1))).toNat - A125688 (n + 1)

end

end A046926.P10611278604251045621

/-! ## A046926.P7520827622588940677

`A068307(n+1)-(A223893(n+1)-(A117929(n+1)+A010051(n+1)))`
-/

namespace A046926.P7520827622588940677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (n + 1) - (A223893 (n + 1) - (A117929 (n + 1) + A010051 (n + 1)))

end

end A046926.P7520827622588940677

/-! ## A046926.P15394077538081223686

`A071335(n+1)-A347552(n+1)-A125688(n+1)`
-/

namespace A046926.P15394077538081223686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (n + 1) - A347552 (n + 1) - A125688 (n + 1)

end

end A046926.P15394077538081223686

/-!
# A046927: Number of ways to express 2n+1 as p+2q where p and q are primes.

The programs for A046927, there is no canonical definition to state claims against.
-/

/-! ## A046927.P10561895947298384547

`A054860(n)-A102605(n)`
-/

namespace A046927.P10561895947298384547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054860 n - A102605 n

end

end A046927.P10561895947298384547

/-! ## A046927.P11562648094847839528

`A068307(Δ[n²])-A102605(n)`
-/

namespace A046927.P11562648094847839528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A102605 n

end

end A046927.P11562648094847839528

/-! ## A046927.P16070559266044571449

`A046926(Δ[n²])`
-/

namespace A046927.P16070559266044571449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046927.P16070559266044571449

/-! ## A046927.P11501794392624939227

`xor(1, xor(1, A046926(2*n+1)))`
-/

namespace A046927.P11501794392624939227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A046926 (2 * n + 1)))

end

end A046927.P11501794392624939227

/-! ## A046927.P11361110758524461873

`A054860(n)-A125688(Δ[n²])`
-/

namespace A046927.P11361110758524461873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054860 n - A125688 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046927.P11361110758524461873

/-! ## A046927.P16876611438852107923

`A005843(A046926(2*n+1))/2`
-/

namespace A046927.P16876611438852107923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A046926 (2 * n + 1)).toNat : ℚ) / 2

end

end A046927.P16876611438852107923

/-! ## A046927.P17848200019736062173

`A083338(2*n+1)-A102605(n)`
-/

namespace A046927.P17848200019736062173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (2 * n + 1) - A102605 n

end

end A046927.P17848200019736062173

/-! ## A046927.P10691310668264630066

`A046926(2*n+1)*A060576(n)`
-/

namespace A046927.P10691310668264630066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * n + 1) * A060576 n

end

end A046927.P10691310668264630066

/-! ## A046927.P11810543469335556908

`A057428(n)²*A046926(2*n+1)`
-/

namespace A046927.P11810543469335556908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A046926 (2 * n + 1)

end

end A046927.P11810543469335556908

/-! ## A046927.P15405446844508612586

`A159075(2*n)+A046926(2*n+1)`
-/

namespace A046927.P15405446844508612586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (2 * n) + A046926 (2 * n + 1)

end

end A046927.P15405446844508612586

/-! ## A046927.P9539205840026688851

`A046926(2*n+1)+A057428(n+1)+1`
-/

namespace A046927.P9539205840026688851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * n + 1) + (A057428 (n + 1) + 1)

end

end A046927.P9539205840026688851

/-! ## A046927.P7040594028179889049

`A046926(2*n+1)+A014069(2*n+1)`
-/

namespace A046927.P7040594028179889049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * n + 1) + A014069 (2 * n + 1)

end

end A046927.P7040594028179889049

/-! ## A046927.P10311320146713981150

`A046926(2*n+1)+A014093(2*n+1)`
-/

namespace A046927.P10311320146713981150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * n + 1) + A014093 (2 * n + 1)

end

end A046927.P10311320146713981150

/-! ## A046927.P5496847969199018450

`A068307(2*n+1)-A125688(2*n+1)`
-/

namespace A046927.P5496847969199018450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * n + 1) - A125688 (2 * n + 1)

end

end A046927.P5496847969199018450

/-! ## A046927.P14277243418563977140

`(A028310(n+1)-n)*A046926(2*n+1)`
-/

namespace A046927.P14277243418563977140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) - (n : ℤ)) * A046926 (2 * n + 1)

end

end A046927.P14277243418563977140

/-! ## A046927.P7435758028242295654

`A046926(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A046927.P7435758028242295654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * n + 1) + (2 - A020639 (2 * (n + 1)))

end

end A046927.P7435758028242295654

/-! ## A046927.P12990850957843728724

`A046926(2*n+1)+2-A141310(2*n+1)`
-/

namespace A046927.P12990850957843728724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * n + 1) + (2 - A141310 (2 * n + 1))

end

end A046927.P12990850957843728724

/-! ## A046927.P4677541284695156419

`A046926(2*n+1)+and(2, A046926(2*(n+1)))`
-/

namespace A046927.P4677541284695156419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * n + 1) + Int.land 2 (A046926 (2 * (n + 1)))

end

end A046927.P4677541284695156419

/-! ## A046927.P2852920571235253100

`or(1, A046926(2*n+2))*A046926(2*n+1)`
-/

namespace A046927.P2852920571235253100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046926 (2 * n + 2)) * A046926 (2 * n + 1)

end

end A046927.P2852920571235253100

/-! ## A046927.P14177668068882489777

`A046926(A004442(2*n))-A159075(2*n)`
-/

namespace A046927.P14177668068882489777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (A004442 (2 * n)).toNat - A159075 (2 * n)

end

end A046927.P14177668068882489777

/-!
# A046928: Smaller of twin prime pairs in consecutively larger seas of composite numbers.

The programs for A046928, there is no canonical definition to state claims against.
-/

/-! ## A046928.P7776603517909812436

`p?[Δ[A113439(A324347(n))]]`
-/

namespace A046928.P7776603517909812436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113439 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046928.P7776603517909812436

/-! ## A046928.P11194631216777079332

`p?[A003064(A045965(n+1))]`
-/

namespace A046928.P11194631216777079332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003064 (A045965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046928.P11194631216777079332

/-!
# A046929: Width of moat of composite numbers surrounding n-th prime.

The programs for A046929, there is no canonical definition to state claims against.
-/

/-! ## A046929.P6282881102035537841

`A051702(n+1)-1`
-/

namespace A046929.P6282881102035537841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (n + 1) - 1

end

end A046929.P6282881102035537841

/-! ## A046929.P17339327483517377254

`A023443(A051702(n+1))`
-/

namespace A046929.P17339327483517377254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A051702 (n + 1)).toNat

end

end A046929.P17339327483517377254

/-! ## A046929.P7991356197446462771

`A057428(A051702(n+1)²)+A051702(n+1)`
-/

namespace A046929.P7991356197446462771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A051702 (n + 1) ^ 2).toNat + A051702 (n + 1)

end

end A046929.P7991356197446462771

/-! ## A046929.P10749673497473039059

`A109389(A204162(2*(n+2)))+A051702(n+1)`
-/

namespace A046929.P10749673497473039059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 (A204162 (2 * (n + 2))).toNat + A051702 (n + 1)

end

end A046929.P10749673497473039059

/-! ## A046929.P5657174098801400228

`val(A003945(A051702(n+1)), A020639(2*(n+1)))`
-/

namespace A046929.P5657174098801400228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003945 (A051702 (n + 1)).toNat).toNat (A020639 (2 * (n + 1))).toNat

end

end A046929.P5657174098801400228

/-! ## A046929.P239462224012862769

`(A051702(n+1)*A057428(n)+1)*A057428(n)`
-/

namespace A046929.P239462224012862769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051702 (n + 1) * A057428 n + 1) * A057428 n

end

end A046929.P239462224012862769

/-! ## A046929.P3098891776808718937

`A134824(n+2)+A051702(n+1)`
-/

namespace A046929.P3098891776808718937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A051702 (n + 1)

end

end A046929.P3098891776808718937

/-! ## A046929.P9287387582663355947

`A321299(A001511(2*n+5))+A051702(n+1)`
-/

namespace A046929.P9287387582663355947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321299 (A001511 (2 * n + 5)).toNat + A051702 (n + 1)

end

end A046929.P9287387582663355947

/-! ## A046929.P9104408035618274002

`A051700(Δ[A007504(n)])-1`
-/

namespace A046929.P9104408035618274002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (n + 1) - f1 n).toNat - 1

end

end A046929.P9104408035618274002

/-! ## A046929.P4473058543876622919

`A051700(record[A051698(n)])-1`
-/

namespace A046929.P4473058543876622919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A046929.P4473058543876622919

/-! ## A046929.P10054032550712671499

`A051700(record[A162753(n)])-1`
-/

namespace A046929.P10054032550712671499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A046929.P10054032550712671499

/-! ## A046929.P10476686154567031706

`A051700(p?[A004442(n)])-1`
-/

namespace A046929.P10476686154567031706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A046929.P10476686154567031706

/-! ## A046929.P1413642505408574128

`A051700(p?[A006369(n)])-1`
-/

namespace A046929.P1413642505408574128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A046929.P1413642505408574128

/-! ## A046929.P16441025917094244370

`A051700(p?[A014681(n)])-1`
-/

namespace A046929.P16441025917094244370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A046929.P16441025917094244370

/-! ## A046929.P3052576312668739800

`A051700(p?[A143051(n)])-1`
-/

namespace A046929.P3052576312668739800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A046929.P3052576312668739800

/-! ## A046929.P13911553233135277116

`A051700(A000040(n+1))-1`
-/

namespace A046929.P13911553233135277116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A000040 (n + 1)).toNat - 1

end

end A046929.P13911553233135277116

/-! ## A046929.P16748179641800428301

`A051700(A006005(n+1))-1`
-/

namespace A046929.P16748179641800428301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A006005 (n + 1)).toNat - 1

end

end A046929.P16748179641800428301

/-! ## A046929.P9693886769315697037

`A051700(A008578(n+2))-1`
-/

namespace A046929.P9693886769315697037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A008578 (n + 2)).toNat - 1

end

end A046929.P9693886769315697037

/-! ## A046929.P4131084843542061227

`A051700(A075643(n+2))-1`
-/

namespace A046929.P4131084843542061227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A075643 (n + 2)).toNat - 1

end

end A046929.P4131084843542061227

/-! ## A046929.P5480663488402518702

`A083800(n+1)%A051702(n+1)`
-/

namespace A046929.P5480663488402518702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A051702 (n + 1))

end

end A046929.P5480663488402518702

/-!
# A046930: Size of sea of composite numbers surrounding n-th prime.

The programs for A046930, the canonical program `A046930.P1162450832993365803` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046930 has offset 1).

The definition of A046930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046930.P1162450832993365803

`Δ[A011974(n+1)]-2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046930

/-- `Δ[A011974(n+1)]-2` -/
def P1162450832993365803.Spec : Prop :=
  ∀ n, P1162450832993365803.a n = A046930 (n + 1)

theorem P1162450832993365803.correct : P1162450832993365803.Spec := by
  intro n
  simp only [A046930, Nat.add_sub_cancel]

end A046930

/-! ## A046930.P9577308361218354078

`A261470(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A046930.P9577308361218354078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A261470 (n - 1) + a (n - 1)

end

end A046930.P9577308361218354078

namespace A046930

/-- `A261470(n-1)+a(n-1)` -/
def P9577308361218354078.Spec : Prop :=
  ∀ n, P9577308361218354078.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P2537763489735637982

`A028310(A159461(n+1))`
-/

namespace A046930.P2537763489735637982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A159461 (n + 1)).toNat

end

end A046930.P2537763489735637982

namespace A046930

/-- `A028310(A159461(n+1))` -/
def P2537763489735637982.Spec : Prop :=
  ∀ n, P2537763489735637982.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P2367003881395981986

`A031131(A028310(n))-2`
-/

namespace A046930.P2367003881395981986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A028310 n).toNat - 2

end

end A046930.P2367003881395981986

namespace A046930

/-- `A031131(A028310(n))-2` -/
def P2367003881395981986.Spec : Prop :=
  ∀ n, P2367003881395981986.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P1169532210453388310

`A159461(n+1)+A000007(n)`
-/

namespace A046930.P1169532210453388310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1) + A000007 n

end

end A046930.P1169532210453388310

namespace A046930

/-- `A159461(n+1)+A000007(n)` -/
def P1169532210453388310.Spec : Prop :=
  ∀ n, P1169532210453388310.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P8351082686382143642

`A031131(A000007(n)+n)-2`
-/

namespace A046930.P8351082686382143642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A000007 n + (n : ℤ)).toNat - 2

end

end A046930.P8351082686382143642

namespace A046930

/-- `A031131(A000007(n)+n)-2` -/
def P8351082686382143642.Spec : Prop :=
  ∀ n, P8351082686382143642.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P37391097509105853

`A031131(A004277(n)-n)-2`
-/

namespace A046930.P37391097509105853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A004277 n - (n : ℤ)).toNat - 2

end

end A046930.P37391097509105853

namespace A046930

/-- `A031131(A004277(n)-n)-2` -/
def P37391097509105853.Spec : Prop :=
  ∀ n, P37391097509105853.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P12366369790620193252

`A165972(n+1)%A028815(n)`
-/

namespace A046930.P12366369790620193252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165972 (n + 1)) (A028815 n)

end

end A046930.P12366369790620193252

namespace A046930

/-- `A165972(n+1)%A028815(n)` -/
def P12366369790620193252.Spec : Prop :=
  ∀ n, P12366369790620193252.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P15928095754254833170

`∏{d}[A159461(n+1), A014963(#)]`
-/

namespace A046930.P15928095754254833170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A046930.P15928095754254833170

namespace A046930

/-- `∏{d}[A159461(n+1), A014963(#)]` -/
def P15928095754254833170.Spec : Prop :=
  ∀ n, P15928095754254833170.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P1719520972866959470

`A159461(n+1)+char[A159448(n)]`
-/

namespace A046930.P1719520972866959470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159448 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046930.P1719520972866959470

namespace A046930

/-- `A159461(n+1)+char[A159448(n)]` -/
def P1719520972866959470.Spec : Prop :=
  ∀ n, P1719520972866959470.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P12727211756500860732

`A254667(A159461(n+1)+1)-1`
-/

namespace A046930.P12727211756500860732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A159461 (n + 1) + 1).toNat - 1

end

end A046930.P12727211756500860732

namespace A046930

/-- `A254667(A159461(n+1)+1)-1` -/
def P12727211756500860732.Spec : Prop :=
  ∀ n, P12727211756500860732.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P5110759462109076021

`A233583(A159461(n+1)+2)-1`
-/

namespace A046930.P5110759462109076021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A159461 (n + 1) + 2).toNat - 1

end

end A046930.P5110759462109076021

namespace A046930

/-- `A233583(A159461(n+1)+2)-1` -/
def P5110759462109076021.Spec : Prop :=
  ∀ n, P5110759462109076021.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P15883932119053277116

`A159461(n+1)+∏{d}[n, A159461(#)]`
-/

namespace A046930.P15883932119053277116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1) + ∏ d ∈ Nat.divisors (f1 n), A159461 d

end

end A046930.P15883932119053277116

namespace A046930

/-- `A159461(n+1)+∏{d}[n, A159461(#)]` -/
def P15883932119053277116.Spec : Prop :=
  ∀ n, P15883932119053277116.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P15889260466007969536

`A046933(n+1)+A054541(n+1)-1`
-/

namespace A046930.P15889260466007969536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + (A054541 (n + 1) - 1)

end

end A046930.P15889260466007969536

namespace A046930

/-- `A046933(n+1)+A054541(n+1)-1` -/
def P15889260466007969536.Spec : Prop :=
  ∀ n, P15889260466007969536.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P7869102116167662950

`A001043(n+1)-(A011974(n+1)+2)`
-/

namespace A046930.P7869102116167662950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) - (A011974 (n + 1) + 2)

end

end A046930.P7869102116167662950

namespace A046930

/-- `A001043(n+1)-(A011974(n+1)+2)` -/
def P7869102116167662950.Spec : Prop :=
  ∀ n, P7869102116167662950.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P18349156482522228041

`A001223(n+1)+A054541(n+1)-2`
-/

namespace A046930.P18349156482522228041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A054541 (n + 1) - 2)

end

end A046930.P18349156482522228041

namespace A046930

/-- `A001223(n+1)+A054541(n+1)-2` -/
def P18349156482522228041.Spec : Prop :=
  ∀ n, P18349156482522228041.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P7741324597691154243

`A065091(n+1)-(A182986(n+1)+2)`
-/

namespace A046930.P7741324597691154243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - (A182986 (n + 1) + 2)

end

end A046930.P7741324597691154243

namespace A046930

/-- `A065091(n+1)-(A182986(n+1)+2)` -/
def P7741324597691154243.Spec : Prop :=
  ∀ n, P7741324597691154243.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P14586481913377238700

`A046933(n+1)+A230847(n+1)-2`
-/

namespace A046930.P14586481913377238700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + (A230847 (n + 1) - 2)

end

end A046930.P14586481913377238700

namespace A046930

/-- `A046933(n+1)+A230847(n+1)-2` -/
def P14586481913377238700.Spec : Prop :=
  ∀ n, P14586481913377238700.a n = A046930 (n + 1)

end A046930

/-! ## A046930.P8872821445877268348

`A011974(n+2)-(A011974(n+1)+2)`
-/

namespace A046930.P8872821445877268348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) - (A011974 (n + 1) + 2)

end

end A046930.P8872821445877268348

namespace A046930

/-- `A011974(n+2)-(A011974(n+1)+2)` -/
def P8872821445877268348.Spec : Prop :=
  ∀ n, P8872821445877268348.a n = A046930 (n + 1)

theorem P8872821445877268348.correct : P8872821445877268348.Spec := by
  intro n
  simp only [A046930, Nat.add_sub_cancel, A046930.P8872821445877268348.a, A046930.P1162450832993365803.f1, A046930.P1162450832993365803.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A046930

/-!
# A046931: Prime islands: for n >= 2, a(n) = least prime whose adjacent primes are exactly 2n apart; a(1) = 3 by convention.

The programs for A046931, there is no canonical definition to state claims against.
-/

/-! ## A046931.P13899567211790374569

`A151800(abs(A144103(n+1))+1)`
-/

namespace A046931.P13899567211790374569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (|A144103 (n + 1)| + 1).toNat

end

end A046931.P13899567211790374569

/-! ## A046931.P13884563869073605812

`or(1, A151800(A337767(∑[n+2])))`
-/

namespace A046931.P13884563869073605812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A151800 (A337767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A046931.P13884563869073605812

/-! ## A046931.P298267608295619408

`A151800(lcm(A054977(n), A144103(n+1)))`
-/

namespace A046931.P298267608295619408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.lcm (A054977 n) (A144103 (n + 1)))

end

end A046931.P298267608295619408

/-! ## A046931.P3125602091862141176

`A151800(A337767(∑[n+2]))+A000007(n)`
-/

namespace A046931.P3125602091862141176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A337767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A000007 n

end

end A046931.P3125602091862141176

/-! ## A046931.P4572013172329824280

`A267133((n+1)²)+A151800(A337767(∑[n+2]))`
-/

namespace A046931.P4572013172329824280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267133 ((n + 1) ^ 2) + A151800 (A337767 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A046931.P4572013172329824280

/-!
# A046932: a(n) = period of x^n + x + 1 over GF(2), i.e., the smallest integer m>0 such that x^n + x + 1 divides x^m + 1 over GF(2).

The programs for A046932, there is no canonical definition to state claims against.
-/

/-! ## A046932.P7167733153755938940

`A108346(or(1, 2^n))`
-/

namespace A046932.P7167733153755938940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108346 (Nat.lor 1 (2 ^ n))

end

end A046932.P7167733153755938940

/-! ## A046932.P2644214153540246961

`A108346(xor(1, 2^n))`
-/

namespace A046932.P2644214153540246961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108346 (Nat.xor 1 (2 ^ n))

end

end A046932.P2644214153540246961

/-! ## A046932.P16201602821300126409

`record[xor(n, n+1)+1-A361236(n+4)]`
-/

namespace A046932.P16201602821300126409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℤ) - A361236 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046932.P16201602821300126409

/-!
# A046933: Number of composites between successive primes.

The programs for A046933, the canonical program `A046933.P9479947770746769512` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046933 has offset 1).

The definition of A046933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046933.P4548613528072303988

`A001223(n+1)-1`
-/

namespace A046933.P4548613528072303988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - 1

end

end A046933.P4548613528072303988

namespace A046933

/-- `A001223(n+1)-1` -/
def P4548613528072303988.Spec : Prop :=
  ∀ n, P4548613528072303988.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P9479947770746769512

`A000040(n+2)-A000040(n+1)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046933

/-- `A000040(n+2)-A000040(n+1)-1` -/
def P9479947770746769512.Spec : Prop :=
  ∀ n, P9479947770746769512.a n = A046933 (n + 1)

theorem P9479947770746769512.correct : P9479947770746769512.Spec := by
  intro n
  simp only [A046933, Nat.add_sub_cancel]

end A046933

/-! ## A046933.P8104606110457211434

`abs(Δ[A330545(n+1)])`
-/

namespace A046933.P8104606110457211434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A046933.P8104606110457211434

namespace A046933

/-- `abs(Δ[A330545(n+1)])` -/
def P8104606110457211434.Spec : Prop :=
  ∀ n, P8104606110457211434.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P6962040848341108548

`sqrt(A076821(n+1))-1`
-/

namespace A046933.P6962040848341108548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ) - 1

end

end A046933.P6962040848341108548

namespace A046933

/-- `sqrt(A076821(n+1))-1` -/
def P6962040848341108548.Spec : Prop :=
  ∀ n, P6962040848341108548.a n = (A046933 (n + 1) : ℝ)

end A046933

/-! ## A046933.P5993861636672290167

`log2(A218075(n+1))-1`
-/

namespace A046933.P5993861636672290167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A218075 (n + 1) : ℝ) - 1

end

end A046933.P5993861636672290167

namespace A046933

/-- `log2(A218075(n+1))-1` -/
def P5993861636672290167.Spec : Prop :=
  ∀ n, P5993861636672290167.a n = (A046933 (n + 1) : ℝ)

end A046933

/-! ## A046933.P16128583214748379121

`(A100803(n+1)-1)/2`
-/

namespace A046933.P16128583214748379121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100803 (n + 1) - 1 : ℚ) / 2

end

end A046933.P16128583214748379121

namespace A046933

/-- `(A100803(n+1)-1)/2` -/
def P16128583214748379121.Spec : Prop :=
  ∀ n, P16128583214748379121.a n = (A046933 (n + 1) : ℚ)

end A046933

/-! ## A046933.P9192752802135688121

`1-A147965(n+1)+n`
-/

namespace A046933.P9192752802135688121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A147965 (n + 1) + (n : ℤ)

end

end A046933.P9192752802135688121

namespace A046933

/-- `1-A147965(n+1)+n` -/
def P9192752802135688121.Spec : Prop :=
  ∀ n, P9192752802135688121.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P15602117589532958511

`A147966(n+1)-(n+1)`
-/

namespace A046933.P15602117589532958511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147966 (n + 1) - (n + 1 : ℤ)

end

end A046933.P15602117589532958511

namespace A046933

/-- `A147966(n+1)-(n+1)` -/
def P15602117589532958511.Spec : Prop :=
  ∀ n, P15602117589532958511.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P17124361358837300250

`A123128(n+1)-(n+2)`
-/

namespace A046933.P17124361358837300250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1) - (n + 2 : ℤ)

end

end A046933.P17124361358837300250

namespace A046933

/-- `A123128(n+1)-(n+2)` -/
def P17124361358837300250.Spec : Prop :=
  ∀ n, P17124361358837300250.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P4374077705378304989

`A147967(n+1)/(n+1)`
-/

namespace A046933.P4374077705378304989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147967 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A046933.P4374077705378304989

namespace A046933

/-- `A147967(n+1)/(n+1)` -/
def P4374077705378304989.Spec : Prop :=
  ∀ n, P4374077705378304989.a n = (A046933 (n + 1) : ℚ)

end A046933

/-! ## A046933.P11477613920308774266

`A036263(n)+a(n-1)` with `a(0)=0`
-/

namespace A046933.P11477613920308774266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A036263 n + a (n - 1)

end

end A046933.P11477613920308774266

namespace A046933

/-- `A036263(n)+a(n-1)` -/
def P11477613920308774266.Spec : Prop :=
  ∀ n, P11477613920308774266.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P12209830669711126958

`A141042(n+1)/(n+1)-1`
-/

namespace A046933.P12209830669711126958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A046933.P12209830669711126958

namespace A046933

/-- `A141042(n+1)/(n+1)-1` -/
def P12209830669711126958.Spec : Prop :=
  ∀ n, P12209830669711126958.a n = (A046933 (n + 1) : ℚ)

end A046933

/-! ## A046933.P16943403898315218820

`A159461(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A046933.P16943403898315218820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A159461 (n + 1) - a (n - 1)

end

end A046933.P16943403898315218820

namespace A046933

/-- `A159461(n+1)-a(n-1)` -/
def P16943403898315218820.Spec : Prop :=
  ∀ n, P16943403898315218820.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P14631620544853215550

`A004524(A100803(n+1))`
-/

namespace A046933.P14631620544853215550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A100803 (n + 1)).toNat

end

end A046933.P14631620544853215550

namespace A046933

/-- `A004524(A100803(n+1))` -/
def P14631620544853215550.Spec : Prop :=
  ∀ n, P14631620544853215550.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P7094218164301851477

`A033270(A082910(n+1))`
-/

namespace A046933.P7094218164301851477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A082910 (n + 1)).toNat

end

end A046933.P7094218164301851477

namespace A046933

/-- `A033270(A082910(n+1))` -/
def P7094218164301851477.Spec : Prop :=
  ∀ n, P7094218164301851477.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P6817239605012476523

`A057918(A076821(n+1))`
-/

namespace A046933.P6817239605012476523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A076821 (n + 1)).toNat

end

end A046933.P6817239605012476523

namespace A046933

/-- `A057918(A076821(n+1))` -/
def P6817239605012476523.Spec : Prop :=
  ∀ n, P6817239605012476523.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P18294829876226806077

`A082375(A074927(n+1))`
-/

namespace A046933.P18294829876226806077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A074927 (n + 1)).toNat

end

end A046933.P18294829876226806077

namespace A046933

/-- `A082375(A074927(n+1))` -/
def P18294829876226806077.Spec : Prop :=
  ∀ n, P18294829876226806077.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P1512133061217643484

`A279119(2*A001223(n+1))`
-/

namespace A046933.P1512133061217643484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (2 * A001223 (n + 1)).toNat

end

end A046933.P1512133061217643484

namespace A046933

/-- `A279119(2*A001223(n+1))` -/
def P1512133061217643484.Spec : Prop :=
  ∀ n, P1512133061217643484.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P5631891788371602493

`A330492(2*A001223(n+1))`
-/

namespace A046933.P5631891788371602493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330492 (2 * A001223 (n + 1)).toNat

end

end A046933.P5631891788371602493

namespace A046933

/-- `A330492(2*A001223(n+1))` -/
def P5631891788371602493.Spec : Prop :=
  ∀ n, P5631891788371602493.a n = A046933 (n + 1)

end A046933

/-! ## A046933.P14915690223959743205

`A075527(n)-A230846(n+1)`
-/

namespace A046933.P14915690223959743205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n - A230846 (n + 1)

end

end A046933.P14915690223959743205

namespace A046933

/-- `A075527(n)-A230846(n+1)` -/
def P14915690223959743205.Spec : Prop :=
  ∀ n, P14915690223959743205.a n = A046933 (n + 1)

end A046933

/-!
# A046934: Same rule as Aitken triangle (A011971) except a(0,0)=1, a(1,0)=0.

The programs for A046934, there is no canonical definition to state claims against.
-/

/-! ## A046934.P16792802894452656172

`A011971(n)-A046936(n)`
-/

namespace A046934.P16792802894452656172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 n - A046936 n

end

end A046934.P16792802894452656172

/-! ## A046934.P3138024691016182374

`A046937(n)-2*A046936(n)`
-/

namespace A046934.P3138024691016182374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 n - 2 * A046936 n

end

end A046934.P3138024691016182374

/-! ## A046934.P3307509155934373014

`A011971(n)+A011971(n)-A046937(n)`
-/

namespace A046934.P3307509155934373014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 n + (A011971 n - A046937 n)

end

end A046934.P3307509155934373014

/-! ## A046934.P7867057520862826541

`2*A011971(n)-A046937(n)`
-/

namespace A046934.P7867057520862826541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011971 n - A046937 n

end

end A046934.P7867057520862826541

/-! ## A046934.P10628637682420760281

`2*A123346(A061579(n))-A046937(n)`
-/

namespace A046934.P10628637682420760281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123346 (A061579 n).toNat - A046937 n

end

end A046934.P10628637682420760281

/-! ## A046934.P15572863721051514319

`Δ[A011972(n)]-A046936(n)`
-/

namespace A046934.P15572863721051514319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046936 n

end

end A046934.P15572863721051514319

/-!
# A046935: Sequence formed from rows of triangle A046934.

The programs for A046935, the canonical program `A046935.P2223408723923946287` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046935 has offset 0).

The definition of A046935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046935.P11695431390714479800

`∑[A046934(n)]`
-/

namespace A046935.P11695431390714479800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046935.P11695431390714479800

namespace A046935

/-- `∑[A046934(n)]` -/
def P11695431390714479800.Spec : Prop :=
  ∀ n, P11695431390714479800.a n = A046935 n

end A046935

/-! ## A046935.P2223408723923946287

`a(n-(A003056(n)+1))+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046935

/-- `a(n-(A003056(n)+1))+a(n-1)` -/
def P2223408723923946287.Spec : Prop :=
  ∀ n, (P2223408723923946287.a n : ℤ) = A046935 n

theorem P2223408723923946287.correct : P2223408723923946287.Spec := by
  intro n
  simp only [A046935]

end A046935

/-! ## A046935.P6503883489563563450

`A046934(A014132(n+1))`
-/

namespace A046935.P6503883489563563450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (A014132 (n + 1)).toNat

end

end A046935.P6503883489563563450

namespace A046935

/-- `A046934(A014132(n+1))` -/
def P6503883489563563450.Spec : Prop :=
  ∀ n, P6503883489563563450.a n = A046935 n

end A046935

/-! ## A046935.P13100365016546379122

`A046934(A007401(n+2))`
-/

namespace A046935.P13100365016546379122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (A007401 (n + 2)).toNat

end

end A046935.P13100365016546379122

namespace A046935

/-- `A046934(A007401(n+2))` -/
def P13100365016546379122.Spec : Prop :=
  ∀ n, P13100365016546379122.a n = A046935 n

end A046935

/-! ## A046935.P980306578943949114

`A046934(lt[1, A046899(n)])`
-/

namespace A046935.P980306578943949114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046935.P980306578943949114

namespace A046935

/-- `A046934(lt[1, A046899(n)])` -/
def P980306578943949114.Spec : Prop :=
  ∀ n, P980306578943949114.a n = A046935 n

end A046935

/-! ## A046935.P2345240916855615810

`A046934(lt[1, A046902(n)])`
-/

namespace A046935.P2345240916855615810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046935.P2345240916855615810

namespace A046935

/-- `A046934(lt[1, A046902(n)])` -/
def P2345240916855615810.Spec : Prop :=
  ∀ n, P2345240916855615810.a n = A046935 n

end A046935

/-! ## A046935.P2155169377727068234

`∑[A011971(n)-A046936(n)]`
-/

namespace A046935.P2155169377727068234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 n - A046936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046935.P2155169377727068234

namespace A046935

/-- `∑[A011971(n)-A046936(n)]` -/
def P2155169377727068234.Spec : Prop :=
  ∀ n, P2155169377727068234.a n = A046935 n

end A046935

/-! ## A046935.P7523287004904307725

`∑[2*A011971(n)-A046937(n)]`
-/

namespace A046935.P7523287004904307725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011971 n - A046937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046935.P7523287004904307725

namespace A046935

/-- `∑[2*A011971(n)-A046937(n)]` -/
def P7523287004904307725.Spec : Prop :=
  ∀ n, P7523287004904307725.a n = A046935 n

end A046935

/-! ## A046935.P258602922567622142

`record[A046934(n)]-A046934(n+1)`
-/

namespace A046935.P258602922567622142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A046934 (n + 1)

end

end A046935.P258602922567622142

namespace A046935

/-- `record[A046934(n)]-A046934(n+1)` -/
def P258602922567622142.Spec : Prop :=
  ∀ n, P258602922567622142.a n = A046935 n

end A046935

/-! ## A046935.P3259626508076776659

`∑[Δ[A011972(n)]-A046936(n)]`
-/

namespace A046935.P3259626508076776659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A046936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046935.P3259626508076776659

namespace A046935

/-- `∑[Δ[A011972(n)]-A046936(n)]` -/
def P3259626508076776659.Spec : Prop :=
  ∀ n, P3259626508076776659.a n = A046935 n

end A046935

/-! ## A046935.P5371146858684844858

`A011972(n+1)-A007604(n+1)`
-/

namespace A046935.P5371146858684844858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (n + 1) - A007604 (n + 1)

end

end A046935.P5371146858684844858

namespace A046935

/-- `A011972(n+1)-A007604(n+1)` -/
def P5371146858684844858.Spec : Prop :=
  ∀ n, P5371146858684844858.a n = A046935 n

end A046935

/-!
# A046936: Same rule as Aitken triangle (A011971) except a(0,0)=0, a(1,0)=1.

The programs for A046936, there is no canonical definition to state claims against.
-/

/-! ## A046936.P2335579285625136844

`A011971(n)-A046934(n)`
-/

namespace A046936.P2335579285625136844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 n - A046934 n

end

end A046936.P2335579285625136844

/-! ## A046936.P872768301814696814

`A046937(n)-A011971(n)`
-/

namespace A046936.P872768301814696814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 n - A011971 n

end

end A046936.P872768301814696814

/-! ## A046936.P4845469768237346173

`A046937(n)-A123346(A061579(n))`
-/

namespace A046936.P4845469768237346173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 n - A123346 (A061579 n).toNat

end

end A046936.P4845469768237346173

/-! ## A046936.P18359730640367808148

`Δ[A011972(n)]-A046934(n)`
-/

namespace A046936.P18359730640367808148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046934 n

end

end A046936.P18359730640367808148

/-! ## A046936.P14064171541320767282

`Δ[record[A106436(n)]]-A046934(n)`
-/

namespace A046936.P14064171541320767282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A046934 n

end

end A046936.P14064171541320767282

/-! ## A046936.P3616004618505145216

`A011972(n)+A046937(n)-A011972(n+1)`
-/

namespace A046936.P3616004618505145216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n + (A046937 n - A011972 (n + 1))

end

end A046936.P3616004618505145216

/-! ## A046936.P11320307972179681116

`A011972(n+1)%(A046934(n)+A011972(n))`
-/

namespace A046936.P11320307972179681116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011972 (n + 1)) (A046934 n + A011972 n)

end

end A046936.P11320307972179681116

/-!
# A046937: Triangle read by rows. Same rule as Aitken triangle (A011971) except T(0,0) = 1, T(1,0) = 2.

The programs for A046937, there is no canonical definition to state claims against.
-/

/-! ## A046937.P10032622698988251291

`A046936(n)+A011971(n)`
-/

namespace A046937.P10032622698988251291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 n + A011971 n

end

end A046937.P10032622698988251291

/-! ## A046937.P2213866405242213909

`A046934(n)+2*A046936(n)`
-/

namespace A046937.P2213866405242213909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046934 n + 2 * A046936 n

end

end A046937.P2213866405242213909

/-! ## A046937.P4342061450964779358

`A011971(n)+A011971(n)-A046934(n)`
-/

namespace A046937.P4342061450964779358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 n + (A011971 n - A046934 n)

end

end A046937.P4342061450964779358

/-! ## A046937.P319126916238810436

`2*A011971(n)-A046934(n)`
-/

namespace A046937.P319126916238810436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011971 n - A046934 n

end

end A046937.P319126916238810436

/-! ## A046937.P3219375092031902502

`A046936(n)+Δ[A011972(n)]`
-/

namespace A046937.P3219375092031902502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 n + (f1 (n + 1) - f1 n)

end

end A046937.P3219375092031902502

/-! ## A046937.P1609087707052461867

`2*Δ[A011972(n)]-A046934(n)`
-/

namespace A046937.P1609087707052461867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A046934 n

end

end A046937.P1609087707052461867

/-! ## A046937.P7495481089718339934

`Δ[A046938(n+1)]`
-/

namespace A046937.P7495481089718339934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046937.P7495481089718339934

/-! ## A046937.P1073452570360566536

`A046938(n+2)-A046938(n+1)`
-/

namespace A046937.P1073452570360566536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046938 (n + 2) - A046938 (n + 1)

end

end A046937.P1073452570360566536

/-!
# A046938: Sequence formed from rows of triangle A046937.

The programs for A046938, there is no canonical definition to state claims against.
-/

/-! ## A046938.P174470719549165966

`A046937(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A046938.P174470719549165966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A046937 (n - 2) + a (n - 1)

end

end A046938.P174470719549165966

/-! ## A046938.P3612609783042027626

`record[A046937(A261094(n))]`
-/

namespace A046938.P3612609783042027626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A261094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P3612609783042027626

/-! ## A046938.P2038131016277009748

`record[A046937(n-A026741(n))]`
-/

namespace A046938.P2038131016277009748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 ((n : ℤ) - A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P2038131016277009748

/-! ## A046938.P5709404765985175059

`A046937(eq[0, n*A127648(n)])`
-/

namespace A046938.P5709404765985175059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046938.P5709404765985175059

/-! ## A046938.P3076363845312123709

`A046937(eq[A023531(n), A127648(n)])`
-/

namespace A046938.P3076363845312123709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046938.P3076363845312123709

/-! ## A046938.P7666497839379989286

`A046937(eq[A127648(n)², A127648(n)])`
-/

namespace A046938.P7666497839379989286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046938.P7666497839379989286

/-! ## A046938.P13408896261970901271

`record[Δ[A046937(n)]]`
-/

namespace A046938.P13408896261970901271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P13408896261970901271

/-! ## A046938.P10128202975815429019

`record[Δ[A046936(n)+A011971(n)]]`
-/

namespace A046938.P10128202975815429019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 n + A011971 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P10128202975815429019

/-! ## A046938.P311046472743614835

`record[A046937(n+1)-A046937(n)]`
-/

namespace A046938.P311046472743614835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (n + 1) - A046937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P311046472743614835

/-! ## A046938.P16717031354074008855

`record[A046937(A008611(n+1))]`
-/

namespace A046938.P16717031354074008855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P16717031354074008855

/-! ## A046938.P3215509109310537192

`record[A046937(A263390(n))]`
-/

namespace A046938.P3215509109310537192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A263390 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P3215509109310537192

/-! ## A046938.P2061234611014452707

`record[A046937(A005599(n))]`
-/

namespace A046938.P2061234611014452707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A005599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P2061234611014452707

/-! ## A046938.P10316493762664495019

`record[A046937(A008615(n))]`
-/

namespace A046938.P10316493762664495019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P10316493762664495019

/-! ## A046938.P11928396620861774767

`record[A046937(A080098(n))]`
-/

namespace A046938.P11928396620861774767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A080098 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P11928396620861774767

/-! ## A046938.P17874295761290592781

`record[A046937(A002262(n))]`
-/

namespace A046938.P17874295761290592781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P17874295761290592781

/-! ## A046938.P2668352418348777774

`record[A046937(n-A057944(n))]`
-/

namespace A046938.P2668352418348777774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 ((n : ℤ) - A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046938.P2668352418348777774

/-!
# A046939: "Magic numbers" for the number of neutrons in nucleus.

The programs for A046939, there is no canonical definition to state claims against.
-/

/-! ## A046939.P4828780024021693205

`A352829(3*A080943(n+1))`
-/

namespace A046939.P4828780024021693205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (3 * A080943 (n + 1)).toNat

end

end A046939.P4828780024021693205

/-! ## A046939.P1949907603668025992

`A352829(3*A363690(n+1))`
-/

namespace A046939.P1949907603668025992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352829 (3 * A363690 (n + 1)).toNat

end

end A046939.P1949907603668025992

/-! ## A046939.P15856727382081029099

`A046522(∑[∑[A341208(n+1)]]+1)`
-/

namespace A046939.P15856727382081029099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341208 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046522 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A046939.P15856727382081029099

/-!
# A046940: "Magic numbers" for the number of protons in nucleus.

The programs for A046940, there is no canonical definition to state claims against.
-/

/-! ## A046940.P11393842813593883530

`A046939(n+1)-A004016(A015128(3*(n+1)))`
-/

namespace A046940.P11393842813593883530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046939 (n + 1) - A004016 (A015128 (3 * (n + 1))).toNat

end

end A046940.P11393842813593883530

/-!
# A046942: Numbers k such that k and prime(k) are both palindromes.

The programs for A046942, there is no canonical definition to state claims against.
-/

/-! ## A046942.P13797415636596623593

`A069469(∑[A008314(n)])`
-/

namespace A046942.P13797415636596623593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046942.P13797415636596623593

/-! ## A046942.P16701879864256303127

`A069469(∑[A283983(n)])`
-/

namespace A046942.P16701879864256303127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046942.P16701879864256303127

/-! ## A046942.P13882888485103291943

`A069469(∑[A286892(n)])`
-/

namespace A046942.P13882888485103291943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069469 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046942.P13882888485103291943

/-!
# A046944: Number of self-avoiding walks of length n on the Laves graph.

The programs for A046944, there is no canonical definition to state claims against.
-/

/-! ## A046944.P15283780819514606

`A003945(n)-A368565(A248470(n))`
-/

namespace A046944.P15283780819514606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A368565 (A248470 n).toNat

end

end A046944.P15283780819514606

/-!
# A046945: Number of self-avoiding walks of length n on hypertriangular lattice.

The programs for A046945, there is no canonical definition to state claims against.
-/

/-! ## A046945.P17305423542624959695

`A315187(A052984(n)-A052961(n))`
-/

namespace A046945.P17305423542624959695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 (A052984 n - A052961 n).toNat

end

end A046945.P17305423542624959695

/-!
# A046947: Numbers k such that |sin(k)| (or |tan(k)| or |sec(k)|) decreases monotonically to 0; also |cos(k)| (or |cosec(k)| or |cot(k)|) increases.

The programs for A046947, there is no canonical definition to state claims against.
-/

/-! ## A046947.P17464398937927179005

`A002485(n+1)`
-/

namespace A046947.P17464398937927179005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 (n + 1)

end

end A046947.P17464398937927179005

/-! ## A046947.P15157045664686069833

`∑[abs(Δ[A002485(n)])]`
-/

namespace A046947.P15157045664686069833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046947.P15157045664686069833

/-! ## A046947.P94093876178692325

`record[A002485(abs(1-n))]`
-/

namespace A046947.P94093876178692325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002485 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046947.P94093876178692325

/-! ## A046947.P10261699331828678241

`gcd(A000038(n), A002485(-xor(n, -1)))`
-/

namespace A046947.P10261699331828678241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002485 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A046947.P10261699331828678241

/-! ## A046947.P11674412482696081590

`∑[abs(Δ[record[A057082(n+2)%A057082(n)]])]`
-/

namespace A046947.P11674412482696081590
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057082 (n + 2)) (A057082 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046947.P11674412482696081590

/-!
# A046948: Sizes of successive balls in E_8 lattice.

The programs for A046948, there is no canonical definition to state claims against.
-/

/-! ## A046948.P5692557063419306074

`∑[A004009(n)]`
-/

namespace A046948.P5692557063419306074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046948.P5692557063419306074

/-! ## A046948.P2920984280870201902

`A004009(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A046948.P2920984280870201902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004009 n + a (A023443 n).toNat

end

end A046948.P2920984280870201902

/-! ## A046948.P560259463146714031

`∑[2*A008430(n)-A035016(n)]`
-/

namespace A046948.P560259463146714031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008430 n - A035016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046948.P560259463146714031

/-! ## A046948.P4529038229915652215

`a(n-1)-(A000007(n)-A004009(n))` with `a(0)=1`
-/

namespace A046948.P4529038229915652215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A004009 n)

end

end A046948.P4529038229915652215

/-! ## A046948.P4981617975106327354

`a(n-1)+A004009(n)%A013957(n+1)` with `a(0)=1`
-/

namespace A046948.P4981617975106327354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A004009 n) (A013957 (n + 1))

end

end A046948.P4981617975106327354

/-! ## A046948.P4293068477484162985

`a(n-1)+A014963(12*(n+1))*A004009(n)` with `a(0)=1`
-/

namespace A046948.P4293068477484162985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A014963 (12 * (n + 1)) * A004009 n

end

end A046948.P4293068477484162985

/-! ## A046948.P8613698731447252899

`∑[A023920(9*n)]`
-/

namespace A046948.P8613698731447252899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023920 (9 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046948.P8613698731447252899

/-! ## A046948.P2764405398207685941

`∑[A072839(18*n)]`
-/

namespace A046948.P2764405398207685941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (18 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046948.P2764405398207685941

/-! ## A046948.P5042322602095861446

`or(1, ∑[A072839(A008600(n))])`
-/

namespace A046948.P5042322602095861446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072839 (A008600 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046948.P5042322602095861446

/-! ## A046948.P2777976541951234953

`A028579(16*n)+a(n-1)` with `a(0)=1`
-/

namespace A046948.P2777976541951234953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028579 (16 * n) + a (n - 1)

end

end A046948.P2777976541951234953

/-!
# A046949: Sizes of successive balls in D_4 lattice.

The programs for A046949, there is no canonical definition to state claims against.
-/

/-! ## A046949.P13926972558909693119

`∑[A004011(n)]`
-/

namespace A046949.P13926972558909693119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P13926972558909693119

/-! ## A046949.P9737403196744754345

`∑[abs(A103640(n))]`
-/

namespace A046949.P9737403196744754345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103640 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P9737403196744754345

/-! ## A046949.P14421092275272304

`∑[A000118(2*n)]`
-/

namespace A046949.P14421092275272304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P14421092275272304

/-! ## A046949.P4824196197708870209

`∑[A033999(n)*A103640(n)]`
-/

namespace A046949.P4824196197708870209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A103640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P4824196197708870209

/-! ## A046949.P2938666205243373182

`∑[gcd(A000038(n), A103640(n))]`
-/

namespace A046949.P2938666205243373182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103640 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P2938666205243373182

/-! ## A046949.P6519364063695858270

`∑[lcm(A008904(n), A103640(n))]`
-/

namespace A046949.P6519364063695858270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008904 n) (A103640 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P6519364063695858270

/-! ## A046949.P5389040989239693356

`A000118(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A046949.P5389040989239693356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000118 (8 * n) + a (n - 1)

end

end A046949.P5389040989239693356

/-! ## A046949.P6951241690443951181

`∑[A096727(2*n)]`
-/

namespace A046949.P6951241690443951181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096727 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P6951241690443951181

/-! ## A046949.P13735787409130035473

`∑[A103640(2*n)]`
-/

namespace A046949.P13735787409130035473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103640 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P13735787409130035473

/-! ## A046949.P5313845882699762094

`A096727(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A046949.P5313845882699762094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096727 (n + n) + a (n - 1)

end

end A046949.P5313845882699762094

/-! ## A046949.P547505869902391411

`A103640(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A046949.P547505869902391411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103640 (n + n) + a (n - 1)

end

end A046949.P547505869902391411

/-! ## A046949.P9476787410668930783

`∑[A068073(2*n)*A097057(2*n)]`
-/

namespace A046949.P9476787410668930783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (2 * n) * A097057 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P9476787410668930783

/-! ## A046949.P6747172615393927134

`∑[A097057(4*n)]`
-/

namespace A046949.P6747172615393927134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P6747172615393927134

/-! ## A046949.P15507000883058490725

`∑[A133690(4*n)]`
-/

namespace A046949.P15507000883058490725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133690 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P15507000883058490725

/-! ## A046949.P15404808806953793163

`∑[A228745(2*n)]`
-/

namespace A046949.P15404808806953793163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228745 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P15404808806953793163

/-! ## A046949.P6012688838293326233

`∑[A228746(2*n)]`
-/

namespace A046949.P6012688838293326233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228746 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046949.P6012688838293326233

/-! ## A046949.P16639656286650229152

`A236922(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A046949.P16639656286650229152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236922 (8 * n) + a (n - 1)

end

end A046949.P16639656286650229152

/-! ## A046949.P529656187990228133

`A236923(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A046949.P529656187990228133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236923 (8 * n) + a (n - 1)

end

end A046949.P529656187990228133

/-! ## A046949.P5967061553926412651

`A236924(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A046949.P5967061553926412651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236924 (8 * n) + a (n - 1)

end

end A046949.P5967061553926412651

/-! ## A046949.P5381215387368537762

`A236925(8*n)+a(n-1)` with `a(0)=1`
-/

namespace A046949.P5381215387368537762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A236925 (8 * n) + a (n - 1)

end

end A046949.P5381215387368537762

/-!
# A046950: Square elements of A046949.

The programs for A046950, there is no canonical definition to state claims against.
-/

/-! ## A046950.P6852318349219458850

`∩[A016754(n), A046949(n)]`
-/

namespace A046950.P6852318349219458850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046950.P6852318349219458850

/-! ## A046950.P751425945295027215

`∩[A046949(n), A280321(n)]`
-/

namespace A046950.P751425945295027215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280321 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046950.P751425945295027215

/-! ## A046950.P18002440225499436105

`∩[A075109(n+1), A046949(n)]`
-/

namespace A046950.P18002440225499436105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046950.P18002440225499436105

/-! ## A046950.P3502076220206311300

`∩[A104777(n+1), A046949(n)]`
-/

namespace A046950.P3502076220206311300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046950.P3502076220206311300

/-! ## A046950.P10025049826144992349

`∩[A374289(n+1), A046949(n)]`
-/

namespace A046950.P10025049826144992349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374289 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046950.P10025049826144992349

/-!
# A046951: a(n) is the number of squares dividing n.

The programs for A046951, the canonical program `A046951.P3618498099021746421` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046951 has offset 1).

The definition of A046951 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A056595, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046951.P8858358879305470377

`1+A071325(n+1)`
-/

namespace A046951.P8858358879305470377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A071325 (n + 1)

end

end A046951.P8858358879305470377

namespace A046951

/-- `1+A071325(n+1)` -/
def P8858358879305470377.Spec : Prop :=
  ∀ n, P8858358879305470377.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P3618498099021746421

`A000005(n+1)-A056595(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046951

/-- `A000005(n+1)-A056595(n+1)` -/
def P3618498099021746421.Spec : Prop :=
  ∀ n, P3618498099021746421.a n = A046951 (n + 1)

theorem P3618498099021746421.correct : P3618498099021746421.Spec := by
  intro n
  simp only [A046951, Nat.add_sub_cancel]

end A046951

/-! ## A046951.P407105204060183062

`A278161(A156552(n+1))`
-/

namespace A046951.P407105204060183062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278161 (A156552 (n + 1)).toNat

end

end A046951.P407105204060183062

namespace A046951

/-- `A278161(A156552(n+1))` -/
def P407105204060183062.Spec : Prop :=
  ∀ n, P407105204060183062.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P16034266110336107463

`∏{e}[n+1, floor(#/2)+1]`
-/

namespace A046951.P16034266110336107463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋ + 1)

end

end A046951.P16034266110336107463

namespace A046951

/-- `∏{e}[n+1, floor(#/2)+1]` -/
def P16034266110336107463.Spec : Prop :=
  ∀ n, P16034266110336107463.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P7803366413381666999

`∏{p}[n+1, val(n+1, #²)+1]`
-/

namespace A046951.P7803366413381666999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) (p ^ 2) + 1)

end

end A046951.P7803366413381666999

namespace A046951

/-- `∏{p}[n+1, val(n+1, #²)+1]` -/
def P7803366413381666999.Spec : Prop :=
  ∀ n, (P7803366413381666999.a n : ℤ) = A046951 (n + 1)

end A046951

/-! ## A046951.P5775776829791796620

`∑{d}[n+1, A010052(#)]`
-/

namespace A046951.P5775776829791796620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d

end

end A046951.P5775776829791796620

namespace A046951

/-- `∑{d}[n+1, A010052(#)]` -/
def P5775776829791796620.Spec : Prop :=
  ∀ n, P5775776829791796620.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P4431741344564852037

`1-A338228(n+1)+n`
-/

namespace A046951.P4431741344564852037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A338228 (n + 1) + (n : ℤ)

end

end A046951.P4431741344564852037

namespace A046951

/-- `1-A338228(n+1)+n` -/
def P4431741344564852037.Spec : Prop :=
  ∀ n, P4431741344564852037.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P8488768063329905282

`∑{e}[A293515(n+1), #]+1`
-/

namespace A046951.P8488768063329905282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293515 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1

end

end A046951.P8488768063329905282

namespace A046951

/-- `∑{e}[A293515(n+1), #]+1` -/
def P8488768063329905282.Spec : Prop :=
  ∀ n, (P8488768063329905282.a n : ℤ) = A046951 (n + 1)

end A046951

/-! ## A046951.P357242413489131066

`∑{d}[n+1, A000005(#)%2]`
-/

namespace A046951.P357242413489131066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000005 d) 2

end

end A046951.P357242413489131066

namespace A046951

/-- `∑{d}[n+1, A000005(#)%2]` -/
def P357242413489131066.Spec : Prop :=
  ∀ n, P357242413489131066.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P12586408086602964063

`A000005(A000188(n+1))`
-/

namespace A046951.P12586408086602964063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000188 (n + 1)).toNat

end

end A046951.P12586408086602964063

namespace A046951

/-- `A000005(A000188(n+1))` -/
def P12586408086602964063.Spec : Prop :=
  ∀ n, P12586408086602964063.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P943878192221876742

`A365171(A008833(n+1))`
-/

namespace A046951.P943878192221876742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A008833 (n + 1)).toNat

end

end A046951.P943878192221876742

namespace A046951

/-- `A365171(A008833(n+1))` -/
def P943878192221876742.Spec : Prop :=
  ∀ n, P943878192221876742.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P5914304214056332860

`A322483(A000188(n+1)²)`
-/

namespace A046951.P5914304214056332860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A000188 (n + 1) ^ 2).toNat

end

end A046951.P5914304214056332860

namespace A046951

/-- `A322483(A000188(n+1)²)` -/
def P5914304214056332860.Spec : Prop :=
  ∀ n, P5914304214056332860.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P7318351014501107651

`A000005(sqrt(A008833(n+1)))`
-/

namespace A046951.P7318351014501107651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A046951.P7318351014501107651

namespace A046951

/-- `A000005(sqrt(A008833(n+1)))` -/
def P7318351014501107651.Spec : Prop :=
  ∀ n, P7318351014501107651.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P14520171993100271283

`A000005(A057918(n+1)+1)`
-/

namespace A046951.P14520171993100271283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057918 (n + 1) + 1).toNat

end

end A046951.P14520171993100271283

namespace A046951

/-- `A000005(A057918(n+1)+1)` -/
def P14520171993100271283.Spec : Prop :=
  ∀ n, P14520171993100271283.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P11469188153970768225

`A365171(A336642(n+1)+1)`
-/

namespace A046951.P11469188153970768225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365171 (A336642 (n + 1) + 1).toNat

end

end A046951.P11469188153970768225

namespace A046951

/-- `A365171(A336642(n+1)+1)` -/
def P11469188153970768225.Spec : Prop :=
  ∀ n, P11469188153970768225.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P1476915048785981670

`A000005(A337101(2*(n+1)))`
-/

namespace A046951.P1476915048785981670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A337101 (2 * (n + 1))).toNat

end

end A046951.P1476915048785981670

namespace A046951

/-- `A000005(A337101(2*(n+1)))` -/
def P1476915048785981670.Spec : Prop :=
  ∀ n, P1476915048785981670.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P11314557014652553313

`A028310(n)-A338233(n+1)`
-/

namespace A046951.P11314557014652553313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A338233 (n + 1)

end

end A046951.P11314557014652553313

namespace A046951

/-- `A028310(n)-A338233(n+1)` -/
def P11314557014652553313.Spec : Prop :=
  ∀ n, P11314557014652553313.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P8086884455694552206

`A115362(n)*A298735(n+1)`
-/

namespace A046951.P8086884455694552206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n * A298735 (n + 1)

end

end A046951.P8086884455694552206

namespace A046951

/-- `A115362(n)*A298735(n+1)` -/
def P8086884455694552206.Spec : Prop :=
  ∀ n, P8086884455694552206.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P6698850205941732153

`A056626(n+1)+A056624(n+1)`
-/

namespace A046951.P6698850205941732153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (n + 1) + A056624 (n + 1)

end

end A046951.P6698850205941732153

namespace A046951

/-- `A056626(n+1)+A056624(n+1)` -/
def P6698850205941732153.Spec : Prop :=
  ∀ n, P6698850205941732153.a n = A046951 (n + 1)

end A046951

/-! ## A046951.P4522790023652914149

`A293234(n+1)+A010052(n+1)`
-/

namespace A046951.P4522790023652914149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (n + 1) + A010052 (n + 1)

end

end A046951.P4522790023652914149

namespace A046951

/-- `A293234(n+1)+A010052(n+1)` -/
def P4522790023652914149.Spec : Prop :=
  ∀ n, P4522790023652914149.a n = A046951 (n + 1)

end A046951

/-!
# A046952: Sets record for f(n) = |{(a,b):a*b=n and a|b}|. Also squares of highly composite numbers A002182.

The programs for A046952, there is no canonical definition to state claims against.
-/

/-! ## A046952.P16297713847581849351

`A002182(n+1)²`
-/

namespace A046952.P16297713847581849351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) ^ 2

end

end A046952.P16297713847581849351

/-! ## A046952.P11687174814059304175

`record[A365901(n+1)²]`
-/

namespace A046952.P11687174814059304175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365901 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046952.P11687174814059304175

/-! ## A046952.P12852794099404578387

`(1-A135372(n+1))²`
-/

namespace A046952.P12852794099404578387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A135372 (n + 1)) ^ 2

end

end A046952.P12852794099404578387

/-! ## A046952.P13117604095188694226

`∑[A262501(A028310(n))]²`
-/

namespace A046952.P13117604095188694226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A046952.P13117604095188694226

/-! ## A046952.P12424951391732194802

`(A063072(n+1)-A072824(n+1))²`
-/

namespace A046952.P12424951391732194802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063072 (n + 1) - A072824 (n + 1)) ^ 2

end

end A046952.P12424951391732194802

/-! ## A046952.P4646694636703204019

`(A057428(n)*A135372(n+1)+1)²`
-/

namespace A046952.P4646694636703204019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057428 n * A135372 (n + 1) + 1) ^ 2

end

end A046952.P4646694636703204019

/-! ## A046952.P16949513019809399128

`(A301413(n+1)*A319865(n+1))²`
-/

namespace A046952.P16949513019809399128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A301413 (n + 1) * A319865 (n + 1)) ^ 2

end

end A046952.P16949513019809399128

/-! ## A046952.P3274083149429499096

`(A054481(n+2)*A054482(n+2))²`
-/

namespace A046952.P3274083149429499096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054481 (n + 2) * A054482 (n + 2)) ^ 2

end

end A046952.P3274083149429499096

/-! ## A046952.P3248764086608366205

`(A135372(n+1)-1)*A002182(n+1)`
-/

namespace A046952.P3248764086608366205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135372 (n + 1) - 1) * A002182 (n + 1)

end

end A046952.P3248764086608366205

/-! ## A046952.P15398842543965426969

`A002182(n+1)^A000005(A051888(n))`
-/

namespace A046952.P15398842543965426969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) ^ (A000005 (A051888 n).toNat : ℤ)

end

end A046952.P15398842543965426969

/-! ## A046952.P8662010451854031408

`A002182(n+1)^A000005(A064983(n))`
-/

namespace A046952.P8662010451854031408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) ^ (A000005 (A064983 n).toNat : ℤ)

end

end A046952.P8662010451854031408

/-! ## A046952.P124022601455136246

`(A002110(A108602(n+1))*A301413(n+1))²`
-/

namespace A046952.P124022601455136246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002110 (A108602 (n + 1)).toNat * A301413 (n + 1)) ^ 2

end

end A046952.P124022601455136246

/-! ## A046952.P9657358372641963580

`A002182(n+1)*A002182((n+1)%A246655(n+1))`
-/

namespace A046952.P9657358372641963580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1) * A002182 (Int.tmod (n + 1 : ℤ) (A246655 (n + 1))).toNat

end

end A046952.P9657358372641963580

/-! ## A046952.P18202433872657012199

`lcm(A000005(n+1), A002182(n+1))*A002182(n+1)`
-/

namespace A046952.P18202433872657012199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000005 (n + 1)) (A002182 (n + 1)) : ℤ) * A002182 (n + 1)

end

end A046952.P18202433872657012199

/-! ## A046952.P7431718139326387438

`(A152047(n+1)*A152048(n+1))²`
-/

namespace A046952.P7431718139326387438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152047 (n + 1) * A152048 (n + 1)) ^ 2

end

end A046952.P7431718139326387438

/-! ## A046952.P14478921864775425646

`∩[A097212(n+1), A181804(n+1)]²`
-/

namespace A046952.P14478921864775425646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A046952.P14478921864775425646

/-! ## A046952.P11790163163733159705

`A002182(n+1)^A020639(A061799(n+1))`
-/

namespace A046952.P11790163163733159705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002182 (n + 1) : ℚ) ^ (A020639 (A061799 (n + 1)).toNat : ℤ)

end

end A046952.P11790163163733159705

/-!
# A046953: Numbers k such that 6*k - 1 is composite.

The programs for A046953, the canonical program `A046953.P12772226548913626932` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046953 has offset 1).

The definition of A046953 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046953.P12772226548913626932

`A059324(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A046953

/-- `A059324(n+1)+1` -/
def P12772226548913626932.Spec : Prop :=
  ∀ n, P12772226548913626932.a n = A046953 (n + 1)

theorem P12772226548913626932.correct : P12772226548913626932.Spec := by
  intro n
  simp only [A046953, Nat.add_sub_cancel]

end A046953

/-! ## A046953.P2588138217429265558

`A153245(n+1)-1`
-/

namespace A046953.P2588138217429265558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153245 (n + 1) - 1

end

end A046953.P2588138217429265558

namespace A046953

/-- `A153245(n+1)-1` -/
def P2588138217429265558.Spec : Prop :=
  ∀ n, P2588138217429265558.a n = A046953 (n + 1)

end A046953

/-! ## A046953.P17178865887009766850

`comp[A059325(n+1)]+1`
-/

namespace A046953.P17178865887009766850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A046953.P17178865887009766850

namespace A046953

/-- `comp[A059325(n+1)]+1` -/
def P17178865887009766850.Spec : Prop :=
  ∀ n, (P17178865887009766850.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P7894298598599913538

`(A138685(n+1)+5)/3`
-/

namespace A046953.P7894298598599913538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138685 (n + 1) + 5 : ℚ) / 3

end

end A046953.P7894298598599913538

namespace A046953

/-- `(A138685(n+1)+5)/3` -/
def P7894298598599913538.Spec : Prop :=
  ∀ n, P7894298598599913538.a n = (A046953 (n + 1) : ℚ)

end A046953

/-! ## A046953.P6570344834609326301

`comp[A024898(n+1)-1]+1`
-/

namespace A046953.P6570344834609326301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A046953.P6570344834609326301

namespace A046953

/-- `comp[A024898(n+1)-1]+1` -/
def P6570344834609326301.Spec : Prop :=
  ∀ n, (P6570344834609326301.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P16674067416245700671

`lt[1, A001222(abs(1-6*n))]`
-/

namespace A046953.P16674067416245700671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |1 - (6 * n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046953.P16674067416245700671

namespace A046953

/-- `lt[1, A001222(abs(1-6*n))]` -/
def P16674067416245700671.Spec : Prop :=
  ∀ n, (P16674067416245700671.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P1460486530864595764

`lt[2, A000005(6*n+5)]+1`
-/

namespace A046953.P1460486530864595764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046953.P1460486530864595764

namespace A046953

/-- `lt[2, A000005(6*n+5)]+1` -/
def P1460486530864595764.Spec : Prop :=
  ∀ n, (P1460486530864595764.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P3243782375180918746

`lt[A020639(6*n+11), n+2]+2`
-/

namespace A046953.P3243782375180918746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 11)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A046953.P3243782375180918746

namespace A046953

/-- `lt[A020639(6*n+11), n+2]+2` -/
def P3243782375180918746.Spec : Prop :=
  ∀ n, (P3243782375180918746.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P8753096785065920419

`∪[A060461(n+1), A121765(n+1)]`
-/

namespace A046953.P8753096785065920419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046953.P8753096785065920419

namespace A046953

/-- `∪[A060461(n+1), A121765(n+1)]` -/
def P8753096785065920419.Spec : Prop :=
  ∀ n, (P8753096785065920419.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P452825069197672459

`∪[A199716(n+1), A199717(n+1)]`
-/

namespace A046953.P452825069197672459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046953.P452825069197672459

namespace A046953

/-- `∪[A199716(n+1), A199717(n+1)]` -/
def P452825069197672459.Spec : Prop :=
  ∀ n, (P452825069197672459.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P3987140041945724729

`∪[A060461(n+1), A392115(n+1)]`
-/

namespace A046953.P3987140041945724729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046953.P3987140041945724729

namespace A046953

/-- `∪[A060461(n+1), A392115(n+1)]` -/
def P3987140041945724729.Spec : Prop :=
  ∀ n, (P3987140041945724729.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P3988178559709363771

`A153219(n+1)+A173229(n+1)+1`
-/

namespace A046953.P3988178559709363771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153219 (n + 1) + (A173229 (n + 1) + 1)

end

end A046953.P3988178559709363771

namespace A046953

/-- `A153219(n+1)+A173229(n+1)+1` -/
def P3988178559709363771.Spec : Prop :=
  ∀ n, P3988178559709363771.a n = A046953 (n + 1)

end A046953

/-! ## A046953.P8043350498072673173

`A173231(n+1)-(A153219(n+1)+1)`
-/

namespace A046953.P8043350498072673173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173231 (n + 1) - (A153219 (n + 1) + 1)

end

end A046953.P8043350498072673173

namespace A046953

/-- `A173231(n+1)-(A153219(n+1)+1)` -/
def P8043350498072673173.Spec : Prop :=
  ∀ n, P8043350498072673173.a n = A046953 (n + 1)

end A046953

/-! ## A046953.P5830100314809896985

`A173229(n+1)+A046954(n+2)`
-/

namespace A046953.P5830100314809896985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173229 (n + 1) + A046954 (n + 2)

end

end A046953.P5830100314809896985

namespace A046953

/-- `A173229(n+1)+A046954(n+2)` -/
def P5830100314809896985.Spec : Prop :=
  ∀ n, P5830100314809896985.a n = A046953 (n + 1)

end A046953

/-! ## A046953.P1129337421721710093

`A173231(n+1)-A046954(n+2)`
-/

namespace A046953.P1129337421721710093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173231 (n + 1) - A046954 (n + 2)

end

end A046953.P1129337421721710093

namespace A046953

/-- `A173231(n+1)-A046954(n+2)` -/
def P1129337421721710093.Spec : Prop :=
  ∀ n, P1129337421721710093.a n = A046953 (n + 1)

end A046953

/-! ## A046953.P4967779497888565898

`A020725(A059324(n+1))`
-/

namespace A046953.P4967779497888565898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A059324 (n + 1)).toNat

end

end A046953.P4967779497888565898

namespace A046953

/-- `A020725(A059324(n+1))` -/
def P4967779497888565898.Spec : Prop :=
  ∀ n, P4967779497888565898.a n = A046953 (n + 1)

end A046953

/-! ## A046953.P4477651573669335297

`eq[0, A167020(n+1)]+1`
-/

namespace A046953.P4477651573669335297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046953.P4477651573669335297

namespace A046953

/-- `eq[0, A167020(n+1)]+1` -/
def P4477651573669335297.Spec : Prop :=
  ∀ n, (P4477651573669335297.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P5377914226666670584

`lt[1, A359305(n+1)]+1`
-/

namespace A046953.P5377914226666670584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A046953.P5377914226666670584

namespace A046953

/-- `lt[1, A359305(n+1)]+1` -/
def P5377914226666670584.Spec : Prop :=
  ∀ n, (P5377914226666670584.a n : ℤ) = A046953 (n + 1)

end A046953

/-! ## A046953.P14610197047751317377

`A023443(A153245(n+1))`
-/

namespace A046953.P14610197047751317377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153245 (n + 1)).toNat

end

end A046953.P14610197047751317377

namespace A046953

/-- `A023443(A153245(n+1))` -/
def P14610197047751317377.Spec : Prop :=
  ∀ n, P14610197047751317377.a n = A046953 (n + 1)

end A046953

/-! ## A046953.P9153238281551424320

`lt[A006530(abs(2-12*n)), 2*n]`
-/

namespace A046953.P9153238281551424320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |2 - (12 * n : ℤ)|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046953.P9153238281551424320

namespace A046953

/-- `lt[A006530(abs(2-12*n)), 2*n]` -/
def P9153238281551424320.Spec : Prop :=
  ∀ n, (P9153238281551424320.a n : ℤ) = A046953 (n + 1)

end A046953

/-!
# A046954: Numbers k such that 6*k + 1 is nonprime.

The programs for A046954, the canonical program `A046954.P3746753794890301022` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046954 has offset 1).

The definition of A046954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046954.P14113436301490452341

`comp[A024899(n+1)]`
-/

namespace A046954.P14113436301490452341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A046954.P14113436301490452341

namespace A046954

/-- `comp[A024899(n+1)]` -/
def P14113436301490452341.Spec : Prop :=
  ∀ n, (P14113436301490452341.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P3746753794890301022

`A272902(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046954

/-- `A272902(n+1)-1` -/
def P3746753794890301022.Spec : Prop :=
  ∀ n, P3746753794890301022.a n = A046954 (n + 1)

theorem P3746753794890301022.correct : P3746753794890301022.Spec := by
  intro n
  simp only [A046954, Nat.add_sub_cancel]

end A046954

/-! ## A046954.P694286273819023645

`eq[0, A101264(3*n)]`
-/

namespace A046954.P694286273819023645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046954.P694286273819023645

namespace A046954

/-- `eq[0, A101264(3*n)]` -/
def P694286273819023645.Spec : Prop :=
  ∀ n, (P694286273819023645.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P6646145036123633837

`comp[A153218(n+1)+1]`
-/

namespace A046954.P6646145036123633837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A046954.P6646145036123633837

namespace A046954

/-- `comp[A153218(n+1)+1]` -/
def P6646145036123633837.Spec : Prop :=
  ∀ n, (P6646145036123633837.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P15729802678515946842

`lt[A101264(2*n+n), 1]`
-/

namespace A046954.P15729802678515946842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046954.P15729802678515946842

namespace A046954

/-- `lt[A101264(2*n+n), 1]` -/
def P15729802678515946842.Spec : Prop :=
  ∀ n, (P15729802678515946842.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P15236108588043526266

`comp[comp[A153219(n+1)]+1]`
-/

namespace A046954.P15236108588043526266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153219 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A046954.P15236108588043526266

namespace A046954

/-- `comp[comp[A153219(n+1)]+1]` -/
def P15236108588043526266.Spec : Prop :=
  ∀ n, (P15236108588043526266.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P12439337303347727849

`lt[A020639(6*n+1), n+2]`
-/

namespace A046954.P12439337303347727849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046954.P12439337303347727849

namespace A046954

/-- `lt[A020639(6*n+1), n+2]` -/
def P12439337303347727849.Spec : Prop :=
  ∀ n, (P12439337303347727849.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P12850675947461112515

`∪[A107747(n+1), A171696(n+1)]`
-/

namespace A046954.P12850675947461112515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046954.P12850675947461112515

namespace A046954

/-- `∪[A107747(n+1), A171696(n+1)]` -/
def P12850675947461112515.Spec : Prop :=
  ∀ n, (P12850675947461112515.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P11257068235776352075

`∪[A121763(n+1), A171696(n+1)]`
-/

namespace A046954.P11257068235776352075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046954.P11257068235776352075

namespace A046954

/-- `∪[A121763(n+1), A171696(n+1)]` -/
def P11257068235776352075.Spec : Prop :=
  ∀ n, (P11257068235776352075.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P1940390550950576405

`∪[A171696(n+1), A392113(n+1)]`
-/

namespace A046954.P1940390550950576405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046954.P1940390550950576405

namespace A046954

/-- `∪[A171696(n+1), A392113(n+1)]` -/
def P1940390550950576405.Spec : Prop :=
  ∀ n, (P1940390550950576405.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P11312342065114152599

`eq[1, A005171(6*n+1)]`
-/

namespace A046954.P11312342065114152599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046954.P11312342065114152599

namespace A046954

/-- `eq[1, A005171(6*n+1)]` -/
def P11312342065114152599.Spec : Prop :=
  ∀ n, (P11312342065114152599.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P14436579010108677796

`lt[1, A245838(A028310(n)+n)]`
-/

namespace A046954.P14436579010108677796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046954.P14436579010108677796

namespace A046954

/-- `lt[1, A245838(A028310(n)+n)]` -/
def P14436579010108677796.Spec : Prop :=
  ∀ n, (P14436579010108677796.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P17088510235469425330

`eq[A019426(2*n), A292438(A019426(2*n+1))]`
-/

namespace A046954.P17088510235469425330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A019426 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046954.P17088510235469425330

namespace A046954

/-- `eq[A019426(2*n), A292438(A019426(2*n+1))]` -/
def P17088510235469425330.Spec : Prop :=
  ∀ n, (P17088510235469425330.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P15833695199316779468

`A023443(A272902(n+1))`
-/

namespace A046954.P15833695199316779468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A272902 (n + 1)).toNat

end

end A046954.P15833695199316779468

namespace A046954

/-- `A023443(A272902(n+1))` -/
def P15833695199316779468.Spec : Prop :=
  ∀ n, P15833695199316779468.a n = A046954 (n + 1)

end A046954

/-! ## A046954.P12360582416482384827

`lt[A006530(Δ[A000567(n)]), 2*(n+1)]`
-/

namespace A046954.P12360582416482384827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A046954.P12360582416482384827

namespace A046954

/-- `lt[A006530(Δ[A000567(n)]), 2*(n+1)]` -/
def P12360582416482384827.Spec : Prop :=
  ∀ n, (P12360582416482384827.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P15317714704312748192

`eq[1, A292438(eq[2, A328570(n)])]`
-/

namespace A046954.P15317714704312748192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328570 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046954.P15317714704312748192

namespace A046954

/-- `eq[1, A292438(eq[2, A328570(n)])]` -/
def P15317714704312748192.Spec : Prop :=
  ∀ n, (P15317714704312748192.a n : ℤ) = A046954 (n + 1)

end A046954

/-! ## A046954.P6120392202882932087

`lt[1, A245838(A028310(2*n))]`
-/

namespace A046954.P6120392202882932087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046954.P6120392202882932087

namespace A046954

/-- `lt[1, A245838(A028310(2*n))]` -/
def P6120392202882932087.Spec : Prop :=
  ∀ n, (P6120392202882932087.a n : ℤ) = A046954 (n + 1)

end A046954

/-!
# A046955: Numbers k such that sec(k) decreases monotonically to 1 (or cos(k) increases to 1).

The programs for A046955, there is no canonical definition to state claims against.
-/

/-! ## A046955.P8229347166873004642

`record[C(A141334(n+1)+1, n)]`
-/

namespace A046955.P8229347166873004642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A141334 (n + 1) + 1).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046955.P8229347166873004642

/-! ## A046955.P17009104716232002321

`record[gcd(n+1, A000007(A141335(n+1))+n)]`
-/

namespace A046955.P17009104716232002321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000007 (A141335 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046955.P17009104716232002321

/-! ## A046955.P3658711736004915648

`record[or(n+1, A141334(n+1)+A001489(n))]`
-/

namespace A046955.P3658711736004915648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A141334 (n + 1) + A001489 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046955.P3658711736004915648

/-!
# A046956: Numbers k where tan(k) decreases monotonically to 0 (or cot(k) increases).

The programs for A046956, there is no canonical definition to state claims against.
-/

/-! ## A046956.P14001181301474344925

`A286999(A287022(n))+3*n`
-/

namespace A046956.P14001181301474344925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286999 (A287022 n).toNat + (3 * n : ℤ)

end

end A046956.P14001181301474344925

/-! ## A046956.P11423848500919379988

`A213831(C(A165307(n+2), n))`
-/

namespace A046956.P11423848500919379988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213831 (Nat.choose (A165307 (n + 2)).toNat n)

end

end A046956.P11423848500919379988

/-! ## A046956.P14587198106368106367

`filter[A097545(n+1), A126565(#)]`
-/

namespace A046956.P14587198106368106367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A126565 (f1 j).toNat = 1) n)

end

end A046956.P14587198106368106367

/-! ## A046956.P3631323531426566509

`2*n+1+A034432(A167499(n))+n`
-/

namespace A046956.P3631323531426566509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) + (A034432 (A167499 n).toNat + (n : ℤ))

end

end A046956.P3631323531426566509

/-! ## A046956.P2517508098525201314

`A034432(A167499(n))+A016777(n)`
-/

namespace A046956.P2517508098525201314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034432 (A167499 n).toNat + A016777 n

end

end A046956.P2517508098525201314

/-!
# A046957: Numbers k where cos(k) decreases monotonically to 0.

The programs for A046957, there is no canonical definition to state claims against.
-/

/-! ## A046957.P3571880078353127802

`∑{d}[A004112(A004277(n)), A000010(#)]`
-/

namespace A046957.P3571880078353127802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004112 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A046957.P3571880078353127802

/-! ## A046957.P17020240826382076482

`A004112(comp[2*(n+1)]+1)-A000007(A347180(n+1))`
-/

namespace A046957.P17020240826382076482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - A000007 (A347180 (n + 1)).toNat

end

end A046957.P17020240826382076482

/-! ## A046957.P2503416913622296333

`A004112(A004277(n))+A000007(A347179(n+1))`
-/

namespace A046957.P2503416913622296333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004112 (A004277 n).toNat + A000007 (A347179 (n + 1)).toNat

end

end A046957.P2503416913622296333

/-! ## A046957.P11449722114586463136

`A055029(∑[4*n])+A004112(A004277(n))`
-/

namespace A046957.P11449722114586463136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (∑ j ∈ Finset.range (n + 1), f1 j) + A004112 (A004277 n).toNat

end

end A046957.P11449722114586463136

/-! ## A046957.P12258204749565336782

`A145649(A163592(n+1))+A004112(A004277(n))`
-/

namespace A046957.P12258204749565336782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A163592 (n + 1)).toNat + A004112 (A004277 n).toNat

end

end A046957.P12258204749565336782

/-! ## A046957.P16021609182363471796

`A145649(A055235(n))+A004112(A004277(n))`
-/

namespace A046957.P16021609182363471796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A055235 n).toNat + A004112 (A004277 n).toNat

end

end A046957.P16021609182363471796

/-!
# A046959: Numbers k where sin(k) increases monotonically to 1 (or cosec(k) decreases).

The programs for A046959, there is no canonical definition to state claims against.
-/

/-! ## A046959.P3278601560540480673

`A056737(A151088(n)-A138574(n))`
-/

namespace A046959.P3278601560540480673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A151088 n - A138574 n).toNat

end

end A046959.P3278601560540480673

/-!
# A046961: Bessel function Y_0(n) is a monotonically decreasing positive sequence.

The programs for A046961, the canonical program `A046961.P8490419542689626579` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046961 has offset 0).

The definition of A046961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046961.P8490419542689626579

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=10, a(2)=26, a(3)=29, a(4)=70, a(5)=73, a(6)=117, a(7)=161, a(8)=183, a(9)=893`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046961

/-- `2*a(n-1)-a(n-2)` -/
def P8490419542689626579.Spec : Prop :=
  ∀ n, P8490419542689626579.a n = A046961 n

theorem P8490419542689626579.correct : P8490419542689626579.Spec := by
  intro n
  simp only [A046961]

end A046961

/-!
# A046962: Bessel function |J_0(n)| is a monotonically decreasing positive sequence.

The programs for A046962, there is no canonical definition to state claims against.
-/

/-! ## A046962.P16882954697799821033

`∑[A348008(A071291(n+1))]`
-/

namespace A046962.P16882954697799821033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348008 (A071291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046962.P16882954697799821033

/-! ## A046962.P15005113818923375464

`∑[A327990(5^A187498(n))]`
-/

namespace A046962.P15005113818923375464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327990 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A187498 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046962.P15005113818923375464

/-! ## A046962.P6095580918534036448

`∑[A005408(A071291(n+1)²)]`
-/

namespace A046962.P6095580918534036448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A071291 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046962.P6095580918534036448

/-! ## A046962.P5204968087440376795

`∑[A281680(A346800(n+1)²)]`
-/

namespace A046962.P5204968087440376795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281680 (A346800 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046962.P5204968087440376795

/-! ## A046962.P4035773033795157678

`∑[A291297(A185278(n+3)²)]`
-/

namespace A046962.P4035773033795157678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291297 (A185278 (n + 3) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046962.P4035773033795157678

/-!
# A046963: Bessel function |Y_0(n)| is a monotonically decreasing positive sequence.

The programs for A046963, there is no canonical definition to state claims against.
-/

/-! ## A046963.P13472253005960291545

`∑[A307558(∑[A015867(n+1)])]`
-/

namespace A046963.P13472253005960291545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015867 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046963.P13472253005960291545

/-! ## A046963.P1364525469309254348

`∑[22%A323784(A051288(n))]`
-/

namespace A046963.P1364525469309254348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 22 (A323784 (A051288 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046963.P1364525469309254348

/-! ## A046963.P1861020142984797071

`∑[A307558(A258024(n+1)²)]`
-/

namespace A046963.P1861020142984797071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (A258024 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046963.P1861020142984797071

/-! ## A046963.P16171697489423565523

`∑[A307558(A293698(n+1)²)]`
-/

namespace A046963.P16171697489423565523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (A293698 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046963.P16171697489423565523

/-! ## A046963.P7111171391946173774

`∑[A307558(∑[A062532(n+1)])]`
-/

namespace A046963.P7111171391946173774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062532 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307558 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046963.P7111171391946173774

/-!
# A046964: Sin(n) decreases monotonically to -1.

The programs for A046964, there is no canonical definition to state claims against.
-/

/-! ## A046964.P17707627396527099558

`A385573(∑[n]+1)`
-/

namespace A046964.P17707627396527099558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385573 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A046964.P17707627396527099558

/-! ## A046964.P17122760902562441919

`A229976(2^n)`
-/

namespace A046964.P17122760902562441919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229976 (2 ^ n)

end

end A046964.P17122760902562441919

/-!
# A046965: Cos(a(n)) decreases monotonically to -1.

The programs for A046965, there is no canonical definition to state claims against.
-/

/-! ## A046965.P10711963202293546146

`A046947(floor((n/2)²))-A304362(A008555(2*n+5))`
-/

namespace A046965.P10711963202293546146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 ⌊((n : ℚ) / 2) ^ 2⌋.toNat - A304362 (A008555 (2 * n + 5)).toNat

end

end A046965.P10711963202293546146

/-!
# A046966: a(n) is the smallest number > a(n-1) such that a(1)*a(2)*...*a(n) + 1 is prime.

The programs for A046966, there is no canonical definition to state claims against.
-/

/-! ## A046966.P18398398868617735047

`ratio[A046972(round(sqrt(n²+1)))-1]`
-/

namespace A046966.P18398398868617735047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046972 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A046966.P18398398868617735047

/-! ## A046966.P6239752404632439259

`ceil(ratio[A046972(A028310(n))])`
-/

namespace A046966.P6239752404632439259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046972 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A046966.P6239752404632439259

/-! ## A046966.P15375312458411490388

`ceil(A046972(n+1)/A046972(A028310(n)))`
-/

namespace A046966.P15375312458411490388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046972 (n + 1) : ℚ) / (A046972 (A028310 n).toNat : ℚ)⌉

end

end A046966.P15375312458411490388

/-!
# A046969: Denominators of coefficients in Stirling's expansion for log(Gamma(z)).

The programs for A046969, there is no canonical definition to state claims against.
-/

/-! ## A046969.P4121652631279758947

`A006953(n+1)*A198954(A000217(n))`
-/

namespace A046969.P4121652631279758947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006953 (n + 1) * A198954 (A000217 n).toNat

end

end A046969.P4121652631279758947

/-! ## A046969.P13104953695354220285

`A006953(n+1)*A185782(A000124(n))`
-/

namespace A046969.P13104953695354220285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006953 (n + 1) * A185782 (A000124 n).toNat

end

end A046969.P13104953695354220285

/-! ## A046969.P8896610912782575157

`Δ[n²]*A006953(A025581(∑[n+1]))`
-/

namespace A046969.P8896610912782575157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A006953 (A025581 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A046969.P8896610912782575157

/-! ## A046969.P14006018148860937883

`A006953(n+1)*A059036(A034856(n+1))`
-/

namespace A046969.P14006018148860937883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006953 (n + 1) * A059036 (A034856 (n + 1)).toNat

end

end A046969.P14006018148860937883

/-! ## A046969.P13809108863322650260

`A006953(n+1)*A049615(A000217(2*(n+1)))`
-/

namespace A046969.P13809108863322650260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006953 (n + 1) * A049615 (A000217 (2 * (n + 1))).toNat

end

end A046969.P13809108863322650260

/-! ## A046969.P7615387191886721700

`A006953(n+1)*A283002(A283002(n+1)-n)`
-/

namespace A046969.P7615387191886721700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006953 (n + 1) * A283002 (A283002 (n + 1) - (n : ℤ)).toNat

end

end A046969.P7615387191886721700

/-!
# A046970: Dirichlet inverse of the Jordan function J_2 (A007434).

The programs for A046970, the canonical program `A046970.P18046929235984925317` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046970 has offset 1).

The definition of A046970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A046970.P18046929235984925317

`A023900(n+1)*A048250(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046970

/-- `A023900(n+1)*A048250(n+1)` -/
def P18046929235984925317.Spec : Prop :=
  ∀ n, P18046929235984925317.a n = A046970 (n + 1)

theorem P18046929235984925317.correct : P18046929235984925317.Spec := by
  intro n
  simp only [A046970, Nat.add_sub_cancel]

end A046970

/-! ## A046970.P2111963119478915013

`A076479(n+1)*A322360(n+1)`
-/

namespace A046970.P2111963119478915013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A322360 (n + 1)

end

end A046970.P2111963119478915013

namespace A046970

/-- `A076479(n+1)*A322360(n+1)` -/
def P2111963119478915013.Spec : Prop :=
  ∀ n, P2111963119478915013.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P559151262716175968

`∏{p}[n+1, 1-#²]`
-/

namespace A046970.P559151262716175968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p ^ 2 : ℤ))

end

end A046970.P559151262716175968

namespace A046970

/-- `∏{p}[n+1, 1-#²]` -/
def P559151262716175968.Spec : Prop :=
  ∀ n, P559151262716175968.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P4605343346344056142

`∑{d}[n+1, A334657(#)]`
-/

namespace A046970.P4605343346344056142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A334657 d

end

end A046970.P4605343346344056142

namespace A046970

/-- `∑{d}[n+1, A334657(#)]` -/
def P4605343346344056142.Spec : Prop :=
  ∀ n, P4605343346344056142.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P4750484734430435175

`A076792(∏{p}[n+1, #])`
-/

namespace A046970.P4750484734430435175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076792 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A046970.P4750484734430435175

namespace A046970

/-- `A076792(∏{p}[n+1, #])` -/
def P4750484734430435175.Spec : Prop :=
  ∀ n, P4750484734430435175.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P16588754650709757153

`∑{d}[n+1, #*A055615(#)]`
-/

namespace A046970.P16588754650709757153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A055615 d

end

end A046970.P16588754650709757153

namespace A046970

/-- `∑{d}[n+1, #*A055615(#)]` -/
def P16588754650709757153.Spec : Prop :=
  ∀ n, P16588754650709757153.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P13652548362610413507

`∑{d}[n+1, #²*A008683(#)]`
-/

namespace A046970.P13652548362610413507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℤ) * A008683 d

end

end A046970.P13652548362610413507

namespace A046970

/-- `∑{d}[n+1, #²*A008683(#)]` -/
def P13652548362610413507.Spec : Prop :=
  ∀ n, P13652548362610413507.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P16844598310636490554

`∑{d}[n+1, #*A351654((n+1)/#)]`
-/

namespace A046970.P16844598310636490554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046970.P16844598310636490554

namespace A046970

/-- `∑{d}[n+1, #*A351654((n+1)/#)]` -/
def P16844598310636490554.Spec : Prop :=
  ∀ n, P16844598310636490554.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P15004979807774640067

`A076792(A007947(n+1))`
-/

namespace A046970.P15004979807774640067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076792 (A007947 (n + 1)).toNat

end

end A046970.P15004979807774640067

namespace A046970

/-- `A076792(A007947(n+1))` -/
def P15004979807774640067.Spec : Prop :=
  ∀ n, P15004979807774640067.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P11916206196638681092

`A323399(n+1)-A007434(n+1)`
-/

namespace A046970.P11916206196638681092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323399 (n + 1) - A007434 (n + 1)

end

end A046970.P11916206196638681092

namespace A046970

/-- `A323399(n+1)-A007434(n+1)` -/
def P11916206196638681092.Spec : Prop :=
  ∀ n, P11916206196638681092.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P16392600600982503224

`A117212(n+1)*A300894(n+1)`
-/

namespace A046970.P16392600600982503224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117212 (n + 1) * A300894 (n + 1)

end

end A046970.P16392600600982503224

namespace A046970

/-- `A117212(n+1)*A300894(n+1)` -/
def P16392600600982503224.Spec : Prop :=
  ∀ n, P16392600600982503224.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P11631545661607030242

`A076792((n+1)/A003557(n+1))`
-/

namespace A046970.P11631545661607030242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076792 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A046970.P11631545661607030242

namespace A046970

/-- `A076792((n+1)/A003557(n+1))` -/
def P11631545661607030242.Spec : Prop :=
  ∀ n, P11631545661607030242.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P14671058506874441365

`A189922(n+1)/A351265(n+1)`
-/

namespace A046970.P14671058506874441365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189922 (n + 1) : ℚ) / (A351265 (n + 1) : ℚ)

end

end A046970.P14671058506874441365

namespace A046970

/-- `A189922(n+1)/A351265(n+1)` -/
def P14671058506874441365.Spec : Prop :=
  ∀ n, P14671058506874441365.a n = (A046970 (n + 1) : ℚ)

end A046970

/-! ## A046970.P14182626725492273623

`∑{d}[A062953(n+1), #*A062953(#)]`
-/

namespace A046970.P14182626725492273623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A062953 d

end

end A046970.P14182626725492273623

namespace A046970

/-- `∑{d}[A062953(n+1), #*A062953(#)]` -/
def P14182626725492273623.Spec : Prop :=
  ∀ n, P14182626725492273623.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P3502450149533898964

`A318674(n+1)²-A318675(n+1)²`
-/

namespace A046970.P3502450149533898964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318674 (n + 1) ^ 2 - A318675 (n + 1) ^ 2

end

end A046970.P3502450149533898964

namespace A046970

/-- `A318674(n+1)²-A318675(n+1)²` -/
def P3502450149533898964.Spec : Prop :=
  ∀ n, P3502450149533898964.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P11814177255392572222

`∑{d}[A007947(n+1), #*A023900(n+1)]`
-/

namespace A046970.P11814177255392572222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A023900 (n + 1)

end

end A046970.P11814177255392572222

namespace A046970

/-- `∑{d}[A007947(n+1), #*A023900(n+1)]` -/
def P11814177255392572222.Spec : Prop :=
  ∀ n, P11814177255392572222.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P14759199208306926212

`A000203(∏{p}[n+1, #])*A023900(n+1)`
-/

namespace A046970.P14759199208306926212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n), p) * A023900 (n + 1)

end

end A046970.P14759199208306926212

namespace A046970

/-- `A000203(∏{p}[n+1, #])*A023900(n+1)` -/
def P14759199208306926212.Spec : Prop :=
  ∀ n, P14759199208306926212.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P16833872903546473404

`∑{d}[n+1, A000005(#)*A053822((n+1)/#)]`
-/

namespace A046970.P16833872903546473404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A053822 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046970.P16833872903546473404

namespace A046970

/-- `∑{d}[n+1, A000005(#)*A053822((n+1)/#)]` -/
def P16833872903546473404.Spec : Prop :=
  ∀ n, P16833872903546473404.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P601425185180228617

`∑{d}[n+1, A053191(#)*A063453((n+1)/#)]`
-/

namespace A046970.P601425185180228617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A063453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046970.P601425185180228617

namespace A046970

/-- `∑{d}[n+1, A053191(#)*A063453((n+1)/#)]` -/
def P601425185180228617.Spec : Prop :=
  ∀ n, P601425185180228617.a n = A046970 (n + 1)

end A046970

/-! ## A046970.P4320607040098150065

`∑{d}[n+1, A115224(#)*A189923((n+1)/#)]`
-/

namespace A046970.P4320607040098150065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115224 d * A189923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A046970.P4320607040098150065

namespace A046970

/-- `∑{d}[n+1, A115224(#)*A189923((n+1)/#)]` -/
def P4320607040098150065.Spec : Prop :=
  ∀ n, P4320607040098150065.a n = A046970 (n + 1)

end A046970

/-!
# A046971: Maximal value of number of unitary divisors (see A034444) for integers in binary order range of n.

The programs for A046971, the canonical program `A046971.P1759314852335327146` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046971 has offset 1).

The definition of A046971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046971.P5461410545366151225

`2^A058032(n+1)`
-/

namespace A046971.P5461410545366151225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A058032 (n + 1) : ℤ)

end

end A046971.P5461410545366151225

namespace A046971

/-- `2^A058032(n+1)` -/
def P5461410545366151225.Spec : Prop :=
  ∀ n, P5461410545366151225.a n = (A046971 (n + 1) : ℚ)

end A046971

/-! ## A046971.P1759314852335327146

`∏[char[A045716(n+1)-1]+1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A046971

/-- `∏[char[A045716(n+1)-1]+1]` -/
def P1759314852335327146.Spec : Prop :=
  ∀ n, (P1759314852335327146.a n : ℤ) = A046971 (n + 1)

theorem P1759314852335327146.correct : P1759314852335327146.Spec := by
  intro n
  simp only [A046971, Nat.add_sub_cancel]

end A046971

/-! ## A046971.P15817213401948546638

`A000079(A058032(n+1))`
-/

namespace A046971.P15817213401948546638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A058032 (n + 1)).toNat

end

end A046971.P15817213401948546638

namespace A046971

/-- `A000079(A058032(n+1))` -/
def P15817213401948546638.Spec : Prop :=
  ∀ n, P15817213401948546638.a n = A046971 (n + 1)

end A046971

/-! ## A046971.P13721622662141201498

`2^∑[char[A023443(A045716(n+1))]]`
-/

namespace A046971.P13721622662141201498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045716 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046971.P13721622662141201498

namespace A046971

/-- `2^∑[char[A023443(A045716(n+1))]]` -/
def P13721622662141201498.Spec : Prop :=
  ∀ n, (P13721622662141201498.a n : ℤ) = A046971 (n + 1)

end A046971

/-! ## A046971.P16376943914831666988

`A011782(∑[char[A045716(n+1)-1]]+1)`
-/

namespace A046971.P16376943914831666988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A046971.P16376943914831666988

namespace A046971

/-- `A011782(∑[char[A045716(n+1)-1]]+1)` -/
def P16376943914831666988.Spec : Prop :=
  ∀ n, P16376943914831666988.a n = A046971 (n + 1)

end A046971

/-! ## A046971.P4960238802531824668

`2^A000027(∑[char[A045716(n+1)-1]])`
-/

namespace A046971.P4960238802531824668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000027 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A046971.P4960238802531824668

namespace A046971

/-- `2^A000027(∑[char[A045716(n+1)-1]])` -/
def P4960238802531824668.Spec : Prop :=
  ∀ n, P4960238802531824668.a n = (A046971 (n + 1) : ℚ)

end A046971

/-! ## A046971.P11591351297690084712

`A020639(2*(n+1))^∑[char[A045716(n+1)-1]]`
-/

namespace A046971.P11591351297690084712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046971.P11591351297690084712

namespace A046971

/-- `A020639(2*(n+1))^∑[char[A045716(n+1)-1]]` -/
def P11591351297690084712.Spec : Prop :=
  ∀ n, P11591351297690084712.a n = A046971 (n + 1)

end A046971

/-! ## A046971.P13660083246281465042

`A143095(2*∑[char[A045716(n+1)-1]])`
-/

namespace A046971.P13660083246281465042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (2 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A046971.P13660083246281465042

namespace A046971

/-- `A143095(2*∑[char[A045716(n+1)-1]])` -/
def P13660083246281465042.Spec : Prop :=
  ∀ n, P13660083246281465042.a n = A046971 (n + 1)

end A046971

/-!
# A046972: Primes arising in A046966.

The programs for A046972, there is no canonical definition to state claims against.
-/

/-! ## A046972.P15730894348033788266

`∏[A046966(n+1)]+1`
-/

namespace A046972.P15730894348033788266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046972.P15730894348033788266

/-! ## A046972.P15231173019105822761

`p?[∏[∑[A350844(n)]]+1]`
-/

namespace A046972.P15231173019105822761
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046972.P15231173019105822761

/-! ## A046972.P18073313389634940150

`A151800(∏[A361848(n)])`
-/

namespace A046972.P18073313389634940150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046972.P18073313389634940150

/-!
# A046973: Primes of the form F(i)^3 + F(j)^4, where F() are Fibonacci numbers.

The programs for A046973, there is no canonical definition to state claims against.
-/

/-! ## A046973.P10116916156894507918

`p?[A100291(A225745(n+1))]`
-/

namespace A046973.P10116916156894507918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (A225745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046973.P10116916156894507918

/-! ## A046973.P11155785855934493951

`A100291(A109490(n+2)%A173379(n+1))`
-/

namespace A046973.P11155785855934493951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100291 (Int.tmod (A109490 (n + 2)) (A173379 (n + 1))).toNat

end

end A046973.P11155785855934493951

/-!
# A046974: Partial sums of digits of decimal expansion of Pi.

The programs for A046974, there is no canonical definition to state claims against.
-/

/-! ## A046974.P10582202697703649493

`∑[A000796(n)]`
-/

namespace A046974.P10582202697703649493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P10582202697703649493

/-! ## A046974.P7194495455573402831

`abs(Δ[A396107(n)])`
-/

namespace A046974.P7194495455573402831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A046974.P7194495455573402831

/-! ## A046974.P16675741237333200507

`∑[9-A030644(n)]`
-/

namespace A046974.P16675741237333200507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P16675741237333200507

/-! ## A046974.P6678207860250814823

`∑[sqrt(A072448(n+1))]`
-/

namespace A046974.P6678207860250814823
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P6678207860250814823

/-! ## A046974.P16840226230130395296

`∑[A123152(n+1)-1]`
-/

namespace A046974.P16840226230130395296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P16840226230130395296

/-! ## A046974.P14583502208282536600

`Δ[A227844(n+2)]-1`
-/

namespace A046974.P14583502208282536600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A046974.P14583502208282536600

/-! ## A046974.P2009056048565946109

`∑[A065253(n+1)%10]`
-/

namespace A046974.P2009056048565946109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P2009056048565946109

/-! ## A046974.P12282849637691305761

`∑[A110883(n)-a(n-1)]` with `a(0)=3`
-/

namespace A046974.P12282849637691305761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A110883 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P12282849637691305761

/-! ## A046974.P827468236652128687

`A197563(n)-A046975(n)`
-/

namespace A046974.P827468236652128687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n - A046975 n

end

end A046974.P827468236652128687

/-! ## A046974.P7287309979500899208

`∑[A048766(A261197(n+1))]`
-/

namespace A046974.P7287309979500899208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A261197 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P7287309979500899208

/-! ## A046974.P1842594538718358113

`∑[A187747(n)+A001113(n)]`
-/

namespace A046974.P1842594538718358113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P1842594538718358113

/-! ## A046974.P12059208650634448961

`∑[A073212(n)-A001113(n)]`
-/

namespace A046974.P12059208650634448961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P12059208650634448961

/-! ## A046974.P15438768666480993781

`∑[A054249(n+1)+A033999(n)]`
-/

namespace A046974.P15438768666480993781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P15438768666480993781

/-! ## A046974.P4461397600626915985

`∑[A001355(Δ[n²])]`
-/

namespace A046974.P4461397600626915985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P4461397600626915985

/-! ## A046974.P7762037890960681812

`∑[A110766(Δ[n²])]`
-/

namespace A046974.P7762037890960681812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P7762037890960681812

/-! ## A046974.P16297868775519606204

`∑[A076790(2*n+1)]`
-/

namespace A046974.P16297868775519606204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P16297868775519606204

/-! ## A046974.P1993060371540488157

`∑[dr(A001355(2*n+1))]`
-/

namespace A046974.P1993060371540488157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001355 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P1993060371540488157

/-! ## A046974.P1586500504945343548

`∑[dr(A110766(2*n+1))]`
-/

namespace A046974.P1586500504945343548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A110766 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P1586500504945343548

/-! ## A046974.P3109604417739727095

`A000796(n)+A059582(n)-1`
-/

namespace A046974.P3109604417739727095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + (A059582 n - 1)

end

end A046974.P3109604417739727095

/-! ## A046974.P15430782639782620042

`∑[dr(Δ[A059582(n)])]`
-/

namespace A046974.P15430782639782620042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046974.P15430782639782620042

/-!
# A046975: Partial sums of digits of decimal expansion of e.

The programs for A046975, there is no canonical definition to state claims against.
-/

/-! ## A046975.P16922102671984939610

`∑[A001113(n)]`
-/

namespace A046975.P16922102671984939610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P16922102671984939610

/-! ## A046975.P109585586904877930

`∑[A091131(n)]+1`
-/

namespace A046975.P109585586904877930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A046975.P109585586904877930

/-! ## A046975.P1957655764748114301

`∑[9-A121239(n)]`
-/

namespace A046975.P1957655764748114301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P1957655764748114301

/-! ## A046975.P14636822008076069862

`A197563(n)-A046974(n)`
-/

namespace A046975.P14636822008076069862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197563 n - A046974 n

end

end A046975.P14636822008076069862

/-! ## A046975.P12406587935643299075

`∑[A073212(n)-A000796(n)]`
-/

namespace A046975.P12406587935643299075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P12406587935643299075

/-! ## A046975.P6620875842614953546

`∑[A000796(n)-A187747(n)]`
-/

namespace A046975.P6620875842614953546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P6620875842614953546

/-! ## A046975.P5276873622328364853

`∑[A054977(n)*A091131(n)]`
-/

namespace A046975.P5276873622328364853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A091131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P5276873622328364853

/-! ## A046975.P7643522430526063588

`∑[A123152(n+1)-(A187747(n)+1)]`
-/

namespace A046975.P7643522430526063588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (n + 1) - (A187747 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P7643522430526063588

/-! ## A046975.P16938338938709360237

`∑[A001355(2*(n+1))]`
-/

namespace A046975.P16938338938709360237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P16938338938709360237

/-! ## A046975.P11950358775876833648

`∑[A110779(2*n+1)]`
-/

namespace A046975.P11950358775876833648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P11950358775876833648

/-! ## A046975.P1193260125312075032

`∑[A001355(n+2+n)%17]`
-/

namespace A046975.P1193260125312075032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (n + 2 + n)) 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P1193260125312075032

/-! ## A046975.P16490274072987063640

`A000720(A217329(n+1))`
-/

namespace A046975.P16490274072987063640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A217329 (n + 1)).toNat

end

end A046975.P16490274072987063640

/-! ## A046975.P11254686216546205619

`∑[A095711(∑[n]+1)]`
-/

namespace A046975.P11254686216546205619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P11254686216546205619

/-! ## A046975.P6350081456267013708

`∑[A098363(∑[n])/2]`
-/

namespace A046975.P6350081456267013708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098363 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P6350081456267013708

/-! ## A046975.P13071909589098322026

`∑[A138115(∑[n+1])]`
-/

namespace A046975.P13071909589098322026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138115 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P13071909589098322026

/-! ## A046975.P17057481870119542590

`∑[A098363(∑[n+3])]`
-/

namespace A046975.P17057481870119542590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098363 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046975.P17057481870119542590

/-! ## A046975.P6808783654635081310

`∑{digits}[A011543(n), #]`
-/

namespace A046975.P6808783654635081310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011543 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A046975.P6808783654635081310

/-!
# A046976: Numerators of Taylor series for sec(x) = 1/cos(x).

The programs for A046976, there is no canonical definition to state claims against.
-/

/-! ## A046976.P11034163538337607530

`A099612(2*n)`
-/

namespace A046976.P11034163538337607530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099612 (2 * n)

end

end A046976.P11034163538337607530

/-! ## A046976.P18061825220856718031

`A050970(Δ[n²])`
-/

namespace A046976.P18061825220856718031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050970 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046976.P18061825220856718031

/-! ## A046976.P3440437672720817491

`or(1, A050970(A005408(n)))`
-/

namespace A046976.P3440437672720817491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A050970 (A005408 n).toNat)

end

end A046976.P3440437672720817491

/-! ## A046976.P3256054845480142621

`or(1, A099612(A005843(n)))`
-/

namespace A046976.P3256054845480142621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A099612 (A005843 n).toNat)

end

end A046976.P3256054845480142621

/-!
# A046977: Denominators of Taylor series for sec(x). Also denominators of Taylor series for sech(x) = 1/cosh(x).

The programs for A046977, there is no canonical definition to state claims against.
-/

/-! ## A046977.P6390201657699859836

`A099617(2*n)`
-/

namespace A046977.P6390201657699859836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099617 (2 * n)

end

end A046977.P6390201657699859836

/-! ## A046977.P4262149319905959769

`A004730(2*n)*A046983(2*n)`
-/

namespace A046977.P4262149319905959769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (2 * n) * A046983 (2 * n)

end

end A046977.P4262149319905959769

/-! ## A046977.P1901337906306720802

`A004731(2*n+1)*A046983(2*n)`
-/

namespace A046977.P1901337906306720802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (2 * n + 1) * A046983 (2 * n)

end

end A046977.P1901337906306720802

/-! ## A046977.P16201614564241489451

`A036069(2*n+1)*A046983(2*n)/2`
-/

namespace A046977.P16201614564241489451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (2 * n + 1) * A046983 (2 * n) : ℚ) / 2

end

end A046977.P16201614564241489451

/-! ## A046977.P4153285901661325518

`lcm(A004277(n), A099617(A004277(n)))`
-/

namespace A046977.P4153285901661325518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 n) (A099617 (A004277 n).toNat)

end

end A046977.P4153285901661325518

/-!
# A046978: Numerators of Taylor series for exp(x)*sin(x).

The programs for A046978, the canonical program `A046978.P71107966793699888` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046978 has offset 0).

The definition of A046978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046978.P71107966793699888

`round(sin(n*atan(1)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046978

/-- `round(sin(n*atan(1)))` -/
def P71107966793699888.Spec : Prop :=
  ∀ n, P71107966793699888.a n = A046978 n

theorem P71107966793699888.correct : P71107966793699888.Spec := by
  intro n
  simp only [A046978]

end A046978

/-!
# A046979: Denominators of Taylor series for exp(x)*sin(x).

The programs for A046979, there is no canonical definition to state claims against.
-/

/-! ## A046979.P7327560936737055614

`A090932(lcm(n, A046978(n)))`
-/

namespace A046979.P7327560936737055614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 (Int.lcm (n : ℤ) (A046978 n))

end

end A046979.P7327560936737055614

/-! ## A046979.P17315815443805573061

`A090932(abs(n*A046978(n)))`
-/

namespace A046979.P17315815443805573061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 |(n : ℤ) * A046978 n|.toNat

end

end A046979.P17315815443805573061

/-! ## A046979.P2975429598174918720

`A090932(n*A046978(n)²)`
-/

namespace A046979.P2975429598174918720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 ((n : ℤ) * A046978 n ^ 2).toNat

end

end A046979.P2975429598174918720

/-! ## A046979.P2630106478035586622

`A090932(n*A075553(n)²)`
-/

namespace A046979.P2630106478035586622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 ((n : ℤ) * A075553 n ^ 2).toNat

end

end A046979.P2630106478035586622

/-! ## A046979.P15275699585626117971

`A090932(n)^abs(A046978(n))`
-/

namespace A046979.P15275699585626117971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090932 n : ℚ) ^ (|A046978 n| : ℤ)

end

end A046979.P15275699585626117971

/-! ## A046979.P1482342187615036962

`A090932(n)^A075553(n)²`
-/

namespace A046979.P1482342187615036962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090932 n : ℚ) ^ (A075553 n ^ 2 : ℤ)

end

end A046979.P1482342187615036962

/-! ## A046979.P17984970525361020610

`A090932(n*and(1, A075553(n)))`
-/

namespace A046979.P17984970525361020610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 ((n : ℤ) * Int.land 1 (A075553 n)).toNat

end

end A046979.P17984970525361020610

/-! ## A046979.P14031172273524718430

`∏[val(A052957(n), 2)]^A046978(n)²`
-/

namespace A046979.P14031172273524718430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052957 n).toNat 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A046978 n ^ 2 : ℤ)

end

end A046979.P14031172273524718430

/-!
# A046980: Numerators of Taylor series for exp(x)*cos(x).

The programs for A046980, the canonical program `A046980.P12330990393226196098` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046980 has offset 0).

The definition of A046980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046980.P12330990393226196098

`round(cos(n*atan(1)))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046980

/-- `round(cos(n*atan(1)))` -/
def P12330990393226196098.Spec : Prop :=
  ∀ n, P12330990393226196098.a n = A046980 n

theorem P12330990393226196098.correct : P12330990393226196098.Spec := by
  intro n
  simp only [A046980]

end A046980

/-!
# A046981: Denominators of Taylor series for exp(x)*cos(x).

The programs for A046981, there is no canonical definition to state claims against.
-/

/-! ## A046981.P17943311302845579212

`A090932(lcm(n, A046980(n)))`
-/

namespace A046981.P17943311302845579212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 (Int.lcm (n : ℤ) (A046980 n))

end

end A046981.P17943311302845579212

/-! ## A046981.P7192538604106205190

`A090932(abs(n*A046980(n)))`
-/

namespace A046981.P7192538604106205190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 |(n : ℤ) * A046980 n|.toNat

end

end A046981.P7192538604106205190

/-! ## A046981.P5499348271142938178

`A090932(n*A046980(n)²)`
-/

namespace A046981.P5499348271142938178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 ((n : ℤ) * A046980 n ^ 2).toNat

end

end A046981.P5499348271142938178

/-! ## A046981.P9430918154648989905

`A090932(n)^abs(A046980(n))`
-/

namespace A046981.P9430918154648989905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090932 n : ℚ) ^ (|A046980 n| : ℤ)

end

end A046981.P9430918154648989905

/-! ## A046981.P2029187389591533283

`A090932(and(n, abs(A189442(n+1))))`
-/

namespace A046981.P2029187389591533283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 (Int.land (n : ℤ) |A189442 (n + 1)|).toNat

end

end A046981.P2029187389591533283

/-! ## A046981.P10656321204521288173

`∏[gcd(n, A179865(n+1))]^A046980(n)²`
-/

namespace A046981.P10656321204521288173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A179865 (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (A046980 n ^ 2 : ℤ)

end

end A046981.P10656321204521288173

/-! ## A046981.P17810609107925917916

`A090932(n*A046980(n)*A046980(n))`
-/

namespace A046981.P17810609107925917916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 ((n : ℤ) * A046980 n * A046980 n).toNat

end

end A046981.P17810609107925917916

/-! ## A046981.P13685780799917101665

`A090932(n%A046979(n+2))`
-/

namespace A046981.P13685780799917101665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 (Int.tmod (n : ℤ) (A046979 (n + 2))).toNat

end

end A046981.P13685780799917101665

/-! ## A046981.P5512064076278764238

`gcd(A007452(n), A046979(n+2))`
-/

namespace A046981.P5512064076278764238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007452 n) (A046979 (n + 2))

end

end A046981.P5512064076278764238

/-! ## A046981.P9355088899648670895

`A000142(n)/gcd(A000142(n), A146559(n))`
-/

namespace A046981.P9355088899648670895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A146559 n) : ℚ)

end

end A046981.P9355088899648670895

/-!
# A046982: Numerators of Taylor series for tan(x + Pi/4).

The programs for A046982, there is no canonical definition to state claims against.
-/

/-! ## A046982.P14512128615236731522

`lcm(A066532(n+1)*A099612(n), A001316(n))`
-/

namespace A046982.P14512128615236731522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066532 (n + 1) * A099612 n) (A001316 n)

end

end A046982.P14512128615236731522

/-! ## A046982.P5869041797356679786

`lcm(A048896(n), A099612(n))*A066532(n+1)`
-/

namespace A046982.P5869041797356679786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048896 n) (A099612 n) : ℤ) * A066532 (n + 1)

end

end A046982.P5869041797356679786

/-! ## A046982.P7076885738580168898

`A000831(n)/A000142(n)*A046983(n)`
-/

namespace A046982.P7076885738580168898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 n : ℚ) / (A000142 n : ℚ) * (A046983 n : ℚ)

end

end A046982.P7076885738580168898

/-! ## A046982.P3450639890601270792

`A000831(n)/gcd(A000831(n), A001564(n))`
-/

namespace A046982.P3450639890601270792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 n : ℚ) / (Int.gcd (A000831 n) (A001564 n) : ℚ)

end

end A046982.P3450639890601270792

/-! ## A046982.P722345672751706386

`A000831(n)/gcd(A000142(n), A349264(n))`
-/

namespace A046982.P722345672751706386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 n : ℚ) / (Int.gcd (A000142 n) (A349264 n) : ℚ)

end

end A046982.P722345672751706386

/-!
# A046983: Denominators of Taylor series for tan(x + Pi/4).

The programs for A046983, there is no canonical definition to state claims against.
-/

/-! ## A046983.P15962431112222887636

`A049606(n)/gcd(A000111(n), A049606(n))`
-/

namespace A046983.P15962431112222887636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049606 n : ℚ) / (Int.gcd (A000111 n) (A049606 n) : ℚ)

end

end A046983.P15962431112222887636

/-! ## A046983.P5761562811129839168

`gcd(A049606(n), A099617(n))`
-/

namespace A046983.P5761562811129839168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049606 n) (A099617 n)

end

end A046983.P5761562811129839168

/-! ## A046983.P7936093650456794864

`A099617(n)/A004732(n/A093178(n))`
-/

namespace A046983.P7936093650456794864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099617 n : ℚ) / (A004732 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat : ℚ)

end

end A046983.P7936093650456794864

/-! ## A046983.P17029985754822585220

`A000142(n)/A000831(n)*A046982(n)`
-/

namespace A046983.P17029985754822585220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000831 n : ℚ) * (A046982 n : ℚ)

end

end A046983.P17029985754822585220

/-! ## A046983.P2937553028711275797

`gcd(∏[A141459(n)], A050971(n+1))`
-/

namespace A046983.P2937553028711275797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A050971 (n + 1))

end

end A046983.P2937553028711275797

/-! ## A046983.P4535426870407048169

`gcd(A001147(n), A050971(n+1))`
-/

namespace A046983.P4535426870407048169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001147 n) (A050971 (n + 1))

end

end A046983.P4535426870407048169

/-! ## A046983.P13232226949164799570

`A000142(n)/gcd(A000142(n), A349264(n))`
-/

namespace A046983.P13232226949164799570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A349264 n) : ℚ)

end

end A046983.P13232226949164799570

/-!
# A046984: Number of ways to tile a 4 X 3n rectangle with right trominoes.

The programs for A046984, the canonical program `A046984.P5588900763413157066` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046984 has offset 0).

The definition of A046984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046984.P5588900763413157066

`10*a(n-1)-22*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=18`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046984

/-- `10*a(n-1)-22*a(n-2)-4*a(n-3)` -/
def P5588900763413157066.Spec : Prop :=
  ∀ n, P5588900763413157066.a n = A046984 n

theorem P5588900763413157066.correct : P5588900763413157066.Spec := by
  intro n
  simp only [A046984]

end A046984

/-! ## A046984.P3703789105482740761

`A351322(eq[16, 2^(n-C(∑[char[∑[n]]], 2))])`
-/

namespace A046984.P3703789105482740761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A046984.P3703789105482740761

namespace A046984

/-- `A351322(eq[16, 2^(n-C(∑[char[∑[n]]], 2))])` -/
def P3703789105482740761.Spec : Prop :=
  ∀ n, P3703789105482740761.a n = A046984 n

end A046984

/-! ## A046984.P13513397350209557484

`A351322(A155212(n)+12)`
-/

namespace A046984.P13513397350209557484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (A155212 n + 12).toNat

end

end A046984.P13513397350209557484

namespace A046984

/-- `A351322(A155212(n)+12)` -/
def P13513397350209557484.Spec : Prop :=
  ∀ n, P13513397350209557484.a n = A046984 n

end A046984

/-! ## A046984.P13637885133681703101

`A351322(A056000(n)+14)`
-/

namespace A046984.P13637885133681703101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (A056000 n + 14).toNat

end

end A046984.P13637885133681703101

namespace A046984

/-- `A351322(A056000(n)+14)` -/
def P13637885133681703101.Spec : Prop :=
  ∀ n, P13637885133681703101.a n = A046984 n

end A046984

/-! ## A046984.P15976247736043707050

`A351322(A167499(n+3)-1)`
-/

namespace A046984.P15976247736043707050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351322 (A167499 (n + 3) - 1).toNat

end

end A046984.P15976247736043707050

namespace A046984

/-- `A351322(A167499(n+3)-1)` -/
def P15976247736043707050.Spec : Prop :=
  ∀ n, P15976247736043707050.a n = A046984 n

end A046984

/-!
# A046985: Multiply perfect numbers whose average divisor is an integer and divides the number itself.

The programs for A046985, there is no canonical definition to state claims against.
-/

/-! ## A046985.P13509673690028801149

`record[gcd(A331724(n+1), A343344(n))]`
-/

namespace A046985.P13509673690028801149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331724 (n + 1)) (A343344 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046985.P13509673690028801149

/-! ## A046985.P8241332765042185449

`A331724(A101373(n+1)^A196879(n))`
-/

namespace A046985.P8241332765042185449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331724 (SequenceMachineLib.roundAway ((A101373 (n + 1) : ℚ) ^ (A196879 n : ℤ))).toNat

end

end A046985.P8241332765042185449

/-! ## A046985.P2649407309467526273

`A331724(n+1)+A000007(A003724(n))`
-/

namespace A046985.P2649407309467526273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331724 (n + 1) + A000007 (A003724 n).toNat

end

end A046985.P2649407309467526273

/-! ## A046985.P3679890639937831328

`A331724(n+1)+A007949(A001519(n))`
-/

namespace A046985.P3679890639937831328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331724 (n + 1) + A007949 (A001519 n).toNat

end

end A046985.P3679890639937831328

/-! ## A046985.P11614318926110063839

`A331724(n+1)+A000038(A042709(n))`
-/

namespace A046985.P11614318926110063839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331724 (n + 1) + A000038 (A042709 n).toNat

end

end A046985.P11614318926110063839

/-!
# A046986: Multiply perfect numbers that are also harmonic numbers but are not arithmetic numbers.

The programs for A046986, there is no canonical definition to state claims against.
-/

/-! ## A046986.P17878167956415436938

`∩[A325025(n+1), A330533(n+1)]`
-/

namespace A046986.P17878167956415436938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046986.P17878167956415436938

/-! ## A046986.P14357834708582221633

`∩[A007691(n+1), A046999(n+1)]`
-/

namespace A046986.P14357834708582221633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046986.P14357834708582221633

/-! ## A046986.P10267248191614254724

`∩[A046999(n+1), A325025(n+1)]`
-/

namespace A046986.P10267248191614254724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046986.P10267248191614254724

/-! ## A046986.P11771345708577475311

`∩[A046999(n+1), A330533(n+1)]`
-/

namespace A046986.P11771345708577475311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046986.P11771345708577475311

/-! ## A046986.P13833082866102643265

`∩[A046999(n+1), A282775(n+1)]`
-/

namespace A046986.P13833082866102643265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046986.P13833082866102643265

/-!
# A046988: Numerators of zeta(2*n)/Pi^(2*n).

The programs for A046988, there is no canonical definition to state claims against.
-/

/-! ## A046988.P12951579699708324582

`abs(A098087(2*n+1))-A000038(n)`
-/

namespace A046988.P12951579699708324582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A098087 (2 * n + 1)| - A000038 n

end

end A046988.P12951579699708324582

/-! ## A046988.P7290472370113326661

`A033999(n+1)*A098087(2*n+1)`
-/

namespace A046988.P7290472370113326661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A098087 (2 * n + 1)

end

end A046988.P7290472370113326661

/-! ## A046988.P16447489729024736453

`A055975(2*n+3)*A098087(2*n+1)`
-/

namespace A046988.P16447489729024736453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 3) * A098087 (2 * n + 1)

end

end A046988.P16447489729024736453

/-! ## A046988.P2530237866873792251

`or(abs(A098087(2*n+1)), A027641(2*n+1))`
-/

namespace A046988.P2530237866873792251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A098087 (2 * n + 1)| (A027641 (2 * n + 1))

end

end A046988.P2530237866873792251

/-! ## A046988.P13665699907632727664

`or(abs(A098087(2*n+1)), A120082(2*n+1))`
-/

namespace A046988.P13665699907632727664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A098087 (2 * n + 1)| (A120082 (2 * n + 1))

end

end A046988.P13665699907632727664

/-!
# A046989: Denominators of Taylor series expansion in powers of x^2 of log(x/sin x).

The programs for A046989, there is no canonical definition to state claims against.
-/

/-! ## A046989.P13771473597463018164

`(n*A002432(n))^A136400(n)`
-/

namespace A046989.P13771473597463018164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A002432 n : ℚ) ^ (A136400 n : ℤ)

end

end A046989.P13771473597463018164

/-!
# A046990: Numerators of Taylor series for log(1/cos(x)). Also from log(cos(x)).

The programs for A046990, there is no canonical definition to state claims against.
-/

/-! ## A046990.P415057186728167599

`lcm(A276592(A028310(n)), A283301(n))`
-/

namespace A046990.P415057186728167599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A276592 (A028310 n).toNat) (A283301 n)

end

end A046990.P415057186728167599

/-! ## A046990.P10671277993928403718

`∑{p}[A012509(n), #-1]`
-/

namespace A046990.P10671277993928403718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A046990.P10671277993928403718

/-! ## A046990.P17626075385847418013

`A364491(A012509(n)/A000079(n))`
-/

namespace A046990.P17626075385847418013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364491 (SequenceMachineLib.roundAway ((A012509 n : ℚ) / (A000079 n : ℚ))).toNat

end

end A046990.P17626075385847418013

/-!
# A046991: Denominators of Taylor series for log(1/cos(x)). Also from log(cos(x)).

The programs for A046991, there is no canonical definition to state claims against.
-/

/-! ## A046991.P15908917290027299557

`A000523(A000051(n))*A181993(n)`
-/

namespace A046991.P15908917290027299557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A000051 n).toNat * A181993 n

end

end A046991.P15908917290027299557

/-! ## A046991.P8877456851525121251

`A054725(A000079(n))*A181993(n)`
-/

namespace A046991.P8877456851525121251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A000079 n).toNat * A181993 n

end

end A046991.P8877456851525121251

/-! ## A046991.P10002444729677205903

`A070939(A000225(n))*A181993(n)`
-/

namespace A046991.P10002444729677205903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A000225 n).toNat * A181993 n

end

end A046991.P10002444729677205903

/-! ## A046991.P1461899844850162499

`A002487(A095121(n))*A181993(n)`
-/

namespace A046991.P1461899844850162499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A095121 n).toNat * A181993 n

end

end A046991.P1461899844850162499

/-! ## A046991.P15508236089879617664

`A054725(A309016(n+1))*A181993(n)`
-/

namespace A046991.P15508236089879617664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A309016 (n + 1)).toNat * A181993 n

end

end A046991.P15508236089879617664

/-!
# A046992: a(n) = Sum_{k=1..n} pi(k) (cf. A000720).

The programs for A046992, the canonical program `A046992.P14793221918147079562` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046992 has offset 1).

The definition of A046992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046992.P14793221918147079562

`∑[∑[∑{p}[n+1, val(#, n+1)]]]`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046992

/-- `∑[∑[∑{p}[n+1, val(#, n+1)]]]` -/
def P14793221918147079562.Spec : Prop :=
  ∀ n, (P14793221918147079562.a n : ℤ) = A046992 (n + 1)

theorem P14793221918147079562.correct : P14793221918147079562.Spec := by
  intro n
  simp only [A046992, Nat.add_sub_cancel]

end A046992

/-! ## A046992.P17977356741397740647

`∑[∑[∑{p}[n+1, C(#, n+1)]]]`
-/

namespace A046992.P17977356741397740647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.choose p (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P17977356741397740647

namespace A046992

/-- `∑[∑[∑{p}[n+1, C(#, n+1)]]]` -/
def P17977356741397740647.Spec : Prop :=
  ∀ n, (P17977356741397740647.a n : ℤ) = A046992 (n + 1)

end A046992

/-! ## A046992.P8033688878699845971

`∑[∑[∑{p}[n+1, floor(#/(n+1))]]]`
-/

namespace A046992.P8033688878699845971
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P8033688878699845971

namespace A046992

/-- `∑[∑[∑{p}[n+1, floor(#/(n+1))]]]` -/
def P8033688878699845971.Spec : Prop :=
  ∀ n, P8033688878699845971.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P9479718279917789135

`∑[A000720(n+1)]`
-/

namespace A046992.P9479718279917789135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P9479718279917789135

namespace A046992

/-- `∑[A000720(n+1)]` -/
def P9479718279917789135.Spec : Prop :=
  ∀ n, P9479718279917789135.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P9524621131900526545

`A061536(n+1)-1`
-/

namespace A046992.P9524621131900526545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1) - 1

end

end A046992.P9524621131900526545

namespace A046992

/-- `A061536(n+1)-1` -/
def P9524621131900526545.Spec : Prop :=
  ∀ n, P9524621131900526545.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P9777778052687877810

`∑[∑[A010051(n+1)]]`
-/

namespace A046992.P9777778052687877810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P9777778052687877810

namespace A046992

/-- `∑[∑[A010051(n+1)]]` -/
def P9777778052687877810.Spec : Prop :=
  ∀ n, P9777778052687877810.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P2439728274611491888

`∑[A036234(n+1)-1]`
-/

namespace A046992.P2439728274611491888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P2439728274611491888

namespace A046992

/-- `∑[A036234(n+1)-1]` -/
def P2439728274611491888.Spec : Prop :=
  ∀ n, P2439728274611491888.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P17049611692809412593

`∑[A033270(n+1)]+n`
-/

namespace A046992.P17049611692809412593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A046992.P17049611692809412593

namespace A046992

/-- `∑[A033270(n+1)]+n` -/
def P17049611692809412593.Spec : Prop :=
  ∀ n, P17049611692809412593.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P16592861850914381451

`∑[n-A065855(n+1)]`
-/

namespace A046992.P16592861850914381451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P16592861850914381451

namespace A046992

/-- `∑[n-A065855(n+1)]` -/
def P16592861850914381451.Spec : Prop :=
  ∀ n, P16592861850914381451.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P5661243830901169264

`∑[∑[abs(A129950(n+1))]]`
-/

namespace A046992.P5661243830901169264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129950 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P5661243830901169264

namespace A046992

/-- `∑[∑[abs(A129950(n+1))]]` -/
def P5661243830901169264.Spec : Prop :=
  ∀ n, P5661243830901169264.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P4902778949568128084

`∑[∑[char[A006093(n+1)]]]`
-/

namespace A046992.P4902778949568128084
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P4902778949568128084

namespace A046992

/-- `∑[∑[char[A006093(n+1)]]]` -/
def P4902778949568128084.Spec : Prop :=
  ∀ n, (P4902778949568128084.a n : ℤ) = A046992 (n + 1)

end A046992

/-! ## A046992.P5723550036857346414

`A002815(n+1)-(n+1)`
-/

namespace A046992.P5723550036857346414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002815 (n + 1) - (n + 1 : ℤ)

end

end A046992.P5723550036857346414

namespace A046992

/-- `A002815(n+1)-(n+1)` -/
def P5723550036857346414.Spec : Prop :=
  ∀ n, P5723550036857346414.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P5016318222669227834

`∑[∑[1-A005171(n+1)]]`
-/

namespace A046992.P5016318222669227834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P5016318222669227834

namespace A046992

/-- `∑[∑[1-A005171(n+1)]]` -/
def P5016318222669227834.Spec : Prop :=
  ∀ n, P5016318222669227834.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P5429043179452306437

`∑[∑[A080339(n+1)]-1]`
-/

namespace A046992.P5429043179452306437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P5429043179452306437

namespace A046992

/-- `∑[∑[A080339(n+1)]-1]` -/
def P5429043179452306437.Spec : Prop :=
  ∀ n, P5429043179452306437.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P15616593466490390643

`∑[∑[A080545(n+1)]]-1`
-/

namespace A046992.P15616593466490390643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A046992.P15616593466490390643

namespace A046992

/-- `∑[∑[A080545(n+1)]]-1` -/
def P15616593466490390643.Spec : Prop :=
  ∀ n, P15616593466490390643.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P9001229668612689147

`∑[∑[A064911(2*(n+1))]]`
-/

namespace A046992.P9001229668612689147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P9001229668612689147

namespace A046992

/-- `∑[∑[A064911(2*(n+1))]]` -/
def P9001229668612689147.Spec : Prop :=
  ∀ n, P9001229668612689147.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P10180189498602749964

`∑[∑[A353478(2*(n+1))]]`
-/

namespace A046992.P10180189498602749964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353478 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P10180189498602749964

namespace A046992

/-- `∑[∑[A353478(2*(n+1))]]` -/
def P10180189498602749964.Spec : Prop :=
  ∀ n, P10180189498602749964.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P11199499754252723648

`∑[∑[val(A105560(n+1), 2)]]`
-/

namespace A046992.P11199499754252723648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A105560 (n + 1)).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P11199499754252723648

namespace A046992

/-- `∑[∑[val(A105560(n+1), 2)]]` -/
def P11199499754252723648.Spec : Prop :=
  ∀ n, (P11199499754252723648.a n : ℤ) = A046992 (n + 1)

end A046992

/-! ## A046992.P11456004973111158217

`∑[∑[and(1, A061007(n+1))]]`
-/

namespace A046992.P11456004973111158217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A061007 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P11456004973111158217

namespace A046992

/-- `∑[∑[and(1, A061007(n+1))]]` -/
def P11456004973111158217.Spec : Prop :=
  ∀ n, P11456004973111158217.a n = A046992 (n + 1)

end A046992

/-! ## A046992.P18122199587125900882

`∑[∑[and(1, A071574(n+1))]]`
-/

namespace A046992.P18122199587125900882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A071574 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046992.P18122199587125900882

namespace A046992

/-- `∑[∑[and(1, A071574(n+1))]]` -/
def P18122199587125900882.Spec : Prop :=
  ∀ n, P18122199587125900882.a n = A046992 (n + 1)

end A046992

/-!
# A046993: Partial products of pi(n), A000720.

The programs for A046993, there is no canonical definition to state claims against.
-/

/-! ## A046993.P16079830888446717044

`∏[∑[char[p?[2*n+1]-1]]+1]`
-/

namespace A046993.P16079830888446717044
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046993.P16079830888446717044

/-! ## A046993.P8213422186948355745

`a(n-1)*∑[∑{p}[n+1, val(#, n+1)]]` with `a(0)=1`
-/

namespace A046993.P8213422186948355745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046993.P8213422186948355745

/-! ## A046993.P14053744589467805465

`a(n-1)*∑[∑{p}[n+1, C(#, n+1)]]` with `a(0)=1`
-/

namespace A046993.P14053744589467805465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046993.P14053744589467805465

/-! ## A046993.P13751594020196838811

`∏[∑[A080545(n+1)]]`
-/

namespace A046993.P13751594020196838811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046993.P13751594020196838811

/-! ## A046993.P1305352553320718044

`∏[A033270(n+1)+1]`
-/

namespace A046993.P1305352553320718044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046993.P1305352553320718044

/-! ## A046993.P14790257501371052594

`a(n-1)*A000720(n+1)` with `a(0)=1`
-/

namespace A046993.P14790257501371052594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000720 (n + 1)

end

end A046993.P14790257501371052594

/-! ## A046993.P18307204949738009954

`a(n-1)*A230980(n+1)` with `a(0)=1`
-/

namespace A046993.P18307204949738009954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A230980 (n + 1)

end

end A046993.P18307204949738009954

/-! ## A046993.P10370253475244959135

`a(n-1)*A056811((n+1)²)` with `a(0)=1`
-/

namespace A046993.P10370253475244959135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A056811 ((n + 1) ^ 2)

end

end A046993.P10370253475244959135

/-! ## A046993.P17480161218771041524

`∏[∑[char[A006530(2*n+1)-1]]]`
-/

namespace A046993.P17480161218771041524
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A046993.P17480161218771041524

/-!
# A046994: Number of Greek-key tours on a 3 X n board; i.e., self-avoiding walks on a 3 X n grid starting in the top left corner.

The programs for A046994, the canonical program `A046994.P2376737133442274282` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046994 has offset 1).

The definition of A046994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046994.P2376737133442274282

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=17`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046994

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P2376737133442274282.Spec : Prop :=
  ∀ n, P2376737133442274282.a n = A046994 (n + 1)

theorem P2376737133442274282.correct : P2376737133442274282.Spec := by
  intro n
  simp only [A046994, Nat.add_sub_cancel]

end A046994

/-! ## A046994.P8150006404746269532

`A076736(n+2)+2*a(n-1)` with `a(0)=1`
-/

namespace A046994.P8150006404746269532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076736 (n + 2) + 2 * a (n - 1)

end

end A046994.P8150006404746269532

namespace A046994

/-- `A076736(n+2)+2*a(n-1)` -/
def P8150006404746269532.Spec : Prop :=
  ∀ n, P8150006404746269532.a n = A046994 (n + 1)

end A046994

/-! ## A046994.P12807841527466257215

`A378938(A141214(n)+1)`
-/

namespace A046994.P12807841527466257215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A141214 n + 1).toNat

end

end A046994.P12807841527466257215

namespace A046994

/-- `A378938(A141214(n)+1)` -/
def P12807841527466257215.Spec : Prop :=
  ∀ n, P12807841527466257215.a n = A046994 (n + 1)

end A046994

/-! ## A046994.P11662572497852301236

`A378938(A167614(n+1))`
-/

namespace A046994.P11662572497852301236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A167614 (n + 1)).toNat

end

end A046994.P11662572497852301236

namespace A046994

/-- `A378938(A167614(n+1))` -/
def P11662572497852301236.Spec : Prop :=
  ∀ n, P11662572497852301236.a n = A046994 (n + 1)

end A046994

/-!
# A046995: Number of Greek-key tours on a 4 X n board; i.e., self-avoiding walks on 4 X n grid starting in top left corner.

The programs for A046995, there is no canonical definition to state claims against.
-/

/-! ## A046995.P6560126444670016435

`A378938(A141214(n+1))`
-/

namespace A046995.P6560126444670016435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A141214 (n + 1)).toNat

end

end A046995.P6560126444670016435

/-! ## A046995.P1044929611116414285

`A378938(A374004(n+1))`
-/

namespace A046995.P1044929611116414285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A374004 (n + 1)).toNat

end

end A046995.P1044929611116414285

/-! ## A046995.P3578666467999623902

`A378938(A052905(n)+9)`
-/

namespace A046995.P3578666467999623902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A052905 n + 9).toNat

end

end A046995.P3578666467999623902

/-! ## A046995.P14031089975961359421

`A378938(A167614(n+2)+1)`
-/

namespace A046995.P14031089975961359421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A167614 (n + 2) + 1).toNat

end

end A046995.P14031089975961359421

/-! ## A046995.P15499949989396370928

`A378938(A055999(n+1)+3)`
-/

namespace A046995.P15499949989396370928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (A055999 (n + 1) + 3).toNat

end

end A046995.P15499949989396370928

/-!
# A046996: Number of Baxter permutations: A001181/2.

The programs for A046996, there is no canonical definition to state claims against.
-/

/-! ## A046996.P18432379347860778170

`A001181(n+2)/2`
-/

namespace A046996.P18432379347860778170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001181 (n + 2) : ℚ) / 2

end

end A046996.P18432379347860778170

/-! ## A046996.P799941355305954796

`record[A001181(n)/A020639(A005893(n))]`
-/

namespace A046996.P799941355305954796
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001181 n : ℚ) / (A020639 (A005893 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046996.P799941355305954796

/-! ## A046996.P6398854213726959583

`record[A350265(n)/(n+1)]`
-/

namespace A046996.P6398854213726959583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350265 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046996.P6398854213726959583

/-! ## A046996.P8871320240259985890

`A350265(n+2)/(n+3)`
-/

namespace A046996.P8871320240259985890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350265 (n + 2) : ℚ) / (n + 3 : ℚ)

end

end A046996.P8871320240259985890

/-!
# A046997: Number of Baxter permutations: A001183/2.

The programs for A046997, there is no canonical definition to state claims against.
-/

/-! ## A046997.P2324790384787520655

`A001183(n+1)/2`
-/

namespace A046997.P2324790384787520655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001183 (n + 1) : ℚ) / 2

end

end A046997.P2324790384787520655

/-! ## A046997.P10199856219820207954

`A014682(A001183(n+1))`
-/

namespace A046997.P10199856219820207954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A001183 (n + 1)).toNat

end

end A046997.P10199856219820207954

/-! ## A046997.P11571004314092614610

`A273943(lcm(2, A001183(n+1)))`
-/

namespace A046997.P11571004314092614610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A001183 (n + 1)))

end

end A046997.P11571004314092614610

/-! ## A046997.P8897991861166465072

`A273943(A299905(n)+A001183(n+1))`
-/

namespace A046997.P8897991861166465072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A299905 n + A001183 (n + 1)).toNat

end

end A046997.P8897991861166465072

/-! ## A046997.P10633762873972071199

`A273943(A345166(n)+A001183(n+1))`
-/

namespace A046997.P10633762873972071199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A345166 n + A001183 (n + 1)).toNat

end

end A046997.P10633762873972071199

/-!
# A046998: a(n) = 1 - (7/6)*n + (2/3)*n^3 + (1/2)*n^4.

The programs for A046998, the canonical program `A046998.P8818465001963533655` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046998 has offset 0).

The definition of A046998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046998.P8818465001963533655

`1-7/6*n+2/3*n^3+1/2*n^4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A046998

/-- `1-7/6*n+2/3*n^3+1/2*n^4` -/
def P8818465001963533655.Spec : Prop :=
  ∀ n, P8818465001963533655.a n = (A046998 n : ℚ)

end A046998

/-! ## A046998.P10641270089767492740

`∑[abs(1-n*C(2*n, 2))]`
-/

namespace A046998.P10641270089767492740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n * Nat.choose (2 * n) 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046998.P10641270089767492740

namespace A046998

/-- `∑[abs(1-n*C(2*n, 2))]` -/
def P10641270089767492740.Spec : Prop :=
  ∀ n, P10641270089767492740.a n = A046998 n

end A046998

/-! ## A046998.P10593208972944646655

`∑[abs(1-n*A000384(n))]`
-/

namespace A046998.P10593208972944646655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ) * A000384 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046998.P10593208972944646655

namespace A046998

/-- `∑[abs(1-n*A000384(n))]` -/
def P10593208972944646655.Spec : Prop :=
  ∀ n, P10593208972944646655.a n = A046998 n

end A046998

/-! ## A046998.P11923626578573013484

`abs(∑[(A000217(2*n)+1)*(n-1)]+2)`
-/

namespace A046998.P11923626578573013484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n) + 1) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + 2|

end

end A046998.P11923626578573013484

namespace A046998

/-- `abs(∑[(A000217(2*n)+1)*(n-1)]+2)` -/
def P11923626578573013484.Spec : Prop :=
  ∀ n, P11923626578573013484.a n = A046998 n

end A046998

/-! ## A046998.P9371725051291766712

`abs(A023443(n)-A103220(n))`
-/

namespace A046998.P9371725051291766712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A023443 n - A103220 n|

end

end A046998.P9371725051291766712

namespace A046998

/-- `abs(A023443(n)-A103220(n))` -/
def P9371725051291766712.Spec : Prop :=
  ∀ n, P9371725051291766712.a n = A046998 n

end A046998

