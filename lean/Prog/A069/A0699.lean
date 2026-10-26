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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A069900: Numbers k such that the integer quotient of largest and smallest prime factors of k is greater than one.

The programs for A069900, there is no canonical definition to state claims against.
-/

/-! ## A069900.P54926397620270690

`lt[1, A069897(n+1)]+1`
-/

namespace A069900.P54926397620270690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069900.P54926397620270690

/-! ## A069900.P9474389256327218520

`lt[2, A120454(n+1)]+1`
-/

namespace A069900.P9474389256327218520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069900.P9474389256327218520

/-! ## A069900.P12816149263106869919

`comp[A081306(n+1)-1]+1`
-/

namespace A069900.P12816149263106869919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081306 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A069900.P12816149263106869919

/-! ## A069900.P4542432580435837671

`eq[0, A000007(A069897(n+1)-1)]+1`
-/

namespace A069900.P4542432580435837671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A069897 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069900.P4542432580435837671

/-! ## A069900.P7602879043585163044

`lt[1, A069897(A028310(n))]`
-/

namespace A069900.P7602879043585163044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069897 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A069900.P7602879043585163044

/-! ## A069900.P7585577150629993054

`A020725(lt[2, A120454(n+1)])`
-/

namespace A069900.P7585577150629993054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069900.P7585577150629993054

/-! ## A069900.P13292595420915680790

`A153152(lt[2, A120454(n+1)])`
-/

namespace A069900.P13292595420915680790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A069900.P13292595420915680790

/-! ## A069900.P18190941242311477288

`A020725(eq[0, floor(1/A069897(n+1))])`
-/

namespace A069900.P18190941242311477288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A069897 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069900.P18190941242311477288

/-! ## A069900.P17103710571317775444

`lt[A020639(n+1), A046665(n+1)]+1`
-/

namespace A069900.P17103710571317775444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069900.P17103710571317775444

/-! ## A069900.P4450480261753331047

`A020725(lt[A020639(n+1), A046665(n+1)])`
-/

namespace A069900.P4450480261753331047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069900.P4450480261753331047

/-! ## A069900.P16758257938796568137

`A020725(lt[2*A020639(n+1), A006530(n+1)])`
-/

namespace A069900.P16758257938796568137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069900.P16758257938796568137

/-! ## A069900.P1208467875800661725

`A020725(lt[A006530(n+1), 2*A046665(n+1)])`
-/

namespace A069900.P1208467875800661725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069900.P1208467875800661725

/-! ## A069900.P9787176132683769549

`A020725(lt[2, A006530(n+1)/A020639(n+1)])`
-/

namespace A069900.P9787176132683769549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A069900.P9787176132683769549

/-! ## A069900.P6711972649398966716

`A020725(lt[A006530(n+1)/2, A046665(n+1)])`
-/

namespace A069900.P6711972649398966716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A069900.P6711972649398966716

/-! ## A069900.P16560137211405249319

`A020725(lt[A061228(n+1)-(n+1), A046665(n+1)])`
-/

namespace A069900.P16560137211405249319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069900.P16560137211405249319

/-! ## A069900.P1109044607906467090

`A020725(lt[(n+1)/(n+1-A060681(n+1)), A046665(n+1)])`
-/

namespace A069900.P1109044607906467090
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A060681 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A069900.P1109044607906467090

/-! ## A069900.P11239265869395276896

`lt[A052126(2*(n+1)), A054576(2*(n+1))]+1`
-/

namespace A069900.P11239265869395276896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A069900.P11239265869395276896

/-! ## A069900.P17496596063304003208

`lt[A028310(2*n), A130064(A028310(n))]`
-/

namespace A069900.P17496596063304003208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130064 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069900.P17496596063304003208

/-! ## A069900.P3594353242928301212

`A020725(lt[A052126(2*(n+1)), A054576(2*(n+1))])`
-/

namespace A069900.P3594353242928301212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069900.P3594353242928301212

/-! ## A069900.P220809194537833157

`A065475(lt[A052126(2*(n+1)), A054576(2*(n+1))])`
-/

namespace A069900.P220809194537833157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069900.P220809194537833157

/-!
# A069901: Smallest prime factor of n-th triangular number.

The programs for A069901, there is no canonical definition to state claims against.
-/

/-! ## A069901.P7634256412905443611

`A020639(A000217(n+1))`
-/

namespace A069901.P7634256412905443611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000217 (n + 1)).toNat

end

end A069901.P7634256412905443611

/-! ## A069901.P12397073003149905495

`A020639(∏{p}[a(n-1)+1+n, #])` with `a(0)=1`
-/

namespace A069901.P12397073003149905495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069901.P12397073003149905495

/-! ## A069901.P93967815212685610

`A020639(A139131(n+1))`
-/

namespace A069901.P93967815212685610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139131 (n + 1)).toNat

end

end A069901.P93967815212685610

/-! ## A069901.P9203170704842602813

`A020639(sqrt(A085037(n+1)))`
-/

namespace A069901.P9203170704842602813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A085037 (n + 1) : ℝ))).toNat

end

end A069901.P9203170704842602813

/-! ## A069901.P11755612688204717936

`A020639(gcd(A002414(n+1), A078636(n+1)))`
-/

namespace A069901.P11755612688204717936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.gcd (A002414 (n + 1)) (A078636 (n + 1)))

end

end A069901.P11755612688204717936

/-! ## A069901.P7403644719561671587

`A020639(∑[n+1])`
-/

namespace A069901.P7403644719561671587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069901.P7403644719561671587

/-! ## A069901.P10326390112904816662

`A000027(A020639(C(n+2, 2)))`
-/

namespace A069901.P10326390112904816662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020639 (Nat.choose (n + 2) 2)).toNat

end

end A069901.P10326390112904816662

/-! ## A069901.P16565871732098031732

`A006530(A074828(∑[n+1]))`
-/

namespace A069901.P16565871732098031732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069901.P16565871732098031732

/-! ## A069901.P16308301627759327861

`sqrt(A088377(∑[n+1]))`
-/

namespace A069901.P16308301627759327861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A069901.P16308301627759327861

/-! ## A069901.P10673036371428866980

`A006530(A028233(∑[n+1]))`
-/

namespace A069901.P10673036371428866980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069901.P10673036371428866980

/-! ## A069901.P16157098492118597318

`A006530(A068794(∑[n+1]))`
-/

namespace A069901.P16157098492118597318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068794 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069901.P16157098492118597318

/-! ## A069901.P12650661440365472559

`A006530(A088378(∑[n+1]))`
-/

namespace A069901.P12650661440365472559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088378 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A069901.P12650661440365472559

/-!
# A069902: Largest prime factor of n(n+1)/2, the n-th triangular number.

The programs for A069902, the canonical program `A069902.P1945416378932648319` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069902 has offset 1).

The definition of A069902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069902.P1945416378932648319

`A006530(A000217(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A069902

/-- `A006530(A000217(n+1))` -/
def P1945416378932648319.Spec : Prop :=
  ∀ n, P1945416378932648319.a n = A069902 (n + 1)

theorem P1945416378932648319.correct : P1945416378932648319.Spec := by
  intro n
  simp only [A069902, Nat.add_sub_cancel]

end A069902

/-! ## A069902.P12470278197701547976

`lcm(2, A074399(n+1))/2`
-/

namespace A069902.P12470278197701547976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A074399 (n + 1)) : ℚ) / 2

end

end A069902.P12470278197701547976

namespace A069902

/-- `lcm(2, A074399(n+1))/2` -/
def P12470278197701547976.Spec : Prop :=
  ∀ n, P12470278197701547976.a n = (A069902 (n + 1) : ℚ)

end A069902

/-! ## A069902.P5147314113811212857

`A000265(A074399(n+1))`
-/

namespace A069902.P5147314113811212857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A074399 (n + 1)).toNat

end

end A069902.P5147314113811212857

namespace A069902

/-- `A000265(A074399(n+1))` -/
def P5147314113811212857.Spec : Prop :=
  ∀ n, P5147314113811212857.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P11179297676473111650

`A006005(A252489(n+1))`
-/

namespace A069902.P11179297676473111650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A252489 (n + 1)).toNat

end

end A069902.P11179297676473111650

namespace A069902

/-- `A006005(A252489(n+1))` -/
def P11179297676473111650.Spec : Prop :=
  ∀ n, P11179297676473111650.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P16063008412921936576

`A153152(A074399(n+1)-1)`
-/

namespace A069902.P16063008412921936576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A074399 (n + 1) - 1).toNat

end

end A069902.P16063008412921936576

namespace A069902

/-- `A153152(A074399(n+1)-1)` -/
def P16063008412921936576.Spec : Prop :=
  ∀ n, P16063008412921936576.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P341427229864069470

`A074399(n+1)-A000007(n)`
-/

namespace A069902.P341427229864069470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1) - A000007 n

end

end A069902.P341427229864069470

namespace A069902

/-- `A074399(n+1)-A000007(n)` -/
def P341427229864069470.Spec : Prop :=
  ∀ n, P341427229864069470.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P3924559383794885801

`A074399(n+1)/A054977(n)`
-/

namespace A069902.P3924559383794885801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074399 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A069902.P3924559383794885801

namespace A069902

/-- `A074399(n+1)/A054977(n)` -/
def P3924559383794885801.Spec : Prop :=
  ∀ n, P3924559383794885801.a n = (A069902 (n + 1) : ℚ)

end A069902

/-! ## A069902.P7608824187536598388

`gcd(A045896(n), A074399(n+1))`
-/

namespace A069902.P7608824187536598388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045896 n) (A074399 (n + 1))

end

end A069902.P7608824187536598388

namespace A069902

/-- `gcd(A045896(n), A074399(n+1))` -/
def P7608824187536598388.Spec : Prop :=
  ∀ n, (P7608824187536598388.a n : ℤ) = A069902 (n + 1)

end A069902

/-! ## A069902.P3844436194207552997

`A006530(A078636(n+1)/2)`
-/

namespace A069902.P3844436194207552997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A078636 (n + 1) : ℚ) / 2)).toNat

end

end A069902.P3844436194207552997

namespace A069902

/-- `A006530(A078636(n+1)/2)` -/
def P3844436194207552997.Spec : Prop :=
  ∀ n, P3844436194207552997.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P8405262455770622349

`A006530(A083482(n+1)/2)`
-/

namespace A069902.P8405262455770622349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A083482 (n + 1) : ℚ) / 2)).toNat

end

end A069902.P8405262455770622349

namespace A069902

/-- `A006530(A083482(n+1)/2)` -/
def P8405262455770622349.Spec : Prop :=
  ∀ n, P8405262455770622349.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P13761345382429967813

`A006530(A139131(n+1))`
-/

namespace A069902.P13761345382429967813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139131 (n + 1)).toNat

end

end A069902.P13761345382429967813

namespace A069902

/-- `A006530(A139131(n+1))` -/
def P13761345382429967813.Spec : Prop :=
  ∀ n, P13761345382429967813.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P10803655910864832411

`A006530(A069834(n+1))`
-/

namespace A069902.P10803655910864832411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069834 (n + 1)).toNat

end

end A069902.P10803655910864832411

namespace A069902

/-- `A006530(A069834(n+1))` -/
def P10803655910864832411.Spec : Prop :=
  ∀ n, P10803655910864832411.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P17534565898500541606

`A006530(∑[n+1])`
-/

namespace A069902.P17534565898500541606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069902.P17534565898500541606

namespace A069902

/-- `A006530(∑[n+1])` -/
def P17534565898500541606.Spec : Prop :=
  ∀ n, P17534565898500541606.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P3765707717257718337

`A078701(A006530((n+1)*(n+2)))`
-/

namespace A069902.P3765707717257718337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A006530 ((n + 1) * (n + 2))).toNat

end

end A069902.P3765707717257718337

namespace A069902

/-- `A078701(A006530((n+1)*(n+2)))` -/
def P3765707717257718337.Spec : Prop :=
  ∀ n, P3765707717257718337.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P16956429377958963851

`A014673(A245486(n+1))`
-/

namespace A069902.P16956429377958963851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A245486 (n + 1)).toNat

end

end A069902.P16956429377958963851

namespace A069902

/-- `A014673(A245486(n+1))` -/
def P16956429377958963851.Spec : Prop :=
  ∀ n, P16956429377958963851.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P7416747302743630123

`A284695(∑[n+1])`
-/

namespace A069902.P7416747302743630123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069902.P7416747302743630123

namespace A069902

/-- `A284695(∑[n+1])` -/
def P7416747302743630123.Spec : Prop :=
  ∀ n, P7416747302743630123.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P1205307638270540010

`A299766(∑[n+1])`
-/

namespace A069902.P1205307638270540010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069902.P1205307638270540010

namespace A069902

/-- `A299766(∑[n+1])` -/
def P1205307638270540010.Spec : Prop :=
  ∀ n, P1205307638270540010.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P10782665634292524843

`A098802(∑[n+3])`
-/

namespace A069902.P10782665634292524843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098802 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069902.P10782665634292524843

namespace A069902

/-- `A098802(∑[n+3])` -/
def P10782665634292524843.Spec : Prop :=
  ∀ n, P10782665634292524843.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P5184425828216554177

`A085392(A078636(n+1))`
-/

namespace A069902.P5184425828216554177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A078636 (n + 1)).toNat

end

end A069902.P5184425828216554177

namespace A069902

/-- `A085392(A078636(n+1))` -/
def P5184425828216554177.Spec : Prop :=
  ∀ n, P5184425828216554177.a n = A069902 (n + 1)

end A069902

/-! ## A069902.P11295572464930190736

`A085392(A083482(n+1))`
-/

namespace A069902.P11295572464930190736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A083482 (n + 1)).toNat

end

end A069902.P11295572464930190736

namespace A069902

/-- `A085392(A083482(n+1))` -/
def P11295572464930190736.Spec : Prop :=
  ∀ n, P11295572464930190736.a n = A069902 (n + 1)

end A069902

/-!
# A069903: Number of distinct prime factors of n-th triangular number.

The programs for A069903, the canonical program `A069903.P1015842973906134869` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069903 has offset 1).

The definition of A069903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069903.P1015842973906134869

`A001221((n+1)*(n+2)/2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069903

/-- `A001221((n+1)*(n+2)/2)` -/
def P1015842973906134869.Spec : Prop :=
  ∀ n, P1015842973906134869.a n = A069903 (n + 1)

theorem P1015842973906134869.correct : P1015842973906134869.Spec := by
  intro n
  simp only [A069903, Nat.add_sub_cancel]

end A069903

/-! ## A069903.P1607110552591832087

`A059957(n+1)-A133872(n)`
-/

namespace A069903.P1607110552591832087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059957 (n + 1) - A133872 n

end

end A069903.P1607110552591832087

namespace A069903

/-- `A059957(n+1)-A133872(n)` -/
def P1607110552591832087.Spec : Prop :=
  ∀ n, P1607110552591832087.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P14495631741872417859

`A334862(A087688(n+1)*A087688(n+2))`
-/

namespace A069903.P14495631741872417859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334862 (A087688 (n + 1) * A087688 (n + 2)).toNat

end

end A069903.P14495631741872417859

namespace A069903

/-- `A334862(A087688(n+1)*A087688(n+2))` -/
def P14495631741872417859.Spec : Prop :=
  ∀ n, P14495631741872417859.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P8767683859795745322

`∑{e}[∏{p}[∑[n+1], #], #]`
-/

namespace A069903.P8767683859795745322
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A069903.P8767683859795745322

namespace A069903

/-- `∑{e}[∏{p}[∑[n+1], #], #]` -/
def P8767683859795745322.Spec : Prop :=
  ∀ n, (P8767683859795745322.a n : ℤ) = A069903 (n + 1)

end A069903

/-! ## A069903.P17764890290888904023

`∑{p}[∑[n+1], floor(atan(#))]`
-/

namespace A069903.P17764890290888904023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊Real.arctan (p : ℝ)⌋

end

end A069903.P17764890290888904023

namespace A069903

/-- `∑{p}[∑[n+1], floor(atan(#))]` -/
def P17764890290888904023.Spec : Prop :=
  ∀ n, P17764890290888904023.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P11139481784325104957

`∑{e}[∑[n+1], round(atan(#))]`
-/

namespace A069903.P11139481784325104957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.arctan (Nat.factorization (f1 n) p : ℝ))

end

end A069903.P11139481784325104957

namespace A069903

/-- `∑{e}[∑[n+1], round(atan(#))]` -/
def P11139481784325104957.Spec : Prop :=
  ∀ n, P11139481784325104957.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P4630669885776104738

`∑{e}[∑[n+1], ceil(tanh(#))]`
-/

namespace A069903.P4630669885776104738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈Real.tanh (Nat.factorization (f1 n) p : ℝ)⌉

end

end A069903.P4630669885776104738

namespace A069903

/-- `∑{e}[∑[n+1], ceil(tanh(#))]` -/
def P4630669885776104738.Spec : Prop :=
  ∀ n, P4630669885776104738.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P3340987703543105596

`∑{p}[∑[n+1], ceil(acot(#))]`
-/

namespace A069903.P3340987703543105596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (p : ℝ)⌉

end

end A069903.P3340987703543105596

namespace A069903

/-- `∑{p}[∑[n+1], ceil(acot(#))]` -/
def P3340987703543105596.Spec : Prop :=
  ∀ n, P3340987703543105596.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P1165922674701065722

`∑{e}[∑[n+1], round(tanh(#))]`
-/

namespace A069903.P1165922674701065722
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (Real.tanh (Nat.factorization (f1 n) p : ℝ))

end

end A069903.P1165922674701065722

namespace A069903

/-- `∑{e}[∑[n+1], round(tanh(#))]` -/
def P1165922674701065722.Spec : Prop :=
  ∀ n, P1165922674701065722.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P1838108437233014989

`∑{e}[∑[n+1], ceil(acot(#))]`
-/

namespace A069903.P1838108437233014989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈SequenceMachineLib.acot (Nat.factorization (f1 n) p : ℝ)⌉

end

end A069903.P1838108437233014989

namespace A069903

/-- `∑{e}[∑[n+1], ceil(acot(#))]` -/
def P1838108437233014989.Spec : Prop :=
  ∀ n, P1838108437233014989.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P17567025714370132398

`∑{p}[∑[n+1], ceil(1/#)]`
-/

namespace A069903.P17567025714370132398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉

end

end A069903.P17567025714370132398

namespace A069903

/-- `∑{p}[∑[n+1], ceil(1/#)]` -/
def P17567025714370132398.Spec : Prop :=
  ∀ n, P17567025714370132398.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P17635534765258893097

`∑{e}[∑[n+1], ceil(1/#)]`
-/

namespace A069903.P17635534765258893097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉

end

end A069903.P17635534765258893097

namespace A069903

/-- `∑{e}[∑[n+1], ceil(1/#)]` -/
def P17635534765258893097.Spec : Prop :=
  ∀ n, P17635534765258893097.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P14480914121293833555

`dr(∑{e}[∑[n+1], #/dr(#)])`
-/

namespace A069903.P14480914121293833555
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (SequenceMachineLib.digitalRoot (Nat.factorization (f1 n) p : ℤ) : ℚ)))

end

end A069903.P14480914121293833555

namespace A069903

/-- `dr(∑{e}[∑[n+1], #/dr(#)])` -/
def P14480914121293833555.Spec : Prop :=
  ∀ n, (P14480914121293833555.a n : ℤ) = A069903 (n + 1)

end A069903

/-! ## A069903.P7833186810349484096

`A001222(∏{e}[∑[n+1], A000040(#)])`
-/

namespace A069903.P7833186810349484096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A069903.P7833186810349484096

namespace A069903

/-- `A001222(∏{e}[∑[n+1], A000040(#)])` -/
def P7833186810349484096.Spec : Prop :=
  ∀ n, P7833186810349484096.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P6991184771048349259

`A000005(∏{p}[∑[n+1], A000005(#)])-1`
-/

namespace A069903.P6991184771048349259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), A000005 p).toNat - 1

end

end A069903.P6991184771048349259

namespace A069903

/-- `A000005(∏{p}[∑[n+1], A000005(#)])-1` -/
def P6991184771048349259.Spec : Prop :=
  ∀ n, P6991184771048349259.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P3384776273301118200

`A001222(∏{p}[∑[n+1], #])`
-/

namespace A069903.P3384776273301118200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A069903.P3384776273301118200

namespace A069903

/-- `A001222(∏{p}[∑[n+1], #])` -/
def P3384776273301118200.Spec : Prop :=
  ∀ n, P3384776273301118200.a n = A069903 (n + 1)

end A069903

/-! ## A069903.P5264694706563612746

`log2(A000005(∏{p}[∑[n+1], #]))`
-/

namespace A069903.P5264694706563612746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A069903.P5264694706563612746

namespace A069903

/-- `log2(A000005(∏{p}[∑[n+1], #]))` -/
def P5264694706563612746.Spec : Prop :=
  ∀ n, P5264694706563612746.a n = (A069903 (n + 1) : ℝ)

end A069903

/-!
# A069904: Number of prime factors of n-th triangular number (with multiplicity).

The programs for A069904, the canonical program `A069904.P2434558843873151070` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069904 has offset 1).

The definition of A069904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069904.P2434558843873151070

`A001222(n+1)+A001222(n+2)-1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A069904

/-- `A001222(n+1)+A001222(n+2)-1` -/
def P2434558843873151070.Spec : Prop :=
  ∀ n, P2434558843873151070.a n = A069904 (n + 1)

theorem P2434558843873151070.correct : P2434558843873151070.Spec := by
  intro n
  simp only [A069904, Nat.add_sub_cancel]

end A069904

/-! ## A069904.P13132802444637860615

`A001222((n+1)*(n+2)/2)`
-/

namespace A069904.P13132802444637860615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat

end

end A069904.P13132802444637860615

namespace A069904

/-- `A001222((n+1)*(n+2)/2)` -/
def P13132802444637860615.Spec : Prop :=
  ∀ n, P13132802444637860615.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P10320963163588003850

`A022559(n+2)-(A022559(n)+1)`
-/

namespace A069904.P10320963163588003850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 2) - (A022559 n + 1)

end

end A069904.P10320963163588003850

namespace A069904

/-- `A022559(n+2)-(A022559(n)+1)` -/
def P10320963163588003850.Spec : Prop :=
  ∀ n, P10320963163588003850.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P14286717713612022544

`A271980(A022559(n+2)-A022559(n))`
-/

namespace A069904.P14286717713612022544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271980 (A022559 (n + 2) - A022559 n).toNat

end

end A069904.P14286717713612022544

namespace A069904

/-- `A271980(A022559(n+2)-A022559(n))` -/
def P14286717713612022544.Spec : Prop :=
  ∀ n, P14286717713612022544.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P6236076134175530571

`A023443(A001222(n+1)+A001222(n+2))`
-/

namespace A069904.P6236076134175530571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001222 (n + 1) + A001222 (n + 2)).toNat

end

end A069904.P6236076134175530571

namespace A069904

/-- `A023443(A001222(n+1)+A001222(n+2))` -/
def P6236076134175530571.Spec : Prop :=
  ∀ n, P6236076134175530571.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P7703936384534450678

`A033619(A001222(n+1)+A001222(n+2))`
-/

namespace A069904.P7703936384534450678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A001222 (n + 1) + A001222 (n + 2)).toNat

end

end A069904.P7703936384534450678

namespace A069904

/-- `A033619(A001222(n+1)+A001222(n+2))` -/
def P7703936384534450678.Spec : Prop :=
  ∀ n, P7703936384534450678.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P6989949056615540612

`A123068(A001222(n+1)+A001222(n+2))`
-/

namespace A069904.P6989949056615540612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A001222 (n + 1) + A001222 (n + 2)).toNat

end

end A069904.P6989949056615540612

namespace A069904

/-- `A123068(A001222(n+1)+A001222(n+2))` -/
def P6989949056615540612.Spec : Prop :=
  ∀ n, P6989949056615540612.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P11365994669471783879

`A130696(A001222(n+1)+A001222(n+2))`
-/

namespace A069904.P11365994669471783879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A001222 (n + 1) + A001222 (n + 2)).toNat

end

end A069904.P11365994669471783879

namespace A069904

/-- `A130696(A001222(n+1)+A001222(n+2))` -/
def P11365994669471783879.Spec : Prop :=
  ∀ n, P11365994669471783879.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P16121126452642620197

`A171829(A001222(n+1)+A001222(n+2))`
-/

namespace A069904.P16121126452642620197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171829 (A001222 (n + 1) + A001222 (n + 2)).toNat

end

end A069904.P16121126452642620197

namespace A069904

/-- `A171829(A001222(n+1)+A001222(n+2))` -/
def P16121126452642620197.Spec : Prop :=
  ∀ n, P16121126452642620197.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P2491975352131565566

`A236841(A001222(n+1)+A001222(n+2))`
-/

namespace A069904.P2491975352131565566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236841 (A001222 (n + 1) + A001222 (n + 2)).toNat

end

end A069904.P2491975352131565566

namespace A069904

/-- `A236841(A001222(n+1)+A001222(n+2))` -/
def P2491975352131565566.Spec : Prop :=
  ∀ n, P2491975352131565566.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P7743081425782864606

`A247751(A001222(n+1)+A001222(n+2))`
-/

namespace A069904.P7743081425782864606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247751 (A001222 (n + 1) + A001222 (n + 2)).toNat

end

end A069904.P7743081425782864606

namespace A069904

/-- `A247751(A001222(n+1)+A001222(n+2))` -/
def P7743081425782864606.Spec : Prop :=
  ∀ n, P7743081425782864606.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P9682875151239697157

`A289207(A001222(n+2)+1+A001222(n+1))`
-/

namespace A069904.P9682875151239697157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A001222 (n + 2) + 1 + A001222 (n + 1)).toNat

end

end A069904.P9682875151239697157

namespace A069904

/-- `A289207(A001222(n+2)+1+A001222(n+1))` -/
def P9682875151239697157.Spec : Prop :=
  ∀ n, P9682875151239697157.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P13170587807829915906

`A001222(n+1)+A001222((n+2)/A006530(n+2))`
-/

namespace A069904.P13170587807829915906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + A001222 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A006530 (n + 2) : ℚ))).toNat

end

end A069904.P13170587807829915906

namespace A069904

/-- `A001222(n+1)+A001222((n+2)/A006530(n+2))` -/
def P13170587807829915906.Spec : Prop :=
  ∀ n, P13170587807829915906.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P16471205762386134312

`A001222(n+1)+A307409(n+2)/A001221(n+2)`
-/

namespace A069904.P16471205762386134312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (n + 1) : ℚ) + (A307409 (n + 2) : ℚ) / (A001221 (n + 2) : ℚ)

end

end A069904.P16471205762386134312

namespace A069904

/-- `A001222(n+1)+A307409(n+2)/A001221(n+2)` -/
def P16471205762386134312.Spec : Prop :=
  ∀ n, P16471205762386134312.a n = (A069904 (n + 1) : ℚ)

end A069904

/-! ## A069904.P5437307314590654837

`A252736(n+2)+A001222(n+1)`
-/

namespace A069904.P5437307314590654837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 2) + A001222 (n + 1)

end

end A069904.P5437307314590654837

namespace A069904

/-- `A252736(n+2)+A001222(n+1)` -/
def P5437307314590654837.Spec : Prop :=
  ∀ n, P5437307314590654837.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P8347433689575148228

`A064800(n+1)-A069345(n+2)`
-/

namespace A069904.P8347433689575148228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - A069345 (n + 2)

end

end A069904.P8347433689575148228

namespace A069904

/-- `A064800(n+1)-A069345(n+2)` -/
def P8347433689575148228.Spec : Prop :=
  ∀ n, P8347433689575148228.a n = A069904 (n + 1)

theorem P8347433689575148228.correct : P8347433689575148228.Spec := by
  intro n
  simp only [A069904, Nat.add_sub_cancel, A069904.P8347433689575148228.a, A069904.P2434558843873151070.a, A001222, A001222.P11318177267732088261.a, A064800, A064800.P9178262813478475092.a, A069345, A069345.P4010349656515474516.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069904

/-! ## A069904.P16166245530364234884

`A001222(A032742(n+2))+Δ[A022559(n)]`
-/

namespace A069904.P16166245530364234884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032742 (n + 2)).toNat + (f1 (n + 1) - f1 n)

end

end A069904.P16166245530364234884

namespace A069904

/-- `A001222(A032742(n+2))+Δ[A022559(n)]` -/
def P16166245530364234884.Spec : Prop :=
  ∀ n, P16166245530364234884.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P3561607815843761719

`A252464(n+1)+A252736(n+2)-A252735(n+1)`
-/

namespace A069904.P3561607815843761719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + (A252736 (n + 2) - A252735 (n + 1))

end

end A069904.P3561607815843761719

namespace A069904

/-- `A252464(n+1)+A252736(n+2)-A252735(n+1)` -/
def P3561607815843761719.Spec : Prop :=
  ∀ n, P3561607815843761719.a n = A069904 (n + 1)

end A069904

/-! ## A069904.P16301856796750098725

`A252464(n+1)+A285726(n+2)-A285725(n+1)`
-/

namespace A069904.P16301856796750098725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) + (A285726 (n + 2) - A285725 (n + 1))

end

end A069904.P16301856796750098725

namespace A069904

/-- `A252464(n+1)+A285726(n+2)-A285725(n+1)` -/
def P16301856796750098725.Spec : Prop :=
  ∀ n, P16301856796750098725.a n = A069904 (n + 1)

end A069904

/-!
# A069905: Number of partitions of n into 3 positive parts.

The programs for A069905, the canonical program `A069905.P9161905402948910103` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069905 has offset 0).

The definition of A069905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069905.P9161905402948910103

`round(n²/12)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069905

/-- `round(n²/12)` -/
def P9161905402948910103.Spec : Prop :=
  ∀ n, P9161905402948910103.a n = A069905 n

theorem P9161905402948910103.correct : P9161905402948910103.Spec := by
  intro n
  simp only [A069905]

end A069905

/-! ## A069905.P13702026279988410068

`(n²+2*gcd(n, 3)-3*gcd(n, 2))/12`
-/

namespace A069905.P13702026279988410068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 2 * Nat.gcd n 3 : ℤ) - (3 * Nat.gcd n 2 : ℤ) : ℚ) / 12

end

end A069905.P13702026279988410068

namespace A069905

/-- `(n²+2*gcd(n, 3)-3*gcd(n, 2))/12` -/
def P13702026279988410068.Spec : Prop :=
  ∀ n, P13702026279988410068.a n = (A069905 n : ℚ)

end A069905

/-! ## A069905.P4252488576215608163

`(6*n²-9*(-1)^n-7+16*cos(2*π*n/3))/72`
-/

namespace A069905.P4252488576215608163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((6 * n ^ 2 : ℤ) - 9 * (-1) ^ n - 7 : ℝ) + 16 * Real.cos (2 * Real.pi * (n : ℝ) / 3)) / 72

end

end A069905.P4252488576215608163

namespace A069905

/-- `(6*n²-9*(-1)^n-7+16*cos(2*π*n/3))/72` -/
def P4252488576215608163.Spec : Prop :=
  ∀ n, P4252488576215608163.a n = (A069905 n : ℝ)

end A069905

/-! ## A069905.P12283806180252560776

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A069905.P12283806180252560776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A069905.P12283806180252560776

namespace A069905

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P12283806180252560776.Spec : Prop :=
  ∀ n, P12283806180252560776.a n = A069905 n

end A069905

/-! ## A069905.P13749619458326267779

`a(n-1)+A008615(n-1)` with `a(0)=0`
-/

namespace A069905.P13749619458326267779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A008615 (n - 1)

end

end A069905.P13749619458326267779

namespace A069905

/-- `a(n-1)+A008615(n-1)` -/
def P13749619458326267779.Spec : Prop :=
  ∀ n, P13749619458326267779.a n = A069905 n

end A069905

/-! ## A069905.P11801796023539205162

`A000212(n)-A002620(n)`
-/

namespace A069905.P11801796023539205162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 n - A002620 n

end

end A069905.P11801796023539205162

namespace A069905

/-- `A000212(n)-A002620(n)` -/
def P11801796023539205162.Spec : Prop :=
  ∀ n, P11801796023539205162.a n = A069905 n

end A069905

/-! ## A069905.P346220579749302434

`A008133(n+1)-A307018(n+1)`
-/

namespace A069905.P346220579749302434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 (n + 1) - A307018 (n + 1)

end

end A069905.P346220579749302434

namespace A069905

/-- `A008133(n+1)-A307018(n+1)` -/
def P346220579749302434.Spec : Prop :=
  ∀ n, P346220579749302434.a n = A069905 n

end A069905

/-! ## A069905.P431071651771515778

`(A309511(n)+A309513(n))/3`
-/

namespace A069905.P431071651771515778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309511 n + A309513 n : ℚ) / 3

end

end A069905.P431071651771515778

namespace A069905

/-- `(A309511(n)+A309513(n))/3` -/
def P431071651771515778.Spec : Prop :=
  ∀ n, P431071651771515778.a n = (A069905 n : ℚ)

theorem P431071651771515778.correct : P431071651771515778.Spec := by
  intro n
  simp only [A069905, Nat.add_sub_cancel, A069905.P431071651771515778.a, A069905.P9161905402948910103.a, A309511, A309511.P536721311039358920.a, A309513, A309513.P14970399749306751666.a, A007590, A007590.P9530274664467440414.a, A056827, A056827.P8486130082073073386.a, A110654, A110654.P360289776162656549.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069905

/-! ## A069905.P11985885086713995164

`A005044(2*n)`
-/

namespace A069905.P11985885086713995164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n)

end

end A069905.P11985885086713995164

namespace A069905

/-- `A005044(2*n)` -/
def P11985885086713995164.Spec : Prop :=
  ∀ n, P11985885086713995164.a n = A069905 n

end A069905

/-! ## A069905.P15468342930388590489

`∑[round(xor(1, n-1)/6)]`
-/

namespace A069905.P15468342930388590489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor 1 ((n : ℤ) - 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069905.P15468342930388590489

namespace A069905

/-- `∑[round(xor(1, n-1)/6)]` -/
def P15468342930388590489.Spec : Prop :=
  ∀ n, P15468342930388590489.a n = A069905 n

end A069905

/-! ## A069905.P7559704647995297246

`∑[∑[n%2-∑[n]%3]]`
-/

namespace A069905.P7559704647995297246
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f3 j) % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069905.P7559704647995297246

namespace A069905

/-- `∑[∑[n%2-∑[n]%3]]` -/
def P7559704647995297246.Spec : Prop :=
  ∀ n, P7559704647995297246.a n = A069905 n

end A069905

/-! ## A069905.P16878111480147919393

`floor(a(n-2)+n/3)` with `a(0)=0, a(1)=0`
-/

namespace A069905.P16878111480147919393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌊(a (n - 2) : ℚ) + (n : ℚ) / 3⌋

end

end A069905.P16878111480147919393

namespace A069905

/-- `floor(a(n-2)+n/3)` -/
def P16878111480147919393.Spec : Prop :=
  ∀ n, P16878111480147919393.a n = A069905 n

end A069905

/-! ## A069905.P2123265450496046642

`∑[floor(n/3-a(n-1))]` with `a(0)=0`
-/

namespace A069905.P2123265450496046642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊(n : ℚ) / 3 - (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069905.P2123265450496046642

namespace A069905

/-- `∑[floor(n/3-a(n-1))]` -/
def P2123265450496046642.Spec : Prop :=
  ∀ n, P2123265450496046642.a n = A069905 n

end A069905

/-! ## A069905.P1601558018470906505

`∑[a(n-3)+and(1, n)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A069905.P1601558018470906505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 3) + Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069905.P1601558018470906505

namespace A069905

/-- `∑[a(n-3)+and(1, n)]` -/
def P1601558018470906505.Spec : Prop :=
  ∀ n, (P1601558018470906505.a n : ℤ) = A069905 n

end A069905

/-! ## A069905.P11088452486202392380

`a(n-2)+round((n-1)/3)` with `a(0)=0, a(1)=0`
-/

namespace A069905.P11088452486202392380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 3)

end

end A069905.P11088452486202392380

namespace A069905

/-- `a(n-2)+round((n-1)/3)` -/
def P11088452486202392380.Spec : Prop :=
  ∀ n, P11088452486202392380.a n = A069905 n

end A069905

/-! ## A069905.P1075576632381063972

`ceil(a(n-2)+(n-2)/3)` with `a(0)=0, a(1)=0`
-/

namespace A069905.P1075576632381063972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌈(a (n - 2) : ℚ) + ((n : ℤ) - 2 : ℚ) / 3⌉

end

end A069905.P1075576632381063972

namespace A069905

/-- `ceil(a(n-2)+(n-2)/3)` -/
def P1075576632381063972.Spec : Prop :=
  ∀ n, P1075576632381063972.a n = A069905 n

end A069905

/-! ## A069905.P7073101540743895354

`∑[∑[a(n-3)-(-1)^n]]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A069905.P7073101540743895354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f2 =>
  f2 (n - 3) - (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069905.P7073101540743895354

namespace A069905

/-- `∑[∑[a(n-3)-(-1)^n]]` -/
def P7073101540743895354.Spec : Prop :=
  ∀ n, P7073101540743895354.a n = A069905 n

end A069905

/-! ## A069905.P2740441799398114698

`n-3+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A069905.P2740441799398114698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 2] fun n a =>
  (n : ℤ) - 3 + a (n - 6)

end

end A069905.P2740441799398114698

namespace A069905

/-- `n-3+a(n-6)` -/
def P2740441799398114698.Spec : Prop :=
  ∀ n, P2740441799398114698.a n = A069905 n

end A069905

/-! ## A069905.P14261452281879780259

`floor(a(n-2))-floor((2-n)/3)` with `a(0)=0, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A069905.P14261452281879780259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - ⌊(2 - (n : ℤ) : ℚ) / 3⌋

end

end A069905.P14261452281879780259

namespace A069905

/-- `floor(a(n-2))-floor((2-n)/3)` -/
def P14261452281879780259.Spec : Prop :=
  ∀ n, P14261452281879780259.a n = A069905 n

end A069905

/-! ## A069905.P626245085488017533

`∑[∑[a(n-3)²]-a(n-1)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A069905.P626245085488017533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069905.P626245085488017533

namespace A069905

/-- `∑[∑[a(n-3)²]-a(n-1)]` -/
def P626245085488017533.Spec : Prop :=
  ∀ n, P626245085488017533.a n = A069905 n

end A069905

/-!
# A069906: Number of pentagons that can be formed with perimeter n. In other words, number of partitions of n into five parts such that the sum of any four is more than the fifth.

The programs for A069906, the canonical program `A069906.P3213861137805963780` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069906 has offset 0).

The definition of A069906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069906.P3213861137805963780

`A026811(n)-∑[A026810(A142150(n))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069906

/-- `A026811(n)-∑[A026810(A142150(n))]` -/
def P3213861137805963780.Spec : Prop :=
  ∀ n, P3213861137805963780.a n = A069906 n

theorem P3213861137805963780.correct : P3213861137805963780.Spec := by
  intro n
  simp only [A069906]

end A069906

/-! ## A069906.P8151056615200615890

`A026811(n)-∑[A026810(A166514(n))]`
-/

namespace A069906.P8151056615200615890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A166514 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026811 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069906.P8151056615200615890

namespace A069906

/-- `A026811(n)-∑[A026810(A166514(n))]` -/
def P8151056615200615890.Spec : Prop :=
  ∀ n, P8151056615200615890.a n = A069906 n

end A069906

/-! ## A069906.P3830925032335862673

`∑[A288166(2*n)%A101049(3*n+2)]`
-/

namespace A069906.P3830925032335862673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288166 (2 * n)) (A101049 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069906.P3830925032335862673

namespace A069906

/-- `∑[A288166(2*n)%A101049(3*n+2)]` -/
def P3830925032335862673.Spec : Prop :=
  ∀ n, P3830925032335862673.a n = A069906 n

end A069906

/-!
# A069907: Number of hexagons that can be formed with perimeter n. In other words, partitions of n into six parts such that the sum of any 5 is more than the sixth.

The programs for A069907, there is no canonical definition to state claims against.
-/

/-! ## A069907.P16392569201674478228

`A394247(A018792(n+1))`
-/

namespace A069907.P16392569201674478228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394247 (A018792 (n + 1)).toNat

end

end A069907.P16392569201674478228

/-!
# A069908: Numbers congruent to +-2, +-3, +-4 or +-5 mod 16.

The programs for A069908, the canonical program `A069908.P3766769676983889095` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069908 has offset 1).

The definition of A069908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069908.P8147528861087515884

`A047452(∑[char[4*n]])+n+1`
-/

namespace A069908.P8147528861087515884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047452 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A069908.P8147528861087515884

namespace A069908

/-- `A047452(∑[char[4*n]])+n+1` -/
def P8147528861087515884.Spec : Prop :=
  ∀ n, P8147528861087515884.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P3766769676983889095

`A047615(A008621(n))+2+n`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069908

/-- `A047615(A008621(n))+2+n` -/
def P3766769676983889095.Spec : Prop :=
  ∀ n, P3766769676983889095.a n = A069908 (n + 1)

theorem P3766769676983889095.correct : P3766769676983889095.Spec := by
  intro n
  simp only [A069908, Nat.add_sub_cancel]

end A069908

/-! ## A069908.P18202608496138425110

`A047482(2*A008621(n))+n`
-/

namespace A069908.P18202608496138425110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047482 (2 * A008621 n).toNat + (n : ℤ)

end

end A069908.P18202608496138425110

namespace A069908

/-- `A047482(2*A008621(n))+n` -/
def P18202608496138425110.Spec : Prop :=
  ∀ n, P18202608496138425110.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P3680318105395369414

`A047533(2*A008621(n))+n`
-/

namespace A069908.P3680318105395369414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047533 (2 * A008621 n).toNat + (n : ℤ)

end

end A069908.P3680318105395369414

namespace A069908

/-- `A047533(2*A008621(n))+n` -/
def P3680318105395369414.Spec : Prop :=
  ∀ n, P3680318105395369414.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P1206075451181723965

`A047541(2*A008621(n))+n`
-/

namespace A069908.P1206075451181723965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047541 (2 * A008621 n).toNat + (n : ℤ)

end

end A069908.P1206075451181723965

namespace A069908

/-- `A047541(2*A008621(n))+n` -/
def P1206075451181723965.Spec : Prop :=
  ∀ n, P1206075451181723965.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P9318764614455457276

`A047554(2*A008621(n))+n`
-/

namespace A069908.P9318764614455457276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047554 (2 * A008621 n).toNat + (n : ℤ)

end

end A069908.P9318764614455457276

namespace A069908

/-- `A047554(2*A008621(n))+n` -/
def P9318764614455457276.Spec : Prop :=
  ∀ n, P9318764614455457276.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P3376548798036526094

`n+1+A047452(A002265(n)+1)`
-/

namespace A069908.P3376548798036526094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A047452 (A002265 n + 1).toNat

end

end A069908.P3376548798036526094

namespace A069908

/-- `n+1+A047452(A002265(n)+1)` -/
def P3376548798036526094.Spec : Prop :=
  ∀ n, P3376548798036526094.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P2066172488672740298

`A047425(n+1)-A131078(n+1)`
-/

namespace A069908.P2066172488672740298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047425 (n + 1) - A131078 (n + 1)

end

end A069908.P2066172488672740298

namespace A069908

/-- `A047425(n+1)-A131078(n+1)` -/
def P2066172488672740298.Spec : Prop :=
  ∀ n, P2066172488672740298.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P17652249518911920314

`A047596(n+1)+A000035(A002265(n))`
-/

namespace A069908.P17652249518911920314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047596 (n + 1) + A000035 (A002265 n).toNat

end

end A069908.P17652249518911920314

namespace A069908

/-- `A047596(n+1)+A000035(A002265(n))` -/
def P17652249518911920314.Spec : Prop :=
  ∀ n, P17652249518911920314.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P16030585460328864882

`A047524(A004526(A004526(n))+1)+n`
-/

namespace A069908.P16030585460328864882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (A004526 (A004526 n).toNat + 1).toNat + (n : ℤ)

end

end A069908.P16030585460328864882

namespace A069908

/-- `A047524(A004526(A004526(n))+1)+n` -/
def P16030585460328864882.Spec : Prop :=
  ∀ n, P16030585460328864882.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P3156664601835236330

`A047566(n+1)-gcd(2, A004526(A004526(n)))`
-/

namespace A069908.P3156664601835236330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047566 (n + 1) - (Int.gcd 2 (A004526 (A004526 n).toNat) : ℤ)

end

end A069908.P3156664601835236330

namespace A069908

/-- `A047566(n+1)-gcd(2, A004526(A004526(n)))` -/
def P3156664601835236330.Spec : Prop :=
  ∀ n, P3156664601835236330.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P11453360823040826498

`A007310(A002265(n)+1)+A008621(n)+n`
-/

namespace A069908.P11453360823040826498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A002265 n + 1).toNat + (A008621 n + (n : ℤ))

end

end A069908.P11453360823040826498

namespace A069908

/-- `A007310(A002265(n)+1)+A008621(n)+n` -/
def P11453360823040826498.Spec : Prop :=
  ∀ n, P11453360823040826498.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P11264242757334897732

`A047201(n+1)+A007310(A047201(n+1)-n)`
-/

namespace A069908.P11264242757334897732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1) + A007310 (A047201 (n + 1) - (n : ℤ)).toNat

end

end A069908.P11264242757334897732

namespace A069908

/-- `A047201(n+1)+A007310(A047201(n+1)-n)` -/
def P11264242757334897732.Spec : Prop :=
  ∀ n, P11264242757334897732.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P4915945737053314842

`lt[A146559(n), A138231(n+1)]`
-/

namespace A069908.P4915945737053314842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069908.P4915945737053314842

namespace A069908

/-- `lt[A146559(n), A138231(n+1)]` -/
def P4915945737053314842.Spec : Prop :=
  ∀ n, (P4915945737053314842.a n : ℤ) = A069908 (n + 1)

end A069908

/-! ## A069908.P17576686458112664863

`lt[A099087(n), A138231(n)]-1`
-/

namespace A069908.P17576686458112664863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A069908.P17576686458112664863

namespace A069908

/-- `lt[A099087(n), A138231(n)]-1` -/
def P17576686458112664863.Spec : Prop :=
  ∀ n, P17576686458112664863.a n = A069908 (n + 1)

end A069908

/-! ## A069908.P1310370653424513701

`lt[A099087(n+1), A138231(n+1)]`
-/

namespace A069908.P1310370653424513701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069908.P1310370653424513701

namespace A069908

/-- `lt[A099087(n+1), A138231(n+1)]` -/
def P1310370653424513701.Spec : Prop :=
  ∀ n, (P1310370653424513701.a n : ℤ) = A069908 (n + 1)

end A069908

/-! ## A069908.P1224424630852993165

`lt[A138231(2*n+1), A138231(n+1)]`
-/

namespace A069908.P1224424630852993165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069908.P1224424630852993165

namespace A069908

/-- `lt[A138231(2*n+1), A138231(n+1)]` -/
def P1224424630852993165.Spec : Prop :=
  ∀ n, (P1224424630852993165.a n : ℤ) = A069908 (n + 1)

end A069908

/-! ## A069908.P3660129291596607424

`lt[A146559(n), atan(A099586(n+1))]`
-/

namespace A069908.P3660129291596607424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A099586 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A069908.P3660129291596607424

namespace A069908

/-- `lt[A146559(n), atan(A099586(n+1))]` -/
def P3660129291596607424.Spec : Prop :=
  ∀ n, (P3660129291596607424.a n : ℤ) = A069908 (n + 1)

end A069908

/-!
# A069909: Numbers congruent to +-1, +-4, +-6, +-7 mod 16.

The programs for A069909, the canonical program `A069909.P16895275314905969528` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069909 has offset 0).

The definition of A069909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069909.P16895275314905969528

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=6, a(3)=7, a(4)=9, a(5)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069909

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P16895275314905969528.Spec : Prop :=
  ∀ n, P16895275314905969528.a n = A069909 n

theorem P16895275314905969528.correct : P16895275314905969528.Spec := by
  intro n
  simp only [A069909]

end A069909

/-! ## A069909.P1272958874314622676

`∑[C(2, and(9, n²))]+n`
-/

namespace A069909.P1272958874314622676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 9 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A069909.P1272958874314622676

namespace A069909

/-- `∑[C(2, and(9, n²))]+n` -/
def P1272958874314622676.Spec : Prop :=
  ∀ n, (P1272958874314622676.a n : ℤ) = A069909 n

end A069909

/-! ## A069909.P8596018419981103662

`∑[4-a(n-4)]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=1, a(4)=2`
-/

namespace A069909.P8596018419981103662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 1, 2] fun n f1 =>
  4 - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069909.P8596018419981103662

namespace A069909

/-- `∑[4-a(n-4)]` -/
def P8596018419981103662.Spec : Prop :=
  ∀ n, P8596018419981103662.a n = A069909 n

end A069909

/-! ## A069909.P17124804126313978331

`a(n-1)+C(2, and(9, n²))+1` with `a(0)=1`
-/

namespace A069909.P17124804126313978331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Nat.choose 2 (Nat.land 9 (n ^ 2)) + 1)

end

end A069909.P17124804126313978331

namespace A069909

/-- `a(n-1)+C(2, and(9, n²))+1` -/
def P17124804126313978331.Spec : Prop :=
  ∀ n, (P17124804126313978331.a n : ℤ) = A069909 n

end A069909

/-! ## A069909.P4829135981541795647

`a(n-1)+and(3, xor(a(n-2), a(n-3)))` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A069909.P4829135981541795647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  a (n - 1) + Nat.land 3 (Nat.xor (a (n - 2)) (a (n - 3)))

end

end A069909.P4829135981541795647

namespace A069909

/-- `a(n-1)+and(3, xor(a(n-2), a(n-3)))` -/
def P4829135981541795647.Spec : Prop :=
  ∀ n, (P4829135981541795647.a n : ℤ) = A069909 n

end A069909

/-! ## A069909.P5857642555056867005

`∑[A040218(n)%7]`
-/

namespace A069909.P5857642555056867005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040218 n) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069909.P5857642555056867005

namespace A069909

/-- `∑[A040218(n)%7]` -/
def P5857642555056867005.Spec : Prop :=
  ∀ n, P5857642555056867005.a n = A069909 n

end A069909

/-! ## A069909.P11609918628638628236

`A061007(∑[A046980(n)]+2)+2*n`
-/

namespace A069909.P11609918628638628236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061007 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + (2 * n : ℤ)

end

end A069909.P11609918628638628236

namespace A069909

/-- `A061007(∑[A046980(n)]+2)+2*n` -/
def P11609918628638628236.Spec : Prop :=
  ∀ n, P11609918628638628236.a n = A069909 n

end A069909

/-! ## A069909.P12448584110543175820

`2*n+1-A056594(A008619(n+1))`
-/

namespace A069909.P12448584110543175820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A056594 (A008619 (n + 1)).toNat

end

end A069909.P12448584110543175820

namespace A069909

/-- `2*n+1-A056594(A008619(n+1))` -/
def P12448584110543175820.Spec : Prop :=
  ∀ n, P12448584110543175820.a n = A069909 n

end A069909

/-! ## A069909.P10498463243597576807

`Δ[n²-A046980(n)]`
-/

namespace A069909.P10498463243597576807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A046980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069909.P10498463243597576807

namespace A069909

/-- `Δ[n²-A046980(n)]` -/
def P10498463243597576807.Spec : Prop :=
  ∀ n, P10498463243597576807.a n = A069909 n

end A069909

/-! ## A069909.P7857290955364341945

`A132380(n+1)+Δ[n²]`
-/

namespace A069909.P7857290955364341945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A069909.P7857290955364341945

namespace A069909

/-- `A132380(n+1)+Δ[n²]` -/
def P7857290955364341945.Spec : Prop :=
  ∀ n, P7857290955364341945.a n = A069909 n

end A069909

/-! ## A069909.P6636044269008652670

`A004277(n+1)+A132380(n+1)-1`
-/

namespace A069909.P6636044269008652670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + (A132380 (n + 1) - 1)

end

end A069909.P6636044269008652670

namespace A069909

/-- `A004277(n+1)+A132380(n+1)-1` -/
def P6636044269008652670.Spec : Prop :=
  ∀ n, P6636044269008652670.a n = A069909 n

end A069909

/-! ## A069909.P12427794740249418446

`A101455(A004526(n+1))+2*n+1`
-/

namespace A069909.P12427794740249418446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A004526 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A069909.P12427794740249418446

namespace A069909

/-- `A101455(A004526(n+1))+2*n+1` -/
def P12427794740249418446.Spec : Prop :=
  ∀ n, P12427794740249418446.a n = A069909 n

end A069909

/-! ## A069909.P5543191903692986429

`A028310(n+1)+A132380(n+1)+n`
-/

namespace A069909.P5543191903692986429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) + (A132380 (n + 1) + (n : ℤ))

end

end A069909.P5543191903692986429

namespace A069909

/-- `A028310(n+1)+A132380(n+1)+n` -/
def P5543191903692986429.Spec : Prop :=
  ∀ n, P5543191903692986429.a n = A069909 n

end A069909

/-! ## A069909.P4056642152368611909

`A000217(2*n+1)+A132380(n+1)-A000217(2*n)`
-/

namespace A069909.P4056642152368611909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1) + (A132380 (n + 1) - A000217 (2 * n))

end

end A069909.P4056642152368611909

namespace A069909

/-- `A000217(2*n+1)+A132380(n+1)-A000217(2*n)` -/
def P4056642152368611909.Spec : Prop :=
  ∀ n, P4056642152368611909.a n = A069909 n

end A069909

/-! ## A069909.P3379962402690723706

`Δ[n²-A131079(n+2)]`
-/

namespace A069909.P3379962402690723706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A131079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069909.P3379962402690723706

namespace A069909

/-- `Δ[n²-A131079(n+2)]` -/
def P3379962402690723706.Spec : Prop :=
  ∀ n, P3379962402690723706.a n = A069909 n

end A069909

/-! ## A069909.P3944153628180974180

`∑[A188510(n+2)]+2*n+1`
-/

namespace A069909.P3944153628180974180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A069909.P3944153628180974180

namespace A069909

/-- `∑[A188510(n+2)]+2*n+1` -/
def P3944153628180974180.Spec : Prop :=
  ∀ n, P3944153628180974180.a n = A069909 n

end A069909

/-! ## A069909.P11701965229331835743

`∑[A257170(n+2)]+2*n+1`
-/

namespace A069909.P11701965229331835743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A069909.P11701965229331835743

namespace A069909

/-- `∑[A257170(n+2)]+2*n+1` -/
def P11701965229331835743.Spec : Prop :=
  ∀ n, P11701965229331835743.a n = A069909 n

end A069909

/-! ## A069909.P2610512741022166555

`2*n+1-A117569(A008619(n+3))`
-/

namespace A069909.P2610512741022166555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A117569 (A008619 (n + 3)).toNat

end

end A069909.P2610512741022166555

namespace A069909

/-- `2*n+1-A117569(A008619(n+3))` -/
def P2610512741022166555.Spec : Prop :=
  ∀ n, P2610512741022166555.a n = A069909 n

end A069909

/-! ## A069909.P5860631112369342419

`Δ[n²-A046978(n+2)]`
-/

namespace A069909.P5860631112369342419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A046978 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069909.P5860631112369342419

namespace A069909

/-- `Δ[n²-A046978(n+2)]` -/
def P5860631112369342419.Spec : Prop :=
  ∀ n, P5860631112369342419.a n = A069909 n

end A069909

/-! ## A069909.P5152246248757196341

`A007877(A003188(n+2))+2*n`
-/

namespace A069909.P5152246248757196341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (A003188 (n + 2)).toNat + (2 * n : ℤ)

end

end A069909.P5152246248757196341

namespace A069909

/-- `A007877(A003188(n+2))+2*n` -/
def P5152246248757196341.Spec : Prop :=
  ∀ n, P5152246248757196341.a n = A069909 n

end A069909

/-!
# A069910: Expansion of Product_{i in A069908} 1/(1 - x^i).

The programs for A069910, there is no canonical definition to state claims against.
-/

/-! ## A069910.P17192603530723321565

`A000700(2*n)`
-/

namespace A069910.P17192603530723321565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n)

end

end A069910.P17192603530723321565

/-! ## A069910.P15556065277672152163

`A081362(2*n)`
-/

namespace A069910.P15556065277672152163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (2 * n)

end

end A069910.P15556065277672152163

/-! ## A069910.P16585634814202499114

`or(char[18], A000700(n+n))`
-/

namespace A069910.P16585634814202499114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000700 (n + n))

end

end A069910.P16585634814202499114

/-! ## A069910.P11749487416525244508

`abs(A081362(A004277(n)))`
-/

namespace A069910.P11749487416525244508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 (A004277 n).toNat|

end

end A069910.P11749487416525244508

/-! ## A069910.P9234205362776876998

`lcm(A000700(A004277(n)), A057077(n))`
-/

namespace A069910.P9234205362776876998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000700 (A004277 n).toNat) (A057077 n)

end

end A069910.P9234205362776876998

/-! ## A069910.P6892300544545986155

`A000700(A004277(n))%A004402(n+1)`
-/

namespace A069910.P6892300544545986155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 (A004277 n).toNat) (A004402 (n + 1))

end

end A069910.P6892300544545986155

/-! ## A069910.P16127550065766640956

`Δ[A096911(A028310(2*n))]`
-/

namespace A069910.P16127550065766640956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069910.P16127550065766640956

/-! ## A069910.P12958284467982957752

`Δ[A096911(A028310(n)+n)]`
-/

namespace A069910.P12958284467982957752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069910.P12958284467982957752

/-! ## A069910.P13230574380735320593

`A298596(2*n+1)+A069911(n)`
-/

namespace A069910.P13230574380735320593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298596 (2 * n + 1) + A069911 n

end

end A069910.P13230574380735320593

/-! ## A069910.P9222531829770207889

`A255001(n)/A000009(n)`
-/

namespace A069910.P9222531829770207889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255001 n : ℚ) / (A000009 n : ℚ)

end

end A069910.P9222531829770207889

/-! ## A069910.P15879109608784458221

`A255001(n)/A035457(2*n)`
-/

namespace A069910.P15879109608784458221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255001 n : ℚ) / (A035457 (2 * n) : ℚ)

end

end A069910.P15879109608784458221

/-! ## A069910.P3684765718582507543

`A027187(2*n)-A236559(n)`
-/

namespace A069910.P3684765718582507543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n) - A236559 n

end

end A069910.P3684765718582507543

/-! ## A069910.P4158690668788126752

`A046682(2*n)-A236559(n)`
-/

namespace A069910.P4158690668788126752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (2 * n) - A236559 n

end

end A069910.P4158690668788126752

/-! ## A069910.P16733416407168528152

`A027187(2*n)-A000701(2*n)`
-/

namespace A069910.P16733416407168528152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n) - A000701 (2 * n)

end

end A069910.P16733416407168528152

/-! ## A069910.P18150825052628337579

`A046682(2*n)-A000701(2*n)`
-/

namespace A069910.P18150825052628337579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (2 * n) - A000701 (2 * n)

end

end A069910.P18150825052628337579

/-! ## A069910.P2135289362950077741

`A027187(2*n)-A027193(2*n)`
-/

namespace A069910.P2135289362950077741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027187 (2 * n) - A027193 (2 * n)

end

end A069910.P2135289362950077741

/-! ## A069910.P10213841436019855273

`A046682(2*n)-A027193(2*n)`
-/

namespace A069910.P10213841436019855273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 (2 * n) - A027193 (2 * n)

end

end A069910.P10213841436019855273

/-! ## A069910.P15894558584510000907

`A058696(n)-2*A236559(n)`
-/

namespace A069910.P15894558584510000907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - 2 * A236559 n

end

end A069910.P15894558584510000907

/-! ## A069910.P4516614660097829802

`A000041(2*n)-A330644(2*n)`
-/

namespace A069910.P4516614660097829802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - A330644 (2 * n)

end

end A069910.P4516614660097829802

/-! ## A069910.P6320598795618171248

`A000041(2*n)-2*A000701(2*n)`
-/

namespace A069910.P6320598795618171248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * n) - 2 * A000701 (2 * n)

end

end A069910.P6320598795618171248

/-!
# A069911: Expansion of Product_{i in A069909} 1/(1 - x^i).

The programs for A069911, there is no canonical definition to state claims against.
-/

/-! ## A069911.P5339881643682074284

`A000700(2*n+1)`
-/

namespace A069911.P5339881643682074284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n + 1)

end

end A069911.P5339881643682074284

/-! ## A069911.P2742532380439149623

`-A081362(2*n+1)`
-/

namespace A069911.P2742532380439149623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A081362 (2 * n + 1)

end

end A069911.P2742532380439149623

/-! ## A069911.P9288342124406205364

`abs(A081362(Δ[n²]))`
-/

namespace A069911.P9288342124406205364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A069911.P9288342124406205364

/-! ## A069911.P18307376068936542654

`A357457(Δ[n²])+1`
-/

namespace A069911.P18307376068936542654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A069911.P18307376068936542654

/-! ## A069911.P14715633867054594555

`∑[A090723(2*n+1)]`
-/

namespace A069911.P14715633867054594555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090723 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069911.P14715633867054594555

/-! ## A069911.P16145377176767444110

`A330373(2*n+1)/(2*n+1)`
-/

namespace A069911.P16145377176767444110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330373 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A069911.P16145377176767444110

/-! ## A069911.P3586040332039007023

`gcd(A000038(n), A081362(2*n+1))`
-/

namespace A069911.P3586040332039007023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081362 (2 * n + 1))

end

end A069911.P3586040332039007023

/-! ## A069911.P9581641561205361726

`lcm(A020985(n), A081362(2*n+1))`
-/

namespace A069911.P9581641561205361726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A081362 (2 * n + 1))

end

end A069911.P9581641561205361726

/-! ## A069911.P4240140013174140851

`A000007(n+1)-A081362(2*n+1)`
-/

namespace A069911.P4240140013174140851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A081362 (2 * n + 1)

end

end A069911.P4240140013174140851

/-! ## A069911.P3589296659202789592

`A000038(n+1)-A081362(2*n+1)`
-/

namespace A069911.P3589296659202789592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A081362 (2 * n + 1)

end

end A069911.P3589296659202789592

/-! ## A069911.P15207827245470174500

`A304631(2*n+1)-A304631(2*n)`
-/

namespace A069911.P15207827245470174500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304631 (2 * n + 1) - A304631 (2 * n)

end

end A069911.P15207827245470174500

/-! ## A069911.P17436998471745327757

`1-(A081362(2*n+1)+A033999(2*n))`
-/

namespace A069911.P17436998471745327757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A081362 (2 * n + 1) + A033999 (2 * n))

end

end A069911.P17436998471745327757

/-! ## A069911.P10370866667608140281

`Δ[A096911(Δ[n²])]`
-/

namespace A069911.P10370866667608140281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096911 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069911.P10370866667608140281

/-! ## A069911.P4494988674002722553

`A160786(n)-A236914(n)`
-/

namespace A069911.P4494988674002722553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160786 n - A236914 n

end

end A069911.P4494988674002722553

/-! ## A069911.P1247086541940744280

`A160786(n)-A027187(2*n+1)`
-/

namespace A069911.P1247086541940744280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160786 n - A027187 (2 * n + 1)

end

end A069911.P1247086541940744280

/-! ## A069911.P6523666344593193894

`A027193(2*n+1)-A236914(n)`
-/

namespace A069911.P6523666344593193894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * n + 1) - A236914 n

end

end A069911.P6523666344593193894

/-! ## A069911.P3695043042942274821

`A189357(Δ[n²])`
-/

namespace A069911.P3695043042942274821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069911.P3695043042942274821

/-! ## A069911.P9918430690326482493

`A027359((n+1)*Δ[n²])`
-/

namespace A069911.P9918430690326482493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027359 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A069911.P9918430690326482493

/-! ## A069911.P16544187041162943696

`A276422((2*n+1)*(n+2))`
-/

namespace A069911.P16544187041162943696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276422 ((2 * n + 1) * (n + 2))

end

end A069911.P16544187041162943696

/-! ## A069911.P12817008193882491816

`A341279(A130883(n+1))`
-/

namespace A069911.P12817008193882491816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341279 (A130883 (n + 1)).toNat

end

end A069911.P12817008193882491816

/-!
# A069912: a(n) = A067552(n)/9 where A067552(n) = SumOfDigits(n)^2 - SumOfDigits(n^2), with SumOfDigits = A007953.

The programs for A069912, the canonical program `A069912.P9604506837947316734` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069912 has offset 0).

The definition of A069912 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069912.P9604506837947316734

`A067552(n)/9`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069912

/-- `A067552(n)/9` -/
def P9604506837947316734.Spec : Prop :=
  ∀ n, P9604506837947316734.a n = (A069912 n : ℚ)

end A069912

/-! ## A069912.P10069070932907954203

`(A007953(n)²-A007953(n²))/9`
-/

namespace A069912.P10069070932907954203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007953 n ^ 2 - A007953 (n ^ 2) : ℚ) / 9

end

end A069912.P10069070932907954203

namespace A069912

/-- `(A007953(n)²-A007953(n²))/9` -/
def P10069070932907954203.Spec : Prop :=
  ∀ n, P10069070932907954203.a n = (A069912 n : ℚ)

end A069912

/-! ## A069912.P11368186151651150157

`(∑{digits}[n, #]²-A004159(n))/9`
-/

namespace A069912.P11368186151651150157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - A004159 n : ℚ) / 9

end

end A069912.P11368186151651150157

namespace A069912

/-- `(∑{digits}[n, #]²-A004159(n))/9` -/
def P11368186151651150157.Spec : Prop :=
  ∀ n, P11368186151651150157.a n = (A069912 n : ℚ)

end A069912

/-! ## A069912.P13771631994932262412

`A106610(A067552(n))`
-/

namespace A069912.P13771631994932262412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A067552 n).toNat

end

end A069912.P13771631994932262412

namespace A069912

/-- `A106610(A067552(n))` -/
def P13771631994932262412.Spec : Prop :=
  ∀ n, P13771631994932262412.a n = A069912 n

end A069912

/-! ## A069912.P8949172759410431902

`(A118881(n)-A004159(n))/9`
-/

namespace A069912.P8949172759410431902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118881 n - A004159 n : ℚ) / 9

end

end A069912.P8949172759410431902

namespace A069912

/-- `(A118881(n)-A004159(n))/9` -/
def P8949172759410431902.Spec : Prop :=
  ∀ n, P8949172759410431902.a n = (A069912 n : ℚ)

end A069912

/-! ## A069912.P1226021945599373841

`(A000290(∑{digits}[n, #])-A004159(n))/9`
-/

namespace A069912.P1226021945599373841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - A004159 n : ℚ) / 9

end

end A069912.P1226021945599373841

namespace A069912

/-- `(A000290(∑{digits}[n, #])-A004159(n))/9` -/
def P1226021945599373841.Spec : Prop :=
  ∀ n, P1226021945599373841.a n = (A069912 n : ℚ)

end A069912

/-!
# A069913: a(n) = Sum_{d|n} (d-1)*tau(n/d).

The programs for A069913, the canonical program `A069913.P4643640867168244816` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069913 has offset 1).

The definition of A069913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069913.P4643640867168244816

`A007429(n+1)-A007425(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069913

/-- `A007429(n+1)-A007425(n+1)` -/
def P4643640867168244816.Spec : Prop :=
  ∀ n, P4643640867168244816.a n = A069913 (n + 1)

theorem P4643640867168244816.correct : P4643640867168244816.Spec := by
  intro n
  simp only [A069913, Nat.add_sub_cancel]

end A069913

/-! ## A069913.P5184466415246245724

`∑{d}[n+1, A065608(#)]`
-/

namespace A069913.P5184466415246245724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065608 d

end

end A069913.P5184466415246245724

namespace A069913

/-- `∑{d}[n+1, A065608(#)]` -/
def P5184466415246245724.Spec : Prop :=
  ∀ n, P5184466415246245724.a n = A069913 (n + 1)

end A069913

/-! ## A069913.P8056426615521579122

`∑{d}[n+1, (#-1)*A000005((n+1)/#)]`
-/

namespace A069913.P8056426615521579122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069913.P8056426615521579122

namespace A069913

/-- `∑{d}[n+1, (#-1)*A000005((n+1)/#)]` -/
def P8056426615521579122.Spec : Prop :=
  ∀ n, P8056426615521579122.a n = A069913 (n + 1)

end A069913

/-! ## A069913.P234210584162535507

`∑{d}[n+1, A000203(#)-A000005(#)]`
-/

namespace A069913.P234210584162535507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 d - A000005 d)

end

end A069913.P234210584162535507

namespace A069913

/-- `∑{d}[n+1, A000203(#)-A000005(#)]` -/
def P234210584162535507.Spec : Prop :=
  ∀ n, P234210584162535507.a n = A069913 (n + 1)

end A069913

/-! ## A069913.P5923421036657584195

`∑{d}[n+1, A023900(#)*A069914((n+1)/#)]`
-/

namespace A069913.P5923421036657584195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A069914 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069913.P5923421036657584195

namespace A069913

/-- `∑{d}[n+1, A023900(#)*A069914((n+1)/#)]` -/
def P5923421036657584195.Spec : Prop :=
  ∀ n, P5923421036657584195.a n = A069913 (n + 1)

end A069913

/-! ## A069913.P3154370239790661000

`∑{d}[n+1, A094471(#)*A130054((n+1)/#)]`
-/

namespace A069913.P3154370239790661000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A094471 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069913.P3154370239790661000

namespace A069913

/-- `∑{d}[n+1, A094471(#)*A130054((n+1)/#)]` -/
def P3154370239790661000.Spec : Prop :=
  ∀ n, P3154370239790661000.a n = A069913 (n + 1)

end A069913

/-! ## A069913.P11223651994258328992

`∑{d}[n+1, A089265(#)*A174238((n+1)/#)]`
-/

namespace A069913.P11223651994258328992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A089265 d * A174238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069913.P11223651994258328992

namespace A069913

/-- `∑{d}[n+1, A089265(#)*A174238((n+1)/#)]` -/
def P11223651994258328992.Spec : Prop :=
  ∀ n, P11223651994258328992.a n = A069913 (n + 1)

end A069913

/-! ## A069913.P7294907129375211899

`A369337(n+1)+A211779(n+1)`
-/

namespace A069913.P7294907129375211899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369337 (n + 1) + A211779 (n + 1)

end

end A069913.P7294907129375211899

namespace A069913

/-- `A369337(n+1)+A211779(n+1)` -/
def P7294907129375211899.Spec : Prop :=
  ∀ n, P7294907129375211899.a n = A069913 (n + 1)

end A069913

/-!
# A069914: a(n) = Sum_{d|n} (d-1)*sigma(n/d).

The programs for A069914, the canonical program `A069914.P10576446271418395889` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069914 has offset 1).

The definition of A069914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007429, A060640, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069914.P10576446271418395889

`A060640(n+1)-A007429(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A069914

/-- `A060640(n+1)-A007429(n+1)` -/
def P10576446271418395889.Spec : Prop :=
  ∀ n, P10576446271418395889.a n = A069914 (n + 1)

theorem P10576446271418395889.correct : P10576446271418395889.Spec := by
  intro n
  simp only [A069914, Nat.add_sub_cancel]

end A069914

/-! ## A069914.P86759715644976163

`∑{d}[n+1, A094471(#)]`
-/

namespace A069914.P86759715644976163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A094471 d

end

end A069914.P86759715644976163

namespace A069914

/-- `∑{d}[n+1, A094471(#)]` -/
def P86759715644976163.Spec : Prop :=
  ∀ n, P86759715644976163.a n = A069914 (n + 1)

end A069914

/-! ## A069914.P7709367547623295770

`∑{d}[n+1, #*A065608((n+1)/#)]`
-/

namespace A069914.P7709367547623295770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A065608 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069914.P7709367547623295770

namespace A069914

/-- `∑{d}[n+1, #*A065608((n+1)/#)]` -/
def P7709367547623295770.Spec : Prop :=
  ∀ n, P7709367547623295770.a n = A069914 (n + 1)

end A069914

/-! ## A069914.P6809630835350585377

`∑{d}[n+1, A000005(#)*A006579((n+1)/#)]`
-/

namespace A069914.P6809630835350585377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A006579 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069914.P6809630835350585377

namespace A069914

/-- `∑{d}[n+1, A000005(#)*A006579((n+1)/#)]` -/
def P6809630835350585377.Spec : Prop :=
  ∀ n, P6809630835350585377.a n = A069914 (n + 1)

end A069914

/-! ## A069914.P7114426113587297270

`∑{d}[n+1, A000010(#)*A069913((n+1)/#)]`
-/

namespace A069914.P7114426113587297270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A069913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069914.P7114426113587297270

namespace A069914

/-- `∑{d}[n+1, A000010(#)*A069913((n+1)/#)]` -/
def P7114426113587297270.Spec : Prop :=
  ∀ n, P7114426113587297270.a n = A069914 (n + 1)

end A069914

/-!
# A069915: Sum of (1+phi)-divisors of n (cf. A061389).

The programs for A069915, there is no canonical definition to state claims against.
-/

/-! ## A069915.P3704635522826455369

`or(A048250(n+1), A297108(A302033(n)))`
-/

namespace A069915.P3704635522826455369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048250 (n + 1)) (A297108 (A302033 n).toNat)

end

end A069915.P3704635522826455369

/-!
# A069916: Number of log-concave compositions (ordered partitions) of n.

The programs for A069916, there is no canonical definition to state claims against.
-/

/-! ## A069916.P15024703226549380115

`A037145(2*n)+A025469(A257520(n))`
-/

namespace A069916.P15024703226549380115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 (2 * n) + A025469 (A257520 n).toNat

end

end A069916.P15024703226549380115

/-! ## A069916.P11001487763499826544

`A085501(A082397(n+1))`
-/

namespace A069916.P11001487763499826544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (A082397 (n + 1)).toNat

end

end A069916.P11001487763499826544

/-! ## A069916.P10296064682700627999

`A085501(A329673(n)+1)`
-/

namespace A069916.P10296064682700627999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (A329673 n + 1).toNat

end

end A069916.P10296064682700627999

/-! ## A069916.P15131488173411045409

`A085501(or(1, A329673(n)))`
-/

namespace A069916.P15131488173411045409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (Int.lor 1 (A329673 n)).toNat

end

end A069916.P15131488173411045409

/-! ## A069916.P6766786510542194878

`A085501(A001906(n)+n+1)`
-/

namespace A069916.P6766786510542194878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (A001906 n + (n + 1 : ℤ)).toNat

end

end A069916.P6766786510542194878

/-!
# A069918: Number of ways of partitioning the set {1...n} into two subsets whose sums are as nearly equal as possible.

The programs for A069918, there is no canonical definition to state claims against.
-/

/-! ## A069918.P8642028953154945529

`A063867(n+1)/2`
-/

namespace A069918.P8642028953154945529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063867 (n + 1) : ℚ) / 2

end

end A069918.P8642028953154945529

/-! ## A069918.P18314649418907477902

`A025591(n+1)/A130658(n)`
-/

namespace A069918.P18314649418907477902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (n + 1) : ℚ) / (A130658 n : ℚ)

end

end A069918.P18314649418907477902

/-! ## A069918.P17396884235027646220

`A063866(n+1)+A058377(n+1)`
-/

namespace A069918.P17396884235027646220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063866 (n + 1) + A058377 (n + 1)

end

end A069918.P17396884235027646220

/-! ## A069918.P9674923910855233076

`A025591(n+1)-A058377(n+1)`
-/

namespace A069918.P9674923910855233076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (n + 1) - A058377 (n + 1)

end

end A069918.P9674923910855233076

/-! ## A069918.P12869382388762551859

`A025591(n+1)/A014695(n+3)`
-/

namespace A069918.P12869382388762551859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (n + 1) : ℚ) / (A014695 (n + 3) : ℚ)

end

end A069918.P12869382388762551859

/-! ## A069918.P11254667586024566437

`(A063866(n+1)+A025591(n+1))/2`
-/

namespace A069918.P11254667586024566437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063866 (n + 1) + A025591 (n + 1) : ℚ) / 2

end

end A069918.P11254667586024566437

/-! ## A069918.P13522414315387154631

`A063866(n+1)+A063865(n+1)/2`
-/

namespace A069918.P13522414315387154631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063866 (n + 1) : ℚ) + (A063865 (n + 1) : ℚ) / 2

end

end A069918.P13522414315387154631

/-! ## A069918.P6545226007838312730

`A025591(n+1)-A063865(n+1)/2`
-/

namespace A069918.P6545226007838312730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025591 (n + 1) : ℚ) - (A063865 (n + 1) : ℚ) / 2

end

end A069918.P6545226007838312730

/-!
# A069921: Define C(n) by the recursion C(0) = 1 + I where I^2 = -1, C(n+1) = 1/(1+C(n)); then a(n) = (-1)^n/Im(C(n)) where Im(z) is the imaginary part of the complex number z.

The programs for A069921, the canonical program `A069921.P17876201462096095852` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069921 has offset 0).

The definition of A069921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069921.P17876201462096095852

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=10`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069921

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P17876201462096095852.Spec : Prop :=
  ∀ n, P17876201462096095852.a n = A069921 n

theorem P17876201462096095852.correct : P17876201462096095852.Spec := by
  intro n
  simp only [A069921]

end A069921

/-! ## A069921.P8059691415877109724

`3*A059929(n)+(-1)^n`
-/

namespace A069921.P8059691415877109724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A059929 n + (-1) ^ n

end

end A069921.P8059691415877109724

namespace A069921

/-- `3*A059929(n)+(-1)^n` -/
def P8059691415877109724.Spec : Prop :=
  ∀ n, P8059691415877109724.a n = A069921 n

end A069921

/-! ## A069921.P16638271177073741071

`A000045(n)²+A000045(n+2)²`
-/

namespace A069921.P16638271177073741071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 + A000045 (n + 2) ^ 2

end

end A069921.P16638271177073741071

namespace A069921

/-- `A000045(n)²+A000045(n+2)²` -/
def P16638271177073741071.Spec : Prop :=
  ∀ n, P16638271177073741071.a n = A069921 n

end A069921

/-! ## A069921.P9623196249066738456

`ogf((1+3x-2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A069921.P9623196249066738456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2] [1, -2, -2, 1] n

end

end A069921.P9623196249066738456

namespace A069921

/-- `ogf((1+3x-2x^2)/(1-2x-2x^2+x^3))` -/
def P9623196249066738456.Spec : Prop :=
  ∀ n, P9623196249066738456.a n = A069921 n

end A069921

/-! ## A069921.P4257446530325338836

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=5, a(2)=10`
-/

namespace A069921.P4257446530325338836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 10] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A069921.P4257446530325338836

namespace A069921

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P4257446530325338836.Spec : Prop :=
  ∀ n, P4257446530325338836.a n = A069921 n

theorem P4257446530325338836.correct : P4257446530325338836.Spec := by
  intro n
  simp only [A069921, Nat.add_sub_cancel, A069921.P4257446530325338836.a, A069921.P17876201462096095852.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069921

/-! ## A069921.P4787928385381443476

`Δ[A014742(n)]`
-/

namespace A069921.P4787928385381443476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069921.P4787928385381443476

namespace A069921

/-- `Δ[A014742(n)]` -/
def P4787928385381443476.Spec : Prop :=
  ∀ n, P4787928385381443476.a n = A069921 n

end A069921

/-! ## A069921.P17244499737775290281

`A362388(2*n)`
-/

namespace A069921.P17244499737775290281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362388 (2 * n)

end

end A069921.P17244499737775290281

namespace A069921

/-- `A362388(2*n)` -/
def P17244499737775290281.Spec : Prop :=
  ∀ n, P17244499737775290281.a n = A069921 n

end A069921

/-! ## A069921.P10232481534638512071

`A295690(2*(n+1))`
-/

namespace A069921.P10232481534638512071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295690 (2 * (n + 1))

end

end A069921.P10232481534638512071

namespace A069921

/-- `A295690(2*(n+1))` -/
def P10232481534638512071.Spec : Prop :=
  ∀ n, P10232481534638512071.a n = A069921 n

end A069921

/-! ## A069921.P16343649195434686989

`A295682(2*n+3)`
-/

namespace A069921.P16343649195434686989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295682 (2 * n + 3)

end

end A069921.P16343649195434686989

namespace A069921

/-- `A295682(2*n+3)` -/
def P16343649195434686989.Spec : Prop :=
  ∀ n, P16343649195434686989.a n = A069921 n

end A069921

/-! ## A069921.P14893522336144520992

`or(2, A099016(n+1))-1`
-/

namespace A069921.P14893522336144520992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A099016 (n + 1)) - 1

end

end A069921.P14893522336144520992

namespace A069921

/-- `or(2, A099016(n+1))-1` -/
def P14893522336144520992.Spec : Prop :=
  ∀ n, P14893522336144520992.a n = A069921 n

end A069921

/-! ## A069921.P11004950745230594604

`round(3/5*A000032(n+1)²)`
-/

namespace A069921.P11004950745230594604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 5 * (A000032 (n + 1) ^ 2 : ℚ))

end

end A069921.P11004950745230594604

namespace A069921

/-- `round(3/5*A000032(n+1)²)` -/
def P11004950745230594604.Spec : Prop :=
  ∀ n, P11004950745230594604.a n = A069921 n

end A069921

/-! ## A069921.P326494433510609931

`3*A000045(Δ[n²])-a(n-1)` with `a(0)=1`
-/

namespace A069921.P326494433510609931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A069921.P326494433510609931

namespace A069921

/-- `3*A000045(Δ[n²])-a(n-1)` -/
def P326494433510609931.Spec : Prop :=
  ∀ n, P326494433510609931.a n = A069921 n

end A069921

/-! ## A069921.P13571924486694776755

`A120718(n)+A099016(n)`
-/

namespace A069921.P13571924486694776755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n + A099016 n

end

end A069921.P13571924486694776755

namespace A069921

/-- `A120718(n)+A099016(n)` -/
def P13571924486694776755.Spec : Prop :=
  ∀ n, P13571924486694776755.a n = A069921 n

end A069921

/-! ## A069921.P13968306657440642801

`A192879(n)+A110391(n)`
-/

namespace A069921.P13968306657440642801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192879 n + A110391 n

end

end A069921.P13968306657440642801

namespace A069921

/-- `A192879(n)+A110391(n)` -/
def P13968306657440642801.Spec : Prop :=
  ∀ n, P13968306657440642801.a n = A069921 n

end A069921

/-! ## A069921.P3811820533829815941

`A245306(n)+A080097(n)`
-/

namespace A069921.P3811820533829815941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 n + A080097 n

end

end A069921.P3811820533829815941

namespace A069921

/-- `A245306(n)+A080097(n)` -/
def P3811820533829815941.Spec : Prop :=
  ∀ n, P3811820533829815941.a n = A069921 n

end A069921

/-! ## A069921.P4606499644547024851

`A001254(n)+Δ[A192878(n)]`
-/

namespace A069921.P4606499644547024851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n + (f1 (n + 1) - f1 n)

end

end A069921.P4606499644547024851

namespace A069921

/-- `A001254(n)+Δ[A192878(n)]` -/
def P4606499644547024851.Spec : Prop :=
  ∀ n, P4606499644547024851.a n = A069921 n

end A069921

/-! ## A069921.P17401713788107993488

`A121646(n+1)+A048575(n)`
-/

namespace A069921.P17401713788107993488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121646 (n + 1) + A048575 n

end

end A069921.P17401713788107993488

namespace A069921

/-- `A121646(n+1)+A048575(n)` -/
def P17401713788107993488.Spec : Prop :=
  ∀ n, P17401713788107993488.a n = A069921 n

end A069921

/-! ## A069921.P17222570258481436150

`A128534(n)+A061647(n+1)`
-/

namespace A069921.P17222570258481436150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128534 n + A061647 (n + 1)

end

end A069921.P17222570258481436150

namespace A069921

/-- `A128534(n)+A061647(n+1)` -/
def P17222570258481436150.Spec : Prop :=
  ∀ n, P17222570258481436150.a n = A069921 n

end A069921

/-!
# A069922: Number of primes p such that n^n <= p <= n^n + n^2.

The programs for A069922, there is no canonical definition to state claims against.
-/

/-! ## A069922.P14618787896456113352

`gcd(A002903(n), A339098(A083221(n+2)))`
-/

namespace A069922.P14618787896456113352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002903 n) (A339098 (A083221 (n + 2)).toNat)

end

end A069922.P14618787896456113352

/-! ## A069922.P8232759784975209766

`A174978(A175031(n+1))-A174998(2*(n+1))`
-/

namespace A069922.P8232759784975209766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174978 (A175031 (n + 1)).toNat - A174998 (2 * (n + 1))

end

end A069922.P8232759784975209766

/-!
# A069924: Number of k, 1<=k<=n, such that phi(k) divides k.

The programs for A069924, the canonical program `A069924.P1533727129138465007` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069924 has offset 1).

The definition of A069924 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069924.P1533727129138465007

`A071521(n+1)-A062153(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069924

/-- `A071521(n+1)-A062153(n+1)` -/
def P1533727129138465007.Spec : Prop :=
  ∀ n, P1533727129138465007.a n = A069924 (n + 1)

theorem P1533727129138465007.correct : P1533727129138465007.Spec := by
  intro n
  simp only [A069924, Nat.add_sub_cancel]

end A069924

/-! ## A069924.P322823724773982974

`∑[A316341(∏{p}[n+1, #])]`
-/

namespace A069924.P322823724773982974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316341 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P322823724773982974

namespace A069924

/-- `∑[A316341(∏{p}[n+1, #])]` -/
def P322823724773982974.Spec : Prop :=
  ∀ n, P322823724773982974.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P8610731658083850717

`∑[A322583(∏{p}[n+1, #])]`
-/

namespace A069924.P8610731658083850717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P8610731658083850717

namespace A069924

/-- `∑[A322583(∏{p}[n+1, #])]` -/
def P8610731658083850717.Spec : Prop :=
  ∀ n, P8610731658083850717.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P13179949032858644821

`∑[floor(1/A076512(n+1))]`
-/

namespace A069924.P13179949032858644821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A076512 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P13179949032858644821

namespace A069924

/-- `∑[floor(1/A076512(n+1))]` -/
def P13179949032858644821.Spec : Prop :=
  ∀ n, P13179949032858644821.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P14716062731769578541

`∑[char[A190812(n+1)]]+1`
-/

namespace A069924.P14716062731769578541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190812 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069924.P14716062731769578541

namespace A069924

/-- `∑[char[A190812(n+1)]]+1` -/
def P14716062731769578541.Spec : Prop :=
  ∀ n, (P14716062731769578541.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P11777156263218638527

`∑[char[A007694(n+1)-1]]`
-/

namespace A069924.P11777156263218638527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P11777156263218638527

namespace A069924

/-- `∑[char[A007694(n+1)-1]]` -/
def P11777156263218638527.Spec : Prop :=
  ∀ n, (P11777156263218638527.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P13277500513942884964

`∑[C(2, A089631(n+1)+2)]`
-/

namespace A069924.P13277500513942884964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A089631 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P13277500513942884964

namespace A069924

/-- `∑[C(2, A089631(n+1)+2)]` -/
def P13277500513942884964.Spec : Prop :=
  ∀ n, (P13277500513942884964.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P9071104056684126608

`∑[C(n+1, A009262(n+1))]`
-/

namespace A069924.P9071104056684126608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A009262 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P9071104056684126608

namespace A069924

/-- `∑[C(n+1, A009262(n+1))]` -/
def P9071104056684126608.Spec : Prop :=
  ∀ n, (P9071104056684126608.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P16762011125007107702

`∑[and(n, A065333(n+1))]+1`
-/

namespace A069924.P16762011125007107702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A065333 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069924.P16762011125007107702

namespace A069924

/-- `∑[and(n, A065333(n+1))]+1` -/
def P16762011125007107702.Spec : Prop :=
  ∀ n, P16762011125007107702.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P11311528282267163652

`∑[char[2*lt[A006530(n+1), 4]+1]]+1`
-/

namespace A069924.P11311528282267163652
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069924.P11311528282267163652

namespace A069924

/-- `∑[char[2*lt[A006530(n+1), 4]+1]]+1` -/
def P11311528282267163652.Spec : Prop :=
  ∀ n, (P11311528282267163652.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P16210169643806671909

`a(n-1)+C(n+1, lcm(n+1, A000010(n+1)))` with `a(0)=1`
-/

namespace A069924.P16210169643806671909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 1) (Int.lcm (n + 1 : ℤ) (A000010 (n + 1)))

end

end A069924.P16210169643806671909

namespace A069924

/-- `a(n-1)+C(n+1, lcm(n+1, A000010(n+1)))` -/
def P16210169643806671909.Spec : Prop :=
  ∀ n, (P16210169643806671909.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P1223418555939900959

`∑[2-A325636(A332881(n+1))]`
-/

namespace A069924.P1223418555939900959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A325636 (A332881 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P1223418555939900959

namespace A069924

/-- `∑[2-A325636(A332881(n+1))]` -/
def P1223418555939900959.Spec : Prop :=
  ∀ n, P1223418555939900959.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P8661463955753463681

`A081063(n+1)-A327247(n+1)`
-/

namespace A069924.P8661463955753463681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081063 (n + 1) - A327247 (n + 1)

end

end A069924.P8661463955753463681

namespace A069924

/-- `A081063(n+1)-A327247(n+1)` -/
def P8661463955753463681.Spec : Prop :=
  ∀ n, P8661463955753463681.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P10714759036024964845

`∑[C(A052106(n+1), A052100(n+1))]`
-/

namespace A069924.P10714759036024964845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052106 (n + 1)).toNat (A052100 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P10714759036024964845

namespace A069924

/-- `∑[C(A052106(n+1), A052100(n+1))]` -/
def P10714759036024964845.Spec : Prop :=
  ∀ n, (P10714759036024964845.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P1899028209537482352

`∑[A000122((n+1)%A000010(n+1))%2]`
-/

namespace A069924.P1899028209537482352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000122 (Int.tmod (n + 1 : ℤ) (A000010 (n + 1))).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P1899028209537482352

namespace A069924

/-- `∑[A000122((n+1)%A000010(n+1))%2]` -/
def P1899028209537482352.Spec : Prop :=
  ∀ n, P1899028209537482352.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P7107307572708483540

`∑[A071375(A325636(A332881(n+1)))]`
-/

namespace A069924.P7107307572708483540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071375 (A325636 (A332881 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P7107307572708483540

namespace A069924

/-- `∑[A071375(A325636(A332881(n+1)))]` -/
def P7107307572708483540.Spec : Prop :=
  ∀ n, P7107307572708483540.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P15588793692604246841

`∑[A010054(A006530(comp[3*n+1]+1))]`
-/

namespace A069924.P15588793692604246841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P15588793692604246841

namespace A069924

/-- `∑[A010054(A006530(comp[3*n+1]+1))]` -/
def P15588793692604246841.Spec : Prop :=
  ∀ n, P15588793692604246841.a n = A069924 (n + 1)

end A069924

/-! ## A069924.P3299533987640067298

`∑[A089598(3*n+1)^A089631(n+1)]`
-/

namespace A069924.P3299533987640067298
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089598 (3 * n + 1) : ℚ) ^ (A089631 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P3299533987640067298

namespace A069924

/-- `∑[A089598(3*n+1)^A089631(n+1)]` -/
def P3299533987640067298.Spec : Prop :=
  ∀ n, P3299533987640067298.a n = (A069924 (n + 1) : ℚ)

end A069924

/-! ## A069924.P1428213131462027093

`∑[C(A009195(3*(n+1)), A297117(3*(n+1)))]`
-/

namespace A069924.P1428213131462027093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A009195 (3 * (n + 1))).toNat (A297117 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P1428213131462027093

namespace A069924

/-- `∑[C(A009195(3*(n+1)), A297117(3*(n+1)))]` -/
def P1428213131462027093.Spec : Prop :=
  ∀ n, (P1428213131462027093.a n : ℤ) = A069924 (n + 1)

end A069924

/-! ## A069924.P3334245815461341560

`∑[A010051(A002473(∏{p}[n+1, #]+1))]`
-/

namespace A069924.P3334245815461341560
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002473 (∏ p ∈ Nat.primeFactors (f2 n), p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069924.P3334245815461341560

namespace A069924

/-- `∑[A010051(A002473(∏{p}[n+1, #]+1))]` -/
def P3334245815461341560.Spec : Prop :=
  ∀ n, P3334245815461341560.a n = A069924 (n + 1)

end A069924

/-!
# A069925: a(n) = phi(2^n+1)/(2*n).

The programs for A069925, the canonical program `A069925.P16749141084476288768` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069925 has offset 1).

The definition of A069925 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053285, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069925.P16749141084476288768

`A053285(n+1)/(2*(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A069925

/-- `A053285(n+1)/(2*(n+1))` -/
def P16749141084476288768.Spec : Prop :=
  ∀ n, P16749141084476288768.a n = (A069925 (n + 1) : ℚ)

end A069925

/-! ## A069925.P6073524999816400078

`A000010(2^(n+1)+1)/(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069925.P6073524999816400078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 ^ (n + 1) + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A069925.P6073524999816400078

namespace A069925

/-- `A000010(2^(n+1)+1)/(2*(n+1))` -/
def P6073524999816400078.Spec : Prop :=
  ∀ n, P6073524999816400078.a n = (A069925 (n + 1) : ℚ)

end A069925

/-! ## A069925.P5347794033781338708

`A063474(n+1)/(n+1)`
-/

namespace A069925.P5347794033781338708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063474 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A069925.P5347794033781338708

namespace A069925

/-- `A063474(n+1)/(n+1)` -/
def P5347794033781338708.Spec : Prop :=
  ∀ n, P5347794033781338708.a n = (A069925 (n + 1) : ℚ)

end A069925

/-! ## A069925.P1051826239428367999

`-(A063474(Δ[n²]-n)/xor(n, -1))`
-/

namespace A069925.P1051826239428367999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A063474 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / (Int.xor (n : ℤ) (-1) : ℚ))

end

end A069925.P1051826239428367999

namespace A069925

/-- `-(A063474(Δ[n²]-n)/xor(n, -1))` -/
def P1051826239428367999.Spec : Prop :=
  ∀ n, P1051826239428367999.a n = (A069925 (n + 1) : ℚ)

end A069925

/-! ## A069925.P9202065197978526623

`Δ[∑[A053285(n)]/2]/(n+1)`
-/

namespace A069925.P9202065197978526623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053285 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / (n + 1 : ℚ)

end

end A069925.P9202065197978526623

namespace A069925

/-- `Δ[∑[A053285(n)]/2]/(n+1)` -/
def P9202065197978526623.Spec : Prop :=
  ∀ n, P9202065197978526623.a n = (A069925 (n + 1) : ℚ)

end A069925

/-! ## A069925.P17890901630455012444

`A027742(n+1)/A053287(n+1)`
-/

namespace A069925.P17890901630455012444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027742 (n + 1) : ℚ) / (A053287 (n + 1) : ℚ)

end

end A069925.P17890901630455012444

namespace A069925

/-- `A027742(n+1)/A053287(n+1)` -/
def P17890901630455012444.Spec : Prop :=
  ∀ n, P17890901630455012444.a n = (A069925 (n + 1) : ℚ)

end A069925

/-! ## A069925.P14372810491145648255

`A000020(2*(n+1))/A053287(n+1)`
-/

namespace A069925.P14372810491145648255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000020 (2 * (n + 1)) : ℚ) / (A053287 (n + 1) : ℚ)

end

end A069925.P14372810491145648255

namespace A069925

/-- `A000020(2*(n+1))/A053287(n+1)` -/
def P14372810491145648255.Spec : Prop :=
  ∀ n, P14372810491145648255.a n = (A069925 (n + 1) : ℚ)

end A069925

/-! ## A069925.P17949811519153363610

`A011260(2*(n+1))/A053287(n+1)`
-/

namespace A069925.P17949811519153363610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011260 (2 * (n + 1)) : ℚ) / (A053287 (n + 1) : ℚ)

end

end A069925.P17949811519153363610

namespace A069925

/-- `A011260(2*(n+1))/A053287(n+1)` -/
def P17949811519153363610.Spec : Prop :=
  ∀ n, P17949811519153363610.a n = (A069925 (n + 1) : ℚ)

end A069925

/-!
# A069926: Number of k, 1<=k<=n, such that k divides sigma(k).

The programs for A069926, the canonical program `A069926.P3137993898605729016` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069926 has offset 1).

The definition of A069926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069926.P3137993898605729016

`∑[C(gcd(n-1-2*n, ∑{d}[n+1, #]), n+1)]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069926

/-- `∑[C(gcd(n-1-2*n, ∑{d}[n+1, #]), n+1)]` -/
def P3137993898605729016.Spec : Prop :=
  ∀ n, (P3137993898605729016.a n : ℤ) = A069926 (n + 1)

theorem P3137993898605729016.correct : P3137993898605729016.Spec := by
  intro n
  simp only [A069926, Nat.add_sub_cancel]

end A069926

/-! ## A069926.P8312662686672806596

`∑[C(A054013(n+1), n)]`
-/

namespace A069926.P8312662686672806596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054013 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P8312662686672806596

namespace A069926

/-- `∑[C(A054013(n+1), n)]` -/
def P8312662686672806596.Spec : Prop :=
  ∀ n, (P8312662686672806596.a n : ℤ) = A069926 (n + 1)

end A069926

/-! ## A069926.P10830100109681096297

`∑[floor(acot(A054024(n+1)))]`
-/

namespace A069926.P10830100109681096297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A054024 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P10830100109681096297

namespace A069926

/-- `∑[floor(acot(A054024(n+1)))]` -/
def P10830100109681096297.Spec : Prop :=
  ∀ n, P10830100109681096297.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P13551979254394067604

`∑[floor(acot(A272008(n+1)))]`
-/

namespace A069926.P13551979254394067604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A272008 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P13551979254394067604

namespace A069926

/-- `∑[floor(acot(A272008(n+1)))]` -/
def P13551979254394067604.Spec : Prop :=
  ∀ n, P13551979254394067604.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P3974506180776752317

`∑[round(acot(A017666(n+1)))]`
-/

namespace A069926.P3974506180776752317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A017666 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P3974506180776752317

namespace A069926

/-- `∑[round(acot(A017666(n+1)))]` -/
def P3974506180776752317.Spec : Prop :=
  ∀ n, P3974506180776752317.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P4357105085260363590

`∑[char[A007691(n+1)-1]]`
-/

namespace A069926.P4357105085260363590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P4357105085260363590

namespace A069926

/-- `∑[char[A007691(n+1)-1]]` -/
def P4357105085260363590.Spec : Prop :=
  ∀ n, (P4357105085260363590.a n : ℤ) = A069926 (n + 1)

end A069926

/-! ## A069926.P11169394790152630594

`∑[3-A157532(A054024(n+1)+1)]`
-/

namespace A069926.P11169394790152630594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A157532 (A054024 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P11169394790152630594

namespace A069926

/-- `∑[3-A157532(A054024(n+1)+1)]` -/
def P11169394790152630594.Spec : Prop :=
  ∀ n, P11169394790152630594.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P2627664086969156996

`∑[A323152(n+1)]-A000720(n+1)`
-/

namespace A069926.P2627664086969156996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000720 (n + 1)

end

end A069926.P2627664086969156996

namespace A069926

/-- `∑[A323152(n+1)]-A000720(n+1)` -/
def P2627664086969156996.Spec : Prop :=
  ∀ n, P2627664086969156996.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P12547418864883277460

`∑[A323152(n+1)-A010051(n+1)]`
-/

namespace A069926.P12547418864883277460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (n + 1) - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P12547418864883277460

namespace A069926

/-- `∑[A323152(n+1)-A010051(n+1)]` -/
def P12547418864883277460.Spec : Prop :=
  ∀ n, P12547418864883277460.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P15840921989571606209

`∑[floor(1/A019294(n+1))]`
-/

namespace A069926.P15840921989571606209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A019294 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069926.P15840921989571606209

namespace A069926

/-- `∑[floor(1/A019294(n+1))]` -/
def P15840921989571606209.Spec : Prop :=
  ∀ n, P15840921989571606209.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P3536565403902167666

`A131410(∑[A073424(A088567(n))])`
-/

namespace A069926.P3536565403902167666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A088567 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069926.P3536565403902167666

namespace A069926

/-- `A131410(∑[A073424(A088567(n))])` -/
def P3536565403902167666.Spec : Prop :=
  ∀ n, P3536565403902167666.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P17540015522895009298

`A004216(4*A046034(n+2))`
-/

namespace A069926.P17540015522895009298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (4 * A046034 (n + 2)).toNat

end

end A069926.P17540015522895009298

namespace A069926

/-- `A004216(4*A046034(n+2))` -/
def P17540015522895009298.Spec : Prop :=
  ∀ n, P17540015522895009298.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P11603844749804660666

`A055642(A077533(n+2))-1`
-/

namespace A069926.P11603844749804660666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A077533 (n + 2)).toNat - 1

end

end A069926.P11603844749804660666

namespace A069926

/-- `A055642(A077533(n+2))-1` -/
def P11603844749804660666.Spec : Prop :=
  ∀ n, P11603844749804660666.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P8136653600120841000

`A086858(A051697(n))`
-/

namespace A069926.P8136653600120841000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086858 (A051697 n).toNat

end

end A069926.P8136653600120841000

namespace A069926

/-- `A086858(A051697(n))` -/
def P8136653600120841000.Spec : Prop :=
  ∀ n, P8136653600120841000.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P3681650213191533976

`A086858(a(n-1)+n-2)` with `a(0)=1, a(1)=1`
-/

namespace A069926.P3681650213191533976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A086858 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A069926.P3681650213191533976

namespace A069926

/-- `A086858(a(n-1)+n-2)` -/
def P3681650213191533976.Spec : Prop :=
  ∀ n, P3681650213191533976.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P2512916524456099406

`A060384(A130253(n²))`
-/

namespace A069926.P2512916524456099406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A130253 (n ^ 2)).toNat

end

end A069926.P2512916524456099406

namespace A069926

/-- `A060384(A130253(n²))` -/
def P2512916524456099406.Spec : Prop :=
  ∀ n, P2512916524456099406.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P17726575857218279214

`A262438(∑[A246435(n²)])`
-/

namespace A069926.P17726575857218279214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069926.P17726575857218279214

namespace A069926

/-- `A262438(∑[A246435(n²)])` -/
def P17726575857218279214.Spec : Prop :=
  ∀ n, P17726575857218279214.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P449385699849795459

`A390767(n*A390767(n²))`
-/

namespace A069926.P449385699849795459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 ((n : ℤ) * A390767 (n ^ 2)).toNat

end

end A069926.P449385699849795459

namespace A069926

/-- `A390767(n*A390767(n²))` -/
def P449385699849795459.Spec : Prop :=
  ∀ n, P449385699849795459.a n = A069926 (n + 1)

end A069926

/-! ## A069926.P14366794058355464653

`A262432(∑[n]+1)`
-/

namespace A069926.P14366794058355464653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262432 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A069926.P14366794058355464653

namespace A069926

/-- `A262432(∑[n]+1)` -/
def P14366794058355464653.Spec : Prop :=
  ∀ n, P14366794058355464653.a n = A069926 (n + 1)

end A069926

/-!
# A069928: Number of integers k, 1<=k<=n, such that tau(k) divides sigma(k) where tau(k) is the number of divisors of k and sigma(k) the sum of divisors of k.

The programs for A069928, the canonical program `A069928.P1695334417311087564` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069928 has offset 1).

The definition of A069928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069928.P13598375913085135241

`∑[A245656(n+1)]`
-/

namespace A069928.P13598375913085135241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P13598375913085135241

namespace A069928

/-- `∑[A245656(n+1)]` -/
def P13598375913085135241.Spec : Prop :=
  ∀ n, P13598375913085135241.a n = A069928 (n + 1)

end A069928

/-! ## A069928.P13164100260202160222

`∑[floor(1/A057021(n+1))]`
-/

namespace A069928.P13164100260202160222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A057021 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P13164100260202160222

namespace A069928

/-- `∑[floor(1/A057021(n+1))]` -/
def P13164100260202160222.Spec : Prop :=
  ∀ n, P13164100260202160222.a n = A069928 (n + 1)

end A069928

/-! ## A069928.P2069321664852396926

`∑[floor(1/A176801(n+1))]`
-/

namespace A069928.P2069321664852396926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A176801 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P2069321664852396926

namespace A069928

/-- `∑[floor(1/A176801(n+1))]` -/
def P2069321664852396926.Spec : Prop :=
  ∀ n, P2069321664852396926.a n = A069928 (n + 1)

end A069928

/-! ## A069928.P17778980247953335131

`∑[char[A003601(n+1)-1]]`
-/

namespace A069928.P17778980247953335131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P17778980247953335131

namespace A069928

/-- `∑[char[A003601(n+1)-1]]` -/
def P17778980247953335131.Spec : Prop :=
  ∀ n, (P17778980247953335131.a n : ℤ) = A069928 (n + 1)

end A069928

/-! ## A069928.P9430211153762496973

`a(n-1)+val(n+1, A003601(a(n-1)+1))` with `a(0)=1`
-/

namespace A069928.P9430211153762496973
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (n + 1) (A003601 (a (n - 1) + 1)).toNat

end

end A069928.P9430211153762496973

namespace A069928

/-- `a(n-1)+val(n+1, A003601(a(n-1)+1))` -/
def P9430211153762496973.Spec : Prop :=
  ∀ n, (P9430211153762496973.a n : ℤ) = A069928 (n + 1)

end A069928

/-! ## A069928.P1695334417311087564

`∑[A000007(A054025(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069928

/-- `∑[A000007(A054025(n+1))]` -/
def P1695334417311087564.Spec : Prop :=
  ∀ n, P1695334417311087564.a n = A069928 (n + 1)

theorem P1695334417311087564.correct : P1695334417311087564.Spec := by
  intro n
  simp only [A069928, Nat.add_sub_cancel]

end A069928

/-! ## A069928.P18010535607369541372

`∑[A004530(A176801(n+1))]`
-/

namespace A069928.P18010535607369541372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004530 (A176801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P18010535607369541372

namespace A069928

/-- `∑[A004530(A176801(n+1))]` -/
def P18010535607369541372.Spec : Prop :=
  ∀ n, P18010535607369541372.a n = A069928 (n + 1)

end A069928

/-! ## A069928.P15925381750470170480

`∑[C(A057022(n+1), A057020(n+1))]`
-/

namespace A069928.P15925381750470170480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057022 (n + 1)).toNat (A057020 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P15925381750470170480

namespace A069928

/-- `∑[C(A057022(n+1), A057020(n+1))]` -/
def P15925381750470170480.Spec : Prop :=
  ∀ n, (P15925381750470170480.a n : ℤ) = A069928 (n + 1)

end A069928

/-! ## A069928.P8296464612601021880

`∑[A052928(a(n-1))^A054025(n+1)]` with `a(0)=1`
-/

namespace A069928.P8296464612601021880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A052928 (SequenceMachineLib.roundAway (f1 (n - 1))).toNat : ℚ) ^ (A054025 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P8296464612601021880

namespace A069928

/-- `∑[A052928(a(n-1))^A054025(n+1)]` -/
def P8296464612601021880.Spec : Prop :=
  ∀ n, P8296464612601021880.a n = (A069928 (n + 1) : ℚ)

end A069928

/-! ## A069928.P5876468601470313939

`∑[∑{d}[n+1, A008683(#)*A338170((n+1)/#)]]`
-/

namespace A069928.P5876468601470313939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A338170 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P5876468601470313939

namespace A069928

/-- `∑[∑{d}[n+1, A008683(#)*A338170((n+1)/#)]]` -/
def P5876468601470313939.Spec : Prop :=
  ∀ n, P5876468601470313939.a n = A069928 (n + 1)

end A069928

/-! ## A069928.P3078793822239638812

`A267901(C(n+1, A003601(a(n-1)+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A069928.P3078793822239638812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267901 (Nat.choose (n + 1) (A003601 (a (n - 1) + 1).toNat).toNat + 1) + a (n - 1)

end

end A069928.P3078793822239638812

namespace A069928

/-- `A267901(C(n+1, A003601(a(n-1)+1))+1)+a(n-1)` -/
def P3078793822239638812.Spec : Prop :=
  ∀ n, P3078793822239638812.a n = A069928 (n + 1)

end A069928

/-!
# A069929: Number of k, 1 <= k <= n, such that k^3+1 divides n^3+1.

The programs for A069929, there is no canonical definition to state claims against.
-/

/-! ## A069929.P2825804360978081953

`A217984(n+1)-1`
-/

namespace A069929.P2825804360978081953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217984 (n + 1) - 1

end

end A069929.P2825804360978081953

/-! ## A069929.P6060394096394596304

`(A217984(n+1)+A000578(n+1))%(n+2)`
-/

namespace A069929.P6060394096394596304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217984 (n + 1) + A000578 (n + 1)) (n + 2 : ℤ)

end

end A069929.P6060394096394596304

/-! ## A069929.P10526342596683176616

`A260196(A217984(n+1)²)+A217984(n+1)`
-/

namespace A069929.P10526342596683176616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A217984 (n + 1) ^ 2).toNat + A217984 (n + 1)

end

end A069929.P10526342596683176616

/-! ## A069929.P7245699179499309492

`Δ[∑[A217984(n)]-n]`
-/

namespace A069929.P7245699179499309492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069929.P7245699179499309492

/-! ## A069929.P960581248092052101

`A260196(n+2)+A217984(n+1)`
-/

namespace A069929.P960581248092052101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A217984 (n + 1)

end

end A069929.P960581248092052101

/-! ## A069929.P9521789042477277590

`(A217984(n+1)+A000051(n+1))%A000051(n)`
-/

namespace A069929.P9521789042477277590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217984 (n + 1) + A000051 (n + 1)) (A000051 n)

end

end A069929.P9521789042477277590

/-!
# A069930: Number of integers of the form (n+k)/(n-k) with 1 <= k <= n-1.

The programs for A069930, the canonical program `A069930.P13025091485286396037` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069930 has offset 1).

The definition of A069930 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A069283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069930.P9492237765035599963

`A000005(2*(n+1))-2`
-/

namespace A069930.P9492237765035599963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) - 2

end

end A069930.P9492237765035599963

namespace A069930

/-- `A000005(2*(n+1))-2` -/
def P9492237765035599963.Spec : Prop :=
  ∀ n, P9492237765035599963.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P13025091485286396037

`A032741(n+1)+A069283(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069930

/-- `A032741(n+1)+A069283(n+1)` -/
def P13025091485286396037.Spec : Prop :=
  ∀ n, P13025091485286396037.a n = A069930 (n + 1)

theorem P13025091485286396037.correct : P13025091485286396037.Spec := by
  intro n
  simp only [A069930, Nat.add_sub_cancel]

end A069930

/-! ## A069930.P8746431272355279150

`A000005(n+1)+A001227(n+1)-2`
-/

namespace A069930.P8746431272355279150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A001227 (n + 1) - 2

end

end A069930.P8746431272355279150

namespace A069930

/-- `A000005(n+1)+A001227(n+1)-2` -/
def P8746431272355279150.Spec : Prop :=
  ∀ n, P8746431272355279150.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P9787096221392439451

`Δ[A113241(n)]-1`
-/

namespace A069930.P9787096221392439451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A069930.P9787096221392439451

namespace A069930

/-- `Δ[A113241(n)]-1` -/
def P9787096221392439451.Spec : Prop :=
  ∀ n, P9787096221392439451.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P8791148787360516067

`A066660(n+1)-1`
-/

namespace A069930.P8791148787360516067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066660 (n + 1) - 1

end

end A069930.P8791148787360516067

namespace A069930

/-- `A066660(n+1)-1` -/
def P8791148787360516067.Spec : Prop :=
  ∀ n, P8791148787360516067.a n = A069930 (n + 1)

theorem P8791148787360516067.correct : P8791148787360516067.Spec := by
  intro n
  simp only [A069930, Nat.add_sub_cancel, A069930.P8791148787360516067.a, A069930.P13025091485286396037.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A066660, A066660.P17487963968517902439.a, A069283, A069283.P13755877573305704475.f1, A069283.P13755877573305704475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069930

/-! ## A069930.P10288937788222462383

`A099777(n+1)-2`
-/

namespace A069930.P10288937788222462383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (n + 1) - 2

end

end A069930.P10288937788222462383

namespace A069930

/-- `A099777(n+1)-2` -/
def P10288937788222462383.Spec : Prop :=
  ∀ n, P10288937788222462383.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P6694606094720088645

`n-A234306(n+1)`
-/

namespace A069930.P6694606094720088645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A234306 (n + 1)

end

end A069930.P6694606094720088645

namespace A069930

/-- `n-A234306(n+1)` -/
def P6694606094720088645.Spec : Prop :=
  ∀ n, P6694606094720088645.a n = A069930 (n + 1)

theorem P6694606094720088645.correct : P6694606094720088645.Spec := by
  intro n
  simp only [A069930, Nat.add_sub_cancel, A069930.P6694606094720088645.a, A069930.P13025091485286396037.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A069283, A069283.P13755877573305704475.f1, A069283.P13755877573305704475.a, A234306, A234306.P8708475813081284006.a, A066660, A066660.P17487963968517902439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069930

/-! ## A069930.P16665896603915898938

`A111150(n+1)/2-1`
-/

namespace A069930.P16665896603915898938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111150 (n + 1) : ℚ) / 2 - 1

end

end A069930.P16665896603915898938

namespace A069930

/-- `A111150(n+1)/2-1` -/
def P16665896603915898938.Spec : Prop :=
  ∀ n, P16665896603915898938.a n = (A069930 (n + 1) : ℚ)

end A069930

/-! ## A069930.P10908607606066424944

`A340273(2*(n+1))-2`
-/

namespace A069930.P10908607606066424944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340273 (2 * (n + 1)) - 2

end

end A069930.P10908607606066424944

namespace A069930

/-- `A340273(2*(n+1))-2` -/
def P10908607606066424944.Spec : Prop :=
  ∀ n, P10908607606066424944.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P8500379819724252552

`∑{d}[n+1, A134451(#-1)]`
-/

namespace A069930.P8500379819724252552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A134451 (d - 1)

end

end A069930.P8500379819724252552

namespace A069930

/-- `∑{d}[n+1, A134451(#-1)]` -/
def P8500379819724252552.Spec : Prop :=
  ∀ n, P8500379819724252552.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P3112923955452484854

`abs(2-A000005(n+2+n))`
-/

namespace A069930.P3112923955452484854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000005 (n + 2 + n)|

end

end A069930.P3112923955452484854

namespace A069930

/-- `abs(2-A000005(n+2+n))` -/
def P3112923955452484854.Spec : Prop :=
  ∀ n, P3112923955452484854.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P17134022001084706710

`Δ[A000005(2*n)-(2-a(n-1))]` with `a(0)=0`
-/

namespace A069930.P17134022001084706710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 (2 * n) - (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069930.P17134022001084706710

namespace A069930

/-- `Δ[A000005(2*n)-(2-a(n-1))]` -/
def P17134022001084706710.Spec : Prop :=
  ∀ n, P17134022001084706710.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P15277310442784194503

`A023444(A099777(n+1))`
-/

namespace A069930.P15277310442784194503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A099777 (n + 1)).toNat

end

end A069930.P15277310442784194503

namespace A069930

/-- `A023444(A099777(n+1))` -/
def P15277310442784194503.Spec : Prop :=
  ∀ n, P15277310442784194503.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P3198660696791410571

`A046667(A111150(n+1))`
-/

namespace A069930.P3198660696791410571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A111150 (n + 1)).toNat

end

end A069930.P3198660696791410571

namespace A069930

/-- `A046667(A111150(n+1))` -/
def P3198660696791410571.Spec : Prop :=
  ∀ n, P3198660696791410571.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P7545216390735468514

`A244325(A111150(n+1)+1)`
-/

namespace A069930.P7545216390735468514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A111150 (n + 1) + 1).toNat

end

end A069930.P7545216390735468514

namespace A069930

/-- `A244325(A111150(n+1)+1)` -/
def P7545216390735468514.Spec : Prop :=
  ∀ n, P7545216390735468514.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P9863651791154021486

`A023444(A000005(2*(n+1)))`
-/

namespace A069930.P9863651791154021486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A000005 (2 * (n + 1))).toNat

end

end A069930.P9863651791154021486

namespace A069930

/-- `A023444(A000005(2*(n+1)))` -/
def P9863651791154021486.Spec : Prop :=
  ∀ n, P9863651791154021486.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P5203108771824087717

`A289207(A000005(2*n+2))`
-/

namespace A069930.P5203108771824087717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000005 (2 * n + 2)).toNat

end

end A069930.P5203108771824087717

namespace A069930

/-- `A289207(A000005(2*n+2))` -/
def P5203108771824087717.Spec : Prop :=
  ∀ n, P5203108771824087717.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P7609415425552103396

`A337566(n+1)+A057427(n)`
-/

namespace A069930.P7609415425552103396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (n + 1) + A057427 n

end

end A069930.P7609415425552103396

namespace A069930

/-- `A337566(n+1)+A057427(n)` -/
def P7609415425552103396.Spec : Prop :=
  ∀ n, P7609415425552103396.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P11681819590486373653

`A302707(n)-A001227(n+1)`
-/

namespace A069930.P11681819590486373653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302707 n - A001227 (n + 1)

end

end A069930.P11681819590486373653

namespace A069930

/-- `A302707(n)-A001227(n+1)` -/
def P11681819590486373653.Spec : Prop :=
  ∀ n, P11681819590486373653.a n = A069930 (n + 1)

end A069930

/-! ## A069930.P1079892832736329052

`A337566(n+1)-A057428(n)`
-/

namespace A069930.P1079892832736329052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (n + 1) - A057428 n

end

end A069930.P1079892832736329052

namespace A069930

/-- `A337566(n+1)-A057428(n)` -/
def P1079892832736329052.Spec : Prop :=
  ∀ n, P1079892832736329052.a n = A069930 (n + 1)

end A069930

/-!
# A069931: Number of k, 1<=k<=n, such that k divides sigma(n).

The programs for A069931, there is no canonical definition to state claims against.
-/

/-! ## A069931.P1973348450892937508

`A243987(A184387(n+1)-A001065(n+1))`
-/

namespace A069931.P1973348450892937508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243987 (A184387 (n + 1) - A001065 (n + 1)).toNat

end

end A069931.P1973348450892937508

/-! ## A069931.P16572486306877036682

`A347516(∑{d}[n+1, #]*A000040(2*n+1))`
-/

namespace A069931.P16572486306877036682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A000040 (2 * n + 1)).toNat

end

end A069931.P16572486306877036682

/-! ## A069931.P12867966042227765790

`A347516(A000203(n+1)*A002313(n+1))`
-/

namespace A069931.P12867966042227765790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (A000203 (n + 1) * A002313 (n + 1)).toNat

end

end A069931.P12867966042227765790

/-! ## A069931.P11378415156597553975

`A347516(A000203(n+1)*A007645(n+1))`
-/

namespace A069931.P11378415156597553975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (A000203 (n + 1) * A007645 (n + 1)).toNat

end

end A069931.P11378415156597553975

/-! ## A069931.P1013626985746676110

`A347516(A000203(n+1)*A033203(n+1))`
-/

namespace A069931.P1013626985746676110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (A000203 (n + 1) * A033203 (n + 1)).toNat

end

end A069931.P1013626985746676110

/-!
# A069932: Number of k, 1<=k<=n, such that phi(k) divides n.

The programs for A069932, there is no canonical definition to state claims against.
-/

/-! ## A069932.P10606804255863371364

`n+1-A378642(n+1)`
-/

namespace A069932.P10606804255863371364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378642 (n + 1)

end

end A069932.P10606804255863371364

/-! ## A069932.P3962800879883177867

`A024000(A378642(n+1))+n`
-/

namespace A069932.P3962800879883177867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A378642 (n + 1)).toNat + (n : ℤ)

end

end A069932.P3962800879883177867

/-! ## A069932.P3299826946902657103

`Δ[eq[1, A378636(n+1)]]`
-/

namespace A069932.P3299826946902657103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378636 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069932.P3299826946902657103

/-! ## A069932.P1174939090222043627

`A130822(A362469(n+1))`
-/

namespace A069932.P1174939090222043627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130822 (A362469 (n + 1)).toNat

end

end A069932.P1174939090222043627

/-!
# A069933: Number of k, 1<=k<=n, such that core(k) divides n, where core(x) is the squarefree part of x, the smallest integer such that x*core(x) is a square.

The programs for A069933, the canonical program `A069933.P8410770447695468430` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069933 has offset 1).

The definition of A069933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069933.P2565370895575504623

`∑{d}[A007947(n+1), A000196((n+1)/#)]`
-/

namespace A069933.P2565370895575504623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000196 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069933.P2565370895575504623

namespace A069933

/-- `∑{d}[A007947(n+1), A000196((n+1)/#)]` -/
def P2565370895575504623.Spec : Prop :=
  ∀ n, P2565370895575504623.a n = A069933 (n + 1)

end A069933

/-! ## A069933.P13107251415140791716

`∑{d}[n+1, A000196(#)*A008966((n+1)/#)]`
-/

namespace A069933.P13107251415140791716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000196 d * A008966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069933.P13107251415140791716

namespace A069933

/-- `∑{d}[n+1, A000196(#)*A008966((n+1)/#)]` -/
def P13107251415140791716.Spec : Prop :=
  ∀ n, P13107251415140791716.a n = A069933 (n + 1)

end A069933

/-! ## A069933.P8410770447695468430

`∑{d}[n+1, A086671(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A069933

/-- `∑{d}[n+1, A086671(#)*A271102((n+1)/#)]` -/
def P8410770447695468430.Spec : Prop :=
  ∀ n, P8410770447695468430.a n = A069933 (n + 1)

theorem P8410770447695468430.correct : P8410770447695468430.Spec := by
  intro n
  simp only [A069933, Nat.add_sub_cancel]

end A069933

/-! ## A069933.P15184890764317350778

`∑{d}[n+1, A328729(#)*A344867((n+1)/#)]`
-/

namespace A069933.P15184890764317350778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A344867 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069933.P15184890764317350778

namespace A069933

/-- `∑{d}[n+1, A328729(#)*A344867((n+1)/#)]` -/
def P15184890764317350778.Spec : Prop :=
  ∀ n, P15184890764317350778.a n = A069933 (n + 1)

end A069933

/-! ## A069933.P7051298397802309300

`∑{d}[A015053(A015053(n+1)), A000196((n+1)/#)]`
-/

namespace A069933.P7051298397802309300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000196 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069933.P7051298397802309300

namespace A069933

/-- `∑{d}[A015053(A015053(n+1)), A000196((n+1)/#)]` -/
def P7051298397802309300.Spec : Prop :=
  ∀ n, P7051298397802309300.a n = A069933 (n + 1)

end A069933

/-!
# A069934: a(n) = lcm_{d|n} sigma(d).

The programs for A069934, there is no canonical definition to state claims against.
-/

/-! ## A069934.P2844626249521124087

`A265708(n+1)/A265709(n+1)*A265710(n+1)`
-/

namespace A069934.P2844626249521124087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265708 (n + 1) : ℚ) / (A265709 (n + 1) : ℚ) * (A265710 (n + 1) : ℚ)

end

end A069934.P2844626249521124087

/-! ## A069934.P13675120788396037356

`lcm(A000027(A324985(n+1)), A097012(n+1))`
-/

namespace A069934.P13675120788396037356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A324985 (n + 1)).toNat) (A097012 (n + 1))

end

end A069934.P13675120788396037356

/-! ## A069934.P16903102632584344245

`A324985(n+1)%A102083(A326978(n))`
-/

namespace A069934.P16903102632584344245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324985 (n + 1)) (A102083 (A326978 n).toNat)

end

end A069934.P16903102632584344245

/-! ## A069934.P16173143195064241645

`A324985(n+1)+A000007(A217124(n+1))`
-/

namespace A069934.P16173143195064241645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324985 (n + 1) + A000007 (A217124 (n + 1)).toNat

end

end A069934.P16173143195064241645

/-! ## A069934.P15108888228359268270

`A324985(n+1)+A324964(A335465(2*n+3))`
-/

namespace A069934.P15108888228359268270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324985 (n + 1) + A324964 (A335465 (2 * n + 3)).toNat

end

end A069934.P15108888228359268270

/-!
# A069935: Maximal power of 2 that divides the n-th partition number.

The programs for A069935, there is no canonical definition to state claims against.
-/

/-! ## A069935.P6595479604671403290

`2^A278478(n)`
-/

namespace A069935.P6595479604671403290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A278478 n : ℤ)

end

end A069935.P6595479604671403290

/-! ## A069935.P17488780854659089889

`A006519(A000041(n))`
-/

namespace A069935.P17488780854659089889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000041 n).toNat

end

end A069935.P17488780854659089889

/-! ## A069935.P1498712794304005901

`A000079(A278478(n))`
-/

namespace A069935.P1498712794304005901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A278478 n).toNat

end

end A069935.P1498712794304005901

/-! ## A069935.P8900654408916768827

`A060546(2*A278478(n))`
-/

namespace A069935.P8900654408916768827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (2 * A278478 n).toNat

end

end A069935.P8900654408916768827

/-! ## A069935.P329145209553497504

`2^val(∑[A002865(n)], 2)`
-/

namespace A069935.P329145209553497504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A069935.P329145209553497504

/-! ## A069935.P9318817700481466181

`2^val(A000065(n)+1, 2)`
-/

namespace A069935.P9318817700481466181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A000065 n + 1).toNat 2

end

end A069935.P9318817700481466181

/-! ## A069935.P15500837354066366990

`A000079(val(A000041(n), 2))`
-/

namespace A069935.P15500837354066366990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (A000041 n).toNat 2)

end

end A069935.P15500837354066366990

/-! ## A069935.P10554052739929873952

`A000079(val(∑[A002865(n)], 2))`
-/

namespace A069935.P10554052739929873952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2)

end

end A069935.P10554052739929873952

/-! ## A069935.P5767769962166843493

`and(n-A133041(n), A000041(n))`
-/

namespace A069935.P5767769962166843493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A133041 n) (A000041 n)

end

end A069935.P5767769962166843493

/-! ## A069935.P17182224438169031402

`and(-A000041(n), ∑[A002865(n)])`
-/

namespace A069935.P17182224438169031402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000041 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069935.P17182224438169031402

/-! ## A069935.P11438721856572207752

`gcd(A029930(n), A299473(n))`
-/

namespace A069935.P11438721856572207752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029930 n) (A299473 n)

end

end A069935.P11438721856572207752

/-! ## A069935.P7410044661827849237

`2^val(A035363(2*n), 2)`
-/

namespace A069935.P7410044661827849237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (A035363 (2 * n)).toNat 2

end

end A069935.P7410044661827849237

/-! ## A069935.P7352789775755902056

`gcd(A011782(n), A056823(n))`
-/

namespace A069935.P7352789775755902056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011782 n) (A056823 n)

end

end A069935.P7352789775755902056

/-! ## A069935.P17347283052006850260

`gcd(sqrt(A001255(n)), 2^n)`
-/

namespace A069935.P17347283052006850260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))) (2 ^ n : ℤ)

end

end A069935.P17347283052006850260

/-! ## A069935.P13687472554938437351

`gcd(A000041(n), A000079(n))`
-/

namespace A069935.P13687472554938437351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 n) (A000079 n)

end

end A069935.P13687472554938437351

/-! ## A069935.P8033678317604876962

`gcd(A001255(n), A208739(n))`
-/

namespace A069935.P8033678317604876962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001255 n) (A208739 n)

end

end A069935.P8033678317604876962

/-! ## A069935.P6352318478758636499

`gcd(A056450(n), A183011(n))`
-/

namespace A069935.P6352318478758636499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056450 n) (A183011 n)

end

end A069935.P6352318478758636499

/-! ## A069935.P667408748247376109

`A000010(gcd(A000079(n+3), A139582(n)))`
-/

namespace A069935.P667408748247376109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd (A000079 (n + 3)) (A139582 n))

end

end A069935.P667408748247376109

/-! ## A069935.P11723691451089794293

`and(A000041(n)*A060160(n+1), A000041(n))`
-/

namespace A069935.P11723691451089794293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 n * A060160 (n + 1)) (A000041 n)

end

end A069935.P11723691451089794293

/-! ## A069935.P2220243112870731736

`gcd(A000065(n)+1, A011782(n)²)`
-/

namespace A069935.P2220243112870731736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000065 n + 1) (A011782 n ^ 2)

end

end A069935.P2220243112870731736

/-!
# A069939: a(n) = (1/3!)*((Sum of digits of n)^3 + 3*(Sum of digits of n)*(Sum of digits^2 of n) + 2*(Sum of digits^3 of n)).

The programs for A069939, there is no canonical definition to state claims against.
-/

/-! ## A069939.P9142775153445225280

`∑{digits}[n, #^3]^A001192(A124550(n))`
-/

namespace A069939.P9142775153445225280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3).sum : ℕ) : ℚ) ^ (A001192 (A124550 n).toNat : ℤ)

end

end A069939.P9142775153445225280

/-! ## A069939.P3155958641059757299

`∑{digits}[n, #^3]^A036064(A081720(n+1))`
-/

namespace A069939.P3155958641059757299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3).sum : ℕ) : ℚ) ^ (A036064 (A081720 (n + 1)).toNat : ℤ)

end

end A069939.P3155958641059757299

/-! ## A069939.P8679845645469531781

`A000002(A022176(n))*A055012(n)`
-/

namespace A069939.P8679845645469531781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A022176 n).toNat * A055012 n

end

end A069939.P8679845645469531781

/-!
# A069940: (1/2)*((Sum of digits of n)^2 + (Sum of digits^2 of n)).

The programs for A069940, the canonical program `A069940.P6457464724127474158` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069940 has offset 0).

The definition of A069940 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069940.P6457464724127474158

`(∑{digits}[n, #²]+∑{digits}[n, #]²)/2`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069940

/-- `(∑{digits}[n, #²]+∑{digits}[n, #]²)/2` -/
def P6457464724127474158.Spec : Prop :=
  ∀ n, P6457464724127474158.a n = (A069940 n : ℚ)

end A069940

/-! ## A069940.P17595073756260349277

`∑{digits}[n, #]²-(∑{digits}[n, #]²-∑{digits}[n, #²])/2`
-/

namespace A069940.P17595073756260349277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℚ) - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum : ℕ) : ℤ) : ℚ) / 2

end

end A069940.P17595073756260349277

namespace A069940

/-- `∑{digits}[n, #]²-(∑{digits}[n, #]²-∑{digits}[n, #²])/2` -/
def P17595073756260349277.Spec : Prop :=
  ∀ n, P17595073756260349277.a n = (A069940 n : ℚ)

end A069940

/-! ## A069940.P13191473636983451663

`(A003132(n)+∑{digits}[n, #]²)/2`
-/

namespace A069940.P13191473636983451663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 n + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2 : ℕ) : ℤ) : ℚ) / 2

end

end A069940.P13191473636983451663

namespace A069940

/-- `(A003132(n)+∑{digits}[n, #]²)/2` -/
def P13191473636983451663.Spec : Prop :=
  ∀ n, P13191473636983451663.a n = (A069940 n : ℚ)

end A069940

/-! ## A069940.P13271718330431708229

`A003132(n)+A069816(n)/2`
-/

namespace A069940.P13271718330431708229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003132 n : ℚ) + (A069816 n : ℚ) / 2

end

end A069940.P13271718330431708229

namespace A069940

/-- `A003132(n)+A069816(n)/2` -/
def P13271718330431708229.Spec : Prop :=
  ∀ n, P13271718330431708229.a n = (A069940 n : ℚ)

end A069940

/-! ## A069940.P1332006408723783534

`(A118881(n)+A003132(n))/2`
-/

namespace A069940.P1332006408723783534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118881 n + A003132 n : ℚ) / 2

end

end A069940.P1332006408723783534

namespace A069940

/-- `(A118881(n)+A003132(n))/2` -/
def P1332006408723783534.Spec : Prop :=
  ∀ n, P1332006408723783534.a n = (A069940 n : ℚ)

end A069940

/-! ## A069940.P14116407472995478094

`A118881(n)-A069816(n)/2`
-/

namespace A069940.P14116407472995478094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118881 n : ℚ) - (A069816 n : ℚ) / 2

end

end A069940.P14116407472995478094

namespace A069940

/-- `A118881(n)-A069816(n)/2` -/
def P14116407472995478094.Spec : Prop :=
  ∀ n, P14116407472995478094.a n = (A069940 n : ℚ)

end A069940

/-! ## A069940.P2340597013940447386

`A257297(n)+A003132(n)`
-/

namespace A069940.P2340597013940447386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + A003132 n

end

end A069940.P2340597013940447386

namespace A069940

/-- `A257297(n)+A003132(n)` -/
def P2340597013940447386.Spec : Prop :=
  ∀ n, P2340597013940447386.a n = A069940 n

end A069940

/-! ## A069940.P12947419654529582914

`A118881(n)-A257297(n)`
-/

namespace A069940.P12947419654529582914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A257297 n

end

end A069940.P12947419654529582914

namespace A069940

/-- `A118881(n)-A257297(n)` -/
def P12947419654529582914.Spec : Prop :=
  ∀ n, P12947419654529582914.a n = A069940 n

end A069940

/-! ## A069940.P9410197987496780616

`A007953(n)²-A257297(n)`
-/

namespace A069940.P9410197987496780616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A257297 n

end

end A069940.P9410197987496780616

namespace A069940

/-- `A007953(n)²-A257297(n)` -/
def P9410197987496780616.Spec : Prop :=
  ∀ n, P9410197987496780616.a n = A069940 n

end A069940

/-! ## A069940.P7342941654221361944

`A257297(n)+A258881(n)-n`
-/

namespace A069940.P7342941654221361944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n + (A258881 n - (n : ℤ))

end

end A069940.P7342941654221361944

namespace A069940

/-- `A257297(n)+A258881(n)-n` -/
def P7342941654221361944.Spec : Prop :=
  ∀ n, P7342941654221361944.a n = A069940 n

end A069940

/-!
# A069943: a(n) = numerator(b(n)), where b(1) = b(2) = 1, b(n) = (b(n-1) + b(n-2))/(n-1).

The programs for A069943, there is no canonical definition to state claims against.
-/

/-! ## A069943.P1368183708077142819

`A000085(n)/gcd(A000085(n), A000142(n))`
-/

namespace A069943.P1368183708077142819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / (Int.gcd (A000085 n) (A000142 n) : ℚ)

end

end A069943.P1368183708077142819

/-! ## A069943.P865781369800184167

`A069944(n+1)/A000142(n)*A000085(n)`
-/

namespace A069943.P865781369800184167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069944 (n + 1) : ℚ) / (A000142 n : ℚ) * (A000085 n : ℚ)

end

end A069943.P865781369800184167

/-! ## A069943.P6117871493820686440

`A069944(n+1)/A000142(n+1)*A013989(n)`
-/

namespace A069943.P6117871493820686440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069944 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A013989 n : ℚ)

end

end A069943.P6117871493820686440

/-! ## A069943.P9621908079051019743

`lcm(A000085(n), A232980(n))/A232980(n)`
-/

namespace A069943.P9621908079051019743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000085 n) (A232980 n) : ℚ) / (A232980 n : ℚ)

end

end A069943.P9621908079051019743

/-! ## A069943.P16809508279394344696

`A319677(A072899(n+1))`
-/

namespace A069943.P16809508279394344696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319677 (A072899 (n + 1)).toNat

end

end A069943.P16809508279394344696

/-!
# A069944: a(n) = denominator(b(n)), where b(1) = b(2) = 1, b(n) = (b(n-1) + b(n-2))/(n-1).

The programs for A069944, there is no canonical definition to state claims against.
-/

/-! ## A069944.P13204521839923961910

`A000142(n)/gcd(A000085(n), A000142(n))`
-/

namespace A069944.P13204521839923961910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000085 n) (A000142 n) : ℚ)

end

end A069944.P13204521839923961910

/-! ## A069944.P11499808480399191896

`A069943(n+1)/A000085(n)*A000142(n)`
-/

namespace A069944.P11499808480399191896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069943 (n + 1) : ℚ) / (A000085 n : ℚ) * (A000142 n : ℚ)

end

end A069944.P11499808480399191896

/-! ## A069944.P17094490588768012011

`A069943(n+1)/A000085(n)*A155856(A000217(n))`
-/

namespace A069944.P17094490588768012011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069943 (n + 1) : ℚ) / (A000085 n : ℚ) * (A155856 (A000217 n).toNat : ℚ)

end

end A069944.P17094490588768012011

/-! ## A069944.P11893390193535469111

`A000142(n+1)/A013989(n)*A069943(n+1)`
-/

namespace A069944.P11893390193535469111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A013989 n : ℚ) * (A069943 (n + 1) : ℚ)

end

end A069944.P11893390193535469111

/-! ## A069944.P2394362146304347617

`A000142(n)/A295310(A000085(n))`
-/

namespace A069944.P2394362146304347617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A295310 (A000085 n).toNat : ℚ)

end

end A069944.P2394362146304347617

/-!
# A069945: Let M_k be the k X k matrix M_k(i,j)=1/binomial(i+n,j); then a(n)=1/det(M_(n+1)).

The programs for A069945, there is no canonical definition to state claims against.
-/

/-! ## A069945.P14093527579802218711

`∏[A000894(n)*A033999(n)]`
-/

namespace A069945.P14093527579802218711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000894 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069945.P14093527579802218711

/-! ## A069945.P6409284753826266721

`∏[A002457(n)*A168491(n)]`
-/

namespace A069945.P6409284753826266721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069945.P6409284753826266721

/-!
# A069948: a(n) = 1/exp(1) * Sum_{k>=0} (k+n)!^2 / k!^3.

The programs for A069948, there is no canonical definition to state claims against.
-/

/-! ## A069948.P15446764380170144491

`A090210(∑[n+3])`
-/

namespace A069948.P15446764380170144491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069948.P15446764380170144491

/-! ## A069948.P7123223832644144715

`or(1, A090210(A141214(n)))`
-/

namespace A069948.P7123223832644144715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A090210 (A141214 n).toNat)

end

end A069948.P7123223832644144715

/-! ## A069948.P13110670132350991703

`record[A090210(A055998(val(n+1, 2)+1))]`
-/

namespace A069948.P13110670132350991703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090210 (A055998 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069948.P13110670132350991703

/-! ## A069948.P380583012511797240

`A090210(A141214(n))%A054652(n+3)`
-/

namespace A069948.P380583012511797240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090210 (A141214 n).toNat) (A054652 (n + 3))

end

end A069948.P380583012511797240

/-!
# A069949: a(n) = Sum_{d|n} phi(d+1).

The programs for A069949, the canonical program `A069949.P11973078331391515623` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069949 has offset 1).

The definition of A069949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069949.P11973078331391515623

`∑{d}[n+1, A000010(#+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069949

/-- `∑{d}[n+1, A000010(#+1)]` -/
def P11973078331391515623.Spec : Prop :=
  ∀ n, P11973078331391515623.a n = A069949 (n + 1)

theorem P11973078331391515623.correct : P11973078331391515623.Spec := by
  intro n
  simp only [A069949, Nat.add_sub_cancel]

end A069949

/-! ## A069949.P13118991731122430146

`∑{d}[n+1, sqrt(A127473(#+1))]`
-/

namespace A069949.P13118991731122430146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A127473 (d + 1) : ℝ)

end

end A069949.P13118991731122430146

namespace A069949

/-- `∑{d}[n+1, sqrt(A127473(#+1))]` -/
def P13118991731122430146.Spec : Prop :=
  ∀ n, P13118991731122430146.a n = (A069949 (n + 1) : ℝ)

end A069949

/-! ## A069949.P13859332788700680581

`∑{d}[n+1, A109606(#+1)+1]`
-/

namespace A069949.P13859332788700680581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A109606 (d + 1) + 1)

end

end A069949.P13859332788700680581

namespace A069949

/-- `∑{d}[n+1, A109606(#+1)+1]` -/
def P13859332788700680581.Spec : Prop :=
  ∀ n, P13859332788700680581.a n = A069949 (n + 1)

theorem P13859332788700680581.correct : P13859332788700680581.Spec := by
  intro n
  simp only [A069949, Nat.add_sub_cancel, A069949.P13859332788700680581.f1, A069949.P13859332788700680581.a, A069949.P11973078331391515623.f1, A069949.P11973078331391515623.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069949

/-! ## A069949.P17353488032434933472

`∑{d}[n+1, A039649(#+1)-1]`
-/

namespace A069949.P17353488032434933472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A039649 (d + 1) - 1)

end

end A069949.P17353488032434933472

namespace A069949

/-- `∑{d}[n+1, A039649(#+1)-1]` -/
def P17353488032434933472.Spec : Prop :=
  ∀ n, P17353488032434933472.a n = A069949 (n + 1)

theorem P17353488032434933472.correct : P17353488032434933472.Spec := by
  intro n
  simp only [A069949, Nat.add_sub_cancel, A069949.P17353488032434933472.f1, A069949.P17353488032434933472.a, A069949.P11973078331391515623.f1, A069949.P11973078331391515623.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069949

/-! ## A069949.P4493192107672704922

`∑{d}[n+1, A067541(A005408(#))]`
-/

namespace A069949.P4493192107672704922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067541 (A005408 d).toNat

end

end A069949.P4493192107672704922

namespace A069949

/-- `∑{d}[n+1, A067541(A005408(#))]` -/
def P4493192107672704922.Spec : Prop :=
  ∀ n, P4493192107672704922.a n = A069949 (n + 1)

end A069949

/-! ## A069949.P9960048145249713591

`∑{d}[n+1, A349137(A016825(#))]`
-/

namespace A069949.P9960048145249713591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349137 (A016825 d).toNat

end

end A069949.P9960048145249713591

namespace A069949

/-- `∑{d}[n+1, A349137(A016825(#))]` -/
def P9960048145249713591.Spec : Prop :=
  ∀ n, P9960048145249713591.a n = A069949 (n + 1)

end A069949

/-! ## A069949.P8379936440793829691

`∑{d}[n+1, A225530(#+1)]`
-/

namespace A069949.P8379936440793829691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A225530 (d + 1)

end

end A069949.P8379936440793829691

namespace A069949

/-- `∑{d}[n+1, A225530(#+1)]` -/
def P8379936440793829691.Spec : Prop :=
  ∀ n, P8379936440793829691.a n = A069949 (n + 1)

end A069949

/-! ## A069949.P3171465834740617221

`∑{d}[n+1, A054523(A000124(#))]`
-/

namespace A069949.P3171465834740617221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054523 (A000124 d).toNat

end

end A069949.P3171465834740617221

namespace A069949

/-- `∑{d}[n+1, A054523(A000124(#))]` -/
def P3171465834740617221.Spec : Prop :=
  ∀ n, P3171465834740617221.a n = A069949 (n + 1)

end A069949

/-! ## A069949.P12887249270309890596

`∑{d}[n+1, A054523(A000217(#)+1)]`
-/

namespace A069949.P12887249270309890596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054523 (A000217 d + 1).toNat

end

end A069949.P12887249270309890596

namespace A069949

/-- `∑{d}[n+1, A054523(A000217(#)+1)]` -/
def P12887249270309890596.Spec : Prop :=
  ∀ n, P12887249270309890596.a n = A069949 (n + 1)

end A069949

/-!
# A069950: Expansion of (1+x^2)*(1+x^5)*(1+x^8)/((1-x)*(1-x^2)*(1-x^3)*(1-x^4)*(1-x^5)*(1-x^6)*(1-x^7)*(1-x^8)*(1-x^9)*(1-x^10)).

The programs for A069950, there is no canonical definition to state claims against.
-/

/-! ## A069950.P11378675945039804430

`A206551(A007997(n+3)+A000041(n))`
-/

namespace A069950.P11378675945039804430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A007997 (n + 3) + A000041 n).toNat

end

end A069950.P11378675945039804430

/-! ## A069950.P11876714636250146170

`A180447(A006171(n)*A279075(n+2))`
-/

namespace A069950.P11876714636250146170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A006171 n * A279075 (n + 2)).toNat

end

end A069950.P11876714636250146170

/-! ## A069950.P10302290734428884704

`A135660(A000726(2*(n+2))*A000726(n))`
-/

namespace A069950.P10302290734428884704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A000726 (2 * (n + 2)) * A000726 n).toNat

end

end A069950.P10302290734428884704

/-! ## A069950.P4919404774216901165

`A006141(3*n+5)-A178798(A006355(n))`
-/

namespace A069950.P4919404774216901165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (3 * n + 5) - A178798 (A006355 n).toNat

end

end A069950.P4919404774216901165

/-! ## A069950.P8599628395073112056

`round(A128900(3*n+4)/5)`
-/

namespace A069950.P8599628395073112056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A128900 (3 * n + 4) : ℚ) / 5)

end

end A069950.P8599628395073112056

/-!
# A069951: Continued fraction expansion of the number e^(2/3).

The programs for A069951, the canonical program `A069951.P10384582414497277789` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069951 has offset 0).

The definition of A069951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069951.P10384582414497277789

`2*a(n-5)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=18, a(3)=7, a(4)=1, a(5)=1, a(6)=10, a(7)=54, a(8)=16, a(9)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069951

/-- `2*a(n-5)-a(n-10)` -/
def P10384582414497277789.Spec : Prop :=
  ∀ n, P10384582414497277789.a n = A069951 n

theorem P10384582414497277789.correct : P10384582414497277789.Spec := by
  intro n
  simp only [A069951]

end A069951

/-! ## A069951.P13248776724155139341

`A057355(A078690(n)+1)`
-/

namespace A069951.P13248776724155139341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A078690 n + 1).toNat

end

end A069951.P13248776724155139341

namespace A069951

/-- `A057355(A078690(n)+1)` -/
def P13248776724155139341.Spec : Prop :=
  ∀ n, P13248776724155139341.a n = A069951 n

end A069951

/-! ## A069951.P11265207515517331279

`floor(ratio[A078976(A233583(n+1))])`
-/

namespace A069951.P11265207515517331279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078976 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A069951.P11265207515517331279

namespace A069951

/-- `floor(ratio[A078976(A233583(n+1))])` -/
def P11265207515517331279.Spec : Prop :=
  ∀ n, P11265207515517331279.a n = A069951 n

end A069951

/-!
# A069952: Numbers k such that (k+1)*phi(k) is a perfect square.

The programs for A069952, there is no canonical definition to state claims against.
-/

/-! ## A069952.P398126031334811968

`A069069(n+1)-1`
-/

namespace A069952.P398126031334811968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069069 (n + 1) - 1

end

end A069952.P398126031334811968

/-! ## A069952.P15699879349548464163

`A134824(n+2)+A069069(n+1)`
-/

namespace A069952.P15699879349548464163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A069069 (n + 1)

end

end A069952.P15699879349548464163

/-! ## A069952.P2387921212674267823

`A164117(2*n+1)+A069069(n+1)`
-/

namespace A069952.P2387921212674267823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (2 * n + 1) + A069069 (n + 1)

end

end A069952.P2387921212674267823

/-! ## A069952.P4127638541880398653

`A001478(n+1)+A069069(n+1)+n`
-/

namespace A069952.P4127638541880398653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A069069 (n + 1) + (n : ℤ))

end

end A069952.P4127638541880398653

/-! ## A069952.P9726052550666596200

`A190611(gcd(n, n+1))+A069069(n+1)`
-/

namespace A069952.P9726052550666596200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190611 (Nat.gcd n (n + 1)) + A069069 (n + 1)

end

end A069952.P9726052550666596200

/-! ## A069952.P2176979012656658413

`A070990(A038573(n+1))+A069069(n+1)`
-/

namespace A069952.P2176979012656658413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (A038573 (n + 1)).toNat + A069069 (n + 1)

end

end A069952.P2176979012656658413

/-! ## A069952.P2308420454691331755

`A316441(A140555(n+1))+A069069(n+1)`
-/

namespace A069952.P2308420454691331755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A140555 (n + 1)).toNat + A069069 (n + 1)

end

end A069952.P2308420454691331755

/-! ## A069952.P15183010018517451453

`A284793(A284794(n+1))+A069069(n+1)`
-/

namespace A069952.P15183010018517451453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A284794 (n + 1)).toNat + A069069 (n + 1)

end

end A069952.P15183010018517451453

/-! ## A069952.P14403789751037575751

`A284881(A284882(n+1))+A069069(n+1)`
-/

namespace A069952.P14403789751037575751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (A284882 (n + 1)).toNat + A069069 (n + 1)

end

end A069952.P14403789751037575751

/-! ## A069952.P9022422489080426458

`A157817(A208645(2*n))+A069069(n+1)`
-/

namespace A069952.P9022422489080426458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157817 (A208645 (2 * n)).toNat + A069069 (n + 1)

end

end A069952.P9022422489080426458

/-!
# A069953: Composite n such that (n-1)*phi(n) is a perfect square.

The programs for A069953, there is no canonical definition to state claims against.
-/

/-! ## A069953.P16090941231536009217

`A069068(n+1)+1`
-/

namespace A069953.P16090941231536009217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069068 (n + 1) + 1

end

end A069953.P16090941231536009217

/-! ## A069953.P10928747320618826010

`-xor(-1, A069068(Δ[n²]-n))`
-/

namespace A069953.P10928747320618826010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A069068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A069953.P10928747320618826010

/-! ## A069953.P16807667288287298090

`n-(A023443(n)-A069068(Δ[n²]-n))`
-/

namespace A069953.P16807667288287298090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A069068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A069953.P16807667288287298090

/-! ## A069953.P6619533341647901459

`2-(A007318(C(3, n))-A069068(Δ[n²]-n))`
-/

namespace A069953.P6619533341647901459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 3 n) - A069068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A069953.P6619533341647901459

/-!
# A069954: a(n) = binomial(2^(n+1), 2^n)/2 = binomial(2^(n+1) - 1, 2^n) = binomial(2^(n+1) - 1, 2^n-1).

The programs for A069954, the canonical program `A069954.P17267531856312654525` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069954 has offset 0).

The definition of A069954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2^(n+1)-1, 2^n)` (program `A069954.P17267531856312654525`, by `A069954.P17267531856312654525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069954.P17267531856312654525

`C(2^(n+1)-1, 2^n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069954

/-- `C(2^(n+1)-1, 2^n)` -/
def P17267531856312654525.Spec : Prop :=
  ∀ n, (P17267531856312654525.a n : ℤ) = A069954 n

theorem P17267531856312654525.correct : P17267531856312654525.Spec := by
  intro n
  simp only [A069954]

end A069954

/-! ## A069954.P7212049309044925197

`C(2^(n+1), 2^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069954.P7212049309044925197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 ^ (n + 1)) (2 ^ n) : ℚ) / 2

end

end A069954.P7212049309044925197

namespace A069954

/-- `C(2^(n+1), 2^n)/2` -/
def P7212049309044925197.Spec : Prop :=
  ∀ n, P7212049309044925197.a n = (A069954 n : ℚ)

end A069954

/-! ## A069954.P9580495560510421323

`C(2^(n+1)-1, 2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A069954.P9580495560510421323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 ^ (n + 1) : ℤ) - 1).toNat ((2 ^ n : ℤ) - 1).toNat

end

end A069954.P9580495560510421323

namespace A069954

/-- `C(2^(n+1)-1, 2^n-1)` -/
def P9580495560510421323.Spec : Prop :=
  ∀ n, (P9580495560510421323.a n : ℤ) = A069954 n

end A069954

/-! ## A069954.P7006599503982473311

`A001790(2^n)`
-/

namespace A069954.P7006599503982473311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (2 ^ n)

end

end A069954.P7006599503982473311

namespace A069954

/-- `A001790(2^n)` -/
def P7006599503982473311.Spec : Prop :=
  ∀ n, P7006599503982473311.a n = A069954 n

end A069954

/-!
# A069955: Let W(n) = Product_{k=1..n} (1 - 1/(4*k^2)), the partial Wallis product (lim_{n->oo} W(n) = 2/Pi); then a(n) = numerator(W(n)).

The programs for A069955, the canonical program `A069955.P4395818524536690601` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069955 has offset 0).

The definition of A069955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069955.P4395818524536690601

`A001790(n)*A001803(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069955

/-- `A001790(n)*A001803(n)` -/
def P4395818524536690601.Spec : Prop :=
  ∀ n, P4395818524536690601.a n = A069955 n

theorem P4395818524536690601.correct : P4395818524536690601.Spec := by
  intro n
  simp only [A069955]

end A069955

/-! ## A069955.P2178013661906025004

`(2*n+1)*gcd(C(2*n, n), a(n-1))²` with `a(0)=1`
-/

namespace A069955.P2178013661906025004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n + 1) * Nat.gcd (Nat.choose (2 * n) n) (a (n - 1)) ^ 2

end

end A069955.P2178013661906025004

namespace A069955

/-- `(2*n+1)*gcd(C(2*n, n), a(n-1))²` -/
def P2178013661906025004.Spec : Prop :=
  ∀ n, (P2178013661906025004.a n : ℤ) = A069955 n

end A069955

/-! ## A069955.P7679802751565650265

`A001902(2*n)`
-/

namespace A069955.P7679802751565650265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001902 (2 * n)

end

end A069955.P7679802751565650265

namespace A069955

/-- `A001902(2*n)` -/
def P7679802751565650265.Spec : Prop :=
  ∀ n, P7679802751565650265.a n = A069955 n

end A069955

/-! ## A069955.P1113460192086732211

`A380950(Δ[n²])`
-/

namespace A069955.P1113460192086732211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380950 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069955.P1113460192086732211

namespace A069955

/-- `A380950(Δ[n²])` -/
def P1113460192086732211.Spec : Prop :=
  ∀ n, P1113460192086732211.a n = A069955 n

end A069955

/-! ## A069955.P17735078974396552546

`lcm(2*n+1, A380950(2*n+1))`
-/

namespace A069955.P17735078974396552546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A380950 (2 * n + 1))

end

end A069955.P17735078974396552546

namespace A069955

/-- `lcm(2*n+1, A380950(2*n+1))` -/
def P17735078974396552546.Spec : Prop :=
  ∀ n, (P17735078974396552546.a n : ℤ) = A069955 n

end A069955

/-! ## A069955.P10427267095016246884

`sqrt(A038534(n))*A001803(n)`
-/

namespace A069955.P10427267095016246884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038534 n : ℝ) * (A001803 n : ℝ)

end

end A069955.P10427267095016246884

namespace A069955

/-- `sqrt(A038534(n))*A001803(n)` -/
def P10427267095016246884.Spec : Prop :=
  ∀ n, P10427267095016246884.a n = (A069955 n : ℝ)

end A069955

/-! ## A069955.P1120503615286877280

`A001803(n)*A036069(2*n)`
-/

namespace A069955.P1120503615286877280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A036069 (2 * n)

end

end A069955.P1120503615286877280

namespace A069955

/-- `A001803(n)*A036069(2*n)` -/
def P1120503615286877280.Spec : Prop :=
  ∀ n, P1120503615286877280.a n = A069955 n

end A069955

/-! ## A069955.P9396901197007034425

`A001803(n)*A163590(2*n)`
-/

namespace A069955.P9396901197007034425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A163590 (2 * n)

end

end A069955.P9396901197007034425

namespace A069955

/-- `A001803(n)*A163590(2*n)` -/
def P9396901197007034425.Spec : Prop :=
  ∀ n, P9396901197007034425.a n = A069955 n

end A069955

/-! ## A069955.P1392210943803978512

`A001790(n+1)*A206771(n+1)`
-/

namespace A069955.P1392210943803978512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 (n + 1) * A206771 (n + 1)

end

end A069955.P1392210943803978512

namespace A069955

/-- `A001790(n+1)*A206771(n+1)` -/
def P1392210943803978512.Spec : Prop :=
  ∀ n, P1392210943803978512.a n = A069955 n

end A069955

/-!
# A069956: Expansion of (1+x^2)/((1-x)^2*(1-x^2)^2*(1-x^3)^2*(1-x^8)*(1-x^9)*(1-x^10)).

The programs for A069956, there is no canonical definition to state claims against.
-/

/-! ## A069956.P1826971148070820944

`A002024(A123614(n))-ceil(3*(n/2)²)`
-/

namespace A069956.P1826971148070820944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A123614 n).toNat - ⌈3 * ((n : ℚ) / 2) ^ 2⌉

end

end A069956.P1826971148070820944

/-! ## A069956.P9979204854275800046

`A137735(A282078(n))+A004695(n)`
-/

namespace A069956.P9979204854275800046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A282078 n).toNat + A004695 n

end

end A069956.P9979204854275800046

/-! ## A069956.P431315725068039104

`A058695(n)-A000196(A083858(n))`
-/

namespace A069956.P431315725068039104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058695 n - A000196 (A083858 n).toNat

end

end A069956.P431315725068039104

/-! ## A069956.P10297610014115892471

`A048273(A086601(n)+A054850(n+1))`
-/

namespace A069956.P10297610014115892471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048273 (A086601 n + A054850 (n + 1)).toNat

end

end A069956.P10297610014115892471

/-!
# A069957: Expansion of 1/((1-x)^2*(1-x^2)^2*(1-x^3)*(1-x^4)^2*(1-x^5)).

The programs for A069957, the canonical program `A069957.P15361692526959934535` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069957 has offset 0).

The definition of A069957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+3x^3-x^4+2x^5+x^6-4x^7-2x^8+2x^10+2x^11+2x^12-2x^14-4x^15+x^16+2x^17-x^18+3x^19-x^20-2x^21+x^22))` (program `A069957.P15361692526959934535`, by `A069957.P15361692526959934535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069957.P15361692526959934535

`ogf(1/(1-2x-x^2+3x^3-x^4+2x^5+x^6-4x^7-2x^8+2x^10+2x^11+2x^12-2x^14-4x^15+x^16+2x^17-x^18+3x^19-x^20-2x^21+x^22))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069957

/-- `ogf(1/(1-2x-x^2+3x^3-x^4+2x^5+x^6-4x^7-2x^8+2x^10+2x^11+2x^12-2x^14-4x^15+x^16+2x^17-x^18+3x^19-x^20-2x^21+x^22))` -/
def P15361692526959934535.Spec : Prop :=
  ∀ n, P15361692526959934535.a n = A069957 n

theorem P15361692526959934535.correct : P15361692526959934535.Spec := by
  intro n
  simp only [A069957]

end A069957

/-! ## A069957.P12212749958571780404

`record[A212000(n+1)]-gcd(n, ∑[n])`
-/

namespace A069957.P12212749958571780404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212000 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A069957.P12212749958571780404

namespace A069957

/-- `record[A212000(n+1)]-gcd(n, ∑[n])` -/
def P12212749958571780404.Spec : Prop :=
  ∀ n, P12212749958571780404.a n = A069957 n

end A069957

/-! ## A069957.P17059567763538654185

`A212000(∑[n]+1)-A026741(n)`
-/

namespace A069957.P17059567763538654185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212000 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A026741 n

end

end A069957.P17059567763538654185

namespace A069957

/-- `A212000(∑[n]+1)-A026741(n)` -/
def P17059567763538654185.Spec : Prop :=
  ∀ n, P17059567763538654185.a n = A069957 n

end A069957

/-! ## A069957.P8543917545012314652

`record[A212000(n+1)]-A026741(n)`
-/

namespace A069957.P8543917545012314652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A026741 n

end

end A069957.P8543917545012314652

namespace A069957

/-- `record[A212000(n+1)]-A026741(n)` -/
def P8543917545012314652.Spec : Prop :=
  ∀ n, P8543917545012314652.a n = A069957 n

end A069957

/-! ## A069957.P10929291652063108595

`A212010(A025747(n))-A026741(n)`
-/

namespace A069957.P10929291652063108595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 (A025747 n).toNat - A026741 n

end

end A069957.P10929291652063108595

namespace A069957

/-- `A212010(A025747(n))-A026741(n)` -/
def P10929291652063108595.Spec : Prop :=
  ∀ n, P10929291652063108595.a n = A069957 n

end A069957

/-!
# A069958: (Sum of digits of n)^3 - (sum of digits^3 of n).

The programs for A069958, the canonical program `A069958.P13422372317707970472` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069958 has offset 0).

The definition of A069958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A055012, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069958.P13422372317707970472

`A007953(n)^3-A055012(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069958

/-- `A007953(n)^3-A055012(n)` -/
def P13422372317707970472.Spec : Prop :=
  ∀ n, P13422372317707970472.a n = A069958 n

theorem P13422372317707970472.correct : P13422372317707970472.Spec := by
  intro n
  simp only [A069958]

end A069958

/-! ## A069958.P4836170843426320436

`∑{digits}[n, #]^3-∑{digits}[n, #^3]`
-/

namespace A069958.P4836170843426320436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 3 : ℕ) : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 3).sum : ℕ) : ℤ)

end

end A069958.P4836170843426320436

namespace A069958

/-- `∑{digits}[n, #]^3-∑{digits}[n, #^3]` -/
def P4836170843426320436.Spec : Prop :=
  ∀ n, P4836170843426320436.a n = A069958 n

end A069958

/-! ## A069958.P14131146258702812172

`A118880(n)-∑{digits}[n, #^3]`
-/

namespace A069958.P14131146258702812172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 3).sum : ℕ) : ℤ)

end

end A069958.P14131146258702812172

namespace A069958

/-- `A118880(n)-∑{digits}[n, #^3]` -/
def P14131146258702812172.Spec : Prop :=
  ∀ n, P14131146258702812172.a n = A069958 n

end A069958

/-! ## A069958.P15157827845138535018

`A000578(∑{digits}[n, #])-∑{digits}[n, #^3]`
-/

namespace A069958.P15157827845138535018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 3).sum : ℕ) : ℤ)

end

end A069958.P15157827845138535018

namespace A069958

/-- `A000578(∑{digits}[n, #])-∑{digits}[n, #^3]` -/
def P15157827845138535018.Spec : Prop :=
  ∀ n, P15157827845138535018.a n = A069958 n

end A069958

/-! ## A069958.P5044800072896050267

`A118880(n)-A055012(n)`
-/

namespace A069958.P5044800072896050267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n - A055012 n

end

end A069958.P5044800072896050267

namespace A069958

/-- `A118880(n)-A055012(n)` -/
def P5044800072896050267.Spec : Prop :=
  ∀ n, P5044800072896050267.a n = A069958 n

end A069958

/-!
# A069959: Define C(n) by the recursion C(0) = 2*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 2*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of the complex number z.

The programs for A069959, the canonical program `A069959.P12459289007884588928` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069959 has offset 0).

The definition of A069959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069959.P12459289007884588928

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=5, a(2)=8`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069959

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P12459289007884588928.Spec : Prop :=
  ∀ n, P12459289007884588928.a n = A069959 n

theorem P12459289007884588928.correct : P12459289007884588928.Spec := by
  intro n
  simp only [A069959]

end A069959

/-! ## A069959.P8779853591611545603

`4*A000045(n)²+A000045(n+1)²`
-/

namespace A069959.P8779853591611545603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 n ^ 2 + A000045 (n + 1) ^ 2

end

end A069959.P8779853591611545603

namespace A069959

/-- `4*A000045(n)²+A000045(n+1)²` -/
def P8779853591611545603.Spec : Prop :=
  ∀ n, P8779853591611545603.a n = A069959 n

end A069959

/-! ## A069959.P15512050505421523663

`ogf((1+3x-4x^2)/(1-2x-2x^2+x^3))`
-/

namespace A069959.P15512050505421523663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -4] [1, -2, -2, 1] n

end

end A069959.P15512050505421523663

namespace A069959

/-- `ogf((1+3x-4x^2)/(1-2x-2x^2+x^3))` -/
def P15512050505421523663.Spec : Prop :=
  ∀ n, P15512050505421523663.a n = A069959 n

end A069959

/-! ## A069959.P3649669367816212401

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=5, a(2)=8`
-/

namespace A069959.P3649669367816212401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 8] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A069959.P3649669367816212401

namespace A069959

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P3649669367816212401.Spec : Prop :=
  ∀ n, P3649669367816212401.a n = A069959 n

theorem P3649669367816212401.correct : P3649669367816212401.Spec := by
  intro n
  simp only [A069959, Nat.add_sub_cancel, A069959.P3649669367816212401.a, A069959.P12459289007884588928.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069959

/-! ## A069959.P3797349182820401202

`A110391(n)+A001654(n)`
-/

namespace A069959.P3797349182820401202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110391 n + A001654 n

end

end A069959.P3797349182820401202

namespace A069959

/-- `A110391(n)+A001654(n)` -/
def P3797349182820401202.Spec : Prop :=
  ∀ n, P3797349182820401202.a n = A069959 n

end A069959

/-! ## A069959.P11795335897231064505

`A099016(n)+A081714(n)`
-/

namespace A069959.P11795335897231064505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099016 n + A081714 n

end

end A069959.P11795335897231064505

namespace A069959

/-- `A099016(n)+A081714(n)` -/
def P11795335897231064505.Spec : Prop :=
  ∀ n, P11795335897231064505.a n = A069959 n

end A069959

/-! ## A069959.P828774153654701356

`A260259(n)+A005248(n)`
-/

namespace A069959.P828774153654701356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n + A005248 n

end

end A069959.P828774153654701356

namespace A069959

/-- `A260259(n)+A005248(n)` -/
def P828774153654701356.Spec : Prop :=
  ∀ n, P828774153654701356.a n = A069959 n

end A069959

/-! ## A069959.P4381516332429281691

`A175395(n)+A129905(n)`
-/

namespace A069959.P4381516332429281691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A129905 n

end

end A069959.P4381516332429281691

namespace A069959

/-- `A175395(n)+A129905(n)` -/
def P4381516332429281691.Spec : Prop :=
  ∀ n, P4381516332429281691.a n = A069959 n

end A069959

/-! ## A069959.P3633543990044007879

`A192921(n)+A120718(n)`
-/

namespace A069959.P3633543990044007879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 n + A120718 n

end

end A069959.P3633543990044007879

namespace A069959

/-- `A192921(n)+A120718(n)` -/
def P3633543990044007879.Spec : Prop :=
  ∀ n, P3633543990044007879.a n = A069959 n

end A069959

/-! ## A069959.P8308288218021729450

`A048575(n)-A192914(n)`
-/

namespace A069959.P8308288218021729450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A192914 n

end

end A069959.P8308288218021729450

namespace A069959

/-- `A048575(n)-A192914(n)` -/
def P8308288218021729450.Spec : Prop :=
  ∀ n, P8308288218021729450.a n = A069959 n

end A069959

/-! ## A069959.P5502919566999148640

`A102714(n)-A192916(n)`
-/

namespace A069959.P5502919566999148640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102714 n - A192916 n

end

end A069959.P5502919566999148640

namespace A069959

/-- `A102714(n)-A192916(n)` -/
def P5502919566999148640.Spec : Prop :=
  ∀ n, P5502919566999148640.a n = A069959 n

end A069959

/-! ## A069959.P7526560221575187881

`A001519(n+2)-A192914(n)`
-/

namespace A069959.P7526560221575187881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A192914 n

end

end A069959.P7526560221575187881

namespace A069959

/-- `A001519(n+2)-A192914(n)` -/
def P7526560221575187881.Spec : Prop :=
  ∀ n, P7526560221575187881.a n = A069959 n

end A069959

/-! ## A069959.P271954112376656292

`A001519(n)+2*A059929(n)`
-/

namespace A069959.P271954112376656292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n + 2 * A059929 n

end

end A069959.P271954112376656292

namespace A069959

/-- `A001519(n)+2*A059929(n)` -/
def P271954112376656292.Spec : Prop :=
  ∀ n, P271954112376656292.a n = A069959 n

end A069959

/-! ## A069959.P2962683413030795263

`A111569(2*n)+A005248(n)`
-/

namespace A069959.P2962683413030795263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (2 * n) + A005248 n

end

end A069959.P2962683413030795263

namespace A069959

/-- `A111569(2*n)+A005248(n)` -/
def P2962683413030795263.Spec : Prop :=
  ∀ n, P2962683413030795263.a n = A069959 n

end A069959

/-! ## A069959.P9476820427596345897

`A129905(n)+2*A007598(n)`
-/

namespace A069959.P9476820427596345897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n + 2 * A007598 n

end

end A069959.P9476820427596345897

namespace A069959

/-- `A129905(n)+2*A007598(n)` -/
def P9476820427596345897.Spec : Prop :=
  ∀ n, P9476820427596345897.a n = A069959 n

end A069959

/-! ## A069959.P16495805239075196599

`A260259(n)+A000032(2*n)`
-/

namespace A069959.P16495805239075196599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n + A000032 (2 * n)

end

end A069959.P16495805239075196599

namespace A069959

/-- `A260259(n)+A000032(2*n)` -/
def P16495805239075196599.Spec : Prop :=
  ∀ n, P16495805239075196599.a n = A069959 n

end A069959

/-! ## A069959.P7134385318576378344

`A129905(n)+2*A000045(n)²`
-/

namespace A069959.P7134385318576378344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n + 2 * A000045 n ^ 2

end

end A069959.P7134385318576378344

namespace A069959

/-- `A129905(n)+2*A000045(n)²` -/
def P7134385318576378344.Spec : Prop :=
  ∀ n, P7134385318576378344.a n = A069959 n

end A069959

/-! ## A069959.P2943765805185223742

`A111569(2*n)+A000032(2*n)`
-/

namespace A069959.P2943765805185223742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (2 * n) + A000032 (2 * n)

end

end A069959.P2943765805185223742

namespace A069959

/-- `A111569(2*n)+A000032(2*n)` -/
def P2943765805185223742.Spec : Prop :=
  ∀ n, P2943765805185223742.a n = A069959 n

end A069959

/-! ## A069959.P4024381163419511837

`A006498(2*n)+A006355(n+1)²`
-/

namespace A069959.P4024381163419511837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (2 * n) + A006355 (n + 1) ^ 2

end

end A069959.P4024381163419511837

namespace A069959

/-- `A006498(2*n)+A006355(n+1)²` -/
def P4024381163419511837.Spec : Prop :=
  ∀ n, P4024381163419511837.a n = A069959 n

end A069959

/-!
# A069960: Define C(n) by the recursion C(0) = 3*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 3*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of the complex number z.

The programs for A069960, the canonical program `A069960.P13287061063244179403` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069960 has offset 0).

The definition of A069960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069960.P13287061063244179403

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=10, a(2)=13`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069960

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P13287061063244179403.Spec : Prop :=
  ∀ n, P13287061063244179403.a n = A069960 n

theorem P13287061063244179403.correct : P13287061063244179403.Spec := by
  intro n
  simp only [A069960]

end A069960

/-! ## A069960.P7493895446128008214

`9*A000045(n)²+A000045(n+1)²`
-/

namespace A069960.P7493895446128008214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000045 n ^ 2 + A000045 (n + 1) ^ 2

end

end A069960.P7493895446128008214

namespace A069960

/-- `9*A000045(n)²+A000045(n+1)²` -/
def P7493895446128008214.Spec : Prop :=
  ∀ n, P7493895446128008214.a n = A069960 n

end A069960

/-! ## A069960.P12740082065592740644

`ogf((1+8x-9x^2)/(1-2x-2x^2+x^3))`
-/

namespace A069960.P12740082065592740644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -9] [1, -2, -2, 1] n

end

end A069960.P12740082065592740644

namespace A069960

/-- `ogf((1+8x-9x^2)/(1-2x-2x^2+x^3))` -/
def P12740082065592740644.Spec : Prop :=
  ∀ n, P12740082065592740644.a n = A069960 n

end A069960

/-! ## A069960.P9158424264685422982

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=10, a(2)=13`
-/

namespace A069960.P9158424264685422982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 13] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A069960.P9158424264685422982

namespace A069960

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P9158424264685422982.Spec : Prop :=
  ∀ n, P9158424264685422982.a n = A069960 n

theorem P9158424264685422982.correct : P9158424264685422982.Spec := by
  intro n
  simp only [A069960, Nat.add_sub_cancel, A069960.P9158424264685422982.a, A069960.P13287061063244179403.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069960

/-! ## A069960.P6949229763859174695

`A129905(n)+7*A007598(n)`
-/

namespace A069960.P6949229763859174695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n + 7 * A007598 n

end

end A069960.P6949229763859174695

namespace A069960

/-- `A129905(n)+7*A007598(n)` -/
def P6949229763859174695.Spec : Prop :=
  ∀ n, P6949229763859174695.a n = A069960 n

end A069960

/-! ## A069960.P12609429360256170588

`Δ[A001654(n)]+A022086(n)²`
-/

namespace A069960.P12609429360256170588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A022086 n ^ 2

end

end A069960.P12609429360256170588

namespace A069960

/-- `Δ[A001654(n)]+A022086(n)²` -/
def P12609429360256170588.Spec : Prop :=
  ∀ n, P12609429360256170588.a n = A069960 n

end A069960

/-! ## A069960.P10996658393336221435

`A007598(n+1)+A022086(n)²`
-/

namespace A069960.P10996658393336221435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + A022086 n ^ 2

end

end A069960.P10996658393336221435

namespace A069960

/-- `A007598(n+1)+A022086(n)²` -/
def P10996658393336221435.Spec : Prop :=
  ∀ n, P10996658393336221435.a n = A069960 n

end A069960

/-! ## A069960.P8697402176527386478

`A007598(n+1)+9*A007598(n)`
-/

namespace A069960.P8697402176527386478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + 9 * A007598 n

end

end A069960.P8697402176527386478

namespace A069960

/-- `A007598(n+1)+9*A007598(n)` -/
def P8697402176527386478.Spec : Prop :=
  ∀ n, P8697402176527386478.a n = A069960 n

end A069960

/-! ## A069960.P13687163092215037440

`A000045(n+1)²+A022086(n)²`
-/

namespace A069960.P13687163092215037440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 + A022086 n ^ 2

end

end A069960.P13687163092215037440

namespace A069960

/-- `A000045(n+1)²+A022086(n)²` -/
def P13687163092215037440.Spec : Prop :=
  ∀ n, P13687163092215037440.a n = A069960 n

end A069960

/-! ## A069960.P4451336688657541249

`10*A000045(n)²-A121646(n+1)`
-/

namespace A069960.P4451336688657541249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n ^ 2 - A121646 (n + 1)

end

end A069960.P4451336688657541249

namespace A069960

/-- `10*A000045(n)²-A121646(n+1)` -/
def P4451336688657541249.Spec : Prop :=
  ∀ n, P4451336688657541249.a n = A069960 n

end A069960

/-! ## A069960.P6272222587482192466

`A001654(n)+A292696(n)+A005248(n)`
-/

namespace A069960.P6272222587482192466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + (A292696 n + A005248 n)

end

end A069960.P6272222587482192466

namespace A069960

/-- `A001654(n)+A292696(n)+A005248(n)` -/
def P6272222587482192466.Spec : Prop :=
  ∀ n, P6272222587482192466.a n = A069960 n

end A069960

/-! ## A069960.P1924975932695423276

`A000045(n)*A022093(n)-A121646(n+1)`
-/

namespace A069960.P1924975932695423276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A022093 n - A121646 (n + 1)

end

end A069960.P1924975932695423276

namespace A069960

/-- `A000045(n)*A022093(n)-A121646(n+1)` -/
def P1924975932695423276.Spec : Prop :=
  ∀ n, P1924975932695423276.a n = A069960 n

end A069960

/-!
# A069961: Define C(n) by the recursion C(0) = 4*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 4*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of z.

The programs for A069961, the canonical program `A069961.P9620747756128315193` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069961 has offset 0).

The definition of A069961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069961.P9620747756128315193

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=17, a(2)=20`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069961

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P9620747756128315193.Spec : Prop :=
  ∀ n, P9620747756128315193.a n = A069961 n

theorem P9620747756128315193.correct : P9620747756128315193.Spec := by
  intro n
  simp only [A069961]

end A069961

/-! ## A069961.P13432225008890709687

`16*A000045(n)²+A000045(n+1)²`
-/

namespace A069961.P13432225008890709687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A000045 n ^ 2 + A000045 (n + 1) ^ 2

end

end A069961.P13432225008890709687

namespace A069961

/-- `16*A000045(n)²+A000045(n+1)²` -/
def P13432225008890709687.Spec : Prop :=
  ∀ n, P13432225008890709687.a n = A069961 n

end A069961

/-! ## A069961.P14109626840990355189

`Δ[A001654(n)]+A022087(n)²`
-/

namespace A069961.P14109626840990355189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A022087 n ^ 2

end

end A069961.P14109626840990355189

namespace A069961

/-- `Δ[A001654(n)]+A022087(n)²` -/
def P14109626840990355189.Spec : Prop :=
  ∀ n, P14109626840990355189.a n = A069961 n

end A069961

/-! ## A069961.P13248780472545899112

`A007598(n+1)+A022087(n)²`
-/

namespace A069961.P13248780472545899112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + A022087 n ^ 2

end

end A069961.P13248780472545899112

namespace A069961

/-- `A007598(n+1)+A022087(n)²` -/
def P13248780472545899112.Spec : Prop :=
  ∀ n, P13248780472545899112.a n = A069961 n

end A069961

/-! ## A069961.P16820063896790464548

`A022087(n)²+∑[A212804(n)]²`
-/

namespace A069961.P16820063896790464548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A069961.P16820063896790464548

namespace A069961

/-- `A022087(n)²+∑[A212804(n)]²` -/
def P16820063896790464548.Spec : Prop :=
  ∀ n, P16820063896790464548.a n = A069961 n

end A069961

/-! ## A069961.P13244016843029865376

`Δ[A001654(n)]+Δ[A022403(n)]²`
-/

namespace A069961.P13244016843029865376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n) ^ 2

end

end A069961.P13244016843029865376

namespace A069961

/-- `Δ[A001654(n)]+Δ[A022403(n)]²` -/
def P13244016843029865376.Spec : Prop :=
  ∀ n, P13244016843029865376.a n = A069961 n

end A069961

/-! ## A069961.P16144037332001936992

`A007598(n+1)+16*A007598(n)`
-/

namespace A069961.P16144037332001936992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + 16 * A007598 n

end

end A069961.P16144037332001936992

namespace A069961

/-- `A007598(n+1)+16*A007598(n)` -/
def P16144037332001936992.Spec : Prop :=
  ∀ n, P16144037332001936992.a n = A069961 n

end A069961

/-! ## A069961.P1315269768537433887

`A000045(n+1)²+A022087(n)²`
-/

namespace A069961.P1315269768537433887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 + A022087 n ^ 2

end

end A069961.P1315269768537433887

namespace A069961

/-- `A000045(n+1)²+A022087(n)²` -/
def P1315269768537433887.Spec : Prop :=
  ∀ n, P1315269768537433887.a n = A069961 n

end A069961

/-! ## A069961.P6634833222562734688

`A074677(2*n+1)+A022087(n)²`
-/

namespace A069961.P6634833222562734688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (2 * n + 1) + A022087 n ^ 2

end

end A069961.P6634833222562734688

namespace A069961

/-- `A074677(2*n+1)+A022087(n)²` -/
def P6634833222562734688.Spec : Prop :=
  ∀ n, P6634833222562734688.a n = A069961 n

end A069961

/-! ## A069961.P657586137870783345

`A000045(n)*A022351(n)-A121646(n+1)`
-/

namespace A069961.P657586137870783345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A022351 n - A121646 (n + 1)

end

end A069961.P657586137870783345

namespace A069961

/-- `A000045(n)*A022351(n)-A121646(n+1)` -/
def P657586137870783345.Spec : Prop :=
  ∀ n, P657586137870783345.a n = A069961 n

end A069961

/-!
# A069962: Define C(n) by the recursion C(0) = 5*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 5*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of z.

The programs for A069962, the canonical program `A069962.P16624175660714019626` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069962 has offset 0).

The definition of A069962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069962.P16624175660714019626

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=26, a(2)=29`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069962

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P16624175660714019626.Spec : Prop :=
  ∀ n, P16624175660714019626.a n = A069962 n

theorem P16624175660714019626.correct : P16624175660714019626.Spec := by
  intro n
  simp only [A069962]

end A069962

/-! ## A069962.P7556771100728897596

`25*A000045(n)²+A000045(n+1)²`
-/

namespace A069962.P7556771100728897596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A000045 n ^ 2 + A000045 (n + 1) ^ 2

end

end A069962.P7556771100728897596

namespace A069962

/-- `25*A000045(n)²+A000045(n+1)²` -/
def P7556771100728897596.Spec : Prop :=
  ∀ n, P7556771100728897596.a n = A069962 n

end A069962

/-! ## A069962.P15788945773682983675

`A069960(n)+A022087(n)²`
-/

namespace A069962.P15788945773682983675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069960 n + A022087 n ^ 2

end

end A069962.P15788945773682983675

namespace A069962

/-- `A069960(n)+A022087(n)²` -/
def P15788945773682983675.Spec : Prop :=
  ∀ n, P15788945773682983675.a n = A069962 n

end A069962

/-! ## A069962.P15908591876816657430

`A069961(n)+A022086(n)²`
-/

namespace A069962.P15908591876816657430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069961 n + A022086 n ^ 2

end

end A069962.P15908591876816657430

namespace A069962

/-- `A069961(n)+A022086(n)²` -/
def P15908591876816657430.Spec : Prop :=
  ∀ n, P15908591876816657430.a n = A069962 n

end A069962

/-! ## A069962.P7781857466081457274

`A069960(n)+Δ[A022403(n)]²`
-/

namespace A069962.P7781857466081457274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069960 n + (f1 (n + 1) - f1 n) ^ 2

end

end A069962.P7781857466081457274

namespace A069962

/-- `A069960(n)+Δ[A022403(n)]²` -/
def P7781857466081457274.Spec : Prop :=
  ∀ n, P7781857466081457274.a n = A069962 n

end A069962

/-! ## A069962.P4198498640702575645

`A000045(n)*A022360(n)-A121646(n+1)`
-/

namespace A069962.P4198498640702575645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A022360 n - A121646 (n + 1)

end

end A069962.P4198498640702575645

namespace A069962

/-- `A000045(n)*A022360(n)-A121646(n+1)` -/
def P4198498640702575645.Spec : Prop :=
  ∀ n, P4198498640702575645.a n = A069962 n

end A069962

/-!
# A069963: Define C(n) by the recursion C(0) = 6*i where i^2 = -1, C(n+1) = 1/(1 + C(n)), then a(n) = 6*(-1)^n/Im(C(n)) where Im(z) denotes the imaginary part of z.

The programs for A069963, the canonical program `A069963.P7840976701550802181` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069963 has offset 0).

The definition of A069963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069963.P7840976701550802181

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=37, a(2)=40`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069963

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P7840976701550802181.Spec : Prop :=
  ∀ n, P7840976701550802181.a n = A069963 n

theorem P7840976701550802181.correct : P7840976701550802181.Spec := by
  intro n
  simp only [A069963]

end A069963

/-! ## A069963.P3694477614972666393

`36*A000045(n)²+A000045(n+1)²`
-/

namespace A069963.P3694477614972666393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A000045 n ^ 2 + A000045 (n + 1) ^ 2

end

end A069963.P3694477614972666393

namespace A069963

/-- `36*A000045(n)²+A000045(n+1)²` -/
def P3694477614972666393.Spec : Prop :=
  ∀ n, P3694477614972666393.a n = A069963 n

end A069963

/-! ## A069963.P6398558946543676622

`A069961(n)+20*A007598(n)`
-/

namespace A069963.P6398558946543676622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069961 n + 20 * A007598 n

end

end A069963.P6398558946543676622

namespace A069963

/-- `A069961(n)+20*A007598(n)` -/
def P6398558946543676622.Spec : Prop :=
  ∀ n, P6398558946543676622.a n = A069963 n

end A069963

/-! ## A069963.P72690075925282191

`Δ[A001654(n)]+36*A007598(n)`
-/

namespace A069963.P72690075925282191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 36 * A007598 n

end

end A069963.P72690075925282191

namespace A069963

/-- `Δ[A001654(n)]+36*A007598(n)` -/
def P72690075925282191.Spec : Prop :=
  ∀ n, P72690075925282191.a n = A069963 n

end A069963

/-! ## A069963.P2879403318266058831

`37*A007598(n)-A121646(n+1)`
-/

namespace A069963.P2879403318266058831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  37 * A007598 n - A121646 (n + 1)

end

end A069963.P2879403318266058831

namespace A069963

/-- `37*A007598(n)-A121646(n+1)` -/
def P2879403318266058831.Spec : Prop :=
  ∀ n, P2879403318266058831.a n = A069963 n

end A069963

/-!
# A069964: a(n) = (sum of digits of n)^4 - (sum of digits^4 of n).

The programs for A069964, the canonical program `A069964.P6060695406399644179` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069964 has offset 0).

The definition of A069964 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069964.P6060695406399644179

`∑{digits}[n, #]^4-∑{digits}[n, #^4]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069964

/-- `∑{digits}[n, #]^4-∑{digits}[n, #^4]` -/
def P6060695406399644179.Spec : Prop :=
  ∀ n, P6060695406399644179.a n = A069964 n

theorem P6060695406399644179.correct : P6060695406399644179.Spec := by
  intro n
  simp only [A069964]

end A069964

/-! ## A069964.P9048533899822958753

`∑{digits}[n, #]²²-A055013(n)`
-/

namespace A069964.P9048533899822958753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2) ^ 2 : ℕ) : ℤ) - A055013 n

end

end A069964.P9048533899822958753

namespace A069964

/-- `∑{digits}[n, #]²²-A055013(n)` -/
def P9048533899822958753.Spec : Prop :=
  ∀ n, P9048533899822958753.a n = A069964 n

theorem P9048533899822958753.correct : P9048533899822958753.Spec := by
  intro n
  simp only [A069964, Nat.add_sub_cancel, A069964.P9048533899822958753.f1, A069964.P9048533899822958753.a, A069964.P6060695406399644179.f1, A069964.P6060695406399644179.f2, A069964.P6060695406399644179.a, A055013, A055013.P18131107479962781787.f1, A055013.P18131107479962781787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069964

/-! ## A069964.P3105544162602285512

`A118881(n)²-gcd(n, n+1)*∑{digits}[n, #²²]`
-/

namespace A069964.P3105544162602285512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n ^ 2 - ((Nat.gcd n (n + 1) * ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => (x ^ 2) ^ 2).sum : ℕ) : ℤ)

end

end A069964.P3105544162602285512

namespace A069964

/-- `A118881(n)²-gcd(n, n+1)*∑{digits}[n, #²²]` -/
def P3105544162602285512.Spec : Prop :=
  ∀ n, P3105544162602285512.a n = A069964 n

end A069964

/-! ## A069964.P10351961086566727445

`A118881(n)²-A055013(n)`
-/

namespace A069964.P10351961086566727445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n ^ 2 - A055013 n

end

end A069964.P10351961086566727445

namespace A069964

/-- `A118881(n)²-A055013(n)` -/
def P10351961086566727445.Spec : Prop :=
  ∀ n, P10351961086566727445.a n = A069964 n

end A069964

/-! ## A069964.P18046948437141701532

`A007953(n)^4-A055013(n)`
-/

namespace A069964.P18046948437141701532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 4 - A055013 n

end

end A069964.P18046948437141701532

namespace A069964

/-- `A007953(n)^4-A055013(n)` -/
def P18046948437141701532.Spec : Prop :=
  ∀ n, P18046948437141701532.a n = A069964 n

end A069964

/-! ## A069964.P857450895408225144

`A000583(A007953(n))-A055013(n)`
-/

namespace A069964.P857450895408225144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A007953 n).toNat - A055013 n

end

end A069964.P857450895408225144

namespace A069964

/-- `A000583(A007953(n))-A055013(n)` -/
def P857450895408225144.Spec : Prop :=
  ∀ n, P857450895408225144.a n = A069964 n

end A069964

/-!
# A069965: (Sum of digits of n)^5 - (sum of digits^5 of n).

The programs for A069965, the canonical program `A069965.P11980175962428664514` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069965 has offset 0).

The definition of A069965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069965.P11980175962428664514

`A000584(∑{digits}[n, #])-∑{digits}[n, #^5]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069965

/-- `A000584(∑{digits}[n, #])-∑{digits}[n, #^5]` -/
def P11980175962428664514.Spec : Prop :=
  ∀ n, P11980175962428664514.a n = A069965 n

theorem P11980175962428664514.correct : P11980175962428664514.Spec := by
  intro n
  simp only [A069965]

end A069965

/-! ## A069965.P15390118100855390583

`A007953(n)^5-A055014(n)`
-/

namespace A069965.P15390118100855390583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 5 - A055014 n

end

end A069965.P15390118100855390583

namespace A069965

/-- `A007953(n)^5-A055014(n)` -/
def P15390118100855390583.Spec : Prop :=
  ∀ n, P15390118100855390583.a n = A069965 n

end A069965

/-! ## A069965.P16403768423210538742

`A335358(A213380(n+1))`
-/

namespace A069965.P16403768423210538742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335358 (A213380 (n + 1)).toNat

end

end A069965.P16403768423210538742

namespace A069965

/-- `A335358(A213380(n+1))` -/
def P16403768423210538742.Spec : Prop :=
  ∀ n, P16403768423210538742.a n = A069965 n

end A069965

/-! ## A069965.P15014434192915457045

`A351254(A365757(n+1))`
-/

namespace A069965.P15014434192915457045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351254 (A365757 (n + 1)).toNat

end

end A069965.P15014434192915457045

namespace A069965

/-- `A351254(A365757(n+1))` -/
def P15014434192915457045.Spec : Prop :=
  ∀ n, P15014434192915457045.a n = A069965 n

end A069965

/-! ## A069965.P12798445136552369691

`A066503(6^A326530(n))`
-/

namespace A069965.P12798445136552369691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A326530 n : ℤ))).toNat

end

end A069965.P12798445136552369691

namespace A069965

/-- `A066503(6^A326530(n))` -/
def P12798445136552369691.Spec : Prop :=
  ∀ n, P12798445136552369691.a n = A069965 n

end A069965

/-!
# A069966: (Sum of digits of n)^6 - (sum of digits^6 of n).

The programs for A069966, the canonical program `A069966.P7796171943559667650` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069966 has offset 0).

The definition of A069966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069966.P7796171943559667650

`∑{digits}[n, #]^6-∑{digits}[n, #^6]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069966

/-- `∑{digits}[n, #]^6-∑{digits}[n, #^6]` -/
def P7796171943559667650.Spec : Prop :=
  ∀ n, P7796171943559667650.a n = A069966 n

theorem P7796171943559667650.correct : P7796171943559667650.Spec := by
  intro n
  simp only [A069966]

end A069966

/-! ## A069966.P4800589186184872506

`∑{digits}[n, #]^6-A055015(n)`
-/

namespace A069966.P4800589186184872506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 6 : ℕ) : ℤ) - A055015 n

end

end A069966.P4800589186184872506

namespace A069966

/-- `∑{digits}[n, #]^6-A055015(n)` -/
def P4800589186184872506.Spec : Prop :=
  ∀ n, P4800589186184872506.a n = A069966 n

end A069966

/-! ## A069966.P12399965496346411539

`A118880(n)²-∑{digits}[n, #^6]`
-/

namespace A069966.P12399965496346411539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n ^ 2 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 6).sum : ℕ) : ℤ)

end

end A069966.P12399965496346411539

namespace A069966

/-- `A118880(n)²-∑{digits}[n, #^6]` -/
def P12399965496346411539.Spec : Prop :=
  ∀ n, P12399965496346411539.a n = A069966 n

end A069966

/-! ## A069966.P2233001211561797932

`A001014(∑{digits}[n, #])-∑{digits}[n, #^6]`
-/

namespace A069966.P2233001211561797932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 6).sum : ℕ) : ℤ)

end

end A069966.P2233001211561797932

namespace A069966

/-- `A001014(∑{digits}[n, #])-∑{digits}[n, #^6]` -/
def P2233001211561797932.Spec : Prop :=
  ∀ n, P2233001211561797932.a n = A069966 n

end A069966

/-! ## A069966.P9376683036237716618

`A118880(n)²-A055015(n)`
-/

namespace A069966.P9376683036237716618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n ^ 2 - A055015 n

end

end A069966.P9376683036237716618

namespace A069966

/-- `A118880(n)²-A055015(n)` -/
def P9376683036237716618.Spec : Prop :=
  ∀ n, P9376683036237716618.a n = A069966 n

end A069966

/-!
# A069972: a(n) = Sum_{d|2*n,d+1|2*n} d.

The programs for A069972, the canonical program `A069972.P10372143076871340489` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069972 has offset 1).

The definition of A069972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069972.P8321286908378590232

`∑{d}[n+1, A127648(#-1)]`
-/

namespace A069972.P8321286908378590232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127648 (d - 1)

end

end A069972.P8321286908378590232

namespace A069972

/-- `∑{d}[n+1, A127648(#-1)]` -/
def P8321286908378590232.Spec : Prop :=
  ∀ n, P8321286908378590232.a n = A069972 (n + 1)

end A069972

/-! ## A069972.P10372143076871340489

`∑{d}[n+1, A004524(A198954(#))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069972

/-- `∑{d}[n+1, A004524(A198954(#))]` -/
def P10372143076871340489.Spec : Prop :=
  ∀ n, P10372143076871340489.a n = A069972 (n + 1)

theorem P10372143076871340489.correct : P10372143076871340489.Spec := by
  intro n
  simp only [A069972, Nat.add_sub_cancel]

end A069972

/-! ## A069972.P17550485305692193800

`∑{d}[n+1, A130296(#+1)-1]`
-/

namespace A069972.P17550485305692193800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A130296 (d + 1) - 1)

end

end A069972.P17550485305692193800

namespace A069972

/-- `∑{d}[n+1, A130296(#+1)-1]` -/
def P17550485305692193800.Spec : Prop :=
  ∀ n, P17550485305692193800.a n = A069972 (n + 1)

end A069972

/-! ## A069972.P3292347590354714595

`∑{d}[n+1, A134402(A061579(#))]`
-/

namespace A069972.P3292347590354714595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A134402 (A061579 d).toNat

end

end A069972.P3292347590354714595

namespace A069972

/-- `∑{d}[n+1, A134402(A061579(#))]` -/
def P3292347590354714595.Spec : Prop :=
  ∀ n, P3292347590354714595.a n = A069972 (n + 1)

end A069972

/-! ## A069972.P9552134784505442866

`∑{d}[n+1, A145677(A014132(#))]`
-/

namespace A069972.P9552134784505442866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145677 (A014132 d).toNat

end

end A069972.P9552134784505442866

namespace A069972

/-- `∑{d}[n+1, A145677(A014132(#))]` -/
def P9552134784505442866.Spec : Prop :=
  ∀ n, P9552134784505442866.a n = A069972 (n + 1)

end A069972

/-! ## A069972.P14383640088190360625

`∑{d}[n+1, A037213(A001614(#))]`
-/

namespace A069972.P14383640088190360625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 (A001614 d).toNat

end

end A069972.P14383640088190360625

namespace A069972

/-- `∑{d}[n+1, A037213(A001614(#))]` -/
def P14383640088190360625.Spec : Prop :=
  ∀ n, P14383640088190360625.a n = A069972 (n + 1)

end A069972

/-! ## A069972.P9160496911427376567

`∑{d}[n+1, A037213(A004201(#))]`
-/

namespace A069972.P9160496911427376567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 (A004201 d).toNat

end

end A069972.P9160496911427376567

namespace A069972

/-- `∑{d}[n+1, A037213(A004201(#))]` -/
def P9160496911427376567.Spec : Prop :=
  ∀ n, P9160496911427376567.a n = A069972 (n + 1)

end A069972

/-! ## A069972.P9970693462330464960

`∑{d}[n+1, A037213(A056942(#))]`
-/

namespace A069972.P9970693462330464960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A037213 (A056942 d).toNat

end

end A069972.P9970693462330464960

namespace A069972

/-- `∑{d}[n+1, A037213(A056942(#))]` -/
def P9970693462330464960.Spec : Prop :=
  ∀ n, P9970693462330464960.a n = A069972 (n + 1)

end A069972

/-! ## A069972.P16779938834117519017

`∑{d}[n+1, A007814(A099627(#))]`
-/

namespace A069972.P16779938834117519017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007814 (A099627 d).toNat

end

end A069972.P16779938834117519017

namespace A069972

/-- `∑{d}[n+1, A007814(A099627(#))]` -/
def P16779938834117519017.Spec : Prop :=
  ∀ n, P16779938834117519017.a n = A069972 (n + 1)

end A069972

/-!
# A069973: (Sum of digits of n)^3 - (sum of digits of n^3).

The programs for A069973, the canonical program `A069973.P17095827463937448875` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069973 has offset 0).

The definition of A069973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069973.P17095827463937448875

`∑{digits}[n, #]^3-∑{digits}[n^3, #]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069973

/-- `∑{digits}[n, #]^3-∑{digits}[n^3, #]` -/
def P17095827463937448875.Spec : Prop :=
  ∀ n, P17095827463937448875.a n = A069973 n

theorem P17095827463937448875.correct : P17095827463937448875.Spec := by
  intro n
  simp only [A069973]

end A069973

/-! ## A069973.P16049833420672381320

`∑{digits}[n, #]^3-A004164(n)`
-/

namespace A069973.P16049833420672381320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 3 : ℕ) : ℤ) - A004164 n

end

end A069973.P16049833420672381320

namespace A069973

/-- `∑{digits}[n, #]^3-A004164(n)` -/
def P16049833420672381320.Spec : Prop :=
  ∀ n, P16049833420672381320.a n = A069973 n

end A069973

/-! ## A069973.P1281772671226549229

`A118880(n)-∑{digits}[n^3, #]`
-/

namespace A069973.P1281772671226549229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069973.P1281772671226549229

namespace A069973

/-- `A118880(n)-∑{digits}[n^3, #]` -/
def P1281772671226549229.Spec : Prop :=
  ∀ n, P1281772671226549229.a n = A069973 n

end A069973

/-! ## A069973.P15660403192747045202

`A007953(n)^3-∑{digits}[n^3, #]`
-/

namespace A069973.P15660403192747045202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069973.P15660403192747045202

namespace A069973

/-- `A007953(n)^3-∑{digits}[n^3, #]` -/
def P15660403192747045202.Spec : Prop :=
  ∀ n, P15660403192747045202.a n = A069973 n

end A069973

/-! ## A069973.P3316351731408837142

`A000578(∑{digits}[n, #])-∑{digits}[n^3, #]`
-/

namespace A069973.P3316351731408837142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069973.P3316351731408837142

namespace A069973

/-- `A000578(∑{digits}[n, #])-∑{digits}[n^3, #]` -/
def P3316351731408837142.Spec : Prop :=
  ∀ n, P3316351731408837142.a n = A069973 n

end A069973

/-! ## A069973.P5503019492873981238

`A118880(n)-A004164(n)`
-/

namespace A069973.P5503019492873981238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n - A004164 n

end

end A069973.P5503019492873981238

namespace A069973

/-- `A118880(n)-A004164(n)` -/
def P5503019492873981238.Spec : Prop :=
  ∀ n, P5503019492873981238.a n = A069973 n

end A069973

/-! ## A069973.P1603761065469721209

`A007953(n)^3-A004164(n)`
-/

namespace A069973.P1603761065469721209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 3 - A004164 n

end

end A069973.P1603761065469721209

namespace A069973

/-- `A007953(n)^3-A004164(n)` -/
def P1603761065469721209.Spec : Prop :=
  ∀ n, P1603761065469721209.a n = A069973 n

end A069973

/-! ## A069973.P10952948365213471510

`A000578(A007953(n))-A004164(n)`
-/

namespace A069973.P10952948365213471510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A007953 n).toNat - A004164 n

end

end A069973.P10952948365213471510

namespace A069973

/-- `A000578(A007953(n))-A004164(n)` -/
def P10952948365213471510.Spec : Prop :=
  ∀ n, P10952948365213471510.a n = A069973 n

end A069973

/-!
# A069975: a(n) = n*(16*n^2 - 1).

The programs for A069975, the canonical program `A069975.P15256637362710662577` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069975 has offset 1).

The definition of A069975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(16*(n+1)²-1)` (program `A069975.P15256637362710662577`, by `A069975.P15256637362710662577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069975.P15256637362710662577

`(n+1)*(16*(n+1)²-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069975

/-- `(n+1)*(16*(n+1)²-1)` -/
def P15256637362710662577.Spec : Prop :=
  ∀ n, P15256637362710662577.a n = A069975 (n + 1)

theorem P15256637362710662577.correct : P15256637362710662577.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel]

end A069975

/-! ## A069975.P2803287335855330492

`A069140(n+1)/4`
-/

namespace A069975.P2803287335855330492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069140 (n + 1) : ℚ) / 4

end

end A069975.P2803287335855330492

namespace A069975

/-- `A069140(n+1)/4` -/
def P2803287335855330492.Spec : Prop :=
  ∀ n, P2803287335855330492.a n = (A069975 (n + 1) : ℚ)

theorem P2803287335855330492.correct : P2803287335855330492.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P2803287335855330492.a, A069975.P15256637362710662577.a, A069140, A069140.P12807573910600068293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P9279110704149261359

`lcm(n+1, A141759(n))`
-/

namespace A069975.P9279110704149261359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A141759 n)

end

end A069975.P9279110704149261359

namespace A069975

/-- `lcm(n+1, A141759(n))` -/
def P9279110704149261359.Spec : Prop :=
  ∀ n, (P9279110704149261359.a n : ℤ) = A069975 (n + 1)

end A069975

/-! ## A069975.P11047844746406981601

`Δ[A046092(n)²]-(n+1)`
-/

namespace A069975.P11047844746406981601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A069975.P11047844746406981601

namespace A069975

/-- `Δ[A046092(n)²]-(n+1)` -/
def P11047844746406981601.Spec : Prop :=
  ∀ n, P11047844746406981601.a n = A069975 (n + 1)

theorem P11047844746406981601.correct : P11047844746406981601.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P11047844746406981601.f1, A069975.P11047844746406981601.a, A069975.P15256637362710662577.a, A046092, A046092.P16411658895297056450.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P7250442796571865809

`2*A016743(n+1)-(n+1)`
-/

namespace A069975.P7250442796571865809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016743 (n + 1) - (n + 1 : ℤ)

end

end A069975.P7250442796571865809

namespace A069975

/-- `2*A016743(n+1)-(n+1)` -/
def P7250442796571865809.Spec : Prop :=
  ∀ n, P7250442796571865809.a n = A069975 (n + 1)

theorem P7250442796571865809.correct : P7250442796571865809.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P7250442796571865809.a, A069975.P15256637362710662577.a, A016743, A016743.P7621108068918767533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P13677104937902191749

`A016744(n+1)/(n+1)-(n+1)`
-/

namespace A069975.P13677104937902191749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016744 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A069975.P13677104937902191749

namespace A069975

/-- `A016744(n+1)/(n+1)-(n+1)` -/
def P13677104937902191749.Spec : Prop :=
  ∀ n, P13677104937902191749.a n = (A069975 (n + 1) : ℚ)

theorem P13677104937902191749.correct : P13677104937902191749.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P13677104937902191749.a, A069975.P15256637362710662577.a, A016744, A016744.P3860911854705044273.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P15107653839246411627

`A181773(n+1)+A180579(n+1)`
-/

namespace A069975.P15107653839246411627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181773 (n + 1) + A180579 (n + 1)

end

end A069975.P15107653839246411627

namespace A069975

/-- `A181773(n+1)+A180579(n+1)` -/
def P15107653839246411627.Spec : Prop :=
  ∀ n, P15107653839246411627.a n = A069975 (n + 1)

theorem P15107653839246411627.correct : P15107653839246411627.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P15107653839246411627.a, A069975.P15256637362710662577.a, A180579, A180579.P6529813337407869945.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P5339157512663678034

`Δ[A060300(n)]-(n+1)`
-/

namespace A069975.P5339157512663678034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A069975.P5339157512663678034

namespace A069975

/-- `Δ[A060300(n)]-(n+1)` -/
def P5339157512663678034.Spec : Prop :=
  ∀ n, P5339157512663678034.a n = A069975 (n + 1)

theorem P5339157512663678034.correct : P5339157512663678034.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P5339157512663678034.f1, A069975.P5339157512663678034.a, A069975.P15256637362710662577.a, A060300, A060300.P1314956441552645560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P17329607717578801696

`Δ[A046092(n)²-∑[n]]`
-/

namespace A069975.P17329607717578801696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n ^ 2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069975.P17329607717578801696

namespace A069975

/-- `Δ[A046092(n)²-∑[n]]` -/
def P17329607717578801696.Spec : Prop :=
  ∀ n, P17329607717578801696.a n = A069975 (n + 1)

end A069975

/-! ## A069975.P11204992011347371912

`3*A267031(n+1)/2`
-/

namespace A069975.P11204992011347371912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A267031 (n + 1) : ℚ) / 2

end

end A069975.P11204992011347371912

namespace A069975

/-- `3*A267031(n+1)/2` -/
def P11204992011347371912.Spec : Prop :=
  ∀ n, P11204992011347371912.a n = (A069975 (n + 1) : ℚ)

end A069975

/-! ## A069975.P16475839904650950639

`A193608(Δ[n²])+n`
-/

namespace A069975.P16475839904650950639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193608 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A069975.P16475839904650950639

namespace A069975

/-- `A193608(Δ[n²])+n` -/
def P16475839904650950639.Spec : Prop :=
  ∀ n, P16475839904650950639.a n = A069975 (n + 1)

end A069975

/-! ## A069975.P12978109137054242861

`A069072(2*n+1)/4`
-/

namespace A069975.P12978109137054242861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069072 (2 * n + 1) : ℚ) / 4

end

end A069975.P12978109137054242861

namespace A069975

/-- `A069072(2*n+1)/4` -/
def P12978109137054242861.Spec : Prop :=
  ∀ n, P12978109137054242861.a n = (A069975 (n + 1) : ℚ)

theorem P12978109137054242861.correct : P12978109137054242861.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P12978109137054242861.a, A069975.P15256637362710662577.a, A069072, A069072.P4524255164454282767.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P15724984176614110981

`A007588(2*(n+1))+n+1`
-/

namespace A069975.P15724984176614110981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A069975.P15724984176614110981

namespace A069975

/-- `A007588(2*(n+1))+n+1` -/
def P15724984176614110981.Spec : Prop :=
  ∀ n, P15724984176614110981.a n = A069975 (n + 1)

theorem P15724984176614110981.correct : P15724984176614110981.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P15724984176614110981.a, A069975.P15256637362710662577.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P15810264218284193553

`A033431(2*(n+1))-(n+1)`
-/

namespace A069975.P15810264218284193553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A069975.P15810264218284193553

namespace A069975

/-- `A033431(2*(n+1))-(n+1)` -/
def P15810264218284193553.Spec : Prop :=
  ∀ n, P15810264218284193553.a n = A069975 (n + 1)

theorem P15810264218284193553.correct : P15810264218284193553.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P15810264218284193553.a, A069975.P15256637362710662577.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P1763664985348513553

`A192846(2*n+1)-(n-1)`
-/

namespace A069975.P1763664985348513553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192846 (2 * n + 1) - ((n : ℤ) - 1)

end

end A069975.P1763664985348513553

namespace A069975

/-- `A192846(2*n+1)-(n-1)` -/
def P1763664985348513553.Spec : Prop :=
  ∀ n, P1763664985348513553.a n = A069975 (n + 1)

end A069975

/-! ## A069975.P6664572231587075352

`A035328(2*(n+1))/2`
-/

namespace A069975.P6664572231587075352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035328 (2 * (n + 1)) : ℚ) / 2

end

end A069975.P6664572231587075352

namespace A069975

/-- `A035328(2*(n+1))/2` -/
def P6664572231587075352.Spec : Prop :=
  ∀ n, P6664572231587075352.a n = (A069975 (n + 1) : ℚ)

theorem P6664572231587075352.correct : P6664572231587075352.Spec := by
  intro n
  simp only [A069975, Nat.add_sub_cancel, A069975.P6664572231587075352.a, A069975.P15256637362710662577.a, A035328, A035328.P8981633171215695012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069975

/-! ## A069975.P9842185091899182150

`A241269(4*n+2)`
-/

namespace A069975.P9842185091899182150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241269 (4 * n + 2)

end

end A069975.P9842185091899182150

namespace A069975

/-- `A241269(4*n+2)` -/
def P9842185091899182150.Spec : Prop :=
  ∀ n, P9842185091899182150.a n = A069975 (n + 1)

end A069975

/-! ## A069975.P17507387757577074760

`A276670(4*(n+1))`
-/

namespace A069975.P17507387757577074760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276670 (4 * (n + 1))

end

end A069975.P17507387757577074760

namespace A069975

/-- `A276670(4*(n+1))` -/
def P17507387757577074760.Spec : Prop :=
  ∀ n, P17507387757577074760.a n = A069975 (n + 1)

end A069975

/-! ## A069975.P4331283667431796424

`A390343(4*(n+1))`
-/

namespace A069975.P4331283667431796424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390343 (4 * (n + 1))

end

end A069975.P4331283667431796424

namespace A069975

/-- `A390343(4*(n+1))` -/
def P4331283667431796424.Spec : Prop :=
  ∀ n, P4331283667431796424.a n = A069975 (n + 1)

end A069975

/-! ## A069975.P10490109077221805157

`A011886(A004766(n+1))`
-/

namespace A069975.P10490109077221805157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (A004766 (n + 1)).toNat

end

end A069975.P10490109077221805157

namespace A069975

/-- `A011886(A004766(n+1))` -/
def P10490109077221805157.Spec : Prop :=
  ∀ n, P10490109077221805157.a n = A069975 (n + 1)

end A069975

/-!
# A069976: Interior angle of a regular polygon of n sides, rounded to nearest integer.

The programs for A069976, the canonical program `A069976.P11019580135875034032` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069976 has offset 3).

The definition of A069976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069976.P11019580135875034032

`round((n+1)*180/(n+3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069976

/-- `round((n+1)*180/(n+3))` -/
def P11019580135875034032.Spec : Prop :=
  ∀ n, P11019580135875034032.a n = A069976 (n + 3)

theorem P11019580135875034032.correct : P11019580135875034032.Spec := by
  intro n
  simp only [A069976, Nat.add_sub_cancel]

end A069976

/-!
# A069977: Numbers k such that k and k+2 are squarefree.

The programs for A069977, the canonical program `A069977.P573260272244437111` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069977 has offset 1).

The definition of A069977 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069977.P6814037399646038294

`A067874(n+1)-1`
-/

namespace A069977.P6814037399646038294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - 1

end

end A069977.P6814037399646038294

namespace A069977

/-- `A067874(n+1)-1` -/
def P6814037399646038294.Spec : Prop :=
  ∀ n, P6814037399646038294.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P573260272244437111

`eq[1, A379971(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069977

/-- `eq[1, A379971(n+1)]` -/
def P573260272244437111.Spec : Prop :=
  ∀ n, (P573260272244437111.a n : ℤ) = A069977 (n + 1)

theorem P573260272244437111.correct : P573260272244437111.Spec := by
  intro n
  simp only [A069977, Nat.add_sub_cancel]

end A069977

/-! ## A069977.P5204276127750803957

`2*A272799(n+1)-1`
-/

namespace A069977.P5204276127750803957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A272799 (n + 1) - 1

end

end A069977.P5204276127750803957

namespace A069977

/-- `2*A272799(n+1)-1` -/
def P5204276127750803957.Spec : Prop :=
  ∀ n, P5204276127750803957.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P10732519520562240746

`eq[A105570(2*(n+2)), A105570(n)]`
-/

namespace A069977.P10732519520562240746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069977.P10732519520562240746

namespace A069977

/-- `eq[A105570(2*(n+2)), A105570(n)]` -/
def P10732519520562240746.Spec : Prop :=
  ∀ n, (P10732519520562240746.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P7498652185824587997

`record[A007913(n+1)*A008966(n+3)]`
-/

namespace A069977.P7498652185824587997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A008966 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069977.P7498652185824587997

namespace A069977

/-- `record[A007913(n+1)*A008966(n+3)]` -/
def P7498652185824587997.Spec : Prop :=
  ∀ n, P7498652185824587997.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P6984396781478535327

`record[A007947(n+1)*A008966(n+3)]`
-/

namespace A069977.P6984396781478535327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008966 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069977.P6984396781478535327

namespace A069977

/-- `record[A007947(n+1)*A008966(n+3)]` -/
def P6984396781478535327.Spec : Prop :=
  ∀ n, P6984396781478535327.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P16733480746586635087

`record[A007947(n+1)*A323239(n+3)]`
-/

namespace A069977.P16733480746586635087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A323239 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069977.P16733480746586635087

namespace A069977

/-- `record[A007947(n+1)*A323239(n+3)]` -/
def P16733480746586635087.Spec : Prop :=
  ∀ n, P16733480746586635087.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P17678931522839877911

`record[A007913(n+1)%A007913(n+3)]`
-/

namespace A069977.P17678931522839877911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (n + 1)) (A007913 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069977.P17678931522839877911

namespace A069977

/-- `record[A007913(n+1)%A007913(n+3)]` -/
def P17678931522839877911.Spec : Prop :=
  ∀ n, P17678931522839877911.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P5816032823001853974

`record[A007947(n+1)%A007947(n+3)]`
-/

namespace A069977.P5816032823001853974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007947 (n + 1)) (A007947 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069977.P5816032823001853974

namespace A069977

/-- `record[A007947(n+1)%A007947(n+3)]` -/
def P5816032823001853974.Spec : Prop :=
  ∀ n, P5816032823001853974.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P14643151073169246983

`record[A083346(n+1)%A083346(n+3)]`
-/

namespace A069977.P14643151073169246983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083346 (n + 1)) (A083346 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069977.P14643151073169246983

namespace A069977

/-- `record[A083346(n+1)%A083346(n+3)]` -/
def P14643151073169246983.Spec : Prop :=
  ∀ n, P14643151073169246983.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P10251571531458251050

`lt[n, A007913(A007947(n+1)+2)]+1`
-/

namespace A069977.P10251571531458251050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007947 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A069977.P10251571531458251050

namespace A069977

/-- `lt[n, A007913(A007947(n+1)+2)]+1` -/
def P10251571531458251050.Spec : Prop :=
  ∀ n, (P10251571531458251050.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P5535684797417791494

`eq[A071327(n+1), A071327(n+3)]+1`
-/

namespace A069977.P5535684797417791494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071327 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A069977.P5535684797417791494

namespace A069977

/-- `eq[A071327(n+1), A071327(n+3)]+1` -/
def P5535684797417791494.Spec : Prop :=
  ∀ n, (P5535684797417791494.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P6454246252695997316

`∩[A005117(n+1)-2, A005117(n+1)]`
-/

namespace A069977.P6454246252695997316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069977.P6454246252695997316

namespace A069977

/-- `∩[A005117(n+1)-2, A005117(n+1)]` -/
def P6454246252695997316.Spec : Prop :=
  ∀ n, (P6454246252695997316.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P1800394320044269578

`∩[A056911(n+1)-2, A056911(n+1)]`
-/

namespace A069977.P1800394320044269578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069977.P1800394320044269578

namespace A069977

/-- `∩[A056911(n+1)-2, A056911(n+1)]` -/
def P1800394320044269578.Spec : Prop :=
  ∀ n, (P1800394320044269578.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P12249976929229703398

`A004273(A272799(n+1))`
-/

namespace A069977.P12249976929229703398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A272799 (n + 1)).toNat

end

end A069977.P12249976929229703398

namespace A069977

/-- `A004273(A272799(n+1))` -/
def P12249976929229703398.Spec : Prop :=
  ∀ n, P12249976929229703398.a n = A069977 (n + 1)

end A069977

/-! ## A069977.P9249237067140291644

`eq[A079115(n+1), A323239(n)]`
-/

namespace A069977.P9249237067140291644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069977.P9249237067140291644

namespace A069977

/-- `eq[A079115(n+1), A323239(n)]` -/
def P9249237067140291644.Spec : Prop :=
  ∀ n, (P9249237067140291644.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P15563857502069368698

`eq[A323239(n), A344756(n+2)]`
-/

namespace A069977.P15563857502069368698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344756 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069977.P15563857502069368698

namespace A069977

/-- `eq[A323239(n), A344756(n+2)]` -/
def P15563857502069368698.Spec : Prop :=
  ∀ n, (P15563857502069368698.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P17972297847706296732

`record[∏{p}[2-∏{p}[n, #], #]]`
-/

namespace A069977.P17972297847706296732
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069977.P17972297847706296732

namespace A069977

/-- `record[∏{p}[2-∏{p}[n, #], #]]` -/
def P17972297847706296732.Spec : Prop :=
  ∀ n, (P17972297847706296732.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P486222106053724631

`eq[1, A354713(n+2)]+1`
-/

namespace A069977.P486222106053724631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354713 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A069977.P486222106053724631

namespace A069977

/-- `eq[1, A354713(n+2)]+1` -/
def P486222106053724631.Spec : Prop :=
  ∀ n, (P486222106053724631.a n : ℤ) = A069977 (n + 1)

end A069977

/-! ## A069977.P15171609251798563390

`eq[n+1, A085050(n+1)]`
-/

namespace A069977.P15171609251798563390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085050 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069977.P15171609251798563390

namespace A069977

/-- `eq[n+1, A085050(n+1)]` -/
def P15171609251798563390.Spec : Prop :=
  ∀ n, (P15171609251798563390.a n : ℤ) = A069977 (n + 1)

end A069977

/-!
# A069978: (Sum of digits of n)^4 - (sum of digits of n^4).

The programs for A069978, the canonical program `A069978.P5279986127364657516` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069978 has offset 0).

The definition of A069978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069978.P5279986127364657516

`∑{digits}[n, #]²²-∑{digits}[n^4, #]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069978

/-- `∑{digits}[n, #]²²-∑{digits}[n^4, #]` -/
def P5279986127364657516.Spec : Prop :=
  ∀ n, P5279986127364657516.a n = A069978 n

theorem P5279986127364657516.correct : P5279986127364657516.Spec := by
  intro n
  simp only [A069978]

end A069978

/-! ## A069978.P17343968981644612908

`∑{digits}[n, #]²²-A055565(n)`
-/

namespace A069978.P17343968981644612908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2) ^ 2 : ℕ) : ℤ) - A055565 n

end

end A069978.P17343968981644612908

namespace A069978

/-- `∑{digits}[n, #]²²-A055565(n)` -/
def P17343968981644612908.Spec : Prop :=
  ∀ n, P17343968981644612908.a n = A069978 n

end A069978

/-! ## A069978.P5994652784349796502

`A118881(n)²-∑{digits}[n^4, #]`
-/

namespace A069978.P5994652784349796502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n ^ 2 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069978.P5994652784349796502

namespace A069978

/-- `A118881(n)²-∑{digits}[n^4, #]` -/
def P5994652784349796502.Spec : Prop :=
  ∀ n, P5994652784349796502.a n = A069978 n

end A069978

/-! ## A069978.P2628352243526882720

`A000583(∑{digits}[n, #])-∑{digits}[n^4, #]`
-/

namespace A069978.P2628352243526882720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069978.P2628352243526882720

namespace A069978

/-- `A000583(∑{digits}[n, #])-∑{digits}[n^4, #]` -/
def P2628352243526882720.Spec : Prop :=
  ∀ n, P2628352243526882720.a n = A069978 n

theorem P2628352243526882720.correct : P2628352243526882720.Spec := by
  intro n
  simp only [A069978, Nat.add_sub_cancel, A069978.P2628352243526882720.f1, A069978.P2628352243526882720.f2, A069978.P2628352243526882720.a, A069978.P5279986127364657516.f1, A069978.P5279986127364657516.f2, A069978.P5279986127364657516.a, A000583, A000583.P14547500281748394449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069978

/-! ## A069978.P1170752729557177434

`A007953(n)²²-A055565(n)`
-/

namespace A069978.P1170752729557177434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007953 n ^ 2) ^ 2 - A055565 n

end

end A069978.P1170752729557177434

namespace A069978

/-- `A007953(n)²²-A055565(n)` -/
def P1170752729557177434.Spec : Prop :=
  ∀ n, P1170752729557177434.a n = A069978 n

end A069978

/-! ## A069978.P12354890402072657145

`∑{digits}[n, #]²²-A004159(n²)`
-/

namespace A069978.P12354890402072657145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 2) ^ 2 : ℕ) : ℤ) - A004159 (n ^ 2)

end

end A069978.P12354890402072657145

namespace A069978

/-- `∑{digits}[n, #]²²-A004159(n²)` -/
def P12354890402072657145.Spec : Prop :=
  ∀ n, P12354890402072657145.a n = A069978 n

end A069978

/-!
# A069979: (Sum of digits of n)^5 - (sum of digits of n^5).

The programs for A069979, the canonical program `A069979.P15807187482805731575` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069979 has offset 0).

The definition of A069979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069979.P15807187482805731575

`A007953(n)^5-A055566(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069979

/-- `A007953(n)^5-A055566(n)` -/
def P15807187482805731575.Spec : Prop :=
  ∀ n, P15807187482805731575.a n = A069979 n

theorem P15807187482805731575.correct : P15807187482805731575.Spec := by
  intro n
  simp only [A069979]

end A069979

/-! ## A069979.P6068720193189315152

`A000584(A007953(n))-A055566(n)`
-/

namespace A069979.P6068720193189315152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A007953 n).toNat - A055566 n

end

end A069979.P6068720193189315152

namespace A069979

/-- `A000584(A007953(n))-A055566(n)` -/
def P6068720193189315152.Spec : Prop :=
  ∀ n, P6068720193189315152.a n = A069979 n

end A069979

/-! ## A069979.P15872578322274993910

`A118880(n)*A118881(n)-A055566(n)`
-/

namespace A069979.P15872578322274993910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n * A118881 n - A055566 n

end

end A069979.P15872578322274993910

namespace A069979

/-- `A118880(n)*A118881(n)-A055566(n)` -/
def P15872578322274993910.Spec : Prop :=
  ∀ n, P15872578322274993910.a n = A069979 n

theorem P15872578322274993910.correct : P15872578322274993910.Spec := by
  intro n
  simp only [A069979, Nat.add_sub_cancel, A069979.P15872578322274993910.a, A069979.P15807187482805731575.a, A007953, A007953.P3472751987379697826.a, A055566, A055566.P9723742412868358255.f1, A055566.P9723742412868358255.a, A118880, A118880.P13099714679656599745.a, A118881, A118881.P8524186405013838056.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069979

/-!
# A069980: (Sum of digits of n)^6 - (sum of digits of n^6).

The programs for A069980, the canonical program `A069980.P18289794186360423708` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069980 has offset 0).

The definition of A069980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069980.P18289794186360423708

`∑{digits}[n, #]^6-∑{digits}[n^6, #]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069980

/-- `∑{digits}[n, #]^6-∑{digits}[n^6, #]` -/
def P18289794186360423708.Spec : Prop :=
  ∀ n, P18289794186360423708.a n = A069980 n

theorem P18289794186360423708.correct : P18289794186360423708.Spec := by
  intro n
  simp only [A069980]

end A069980

/-! ## A069980.P2328092061516460522

`∑{digits}[n, #]^6-A055567(n)`
-/

namespace A069980.P2328092061516460522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ 6 : ℕ) : ℤ) - A055567 n

end

end A069980.P2328092061516460522

namespace A069980

/-- `∑{digits}[n, #]^6-A055567(n)` -/
def P2328092061516460522.Spec : Prop :=
  ∀ n, P2328092061516460522.a n = A069980 n

end A069980

/-! ## A069980.P2843227413173863264

`A118880(n)²-∑{digits}[n^6, #]`
-/

namespace A069980.P2843227413173863264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n ^ 2 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A069980.P2843227413173863264

namespace A069980

/-- `A118880(n)²-∑{digits}[n^6, #]` -/
def P2843227413173863264.Spec : Prop :=
  ∀ n, P2843227413173863264.a n = A069980 n

end A069980

/-! ## A069980.P16453728766156383475

`A118880(n)²-A055567(n)`
-/

namespace A069980.P16453728766156383475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n ^ 2 - A055567 n

end

end A069980.P16453728766156383475

namespace A069980

/-- `A118880(n)²-A055567(n)` -/
def P16453728766156383475.Spec : Prop :=
  ∀ n, P16453728766156383475.a n = A069980 n

end A069980

/-! ## A069980.P15177465224491715355

`A007953(n)^6-A055567(n)`
-/

namespace A069980.P15177465224491715355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 6 - A055567 n

end

end A069980.P15177465224491715355

namespace A069980

/-- `A007953(n)^6-A055567(n)` -/
def P15177465224491715355.Spec : Prop :=
  ∀ n, P15177465224491715355.a n = A069980 n

end A069980

/-!
# A069981: Hermite's problem: number of positive integral solutions to x + y + z = n subject to x <= y + z, y <= z + x and z <= x + y.

The programs for A069981, the canonical program `A069981.P10448739502675170939` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069981 has offset 0).

The definition of A069981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069981.P10448739502675170939

`∑[n-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069981

/-- `∑[n-a(n-1)]-a(n-1)` -/
def P10448739502675170939.Spec : Prop :=
  ∀ n, P10448739502675170939.a n = A069981 n

theorem P10448739502675170939.correct : P10448739502675170939.Spec := by
  intro n
  simp only [A069981]

end A069981

/-! ## A069981.P14114870772527230876

`Δ[a(n-2)-1+n]+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A069981.P14114870772527230876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 2) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A069981.P14114870772527230876

namespace A069981

/-- `Δ[a(n-2)-1+n]+a(n-2)` -/
def P14114870772527230876.Spec : Prop :=
  ∀ n, P14114870772527230876.a n = A069981 n

end A069981

/-! ## A069981.P7010072099600707819

`a(n-2)-Δ[a(n-2)-(n-1)]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A069981.P7010072099600707819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  f1 (n - 2) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A069981.P7010072099600707819

namespace A069981

/-- `a(n-2)-Δ[a(n-2)-(n-1)]` -/
def P7010072099600707819.Spec : Prop :=
  ∀ n, P7010072099600707819.a n = A069981 n

end A069981

/-! ## A069981.P17799955813591554319

`A028242(n)+a(n-2)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A069981.P17799955813591554319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A028242 n + a (n - 2)

end

end A069981.P17799955813591554319

namespace A069981

/-- `A028242(n)+a(n-2)` -/
def P17799955813591554319.Spec : Prop :=
  ∀ n, P17799955813591554319.a n = A069981 n

end A069981

/-! ## A069981.P10727555963248993278

`∑[A309118(n+1)/2]%∑[n+1]`
-/

namespace A069981.P10727555963248993278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309118 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A069981.P10727555963248993278

namespace A069981

/-- `∑[A309118(n+1)/2]%∑[n+1]` -/
def P10727555963248993278.Spec : Prop :=
  ∀ n, P10727555963248993278.a n = A069981 n

end A069981

/-! ## A069981.P12619004108600638112

`A007318(A055802(n+3))+A055802(n+2)-2`
-/

namespace A069981.P12619004108600638112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A055802 (n + 3)).toNat + (A055802 (n + 2) - 2)

end

end A069981.P12619004108600638112

namespace A069981

/-- `A007318(A055802(n+3))+A055802(n+2)-2` -/
def P12619004108600638112.Spec : Prop :=
  ∀ n, P12619004108600638112.a n = A069981 n

end A069981

/-! ## A069981.P113933110019131467

`A011863(n²+1+n)%A004652(n+1)`
-/

namespace A069981.P113933110019131467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011863 (n ^ 2 + 1 + n)) (A004652 (n + 1))

end

end A069981.P113933110019131467

namespace A069981

/-- `A011863(n²+1+n)%A004652(n+1)` -/
def P113933110019131467.Spec : Prop :=
  ∀ n, P113933110019131467.a n = A069981 n

end A069981

/-!
# A069982: Number of 4-gonal compositions of n into positive parts.

The programs for A069982, there is no canonical definition to state claims against.
-/

/-! ## A069982.P14342174686280929133

`A320847(A098482(n))`
-/

namespace A069982.P14342174686280929133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A098482 n).toNat

end

end A069982.P14342174686280929133

/-! ## A069982.P14342779805104004714

`A236138(A363811(n))`
-/

namespace A069982.P14342779805104004714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236138 (A363811 n).toNat

end

end A069982.P14342779805104004714

/-! ## A069982.P14026255921480549849

`A316893(A057265(n+2))`
-/

namespace A069982.P14026255921480549849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316893 (A057265 (n + 2)).toNat

end

end A069982.P14026255921480549849

/-! ## A069982.P16740072882259384634

`∑[A375580(∑[A349299(n)])]`
-/

namespace A069982.P16740072882259384634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349299 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375580 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069982.P16740072882259384634

/-! ## A069982.P5983980936681917416

`∑[A241464(n+2)%A278818(n)]`
-/

namespace A069982.P5983980936681917416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241464 (n + 2)) (A278818 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069982.P5983980936681917416

/-!
# A069983: Number of 5-gonal compositions of n into positive parts.

The programs for A069983, there is no canonical definition to state claims against.
-/

/-! ## A069983.P15991413844648180604

`A005676(n)-A275216(A023110(n+1))`
-/

namespace A069983.P15991413844648180604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005676 n - A275216 (A023110 (n + 1)).toNat

end

end A069983.P15991413844648180604

/-! ## A069983.P7276513090341292765

`∑[10*A269065(a(n-1)+4*a(n-2))]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=4`
-/

namespace A069983.P7276513090341292765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0, 1, 4] fun n f1 =>
  10 * A269065 (f1 (n - 1) + 4 * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069983.P7276513090341292765

/-! ## A069983.P4292385141303159404

`A339020(A238431(n))`
-/

namespace A069983.P4292385141303159404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339020 (A238431 n).toNat

end

end A069983.P4292385141303159404

/-! ## A069983.P12024837488427332011

`A339020(A005676(n)+3)`
-/

namespace A069983.P12024837488427332011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339020 (A005676 n + 3).toNat

end

end A069983.P12024837488427332011

/-! ## A069983.P16702304308420312326

`A115981(n)-A338205(A011852(n))`
-/

namespace A069983.P16702304308420312326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 n - A338205 (A011852 n).toNat

end

end A069983.P16702304308420312326

/-!
# A069986: Denominator of b(n) = binomial(2n,n)^3*(42n+5)/2^(12n+4).

The programs for A069986, there is no canonical definition to state claims against.
-/

/-! ## A069986.P4491295263257910827

`2*A241756(2*n+1)`
-/

namespace A069986.P4491295263257910827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241756 (2 * n + 1)

end

end A069986.P4491295263257910827

/-! ## A069986.P4084685435017686651

`A046161(2*n)*A327496(2*n+1)`
-/

namespace A069986.P4084685435017686651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (2 * n) * A327496 (2 * n + 1)

end

end A069986.P4084685435017686651

/-! ## A069986.P1338980929324676472

`A327493(2*n)*A327496(2*n+1)`
-/

namespace A069986.P1338980929324676472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327493 (2 * n) * A327496 (2 * n + 1)

end

end A069986.P1338980929324676472

/-! ## A069986.P7730260923524070741

`(A093581(n+1)/2)²*A093581(n+1)`
-/

namespace A069986.P7730260923524070741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A093581 (n + 1) : ℚ) / 2) ^ 2 * (A093581 (n + 1) : ℚ)

end

end A069986.P7730260923524070741

/-! ## A069986.P514115878619231706

`A101926(2*n+1)²*A046161(2*n)`
-/

namespace A069986.P514115878619231706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101926 (2 * n + 1) ^ 2 * A046161 (2 * n)

end

end A069986.P514115878619231706

/-!
# A069987: Squarefree numbers of form k^2 + 1.

The programs for A069987, the canonical program `A069987.P16382428948986739253` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069987 has offset 1).

The definition of A069987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049533, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069987.P16382428948986739253

`A049533(n+1)²+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069987

/-- `A049533(n+1)²+1` -/
def P16382428948986739253.Spec : Prop :=
  ∀ n, P16382428948986739253.a n = A069987 (n + 1)

theorem P16382428948986739253.correct : P16382428948986739253.Spec := by
  intro n
  simp only [A069987, Nat.add_sub_cancel]

end A069987

/-! ## A069987.P10137676963894938688

`∪[A002496(n+1), A134420(n+1)]`
-/

namespace A069987.P10137676963894938688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069987.P10137676963894938688

namespace A069987

/-- `∪[A002496(n+1), A134420(n+1)]` -/
def P10137676963894938688.Spec : Prop :=
  ∀ n, (P10137676963894938688.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P12409527015603781728

`∪[A134420(n+1), A248742(n+1)]`
-/

namespace A069987.P12409527015603781728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069987.P12409527015603781728

namespace A069987

/-- `∪[A134420(n+1), A248742(n+1)]` -/
def P12409527015603781728.Spec : Prop :=
  ∀ n, (P12409527015603781728.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P8515281178925884151

`record[A059591(n+1)]`
-/

namespace A069987.P8515281178925884151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069987.P8515281178925884151

namespace A069987

/-- `record[A059591(n+1)]` -/
def P8515281178925884151.Spec : Prop :=
  ∀ n, P8515281178925884151.a n = A069987 (n + 1)

end A069987

/-! ## A069987.P15961109755633709812

`A002522(A049533(n+1))`
-/

namespace A069987.P15961109755633709812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A049533 (n + 1)).toNat

end

end A069987.P15961109755633709812

namespace A069987

/-- `A002522(A049533(n+1))` -/
def P15961109755633709812.Spec : Prop :=
  ∀ n, P15961109755633709812.a n = A069987 (n + 1)

end A069987

/-! ## A069987.P6243165582722049302

`eq[A054977(n), A059592(n)]²+1`
-/

namespace A069987.P6243165582722049302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 + 1

end

end A069987.P6243165582722049302

namespace A069987

/-- `eq[A054977(n), A059592(n)]²+1` -/
def P6243165582722049302.Spec : Prop :=
  ∀ n, (P6243165582722049302.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P10382209866339846421

`eq[A057427(n), A059592(n)]²+1`
-/

namespace A069987.P10382209866339846421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 + 1

end

end A069987.P10382209866339846421

namespace A069987

/-- `eq[A057427(n), A059592(n)]²+1` -/
def P10382209866339846421.Spec : Prop :=
  ∀ n, (P10382209866339846421.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P10859901632642554510

`eq[A059592(n), A158388(n)]²+1`
-/

namespace A069987.P10859901632642554510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 + 1

end

end A069987.P10859901632642554510

namespace A069987

/-- `eq[A059592(n), A158388(n)]²+1` -/
def P10859901632642554510.Spec : Prop :=
  ∀ n, (P10859901632642554510.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P11847442118885326145

`A059591(A049533(2*n+1-n))`
-/

namespace A069987.P11847442118885326145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 (A049533 (2 * n + 1 - n)).toNat

end

end A069987.P11847442118885326145

namespace A069987

/-- `A059591(A049533(2*n+1-n))` -/
def P11847442118885326145.Spec : Prop :=
  ∀ n, P11847442118885326145.a n = A069987 (n + 1)

end A069987

/-! ## A069987.P2103962533966974536

`A059591(lt[A000010(n+1)², A059591(n)])`
-/

namespace A069987.P2103962533966974536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059591 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069987.P2103962533966974536

namespace A069987

/-- `A059591(lt[A000010(n+1)², A059591(n)])` -/
def P2103962533966974536.Spec : Prop :=
  ∀ n, P2103962533966974536.a n = A069987 (n + 1)

end A069987

/-! ## A069987.P17222027834781606578

`∩[A078325(n+1), n²+1]`
-/

namespace A069987.P17222027834781606578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069987.P17222027834781606578

namespace A069987

/-- `∩[A078325(n+1), n²+1]` -/
def P17222027834781606578.Spec : Prop :=
  ∀ n, (P17222027834781606578.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P10917451804247608444

`∩[A002522(n), A078325(n+1)]`
-/

namespace A069987.P10917451804247608444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069987.P10917451804247608444

namespace A069987

/-- `∩[A002522(n), A078325(n+1)]` -/
def P10917451804247608444.Spec : Prop :=
  ∀ n, (P10917451804247608444.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P9507084640689652579

`record[A013946(2*(n+1))]`
-/

namespace A069987.P9507084640689652579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013946 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069987.P9507084640689652579

namespace A069987

/-- `record[A013946(2*(n+1))]` -/
def P9507084640689652579.Spec : Prop :=
  ∀ n, P9507084640689652579.a n = A069987 (n + 1)

end A069987

/-! ## A069987.P9304824249424653912

`record[gcd(A117717(2*(n+1)), A259912(2*(n+1)))]`
-/

namespace A069987.P9304824249424653912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A117717 (2 * (n + 1))) (A259912 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069987.P9304824249424653912

namespace A069987

/-- `record[gcd(A117717(2*(n+1)), A259912(2*(n+1)))]` -/
def P9304824249424653912.Spec : Prop :=
  ∀ n, (P9304824249424653912.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P10550821663241305730

`record[A091419(n+1)+1]`
-/

namespace A069987.P10550821663241305730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091419 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069987.P10550821663241305730

namespace A069987

/-- `record[A091419(n+1)+1]` -/
def P10550821663241305730.Spec : Prop :=
  ∀ n, P10550821663241305730.a n = A069987 (n + 1)

end A069987

/-! ## A069987.P6909837983210708019

`record[A091420(n+1)²+1]`
-/

namespace A069987.P6909837983210708019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091420 (n + 1) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069987.P6909837983210708019

namespace A069987

/-- `record[A091420(n+1)²+1]` -/
def P6909837983210708019.Spec : Prop :=
  ∀ n, P6909837983210708019.a n = A069987 (n + 1)

end A069987

/-! ## A069987.P12222608556384739534

`record[∏{p}[(n+1)²+1, #]]`
-/

namespace A069987.P12222608556384739534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069987.P12222608556384739534

namespace A069987

/-- `record[∏{p}[(n+1)²+1, #]]` -/
def P12222608556384739534.Spec : Prop :=
  ∀ n, (P12222608556384739534.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P12137857493084438184

`∩[A078393(n+1), A002522(n)]`
-/

namespace A069987.P12137857493084438184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069987.P12137857493084438184

namespace A069987

/-- `∩[A078393(n+1), A002522(n)]` -/
def P12137857493084438184.Spec : Prop :=
  ∀ n, (P12137857493084438184.a n : ℤ) = A069987 (n + 1)

end A069987

/-! ## A069987.P11844398105628534906

`∩[A078393(n+1), A089653(n+1)]`
-/

namespace A069987.P11844398105628534906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069987.P11844398105628534906

namespace A069987

/-- `∩[A078393(n+1), A089653(n+1)]` -/
def P11844398105628534906.Spec : Prop :=
  ∀ n, (P11844398105628534906.a n : ℤ) = A069987 (n + 1)

end A069987

/-!
# A069988: (-1)^(n+1)/6*sum(k=1,2n+1,C(2n+1,k)*B(k)*3^k) where C(n,k) are the binomial coefficients, B(k) the Bernoulli numbers.

The programs for A069988, there is no canonical definition to state claims against.
-/

/-! ## A069988.P15883340940416754385

`round(A002111(n+1)/6)`
-/

namespace A069988.P15883340940416754385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002111 (n + 1) : ℚ) / 6)

end

end A069988.P15883340940416754385

/-! ## A069988.P1768444784329219241

`round(abs(A083007(A005408(n+1)))/6)`
-/

namespace A069988.P1768444784329219241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|A083007 (A005408 (n + 1)).toNat| : ℚ) / 6)

end

end A069988.P1768444784329219241

/-! ## A069988.P11722564943017524405

`round(record[A157799(n)*A163805(n)]/6)`
-/

namespace A069988.P11722564943017524405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157799 n * A163805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 6)

end

end A069988.P11722564943017524405

/-! ## A069988.P18243330162245963061

`floor((A002111(n+1)-A239374(n+2))/6)+1`
-/

namespace A069988.P18243330162245963061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002111 (n + 1) - A239374 (n + 2) : ℚ) / 6⌋ + 1

end

end A069988.P18243330162245963061

/-!
# A069989: (-1)^(n+1)/2*sum(k=1,2n,C(2n+1,k)*B(k)*4^k) where C(n,k) are the binomial coefficients, B(k) the Bernoulli numbers.

The programs for A069989, there is no canonical definition to state claims against.
-/

/-! ## A069989.P14337617279477152638

`Δ[ceil(∑[A009843(n)/2])]`
-/

namespace A069989.P14337617279477152638
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009843 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069989.P14337617279477152638

/-!
# A069993: a(n) = 2^(2*n+1)*Sum_{k=1..2*n} binomial(2*n+1,k)*Bernoulli(k)/2^k.

The programs for A069993, the canonical program `A069993.P10904131476634752855` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069993 has offset 1).

The definition of A069993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069993.P10904131476634752855

`2*(4^(n+1)-(n+1))-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069993

/-- `2*(4^(n+1)-(n+1))-1` -/
def P10904131476634752855.Spec : Prop :=
  ∀ n, P10904131476634752855.a n = A069993 (n + 1)

theorem P10904131476634752855.correct : P10904131476634752855.Spec := by
  intro n
  simp only [A069993, Nat.add_sub_cancel]

end A069993

/-! ## A069993.P4670668411715715565

`∑[ogf((5-3x+4x^2)/(1-5x+4x^2))]`
-/

namespace A069993.P4670668411715715565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, 4] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069993.P4670668411715715565

namespace A069993

/-- `∑[ogf((5-3x+4x^2)/(1-5x+4x^2))]` -/
def P4670668411715715565.Spec : Prop :=
  ∀ n, P4670668411715715565.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P14646422749786890049

`ogf((5-3x+4x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A069993.P14646422749786890049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, 4] [1, -6, 9, -4] n

end

end A069993.P14646422749786890049

namespace A069993

/-- `ogf((5-3x+4x^2)/(1-6x+9x^2-4x^3))` -/
def P14646422749786890049.Spec : Prop :=
  ∀ n, P14646422749786890049.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P9745174786799383779

`or(1, ∑[6*4^n-2])`
-/

namespace A069993.P9745174786799383779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * 4 ^ n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069993.P9745174786799383779

namespace A069993

/-- `or(1, ∑[6*4^n-2])` -/
def P9745174786799383779.Spec : Prop :=
  ∀ n, P9745174786799383779.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P468652674312659502

`∑[or(6, 4*a(n-1))]` with `a(0)=5`
-/

namespace A069993.P468652674312659502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  Nat.lor 6 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069993.P468652674312659502

namespace A069993

/-- `∑[or(6, 4*a(n-1))]` -/
def P468652674312659502.Spec : Prop :=
  ∀ n, (P468652674312659502.a n : ℤ) = A069993 (n + 1)

end A069993

/-! ## A069993.P10477899000865663627

`record[2^or(1, n+2)-(n+3)]`
-/

namespace A069993.P10477899000865663627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.lor 1 (n + 2) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069993.P10477899000865663627

namespace A069993

/-- `record[2^or(1, n+2)-(n+3)]` -/
def P10477899000865663627.Spec : Prop :=
  ∀ n, P10477899000865663627.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P10012823474665822327

`record[2^xor(1, n+2)-(n+3)]`
-/

namespace A069993.P10012823474665822327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 (n + 2) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069993.P10012823474665822327

namespace A069993

/-- `record[2^xor(1, n+2)-(n+3)]` -/
def P10012823474665822327.Spec : Prop :=
  ∀ n, P10012823474665822327.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P4504914403849983484

`record[-((-2)^(n+3)+n+3)]`
-/

namespace A069993.P4504914403849983484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-2) ^ (n + 3) + (n + 3 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069993.P4504914403849983484

namespace A069993

/-- `record[-((-2)^(n+3)+n+3)]` -/
def P4504914403849983484.Spec : Prop :=
  ∀ n, P4504914403849983484.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P17284566244906116242

`floor(∑[4*a(n-1)+3]-n)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A069993.P17284566244906116242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  4 * f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A069993.P17284566244906116242

namespace A069993

/-- `floor(∑[4*a(n-1)+3]-n)` -/
def P17284566244906116242.Spec : Prop :=
  ∀ n, P17284566244906116242.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P10825969346017994703

`A084173(2*(n+1))`
-/

namespace A069993.P10825969346017994703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 (2 * (n + 1))

end

end A069993.P10825969346017994703

namespace A069993

/-- `A084173(2*(n+1))` -/
def P10825969346017994703.Spec : Prop :=
  ∀ n, P10825969346017994703.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P17974026295889001677

`A000325(2*n+3)`
-/

namespace A069993.P17974026295889001677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (2 * n + 3)

end

end A069993.P17974026295889001677

namespace A069993

/-- `A000325(2*n+3)` -/
def P17974026295889001677.Spec : Prop :=
  ∀ n, P17974026295889001677.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P15039653891847277648

`A076878(2*n+3)`
-/

namespace A069993.P15039653891847277648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076878 (2 * n + 3)

end

end A069993.P15039653891847277648

namespace A069993

/-- `A076878(2*n+3)` -/
def P15039653891847277648.Spec : Prop :=
  ∀ n, P15039653891847277648.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P17372481087673904199

`A147678(4*n+5)`
-/

namespace A069993.P17372481087673904199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147678 (4 * n + 5)

end

end A069993.P17372481087673904199

namespace A069993

/-- `A147678(4*n+5)` -/
def P17372481087673904199.Spec : Prop :=
  ∀ n, P17372481087673904199.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P3999545052995788416

`A132824(2*(n+2))/2`
-/

namespace A069993.P3999545052995788416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132824 (2 * (n + 2)) : ℚ) / 2

end

end A069993.P3999545052995788416

namespace A069993

/-- `A132824(2*(n+2))/2` -/
def P3999545052995788416.Spec : Prop :=
  ∀ n, P3999545052995788416.a n = (A069993 (n + 1) : ℚ)

end A069993

/-! ## A069993.P2816287738821100564

`A132732(2*n+3)/2`
-/

namespace A069993.P2816287738821100564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132732 (2 * n + 3) : ℚ) / 2

end

end A069993.P2816287738821100564

namespace A069993

/-- `A132732(2*n+3)/2` -/
def P2816287738821100564.Spec : Prop :=
  ∀ n, P2816287738821100564.a n = (A069993 (n + 1) : ℚ)

end A069993

/-! ## A069993.P11727842732050416262

`Δ[A083584(n)-(n+1)²]`
-/

namespace A069993.P11727842732050416262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083584 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069993.P11727842732050416262

namespace A069993

/-- `Δ[A083584(n)-(n+1)²]` -/
def P11727842732050416262.Spec : Prop :=
  ∀ n, P11727842732050416262.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P12040690243504793642

`xor(1, ∑[A033484(2*n+1)])`
-/

namespace A069993.P12040690243504793642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069993.P12040690243504793642

namespace A069993

/-- `xor(1, ∑[A033484(2*n+1)])` -/
def P12040690243504793642.Spec : Prop :=
  ∀ n, P12040690243504793642.a n = A069993 (n + 1)

end A069993

/-! ## A069993.P4921344376829424454

`(A175976(n+2)-(n+1))/2`
-/

namespace A069993.P4921344376829424454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175976 (n + 2) - (n + 1 : ℤ) : ℚ) / 2

end

end A069993.P4921344376829424454

namespace A069993

/-- `(A175976(n+2)-(n+1))/2` -/
def P4921344376829424454.Spec : Prop :=
  ∀ n, P4921344376829424454.a n = (A069993 (n + 1) : ℚ)

theorem P4921344376829424454.correct : P4921344376829424454.Spec := by
  intro n
  simp only [A069993, Nat.add_sub_cancel, A069993.P4921344376829424454.a, A069993.P10904131476634752855.a, A175976, A175976.P5697769186700930070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069993

/-! ## A069993.P7139907410709623226

`(A289254(n+2)-(n-1))/2`
-/

namespace A069993.P7139907410709623226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289254 (n + 2) - ((n : ℤ) - 1) : ℚ) / 2

end

end A069993.P7139907410709623226

namespace A069993

/-- `(A289254(n+2)-(n-1))/2` -/
def P7139907410709623226.Spec : Prop :=
  ∀ n, P7139907410709623226.a n = (A069993 (n + 1) : ℚ)

theorem P7139907410709623226.correct : P7139907410709623226.Spec := by
  intro n
  simp only [A069993, Nat.add_sub_cancel, A069993.P7139907410709623226.a, A069993.P10904131476634752855.a, A289254, A289254.P15856436256182768619.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069993

/-! ## A069993.P10560614172216163591

`Δ[A007583(n+1)-(n+1)²]`
-/

namespace A069993.P10560614172216163591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069993.P10560614172216163591

namespace A069993

/-- `Δ[A007583(n+1)-(n+1)²]` -/
def P10560614172216163591.Spec : Prop :=
  ∀ n, P10560614172216163591.a n = A069993 (n + 1)

end A069993

/-!
# A069994: a(n) = Sum_{i=0..2n} B(i)*C(2n+1,i)*6^i where B(i) are the Bernoulli numbers, C(2n,i) the binomial coefficients.

The programs for A069994, there is no canonical definition to state claims against.
-/

/-! ## A069994.P12590093680130129632

`2*A158073(2*n+1)`
-/

namespace A069994.P12590093680130129632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158073 (2 * n + 1)

end

end A069994.P12590093680130129632

/-! ## A069994.P4402898409273818315

`xor(-A000007(n), A083010(2*n+1))`
-/

namespace A069994.P4402898409273818315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A000007 n) (A083010 (2 * n + 1))

end

end A069994.P4402898409273818315

/-! ## A069994.P9675507773549001118

`xor(-A117569(2*n), A083010(2*n+1))`
-/

namespace A069994.P9675507773549001118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A117569 (2 * n)) (A083010 (2 * n + 1))

end

end A069994.P9675507773549001118

/-! ## A069994.P5743550621946586630

`xor(A083010(2*n+1), A226158(2*n+1))`
-/

namespace A069994.P5743550621946586630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083010 (2 * n + 1)) (A226158 (2 * n + 1))

end

end A069994.P5743550621946586630

/-! ## A069994.P1786947647061508083

`xor(-A036968(2*n+1), A083010(2*n+1))`
-/

namespace A069994.P1786947647061508083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A036968 (2 * n + 1)) (A083010 (2 * n + 1))

end

end A069994.P1786947647061508083

/-!
# A069996: Number of spanning trees on the bipartite graph K_{3,n}.

The programs for A069996, the canonical program `A069996.P9125420906948530787` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069996 has offset 0).

The definition of A069996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069996.P11629618197880326629

`n²*3^(n-1)`
-/

namespace A069996.P11629618197880326629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A069996.P11629618197880326629

namespace A069996

/-- `n²*3^(n-1)` -/
def P11629618197880326629.Spec : Prop :=
  ∀ n, P11629618197880326629.a n = (A069996 n : ℚ)

theorem P11629618197880326629.correct : P11629618197880326629.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A069996, Nat.add_sub_cancel, A069996.P11629618197880326629.a, A069996.P9125420906948530787.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A069996, Nat.add_sub_cancel, A069996.P11629618197880326629.a, A069996.P9125420906948530787.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A069996

/-! ## A069996.P9125420906948530787

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=0, a(1)=1, a(2)=12`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A069996

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P9125420906948530787.Spec : Prop :=
  ∀ n, P9125420906948530787.a n = A069996 n

theorem P9125420906948530787.correct : P9125420906948530787.Spec := by
  intro n
  simp only [A069996]

end A069996

/-! ## A069996.P2137235977450007028

`A062189(n)-A383136(n)`
-/

namespace A069996.P2137235977450007028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062189 n - A383136 n

end

end A069996.P2137235977450007028

namespace A069996

/-- `A062189(n)-A383136(n)` -/
def P2137235977450007028.Spec : Prop :=
  ∀ n, P2137235977450007028.a n = A069996 n

end A069996

/-! ## A069996.P8720021382374079735

`A005843(n)*A027471(n+1)/2`
-/

namespace A069996.P8720021382374079735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 n * A027471 (n + 1) : ℚ) / 2

end

end A069996.P8720021382374079735

namespace A069996

/-- `A005843(n)*A027471(n+1)/2` -/
def P8720021382374079735.Spec : Prop :=
  ∀ n, P8720021382374079735.a n = (A069996 n : ℚ)

end A069996

/-! ## A069996.P12144551193215810335

`A027472(n+3)+A129530(n)-A383136(n+1)`
-/

namespace A069996.P12144551193215810335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027472 (n + 3) + (A129530 n - A383136 (n + 1))

end

end A069996.P12144551193215810335

namespace A069996

/-- `A027472(n+3)+A129530(n)-A383136(n+1)` -/
def P12144551193215810335.Spec : Prop :=
  ∀ n, P12144551193215810335.a n = A069996 n

end A069996

/-! ## A069996.P15462280377408020368

`A383136(n+1)-(A027471(n+1)+A027471(n+2))`
-/

namespace A069996.P15462280377408020368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 (n + 1) - (A027471 (n + 1) + A027471 (n + 2))

end

end A069996.P15462280377408020368

namespace A069996

/-- `A383136(n+1)-(A027471(n+1)+A027471(n+2))` -/
def P15462280377408020368.Spec : Prop :=
  ∀ n, P15462280377408020368.a n = A069996 n

end A069996

/-! ## A069996.P970014998713097513

`A127960(n)/3`
-/

namespace A069996.P970014998713097513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127960 n : ℚ) / 3

end

end A069996.P970014998713097513

namespace A069996

/-- `A127960(n)/3` -/
def P970014998713097513.Spec : Prop :=
  ∀ n, P970014998713097513.a n = (A069996 n : ℚ)

theorem P970014998713097513.correct : P970014998713097513.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A069996, Nat.add_sub_cancel, A069996.P970014998713097513.a, A069996.P9125420906948530787.a, A127960, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A069996, Nat.add_sub_cancel, A069996.P970014998713097513.a, A069996.P9125420906948530787.a, A127960, A127960.P1454755808448748578.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A069996

/-! ## A069996.P6370627296291093391

`n*A036290(n)/3`
-/

namespace A069996.P6370627296291093391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A036290 n : ℚ) / 3

end

end A069996.P6370627296291093391

namespace A069996

/-- `n*A036290(n)/3` -/
def P6370627296291093391.Spec : Prop :=
  ∀ n, P6370627296291093391.a n = (A069996 n : ℚ)

theorem P6370627296291093391.correct : P6370627296291093391.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A069996, Nat.add_sub_cancel, A069996.P6370627296291093391.a, A069996.P9125420906948530787.a, A036290, A036290.P13464595081009669665.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A069996, Nat.add_sub_cancel, A069996.P6370627296291093391.a, A069996.P9125420906948530787.a, A036290, A036290.P13464595081009669665.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A069996

/-! ## A069996.P9646076018628350367

`n*A120908(n+1)/4`
-/

namespace A069996.P9646076018628350367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A120908 (n + 1) : ℚ) / 4

end

end A069996.P9646076018628350367

namespace A069996

/-- `n*A120908(n+1)/4` -/
def P9646076018628350367.Spec : Prop :=
  ∀ n, P9646076018628350367.a n = (A069996 n : ℚ)

end A069996

/-! ## A069996.P4870013682226253839

`A383137(n)-A052791(n)`
-/

namespace A069996.P4870013682226253839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383137 n - A052791 n

end

end A069996.P4870013682226253839

namespace A069996

/-- `A383137(n)-A052791(n)` -/
def P4870013682226253839.Spec : Prop :=
  ∀ n, P4870013682226253839.a n = A069996 n

end A069996

/-! ## A069996.P8788738936164993269

`A086603(n)/A028310(n)`
-/

namespace A069996.P8788738936164993269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086603 n : ℚ) / (A028310 n : ℚ)

end

end A069996.P8788738936164993269

namespace A069996

/-- `A086603(n)/A028310(n)` -/
def P8788738936164993269.Spec : Prop :=
  ∀ n, P8788738936164993269.a n = (A069996 n : ℚ)

end A069996

/-! ## A069996.P18199848918902840042

`A062074(n)/A008486(n)`
-/

namespace A069996.P18199848918902840042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062074 n : ℚ) / (A008486 n : ℚ)

end

end A069996.P18199848918902840042

namespace A069996

/-- `A062074(n)/A008486(n)` -/
def P18199848918902840042.Spec : Prop :=
  ∀ n, P18199848918902840042.a n = (A069996 n : ℚ)

end A069996

