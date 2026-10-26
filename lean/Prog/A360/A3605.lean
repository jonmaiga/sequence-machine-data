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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
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
# A360501: Number of edges added at n-th generation of hexagonal graph constructed in first quadrant (see Comments for precise definition).

The programs for A360501, there is no canonical definition to state claims against.
-/

/-! ## A360501.P15750077997553461127

`Δ[A360512(log2(A011782(n)))]`
-/

namespace A360501.P15750077997553461127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360512 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360501.P15750077997553461127

/-! ## A360501.P6179772598263102786

`A049093(n+1)-A353849(A143146(n+1))`
-/

namespace A360501.P6179772598263102786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1) - A353849 (A143146 (n + 1)).toNat

end

end A360501.P6179772598263102786

/-!
# A360502: Concatenate the ternary strings for 1,2,...,n.

The programs for A360502, there is no canonical definition to state claims against.
-/

/-! ## A360502.P332418682881056431

`A007089(A048435(n+1))`
-/

namespace A360502.P332418682881056431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A048435 (n + 1)).toNat

end

end A360502.P332418682881056431

/-!
# A360505: Concatenate the ternary strings for n, n-1, n-2, ..., 2, 1.

The programs for A360505, there is no canonical definition to state claims against.
-/

/-! ## A360505.P18191142025352840433

`A007089(A360506(n+1))`
-/

namespace A360505.P18191142025352840433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A360506 (n + 1)).toNat

end

end A360505.P18191142025352840433

/-!
# A360506: Read A360505(n) as if it were a base-3 string and write it in base 10.

The programs for A360506, there is no canonical definition to state claims against.
-/

/-! ## A360506.P4170456656568978432

`A367933(∑[record[A367886(n)]])`
-/

namespace A360506.P4170456656568978432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360506.P4170456656568978432

/-!
# A360507: Numbers k such that A360506(k) is prime.

The programs for A360507, there is no canonical definition to state claims against.
-/

/-! ## A360507.P16503496669416072911

`A130446(A072827(n+1))+A061931(n+1)`
-/

namespace A360507.P16503496669416072911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A072827 (n + 1)).toNat + A061931 (n + 1)

end

end A360507.P16503496669416072911

/-! ## A360507.P6306954386736628417

`A072827(n+1)+or(2*n+1, A130575(A103529(n+1)))`
-/

namespace A360507.P6306954386736628417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072827 (n + 1) + Int.lor (2 * n + 1 : ℤ) (A130575 (A103529 (n + 1)).toNat)

end

end A360507.P6306954386736628417

/-!
# A360509: Number of words of length n over the alphabet [A-Z] that do not contain the string CAT.

The programs for A360509, the canonical program `A360509.P17896888887479212786` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360509 has offset 0).

The definition of A360509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360509.P17896888887479212786

`26*a(n-1)-a(n-3)` with `a(0)=1, a(1)=26, a(2)=676`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360509

/-- `26*a(n-1)-a(n-3)` -/
def P17896888887479212786.Spec : Prop :=
  ∀ n, P17896888887479212786.a n = A360509 n

theorem P17896888887479212786.correct : P17896888887479212786.Spec := by
  intro n
  simp only [A360509]

end A360509

/-!
# A360510: a(n) = Product_{i=2..n} p(i) - p(n+1)^2, where p(i) is the i-th prime.

The programs for A360510, there is no canonical definition to state claims against.
-/

/-! ## A360510.P9236921640309715971

`A064819(n+1)-A070826(n+1)`
-/

namespace A360510.P9236921640309715971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064819 (n + 1) - A070826 (n + 1)

end

end A360510.P9236921640309715971

/-! ## A360510.P11045785636452676858

`A070826(n+1)-p?[A061345(n)]²`
-/

namespace A360510.P11045785636452676858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A360510.P11045785636452676858

/-! ## A360510.P7397520138837189213

`A070826(n+1)-A065091(n+1)²`
-/

namespace A360510.P7397520138837189213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) - A065091 (n + 1) ^ 2

end

end A360510.P7397520138837189213

/-! ## A360510.P12943818761829571292

`∏[A006005(n+1)]-A065091(n+1)²`
-/

namespace A360510.P12943818761829571292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A065091 (n + 1) ^ 2

end

end A360510.P12943818761829571292

/-! ## A360510.P14653968597057739055

`∏[A000040(n+1)]-p?[2*n+1]²-A070826(n+1)`
-/

namespace A360510.P14653968597057739055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 : ℤ) - A070826 (n + 1)

end

end A360510.P14653968597057739055

/-! ## A360510.P4719142456819399229

`A070826(n+1)-A000040(n+2)*A000040(n+2)`
-/

namespace A360510.P4719142456819399229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 1) - A000040 (n + 2) * A000040 (n + 2)

end

end A360510.P4719142456819399229

/-!
# A360511: a(n) = Product_{i=1..n} p(i) - p(n+1)^3, where p(i) is the i-th prime.

The programs for A360511, there is no canonical definition to state claims against.
-/

/-! ## A360511.P802408156744033350

`A002110(n+1)-A030078(n+2)`
-/

namespace A360511.P802408156744033350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A030078 (n + 2)

end

end A360511.P802408156744033350

/-! ## A360511.P3600829208251495545

`A002110(n+1)-A000040(n+2)^3`
-/

namespace A360511.P3600829208251495545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A000040 (n + 2) ^ 3

end

end A360511.P3600829208251495545

/-! ## A360511.P6145015262546074680

`A002110(n+1)-A000578(p?[A005408(n)])`
-/

namespace A360511.P6145015262546074680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A000578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A360511.P6145015262546074680

/-! ## A360511.P7708822399913730054

`A002110(n+1)+A098999(n+1)-A098999(n+2)`
-/

namespace A360511.P7708822399913730054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) + (A098999 (n + 1) - A098999 (n + 2))

end

end A360511.P7708822399913730054

/-! ## A360511.P16103408757815015950

`A002110(n+1)-A000040(n+2)*A001248(n+2)`
-/

namespace A360511.P16103408757815015950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A000040 (n + 2) * A001248 (n + 2)

end

end A360511.P16103408757815015950

/-!
# A360512: Total number of edges after n generations in hexagonal graph constructed in first quadrant (see Comments in A360501 for precise definition).

The programs for A360512, there is no canonical definition to state claims against.
-/

/-! ## A360512.P17955656645466219525

`∑[A360501(n)]`
-/

namespace A360512.P17955656645466219525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360512.P17955656645466219525

/-! ## A360512.P4335235471122121490

`A000194(A006636(n))-A026274(n+1)`
-/

namespace A360512.P4335235471122121490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A006636 n).toNat - A026274 (n + 1)

end

end A360512.P4335235471122121490

/-! ## A360512.P4052752973228433627

`eq[A158405(A028310(n)), A178832(n+1)]`
-/

namespace A360512.P4052752973228433627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360512.P4052752973228433627

/-! ## A360512.P15766688361951785192

`A232748(ceil(n²/ϕ)+1)`
-/

namespace A360512.P15766688361951785192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (⌈(n ^ 2 : ℝ) / Real.goldenRatio⌉ + 1).toNat

end

end A360512.P15766688361951785192

/-! ## A360512.P3724751885728604911

`eq[A047740(n+2), A131225(n+1)]`
-/

namespace A360512.P3724751885728604911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047740 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131225 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360512.P3724751885728604911

/-!
# A360515: Number of 2-color vertex orderings of the labeled path graph on n vertices in which the number 1 is assigned to a vertex in an even position.

The programs for A360515, there is no canonical definition to state claims against.
-/

/-! ## A360515.P5634046559081029791

`A221787(A056040(n))+A006973(n+1)`
-/

namespace A360515.P5634046559081029791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A056040 n).toNat + A006973 (n + 1)

end

end A360515.P5634046559081029791

/-! ## A360515.P8326667660966037031

`A221787(A090932(n))+A006973(n+1)`
-/

namespace A360515.P8326667660966037031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A090932 n).toNat + A006973 (n + 1)

end

end A360515.P8326667660966037031

/-!
# A360516: Number of 2-color vertex orderings of the labeled path graph on n vertices.

The programs for A360516, there is no canonical definition to state claims against.
-/

/-! ## A360516.P520716391904916637

`A360514(n+1)+A360515(n+1)`
-/

namespace A360516.P520716391904916637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360514 (n + 1) + A360515 (n + 1)

end

end A360516.P520716391904916637

/-! ## A360516.P7012749421942668434

`A110655(3*(n+1))*A335433(A210668(n))`
-/

namespace A360516.P7012749421942668434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (3 * (n + 1)) * A335433 (A210668 n).toNat

end

end A360516.P7012749421942668434

/-!
# A360518: Numbers j such that there exists a number i <= j with the property that i+j and i*j have the same decimal digits in reverse order.

The programs for A360518, there is no canonical definition to state claims against.
-/

/-! ## A360518.P5603860265917611105

`A319182(A062569(n))+A033951(n)`
-/

namespace A360518.P5603860265917611105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319182 (A062569 n).toNat + A033951 n

end

end A360518.P5603860265917611105

/-!
# A360519: Let C consist of 1 together with all numbers with at least two distinct prime factors; this is the lexicographically earliest infinite sequence {a(n)} of distinct elements of C such that, for n>2, a(n) has a common factor with a(n-1) but not with a(n-2).

The programs for A360519, there is no canonical definition to state claims against.
-/

/-! ## A360519.P4737913565939107687

`A361102(A361104(n+1))`
-/

namespace A360519.P4737913565939107687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A361104 (n + 1)).toNat

end

end A360519.P4737913565939107687

/-! ## A360519.P1826984689771327441

`A363576(n+1)/A374443(A283572(n+1))`
-/

namespace A360519.P1826984689771327441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363576 (n + 1) : ℚ) / (A374443 (A283572 (n + 1)).toNat : ℚ)

end

end A360519.P1826984689771327441

/-! ## A360519.P1565537023002665890

`A363576(n+1)/A286627(A075296(2*n+3))`
-/

namespace A360519.P1565537023002665890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363576 (n + 1) : ℚ) / (A286627 (A075296 (2 * n + 3)).toNat : ℚ)

end

end A360519.P1565537023002665890

/-! ## A360519.P15288751875032003570

`A363576(A032555(n+1))`
-/

namespace A360519.P15288751875032003570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363576 (A032555 (n + 1)).toNat

end

end A360519.P15288751875032003570

/-! ## A360519.P7876834495574646967

`A363576(A032559(n+1))`
-/

namespace A360519.P7876834495574646967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363576 (A032559 (n + 1)).toNat

end

end A360519.P7876834495574646967

/-!
# A360520: a(n) = A120963(n) + A341711(floor(n/2)).

The programs for A360520, there is no canonical definition to state claims against.
-/

/-! ## A360520.P17877374255188994346

`A120963(n)+A341711(floor(n/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360520.P17877374255188994346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120963 n + A341711 ⌊(n : ℚ) / 2⌋.toNat

end

end A360520.P17877374255188994346

/-! ## A360520.P13685512296356486110

`∑[A134451(n+2)*A347428(n)]`
-/

namespace A360520.P13685512296356486110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 2) * A347428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360520.P13685512296356486110

/-! ## A360520.P12597667235572979707

`∑[A040001(3*n+2)*A347428(n)]`
-/

namespace A360520.P12597667235572979707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (3 * n + 2) * A347428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360520.P12597667235572979707

/-! ## A360520.P10464474502617157832

`A341711(A004526(n))+A120963(n)`
-/

namespace A360520.P10464474502617157832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341711 (A004526 n).toNat + A120963 n

end

end A360520.P10464474502617157832

/-! ## A360520.P15646402585937177762

`A341711(A004526(n))+∑[A347428(n)]`
-/

namespace A360520.P15646402585937177762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341711 (A004526 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360520.P15646402585937177762

/-!
# A360522: a(n) = Sum_{d|n} Max({d'; d'|n, gcd(d, d') = 1}).

The programs for A360522, the canonical program `A360522.P14036774965634784311` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360522 has offset 1).

The definition of A360522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360522.P14036774965634784311

`∑{d}[n+1, A055653(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A360522

/-- `∑{d}[n+1, A055653(#)]` -/
def P14036774965634784311.Spec : Prop :=
  ∀ n, P14036774965634784311.a n = A360522 (n + 1)

theorem P14036774965634784311.correct : P14036774965634784311.Spec := by
  intro n
  simp only [A360522, Nat.add_sub_cancel]

end A360522

/-! ## A360522.P3983338715199625881

`∑{d}[n+1, A000005(#)*A114810((n+1)/#)]`
-/

namespace A360522.P3983338715199625881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A114810 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360522.P3983338715199625881

namespace A360522

/-- `∑{d}[n+1, A000005(#)*A114810((n+1)/#)]` -/
def P3983338715199625881.Spec : Prop :=
  ∀ n, P3983338715199625881.a n = A360522 (n + 1)

end A360522

/-! ## A360522.P5752317570173828208

`∑{d}[n+1, A008966(#)*A332713((n+1)/#)]`
-/

namespace A360522.P5752317570173828208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A332713 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360522.P5752317570173828208

namespace A360522

/-- `∑{d}[n+1, A008966(#)*A332713((n+1)/#)]` -/
def P5752317570173828208.Spec : Prop :=
  ∀ n, P5752317570173828208.a n = A360522 (n + 1)

end A360522

/-! ## A360522.P3001151982473075921

`∑{d}[n+1, A000203(#)*A395496((n+1)/#)]`
-/

namespace A360522.P3001151982473075921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A395496 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A360522.P3001151982473075921

namespace A360522

/-- `∑{d}[n+1, A000203(#)*A395496((n+1)/#)]` -/
def P3001151982473075921.Spec : Prop :=
  ∀ n, P3001151982473075921.a n = A360522 (n + 1)

end A360522

/-! ## A360522.P4253585687723159734

`∑{d}[∏{p}[n+1, #], (n+1)/#]-A024326(A073817(n))`
-/

namespace A360522.P4253585687723159734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) - (A024326 (A073817 n).toNat : ℚ)

end

end A360522.P4253585687723159734

namespace A360522

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]-A024326(A073817(n))` -/
def P4253585687723159734.Spec : Prop :=
  ∀ n, P4253585687723159734.a n = (A360522 (n + 1) : ℚ)

end A360522

/-!
# A360523: a(n) = Sum_{d|n} mu(rad(d)) * delta_d(n/d), where rad(n) = A007947(n) and delta_d(n) is the greatest divisor of n that is relatively prime to d.

The programs for A360523, there is no canonical definition to state claims against.
-/

/-! ## A360523.P3164647809461237114

`∑{d}[n+1, A383954(#)]`
-/

namespace A360523.P3164647809461237114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A383954 d

end

end A360523.P3164647809461237114

/-! ## A360523.P5499621004707226360

`A000010(n+1)+dr(A127708(3*(n+1)))`
-/

namespace A360523.P5499621004707226360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (SequenceMachineLib.digitalRoot (A127708 (3 * (n + 1))) : ℤ)

end

end A360523.P5499621004707226360

/-! ## A360523.P299907713271588685

`or(A000010(n+1), A341026(A104842(n+1)))`
-/

namespace A360523.P299907713271588685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (n + 1)) (A341026 ((A104842 (n + 1)).toNat + 165))

end

end A360523.P299907713271588685

/-! ## A360523.P5331016196867887997

`A325678(A127708(3*n+3))+A000010(n+1)`
-/

namespace A360523.P5331016196867887997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A127708 (3 * n + 3)).toNat + A000010 (n + 1)

end

end A360523.P5331016196867887997

/-! ## A360523.P1576855156185795736

`A000035(A035039(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A360523.P1576855156185795736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 (A035039 n).toNat : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A360523.P1576855156185795736

/-!
# A360525: Numbers k such that A360522(k) > 2*k.

The programs for A360525, the canonical program `A360525.P13636672009762808303` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360525 has offset 1).

The definition of A360525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360525.P13636672009762808303

`lt[2*n+3, A360522(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360525

/-- `lt[2*n+3, A360522(n+1)]+1` -/
def P13636672009762808303.Spec : Prop :=
  ∀ n, (P13636672009762808303.a n : ℤ) = A360525 (n + 1)

theorem P13636672009762808303.correct : P13636672009762808303.Spec := by
  intro n
  simp only [A360525, Nat.add_sub_cancel]

end A360525

/-! ## A360525.P17937810660313479825

`lt[2*n+3, A360522(A028310(n))]`
-/

namespace A360525.P17937810660313479825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360522 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A360525.P17937810660313479825

namespace A360525

/-- `lt[2*n+3, A360522(A028310(n))]` -/
def P17937810660313479825.Spec : Prop :=
  ∀ n, (P17937810660313479825.a n : ℤ) = A360525 (n + 1)

end A360525

/-!
# A360528: Numbers n for which the length-n prefix of the Fibonacci word (A003849) ends in a word of exponent >= (3+sqrt(5))/2.

The programs for A360528, there is no canonical definition to state claims against.
-/

/-! ## A360528.P8536059415049296771

`lt[A161666(n+1), A072698(A128084(3*(n+1)))]`
-/

namespace A360528.P8536059415049296771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072698 (A128084 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360528.P8536059415049296771

/-! ## A360528.P5414152830070768330

`lt[A067728(A101307(n+1)), A106202(n+3)]`
-/

namespace A360528.P5414152830070768330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067728 (A101307 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106202 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360528.P5414152830070768330

/-! ## A360528.P15772080407905110919

`lt[A334081(A268956(2*(n+2))), A099530(n)]`
-/

namespace A360528.P15772080407905110919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334081 (A268956 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360528.P15772080407905110919

/-!
# A360529: a(n) is the smallest k > A024619(n) such that rad(k) = rad(A024619(n)), where rad(n) = A007947(n).

The programs for A360529, there is no canonical definition to state claims against.
-/

/-! ## A360529.P12612060775119133670

`A065642(A024619(n+1))`
-/

namespace A360529.P12612060775119133670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A024619 (n + 1)).toNat

end

end A360529.P12612060775119133670

/-! ## A360529.P16816450107967829870

`A065642(A080765(n+1)+1)`
-/

namespace A360529.P16816450107967829870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A080765 (n + 1) + 1).toNat

end

end A360529.P16816450107967829870

/-! ## A360529.P11389857465837894517

`A065642(comp[C(A008475(n+1), n)])`
-/

namespace A360529.P11389857465837894517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008475 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A360529.P11389857465837894517

/-! ## A360529.P1572688796933927599

`A065642(comp[A000961(n+1)-1]+1)`
-/

namespace A360529.P1572688796933927599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A360529.P1572688796933927599

/-! ## A360529.P1463407861634501326

`A065642(A361102(n+2))`
-/

namespace A360529.P1463407861634501326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A361102 (n + 2)).toNat

end

end A360529.P1463407861634501326

/-! ## A360529.P7308964460386727140

`filter[A065642(n+1), A355447(#)]`
-/

namespace A360529.P7308964460386727140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A360529.P7308964460386727140

/-! ## A360529.P6780689125512912063

`filter[A065642(n+1), A143731(#)]`
-/

namespace A360529.P6780689125512912063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A360529.P6780689125512912063

/-!
# A360530: a(n) is the smallest positive integer k such that n can be expressed as the arithmetic mean of k nonzero squares.

The programs for A360530, there is no canonical definition to state claims against.
-/

/-! ## A360530.P1069988831604525348

`or(A354836(A102696(n+1)+3)%2, A362068(n+1))`
-/

namespace A360530.P1069988831604525348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A354836 (A102696 (n + 1) + 3).toNat) 2) (A362068 (n + 1))

end

end A360530.P1069988831604525348

/-! ## A360530.P14991037085529006808

`or(A191322(A005940(2*(n+1))), A362068(n+1))`
-/

namespace A360530.P14991037085529006808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191322 (A005940 (2 * (n + 1))).toNat) (A362068 (n + 1))

end

end A360530.P14991037085529006808

/-! ## A360530.P565235067300206952

`A227339(A000005(n+1)*A008955(n))`
-/

namespace A360530.P565235067300206952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227339 (A000005 (n + 1) * A008955 n).toNat

end

end A360530.P565235067300206952

/-! ## A360530.P9741101569781812430

`A006530(gcd(A007283(n), A248509(n+1)))`
-/

namespace A360530.P9741101569781812430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A007283 n) (A248509 (n + 1)))

end

end A360530.P9741101569781812430

/-! ## A360530.P10385314679964869112

`or(A079729(2*n+1), A100428(A264090(n+1)))`
-/

namespace A360530.P10385314679964869112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079729 (2 * n + 1)) (A100428 (A264090 (n + 1)).toNat)

end

end A360530.P10385314679964869112

/-!
# A360531: Numbers of the form F(i)-F(j)-1, i>=5, 3<=j<=i-2.

The programs for A360531, there is no canonical definition to state claims against.
-/

/-! ## A360531.P7735316796940520101

`record[A094585(n+3)-1]`
-/

namespace A360531.P7735316796940520101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360531.P7735316796940520101

/-! ## A360531.P18043133592303738462

`A094585(comp[∑[n]]+1)-1`
-/

namespace A360531.P18043133592303738462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) - 1

end

end A360531.P18043133592303738462

/-! ## A360531.P11430661037507048109

`record[A233583(A094585(n+1))]`
-/

namespace A360531.P11430661037507048109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A094585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360531.P11430661037507048109

/-! ## A360531.P12334233749570414824

`A022290(A175332(n+1))-1`
-/

namespace A360531.P12334233749570414824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A175332 (n + 1)).toNat - 1

end

end A360531.P12334233749570414824

/-! ## A360531.P2210936891527499327

`A007067(A007298(n+3))-1`
-/

namespace A360531.P2210936891527499327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A007298 (n + 3)).toNat - 1

end

end A360531.P2210936891527499327

/-! ## A360531.P10417892137557468142

`eq[2, A090079(A175055(n+1))]`
-/

namespace A360531.P10417892137557468142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A175055 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360531.P10417892137557468142

/-! ## A360531.P5410355955145929239

`eq[2, A090079(A336231(n+1))]`
-/

namespace A360531.P5410355955145929239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A336231 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360531.P5410355955145929239

/-! ## A360531.P4937413290537534701

`eq[A175055(n+1), A336231(n+1)]`
-/

namespace A360531.P4937413290537534701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360531.P4937413290537534701

/-! ## A360531.P4023848709060187823

`A143061(A014132(n+1))+A143061(A127739(n+1))`
-/

namespace A360531.P4023848709060187823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A014132 (n + 1)).toNat + A143061 (A127739 (n + 1)).toNat

end

end A360531.P4023848709060187823

/-!
# A360532: Numbers of the form F(i)-F(2j+1), i>=5, 1<=j<=(i-3)/2.

The programs for A360532, there is no canonical definition to state claims against.
-/

/-! ## A360532.P3462878021044819544

`eq[2, A200651(n+1)]`
-/

namespace A360532.P3462878021044819544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360532.P3462878021044819544

/-! ## A360532.P3613460492532464828

`A094585(floor(sqrt(n))+2*n+3)`
-/

namespace A360532.P3613460492532464828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094585 (Nat.sqrt n + 2 * n + 3)

end

end A360532.P3613460492532464828

/-! ## A360532.P14602893737059393582

`A143061(lt[1, A128618(n+1)])`
-/

namespace A360532.P14602893737059393582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A360532.P14602893737059393582

/-! ## A360532.P4337595804072191270

`filter[A007298(n+2), A188432(#)]`
-/

namespace A360532.P4337595804072191270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188432 (f1 j).toNat = 1) n)

end

end A360532.P4337595804072191270

/-! ## A360532.P12053660743395672322

`filter[A007298(n+3), A078588(#)]`
-/

namespace A360532.P12053660743395672322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A078588 (f1 j).toNat = 1) n)

end

end A360532.P12053660743395672322

/-! ## A360532.P3043337893837844632

`filter[A007298(n+3), A187950(#)]`
-/

namespace A360532.P3043337893837844632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187950 (f1 j).toNat = 1) n)

end

end A360532.P3043337893837844632

/-! ## A360532.P1175066161392809687

`filter[A007298(n+3), A188467(#)]`
-/

namespace A360532.P1175066161392809687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188467 (f1 j).toNat = 1) n)

end

end A360532.P1175066161392809687

/-! ## A360532.P5656226363686221498

`∩[A007298(n+1), A140400(n+1)]`
-/

namespace A360532.P5656226363686221498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360532.P5656226363686221498

/-! ## A360532.P15767929515990257249

`∩[A007298(n+1), A188018(n+1)]`
-/

namespace A360532.P15767929515990257249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360532.P15767929515990257249

/-! ## A360532.P17630967667640111045

`∩[A007298(n+1), A190430(n+1)]`
-/

namespace A360532.P17630967667640111045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360532.P17630967667640111045

/-!
# A360533: a(n) = index of the diagonal of the natural number array, A000027, that includes prime(n). See Comments.

The programs for A360533, there is no canonical definition to state claims against.
-/

/-! ## A360533.P16091826330895083163

`A114327(p?[xor(1, n)+1]-1)`
-/

namespace A360533.P16091826330895083163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A360533.P16091826330895083163

/-! ## A360533.P7739365097626455366

`A114327(p?[n%3+n]-1)`
-/

namespace A360533.P7739365097626455366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A360533.P7739365097626455366

/-! ## A360533.P7456249492335550153

`A114327(p?[abs(xor(1, -n))]-1)`
-/

namespace A360533.P7456249492335550153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A360533.P7456249492335550153

/-! ## A360533.P13084671826531439647

`A114327(p?[round(sqrt(n)+n)]-1)`
-/

namespace A360533.P13084671826531439647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat

end

end A360533.P13084671826531439647

/-! ## A360533.P4846886712092803418

`A114327(record[A225530(n)])`
-/

namespace A360533.P4846886712092803418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A360533.P4846886712092803418

/-! ## A360533.P1276896557413788375

`A114327(A006093(n+1))`
-/

namespace A360533.P1276896557413788375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A006093 (n + 1)).toNat

end

end A360533.P1276896557413788375

/-! ## A360533.P13093400488365742677

`A114327(eq[1, A013632(n)])`
-/

namespace A360533.P13093400488365742677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A360533.P13093400488365742677

/-! ## A360533.P10590613250146962996

`A114327(Δ[A007504(n)]-1)`
-/

namespace A360533.P10590613250146962996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (n + 1) - f1 n - 1).toNat

end

end A360533.P10590613250146962996

/-! ## A360533.P5735218221688703960

`A114327(record[A000010(n+1)])`
-/

namespace A360533.P5735218221688703960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A360533.P5735218221688703960

/-! ## A360533.P3007470356441368249

`A114327(record[A173557(n+1)])`
-/

namespace A360533.P3007470356441368249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A360533.P3007470356441368249

/-!
# A360534: Lexicographically earliest sequence of distinct prime numbers such that among each pair of consecutive terms, the decimal expansion of the smallest term appears in that of the largest term.

The programs for A360534, there is no canonical definition to state claims against.
-/

/-! ## A360534.P2467329817601164177

`p?[abs((n+1)%3*A352443(a(n-1)+1)+2-n)]` with `a(0)=2`
-/

namespace A360534.P2467329817601164177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  |(((n + 1) % 3 : ℕ) : ℤ) * A352443 (f1 (n - 1) + 1).toNat + 2 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360534.P2467329817601164177

/-!
# A360535: Analog of Rudin-Shapiro sum sequence A020986, based on counting patterns 00 instead of 11.

The programs for A360535, there is no canonical definition to state claims against.
-/

/-! ## A360535.P3604706003131172392

`∑[(-1)^A107782(n)]`
-/

namespace A360535.P3604706003131172392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A107782 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P3604706003131172392

/-! ## A360535.P13940835065786283142

`∑[(-1)^(A059009(or(2*n+1, n+1))%2)]`
-/

namespace A360535.P13940835065786283142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (Int.tmod (A059009 (Nat.lor (2 * n + 1) (n + 1))) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P13940835065786283142

/-! ## A360535.P12479343580724930829

`∑[A020985(A035327(n))]`
-/

namespace A360535.P12479343580724930829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P12479343580724930829

/-! ## A360535.P3851834565195311861

`∑[A020985(A036044(n))]`
-/

namespace A360535.P3851834565195311861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A036044 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P3851834565195311861

/-! ## A360535.P74960616489370286

`∑[A033999(A107782(n))]`
-/

namespace A360535.P74960616489370286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A107782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P74960616489370286

/-! ## A360535.P18178122793300059141

`∑[A020985(A335587(n))]`
-/

namespace A360535.P18178122793300059141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A335587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P18178122793300059141

/-! ## A360535.P16552268097902796942

`∑[A020985(A010078(n+1))]`
-/

namespace A360535.P16552268097902796942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A010078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P16552268097902796942

/-! ## A360535.P12113708995631828384

`∑[A162511(A253563(2*n+1))]`
-/

namespace A360535.P12113708995631828384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (A253563 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360535.P12113708995631828384

/-!
# A360536: Analog of Rudin-Shapiro sum sequence A020990, based on counting patterns 00 instead of 11.

The programs for A360536, there is no canonical definition to state claims against.
-/

/-! ## A360536.P3996055449393552624

`∑[A101455(∑[A380272(n)])]`
-/

namespace A360536.P3996055449393552624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380272 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360536.P3996055449393552624

/-! ## A360536.P16647432261007185032

`2-∑[A162511(A253563(n))]`
-/

namespace A360536.P16647432261007185032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (A253563 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360536.P16647432261007185032

/-! ## A360536.P13221526587139857355

`∑[A162511(A253563(2*n))]`
-/

namespace A360536.P13221526587139857355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (A253563 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360536.P13221526587139857355

/-! ## A360536.P4752416978845968465

`∑[A033999(A107782(4*n))]`
-/

namespace A360536.P4752416978845968465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A107782 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360536.P4752416978845968465

/-! ## A360536.P14360700752114054415

`∑[A033999(A107782(n)+n)]`
-/

namespace A360536.P14360700752114054415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A107782 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360536.P14360700752114054415

/-! ## A360536.P17725647453130361995

`∑[A033999(n-A107782(n))]`
-/

namespace A360536.P17725647453130361995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - A107782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360536.P17725647453130361995

/-!
# A360537: Areas of primitive Heron triangles with two rational medians from the infinite family based on Somos-5 sequences.

The programs for A360537, there is no canonical definition to state claims against.
-/

/-! ## A360537.P10230138562591523176

`A223941(∑[a(n-2)+1])` with `a(0)=1, a(1)=1`
-/

namespace A360537.P10230138562591523176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223941 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360537.P10230138562591523176

/-!
# A360539: a(n) is the cubefree part of n: the largest unitary divisor of n that is a cubefree number (A004709).

The programs for A360539, the canonical program `A360539.P1925901688017653991` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360539 has offset 1).

The definition of A360539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360539.P13773921400737236784

`(n+1)/A360540(n+1)`
-/

namespace A360539.P13773921400737236784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A360540 (n + 1) : ℚ)

end

end A360539.P13773921400737236784

namespace A360539

/-- `(n+1)/A360540(n+1)` -/
def P13773921400737236784.Spec : Prop :=
  ∀ n, P13773921400737236784.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P11949397081771468554

`gcd(n+1, A360541(n+1)²)`
-/

namespace A360539.P11949397081771468554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A360541 (n + 1) ^ 2)

end

end A360539.P11949397081771468554

namespace A360539

/-- `gcd(n+1, A360541(n+1)²)` -/
def P11949397081771468554.Spec : Prop :=
  ∀ n, (P11949397081771468554.a n : ℤ) = A360539 (n + 1)

end A360539

/-! ## A360539.P1925901688017653991

`A050985(A058035(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360539

/-- `A050985(A058035(n+1))` -/
def P1925901688017653991.Spec : Prop :=
  ∀ n, P1925901688017653991.a n = A360539 (n + 1)

theorem P1925901688017653991.correct : P1925901688017653991.Spec := by
  intro n
  simp only [A360539, Nat.add_sub_cancel]

end A360539

/-! ## A360539.P15559814827247847336

`A053165(A367168(n+1))`
-/

namespace A360539.P15559814827247847336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A367168 (n + 1)).toNat

end

end A360539.P15559814827247847336

namespace A360539

/-- `A053165(A367168(n+1))` -/
def P15559814827247847336.Spec : Prop :=
  ∀ n, P15559814827247847336.a n = A360539 (n + 1)

end A360539

/-! ## A360539.P12313630324285173537

`A050985(A385007(n+1))`
-/

namespace A360539.P12313630324285173537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A385007 (n + 1)).toNat

end

end A360539.P12313630324285173537

namespace A360539

/-- `A050985(A385007(n+1))` -/
def P12313630324285173537.Spec : Prop :=
  ∀ n, P12313630324285173537.a n = A360539 (n + 1)

end A360539

/-! ## A360539.P5544015265071045739

`A055231(n+1)*A368884(n+1)`
-/

namespace A360539.P5544015265071045739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A368884 (n + 1)

end

end A360539.P5544015265071045739

namespace A360539

/-- `A055231(n+1)*A368884(n+1)` -/
def P5544015265071045739.Spec : Prop :=
  ∀ n, P5544015265071045739.a n = A360539 (n + 1)

end A360539

/-! ## A360539.P1422721295590414228

`A050985((n+1)/A062379(n+1))`
-/

namespace A360539.P1422721295590414228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (n + 1) : ℚ))).toNat

end

end A360539.P1422721295590414228

namespace A360539

/-- `A050985((n+1)/A062379(n+1))` -/
def P1422721295590414228.Spec : Prop :=
  ∀ n, P1422721295590414228.a n = A360539 (n + 1)

end A360539

/-! ## A360539.P14335909780604329359

`(n+1)/A057521(A366765(n+1))`
-/

namespace A360539.P14335909780604329359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (A366765 (n + 1)).toNat : ℚ)

end

end A360539.P14335909780604329359

namespace A360539

/-- `(n+1)/A057521(A366765(n+1))` -/
def P14335909780604329359.Spec : Prop :=
  ∀ n, P14335909780604329359.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P17830485084407696113

`(n+1)/A368886(A057521(n+1))`
-/

namespace A360539.P17830485084407696113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368886 (A057521 (n + 1)).toNat : ℚ)

end

end A360539.P17830485084407696113

namespace A360539

/-- `(n+1)/A368886(A057521(n+1))` -/
def P17830485084407696113.Spec : Prop :=
  ∀ n, P17830485084407696113.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P11231293062479103027

`A197863(n+1)/A368886(n+1)`
-/

namespace A360539.P11231293062479103027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A368886 (n + 1) : ℚ)

end

end A360539.P11231293062479103027

namespace A360539

/-- `A197863(n+1)/A368886(n+1)` -/
def P11231293062479103027.Spec : Prop :=
  ∀ n, P11231293062479103027.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P6130233637933531667

`A385007((n+1)/A366126(n+1))`
-/

namespace A360539.P6130233637933531667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385007 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A366126 (n + 1) : ℚ))).toNat

end

end A360539.P6130233637933531667

namespace A360539

/-- `A385007((n+1)/A366126(n+1))` -/
def P6130233637933531667.Spec : Prop :=
  ∀ n, P6130233637933531667.a n = A360539 (n + 1)

end A360539

/-! ## A360539.P121829180660392226

`A367168(A385007(2*n+1-n))`
-/

namespace A360539.P121829180660392226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (A385007 (2 * n + 1 - n)).toNat

end

end A360539.P121829180660392226

namespace A360539

/-- `A367168(A385007(2*n+1-n))` -/
def P121829180660392226.Spec : Prop :=
  ∀ n, P121829180660392226.a n = A360539 (n + 1)

end A360539

/-! ## A360539.P2614631738358921270

`gcd(A056553(n+1), A367168(n+1))`
-/

namespace A360539.P2614631738358921270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056553 (n + 1)) (A367168 (n + 1))

end

end A360539.P2614631738358921270

namespace A360539

/-- `gcd(A056553(n+1), A367168(n+1))` -/
def P2614631738358921270.Spec : Prop :=
  ∀ n, (P2614631738358921270.a n : ℤ) = A360539 (n + 1)

end A360539

/-! ## A360539.P12320046099012798989

`gcd(A056192(n+1), A385007(n+1))`
-/

namespace A360539.P12320046099012798989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056192 (n + 1)) (A385007 (n + 1))

end

end A360539.P12320046099012798989

namespace A360539

/-- `gcd(A056192(n+1), A385007(n+1))` -/
def P12320046099012798989.Spec : Prop :=
  ∀ n, (P12320046099012798989.a n : ℤ) = A360539 (n + 1)

end A360539

/-! ## A360539.P17826642491998641556

`A007948(n+1)/A007948(A008834(n+1))`
-/

namespace A360539.P17826642491998641556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A007948 (A008834 (n + 1)).toNat : ℚ)

end

end A360539.P17826642491998641556

namespace A360539

/-- `A007948(n+1)/A007948(A008834(n+1))` -/
def P17826642491998641556.Spec : Prop :=
  ∀ n, P17826642491998641556.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P12355503110410327028

`(n+1)/A064549(A057521(A003557(n+1)))`
-/

namespace A360539.P12355503110410327028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A064549 (A057521 (A003557 (n + 1)).toNat).toNat : ℚ)

end

end A360539.P12355503110410327028

namespace A360539

/-- `(n+1)/A064549(A057521(A003557(n+1)))` -/
def P12355503110410327028.Spec : Prop :=
  ∀ n, P12355503110410327028.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P12473567816740921506

`A007948(n+1)/A078615(A062378(n+1))`
-/

namespace A360539.P12473567816740921506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A078615 (A062378 (n + 1)).toNat : ℚ)

end

end A360539.P12473567816740921506

namespace A360539

/-- `A007948(n+1)/A078615(A062378(n+1))` -/
def P12473567816740921506.Spec : Prop :=
  ∀ n, P12473567816740921506.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P11641136598598320128

`A066990(n+1)/A066990(A062378(n+1))`
-/

namespace A360539.P11641136598598320128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066990 (n + 1) : ℚ) / (A066990 (A062378 (n + 1)).toNat : ℚ)

end

end A360539.P11641136598598320128

namespace A360539

/-- `A066990(n+1)/A066990(A062378(n+1))` -/
def P11641136598598320128.Spec : Prop :=
  ∀ n, P11641136598598320128.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P3970177494207157355

`A356194(n+1)/A356194(A366906(n+1))`
-/

namespace A360539.P3970177494207157355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356194 (n + 1) : ℚ) / (A356194 (A366906 (n + 1)).toNat : ℚ)

end

end A360539.P3970177494207157355

namespace A360539

/-- `A356194(n+1)/A356194(A366906(n+1))` -/
def P3970177494207157355.Spec : Prop :=
  ∀ n, P3970177494207157355.a n = (A360539 (n + 1) : ℚ)

end A360539

/-! ## A360539.P14909148512133448467

`A055231(A000189(n+1))²*A055231(n+1)`
-/

namespace A360539.P14909148512133448467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A000189 (n + 1)).toNat ^ 2 * A055231 (n + 1)

end

end A360539.P14909148512133448467

namespace A360539

/-- `A055231(A000189(n+1))²*A055231(n+1)` -/
def P14909148512133448467.Spec : Prop :=
  ∀ n, P14909148512133448467.a n = A360539 (n + 1)

end A360539

/-!
# A360540: a(n) is the cubefull part of n: the largest divisor of n that is a cubefull number (A036966).

The programs for A360540, the canonical program `A360540.P10431117392450693366` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360540 has offset 1).

The definition of A360540 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360540.P10431117392450693366

`(n+1)/A360539(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A360540

/-- `(n+1)/A360539(n+1)` -/
def P10431117392450693366.Spec : Prop :=
  ∀ n, P10431117392450693366.a n = (A360540 (n + 1) : ℚ)

end A360540

/-! ## A360540.P222324539835346242

`gcd(n+1, A008834(n+1)²)`
-/

namespace A360540.P222324539835346242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A008834 (n + 1) ^ 2)

end

end A360540.P222324539835346242

namespace A360540

/-- `gcd(n+1, A008834(n+1)²)` -/
def P222324539835346242.Spec : Prop :=
  ∀ n, (P222324539835346242.a n : ℤ) = A360540 (n + 1)

end A360540

/-! ## A360540.P8261491276951279656

`A057521(A366765(n+1))`
-/

namespace A360540.P8261491276951279656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A366765 (n + 1)).toNat

end

end A360540.P8261491276951279656

namespace A360540

/-- `A057521(A366765(n+1))` -/
def P8261491276951279656.Spec : Prop :=
  ∀ n, P8261491276951279656.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P13554954822472606318

`A368886(A057521(n+1))`
-/

namespace A360540.P13554954822472606318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368886 (A057521 (n + 1)).toNat

end

end A360540.P13554954822472606318

namespace A360540

/-- `A368886(A057521(n+1))` -/
def P13554954822472606318.Spec : Prop :=
  ∀ n, P13554954822472606318.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P2138967084585349203

`(n+1)/A050985(A058035(n+1))`
-/

namespace A360540.P2138967084585349203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A050985 (A058035 (n + 1)).toNat : ℚ)

end

end A360540.P2138967084585349203

namespace A360540

/-- `(n+1)/A050985(A058035(n+1))` -/
def P2138967084585349203.Spec : Prop :=
  ∀ n, P2138967084585349203.a n = (A360540 (n + 1) : ℚ)

end A360540

/-! ## A360540.P13307554901991235838

`A368886(n+1)/A055231(n+1)`
-/

namespace A360540.P13307554901991235838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368886 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A360540.P13307554901991235838

namespace A360540

/-- `A368886(n+1)/A055231(n+1)` -/
def P13307554901991235838.Spec : Prop :=
  ∀ n, P13307554901991235838.a n = (A360540 (n + 1) : ℚ)

end A360540

/-! ## A360540.P17983451323548699301

`A057521((n+1)/A368884(n+1))`
-/

namespace A360540.P17983451323548699301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368884 (n + 1) : ℚ))).toNat

end

end A360540.P17983451323548699301

namespace A360540

/-- `A057521((n+1)/A368884(n+1))` -/
def P17983451323548699301.Spec : Prop :=
  ∀ n, P17983451323548699301.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P9559257982588364303

`(n+1)/A056192(A385007(n+1))`
-/

namespace A360540.P9559257982588364303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056192 (A385007 (n + 1)).toNat : ℚ)

end

end A360540.P9559257982588364303

namespace A360540

/-- `(n+1)/A056192(A385007(n+1))` -/
def P9559257982588364303.Spec : Prop :=
  ∀ n, P9559257982588364303.a n = (A360540 (n + 1) : ℚ)

end A360540

/-! ## A360540.P16839725329861454869

`(n+1)/A383764(A367168(n+1))`
-/

namespace A360540.P16839725329861454869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A383764 (A367168 (n + 1)).toNat : ℚ)

end

end A360540.P16839725329861454869

namespace A360540

/-- `(n+1)/A383764(A367168(n+1))` -/
def P16839725329861454869.Spec : Prop :=
  ∀ n, P16839725329861454869.a n = (A360540 (n + 1) : ℚ)

end A360540

/-! ## A360540.P9452674988348120686

`gcd(A065969(n+1), A368886(n+1))`
-/

namespace A360540.P9452674988348120686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065969 (n + 1)) (A368886 (n + 1))

end

end A360540.P9452674988348120686

namespace A360540

/-- `gcd(A065969(n+1), A368886(n+1))` -/
def P9452674988348120686.Spec : Prop :=
  ∀ n, (P9452674988348120686.a n : ℤ) = A360540 (n + 1)

end A360540

/-! ## A360540.P14738833808952011636

`A064549(A057521(A003557(n+1)))`
-/

namespace A360540.P14738833808952011636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A057521 (A003557 (n + 1)).toNat).toNat

end

end A360540.P14738833808952011636

namespace A360540

/-- `A064549(A057521(A003557(n+1)))` -/
def P14738833808952011636.Spec : Prop :=
  ∀ n, P14738833808952011636.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P10517828036288277030

`A007948(A008834(n+1))*A062378(n+1)`
-/

namespace A360540.P10517828036288277030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A008834 (n + 1)).toNat * A062378 (n + 1)

end

end A360540.P10517828036288277030

namespace A360540

/-- `A007948(A008834(n+1))*A062378(n+1)` -/
def P10517828036288277030.Spec : Prop :=
  ∀ n, P10517828036288277030.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P3644778304828477255

`A336643(A366765(n+1))*A368170(n+1)`
-/

namespace A360540.P3644778304828477255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A366765 (n + 1)).toNat * A368170 (n + 1)

end

end A360540.P3644778304828477255

namespace A360540

/-- `A336643(A366765(n+1))*A368170(n+1)` -/
def P3644778304828477255.Spec : Prop :=
  ∀ n, P3644778304828477255.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P13599814883702658379

`A361264(A003557((n+1)/A007947(n+1)))`
-/

namespace A360540.P13599814883702658379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361264 (A003557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A360540.P13599814883702658379

namespace A360540

/-- `A361264(A003557((n+1)/A007947(n+1)))` -/
def P13599814883702658379.Spec : Prop :=
  ∀ n, P13599814883702658379.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P10196513103819213998

`A057521((n+1)/A055231(A350390(n+1)))`
-/

namespace A360540.P10196513103819213998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (A350390 (n + 1)).toNat : ℚ))).toNat

end

end A360540.P10196513103819213998

namespace A360540

/-- `A057521((n+1)/A055231(A350390(n+1)))` -/
def P10196513103819213998.Spec : Prop :=
  ∀ n, P10196513103819213998.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P10145416365696241636

`A366765(n+1)/A055231(A350390(n+1))`
-/

namespace A360540.P10145416365696241636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366765 (n + 1) : ℚ) / (A055231 (A350390 (n + 1)).toNat : ℚ)

end

end A360540.P10145416365696241636

namespace A360540

/-- `A366765(n+1)/A055231(A350390(n+1))` -/
def P10145416365696241636.Spec : Prop :=
  ∀ n, P10145416365696241636.a n = (A360540 (n + 1) : ℚ)

end A360540

/-! ## A360540.P8478995057141748451

`A159253(A159253(n+1)/A360541(n+1))`
-/

namespace A360540.P8478995057141748451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159253 (SequenceMachineLib.roundAway ((A159253 (n + 1) : ℚ) / (A360541 (n + 1) : ℚ))).toNat

end

end A360540.P8478995057141748451

namespace A360540

/-- `A159253(A159253(n+1)/A360541(n+1))` -/
def P8478995057141748451.Spec : Prop :=
  ∀ n, P8478995057141748451.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P16250747594397773988

`A011262(A011262(n+1)/A360541(n+1))`
-/

namespace A360540.P16250747594397773988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (SequenceMachineLib.roundAway ((A011262 (n + 1) : ℚ) / (A360541 (n + 1) : ℚ))).toNat

end

end A360540.P16250747594397773988

namespace A360540

/-- `A011262(A011262(n+1)/A360541(n+1))` -/
def P16250747594397773988.Spec : Prop :=
  ∀ n, P16250747594397773988.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P13972244248732881364

`A007948(A062378(n+1)²)*A062378(n+1)`
-/

namespace A360540.P13972244248732881364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A062378 (n + 1) ^ 2).toNat * A062378 (n + 1)

end

end A360540.P13972244248732881364

namespace A360540

/-- `A007948(A062378(n+1)²)*A062378(n+1)` -/
def P13972244248732881364.Spec : Prop :=
  ∀ n, P13972244248732881364.a n = A360540 (n + 1)

end A360540

/-! ## A360540.P13864418166890470134

`A062378(n+1)*A066990(A062378(n+1)²)`
-/

namespace A360540.P13864418166890470134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 1) * A066990 (A062378 (n + 1) ^ 2).toNat

end

end A360540.P13864418166890470134

namespace A360540

/-- `A062378(n+1)*A066990(A062378(n+1)²)` -/
def P13864418166890470134.Spec : Prop :=
  ∀ n, P13864418166890470134.a n = A360540 (n + 1)

end A360540

/-!
# A360541: a(n) is the least number k such that k*n is a cubefull number (A036966).

The programs for A360541, the canonical program `A360541.P12373004355754066143` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360541 has offset 1).

The definition of A360541 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360541.P12373004355754066143

`A356193(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360541

/-- `A356193(n+1)/(n+1)` -/
def P12373004355754066143.Spec : Prop :=
  ∀ n, P12373004355754066143.a n = (A360541 (n + 1) : ℚ)

end A360541

/-! ## A360541.P8103258339868793436

`A360539(n+1)²/A329376(n+1)^3`
-/

namespace A360541.P8103258339868793436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360539 (n + 1) ^ 2 : ℚ) / (A329376 (n + 1) ^ 3 : ℚ)

end

end A360541.P8103258339868793436

namespace A360541

/-- `A360539(n+1)²/A329376(n+1)^3` -/
def P8103258339868793436.Spec : Prop :=
  ∀ n, P8103258339868793436.a n = (A360541 (n + 1) : ℚ)

end A360541

/-! ## A360541.P17426648037166848285

`A048798(A058035(n+1))`
-/

namespace A360541.P17426648037166848285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A058035 (n + 1)).toNat

end

end A360541.P17426648037166848285

namespace A360541

/-- `A048798(A058035(n+1))` -/
def P17426648037166848285.Spec : Prop :=
  ∀ n, P17426648037166848285.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P7648710261980398318

`A011262(A360539(n+1))`
-/

namespace A360541.P7648710261980398318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A360539 (n + 1)).toNat

end

end A360541.P7648710261980398318

namespace A360541

/-- `A011262(A360539(n+1))` -/
def P7648710261980398318.Spec : Prop :=
  ∀ n, P7648710261980398318.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P12811212118846203160

`A048798(A385007(n+1))`
-/

namespace A360541.P12811212118846203160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (A385007 (n + 1)).toNat

end

end A360541.P12811212118846203160

namespace A360541

/-- `A048798(A385007(n+1))` -/
def P12811212118846203160.Spec : Prop :=
  ∀ n, P12811212118846203160.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P17482907935334641964

`A365298(A366994(n+1))`
-/

namespace A360541.P17482907935334641964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365298 (A366994 (n + 1)).toNat

end

end A360541.P17482907935334641964

namespace A360541

/-- `A365298(A366994(n+1))` -/
def P17482907935334641964.Spec : Prop :=
  ∀ n, P17482907935334641964.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P2669141697852490614

`A048798((n+1)/A062379(n+1))`
-/

namespace A360541.P2669141697852490614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (n + 1) : ℚ))).toNat

end

end A360541.P2669141697852490614

namespace A360541

/-- `A048798((n+1)/A062379(n+1))` -/
def P2669141697852490614.Spec : Prop :=
  ∀ n, P2669141697852490614.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P18012839066386658539

`A390756(n+1)/A000010(n+1)`
-/

namespace A360541.P18012839066386658539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390756 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A360541.P18012839066386658539

namespace A360541

/-- `A390756(n+1)/A000010(n+1)` -/
def P18012839066386658539.Spec : Prop :=
  ∀ n, P18012839066386658539.a n = (A360541 (n + 1) : ℚ)

end A360541

/-! ## A360541.P16977585907491450621

`A392171(n+1)/A001615(n+1)`
-/

namespace A360541.P16977585907491450621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392171 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ)

end

end A360541.P16977585907491450621

namespace A360541

/-- `A392171(n+1)/A001615(n+1)` -/
def P16977585907491450621.Spec : Prop :=
  ∀ n, P16977585907491450621.a n = (A360541 (n + 1) : ℚ)

end A360541

/-! ## A360541.P6293397821268684788

`A055231(A019554(n+1))*A055231(n+1)`
-/

namespace A360541.P6293397821268684788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A019554 (n + 1)).toNat * A055231 (n + 1)

end

end A360541.P6293397821268684788

namespace A360541

/-- `A055231(A019554(n+1))*A055231(n+1)` -/
def P6293397821268684788.Spec : Prop :=
  ∀ n, P6293397821268684788.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P640936389309178602

`A055231(n+1)*A055231(A350390(n+1))`
-/

namespace A360541.P640936389309178602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A055231 (A350390 (n + 1)).toNat

end

end A360541.P640936389309178602

namespace A360541

/-- `A055231(n+1)*A055231(A350390(n+1))` -/
def P640936389309178602.Spec : Prop :=
  ∀ n, P640936389309178602.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P2027061354048601

`A055231(n+1)*A055231(A366765(n+1))`
-/

namespace A360541.P2027061354048601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A055231 (A366765 (n + 1)).toNat

end

end A360541.P2027061354048601

namespace A360541

/-- `A055231(n+1)*A055231(A366765(n+1))` -/
def P2027061354048601.Spec : Prop :=
  ∀ n, P2027061354048601.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P4197097268268464871

`A048798((n+1)/A073752(A062378(n+1)))`
-/

namespace A360541.P4197097268268464871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A073752 (A062378 (n + 1)).toNat : ℚ))).toNat

end

end A360541.P4197097268268464871

namespace A360541

/-- `A048798((n+1)/A073752(A062378(n+1)))` -/
def P4197097268268464871.Spec : Prop :=
  ∀ n, P4197097268268464871.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P14771972396357278518

`A011262(n+1)/A011262(A360540(n+1))`
-/

namespace A360541.P14771972396357278518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) : ℚ) / (A011262 (A360540 (n + 1)).toNat : ℚ)

end

end A360541.P14771972396357278518

namespace A360541

/-- `A011262(n+1)/A011262(A360540(n+1))` -/
def P14771972396357278518.Spec : Prop :=
  ∀ n, P14771972396357278518.a n = (A360541 (n + 1) : ℚ)

end A360541

/-! ## A360541.P15260828362727593090

`A087321(A360539(n+1))/A329376(n+1)`
-/

namespace A360541.P15260828362727593090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087321 (A360539 (n + 1)).toNat : ℚ) / (A329376 (n + 1) : ℚ)

end

end A360541.P15260828362727593090

namespace A360541

/-- `A087321(A360539(n+1))/A329376(n+1)` -/
def P15260828362727593090.Spec : Prop :=
  ∀ n, P15260828362727593090.a n = (A360541 (n + 1) : ℚ)

end A360541

/-! ## A360541.P18041301273874821972

`A055231(n+1)²*A055231(A000189(n+1))`
-/

namespace A360541.P18041301273874821972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2 * A055231 (A000189 (n + 1)).toNat

end

end A360541.P18041301273874821972

namespace A360541

/-- `A055231(n+1)²*A055231(A000189(n+1))` -/
def P18041301273874821972.Spec : Prop :=
  ∀ n, P18041301273874821972.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P12658346372120972705

`A055231(n+1)²*A055231(A000190(n+1))`
-/

namespace A360541.P12658346372120972705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2 * A055231 (A000190 (n + 1)).toNat

end

end A360541.P12658346372120972705

namespace A360541

/-- `A055231(n+1)²*A055231(A000190(n+1))` -/
def P12658346372120972705.Spec : Prop :=
  ∀ n, P12658346372120972705.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P16628364149919361264

`A055231(n+1)²*A055231(A003557(n+1))`
-/

namespace A360541.P16628364149919361264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2 * A055231 (A003557 (n + 1)).toNat

end

end A360541.P16628364149919361264

namespace A360541

/-- `A055231(n+1)²*A055231(A003557(n+1))` -/
def P16628364149919361264.Spec : Prop :=
  ∀ n, P16628364149919361264.a n = A360541 (n + 1)

end A360541

/-! ## A360541.P4159140192162013497

`A007947(n+1)²/A007948(A000189(n+1))`
-/

namespace A360541.P4159140192162013497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) ^ 2 : ℚ) / (A007948 (A000189 (n + 1)).toNat : ℚ)

end

end A360541.P4159140192162013497

namespace A360541

/-- `A007947(n+1)²/A007948(A000189(n+1))` -/
def P4159140192162013497.Spec : Prop :=
  ∀ n, P4159140192162013497.a n = (A360541 (n + 1) : ℚ)

end A360541

/-! ## A360541.P9463652958277322094

`A007947(n+1)²/A007948(A003557(n+1))`
-/

namespace A360541.P9463652958277322094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) ^ 2 : ℚ) / (A007948 (A003557 (n + 1)).toNat : ℚ)

end

end A360541.P9463652958277322094

namespace A360541

/-- `A007947(n+1)²/A007948(A003557(n+1))` -/
def P9463652958277322094.Spec : Prop :=
  ∀ n, P9463652958277322094.a n = (A360541 (n + 1) : ℚ)

end A360541

/-!
# A360542: Primes prime(k) such that ( 9*(prime(k-1) - prime(k-2)) ) | (prime(k)^3 + 1).

The programs for A360542, there is no canonical definition to state claims against.
-/

/-! ## A360542.P13534517563250147343

`A151800(A023230(n+1)%A003094(n+4))`
-/

namespace A360542.P13534517563250147343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A023230 (n + 1)) (A003094 (n + 4))).toNat

end

end A360542.P13534517563250147343

/-! ## A360542.P17268454211788467459

`A023230(n+1)+A001316(A002001(n))`
-/

namespace A360542.P17268454211788467459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023230 (n + 1) + A001316 (A002001 n).toNat

end

end A360542.P17268454211788467459

/-! ## A360542.P14370485200445499511

`A081761(A023230(n+1))%A135411(3*n+5)`
-/

namespace A360542.P14370485200445499511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081761 (A023230 (n + 1)).toNat) (A135411 (3 * n + 5))

end

end A360542.P14370485200445499511

/-!
# A360543: a(n) = number of numbers k < n, gcd(k, n) > 1, such that omega(k) > omega(n) and rad(n) | rad(k), where omega(n) = A001221(n) and rad(n) = A007947(n).

The programs for A360543, there is no canonical definition to state claims against.
-/

/-! ## A360543.P1198669975107205053

`A243823(n+1)-A360480(n+1)`
-/

namespace A360543.P1198669975107205053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (n + 1) - A360480 (n + 1)

end

end A360543.P1198669975107205053

/-! ## A360543.P3091390984636271035

`A045763(n+1)-A243822(n+1)-A360480(n+1)`
-/

namespace A360543.P3091390984636271035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - A243822 (n + 1) - A360480 (n + 1)

end

end A360543.P3091390984636271035

/-! ## A360543.P11318160908991456444

`A003557(n+1)-A008479(n+1)`
-/

namespace A360543.P11318160908991456444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A008479 (n + 1)

end

end A360543.P11318160908991456444

/-! ## A360543.P1483363083842286911

`A010847(n+1)+A365788(n+1)-A010848(n+1)`
-/

namespace A360543.P1483363083842286911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) + (A365788 (n + 1) - A010848 (n + 1))

end

end A360543.P1483363083842286911

/-! ## A360543.P16318004245578463164

`A010847(n+1)-(A360480(n+1)+A109606(n+1))`
-/

namespace A360543.P16318004245578463164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) - (A360480 (n + 1) + A109606 (n + 1))

end

end A360543.P16318004245578463164

/-! ## A360543.P8600236822160947566

`A003557(n+1)+A375011(n+1)-A373738(n+1)`
-/

namespace A360543.P8600236822160947566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A375011 (n + 1) - A373738 (n + 1))

end

end A360543.P8600236822160947566

/-! ## A360543.P6097067630319561415

`A243822(n+1)+A300858(n+1)-A360480(n+1)`
-/

namespace A360543.P6097067630319561415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) + (A300858 (n + 1) - A360480 (n + 1))

end

end A360543.P6097067630319561415

/-! ## A360543.P4658968817420656923

`A010847(n+1)+1-A000010(n+1)-A360480(n+1)`
-/

namespace A360543.P4658968817420656923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010847 (n + 1) + (1 - A000010 (n + 1)) - A360480 (n + 1)

end

end A360543.P4658968817420656923

/-!
# A360544: E.g.f. satisfies A(x) = exp( x * ( exp(x) * A(x) )^(3/2) ).

The programs for A360544, there is no canonical definition to state claims against.
-/

/-! ## A360544.P334124223843558115

`A001651(A301386(n))`
-/

namespace A360544.P334124223843558115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A301386 n).toNat

end

end A360544.P334124223843558115

/-!
# A360545: E.g.f. satisfies A(x) = x * exp( 3*(x + A(x))/2 ).

The programs for A360545, there is no canonical definition to state claims against.
-/

/-! ## A360545.P15922291905541529551

`A027471(n+1)*A356955(A099947(n+1))`
-/

namespace A360545.P15922291905541529551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) * A356955 (A099947 (n + 1)).toNat

end

end A360545.P15922291905541529551

/-!
# A360547: E.g.f. satisfies A(x) = exp( x * ( exp(x) * A(x) )^2 ).

The programs for A360547, there is no canonical definition to state claims against.
-/

/-! ## A360547.P12413683399237583648

`A121229(A099715(n))`
-/

namespace A360547.P12413683399237583648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121229 (A099715 n).toNat

end

end A360547.P12413683399237583648

/-!
# A360548: E.g.f. satisfies A(x) = x * exp( 2*(x + A(x)) ).

The programs for A360548, there is no canonical definition to state claims against.
-/

/-! ## A360548.P282643692420771347

`A011782(n)*A216857(n)`
-/

namespace A360548.P282643692420771347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A216857 n

end

end A360548.P282643692420771347

/-! ## A360548.P13823416097264691920

`A131577(n)*A216857(n)`
-/

namespace A360548.P13823416097264691920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A216857 n

end

end A360548.P13823416097264691920

/-! ## A360548.P1465415284254419002

`∑[A034008(n)]*A216857(n)`
-/

namespace A360548.P1465415284254419002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A216857 n

end

end A360548.P1465415284254419002

/-! ## A360548.P9381604036569041453

`A034008(n+1)*A216857(n)`
-/

namespace A360548.P9381604036569041453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) * A216857 n

end

end A360548.P9381604036569041453

/-! ## A360548.P14100493395019798861

`A000079(n)/2*A216857(n)`
-/

namespace A360548.P14100493395019798861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A216857 n : ℚ)

end

end A360548.P14100493395019798861

/-!
# A360550: Numbers > 1 whose distinct prime indices have integer median.

The programs for A360550, there is no canonical definition to state claims against.
-/

/-! ## A360550.P17844994604856384928

`comp[A325700(n+1)-1]+1`
-/

namespace A360550.P17844994604856384928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360550.P17844994604856384928

/-! ## A360550.P1767267618404899655

`lt[0, A087207(n+1)²%3]+1`
-/

namespace A360550.P1767267618404899655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087207 (n + 1) ^ 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360550.P1767267618404899655

/-! ## A360550.P14973405092810359721

`comp[∪[A155018(n), A325700(n+1)]]`
-/

namespace A360550.P14973405092810359721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155018 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A360550.P14973405092810359721

/-! ## A360550.P14926329656299700633

`∪[A000977(n+1), A326621(n+1)]`
-/

namespace A360550.P14926329656299700633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360550.P14926329656299700633

/-! ## A360550.P16230679192964419530

`∪[A030230(n+1), A326621(n+1)]`
-/

namespace A360550.P16230679192964419530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360550.P16230679192964419530

/-! ## A360550.P3114940546695234500

`∪[A033992(n+1), A326621(n+1)]`
-/

namespace A360550.P3114940546695234500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360550.P3114940546695234500

/-! ## A360550.P4770172923248579805

`∪[A000977(n+1), A391226(n+1)]`
-/

namespace A360550.P4770172923248579805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360550.P4770172923248579805

/-! ## A360550.P6350797447313758887

`∪[A030230(n+1), A391226(n+1)]`
-/

namespace A360550.P6350797447313758887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360550.P6350797447313758887

/-! ## A360550.P8386953080886897889

`∪[A033992(n+1), A391226(n+1)]`
-/

namespace A360550.P8386953080886897889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360550.P8386953080886897889

/-! ## A360550.P7336261784107943721

`∪[A098904(n+1), A326621(n+1)]`
-/

namespace A360550.P7336261784107943721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360550.P7336261784107943721

/-!
# A360551: Numbers > 1 whose distinct prime indices have non-integer median.

The programs for A360551, there is no canonical definition to state claims against.
-/

/-! ## A360551.P8982493394756882047

`eq[2, A326620(n+2)]+2`
-/

namespace A360551.P8982493394756882047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360551.P8982493394756882047

/-! ## A360551.P4120665597226805239

`eq[2, A326620(A233583(n+1))]`
-/

namespace A360551.P4120665597226805239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360551.P4120665597226805239

/-! ## A360551.P13372950116019529538

`eq[9, A333352(A353351(∏{p}[n, #])+3)]`
-/

namespace A360551.P13372950116019529538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (A353351 (∏ p ∈ Nat.primeFactors (f3 n), p) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360551.P13372950116019529538

/-! ## A360551.P13585001072082574707

`eq[A076479(n+1), A324966(n+1)]+1`
-/

namespace A360551.P13585001072082574707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360551.P13585001072082574707

/-! ## A360551.P2256443113002223606

`eq[A099636(n+1)², A324966(n+1)]+1`
-/

namespace A360551.P2256443113002223606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360551.P2256443113002223606

/-! ## A360551.P3541576043615927194

`A325700(n+2)`
-/

namespace A360551.P3541576043615927194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325700 (n + 2)

end

end A360551.P3541576043615927194

/-! ## A360551.P6810488869070237802

`filter[A390988(n+1), A215480(#)]`
-/

namespace A360551.P6810488869070237802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A360551.P6810488869070237802

/-! ## A360551.P13407646220917077039

`∩[A007774(n+1), A390988(n+1)]`
-/

namespace A360551.P13407646220917077039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360551.P13407646220917077039

/-! ## A360551.P10481993554771074299

`∩[A030231(n+1), A390988(n+1)]`
-/

namespace A360551.P10481993554771074299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360551.P10481993554771074299

/-!
# A360552: Numbers > 1 whose distinct prime factors have integer median.

The programs for A360552, there is no canonical definition to state claims against.
-/

/-! ## A360552.P13422360378919541882

`eq[1, A361631(n+2)]+2`
-/

namespace A360552.P13422360378919541882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361631 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360552.P13422360378919541882

/-! ## A360552.P12987570150757390251

`comp[eq[4, A360112(n+2)]]+2`
-/

namespace A360552.P12987570150757390251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360112 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A360552.P12987570150757390251

/-! ## A360552.P10957340432007794656

`comp[n%2*A290480(n+1)]`
-/

namespace A360552.P10957340432007794656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A290480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360552.P10957340432007794656

/-! ## A360552.P14862365793123581140

`∪[2*n+3, A030230(n+1)]`
-/

namespace A360552.P14862365793123581140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360552.P14862365793123581140

/-! ## A360552.P5327578383435197057

`∪[2*n+3, A098904(n+1)]`
-/

namespace A360552.P5327578383435197057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360552.P5327578383435197057

/-! ## A360552.P10723672544469445016

`comp[A304404(2*(n+1))-char[1]]`
-/

namespace A360552.P10723672544469445016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304404 (2 * (n + 1)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360552.P10723672544469445016

/-! ## A360552.P11040081334581172639

`eq[0, and(1, C(5, A048669(n+1)))]+1`
-/

namespace A360552.P11040081334581172639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose 5 (A048669 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360552.P11040081334581172639

/-! ## A360552.P10336160737578548343

`comp[(2*n)^a(A001221(2*n))]` with `a(0)=1, a(1)=0`
-/

namespace A360552.P10336160737578548343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (2 * n) ^ f1 (A001221 (2 * n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A360552.P10336160737578548343

/-! ## A360552.P3122605987106728216

`∪[A030230(n+1), A020742(n)]`
-/

namespace A360552.P3122605987106728216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360552.P3122605987106728216

/-!
# A360553: Numbers > 1 whose unordered prime signature has integer median.

The programs for A360553, there is no canonical definition to state claims against.
-/

/-! ## A360553.P9557983305463376516

`comp[A187039(n+1)-1]+1`
-/

namespace A360553.P9557983305463376516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360553.P9557983305463376516

/-! ## A360553.P15023193287709276846

`comp[A360554(n+1)-2]+2`
-/

namespace A360553.P15023193287709276846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A360553.P15023193287709276846

/-! ## A360553.P15860105176542465447

`lt[val(A303386(n+2), 2), 2]+2`
-/

namespace A360553.P15860105176542465447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A303386 (n + 2)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A360553.P15860105176542465447

/-! ## A360553.P17849431561280286064

`comp[lt[A316523(n+1)², 1]]+1`
-/

namespace A360553.P17849431561280286064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316523 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A360553.P17849431561280286064

/-! ## A360553.P16445158883817434229

`lt[1/(n+1), A001055(n+1)%4]+1`
-/

namespace A360553.P16445158883817434229
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A360553.P16445158883817434229

/-! ## A360553.P14420844171778209511

`∪[A067340(n+1), A014004(n)]`
-/

namespace A360553.P14420844171778209511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014004 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360553.P14420844171778209511

/-! ## A360553.P5314291517081485153

`∪[A067340(n+1), A017233(n)]`
-/

namespace A360553.P5314291517081485153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360553.P5314291517081485153

/-! ## A360553.P14971625449598452272

`∪[A067340(n+1), A017449(n)]`
-/

namespace A360553.P14971625449598452272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360553.P14971625449598452272

/-! ## A360553.P8375666377089982356

`∪[A067340(n+1), A018922(n)]`
-/

namespace A360553.P8375666377089982356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360553.P8375666377089982356

/-!
# A360554: Numbers > 1 whose unordered prime signature has non-integer median.

The programs for A360554, there is no canonical definition to state claims against.
-/

/-! ## A360554.P15776927631540884

`A187039(n+2)`
-/

namespace A360554.P15776927631540884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 2)

end

end A360554.P15776927631540884

/-! ## A360554.P2945296025098198573

`eq[2, A088530(n+2)]+2`
-/

namespace A360554.P2945296025098198573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A360554.P2945296025098198573

/-! ## A360554.P1004589836406289098

`record[A327498(A070011(n+1))]`
-/

namespace A360554.P1004589836406289098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A070011 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360554.P1004589836406289098

/-! ## A360554.P1593929380208033591

`filter[A007774(n+1), A066829(#)]`
-/

namespace A360554.P1593929380208033591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A360554.P1593929380208033591

/-! ## A360554.P667271090313521524

`filter[A030231(n+1), A066829(#)]`
-/

namespace A360554.P667271090313521524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A360554.P667271090313521524

/-! ## A360554.P3273169795260144376

`filter[A123711(n+1), A066829(#)]`
-/

namespace A360554.P3273169795260144376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A360554.P3273169795260144376

/-! ## A360554.P14216727675443640045

`filter[A162645(n+1), A066829(#)]`
-/

namespace A360554.P14216727675443640045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A360554.P14216727675443640045

/-! ## A360554.P9600858255243149056

`filter[A026422(n+1), A215480(#)]`
-/

namespace A360554.P9600858255243149056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A360554.P9600858255243149056

/-! ## A360554.P11266047169477055871

`filter[A026424(n+1), A215480(#)]`
-/

namespace A360554.P11266047169477055871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A360554.P11266047169477055871

/-! ## A360554.P16572208104581611047

`filter[A177425(n+1), A066829(#)]`
-/

namespace A360554.P16572208104581611047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A360554.P16572208104581611047

/-!
# A360555: Two times the median of the first differences of the 0-prepended prime indices of n > 1.

The programs for A360555, there is no canonical definition to state claims against.
-/

/-! ## A360555.P18352628180739091527

`A360005(A325390(n+2))-2`
-/

namespace A360555.P18352628180739091527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (A325390 (n + 2)).toNat - 2

end

end A360555.P18352628180739091527

/-!
# A360556: Numbers > 1 whose first differences of 0-prepended prime indices have integer median.

The programs for A360556, there is no canonical definition to state claims against.
-/

/-! ## A360556.P7680938498680504214

`comp[A360557(A002487(n+4))%A343531(n+1)]`
-/

namespace A360556.P7680938498680504214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360557 (A002487 (n + 4)).toNat) (A343531 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A360556.P7680938498680504214

/-! ## A360556.P8541822796702717285

`lt[A121373(n), A324874(A079047(2*n+3))]`
-/

namespace A360556.P8541822796702717285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324874 (A079047 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360556.P8541822796702717285

/-! ## A360556.P11732407470246665625

`lt[A338156(n+2), A356156(A007290(2*n+3))]`
-/

namespace A360556.P11732407470246665625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338156 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356156 (A007290 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360556.P11732407470246665625

/-! ## A360556.P1426724619845148228

`lt[A006928(A371291(2*(n+1))), A251141(3*n+5)]`
-/

namespace A360556.P1426724619845148228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A371291 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251141 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360556.P1426724619845148228

/-!
# A360557: Numbers > 1 whose sorted first differences of 0-prepended prime indices have non-integer median.

The programs for A360557, there is no canonical definition to state claims against.
-/

/-! ## A360557.P15848253036170492087

`∩[A360553(n+1), comp[A360556(n+1)]]`
-/

namespace A360557.P15848253036170492087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360556 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A360557.P15848253036170492087

/-!
# A360558: Numbers whose multiset of prime factors (or indices, see A112798) has more adjacent equalities (or parts that have appeared before) than distinct parts.

The programs for A360558, there is no canonical definition to state claims against.
-/

/-! ## A360558.P17094896475882470881

`lt[2, A070014(n+2)]+2`
-/

namespace A360558.P17094896475882470881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A360558.P17094896475882470881

/-! ## A360558.P4352841364871674558

`lt[A361205(round(acot(n)+n)), 0]`
-/

namespace A360558.P4352841364871674558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361205 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A360558.P4352841364871674558

/-! ## A360558.P7175073057740853907

`lt[2, A070014(A233583(n+1))]`
-/

namespace A360558.P7175073057740853907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A360558.P7175073057740853907

/-! ## A360558.P9290871503169346495

`lt[A001221(n+1), A046660(n+1)]+1`
-/

namespace A360558.P9290871503169346495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360558.P9290871503169346495

/-! ## A360558.P4837306754624037102

`lt[A034444(n+1), A351418(n+1)]+1`
-/

namespace A360558.P4837306754624037102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360558.P4837306754624037102

/-! ## A360558.P6488287972765202110

`lt[2*A001221(n+1), A001222(n+1)]+1`
-/

namespace A360558.P6488287972765202110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360558.P6488287972765202110

/-!
# A360559: Alternating partial sum of A006530.

The programs for A360559, the canonical program `A360559.P9633687527114646811` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360559 has offset 1).

The definition of A360559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360559.P9633687527114646811

`∑[(-1)^n*A006530(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360559

/-- `∑[(-1)^n*A006530(n+1)]` -/
def P9633687527114646811.Spec : Prop :=
  ∀ n, P9633687527114646811.a n = A360559 (n + 1)

theorem P9633687527114646811.correct : P9633687527114646811.Spec := by
  intro n
  simp only [A360559, Nat.add_sub_cancel]

end A360559

/-! ## A360559.P184123856888195799

`∑[(-1)^n*A002034(∏{p}[n+1, #])]`
-/

namespace A360559.P184123856888195799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002034 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P184123856888195799

namespace A360559

/-- `∑[(-1)^n*A002034(∏{p}[n+1, #])]` -/
def P184123856888195799.Spec : Prop :=
  ∀ n, P184123856888195799.a n = A360559 (n + 1)

end A360559

/-! ## A360559.P9858934698020668715

`∑[A088387(∏{p}[n+1, #])/(-1)^n]`
-/

namespace A360559.P9858934698020668715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088387 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P9858934698020668715

namespace A360559

/-- `∑[A088387(∏{p}[n+1, #])/(-1)^n]` -/
def P9858934698020668715.Spec : Prop :=
  ∀ n, P9858934698020668715.a n = (A360559 (n + 1) : ℚ)

end A360559

/-! ## A360559.P5122896934789991822

`∑[A006530(n+1)*A033999(n)]`
-/

namespace A360559.P5122896934789991822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P5122896934789991822

namespace A360559

/-- `∑[A006530(n+1)*A033999(n)]` -/
def P5122896934789991822.Spec : Prop :=
  ∀ n, P5122896934789991822.a n = A360559 (n + 1)

theorem P5122896934789991822.correct : P5122896934789991822.Spec := by
  intro n
  simp only [A360559, Nat.add_sub_cancel, A360559.P5122896934789991822.f1, A360559.P5122896934789991822.a, A360559.P9633687527114646811.f1, A360559.P9633687527114646811.a, A006530, A006530.P13372528560459906635.a, A033999, A033999.P17703899380244199787.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360559

/-! ## A360559.P18292656037115533577

`1-∑[A006530(n+1)*A062157(n)]`
-/

namespace A360559.P18292656037115533577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P18292656037115533577

namespace A360559

/-- `1-∑[A006530(n+1)*A062157(n)]` -/
def P18292656037115533577.Spec : Prop :=
  ∀ n, P18292656037115533577.a n = A360559 (n + 1)

end A360559

/-! ## A360559.P17357200564976480519

`∑[A006530(n+1)*A009001(2*n)]`
-/

namespace A360559.P17357200564976480519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P17357200564976480519

namespace A360559

/-- `∑[A006530(n+1)*A009001(2*n)]` -/
def P17357200564976480519.Spec : Prop :=
  ∀ n, P17357200564976480519.a n = A360559 (n + 1)

end A360559

/-! ## A360559.P4417546896342953147

`∑[A002034(∏{p}[n+1, #])*A033999(n)]`
-/

namespace A360559.P4417546896342953147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f2 n), p) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P4417546896342953147

namespace A360559

/-- `∑[A002034(∏{p}[n+1, #])*A033999(n)]` -/
def P4417546896342953147.Spec : Prop :=
  ∀ n, P4417546896342953147.a n = A360559 (n + 1)

end A360559

/-! ## A360559.P14966627131011647585

`∑[A053585(∏{p}[n+1, #])/A033999(n)]`
-/

namespace A360559.P14966627131011647585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053585 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P14966627131011647585

namespace A360559

/-- `∑[A053585(∏{p}[n+1, #])/A033999(n)]` -/
def P14966627131011647585.Spec : Prop :=
  ∀ n, P14966627131011647585.a n = (A360559 (n + 1) : ℚ)

end A360559

/-! ## A360559.P10838048351131681799

`∑[A217434(∏{p}[n+1, #])/A033999(n)]`
-/

namespace A360559.P10838048351131681799
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217434 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P10838048351131681799

namespace A360559

/-- `∑[A217434(∏{p}[n+1, #])/A033999(n)]` -/
def P10838048351131681799.Spec : Prop :=
  ∀ n, P10838048351131681799.a n = (A360559 (n + 1) : ℚ)

end A360559

/-! ## A360559.P16721316957670397383

`∑[A020639(A345941(n+1))*A033999(n)]`
-/

namespace A360559.P16721316957670397383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A345941 (n + 1)).toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P16721316957670397383

namespace A360559

/-- `∑[A020639(A345941(n+1))*A033999(n)]` -/
def P16721316957670397383.Spec : Prop :=
  ∀ n, P16721316957670397383.a n = A360559 (n + 1)

end A360559

/-! ## A360559.P7248690768889442901

`∑[A006530(n+1)*A057077(2*n)]`
-/

namespace A360559.P7248690768889442901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360559.P7248690768889442901

namespace A360559

/-- `∑[A006530(n+1)*A057077(2*n)]` -/
def P7248690768889442901.Spec : Prop :=
  ∀ n, P7248690768889442901.a n = A360559 (n + 1)

end A360559

/-!
# A360561: a(n) is the least multiple of n that is a Zumkeller number (A083207).

The programs for A360561, there is no canonical definition to state claims against.
-/

/-! ## A360561.P2992003700873570490

`A360562(n+1)*(n+1)`
-/

namespace A360561.P2992003700873570490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360562 (n + 1) * (n + 1 : ℤ)

end

end A360561.P2992003700873570490

/-! ## A360561.P12597997810010051319

`A124010(A255184(3*n+4))*A254572(n+1)`
-/

namespace A360561.P12597997810010051319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A255184 (3 * n + 4)).toNat * A254572 (n + 1)

end

end A360561.P12597997810010051319

/-! ## A360561.P4353853552138672584

`A059895(A000079(n))*A254572(n+1)`
-/

namespace A360561.P4353853552138672584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (A000079 n).toNat * A254572 (n + 1)

end

end A360561.P4353853552138672584

/-! ## A360561.P6273554421016457265

`A146712(A146654(n+1))*A254572(n+1)`
-/

namespace A360561.P6273554421016457265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146712 (A146654 (n + 1)).toNat * A254572 (n + 1)

end

end A360561.P6273554421016457265

/-! ## A360561.P12105565367358538945

`A146712(A146686(n+1))*A254572(n+1)`
-/

namespace A360561.P12105565367358538945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146712 (A146686 (n + 1)).toNat * A254572 (n + 1)

end

end A360561.P12105565367358538945

/-!
# A360562: a(n) is the least k such that k*n is a Zumkeller number (A083207).

The programs for A360562, there is no canonical definition to state claims against.
-/

/-! ## A360562.P4014459757549144058

`A360561(n+1)/(n+1)`
-/

namespace A360562.P4014459757549144058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360561 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A360562.P4014459757549144058

/-! ## A360562.P2278526029829841759

`A378662(A002426(n))+A254571(n+1)`
-/

namespace A360562.P2278526029829841759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (A002426 n).toNat + A254571 (n + 1)

end

end A360562.P2278526029829841759

/-! ## A360562.P11815739441238579852

`A050985(A048798(n+1)*A360561(n+1))`
-/

namespace A360562.P11815739441238579852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A048798 (n + 1) * A360561 (n + 1)).toNat

end

end A360562.P11815739441238579852

/-! ## A360562.P8936945712242700673

`A050985(A254767(n+1)*A360561(n+1))`
-/

namespace A360562.P8936945712242700673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A254767 (n + 1) * A360561 (n + 1)).toNat

end

end A360562.P8936945712242700673

/-!
# A360564: Numerators of breadth-first numerator-denominator-incrementing enumeration of rationals in (0,1).

The programs for A360564, there is no canonical definition to state claims against.
-/

/-! ## A360564.P17345691329164356479

`A356226(A124769(n)+A008277(n+1))`
-/

namespace A360564.P17345691329164356479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356226 (A124769 n + A008277 (n + 1)).toNat

end

end A360564.P17345691329164356479

/-! ## A360564.P9370256731035018177

`A356936(2*A267817(n+1))`
-/

namespace A360564.P9370256731035018177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356936 (2 * A267817 (n + 1)).toNat

end

end A360564.P9370256731035018177

/-! ## A360564.P17185385218097443576

`A227349(C(xor(5, n), A000700(n)))`
-/

namespace A360564.P17185385218097443576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227349 (Nat.choose (Nat.xor 5 n) (A000700 n).toNat)

end

end A360564.P17185385218097443576

/-! ## A360564.P1416015682662023463

`gcd(∑[A084617(n+1)], A340057(n+1))`
-/

namespace A360564.P1416015682662023463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084617 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A340057 (n + 1))

end

end A360564.P1416015682662023463

/-! ## A360564.P539291956192300026

`A302243(A319655(n)+A077492(n+1))`
-/

namespace A360564.P539291956192300026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A319655 n + A077492 (n + 1)).toNat

end

end A360564.P539291956192300026

/-!
# A360565: Denominators of breadth-first numerator-denominator-incrementing enumeration of rationals in (0,1).

The programs for A360565, there is no canonical definition to state claims against.
-/

/-! ## A360565.P13407585110629671772

`A182973(comp[A229729(n)]%A067191(n+1))`
-/

namespace A360565.P13407585110629671772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229729 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182973 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A067191 (n + 1))).toNat

end

end A360565.P13407585110629671772

/-! ## A360565.P1852068407249686596

`A182973(A004709(n+1)%A270792(3*n+5))`
-/

namespace A360565.P1852068407249686596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182973 (Int.tmod (A004709 (n + 1)) (A270792 (3 * n + 5))).toNat

end

end A360565.P1852068407249686596

/-! ## A360565.P7905486374007161562

`A343934(n+1)+A034460(A033844(n))`
-/

namespace A360565.P7905486374007161562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343934 (n + 1) + A034460 (A033844 n).toNat

end

end A360565.P7905486374007161562

/-! ## A360565.P2902611984177788316

`A343934(n+1)+A000120(A273692(n))`
-/

namespace A360565.P2902611984177788316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343934 (n + 1) + A000120 (A273692 n).toNat

end

end A360565.P2902611984177788316

/-! ## A360565.P10841161993606530438

`A343934(n+1)+A133872(A277799(n))`
-/

namespace A360565.P10841161993606530438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343934 (n + 1) + A133872 (A277799 n).toNat

end

end A360565.P10841161993606530438

/-!
# A360566: Level sizes of numerator-denominator-incrementing tree of rationals in (0,1).

The programs for A360566, there is no canonical definition to state claims against.
-/

/-! ## A360566.P9996598963520524133

`Δ[eq[1, A360564(n+1)]]`
-/

namespace A360566.P9996598963520524133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360564 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A360566.P9996598963520524133

/-! ## A360566.P9155882367958742544

`Δ[eq[1, A293247(2*n+1)]]`
-/

namespace A360566.P9155882367958742544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293247 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A360566.P9155882367958742544

/-! ## A360566.P17820223796728004273

`A332025(A308089(n+1))`
-/

namespace A360566.P17820223796728004273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332025 (A308089 (n + 1)).toNat

end

end A360566.P17820223796728004273

/-! ## A360566.P2567752335616839116

`A163377(A306897(n+2))`
-/

namespace A360566.P2567752335616839116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163377 (A306897 (n + 2)).toNat

end

end A360566.P2567752335616839116

/-! ## A360566.P4482882557305650758

`A124767(A178943(n+1)+round(2^(n-1)))`
-/

namespace A360566.P4482882557305650758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A178943 (n + 1) + SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A360566.P4482882557305650758

/-!
# A360567: Primes p such that the nearest integer to sqrt(p) is also prime.

The programs for A360567, the canonical program `A360567.P16353749552312502386` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360567 has offset 1).

The definition of A360567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360567.P16353749552312502386

`p?[∑[2-Δ[A143536(n+1)]]+2]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A360567

/-- `p?[∑[2-Δ[A143536(n+1)]]+2]` -/
def P16353749552312502386.Spec : Prop :=
  ∀ n, P16353749552312502386.a n = A360567 (n + 1)

theorem P16353749552312502386.correct : P16353749552312502386.Spec := by
  intro n
  simp only [A360567, Nat.add_sub_cancel]

end A360567

/-! ## A360567.P12144812901209110369

`p?[eq[2, A001222(A284359(n))]]`
-/

namespace A360567.P12144812901209110369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A284359 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A360567.P12144812901209110369

namespace A360567

/-- `p?[eq[2, A001222(A284359(n))]]` -/
def P12144812901209110369.Spec : Prop :=
  ∀ n, (P12144812901209110369.a n : ℤ) = A360567 (n + 1)

end A360567

/-! ## A360567.P3691705286878570692

`eq[A217668(n), A357477(n+1)]`
-/

namespace A360567.P3691705286878570692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360567.P3691705286878570692

namespace A360567

/-- `eq[A217668(n), A357477(n+1)]` -/
def P3691705286878570692.Spec : Prop :=
  ∀ n, (P3691705286878570692.a n : ℤ) = A360567 (n + 1)

end A360567

/-! ## A360567.P5797155807434664771

`eq[A357477(n+1), A370120(n)]`
-/

namespace A360567.P5797155807434664771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360567.P5797155807434664771

namespace A360567

/-- `eq[A357477(n+1), A370120(n)]` -/
def P5797155807434664771.Spec : Prop :=
  ∀ n, (P5797155807434664771.a n : ℤ) = A360567 (n + 1)

end A360567

/-! ## A360567.P15873766930648126165

`p?[eq[2, A000005(A349520(n+1))]]`
-/

namespace A360567.P15873766930648126165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A349520 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A360567.P15873766930648126165

namespace A360567

/-- `p?[eq[2, A000005(A349520(n+1))]]` -/
def P15873766930648126165.Spec : Prop :=
  ∀ n, (P15873766930648126165.a n : ℤ) = A360567 (n + 1)

end A360567

/-! ## A360567.P5363531126200583385

`p?[eq[A000194(n), A357899(n+1)]]`
-/

namespace A360567.P5363531126200583385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357899 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A360567.P5363531126200583385

namespace A360567

/-- `p?[eq[A000194(n), A357899(n+1)]]` -/
def P5363531126200583385.Spec : Prop :=
  ∀ n, (P5363531126200583385.a n : ℤ) = A360567 (n + 1)

end A360567

/-! ## A360567.P10463780961795880150

`p?[eq[A142150(n)+1, A357477(n+1)]]`
-/

namespace A360567.P10463780961795880150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357477 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A360567.P10463780961795880150

namespace A360567

/-- `p?[eq[A142150(n)+1, A357477(n+1)]]` -/
def P10463780961795880150.Spec : Prop :=
  ∀ n, (P10463780961795880150.a n : ℤ) = A360567 (n + 1)

end A360567

/-!
# A360568: Number of divisors d of n such that n - d is not square.

The programs for A360568, there is no canonical definition to state claims against.
-/

/-! ## A360568.P15087468071519103571

`A000005(n+1)-A323071(A286325(n+1))`
-/

namespace A360568.P15087468071519103571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A323071 (A286325 (n + 1)).toNat

end

end A360568.P15087468071519103571

/-! ## A360568.P15970362947611300059

`A182850(n+1)+A016413(A129012(n+3))`
-/

namespace A360568.P15970362947611300059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1) + A016413 (A129012 (n + 3)).toNat

end

end A360568.P15970362947611300059

/-! ## A360568.P4161880176110800213

`A329747(A164308(3*(n+1)))+A329747(n+1)`
-/

namespace A360568.P4161880176110800213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A164308 (3 * (n + 1))).toNat + A329747 (n + 1)

end

end A360568.P4161880176110800213

/-! ## A360568.P15156677613267945773

`(A116631(n+1)+A036717(2*n))%A000005(n+1)`
-/

namespace A360568.P15156677613267945773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116631 (n + 1) + A036717 (2 * n)) (A000005 (n + 1))

end

end A360568.P15156677613267945773

/-! ## A360568.P9625821699882854656

`A316824(A000031(n))+A307409(n+1)`
-/

namespace A360568.P9625821699882854656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A000031 n).toNat + A307409 (n + 1)

end

end A360568.P9625821699882854656

/-!
# A360569: a(n) = floor(Product_{k=1..n} log(prime(k))).

The programs for A360569, the canonical program `A360569.P16248846761509437217` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360569 has offset 1).

The definition of A360569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360569.P16248846761509437217

`floor(∏[log(A000040(n+1))])`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360569

/-- `floor(∏[log(A000040(n+1))])` -/
def P16248846761509437217.Spec : Prop :=
  ∀ n, P16248846761509437217.a n = A360569 (n + 1)

theorem P16248846761509437217.correct : P16248846761509437217.Spec := by
  intro n
  simp only [A360569, Nat.add_sub_cancel]

end A360569

/-! ## A360569.P6586854854622488732

`floor(∏[log(A008578(n+2))])`
-/

namespace A360569.P6586854854622488732
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A008578 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A360569.P6586854854622488732

namespace A360569

/-- `floor(∏[log(A008578(n+2))])` -/
def P6586854854622488732.Spec : Prop :=
  ∀ n, P6586854854622488732.a n = A360569 (n + 1)

end A360569

/-! ## A360569.P9589578465333466554

`floor(∏[log(A182986(n+2))])`
-/

namespace A360569.P9589578465333466554
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A182986 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A360569.P9589578465333466554

namespace A360569

/-- `floor(∏[log(A182986(n+2))])` -/
def P9589578465333466554.Spec : Prop :=
  ∀ n, P9589578465333466554.a n = A360569 (n + 1)

end A360569

/-! ## A360569.P6986932600589913862

`floor(∏[record[log(A006530(n+2))]])`
-/

namespace A360569.P6986932600589913862
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A360569.P6986932600589913862

namespace A360569

/-- `floor(∏[record[log(A006530(n+2))]])` -/
def P6986932600589913862.Spec : Prop :=
  ∀ n, P6986932600589913862.a n = A360569 (n + 1)

end A360569

/-! ## A360569.P6666597738919744883

`floor(∏[record[log(A020639(n+2))]])`
-/

namespace A360569.P6666597738919744883
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A360569.P6666597738919744883

namespace A360569

/-- `floor(∏[record[log(A020639(n+2))]])` -/
def P6666597738919744883.Spec : Prop :=
  ∀ n, P6666597738919744883.a n = A360569 (n + 1)

end A360569

/-!
# A360570: Numbers m such that m concatenated with k produces a cube for some 0 <= k <= m.

The programs for A360570, there is no canonical definition to state claims against.
-/

/-! ## A360570.P8261791441704177565

`lt[A245631(n+1), n]+1`
-/

namespace A360570.P8261791441704177565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245631 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A360570.P8261791441704177565

/-!
# A360571: Triangle read by rows: T(n,k) is the k-th Lie-Betti number of the path graph on n-vertices, n >= 1, 0 <= k <= 2*n - 1.

The programs for A360571, there is no canonical definition to state claims against.
-/

/-! ## A360571.P16705530099722921079

`A120835(A034871(n))`
-/

namespace A360571.P16705530099722921079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A034871 n).toNat

end

end A360571.P16705530099722921079

/-! ## A360571.P13958675178071463889

`A076105(A088459(n+1)%A064595(n+1))`
-/

namespace A360571.P13958675178071463889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076105 (Int.tmod (A088459 (n + 1)) (A064595 (n + 1))).toNat

end

end A360571.P13958675178071463889

/-! ## A360571.P7446073319061568921

`A076105(A088459(n+1))%A061978(n+2)`
-/

namespace A360571.P7446073319061568921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076105 (A088459 (n + 1)).toNat) (A061978 (n + 2))

end

end A360571.P7446073319061568921

/-!
# A360573: Odd numbers with exactly three zeros in their binary expansion.

The programs for A360573, there is no canonical definition to state claims against.
-/

/-! ## A360573.P18298357723336383237

`2*A379269(n+1)+1`
-/

namespace A360573.P18298357723336383237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379269 (n + 1) + 1

end

end A360573.P18298357723336383237

/-! ## A360573.P18272774430367782614

`2*eq[3, A023416(n)]+1`
-/

namespace A360573.P18272774430367782614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360573.P18272774430367782614

/-! ## A360573.P17544300147003742398

`2*eq[3, A080791(n)]+1`
-/

namespace A360573.P17544300147003742398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360573.P17544300147003742398

/-! ## A360573.P11228320830539492766

`2*eq[4, A008687(n)]-1`
-/

namespace A360573.P11228320830539492766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A360573.P11228320830539492766

/-! ## A360573.P14316144999566004288

`A005408(eq[3, a(floor(n/2))+(n+1)%2])` with `a(0)=0`
-/

namespace A360573.P14316144999566004288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A360573.P14316144999566004288

/-! ## A360573.P14977302876515070686

`A005408(eq[3, 1-(n%2-a(floor(n/2)))])` with `a(0)=0`
-/

namespace A360573.P14977302876515070686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - (((n % 2 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A360573.P14977302876515070686

/-! ## A360573.P15438638893805502164

`A059009(A379269(n+1))`
-/

namespace A360573.P15438638893805502164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A379269 (n + 1)).toNat

end

end A360573.P15438638893805502164

/-! ## A360573.P14280165628010574868

`A059009(eq[3, A023416(n)])`
-/

namespace A360573.P14280165628010574868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A360573.P14280165628010574868

/-! ## A360573.P4957817384420331374

`A005408(eq[3, A080791(n)])`
-/

namespace A360573.P4957817384420331374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A360573.P4957817384420331374

/-! ## A360573.P5041477698970064004

`eq[A010674(n), A023416(n)]`
-/

namespace A360573.P5041477698970064004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360573.P5041477698970064004

/-!
# A360574: Binary expansions of odd numbers with three zeros in their binary expansion.

The programs for A360574, there is no canonical definition to state claims against.
-/

/-! ## A360574.P10470763455858854753

`A007088(A360573(n+1))`
-/

namespace A360574.P10470763455858854753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A360573 (n + 1)).toNat

end

end A360574.P10470763455858854753

/-! ## A360574.P4094807502056649255

`A099821(eq[4, A008687(n)])`
-/

namespace A360574.P4094807502056649255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A360574.P4094807502056649255

/-! ## A360574.P5988734672583676438

`A007088(2*eq[3, A080791(n)]+1)`
-/

namespace A360574.P5988734672583676438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A360574.P5988734672583676438

/-! ## A360574.P8835040713550594070

`∩[A062936(n+1), A379270(n+1)]`
-/

namespace A360574.P8835040713550594070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360574.P8835040713550594070

/-! ## A360574.P2252441012137129824

`∩[A099821(n+1), A379270(n+1)]`
-/

namespace A360574.P2252441012137129824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360574.P2252441012137129824

/-!
# A360579: Expansion of A(x) satisfying A(x) = Series_Reversion( x - x^3 * A'(x)/A(x) ).

The programs for A360579, there is no canonical definition to state claims against.
-/

/-! ## A360579.P2185052633475376142

`A033558(A001147(n)+2)`
-/

namespace A360579.P2185052633475376142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033558 (A001147 n + 2).toNat

end

end A360579.P2185052633475376142

/-! ## A360579.P10857741697882975312

`A346476(A001147(n)+2)`
-/

namespace A360579.P10857741697882975312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346476 (A001147 n + 2).toNat

end

end A360579.P10857741697882975312

/-!
# A360580: Expansion of g.f. A(x) satisfying x = P(x) * Sum_{n=-oo..+oo} x^(n*(3*n+1)/2) * (A(x)^(3*n) - 1/A(x)^(3*n+1)), where P(x) = 1/Product_{n>=1} (1 - x^n).

The programs for A360580, there is no canonical definition to state claims against.
-/

/-! ## A360580.P262248337784522951

`A063677(A014330(n))`
-/

namespace A360580.P262248337784522951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A014330 n).toNat

end

end A360580.P262248337784522951

/-! ## A360580.P16012373821525035231

`A125688(A001423(n))+A005191(n)`
-/

namespace A360580.P16012373821525035231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A001423 n).toNat + A005191 n

end

end A360580.P16012373821525035231

/-!
# A360581: Expansion of A(x) satisfying [x^n] A(x)^n / (1 + x*A(x)^n)^n = 0 for n > 0.

The programs for A360581, there is no canonical definition to state claims against.
-/

/-! ## A360581.P12225810804485477834

`A210434(A213232(n)+A086854(n))`
-/

namespace A360581.P12225810804485477834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (A213232 n + A086854 n).toNat

end

end A360581.P12225810804485477834

/-! ## A360581.P9704480340832981192

`A245059(n)+A085862(A245059(n))`
-/

namespace A360581.P9704480340832981192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245059 n + A085862 (A245059 n).toNat

end

end A360581.P9704480340832981192

/-!
# A360582: Expansion of A(x) satisfying [x^n] A(x) / (1 + x*A(x)^n) = 0 for n > 0.

The programs for A360582, there is no canonical definition to state claims against.
-/

/-! ## A360582.P9152394654512383583

`A093882(A093856(n))+A007889(n)`
-/

namespace A360582.P9152394654512383583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093882 (A093856 n).toNat + A007889 n

end

end A360582.P9152394654512383583

/-! ## A360582.P13978150063067092671

`2*A243650(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A360582.P13978150063067092671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A243650 (a (n - 1)).toNat

end

end A360582.P13978150063067092671

/-!
# A360583: Expansion of A(x) satisfying [x^n] A(x) / (1 + x*A(x)^(n+1)) = 0 for n > 0.

The programs for A360583, there is no canonical definition to state claims against.
-/

/-! ## A360583.P15379243569644764382

`A037144(A005419(n+1))`
-/

namespace A360583.P15379243569644764382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (A005419 (n + 1)).toNat

end

end A360583.P15379243569644764382

/-! ## A360583.P4575581599708460433

`A059036(A182538(n)+A000312(n))`
-/

namespace A360583.P4575581599708460433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 (A182538 n + A000312 n).toNat

end

end A360583.P4575581599708460433

/-!
# A360584: Expansion of A(x) satisfying [x^n] A(x) / (1 + x*A(x)^(n+2)) = 0 for n > 0.

The programs for A360584, there is no canonical definition to state claims against.
-/

/-! ## A360584.P15395244577854422512

`∑{d}[(2^n)^(n-1), A318274(#)]`
-/

namespace A360584.P15395244577854422512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A318274 d

end

end A360584.P15395244577854422512

/-!
# A360586: Expansion of e.g.f.: exp(x)*(exp(x)-1)*(exp(x)-x).

The programs for A360586, the canonical program `A360586.P9120852301458139064` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360586 has offset 0).

The definition of A360586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360586.P9120852301458139064

`3^n-(n+2)*2^n/2+n`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360586

/-- `3^n-(n+2)*2^n/2+n` -/
def P9120852301458139064.Spec : Prop :=
  ∀ n, P9120852301458139064.a n = (A360586 n : ℚ)

end A360586

/-! ## A360586.P11359884094436515299

`(A066810(n)+n)%A000244(n)`
-/

namespace A360586.P11359884094436515299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066810 n + (n : ℤ)) (A000244 n)

end

end A360586.P11359884094436515299

namespace A360586

/-- `(A066810(n)+n)%A000244(n)` -/
def P11359884094436515299.Spec : Prop :=
  ∀ n, P11359884094436515299.a n = A360586 n

end A360586

/-! ## A360586.P3986503003451794992

`abs(Δ[A003462(n)-A001787(n)]+n)`
-/

namespace A360586.P3986503003451794992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n - A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A360586.P3986503003451794992

namespace A360586

/-- `abs(Δ[A003462(n)-A001787(n)]+n)` -/
def P3986503003451794992.Spec : Prop :=
  ∀ n, P3986503003451794992.a n = A360586 n

end A360586

/-! ## A360586.P13876975217981466378

`abs(Δ[A007051(n)-A001787(n)]+n)`
-/

namespace A360586.P13876975217981466378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (n : ℤ)|

end

end A360586.P13876975217981466378

namespace A360586

/-- `abs(Δ[A007051(n)-A001787(n)]+n)` -/
def P13876975217981466378.Spec : Prop :=
  ∀ n, P13876975217981466378.a n = A360586 n

end A360586

/-! ## A360586.P7479133162985101418

`abs(A047859(n)-(A007689(n)-1+n))`
-/

namespace A360586.P7479133162985101418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A047859 n - (A007689 n - 1 + (n : ℤ))|

end

end A360586.P7479133162985101418

namespace A360586

/-- `abs(A047859(n)-(A007689(n)-1+n))` -/
def P7479133162985101418.Spec : Prop :=
  ∀ n, P7479133162985101418.a n = A360586 n

end A360586

/-! ## A360586.P3700393457398985436

`(A066810(n)-A001489(n))*A007318(∑[n])`
-/

namespace A360586.P3700393457398985436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066810 n - A001489 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360586.P3700393457398985436

namespace A360586

/-- `(A066810(n)-A001489(n))*A007318(∑[n])` -/
def P3700393457398985436.Spec : Prop :=
  ∀ n, P3700393457398985436.a n = A360586 n

end A360586

/-!
# A360587: a(n) is the least positive integer k such that k*(k+1)*...*(k+n-1) does not contain the digit 2, or -1 if there is no such k.

The programs for A360587, there is no canonical definition to state claims against.
-/

/-! ## A360587.P5091945744873605399

`gcd(A019553(n+1), A273144(A273142(n)))`
-/

namespace A360587.P5091945744873605399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A019553 (n + 1)) (A273144 (A273142 n).toNat)

end

end A360587.P5091945744873605399

/-! ## A360587.P3195558246245324574

`A036036(A016862(2*(n+2))+A000005(3*n+1))`
-/

namespace A360587.P3195558246245324574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A016862 (2 * (n + 2)) + A000005 (3 * n + 1)).toNat

end

end A360587.P3195558246245324574

/-!
# A360588: Expansion of e.g.f. (exp(x)-1)^2*(x+x^2/2).

The programs for A360588, the canonical program `A360588.P3385288427672600605` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360588 has offset 0).

The definition of A360588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360588.P3385288427672600605

`A052749(n)+A052760(n)/2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A360588

/-- `A052749(n)+A052760(n)/2` -/
def P3385288427672600605.Spec : Prop :=
  ∀ n, P3385288427672600605.a n = (A360588 n : ℚ)

end A360588

/-! ## A360588.P16664944749561867431

`A052749(n)+A004526(A052760(n))`
-/

namespace A360588.P16664944749561867431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052749 n + A004526 (A052760 n).toNat

end

end A360588.P16664944749561867431

namespace A360588

/-- `A052749(n)+A004526(A052760(n))` -/
def P16664944749561867431.Spec : Prop :=
  ∀ n, P16664944749561867431.a n = A360588 n

end A360588

/-! ## A360588.P13188267701477301783

`A257845(or(A048103(n+1), A243014(n)))`
-/

namespace A360588.P13188267701477301783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257845 (Int.lor (A048103 (n + 1)) (A243014 n)).toNat

end

end A360588.P13188267701477301783

namespace A360588

/-- `A257845(or(A048103(n+1), A243014(n)))` -/
def P13188267701477301783.Spec : Prop :=
  ∀ n, P13188267701477301783.a n = A360588 n

end A360588

/-!
# A360589: Numbers k that set records in A355432.

The programs for A360589, there is no canonical definition to state claims against.
-/

/-! ## A360589.P9098793985695326284

`A280802(A018001(n)-A088568(n+1))`
-/

namespace A360589.P9098793985695326284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280802 (A018001 n - A088568 (n + 1)).toNat

end

end A360589.P9098793985695326284

/-!
# A360590: a(n) is the smallest number which can be represented as the product of n distinct integers > 1 in exactly n ways.

The programs for A360590, there is no canonical definition to state claims against.
-/

/-! ## A360590.P4247825980183203991

`2*A358526(A099515(n))`
-/

namespace A360590.P4247825980183203991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A358526 (A099515 n).toNat

end

end A360590.P4247825980183203991

/-!
# A360591: Primes in A360464.

The programs for A360591, the canonical program `A360591.P17351996970423497636` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360591 has offset 1).

The definition of A360591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360591.P17351996970423497636

`p?[A360464(n+1)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A360591

/-- `p?[A360464(n+1)]` -/
def P17351996970423497636.Spec : Prop :=
  ∀ n, P17351996970423497636.a n = A360591 (n + 1)

theorem P17351996970423497636.correct : P17351996970423497636.Spec := by
  intro n
  simp only [A360591, Nat.add_sub_cancel]

end A360591

/-! ## A360591.P4458566189931281970

`filter[A360464(n+1), A010051(#)]`
-/

namespace A360591.P4458566189931281970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A360591.P4458566189931281970

namespace A360591

/-- `filter[A360464(n+1), A010051(#)]` -/
def P4458566189931281970.Spec : Prop :=
  ∀ n, P4458566189931281970.a n = A360591 (n + 1)

end A360591

/-! ## A360591.P16422083289575321885

`filter[A360464(n+1), A323153(#)]`
-/

namespace A360591.P16422083289575321885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A360591.P16422083289575321885

namespace A360591

/-- `filter[A360464(n+1), A323153(#)]` -/
def P16422083289575321885.Spec : Prop :=
  ∀ n, P16422083289575321885.a n = A360591 (n + 1)

end A360591

/-! ## A360591.P13511611470678203434

`filter[A360464(n+1), A327861(#)]`
-/

namespace A360591.P13511611470678203434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A360591.P13511611470678203434

namespace A360591

/-- `filter[A360464(n+1), A327861(#)]` -/
def P13511611470678203434.Spec : Prop :=
  ∀ n, P13511611470678203434.a n = A360591 (n + 1)

end A360591

/-! ## A360591.P10622084833909325581

`filter[A360464(n+1), A353817(#)]`
-/

namespace A360591.P10622084833909325581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A360591.P10622084833909325581

namespace A360591

/-- `filter[A360464(n+1), A353817(#)]` -/
def P10622084833909325581.Spec : Prop :=
  ∀ n, P10622084833909325581.a n = A360591 (n + 1)

end A360591

/-! ## A360591.P15863168090074518353

`∩[A000040(n+1), A360464(n+3)]`
-/

namespace A360591.P15863168090074518353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360464 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360591.P15863168090074518353

namespace A360591

/-- `∩[A000040(n+1), A360464(n+3)]` -/
def P15863168090074518353.Spec : Prop :=
  ∀ n, (P15863168090074518353.a n : ℤ) = A360591 (n + 1)

end A360591

/-!
# A360592: G.f.: Sum_{k>=0} (1 + k*x)^k * x^k.

The programs for A360592, there is no canonical definition to state claims against.
-/

/-! ## A360592.P3682959575177943508

`A248227(A300041(n+1))`
-/

namespace A360592.P3682959575177943508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A300041 (n + 1)).toNat

end

end A360592.P3682959575177943508

/-! ## A360592.P11491079548938003297

`A248227(record[A300041(n)-char[1]])`
-/

namespace A360592.P11491079548938003297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300041 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A360592.P11491079548938003297

/-! ## A360592.P16419760863325970827

`A271778(A322139(n))+A074032(n+1)`
-/

namespace A360592.P16419760863325970827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271778 (A322139 n).toNat + A074032 (n + 1)

end

end A360592.P16419760863325970827

/-! ## A360592.P13403369577286135020

`A331488(2*n+1)+A038548(A000142(n))`
-/

namespace A360592.P13403369577286135020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331488 (2 * n + 1) + A038548 (A000142 n).toNat

end

end A360592.P13403369577286135020

/-!
# A360596: Expansion of e.g.f. 1/( (1 - x) * (1 + LambertW(-2*x)) ).

The programs for A360596, the canonical program `A360596.P8279055504465372312` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360596 has offset 0).

The definition of A360596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360596.P8279055504465372312

`n*a(n-1)+(2*n)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A360596

/-- `n*a(n-1)+(2*n)^n` -/
def P8279055504465372312.Spec : Prop :=
  ∀ n, (P8279055504465372312.a n : ℤ) = A360596 n

theorem P8279055504465372312.correct : P8279055504465372312.Spec := by
  intro n
  simp only [A360596]

end A360596

/-! ## A360596.P5476984186111445255

`n!*∑[(2*n)^n/n!]`
-/

namespace A360596.P5476984186111445255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360596.P5476984186111445255

namespace A360596

/-- `n!*∑[(2*n)^n/n!]` -/
def P5476984186111445255.Spec : Prop :=
  ∀ n, P5476984186111445255.a n = (A360596 n : ℚ)

end A360596

/-! ## A360596.P9153107748192523980

`A062971(n)+n*a(log2(1/2)+n)` with `a(0)=1`
-/

namespace A360596.P9153107748192523980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062971 n + (n : ℤ) * a (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n : ℝ))).toNat

end

end A360596.P9153107748192523980

namespace A360596

/-- `A062971(n)+n*a(log2(1/2)+n)` -/
def P9153107748192523980.Spec : Prop :=
  ∀ n, P9153107748192523980.a n = A360596 n

end A360596

