import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A121100: Isomers of polyenes attached to benzene (see Cyvin et al. for precise definition).

The programs for A121100, there is no canonical definition to state claims against.
-/

/-! ## A121100.P13212408621941942107

`A121093(n+5)-A121097(n+5)`
-/

namespace A121100.P13212408621941942107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121093 (n + 5) - A121097 (n + 5)

end

end A121100.P13212408621941942107

/-!
# A121101: Catapolyoctagons (see Cyvin et al. for precise definition).

The programs for A121101, there is no canonical definition to state claims against.
-/

/-! ## A121101.P5283094907726744491

`∑[5*a(n-1)]-A121102(n+1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A121101.P5283094907726744491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A121102 (n + 1)

end

end A121101.P5283094907726744491

/-! ## A121101.P4771583421480565754

`A121102(n+1)+A056487((2*n)%(n+1))`
-/

namespace A121101.P4771583421480565754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121102 (n + 1) + A056487 (2 * n % (n + 1))

end

end A121101.P4771583421480565754

/-! ## A121101.P1547657574371164079

`A121102(n+1)+A052126(A056487(n+1))`
-/

namespace A121101.P1547657574371164079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121102 (n + 1) + A052126 (A056487 (n + 1)).toNat

end

end A121101.P1547657574371164079

/-! ## A121101.P11419703818608477516

`A120649(∑[n+1])`
-/

namespace A121101.P11419703818608477516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120649 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121101.P11419703818608477516

/-! ## A121101.P5933195358049349556

`or(1, A120649(A253145(n)))`
-/

namespace A121101.P5933195358049349556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120649 (A253145 n).toNat)

end

end A121101.P5933195358049349556

/-!
# A121102: Catapolyoctagons (see Cyvin et al. for precise definition).

The programs for A121102, there is no canonical definition to state claims against.
-/

/-! ## A121102.P7925991422548048942

`∑[5*a(n-1)]-A121101(n+1)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A121102.P7925991422548048942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A121101 (n + 1)

end

end A121102.P7925991422548048942

/-! ## A121102.P3922737786609377793

`∑[A330607(record[A074067(n+1)])]`
-/

namespace A121102.P3922737786609377793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330607 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121102.P3922737786609377793

/-! ## A121102.P9612520666618606648

`A121101(n+1)-A056487((2*n)%(n+1))`
-/

namespace A121102.P9612520666618606648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121101 (n + 1) - A056487 (2 * n % (n + 1))

end

end A121102.P9612520666618606648

/-! ## A121102.P2333116061306444336

`∑[A330607(5*n+2)]-A330607(5*n+2)`
-/

namespace A121102.P2333116061306444336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330607 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330607 (5 * n + 2)

end

end A121102.P2333116061306444336

/-! ## A121102.P15399966374072866041

`∑[5*a(n-1)]-A120649(∑[n+1])` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A121102.P15399966374072866041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  5 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A120649 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A121102.P15399966374072866041

/-!
# A121104: a(n) = Fibonacci(n - 1) modulo the n-th prime number.

The programs for A121104, the canonical program `A121104.P7697072616591891120` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121104 has offset 2).

The definition of A121104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121104.P17862911928362337854

`∑[A212804(n)]%p?[Δ[n²]]`
-/

namespace A121104.P17862911928362337854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A121104.P17862911928362337854

namespace A121104

/-- `∑[A212804(n)]%p?[Δ[n²]]` -/
def P17862911928362337854.Spec : Prop :=
  ∀ n, P17862911928362337854.a n = A121104 (n + 2)

end A121104

/-! ## A121104.P7697072616591891120

`A000045(n+1)%p?[2*n+1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121104

/-- `A000045(n+1)%p?[2*n+1]` -/
def P7697072616591891120.Spec : Prop :=
  ∀ n, P7697072616591891120.a n = A121104 (n + 2)

theorem P7697072616591891120.correct : P7697072616591891120.Spec := by
  intro n
  simp only [A121104, Nat.add_sub_cancel]

end A121104

/-! ## A121104.P2246937168651643691

`A000045(n+1)%A065091(n+1)`
-/

namespace A121104.P2246937168651643691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (A065091 (n + 1))

end

end A121104.P2246937168651643691

namespace A121104

/-- `A000045(n+1)%A065091(n+1)` -/
def P2246937168651643691.Spec : Prop :=
  ∀ n, P2246937168651643691.a n = A121104 (n + 2)

end A121104

/-! ## A121104.P11697900398016772342

`A212804(n+2)%A000040(n+2)`
-/

namespace A121104.P11697900398016772342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212804 (n + 2)) (A000040 (n + 2))

end

end A121104.P11697900398016772342

namespace A121104

/-- `A212804(n+2)%A000040(n+2)` -/
def P11697900398016772342.Spec : Prop :=
  ∀ n, P11697900398016772342.a n = A121104 (n + 2)

end A121104

/-! ## A121104.P16376215231400492048

`A272912(2*n+1)%A000040(n+2)`
-/

namespace A121104.P16376215231400492048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272912 (2 * n + 1)) (A000040 (n + 2))

end

end A121104.P16376215231400492048

namespace A121104

/-- `A272912(2*n+1)%A000040(n+2)` -/
def P16376215231400492048.Spec : Prop :=
  ∀ n, P16376215231400492048.a n = A121104 (n + 2)

end A121104

/-! ## A121104.P7539036452882237111

`A000045(A028310(n+1))%A207790(2*n+4)`
-/

namespace A121104.P7539036452882237111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A028310 (n + 1)).toNat) (A207790 (2 * n + 4))

end

end A121104.P7539036452882237111

namespace A121104

/-- `A000045(A028310(n+1))%A207790(2*n+4)` -/
def P7539036452882237111.Spec : Prop :=
  ∀ n, P7539036452882237111.a n = A121104 (n + 2)

end A121104

/-! ## A121104.P5540422883156503178

`A123231(2*n+1)%A000040(n+2)`
-/

namespace A121104.P5540422883156503178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123231 (2 * n + 1)) (A000040 (n + 2))

end

end A121104.P5540422883156503178

namespace A121104

/-- `A123231(2*n+1)%A000040(n+2)` -/
def P5540422883156503178.Spec : Prop :=
  ∀ n, P5540422883156503178.a n = A121104 (n + 2)

end A121104

/-! ## A121104.P10121713861849309819

`A163227(2*n+1)%A000040(n+2)`
-/

namespace A121104.P10121713861849309819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163227 (2 * n + 1)) (A000040 (n + 2))

end

end A121104.P10121713861849309819

namespace A121104

/-- `A163227(2*n+1)%A000040(n+2)` -/
def P10121713861849309819.Spec : Prop :=
  ∀ n, P10121713861849309819.a n = A121104 (n + 2)

end A121104

/-!
# A121112: Edge-rooted tree-like octagonal systems (see the Cyvin et al. reference for precise definition).

The programs for A121112, there is no canonical definition to state claims against.
-/

/-! ## A121112.P8705472095534282257

`5*A020995(A007097(n))`
-/

namespace A121112.P8705472095534282257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A020995 (A007097 n).toNat

end

end A121112.P8705472095534282257

/-!
# A121113: Edge-rooted tree-like octagonal systems (see the Cyvin et al. reference for precise definition).

The programs for A121113, there is no canonical definition to state claims against.
-/

/-! ## A121113.P15805278752610145297

`6*A121115(round(sqrt(n²+1)))`
-/

namespace A121113.P15805278752610145297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A121115 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A121113.P15805278752610145297

/-!
# A121114: Edge-rooted tree-like octagonal systems (see the Cyvin et al. reference for precise definition).

The programs for A121114, there is no canonical definition to state claims against.
-/

/-! ## A121114.P3760796596484390634

`A121116(floor(acot(n)+n))`
-/

namespace A121114.P3760796596484390634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121116 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A121114.P3760796596484390634

/-! ## A121114.P7945273107634582018

`A121116(round(acot(n)+n))`
-/

namespace A121114.P7945273107634582018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121116 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A121114.P7945273107634582018

/-! ## A121114.P8081737166109724935

`A121116(or(n, floor(acot(n))))`
-/

namespace A121114.P8081737166109724935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121116 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A121114.P8081737166109724935

/-! ## A121114.P14154165399502973119

`A121116(xor(n, floor(acot(n))))`
-/

namespace A121114.P14154165399502973119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121116 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A121114.P14154165399502973119

/-! ## A121114.P8858774834671181943

`A121116(abs(1-n)+1)`
-/

namespace A121114.P8858774834671181943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121116 (|1 - (n : ℤ)| + 1).toNat

end

end A121114.P8858774834671181943

/-!
# A121115: Related to enumeration of rooted catapolyoctagons (see Cyvin reference for precise definition).

The programs for A121115, there is no canonical definition to state claims against.
-/

/-! ## A121115.P9448551716619923908

`A121113(n+2)/6`
-/

namespace A121115.P9448551716619923908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121113 (n + 2) : ℚ) / 6

end

end A121115.P9448551716619923908

/-! ## A121115.P4774225013641661997

`∑[A093411(Δ[A121113(n+1)])]`
-/

namespace A121115.P4774225013641661997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121115.P4774225013641661997

/-!
# A121116: Related to enumeration of rooted catapolyoctagons (see Cyvin reference for precise definition).

The programs for A121116, there is no canonical definition to state claims against.
-/

/-! ## A121116.P7927767204629745659

`A121114(n+2)`
-/

namespace A121116.P7927767204629745659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121114 (n + 2)

end

end A121116.P7927767204629745659

/-! ## A121116.P13449530483069936927

`A036758(n+2)-(A121113(n+2)+A121112(n+2))`
-/

namespace A121116.P13449530483069936927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036758 (n + 2) - (A121113 (n + 2) + A121112 (n + 2))

end

end A121116.P13449530483069936927

/-!
# A121117: Related to enumeration of rooted catapolyoctagons (see Cyvin reference for precise definition).

The programs for A121117, there is no canonical definition to state claims against.
-/

/-! ## A121117.P3995456579382125704

`A316399(2^n+C(comp[∑[n]]-n, 2)-n)`
-/

namespace A121117.P3995456579382125704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316399 ((2 ^ n : ℤ) + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))).toNat

end

end A121117.P3995456579382125704

/-! ## A121117.P9167230394626332682

`A087086(A213722(n)²)`
-/

namespace A121117.P9167230394626332682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A213722 n ^ 2).toNat

end

end A121117.P9167230394626332682

/-!
# A121119: Related to enumeration of rooted catapolyoctagons (see Cyvin reference for precise definition).

The programs for A121119, there is no canonical definition to state claims against.
-/

/-! ## A121119.P9456315481044165132

`A171164(A204512(n+1))`
-/

namespace A121119.P9456315481044165132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171164 (A204512 (n + 1)).toNat

end

end A121119.P9456315481044165132

/-! ## A121119.P514278154202996962

`∑[A070039(A000593(n!))]`
-/

namespace A121119.P514278154202996962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070039 (A000593 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121119.P514278154202996962

/-! ## A121119.P7581145339008266702

`A025437(or(A006497(n), A114921(n)))`
-/

namespace A121119.P7581145339008266702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (Int.lor (A006497 n) (A114921 n)).toNat

end

end A121119.P7581145339008266702

/-! ## A121119.P8401460791850471922

`A065744(A167606(n+1)+A084175(n))`
-/

namespace A121119.P8401460791850471922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065744 (A167606 (n + 1) + A084175 n).toNat

end

end A121119.P8401460791850471922

/-!
# A121120: Related to enumeration of free catapolyoctagons (see Cyvin reference for precise definition).

The programs for A121120, there is no canonical definition to state claims against.
-/

/-! ## A121120.P11565666973686187805

`A065033(xor(1, round(8*n/3))*A113236(n))`
-/

namespace A121120.P11565666973686187805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.xor 1 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 3))) * A113236 n).toNat

end

end A121120.P11565666973686187805

/-! ## A121120.P10425675501454819450

`A004001(A109613(n)+A015565(n))`
-/

namespace A121120.P10425675501454819450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A109613 n + A015565 n).toNat

end

end A121120.P10425675501454819450

/-!
# A121121: Related to enumeration of free catapolyoctagons (see Cyvin reference for precise definition).

The programs for A121121, there is no canonical definition to state claims against.
-/

/-! ## A121121.P16044768496183788879

`A151664(A005649(n))-A283528(n+1)`
-/

namespace A121121.P16044768496183788879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151664 (A005649 n).toNat - A283528 (n + 1)

end

end A121121.P16044768496183788879

/-!
# A121122: Related to enumeration of free catapolyoctagons (see Cyvin reference for precise definition).

The programs for A121122, there is no canonical definition to state claims against.
-/

/-! ## A121122.P7460770360431346473

`(A036758(n+1)-A036759(n+1))/2`
-/

namespace A121122.P7460770360431346473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036758 (n + 1) - A036759 (n + 1) : ℚ) / 2

end

end A121122.P7460770360431346473

/-! ## A121122.P14064178989974371029

`(A121112(n+2)/5-A036759(n+1))/2`
-/

namespace A121122.P14064178989974371029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A121112 (n + 2) : ℚ) / 5 - (A036759 (n + 1) : ℚ)) / 2

end

end A121122.P14064178989974371029

/-! ## A121122.P8411859217214077796

`(2*A036759(2*(n+1))-A036759(2*n+1)-A036759(n+1))/2`
-/

namespace A121122.P8411859217214077796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A036759 (2 * (n + 1)) - A036759 (2 * n + 1) - A036759 (n + 1) : ℚ) / 2

end

end A121122.P8411859217214077796

/-!
# A121123: Unbranched a-4-catapolynonagons (see Brunvoll reference for precise definition).

The programs for A121123, the canonical program `A121123.P6089435262329098793` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121123 has offset 2).

The definition of A121123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121123.P6089435262329098793

`6*a(n-1)+6*a(n-2)-36*a(n-3)` with `a(0)=1, a(1)=3, a(2)=12, a(3)=63`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121123

/-- `6*a(n-1)+6*a(n-2)-36*a(n-3)` -/
def P6089435262329098793.Spec : Prop :=
  ∀ n, P6089435262329098793.a n = A121123 (n + 2)

theorem P6089435262329098793.correct : P6089435262329098793.Spec := by
  intro n
  simp only [A121123, Nat.add_sub_cancel]

end A121123

/-! ## A121123.P5921817239336398699

`(A081341(n)+A026532(n+1))/2`
-/

namespace A121123.P5921817239336398699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081341 n + A026532 (n + 1) : ℚ) / 2

end

end A121123.P5921817239336398699

namespace A121123

/-- `(A081341(n)+A026532(n+1))/2` -/
def P5921817239336398699.Spec : Prop :=
  ∀ n, P5921817239336398699.a n = (A121123 (n + 2) : ℚ)

end A121123

/-! ## A121123.P15692937648081869705

`(A026532(n+1)+A026532(A004277(n)))/2`
-/

namespace A121123.P15692937648081869705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026532 (n + 1) + A026532 (A004277 n).toNat : ℚ) / 2

end

end A121123.P15692937648081869705

namespace A121123

/-- `(A026532(n+1)+A026532(A004277(n)))/2` -/
def P15692937648081869705.Spec : Prop :=
  ∀ n, P15692937648081869705.a n = (A121123 (n + 2) : ℚ)

end A121123

/-! ## A121123.P8596491724313634981

`record[ratio[A120650(n)]]`
-/

namespace A121123.P8596491724313634981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121123.P8596491724313634981

namespace A121123

/-- `record[ratio[A120650(n)]]` -/
def P8596491724313634981.Spec : Prop :=
  ∀ n, P8596491724313634981.a n = (A121123 (n + 2) : ℚ)

end A121123

/-! ## A121123.P17168340342988658021

`A120650(C(n+3, 2))`
-/

namespace A121123.P17168340342988658021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (Nat.choose (n + 3) 2)

end

end A121123.P17168340342988658021

namespace A121123

/-- `A120650(C(n+3, 2))` -/
def P17168340342988658021.Spec : Prop :=
  ∀ n, P17168340342988658021.a n = A121123 (n + 2)

end A121123

/-!
# A121124: Unbranched a-4-catapolynonagons (see Brunvoll reference for precise definition).

The programs for A121124, there is no canonical definition to state claims against.
-/

/-! ## A121124.P7982092719226802866

`A120650(∑[n+2]+2)`
-/

namespace A121124.P7982092719226802866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A121124.P7982092719226802866

/-! ## A121124.P5963911593953696775

`record[A120650(A061579(n)+2)]`
-/

namespace A121124.P5963911593953696775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (A061579 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121124.P5963911593953696775

/-! ## A121124.P6167824882643558457

`record[A120650(n)/A091977(n)]`
-/

namespace A121124.P6167824882643558457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120650 n : ℚ) / (A091977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121124.P6167824882643558457

/-! ## A121124.P1349442876987585039

`record[A120650(gcd(n, A162514(n)))]`
-/

namespace A121124.P1349442876987585039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (Int.gcd (n : ℤ) (A162514 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121124.P1349442876987585039

/-! ## A121124.P9128938375790877293

`record[A120650(A038722(n+1)+1)]`
-/

namespace A121124.P9128938375790877293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (A038722 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121124.P9128938375790877293

/-!
# A121125: Unbranched a-4-catapolynonagons (see Brunvoll reference for precise definition).

The programs for A121125, there is no canonical definition to state claims against.
-/

/-! ## A121125.P4915110604095047146

`A120650(∑[n+2]+3)`
-/

namespace A121125.P4915110604095047146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121125.P4915110604095047146

/-! ## A121125.P18069329996946400308

`record[A120650(n+1)/A091977(n)]`
-/

namespace A121125.P18069329996946400308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120650 (n + 1) : ℚ) / (A091977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121125.P18069329996946400308

/-!
# A121126: Unbranched a-4-catapolynonagons (see Brunvoll reference for precise definition).

The programs for A121126, there is no canonical definition to state claims against.
-/

/-! ## A121126.P9916700129478363482

`A120650(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A121126.P9916700129478363482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121126.P9916700129478363482

/-! ## A121126.P6239319518090582154

`A120650(A167614(n+2))`
-/

namespace A121126.P6239319518090582154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (A167614 (n + 2)).toNat

end

end A121126.P6239319518090582154

/-! ## A121126.P10627328610761751309

`A120650(A141214(n)+6)`
-/

namespace A121126.P10627328610761751309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (A141214 n + 6).toNat

end

end A121126.P10627328610761751309

/-! ## A121126.P14337457244805483647

`A120650(A052905(n)+8)`
-/

namespace A121126.P14337457244805483647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (A052905 n + 8).toNat

end

end A121126.P14337457244805483647

/-!
# A121127: Unbranched a-4-catapolynonagons (see Brunvoll reference for precise definition).

The programs for A121127, there is no canonical definition to state claims against.
-/

/-! ## A121127.P11566128368141162463

`A120650(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A121127.P11566128368141162463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121127.P11566128368141162463

/-! ## A121127.P11823512239589418649

`A120650(A155212(n)+12)`
-/

namespace A121127.P11823512239589418649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (A155212 n + 12).toNat

end

end A121127.P11823512239589418649

/-! ## A121127.P5397423065273422547

`A120650(A056000(n)+14)`
-/

namespace A121127.P5397423065273422547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120650 (A056000 n + 14).toNat

end

end A121127.P5397423065273422547

/-!
# A121128: Nonoverlapping monocyclic staggered cycloalkanes (unbranched) - see Cyvin reference for precise definition.

The programs for A121128, there is no canonical definition to state claims against.
-/

/-! ## A121128.P6290146494392523376

`A260652(A339293(n+1))`
-/

namespace A121128.P6290146494392523376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260652 (A339293 (n + 1)).toNat

end

end A121128.P6290146494392523376

/-! ## A121128.P10901919062470735926

`A308981(A038085(n+2))`
-/

namespace A121128.P10901919062470735926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308981 (A038085 (n + 2)).toNat

end

end A121128.P10901919062470735926

/-! ## A121128.P4674804438327307355

`A001006(n)-A066099(A103942(n))`
-/

namespace A121128.P4674804438327307355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A066099 (A103942 n).toNat

end

end A121128.P4674804438327307355

/-! ## A121128.P9480672556608561126

`A089861(A095892(n))-A358050(n)`
-/

namespace A121128.P9480672556608561126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089861 (A095892 n).toNat - A358050 n

end

end A121128.P9480672556608561126

/-!
# A121130: Nonoverlapping monocyclic staggered cycloalkanes (unbranched) - see Cyvin reference for precise definition.

The programs for A121130, there is no canonical definition to state claims against.
-/

/-! ## A121130.P13065558103727987171

`A286610(∑[∏[abs(1-2*n)]])`
-/

namespace A121130.P13065558103727987171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121130.P13065558103727987171

/-! ## A121130.P6650051752475055480

`A231848(A018087(n))`
-/

namespace A121130.P6650051752475055480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231848 (A018087 n).toNat

end

end A121130.P6650051752475055480

/-!
# A121131: Number of unstrained monocyclic staggered cycloalkanes (unbranched) - see Cyvin reference for precise definition.

The programs for A121131, there is no canonical definition to state claims against.
-/

/-! ## A121131.P4116117720037688867

`(a(n-3)+39)*a(n-2)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=9`
-/

namespace A121131.P4116117720037688867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 9] fun n a =>
  (a (n - 3) + 39) * a (n - 2)

end

end A121131.P4116117720037688867

/-!
# A121132: Number of unstrained monocyclic staggered cycloalkanes (unbranched) - see Cyvin reference for precise definition.

The programs for A121132, there is no canonical definition to state claims against.
-/

/-! ## A121132.P12981887540195699057

`A058269(A320663(n))`
-/

namespace A121132.P12981887540195699057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058269 (A320663 n).toNat

end

end A121132.P12981887540195699057

/-!
# A121133: Numbers of isomers of unbranched a-4-catapolypentagons - see Brunvoll reference for precise definition.

The programs for A121133, the canonical program `A121133.P7822664862980959599` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121133 has offset 1).

The definition of A121133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121133.P7822664862980959599

`4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=8, a(5)=16, a(6)=38`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121133

/-- `4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` -/
def P7822664862980959599.Spec : Prop :=
  ∀ n, P7822664862980959599.a n = A121133 (n + 1)

theorem P7822664862980959599.correct : P7822664862980959599.Spec := by
  intro n
  simp only [A121133, Nat.add_sub_cancel]

end A121133

/-! ## A121133.P13515472248273380029

`A131575(abs(1-n))+A122742(n+4)`
-/

namespace A121133.P13515472248273380029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 |1 - (n : ℤ)|.toNat + A122742 (n + 4)

end

end A121133.P13515472248273380029

namespace A121133

/-- `A131575(abs(1-n))+A122742(n+4)` -/
def P13515472248273380029.Spec : Prop :=
  ∀ n, P13515472248273380029.a n = A121133 (n + 1)

end A121133

/-! ## A121133.P6982312095701772038

`A122742(n+4)+A077957(A289207(n))`
-/

namespace A121133.P6982312095701772038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122742 (n + 4) + A077957 (A289207 n).toNat

end

end A121133.P6982312095701772038

namespace A121133

/-- `A122742(n+4)+A077957(A289207(n))` -/
def P6982312095701772038.Spec : Prop :=
  ∀ n, P6982312095701772038.a n = A121133 (n + 1)

end A121133

/-! ## A121133.P9071950588522219133

`A120652(∑[n+1]+1)`
-/

namespace A121133.P9071950588522219133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121133.P9071950588522219133

namespace A121133

/-- `A120652(∑[n+1]+1)` -/
def P9071950588522219133.Spec : Prop :=
  ∀ n, P9071950588522219133.a n = A121133 (n + 1)

end A121133

/-! ## A121133.P1431135983260594523

`A120652(A134869(n+1))*A284562(n)`
-/

namespace A121133.P1431135983260594523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (A134869 (n + 1)).toNat * A284562 n

end

end A121133.P1431135983260594523

namespace A121133

/-- `A120652(A134869(n+1))*A284562(n)` -/
def P1431135983260594523.Spec : Prop :=
  ∀ n, P1431135983260594523.a n = A121133 (n + 1)

end A121133

/-!
# A121134: Numbers of isomers of unbranched a-4-catapolypentagons - see Brunvoll reference for precise definition.

The programs for A121134, there is no canonical definition to state claims against.
-/

/-! ## A121134.P15171622248775968523

`A120652(∑[n+2]+3)`
-/

namespace A121134.P15171622248775968523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121134.P15171622248775968523

/-! ## A121134.P16889681503354005317

`record[A120652(n+3)/A120649(n)]`
-/

namespace A121134.P16889681503354005317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120652 (n + 3) : ℚ) / (A120649 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121134.P16889681503354005317

/-! ## A121134.P17465091110863752029

`record[A120652(n+3)/A120650(n)]`
-/

namespace A121134.P17465091110863752029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120652 (n + 3) : ℚ) / (A120650 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121134.P17465091110863752029

/-! ## A121134.P3141282895134131363

`record[A120652(n+3)/A120651(n)]`
-/

namespace A121134.P3141282895134131363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120652 (n + 3) : ℚ) / (A120651 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121134.P3141282895134131363

/-! ## A121134.P15365654816766328858

`record[A120652(n+3)/A120652(n)]`
-/

namespace A121134.P15365654816766328858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120652 (n + 3) : ℚ) / (A120652 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121134.P15365654816766328858

/-!
# A121135: Numbers of isomers of unbranched a-4-catapolypentagons - see Brunvoll reference for precise definition.

The programs for A121135, there is no canonical definition to state claims against.
-/

/-! ## A121135.P17725291927077701615

`A120652(∑[n+3]+6)`
-/

namespace A121135.P17725291927077701615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A121135.P17725291927077701615

/-! ## A121135.P14922691091494257004

`record[A120652(n+3)/A141539(n)]`
-/

namespace A121135.P14922691091494257004
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120652 (n + 3) : ℚ) / (A141539 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121135.P14922691091494257004

/-!
# A121136: Numbers of isomers of unbranched a-4-catapolypentagons - see Brunvoll reference for precise definition.

The programs for A121136, there is no canonical definition to state claims against.
-/

/-! ## A121136.P17634221538913910697

`A120652(A056000(n)+14)`
-/

namespace A121136.P17634221538913910697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (A056000 n + 14).toNat

end

end A121136.P17634221538913910697

/-! ## A121136.P7376065265573044877

`A120652(eq[4, A002262(n)])`
-/

namespace A121136.P7376065265573044877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121136.P7376065265573044877

/-! ## A121136.P11234627840890050747

`A120652(eq[10, A112367(n)])`
-/

namespace A121136.P11234627840890050747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121136.P11234627840890050747

/-!
# A121138: Numbers of isomers of unbranched a-4-catapolyheptagons - see Brunvoll reference for precise definition.

The programs for A121138, the canonical program `A121138.P1455726777313622620` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121138 has offset 1).

The definition of A121138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121138.P1455726777313622620

`8*a(n-1)-12*a(n-2)-32*a(n-3)+64*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=10, a(4)=46, a(5)=192, a(6)=840`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121138

/-- `8*a(n-1)-12*a(n-2)-32*a(n-3)+64*a(n-4)` -/
def P1455726777313622620.Spec : Prop :=
  ∀ n, P1455726777313622620.a n = A121138 (n + 1)

theorem P1455726777313622620.correct : P1455726777313622620.Spec := by
  intro n
  simp only [A121138, Nat.add_sub_cancel]

end A121138

/-! ## A121138.P5097692510431270820

`A120653(∑[n+1]+1)`
-/

namespace A121138.P5097692510431270820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121138.P5097692510431270820

namespace A121138

/-- `A120653(∑[n+1]+1)` -/
def P5097692510431270820.Spec : Prop :=
  ∀ n, P5097692510431270820.a n = A121138 (n + 1)

end A121138

/-! ## A121138.P16634682676650180885

`A120653(A134869(n+1))+char[10]`
-/

namespace A121138.P16634682676650180885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (A134869 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121138.P16634682676650180885

namespace A121138

/-- `A120653(A134869(n+1))+char[10]` -/
def P16634682676650180885.Spec : Prop :=
  ∀ n, P16634682676650180885.a n = A121138 (n + 1)

end A121138

/-! ## A121138.P13428693030071317858

`and(-A007318(n), A120653(A134869(n+1)))`
-/

namespace A121138.P13428693030071317858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 n) (A120653 (A134869 (n + 1)).toNat)

end

end A121138.P13428693030071317858

namespace A121138

/-- `and(-A007318(n), A120653(A134869(n+1)))` -/
def P13428693030071317858.Spec : Prop :=
  ∀ n, P13428693030071317858.a n = A121138 (n + 1)

end A121138

/-! ## A121138.P2744770859525262292

`and(-A120653(n), A120653(A134869(n+1)))`
-/

namespace A121138.P2744770859525262292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A120653 n) (A120653 (A134869 (n + 1)).toNat)

end

end A121138.P2744770859525262292

namespace A121138

/-- `and(-A120653(n), A120653(A134869(n+1)))` -/
def P2744770859525262292.Spec : Prop :=
  ∀ n, P2744770859525262292.a n = A121138 (n + 1)

end A121138

/-!
# A121139: Numbers of isomers of unbranched a-4-catapolyheptagons - see Brunvoll reference for precise definition.

The programs for A121139, there is no canonical definition to state claims against.
-/

/-! ## A121139.P15687856945907694850

`record[A120653(∑[n]+2)]`
-/

namespace A121139.P15687856945907694850
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121139.P15687856945907694850

/-! ## A121139.P1932574942181109573

`A120653(eq[2, A163351(n)])`
-/

namespace A121139.P1932574942181109573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121139.P1932574942181109573

/-! ## A121139.P7869522120381400037

`record[gcd(A120653(n), A303913(n))]`
-/

namespace A121139.P7869522120381400037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120653 n) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121139.P7869522120381400037

/-! ## A121139.P2393594003689802959

`A120653(lt[A120653(n), A163351(n)]-n)`
-/

namespace A121139.P2393594003689802959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - n)

end

end A121139.P2393594003689802959

/-!
# A121140: Numbers of isomers of unbranched a-4-catapolyheptagons - see Brunvoll reference for precise definition.

The programs for A121140, there is no canonical definition to state claims against.
-/

/-! ## A121140.P9615231608732308935

`A120653(∑[n+3]+6)`
-/

namespace A121140.P9615231608732308935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A121140.P9615231608732308935

/-! ## A121140.P5646774116853983142

`A120653(A167614(n+2))%A072110(n+3)`
-/

namespace A121140.P5646774116853983142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120653 (A167614 (n + 2)).toNat) (A072110 (n + 3))

end

end A121140.P5646774116853983142

/-! ## A121140.P4094780957614777712

`record[A120653(lt[2, A163351(n)])]`
-/

namespace A121140.P4094780957614777712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121140.P4094780957614777712

/-!
# A121141: Numbers of isomers of unbranched a-4-catapolyheptagons - see Brunvoll reference for precise definition.

The programs for A121141, there is no canonical definition to state claims against.
-/

/-! ## A121141.P15292625790818875345

`A120653(A155212(n)+12)`
-/

namespace A121141.P15292625790818875345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (A155212 n + 12).toNat

end

end A121141.P15292625790818875345

/-! ## A121141.P13936103857150769542

`A120653(eq[4, A002262(n)])`
-/

namespace A121141.P13936103857150769542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121141.P13936103857150769542

/-!
# A121142: Numbers of isomers of unbranched a-4-catapolydecagons - see Brunvoll reference for precise definition.

The programs for A121142, there is no canonical definition to state claims against.
-/

/-! ## A121142.P11987675330785440730

`A120651(∑[n])`
-/

namespace A121142.P11987675330785440730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121142.P11987675330785440730

/-! ## A121142.P7839913987926423895

`A120651((n²+n)/2)^ceil(sin(n)²)`
-/

namespace A121142.P7839913987926423895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120651 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A121142.P7839913987926423895

/-! ## A121142.P10416433792486783829

`and(-3, A120651(A000217(n)))`
-/

namespace A121142.P10416433792486783829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A120651 (A000217 n).toNat)

end

end A121142.P10416433792486783829

/-! ## A121142.P9847395172641841059

`A185294(n)+A120651(C(n+1, 2))`
-/

namespace A121142.P9847395172641841059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 n + A120651 (Nat.choose (n + 1) 2)

end

end A121142.P9847395172641841059

/-! ## A121142.P17363079427667423010

`A185294(n)+A120651(A000217(n))`
-/

namespace A121142.P17363079427667423010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185294 n + A120651 (A000217 n).toNat

end

end A121142.P17363079427667423010

/-!
# A121143: Numbers of isomers of unbranched a-4-catapolydecagons - see Brunvoll reference for precise definition.

The programs for A121143, there is no canonical definition to state claims against.
-/

/-! ## A121143.P10050906208404130253

`A120651(∑[n+1]+1)`
-/

namespace A121143.P10050906208404130253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121143.P10050906208404130253

/-! ## A121143.P11934191367056535369

`or(1, A120651(A134869(n+1)))`
-/

namespace A121143.P11934191367056535369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A120651 (A134869 (n + 1)).toNat)

end

end A121143.P11934191367056535369

/-! ## A121143.P10021149336126427060

`A120651(A134869(n+1))*A294775(n)`
-/

namespace A121143.P10021149336126427060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120651 (A134869 (n + 1)).toNat * A294775 n

end

end A121143.P10021149336126427060

/-! ## A121143.P12672518084264722892

`gcd(A000038(n), A120651(A134869(n+1)))`
-/

namespace A121143.P12672518084264722892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A120651 (A134869 (n + 1)).toNat)

end

end A121143.P12672518084264722892

/-! ## A121143.P16507947480032056936

`A014963(63*(n+1))*A120651(A134869(n+1))`
-/

namespace A121143.P16507947480032056936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (63 * (n + 1)) * A120651 (A134869 (n + 1)).toNat

end

end A121143.P16507947480032056936

/-!
# A121144: Numbers of isomers of unbranched a-4-catapolydecagons - see Brunvoll reference for precise definition.

The programs for A121144, there is no canonical definition to state claims against.
-/

/-! ## A121144.P18202456355555272979

`A120651(∑[n+2]+3)`
-/

namespace A121144.P18202456355555272979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120651 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121144.P18202456355555272979

/-! ## A121144.P4743982813621632273

`record[gcd(A120651(n+3), A185782(n+1))]`
-/

namespace A121144.P4743982813621632273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120651 (n + 3)) (A185782 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121144.P4743982813621632273

/-!
# A121145: Numbers of isomers of unbranched a-4-catapolyoctagons - see Brunvoll reference for precise definition.

The programs for A121145, there is no canonical definition to state claims against.
-/

/-! ## A121145.P10377631205711063367

`A120649(∑[n+1]+1)`
-/

namespace A121145.P10377631205711063367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A121145.P10377631205711063367

/-! ## A121145.P6374302855765518018

`A120649(A134869(n+1))+char[10]`
-/

namespace A121145.P6374302855765518018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120649 (A134869 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A121145.P6374302855765518018

/-! ## A121145.P3245242034001915790

`A208848(n)+A120649(A134869(n+1))`
-/

namespace A121145.P3245242034001915790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208848 n + A120649 (A134869 (n + 1)).toNat

end

end A121145.P3245242034001915790

/-! ## A121145.P3023770622574998776

`A257849(n)+A120649(A134869(n+1))`
-/

namespace A121145.P3023770622574998776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 n + A120649 (A134869 (n + 1)).toNat

end

end A121145.P3023770622574998776

/-! ## A121145.P10288901389448456314

`A347689(n)+A120649(A134869(n+1))`
-/

namespace A121145.P10288901389448456314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A120649 (A134869 (n + 1)).toNat

end

end A121145.P10288901389448456314

/-!
# A121146: Numbers of isomers of unbranched a-4-catapolyoctagons - see Brunvoll reference for precise definition.

The programs for A121146, there is no canonical definition to state claims against.
-/

/-! ## A121146.P11904026128454845367

`A120649(∑[n+2]+3)`
-/

namespace A121146.P11904026128454845367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120649 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121146.P11904026128454845367

/-! ## A121146.P9529112636322048734

`record[A120649(gcd(n, A129503(n+1)))]`
-/

namespace A121146.P9529112636322048734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120649 (Int.gcd (n : ℤ) (A129503 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121146.P9529112636322048734

/-!
# A121147: Nonoverlapping monocyclic staggered cycloalkanes (unbranched) - see Cyvin reference for precise definition.

The programs for A121147, there is no canonical definition to state claims against.
-/

/-! ## A121147.P15665362155464544133

`ogf((3x^2+10x^3+9x^4)/(1-7x))`
-/

namespace A121147.P15665362155464544133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3, 10, 9] [1, -7] n

end

end A121147.P15665362155464544133

/-!
# A121148: Nonoverlapping monocyclic staggered cycloalkanes (unbranched) - see Cyvin reference for precise definition.

The programs for A121148, there is no canonical definition to state claims against.
-/

/-! ## A121148.P18067523953783202651

`A091226(A128422(n+1)*A232606(n))`
-/

namespace A121148.P18067523953783202651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A128422 (n + 1) * A232606 n).toNat

end

end A121148.P18067523953783202651

/-! ## A121148.P667846022420962951

`A317008(n+1)%A090553(A000079(n))`
-/

namespace A121148.P667846022420962951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317008 (n + 1)) (A090553 (A000079 n).toNat)

end

end A121148.P667846022420962951

/-!
# A121149: Minimal number of vertices in a planar connected n-polyhex.

The programs for A121149, the canonical program `A121149.P18402369660270908208` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121149 has offset 0).

The definition of A121149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121149.P1281199555963768630

`comp[round((n+3)²/12)]+abs(1-n)`
-/

namespace A121149.P1281199555963768630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + |1 - (n : ℤ)|

end

end A121149.P1281199555963768630

namespace A121149

/-- `comp[round((n+3)²/12)]+abs(1-n)` -/
def P1281199555963768630.Spec : Prop :=
  ∀ n, P1281199555963768630.a n = A121149 n

end A121149

/-! ## A121149.P18402369660270908208

`abs(A036496(n)+Δ[n²])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A121149

/-- `abs(A036496(n)+Δ[n²])` -/
def P18402369660270908208.Spec : Prop :=
  ∀ n, P18402369660270908208.a n = A121149 n

theorem P18402369660270908208.correct : P18402369660270908208.Spec := by
  intro n
  simp only [A121149]

end A121149

/-! ## A121149.P9903248653944816501

`abs(1-comp[A001399(n)]-n)`
-/

namespace A121149.P9903248653944816501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)|

end

end A121149.P9903248653944816501

namespace A121149

/-- `abs(1-comp[A001399(n)]-n)` -/
def P9903248653944816501.Spec : Prop :=
  ∀ n, P9903248653944816501.a n = A121149 n

end A121149

/-! ## A121149.P10109602696509064028

`abs(1-(comp[∑[A103221(n)]]+n))`
-/

namespace A121149.P10109602696509064028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n : ℤ)|

end

end A121149.P10109602696509064028

namespace A121149

/-- `abs(1-(comp[∑[A103221(n)]]+n))` -/
def P10109602696509064028.Spec : Prop :=
  ∀ n, P10109602696509064028.a n = A121149 n

end A121149

/-! ## A121149.P1048418950293722963

`A028310(A036496(n)+2*n+1)`
-/

namespace A121149.P1048418950293722963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A036496 n + (2 * n + 1 : ℤ)).toNat

end

end A121149.P1048418950293722963

namespace A121149

/-- `A028310(A036496(n)+2*n+1)` -/
def P1048418950293722963.Spec : Prop :=
  ∀ n, P1048418950293722963.a n = A121149 n

end A121149

/-! ## A121149.P2098242550597261093

`(A036496(n)+Δ[n²])%A017545(n)`
-/

namespace A121149.P2098242550597261093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (A017545 n)

end

end A121149.P2098242550597261093

namespace A121149

/-- `(A036496(n)+Δ[n²])%A017545(n)` -/
def P2098242550597261093.Spec : Prop :=
  ∀ n, P2098242550597261093.a n = A121149 n

end A121149

/-! ## A121149.P16277358687398004213

`(A036496(n)+Δ[n²])*A033999(n)²`
-/

namespace A121149.P16277358687398004213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A033999 n ^ 2

end

end A121149.P16277358687398004213

namespace A121149

/-- `(A036496(n)+Δ[n²])*A033999(n)²` -/
def P16277358687398004213.Spec : Prop :=
  ∀ n, P16277358687398004213.a n = A121149 n

end A121149

/-! ## A121149.P4765356216555409102

`(A036496(n)+Δ[n²])^(1-A000007(n))`
-/

namespace A121149.P4765356216555409102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) ^ (1 - A000007 n : ℤ)

end

end A121149.P4765356216555409102

namespace A121149

/-- `(A036496(n)+Δ[n²])^(1-A000007(n))` -/
def P4765356216555409102.Spec : Prop :=
  ∀ n, P4765356216555409102.a n = (A121149 n : ℚ)

end A121149

/-! ## A121149.P15252995206339391002

`(A036496(n)+Δ[n²])*A007318(C(2, n))`
-/

namespace A121149.P15252995206339391002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A007318 (Nat.choose 2 n)

end

end A121149.P15252995206339391002

namespace A121149

/-- `(A036496(n)+Δ[n²])*A007318(C(2, n))` -/
def P15252995206339391002.Spec : Prop :=
  ∀ n, P15252995206339391002.a n = A121149 n

end A121149

/-! ## A121149.P17622295104757431805

`(A036496(n)+Δ[n²])^A007318(C(3, n))`
-/

namespace A121149.P17622295104757431805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A121149.P17622295104757431805

namespace A121149

/-- `(A036496(n)+Δ[n²])^A007318(C(3, n))` -/
def P17622295104757431805.Spec : Prop :=
  ∀ n, P17622295104757431805.a n = (A121149 n : ℚ)

end A121149

/-! ## A121149.P1935903457952845524

`(A036496(n)+Δ[n²])*A014963(6*(n+1))`
-/

namespace A121149.P1935903457952845524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A014963 (6 * (n + 1))

end

end A121149.P1935903457952845524

namespace A121149

/-- `(A036496(n)+Δ[n²])*A014963(6*(n+1))` -/
def P1935903457952845524.Spec : Prop :=
  ∀ n, P1935903457952845524.a n = A121149 n

end A121149

/-! ## A121149.P6002636550842722403

`(A036496(n)+2*n+1)*A001333(n+1)%2`
-/

namespace A121149.P6002636550842722403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036496 n + (2 * n + 1 : ℤ)) * Int.tmod (A001333 (n + 1)) 2

end

end A121149.P6002636550842722403

namespace A121149

/-- `(A036496(n)+2*n+1)*A001333(n+1)%2` -/
def P6002636550842722403.Spec : Prop :=
  ∀ n, P6002636550842722403.a n = A121149 n

end A121149

/-! ## A121149.P17356928248197145521

`(A036496(n)+Δ[n²])/gcd(n+1, A000040(n+1))`
-/

namespace A121149.P17356928248197145521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) : ℚ)

end

end A121149.P17356928248197145521

namespace A121149

/-- `(A036496(n)+Δ[n²])/gcd(n+1, A000040(n+1))` -/
def P17356928248197145521.Spec : Prop :=
  ∀ n, P17356928248197145521.a n = (A121149 n : ℚ)

end A121149

/-! ## A121149.P6346556955291427580

`A000027(A036496(n)+A005408(n))`
-/

namespace A121149.P6346556955291427580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A036496 n + A005408 n).toNat

end

end A121149.P6346556955291427580

namespace A121149

/-- `A000027(A036496(n)+A005408(n))` -/
def P6346556955291427580.Spec : Prop :=
  ∀ n, P6346556955291427580.a n = A121149 n

end A121149

/-! ## A121149.P1109246765555653278

`(A036496(n)+Δ[n²])*A000045(A020639(2*(n+1)))`
-/

namespace A121149.P1109246765555653278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036496 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * A000045 (A020639 (2 * (n + 1))).toNat

end

end A121149.P1109246765555653278

namespace A121149

/-- `(A036496(n)+Δ[n²])*A000045(A020639(2*(n+1)))` -/
def P1109246765555653278.Spec : Prop :=
  ∀ n, P1109246765555653278.a n = A121149 n

end A121149

/-!
# A121150: Minimal number of vertices in an n-polyomino.

The programs for A121150, there is no canonical definition to state claims against.
-/

/-! ## A121150.P519030435244142695

`comp[ceil(n²/sqrt(15))]`
-/

namespace A121150.P519030435244142695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℝ) / Real.sqrt (15 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A121150.P519030435244142695

/-! ## A121150.P3102558486003564494

`comp[∑[∑[n%2]]]+1`
-/

namespace A121150.P3102558486003564494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A121150.P3102558486003564494

/-! ## A121150.P14278712732002819299

`comp[∑[∑[and(1, n)]]]+1`
-/

namespace A121150.P14278712732002819299
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A121150.P14278712732002819299

/-! ## A121150.P11719628902635207227

`comp[∑[val(2^n, 4)]]+1`
-/

namespace A121150.P11719628902635207227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 ^ n) 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A121150.P11719628902635207227

/-! ## A121150.P17602032931610313133

`comp[∑[floor(n*tan(79))]]+1`
-/

namespace A121150.P17602032931610313133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.tan (79 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A121150.P17602032931610313133

/-!
# A121152: Dimension of the space spanned by the symmetric functions L_lambda of Gessel and Reutenauer, where lambda ranges over all partitions of n.

The programs for A121152, there is no canonical definition to state claims against.
-/

/-! ## A121152.P6932582432207787835

`A120882(floor(sqrt(A005380(n))))`
-/

namespace A121152.P6932582432207787835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120882 (Int.sqrt (A005380 n)).toNat

end

end A121152.P6932582432207787835

/-! ## A121152.P14909794342487852493

`A259899(A293820(n+3)+1)`
-/

namespace A121152.P14909794342487852493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A293820 (n + 3) + 1).toNat

end

end A121152.P14909794342487852493

/-! ## A121152.P13103072957756354677

`A274701(A066641(n+1))-n%2`
-/

namespace A121152.P13103072957756354677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A066641 (n + 1)).toNat - ((n % 2 : ℕ) : ℤ)

end

end A121152.P13103072957756354677

/-! ## A121152.P12566477091608026142

`A274701(A066641(n+1))-A000035(n)`
-/

namespace A121152.P12566477091608026142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274701 (A066641 (n + 1)).toNat - A000035 n

end

end A121152.P12566477091608026142

/-! ## A121152.P11858782782089214243

`A274701(A066641(n+1))-log2(A000034(n))`
-/

namespace A121152.P11858782782089214243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A274701 (A066641 (n + 1)).toNat : ℝ) - Real.logb 2 (A000034 n : ℝ)

end

end A121152.P11858782782089214243

/-!
# A121153: Numbers k with the property that 1/k can be written in base 3 in such a way that the fractional part contains no 1's.

The programs for A121153, there is no canonical definition to state claims against.
-/

/-! ## A121153.P1260466578782591004

`∪[A170943(n+1), A309758(n+1)]`
-/

namespace A121153.P1260466578782591004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121153.P1260466578782591004

/-! ## A121153.P17293469437449869757

`∩[A054591(n+1), A134025(n)]`
-/

namespace A121153.P17293469437449869757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134025 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121153.P17293469437449869757

/-! ## A121153.P3558650491486835835

`record[A117966(A054591(n+1)%A156119(n+1))]`
-/

namespace A121153.P3558650491486835835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (Int.tmod (A054591 (n + 1)) (A156119 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121153.P3558650491486835835

/-! ## A121153.P16043117639291965732

`record[A117966(A054591(n+1))]%A162778(n+2)`
-/

namespace A121153.P16043117639291965732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A054591 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A162778 (n + 2))

end

end A121153.P16043117639291965732

/-! ## A121153.P13145568349237740612

`∩[A054591(A130734(n+2)), A265746(n)]`
-/

namespace A121153.P13145568349237740612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054591 (A130734 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265746 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121153.P13145568349237740612

/-!
# A121154: a(n) = the n-th divisor of r(n)^n, where r(n) = (10^n-1)/9 the repunits and the positive divisors of r(n)^n are written in order from smallest to largest.

The programs for A121154, there is no canonical definition to state claims against.
-/

/-! ## A121154.P5221447052551089213

`A278753(2*n)%A278763(A278764(n+1))`
-/

namespace A121154.P5221447052551089213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278753 (2 * n)) (A278763 (A278764 (n + 1)).toNat)

end

end A121154.P5221447052551089213

/-!
# A121156: Number of monocyclic skeletons with n carbon atoms and a ring size of 9.

The programs for A121156, there is no canonical definition to state claims against.
-/

/-! ## A121156.P4786238086195457111

`A305059(A000124(n+6)+8)`
-/

namespace A121156.P4786238086195457111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A000124 (n + 6) + 8).toNat

end

end A121156.P4786238086195457111

/-! ## A121156.P18234020391853992253

`A305059(A000096(n+5)+10)`
-/

namespace A121156.P18234020391853992253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A000096 (n + 5) + 10).toNat

end

end A121156.P18234020391853992253

/-! ## A121156.P16495982829701146632

`A305059(A052905(n+3)+14)`
-/

namespace A121156.P16495982829701146632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A052905 (n + 3) + 14).toNat

end

end A121156.P16495982829701146632

/-! ## A121156.P7864440768874018672

`A305059(A000217(n+7)-(n-2))`
-/

namespace A121156.P7864440768874018672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A000217 (n + 7) - ((n : ℤ) - 2)).toNat

end

end A121156.P7864440768874018672

/-! ## A121156.P1404904426199187886

`A305059(eq[5, A002262(n)]+n+10)`
-/

namespace A121156.P1404904426199187886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 10))

end

end A121156.P1404904426199187886

/-!
# A121157: Number of monocyclic skeletons with n carbon atoms and a ring size of 10.

The programs for A121157, there is no canonical definition to state claims against.
-/

/-! ## A121157.P4328681421704284144

`A305059(A167487(n+6)+3)`
-/

namespace A121157.P4328681421704284144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167487 (n + 6) + 3).toNat

end

end A121157.P4328681421704284144

/-! ## A121157.P2638977077384305470

`A305059(A167499(n+6)+5)`
-/

namespace A121157.P2638977077384305470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A167499 (n + 6) + 5).toNat

end

end A121157.P2638977077384305470

/-! ## A121157.P5702170437026711063

`A305059(A000096(n+6)+11)`
-/

namespace A121157.P5702170437026711063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A000096 (n + 6) + 11).toNat

end

end A121157.P5702170437026711063

/-! ## A121157.P17556746204249669378

`A305059(A034856(n+6)+12)`
-/

namespace A121157.P17556746204249669378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A034856 (n + 6) + 12).toNat

end

end A121157.P17556746204249669378

/-! ## A121157.P8123353405092251192

`A305059(A008574(n+7)+A167614(n+2)+1)`
-/

namespace A121157.P8123353405092251192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305059 (A008574 (n + 7) + (A167614 (n + 2) + 1)).toNat

end

end A121157.P8123353405092251192

/-!
# A121159: Number of spiro bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121159, there is no canonical definition to state claims against.
-/

/-! ## A121159.P13837372677886845878

`A125670(n+6)-A121158(n+6)`
-/

namespace A121159.P13837372677886845878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125670 (n + 6) - A121158 (n + 6)

end

end A121159.P13837372677886845878

/-! ## A121159.P15829365068799362639

`A343397(A001147(n))+A289780(n)`
-/

namespace A121159.P15829365068799362639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343397 (A001147 n).toNat + A289780 n

end

end A121159.P15829365068799362639

/-!
# A121160: Number of spiro bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121160, there is no canonical definition to state claims against.
-/

/-! ## A121160.P10336135492772658215

`A052280(n)+A052281(2*(n+2))%2`
-/

namespace A121160.P10336135492772658215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052280 n + Int.tmod (A052281 (2 * (n + 2))) 2

end

end A121160.P10336135492772658215

/-! ## A121160.P7088196607766214798

`A080679(A005362(n))+A052280(n)`
-/

namespace A121160.P7088196607766214798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080679 (A005362 n).toNat + A052280 n

end

end A121160.P7088196607766214798

/-! ## A121160.P2090058041792844086

`A289239(A001861(n))+A052280(n)`
-/

namespace A121160.P2090058041792844086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289239 (A001861 n).toNat + A052280 n

end

end A121160.P2090058041792844086

/-!
# A121161: a(n) is the nearest integer to log(lcm(1,2,3,...,10^n)).

The programs for A121161, there is no canonical definition to state claims against.
-/

/-! ## A121161.P16451174290891128814

`A215259(10^n)`
-/

namespace A121161.P16451174290891128814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215259 (10 ^ n)

end

end A121161.P16451174290891128814

/-!
# A121162: Number of separated bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121162, there is no canonical definition to state claims against.
-/

/-! ## A121162.P6149578444321778246

`A188814(n)+A145604(A000124(n))`
-/

namespace A121162.P6149578444321778246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188814 n + A145604 (A000124 n).toNat

end

end A121162.P6149578444321778246

/-! ## A121162.P3525077583248516678

`A125229(A197212(n+1))+A001255(n)`
-/

namespace A121162.P3525077583248516678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125229 (A197212 (n + 1)).toNat + A001255 n

end

end A121162.P3525077583248516678

/-!
# A121163: Number of separated bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121163, there is no canonical definition to state claims against.
-/

/-! ## A121163.P13447927463248164620

`A125669(n+7)-A121162(n+7)`
-/

namespace A121163.P13447927463248164620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125669 (n + 7) - A121162 (n + 7)

end

end A121163.P13447927463248164620

/-!
# A121165: Number of fused bicyclic skeletons with n carbon atoms (see Parks et al. for precise definition).

The programs for A121165, there is no canonical definition to state claims against.
-/

/-! ## A121165.P11003896921621833165

`A125671(n+4)-A121327(n+4)`
-/

namespace A121165.P11003896921621833165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125671 (n + 4) - A121327 (n + 4)

end

end A121165.P11003896921621833165

/-! ## A121165.P5425783929065049953

`A239217(A026571(n+2))`
-/

namespace A121165.P5425783929065049953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239217 (A026571 (n + 2)).toNat

end

end A121165.P5425783929065049953

/-!
# A121166: Integers m that divide A120492(m) = 1 + Sum_{k=1..m} prime(k)^(m-1).

The programs for A121166, there is no canonical definition to state claims against.
-/

/-! ## A121166.P14123801715364510742

`lt[A321721(n), A001414(A000041(n+1))]`
-/

namespace A121166.P14123801715364510742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121166.P14123801715364510742

/-! ## A121166.P2785336419556445587

`lt[A038613(A057568(n+1)), A006530(n+2)²]+1`
-/

namespace A121166.P2785336419556445587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (A057568 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A121166.P2785336419556445587

/-! ## A121166.P3646217367845349557

`lt[A088647(A225638(n)), A264766(n)]`
-/

namespace A121166.P3646217367845349557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088647 (A225638 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121166.P3646217367845349557

/-!
# A121170: Largest prime divisor of Fibonacci(5n).

The programs for A121170, there is no canonical definition to state claims against.
-/

/-! ## A121170.P7167101250997018424

`A060385(5*(n+1))`
-/

namespace A121170.P7167101250997018424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060385 (5 * (n + 1))

end

end A121170.P7167101250997018424

/-! ## A121170.P15599040263895760445

`or(1, A060385(Δ[A005891(n)]))`
-/

namespace A121170.P15599040263895760445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060385 (f1 (n + 1) - f1 n).toNat)

end

end A121170.P15599040263895760445

/-! ## A121170.P10253631591264338456

`A060385(Δ[A005891(n)])+A000007(n+1)`
-/

namespace A121170.P10253631591264338456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060385 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A121170.P10253631591264338456

/-! ## A121170.P12629611148023929914

`A000041(((-1)^n)²)*A060385(Δ[A005891(n)])`
-/

namespace A121170.P12629611148023929914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A060385 (f1 (n + 1) - f1 n).toNat

end

end A121170.P12629611148023929914

/-! ## A121170.P5185489561004196919

`A262341(5*A346596(n+1))`
-/

namespace A121170.P5185489561004196919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262341 (5 * A346596 (n + 1)).toNat

end

end A121170.P5185489561004196919

/-!
# A121171: Largest prime divisor of Lucas(5*n), where Lucas(k) = A000032(k).

The programs for A121171, the canonical program `A121171.P6418051183238153702` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121171 has offset 1).

The definition of A121171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079451, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121171.P6418051183238153702

`A079451(5*(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A121171

/-- `A079451(5*(n+1))` -/
def P6418051183238153702.Spec : Prop :=
  ∀ n, P6418051183238153702.a n = A121171 (n + 1)

theorem P6418051183238153702.correct : P6418051183238153702.Spec := by
  intro n
  simp only [A121171, Nat.add_sub_cancel]

end A121171

/-! ## A121171.P8329726218408841172

`p?[A079451(A008706(n))]`
-/

namespace A121171.P8329726218408841172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079451 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121171.P8329726218408841172

namespace A121171

/-- `p?[A079451(A008706(n))]` -/
def P8329726218408841172.Spec : Prop :=
  ∀ n, P8329726218408841172.a n = A121171 (n + 1)

end A121171

/-! ## A121171.P1857111942579718139

`p?[gcd(A079451(n), A163818(n))]`
-/

namespace A121171.P1857111942579718139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079451 n) (A163818 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A121171.P1857111942579718139

namespace A121171

/-- `p?[gcd(A079451(n), A163818(n))]` -/
def P1857111942579718139.Spec : Prop :=
  ∀ n, (P1857111942579718139.a n : ℤ) = A121171 (n + 1)

end A121171

/-!
# A121172: Smallest integer k>0 such that k*10^n + 1 is a prime.

The programs for A121172, there is no canonical definition to state claims against.
-/

/-! ## A121172.P12000351405002988329

`(A070854(n+1)-1)/10^(n+1)`
-/

namespace A121172.P12000351405002988329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070854 (n + 1) - 1 : ℚ) / (10 ^ (n + 1) : ℚ)

end

end A121172.P12000351405002988329

/-! ## A121172.P2707210461948370831

`floor(A070854(n+1)/A178007(n+1))`
-/

namespace A121172.P2707210461948370831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A070854 (n + 1) : ℚ) / (A178007 (n + 1) : ℚ)⌋

end

end A121172.P2707210461948370831

/-!
# A121173: Sequence S with property that for n in S, a(n) = a(1) + a(2) +...+ a(n-1) and for n not in S, a(n) = n+1.

The programs for A121173, the canonical program `A121173.P4179924826294688165` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121173 has offset 1).

The definition of A121173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121173.P1300391383623129462

`ogf((2+4x)/(1+x-3x^2-3x^3+2x^4+2x^5))`
-/

namespace A121173.P1300391383623129462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 4] [1, 1, -3, -3, 2, 2] n

end

end A121173.P1300391383623129462

namespace A121173

/-- `ogf((2+4x)/(1+x-3x^2-3x^3+2x^4+2x^5))` -/
def P1300391383623129462.Spec : Prop :=
  ∀ n, P1300391383623129462.a n = A121173 (n + 1)

end A121173

/-! ## A121173.P15050995284348554462

`(2*a(n-2))^(n%2)+1+n` with `a(0)=2, a(1)=2`
-/

namespace A121173.P15050995284348554462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  (2 * a (n - 2)) ^ (n % 2) + 1 + n

end

end A121173.P15050995284348554462

namespace A121173

/-- `(2*a(n-2))^(n%2)+1+n` -/
def P15050995284348554462.Spec : Prop :=
  ∀ n, (P15050995284348554462.a n : ℤ) = A121173 (n + 1)

end A121173

/-! ## A121173.P4179924826294688165

`∑[Δ[2*a(n-2)]+a(n-2)]-a(n-1)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121173

/-- `∑[Δ[2*a(n-2)]+a(n-2)]-a(n-1)` -/
def P4179924826294688165.Spec : Prop :=
  ∀ n, P4179924826294688165.a n = A121173 (n + 1)

theorem P4179924826294688165.correct : P4179924826294688165.Spec := by
  intro n
  simp only [A121173, Nat.add_sub_cancel]

end A121173

/-! ## A121173.P5280486033514986340

`2*A075427(n)-a(n-1)` with `a(0)=2`
-/

namespace A121173.P5280486033514986340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A075427 n - a (n - 1)

end

end A121173.P5280486033514986340

namespace A121173

/-- `2*A075427(n)-a(n-1)` -/
def P5280486033514986340.Spec : Prop :=
  ∀ n, P5280486033514986340.a n = A121173 (n + 1)

end A121173

/-! ## A121173.P11435395854334821455

`a(n-2)+2*A094024(n)` with `a(0)=2, a(1)=2`
-/

namespace A121173.P11435395854334821455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + 2 * A094024 n

end

end A121173.P11435395854334821455

namespace A121173

/-- `a(n-2)+2*A094024(n)` -/
def P11435395854334821455.Spec : Prop :=
  ∀ n, P11435395854334821455.a n = A121173 (n + 1)

end A121173

/-! ## A121173.P10722764564946145131

`2*(A097140(n+1)+a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A121173.P10722764564946145131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  2 * (A097140 (n + 1) + a (n - 2))

end

end A121173.P10722764564946145131

namespace A121173

/-- `2*(A097140(n+1)+a(n-2))` -/
def P10722764564946145131.Spec : Prop :=
  ∀ n, P10722764564946145131.a n = A121173 (n + 1)

end A121173

/-! ## A121173.P15447923921031805253

`1-Δ[gcd(2, n)*a(n-1)-n]` with `a(0)=2`
-/

namespace A121173.P15447923921031805253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (Nat.gcd 2 n : ℤ) * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A121173.P15447923921031805253

namespace A121173

/-- `1-Δ[gcd(2, n)*a(n-1)-n]` -/
def P15447923921031805253.Spec : Prop :=
  ∀ n, P15447923921031805253.a n = A121173 (n + 1)

end A121173

/-!
# A121176: Union of {8, 9, 18}, S, 2S and 4S, where S = squarefree numbers (A005117).

The programs for A121176, the canonical program `A121176.P2548896837835999624` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121176 has offset 1).

The definition of A121176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121176.P2548896837835999624

`∪[A003657(n+1), A121684(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A121176

/-- `∪[A003657(n+1), A121684(n+1)]` -/
def P2548896837835999624.Spec : Prop :=
  ∀ n, (P2548896837835999624.a n : ℤ) = A121176 (n + 1)

theorem P2548896837835999624.correct : P2548896837835999624.Spec := by
  intro n
  simp only [A121176, Nat.add_sub_cancel]

end A121176

/-! ## A121176.P15201959169164222759

`∪[A003658(n+1), A121684(n+1)]`
-/

namespace A121176.P15201959169164222759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121176.P15201959169164222759

namespace A121176

/-- `∪[A003658(n+1), A121684(n+1)]` -/
def P15201959169164222759.Spec : Prop :=
  ∀ n, (P15201959169164222759.a n : ℤ) = A121176 (n + 1)

end A121176

/-! ## A121176.P11319682940834072797

`∪[A072902(n+1), A121684(n+1)]`
-/

namespace A121176.P11319682940834072797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121176.P11319682940834072797

namespace A121176

/-- `∪[A072902(n+1), A121684(n+1)]` -/
def P11319682940834072797.Spec : Prop :=
  ∀ n, (P11319682940834072797.a n : ℤ) = A121176 (n + 1)

end A121176

/-! ## A121176.P6931901453700991563

`∪[A121684(n+1), A133466(n+1)]`
-/

namespace A121176.P6931901453700991563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121176.P6931901453700991563

namespace A121176

/-- `∪[A121684(n+1), A133466(n+1)]` -/
def P6931901453700991563.Spec : Prop :=
  ∀ n, (P6931901453700991563.a n : ℤ) = A121176 (n + 1)

end A121176

/-! ## A121176.P15871009871486163637

`∪[A121684(n+1), A191483(n+1)]`
-/

namespace A121176.P15871009871486163637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121176.P15871009871486163637

namespace A121176

/-- `∪[A121684(n+1), A191483(n+1)]` -/
def P15871009871486163637.Spec : Prop :=
  ∀ n, (P15871009871486163637.a n : ℤ) = A121176 (n + 1)

end A121176

/-! ## A121176.P16575559933352482912

`lt[n, 2*(A019554(n+1)+2)+2]+1`
-/

namespace A121176.P16575559933352482912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A019554 (n + 1) + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A121176.P16575559933352482912

namespace A121176

/-- `lt[n, 2*(A019554(n+1)+2)+2]+1` -/
def P16575559933352482912.Spec : Prop :=
  ∀ n, (P16575559933352482912.a n : ℤ) = A121176 (n + 1)

end A121176

/-! ## A121176.P8487057851214434941

`lt[abs(3-n), A072905(n+1)-n+1]+1`
-/

namespace A121176.P8487057851214434941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (n : ℤ)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072905 (n + 1) - (n : ℤ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A121176.P8487057851214434941

namespace A121176

/-- `lt[abs(3-n), A072905(n+1)-n+1]+1` -/
def P8487057851214434941.Spec : Prop :=
  ∀ n, (P8487057851214434941.a n : ℤ) = A121176 (n + 1)

end A121176

/-!
# A121177: Catapolyoctagons (see Cyvin et al. for precise definition).

The programs for A121177, the canonical program `A121177.P17894372759092932238` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121177 has offset 1).

The definition of A121177 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121177.P17894372759092932238

`6*a(n-1)-5*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121177

/-- `6*a(n-1)-5*a(n-2)` -/
def P17894372759092932238.Spec : Prop :=
  ∀ n, P17894372759092932238.a n = A121177 (n + 1)

theorem P17894372759092932238.correct : P17894372759092932238.Spec := by
  intro n
  simp only [A121177, Nat.add_sub_cancel]

end A121177

/-! ## A121177.P15572810382039804175

`2*A003463(n)`
-/

namespace A121177.P15572810382039804175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n

end

end A121177.P15572810382039804175

namespace A121177

/-- `2*A003463(n)` -/
def P15572810382039804175.Spec : Prop :=
  ∀ n, P15572810382039804175.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P9991924128501038725

`(5^(n+1)-5)/10`
-/

namespace A121177.P9991924128501038725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (n + 1) : ℤ) - 5 : ℚ) / 10

end

end A121177.P9991924128501038725

namespace A121177

/-- `(5^(n+1)-5)/10` -/
def P9991924128501038725.Spec : Prop :=
  ∀ n, P9991924128501038725.a n = (A121177 (n + 1) : ℚ)

theorem P9991924128501038725.correct : P9991924128501038725.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A121177, Nat.add_sub_cancel, A121177.P9991924128501038725.a, A121177.P17894372759092932238.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A121177, Nat.add_sub_cancel, A121177.P9991924128501038725.a, A121177.P17894372759092932238.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A121177

/-! ## A121177.P7614713193333257028

`ogf(2x/(1-6x+5x^2))`
-/

namespace A121177.P7614713193333257028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -6, 5] n

end

end A121177.P7614713193333257028

namespace A121177

/-- `ogf(2x/(1-6x+5x^2))` -/
def P7614713193333257028.Spec : Prop :=
  ∀ n, P7614713193333257028.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P1219438985953060510

`and(ceil(5^n/2), -2)`
-/

namespace A121177.P1219438985953060510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(5 ^ n : ℚ) / 2⌉ (-2)

end

end A121177.P1219438985953060510

namespace A121177

/-- `and(ceil(5^n/2), -2)` -/
def P1219438985953060510.Spec : Prop :=
  ∀ n, P1219438985953060510.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P7094033486114055651

`2+a(n-1)*5` with `a(0)=0`
-/

namespace A121177.P7094033486114055651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 + a (n - 1) * 5

end

end A121177.P7094033486114055651

namespace A121177

/-- `2+a(n-1)*5` -/
def P7094033486114055651.Spec : Prop :=
  ∀ n, (P7094033486114055651.a n : ℤ) = A121177 (n + 1)

end A121177

/-! ## A121177.P9342035696250152072

`lcm(5, a(n-1))+2` with `a(0)=0`
-/

namespace A121177.P9342035696250152072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 5 (a (n - 1)) + 2

end

end A121177.P9342035696250152072

namespace A121177

/-- `lcm(5, a(n-1))+2` -/
def P9342035696250152072.Spec : Prop :=
  ∀ n, (P9342035696250152072.a n : ℤ) = A121177 (n + 1)

end A121177

/-! ## A121177.P9591349219210750082

`∑[5*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A121177.P9591349219210750082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  5 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121177.P9591349219210750082

namespace A121177

/-- `∑[5*a(n-1)]` -/
def P9591349219210750082.Spec : Prop :=
  ∀ n, (P9591349219210750082.a n : ℤ) = A121177 (n + 1)

end A121177

/-! ## A121177.P8722323489138717973

`7-5*(1-a(n-1))` with `a(0)=0`
-/

namespace A121177.P8722323489138717973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  7 - 5 * (1 - a (n - 1))

end

end A121177.P8722323489138717973

namespace A121177

/-- `7-5*(1-a(n-1))` -/
def P8722323489138717973.Spec : Prop :=
  ∀ n, P8722323489138717973.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P16837685111985265387

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` with `a(0)=0`
-/

namespace A121177.P16837685111985265387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + 2))))

end

end A121177.P16837685111985265387

namespace A121177

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)+2` -/
def P16837685111985265387.Spec : Prop :=
  ∀ n, (P16837685111985265387.a n : ℤ) = A121177 (n + 1)

end A121177

/-! ## A121177.P2960083484638263345

`Δ[A185055(n)]`
-/

namespace A121177.P2960083484638263345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121177.P2960083484638263345

namespace A121177

/-- `Δ[A185055(n)]` -/
def P2960083484638263345.Spec : Prop :=
  ∀ n, P2960083484638263345.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P17538799538805774464

`A137410(n)+1`
-/

namespace A121177.P17538799538805774464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n + 1

end

end A121177.P17538799538805774464

namespace A121177

/-- `A137410(n)+1` -/
def P17538799538805774464.Spec : Prop :=
  ∀ n, P17538799538805774464.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P558966898520266218

`A034478(n)-1`
-/

namespace A121177.P558966898520266218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034478 n - 1

end

end A121177.P558966898520266218

namespace A121177

/-- `A034478(n)-1` -/
def P558966898520266218.Spec : Prop :=
  ∀ n, P558966898520266218.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P9748500245959030635

`A132079(n)-2`
-/

namespace A121177.P9748500245959030635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n - 2

end

end A121177.P9748500245959030635

namespace A121177

/-- `A132079(n)-2` -/
def P9748500245959030635.Spec : Prop :=
  ∀ n, P9748500245959030635.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P15072647072148898738

`∑[A020699(n)]-1`
-/

namespace A121177.P15072647072148898738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A121177.P15072647072148898738

namespace A121177

/-- `∑[A020699(n)]-1` -/
def P15072647072148898738.Spec : Prop :=
  ∀ n, P15072647072148898738.a n = A121177 (n + 1)

end A121177

/-! ## A121177.P12060402006141789130

`2*(A047850(n)-1)`
-/

namespace A121177.P12060402006141789130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A047850 n - 1)

end

end A121177.P12060402006141789130

namespace A121177

/-- `2*(A047850(n)-1)` -/
def P12060402006141789130.Spec : Prop :=
  ∀ n, P12060402006141789130.a n = A121177 (n + 1)

end A121177

/-!
# A121179: Related to enumeration of alkane systems - see reference for precise definition.

The programs for A121179, there is no canonical definition to state claims against.
-/

/-! ## A121179.P14251071055276841163

`A037306(C(3*n, 2)+n+n+1)`
-/

namespace A121179.P14251071055276841163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (Nat.choose (3 * n) 2 + n + (n + 1))

end

end A121179.P14251071055276841163

/-! ## A121179.P2247020145210467871

`A037306(A006137(n))`
-/

namespace A121179.P2247020145210467871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A006137 n).toNat

end

end A121179.P2247020145210467871

/-! ## A121179.P11092788438045314679

`A037306(A022267(n)+1)`
-/

namespace A121179.P11092788438045314679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A022267 n + 1).toNat

end

end A121179.P11092788438045314679

/-! ## A121179.P17070323816951217948

`A037306(A022266(n)+1+n)`
-/

namespace A121179.P17070323816951217948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037306 (A022266 n + 1 + (n : ℤ)).toNat

end

end A121179.P17070323816951217948

/-! ## A121179.P4508077228138432867

`A047996(A081267(n))`
-/

namespace A121179.P4508077228138432867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 (A081267 n).toNat

end

end A121179.P4508077228138432867

/-!
# A121180: Alkane systems (see Cyvin reference for precise definition).

The programs for A121180, there is no canonical definition to state claims against.
-/

/-! ## A121180.P1872793926518771467

`A047774(ceil(3*n/2)+2)`
-/

namespace A121180.P1872793926518771467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047774 (⌈3 * ((n : ℚ) / 2)⌉ + 2).toNat

end

end A121180.P1872793926518771467

/-! ## A121180.P3829053161192886024

`A047766(3*n+5)+A047762(n+1)`
-/

namespace A121180.P3829053161192886024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047766 (3 * n + 5) + A047762 (n + 1)

end

end A121180.P3829053161192886024

/-! ## A121180.P15511232273703145769

`A047762(n+1)+A047755(A152271(n))`
-/

namespace A121180.P15511232273703145769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047762 (n + 1) + A047755 (A152271 n).toNat

end

end A121180.P15511232273703145769

/-! ## A121180.P14930881902797378665

`A089854(A047762(n+1))+A047769(n+1)`
-/

namespace A121180.P14930881902797378665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A047762 (n + 1)).toNat + A047769 (n + 1)

end

end A121180.P14930881902797378665

/-! ## A121180.P15402917647742934503

`A123731(A294728(n+1))`
-/

namespace A121180.P15402917647742934503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A294728 (n + 1)).toNat

end

end A121180.P15402917647742934503

/-!
# A121181: Alkane systems (see Cyvin reference for precise definition).

The programs for A121181, there is no canonical definition to state claims against.
-/

/-! ## A121181.P8820897950130322525

`A165006(A332724(n)+A229992(n+2))`
-/

namespace A121181.P8820897950130322525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165006 (A332724 n + A229992 (n + 2)).toNat

end

end A121181.P8820897950130322525

/-!
# A121182: Alkane systems (see Cyvin reference for precise definition).

The programs for A121182, there is no canonical definition to state claims against.
-/

/-! ## A121182.P17223562070284454610

`A230516(A054114(n+1))`
-/

namespace A121182.P17223562070284454610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230516 (A054114 (n + 1)).toNat

end

end A121182.P17223562070284454610

/-! ## A121182.P10109353877815311006

`A261034(A129922(n+1))`
-/

namespace A121182.P10109353877815311006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261034 (A129922 (n + 1)).toNat

end

end A121182.P10109353877815311006

/-!
# A121183: Alkane systems (see Cyvin reference for precise definition).

The programs for A121183, there is no canonical definition to state claims against.
-/

/-! ## A121183.P10935683367220207783

`A310902(∑[A139172(n+2)])`
-/

namespace A121183.P10935683367220207783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139172 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310902 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121183.P10935683367220207783

/-!
# A121184: Alkane systems (see Cyvin reference for precise definition).

The programs for A121184, there is no canonical definition to state claims against.
-/

/-! ## A121184.P13493611020971593862

`A372935(or(ceil(2^(n-1)), char[n²]))`
-/

namespace A121184.P13493611020971593862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372935 (Int.lor ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A121184.P13493611020971593862

/-! ## A121184.P6071125405072000837

`∑[round(sqrt(A008438(C(n, 2)/2*n!)))-1]`
-/

namespace A121184.P6071125405072000837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A008438 (SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / 2 * (Nat.factorial n : ℚ))).toNat : ℝ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121184.P6071125405072000837

/-! ## A121184.P9476431708993644144

`round((2^n+3^n)/3)-A171164(∑[ceil(2^(n-2))])`
-/

namespace A121184.P9476431708993644144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n + 3 ^ n : ℚ) / 3) - A171164 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A121184.P9476431708993644144

/-!
# A121185: Alkane systems (see Cyvin reference for precise definition).

The programs for A121185, there is no canonical definition to state claims against.
-/

/-! ## A121185.P11555842724055375972

`A055890(∑[ceil(sqrt(n))!!])`
-/

namespace A121185.P11555842724055375972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.factorial ⌈Real.sqrt (n : ℝ)⌉.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055890 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121185.P11555842724055375972

/-!
# A121186: Alkane systems (see Cyvin reference for precise definition).

The programs for A121186, there is no canonical definition to state claims against.
-/

/-! ## A121186.P6035361091337889720

`A003104(n^ceil(n/8))`
-/

namespace A121186.P6035361091337889720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003104 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat

end

end A121186.P6035361091337889720

/-! ## A121186.P4722154353593648830

`A054404(or(3, A124500(n)))`
-/

namespace A121186.P4722154353593648830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (Int.lor 3 (A124500 n)).toNat

end

end A121186.P4722154353593648830

/-! ## A121186.P13994251751802970574

`∏{e}[A000351(n), A003104(#)]`
-/

namespace A121186.P13994251751802970574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003104 (Nat.factorization (f1 n).natAbs p)

end

end A121186.P13994251751802970574

/-! ## A121186.P1110170409014155555

`A144972(A144962(∑[n+2]-1))`
-/

namespace A121186.P1110170409014155555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144972 (A144962 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A121186.P1110170409014155555

/-! ## A121186.P13125091063905001394

`A023193(A243412(n)-floor(n/(xor(n, n+1)+1)))`
-/

namespace A121186.P13125091063905001394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A243412 n - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A121186.P13125091063905001394

/-!
# A121187: Alkane systems (see Cyvin reference for precise definition).

The programs for A121187, there is no canonical definition to state claims against.
-/

/-! ## A121187.P7539633330727252391

`Δ[A183004(Δ[floor(n*2^(n-3))])]`
-/

namespace A121187.P7539633330727252391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183004 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121187.P7539633330727252391

/-!
# A121188: Alkane systems (see Cyvin reference for precise definition).

The programs for A121188, there is no canonical definition to state claims against.
-/

/-! ## A121188.P15947663352260824446

`A324701(A036717(n))+A243982(2*n+5)`
-/

namespace A121188.P15947663352260824446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A036717 n).toNat + A243982 (2 * n + 5)

end

end A121188.P15947663352260824446

/-!
# A121189: Alkane systems (see Cyvin reference for precise definition).

The programs for A121189, there is no canonical definition to state claims against.
-/

/-! ## A121189.P8988546963524588800

`A322111(n)-char[A004728(n)]`
-/

namespace A121189.P8988546963524588800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121189.P8988546963524588800

/-! ## A121189.P11868420193202963585

`A322111(n)-char[A007095(n)]`
-/

namespace A121189.P11868420193202963585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121189.P11868420193202963585

/-! ## A121189.P16449237497702403944

`A322111(n)-char[A008808(n)]`
-/

namespace A121189.P16449237497702403944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008808 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121189.P16449237497702403944

/-! ## A121189.P3569764830864212012

`A322111(n)-char[A025860(n)]`
-/

namespace A121189.P3569764830864212012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025860 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322111 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121189.P3569764830864212012

/-!
# A121190: Number of non-overlapping unbranched staggered conformers of alkanes with 2n-1 nodes and symmetry point group C_s.

The programs for A121190, there is no canonical definition to state claims against.
-/

/-! ## A121190.P10267431750981570699

`A054900(A179805(n)+A018915(n))`
-/

namespace A121190.P10267431750981570699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A179805 n + A018915 n).toNat

end

end A121190.P10267431750981570699

/-! ## A121190.P6847683409230456127

`A054900(A179805(n)+A019487(n))`
-/

namespace A121190.P6847683409230456127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A179805 n + A019487 n).toNat

end

end A121190.P6847683409230456127

/-! ## A121190.P9415741933527876088

`A054900(A018915(n)-(1-A179805(n)))`
-/

namespace A121190.P9415741933527876088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A018915 n - (1 - A179805 n)).toNat

end

end A121190.P9415741933527876088

/-! ## A121190.P2574626565652946636

`A054900(A019487(n)-(1-A179805(n)))`
-/

namespace A121190.P2574626565652946636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (A019487 n - (1 - A179805 n)).toNat

end

end A121190.P2574626565652946636

/-!
# A121191: Alkane systems (see Cyvin reference for precise definition).

The programs for A121191, there is no canonical definition to state claims against.
-/

/-! ## A121191.P18056349649490833026

`A206604((p?[3*n-1]+1)/3)-∏{p}[n+1, 1-#]`
-/

namespace A121191.P18056349649490833026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206604 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 3)).toNat - ∏ p ∈ Nat.primeFactors (f2 n), (1 - (p : ℤ))

end

end A121191.P18056349649490833026

/-!
# A121192: Alkane systems (see Cyvin reference for precise definition).

The programs for A121192, there is no canonical definition to state claims against.
-/

/-! ## A121192.P18236149344580740879

`A397450(A032637(n+1))`
-/

namespace A121192.P18236149344580740879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397450 (A032637 (n + 1)).toNat

end

end A121192.P18236149344580740879

/-! ## A121192.P9834640702293453923

`A092687(n)-A332885(n)`
-/

namespace A121192.P9834640702293453923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092687 n - A332885 n

end

end A121192.P9834640702293453923

/-! ## A121192.P17181906352102361188

`∑[∑[A008615(A290380(n+3))]]`
-/

namespace A121192.P17181906352102361188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A290380 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121192.P17181906352102361188

/-! ## A121192.P10196316000806439470

`A192337(n+1)+Δ[A293064(n)]`
-/

namespace A121192.P10196316000806439470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192337 (n + 1) + (f1 (n + 1) - f1 n)

end

end A121192.P10196316000806439470

/-!
# A121197: Consider the tiling of the plane with squares of two different sizes as in Fig. 2.4.2(g) of Grünbaum and Shephard, p. 74. a(n) is the number of connected figures that can be formed on this tiling, from any n squares.

The programs for A121197, there is no canonical definition to state claims against.
-/

/-! ## A121197.P6843183168913999955

`A276888(A114296(n))+A007564(n)`
-/

namespace A121197.P6843183168913999955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276888 (A114296 n).toNat + A007564 n

end

end A121197.P6843183168913999955

/-!
# A121198: Number of one-sided chessboard polyominoes with n cells (similar to but different from A001071).

The programs for A121198, there is no canonical definition to state claims against.
-/

/-! ## A121198.P3519139058095872449

`A197626(n+1)+A163538(A334771(n+1))`
-/

namespace A121198.P3519139058095872449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197626 (n + 1) + A163538 (A334771 (n + 1)).toNat

end

end A121198.P3519139058095872449

/-! ## A121198.P5792478090641559096

`A163538(A334771(n+1))+2*A056779(n+1)-A346799(n+1)`
-/

namespace A121198.P5792478090641559096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (A334771 (n + 1)).toNat + (2 * A056779 (n + 1) - A346799 (n + 1))

end

end A121198.P5792478090641559096

/-!
# A121199: a(n) = 12n+7^n+5^n.

The programs for A121199, the canonical program `A121199.P12153966077494428858` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121199 has offset 0).

The definition of A121199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+7^n+5^n` (program `A121199.P12153966077494428858`, by `A121199.P12153966077494428858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121199.P12153966077494428858

`12*n+7^n+5^n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A121199

/-- `12*n+7^n+5^n` -/
def P12153966077494428858.Spec : Prop :=
  ∀ n, (P12153966077494428858.a n : ℤ) = A121199 n

theorem P12153966077494428858.correct : P12153966077494428858.Spec := by
  intro n
  simp only [A121199]

end A121199

/-! ## A121199.P888836763977386257

`xor(1, A221907(n)+A176972(n))`
-/

namespace A121199.P888836763977386257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A221907 n + A176972 n)

end

end A121199.P888836763977386257

namespace A121199

/-- `xor(1, A221907(n)+A176972(n))` -/
def P888836763977386257.Spec : Prop :=
  ∀ n, P888836763977386257.a n = A121199 n

end A121199

/-! ## A121199.P3191003135315847003

`(A221907(n)+A176972(n)-1)%A364765(n+4)`
-/

namespace A121199.P3191003135315847003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221907 n + A176972 n - 1) (A364765 (n + 4))

end

end A121199.P3191003135315847003

namespace A121199

/-- `(A221907(n)+A176972(n)-1)%A364765(n+4)` -/
def P3191003135315847003.Spec : Prop :=
  ∀ n, P3191003135315847003.a n = A121199 n

end A121199

