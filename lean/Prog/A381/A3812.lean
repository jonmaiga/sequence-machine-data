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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A381201: a(n) is the product of the elements of the set of bases and exponents in the prime factorization of n.

The programs for A381201, the canonical program `A381201.P5285966615949982565` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381201 has offset 1).

The definition of A381201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381201.P5285966615949982565

`A156061(A181819(n+1)*A328878(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A381201

/-- `A156061(A181819(n+1)*A328878(n+1))` -/
def P5285966615949982565.Spec : Prop :=
  ∀ n, P5285966615949982565.a n = A381201 (n + 1)

theorem P5285966615949982565.correct : P5285966615949982565.Spec := by
  intro n
  simp only [A381201, Nat.add_sub_cancel]

end A381201

/-! ## A381201.P10751167730645677397

`A156061(A064988(n+1)*A181819(n+1))`
-/

namespace A381201.P10751167730645677397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A064988 (n + 1) * A181819 (n + 1)).toNat

end

end A381201.P10751167730645677397

namespace A381201

/-- `A156061(A064988(n+1)*A181819(n+1))` -/
def P10751167730645677397.Spec : Prop :=
  ∀ n, P10751167730645677397.a n = A381201 (n + 1)

end A381201

/-! ## A381201.P14331526092860601819

`A372379(A000026(n+1)%A053159(3*n+4))`
-/

namespace A381201.P14331526092860601819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (Int.tmod (A000026 (n + 1)) (A053159 (3 * n + 4))).toNat

end

end A381201.P14331526092860601819

namespace A381201

/-- `A372379(A000026(n+1)%A053159(3*n+4))` -/
def P14331526092860601819.Spec : Prop :=
  ∀ n, P14331526092860601819.a n = A381201 (n + 1)

end A381201

/-! ## A381201.P6931700451439166523

`A372379(A000026(n+1))%A053162(3*n+4)`
-/

namespace A381201.P6931700451439166523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372379 (A000026 (n + 1)).toNat) (A053162 (3 * n + 4))

end

end A381201.P6931700451439166523

namespace A381201

/-- `A372379(A000026(n+1))%A053162(3*n+4)` -/
def P6931700451439166523.Spec : Prop :=
  ∀ n, P6931700451439166523.a n = A381201 (n + 1)

end A381201

/-!
# A381202: a(n) is the sum of the elements of the set of bases and exponents (including exponents = 1) in the prime factorization of n.

The programs for A381202, there is no canonical definition to state claims against.
-/

/-! ## A381202.P8916074988647122050

`A066328(A181819(n+1)*A321874(n+1))`
-/

namespace A381202.P8916074988647122050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A181819 (n + 1) * A321874 (n + 1)).toNat

end

end A381202.P8916074988647122050

/-!
# A381203: a(n) is the lcm of the elements of the set of bases and exponents in the prime factorization of n.

The programs for A381203, there is no canonical definition to state claims against.
-/

/-! ## A381203.P14472430753191507871

`A015052(A361268(n+2))`
-/

namespace A381203.P14472430753191507871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A361268 (n + 2)).toNat

end

end A381203.P14472430753191507871

/-! ## A381203.P5055141072254719912

`A015052(A015052(n+2)*A361265(n+2))`
-/

namespace A381203.P5055141072254719912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 2) * A361265 (n + 2)).toNat

end

end A381203.P5055141072254719912

/-! ## A381203.P2356655359106967318

`A015053(A015053(n+2)*A361265(n+2))`
-/

namespace A381203.P2356655359106967318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 2) * A361265 (n + 2)).toNat

end

end A381203.P2356655359106967318

/-! ## A381203.P740020746518673364

`A381588(n+2)%A001844(A086872(n))`
-/

namespace A381203.P740020746518673364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381588 (n + 2)) (A001844 (A086872 n).toNat)

end

end A381203.P740020746518673364

/-! ## A381203.P4958417787297146416

`A381588(n+2)+A318808(A022005(n+1))`
-/

namespace A381203.P4958417787297146416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381588 (n + 2) + A318808 (A022005 (n + 1)).toNat

end

end A381203.P4958417787297146416

/-!
# A381204: a(n) is the gcd of the elements of the set of bases and exponents in the prime factorization of n.

The programs for A381204, the canonical program `A381204.P350150440246821859` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381204 has offset 2).

The definition of A381204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381204.P350150440246821859

`A348494(A100994(n+2))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A381204

/-- `A348494(A100994(n+2))` -/
def P350150440246821859.Spec : Prop :=
  ∀ n, P350150440246821859.a n = A381204 (n + 2)

theorem P350150440246821859.correct : P350150440246821859.Spec := by
  intro n
  simp only [A381204, Nat.add_sub_cancel]

end A381204

/-! ## A381204.P7022219695198776424

`gcd(A001222(n+2), A014963(n+2))`
-/

namespace A381204.P7022219695198776424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 2)) (A014963 (n + 2))

end

end A381204.P7022219695198776424

namespace A381204

/-- `gcd(A001222(n+2), A014963(n+2))` -/
def P7022219695198776424.Spec : Prop :=
  ∀ n, (P7022219695198776424.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P12907077423642639886

`gcd(A014963(A014963(n+2)), A056239(n+2))`
-/

namespace A381204.P12907077423642639886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A014963 (n + 2)).toNat) (A056239 (n + 2))

end

end A381204.P12907077423642639886

namespace A381204

/-- `gcd(A014963(A014963(n+2)), A056239(n+2))` -/
def P12907077423642639886.Spec : Prop :=
  ∀ n, (P12907077423642639886.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P11393529690979334569

`gcd(A001222(A188666(2*(n+1))), A006530(n+2))`
-/

namespace A381204.P11393529690979334569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A188666 (2 * (n + 1))).toNat) (A006530 (n + 2))

end

end A381204.P11393529690979334569

namespace A381204

/-- `gcd(A001222(A188666(2*(n+1))), A006530(n+2))` -/
def P11393529690979334569.Spec : Prop :=
  ∀ n, (P11393529690979334569.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P9645939137308573260

`gcd(A014963(A006370(2*(n+2))), A070014(n+2))`
-/

namespace A381204.P9645939137308573260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A006370 (2 * (n + 2))).toNat) (A070014 (n + 2))

end

end A381204.P9645939137308573260

namespace A381204

/-- `gcd(A014963(A006370(2*(n+2))), A070014(n+2))` -/
def P9645939137308573260.Spec : Prop :=
  ∀ n, (P9645939137308573260.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P7096353847449870330

`gcd(A056609(n+1), A395059(n+2))`
-/

namespace A381204.P7096353847449870330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056609 (n + 1)) (A395059 (n + 2))

end

end A381204.P7096353847449870330

namespace A381204

/-- `gcd(A056609(n+1), A395059(n+2))` -/
def P7096353847449870330.Spec : Prop :=
  ∀ n, (P7096353847449870330.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P12723192873724033423

`gcd(A007306(n), A014963(A385557(n+2)))`
-/

namespace A381204.P12723192873724033423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007306 n) (A014963 (A385557 (n + 2)).toNat)

end

end A381204.P12723192873724033423

namespace A381204

/-- `gcd(A007306(n), A014963(A385557(n+2)))` -/
def P12723192873724033423.Spec : Prop :=
  ∀ n, (P12723192873724033423.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P9035140781337219981

`gcd(A000015(n+2), A067029(A250250(2*n+5)))`
-/

namespace A381204.P9035140781337219981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000015 (n + 2)) (A067029 (A250250 (2 * n + 5)).toNat)

end

end A381204.P9035140781337219981

namespace A381204

/-- `gcd(A000015(n+2), A067029(A250250(2*n+5)))` -/
def P9035140781337219981.Spec : Prop :=
  ∀ n, (P9035140781337219981.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P897571543818947277

`gcd(A098228(n+2), A149083(n))`
-/

namespace A381204.P897571543818947277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098228 (n + 2)) (A149083 n)

end

end A381204.P897571543818947277

namespace A381204

/-- `gcd(A098228(n+2), A149083(n))` -/
def P897571543818947277.Spec : Prop :=
  ∀ n, (P897571543818947277.a n : ℤ) = A381204 (n + 2)

end A381204

/-! ## A381204.P9617667473662538046

`gcd(A014963(n+2), A303540(A059100(n)))`
-/

namespace A381204.P9617667473662538046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (n + 2)) (A303540 (A059100 n).toNat)

end

end A381204.P9617667473662538046

namespace A381204

/-- `gcd(A014963(n+2), A303540(A059100(n)))` -/
def P9617667473662538046.Spec : Prop :=
  ∀ n, (P9617667473662538046.a n : ℤ) = A381204 (n + 2)

end A381204

/-!
# A381205: a(n) is the cardinality of the set of bases and exponents (including exponents = 1) in the prime factorization of n.

The programs for A381205, the canonical program `A381205.P120942691401250888` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381205 has offset 1).

The definition of A381205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381205.P120942691401250888

`A001221(A064988(n+1)*A181819(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A381205

/-- `A001221(A064988(n+1)*A181819(n+1))` -/
def P120942691401250888.Spec : Prop :=
  ∀ n, P120942691401250888.a n = A381205 (n + 1)

theorem P120942691401250888.correct : P120942691401250888.Spec := by
  intro n
  simp only [A381205, Nat.add_sub_cancel]

end A381205

/-! ## A381205.P13766634850799375830

`A001221(∏{e}[n+1, A049561(#)]*A064988(n+1))`
-/

namespace A381205.P13766634850799375830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((∏ p ∈ Nat.primeFactors (f1 n), A049561 (Nat.factorization (f1 n) p)) * A064988 (n + 1)).toNat

end

end A381205.P13766634850799375830

namespace A381205

/-- `A001221(∏{e}[n+1, A049561(#)]*A064988(n+1))` -/
def P13766634850799375830.Spec : Prop :=
  ∀ n, P13766634850799375830.a n = A381205 (n + 1)

end A381205

/-! ## A381205.P12133814812275344316

`A001221(∏{e}[n+1, A058853(#)]*A064988(n+1))`
-/

namespace A381205.P12133814812275344316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((∏ p ∈ Nat.primeFactors (f1 n), A058853 (Nat.factorization (f1 n) p)) * A064988 (n + 1)).toNat

end

end A381205.P12133814812275344316

namespace A381205

/-- `A001221(∏{e}[n+1, A058853(#)]*A064988(n+1))` -/
def P12133814812275344316.Spec : Prop :=
  ∀ n, P12133814812275344316.a n = A381205 (n + 1)

end A381205

/-! ## A381205.P9698414799711361723

`A001221(∏{e}[n+1, A061022(#)]*A064988(n+1))`
-/

namespace A381205.P9698414799711361723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((∏ p ∈ Nat.primeFactors (f1 n), A061022 (Nat.factorization (f1 n) p)) * A064988 (n + 1)).toNat

end

end A381205.P9698414799711361723

namespace A381205

/-- `A001221(∏{e}[n+1, A061022(#)]*A064988(n+1))` -/
def P9698414799711361723.Spec : Prop :=
  ∀ n, P9698414799711361723.a n = A381205 (n + 1)

end A381205

/-! ## A381205.P9712415820342102419

`A001221(∏{e}[n+1, A095313(#)]*A064988(n+1))`
-/

namespace A381205.P9712415820342102419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((∏ p ∈ Nat.primeFactors (f1 n), A095313 (Nat.factorization (f1 n) p)) * A064988 (n + 1)).toNat

end

end A381205.P9712415820342102419

namespace A381205

/-- `A001221(∏{e}[n+1, A095313(#)]*A064988(n+1))` -/
def P9712415820342102419.Spec : Prop :=
  ∀ n, P9712415820342102419.a n = A381205 (n + 1)

end A381205

/-!
# A381206: Expansion of e.g.f. 1/(1 - x*cosh(x))^2.

The programs for A381206, there is no canonical definition to state claims against.
-/

/-! ## A381206.P14527458221686359881

`A002720(n)-A333223(A000110(n))`
-/

namespace A381206.P14527458221686359881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A333223 (A000110 n).toNat

end

end A381206.P14527458221686359881

/-! ## A381206.P5473255143298017460

`A020725(A205569(n))-A357147(n)`
-/

namespace A381206.P5473255143298017460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A205569 n).toNat - A357147 n

end

end A381206.P5473255143298017460

/-!
# A381207: Expansion of e.g.f. 1/(1 - x*cosh(x))^3.

The programs for A381207, there is no canonical definition to state claims against.
-/

/-! ## A381207.P11771230204395142

`A113238((n+2)*2^(n-1))+1`
-/

namespace A381207.P11771230204395142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113238 (SequenceMachineLib.roundAway ((n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat + 1

end

end A381207.P11771230204395142

/-!
# A381209: Expansion of e.g.f. 1/(1 - x*cos(x))^3.

The programs for A381209, there is no canonical definition to state claims against.
-/

/-! ## A381209.P17544984721876565853

`A382824(3*n+2)+A153141(A047665(n))`
-/

namespace A381209.P17544984721876565853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382824 (3 * n + 2) + A153141 (A047665 n).toNat

end

end A381209.P17544984721876565853

/-!
# A381210: Expansion of e.g.f. 1/(1 - sinh(x))^3.

The programs for A381210, there is no canonical definition to state claims against.
-/

/-! ## A381210.P1119606452401449610

`3*A356720(a(n-1))` with `a(0)=1`
-/

namespace A381210.P1119606452401449610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A356720 (a (n - 1)).toNat

end

end A381210.P1119606452401449610

/-!
# A381211: Expansion of e.g.f. 1/(1 - sin(x))^3.

The programs for A381211, there is no canonical definition to state claims against.
-/

/-! ## A381211.P8198680821170380059

`3*A184333(a(n-1))` with `a(0)=1`
-/

namespace A381211.P8198680821170380059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A184333 (a (n - 1)).toNat

end

end A381211.P8198680821170380059

/-!
# A381212: a(n) is the smallest element of the set of bases and exponents (including exponents = 1) in the prime factorization of n.

The programs for A381212, there is no canonical definition to state claims against.
-/

/-! ## A381212.P14705853774839019732

`A081812(n+2)-A381214(n+2)`
-/

namespace A381212.P14705853774839019732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081812 (n + 2) - A381214 (n + 2)

end

end A381212.P14705853774839019732

/-! ## A381212.P5626319562364968884

`A051904(A377518(n+2))`
-/

namespace A381212.P5626319562364968884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A377518 (n + 2)).toNat

end

end A381212.P5626319562364968884

/-! ## A381212.P7460611329055914995

`A263323(A064988(n+2))-A381214(n+2)`
-/

namespace A381212.P7460611329055914995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A064988 (n + 2)).toNat - A381214 (n + 2)

end

end A381212.P7460611329055914995

/-! ## A381212.P8803033334468109779

`A061395(A064988(n+2)*A181819(n+2))-A381214(n+2)`
-/

namespace A381212.P8803033334468109779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064988 (n + 2) * A181819 (n + 2)).toNat - A381214 (n + 2)

end

end A381212.P8803033334468109779

/-! ## A381212.P1175510496926200351

`A381576(A119416(n+2))`
-/

namespace A381212.P1175510496926200351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381576 (A119416 (n + 2)).toNat

end

end A381212.P1175510496926200351

/-! ## A381212.P12083015868014401503

`A381576(A020338(n+2))`
-/

namespace A381212.P12083015868014401503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381576 (A020338 (n + 2)).toNat

end

end A381212.P12083015868014401503

/-! ## A381212.P15795791470068326327

`A381403(A162537(n+2))`
-/

namespace A381212.P15795791470068326327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381403 (A162537 (n + 2)).toNat

end

end A381212.P15795791470068326327

/-!
# A381213: Numbers k such that A381201(k) != A381203(k).

The programs for A381213, there is no canonical definition to state claims against.
-/

/-! ## A381213.P9888749050400194061

`∩[A322448(n+1), A335248(n+1)]`
-/

namespace A381213.P9888749050400194061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381213.P9888749050400194061

/-! ## A381213.P10227029412302294855

`∩[A322448(n+1), A335246(n+1)]`
-/

namespace A381213.P10227029412302294855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381213.P10227029412302294855

/-! ## A381213.P15162630179589087510

`∩[A322448(n+1), A335243(n+1)]`
-/

namespace A381213.P15162630179589087510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381213.P15162630179589087510

/-!
# A381214: a(n) is the difference between the largest and smallest element of the set of bases and exponents (including exponents = 1) in the prime factorization of n.

The programs for A381214, there is no canonical definition to state claims against.
-/

/-! ## A381214.P14171570130448597646

`A081812(n+2)-A381212(n+2)`
-/

namespace A381214.P14171570130448597646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081812 (n + 2) - A381212 (n + 2)

end

end A381214.P14171570130448597646

/-! ## A381214.P15579626076178812604

`A263323(A064988(n+2))-A381212(n+2)`
-/

namespace A381214.P15579626076178812604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A064988 (n + 2)).toNat - A381212 (n + 2)

end

end A381214.P15579626076178812604

/-! ## A381214.P8442668125300213067

`A061395(A064988(n+2)*A181819(n+2))-A381212(n+2)`
-/

namespace A381214.P8442668125300213067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064988 (n + 2) * A181819 (n + 2)).toNat - A381212 (n + 2)

end

end A381214.P8442668125300213067

/-! ## A381214.P15315301782042758187

`A263323(A064988(n+2))-A381576(A119416(n+2))`
-/

namespace A381214.P15315301782042758187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A064988 (n + 2)).toNat - A381576 (A119416 (n + 2)).toNat

end

end A381214.P15315301782042758187

/-! ## A381214.P9808032317474792579

`A263323(A064988(n+2))-A381403(A162537(n+2))`
-/

namespace A381214.P9808032317474792579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (A064988 (n + 2)).toNat - A381403 (A162537 (n + 2)).toNat

end

end A381214.P9808032317474792579

/-! ## A381214.P15253943272229273091

`A263323((n+2)*A105562(n+2))-A381212(n+2)`
-/

namespace A381214.P15253943272229273091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 ((n + 2 : ℤ) * A105562 (n + 2)).toNat - A381212 (n + 2)

end

end A381214.P15253943272229273091

/-!
# A381215: Numbers k such that the difference between the largest and smallest element of the set of bases and exponents (including exponents = 1) in the prime factorization of k is 1.

The programs for A381215, there is no canonical definition to state claims against.
-/

/-! ## A381215.P10992948178280811619

`A090958(lt[A294787(n+1), A375000(3*n+1)])`
-/

namespace A381215.P10992948178280811619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375000 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090958 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381215.P10992948178280811619

/-!
# A381216: Number of isomers of C_n H_{2n+2} O_2.

The programs for A381216, there is no canonical definition to state claims against.
-/

/-! ## A381216.P10302410705075349441

`A300660(n+3)-A055642(A197552(n+1))`
-/

namespace A381216.P10302410705075349441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300660 (n + 3) - A055642 (A197552 (n + 1)).toNat

end

end A381216.P10302410705075349441

/-! ## A381216.P8729087767869384909

`A371587(A027251(n))`
-/

namespace A381216.P8729087767869384909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A027251 n).toNat

end

end A381216.P8729087767869384909

/-! ## A381216.P18443481813299923016

`A401118(A304173(n+2))`
-/

namespace A381216.P18443481813299923016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401118 (A304173 (n + 2)).toNat

end

end A381216.P18443481813299923016

/-!
# A381218: Odd numbers with both an odd number of prime factors (counted with multiplicity) and an odd number of distinct prime factors. (Intersection of A067019 and A098903.)

The programs for A381218, the canonical program `A381218.P12547036818025043636` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381218 has offset 1).

The definition of A381218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381218.P4259029904927816133

`filter[A098903(n+1), A066829(#)]`
-/

namespace A381218.P4259029904927816133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A381218.P4259029904927816133

namespace A381218

/-- `filter[A098903(n+1), A066829(#)]` -/
def P4259029904927816133.Spec : Prop :=
  ∀ n, P4259029904927816133.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P156801834919330937

`filter[A098903(n+1), A353558(#)]`
-/

namespace A381218.P156801834919330937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A381218.P156801834919330937

namespace A381218

/-- `filter[A098903(n+1), A353558(#)]` -/
def P156801834919330937.Spec : Prop :=
  ∀ n, P156801834919330937.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P12547036818025043636

`filter[A098903(n+1), A359372(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A381218

/-- `filter[A098903(n+1), A359372(#)]` -/
def P12547036818025043636.Spec : Prop :=
  ∀ n, P12547036818025043636.a n = A381218 (n + 1)

theorem P12547036818025043636.correct : P12547036818025043636.Spec := by
  intro n
  simp only [A381218, Nat.add_sub_cancel]

end A381218

/-! ## A381218.P7386304761330024505

`filter[A098903(n+1), A373141(#)]`
-/

namespace A381218.P7386304761330024505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A381218.P7386304761330024505

namespace A381218

/-- `filter[A098903(n+1), A373141(#)]` -/
def P7386304761330024505.Spec : Prop :=
  ∀ n, P7386304761330024505.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P775825055985961346

`filter[A067019(n+1), A353673(#)]`
-/

namespace A381218.P775825055985961346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A381218.P775825055985961346

namespace A381218

/-- `filter[A067019(n+1), A353673(#)]` -/
def P775825055985961346.Spec : Prop :=
  ∀ n, P775825055985961346.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P9541713984016475338

`filter[A373142(n+1), A353673(#)]`
-/

namespace A381218.P9541713984016475338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A381218.P9541713984016475338

namespace A381218

/-- `filter[A373142(n+1), A353673(#)]` -/
def P9541713984016475338.Spec : Prop :=
  ∀ n, P9541713984016475338.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P7468477355389863713

`∩[2*n+1, A279457(n+1)]`
-/

namespace A381218.P7468477355389863713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381218.P7468477355389863713

namespace A381218

/-- `∩[2*n+1, A279457(n+1)]` -/
def P7468477355389863713.Spec : Prop :=
  ∀ n, (P7468477355389863713.a n : ℤ) = A381218 (n + 1)

end A381218

/-! ## A381218.P9639300702657105958

`filter[A279457(n+1), A323158(#)]`
-/

namespace A381218.P9639300702657105958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A381218.P9639300702657105958

namespace A381218

/-- `filter[A279457(n+1), A323158(#)]` -/
def P9639300702657105958.Spec : Prop :=
  ∀ n, P9639300702657105958.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P17381744887209973582

`filter[A279457(n+1), A324908(#)]`
-/

namespace A381218.P17381744887209973582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A381218.P17381744887209973582

namespace A381218

/-- `filter[A279457(n+1), A324908(#)]` -/
def P17381744887209973582.Spec : Prop :=
  ∀ n, P17381744887209973582.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P13120804983915322399

`filter[A279457(n+1), A353558(#)]`
-/

namespace A381218.P13120804983915322399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A381218.P13120804983915322399

namespace A381218

/-- `filter[A279457(n+1), A353558(#)]` -/
def P13120804983915322399.Spec : Prop :=
  ∀ n, P13120804983915322399.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P864850354067321750

`filter[A279457(n+1), A353673(#)]`
-/

namespace A381218.P864850354067321750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A381218.P864850354067321750

namespace A381218

/-- `filter[A279457(n+1), A353673(#)]` -/
def P864850354067321750.Spec : Prop :=
  ∀ n, P864850354067321750.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P16039065362650608727

`filter[A279457(n+1), A379952(#)]`
-/

namespace A381218.P16039065362650608727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A381218.P16039065362650608727

namespace A381218

/-- `filter[A279457(n+1), A379952(#)]` -/
def P16039065362650608727.Spec : Prop :=
  ∀ n, P16039065362650608727.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P4502768340087150832

`filter[A359373(n+1), A353673(#)]`
-/

namespace A381218.P4502768340087150832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A381218.P4502768340087150832

namespace A381218

/-- `filter[A359373(n+1), A353673(#)]` -/
def P4502768340087150832.Spec : Prop :=
  ∀ n, P4502768340087150832.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P4769596670998291702

`filter[A026427(n+1), A353673(#)]`
-/

namespace A381218.P4769596670998291702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A381218.P4769596670998291702

namespace A381218

/-- `filter[A026427(n+1), A353673(#)]` -/
def P4769596670998291702.Spec : Prop :=
  ∀ n, P4769596670998291702.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P133908324674708146

`∩[A026427(n+1), A098903(n+1)]`
-/

namespace A381218.P133908324674708146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381218.P133908324674708146

namespace A381218

/-- `∩[A026427(n+1), A098903(n+1)]` -/
def P133908324674708146.Spec : Prop :=
  ∀ n, (P133908324674708146.a n : ℤ) = A381218 (n + 1)

end A381218

/-! ## A381218.P16573771384004189889

`filter[A026423(n+1), A353673(#)]`
-/

namespace A381218.P16573771384004189889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A381218.P16573771384004189889

namespace A381218

/-- `filter[A026423(n+1), A353673(#)]` -/
def P16573771384004189889.Spec : Prop :=
  ∀ n, P16573771384004189889.a n = A381218 (n + 1)

end A381218

/-! ## A381218.P15263007101084504515

`∩[A026423(n+1), A098903(n+1)]`
-/

namespace A381218.P15263007101084504515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381218.P15263007101084504515

namespace A381218

/-- `∩[A026423(n+1), A098903(n+1)]` -/
def P15263007101084504515.Spec : Prop :=
  ∀ n, (P15263007101084504515.a n : ℤ) = A381218 (n + 1)

end A381218

/-! ## A381218.P1609672680386399504

`∩[A279457(n+1), A004273(n)]`
-/

namespace A381218.P1609672680386399504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381218.P1609672680386399504

namespace A381218

/-- `∩[A279457(n+1), A004273(n)]` -/
def P1609672680386399504.Spec : Prop :=
  ∀ n, (P1609672680386399504.a n : ℤ) = A381218 (n + 1)

end A381218

/-! ## A381218.P3998239162107480714

`∩[A279457(n+1), A060747(n)]`
-/

namespace A381218.P3998239162107480714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381218.P3998239162107480714

namespace A381218

/-- `∩[A279457(n+1), A060747(n)]` -/
def P3998239162107480714.Spec : Prop :=
  ∀ n, (P3998239162107480714.a n : ℤ) = A381218 (n + 1)

end A381218

/-!
# A381219: a(n) = (6^n+2^n-2*3^n)*(n-1)!/2.

The programs for A381219, the canonical program `A381219.P13015048653927296569` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381219 has offset 1).

The definition of A381219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381219.P13015048653927296569

`(6^(n+1)+2^(n+1)-2*3^(n+1))*n!/2`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381219

/-- `(6^(n+1)+2^(n+1)-2*3^(n+1))*n!/2` -/
def P13015048653927296569.Spec : Prop :=
  ∀ n, P13015048653927296569.a n = (A381219 (n + 1) : ℚ)

end A381219

/-! ## A381219.P14530737843721905283

`n!*A001240(n+1)`
-/

namespace A381219.P14530737843721905283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001240 (n + 1)

end

end A381219.P14530737843721905283

namespace A381219

/-- `n!*A001240(n+1)` -/
def P14530737843721905283.Spec : Prop :=
  ∀ n, P14530737843721905283.a n = A381219 (n + 1)

end A381219

/-! ## A381219.P10675662169705261320

`A000142(n)*A001240(n+1)`
-/

namespace A381219.P10675662169705261320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001240 (n + 1)

end

end A381219.P10675662169705261320

namespace A381219

/-- `A000142(n)*A001240(n+1)` -/
def P10675662169705261320.Spec : Prop :=
  ∀ n, P10675662169705261320.a n = A381219 (n + 1)

end A381219

/-! ## A381219.P9559317472532873220

`A001240(n+1)*A130534(A000217(n))`
-/

namespace A381219.P9559317472532873220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001240 (n + 1) * A130534 (A000217 n).toNat

end

end A381219.P9559317472532873220

namespace A381219

/-- `A001240(n+1)*A130534(A000217(n))` -/
def P9559317472532873220.Spec : Prop :=
  ∀ n, P9559317472532873220.a n = A381219 (n + 1)

end A381219

/-!
# A381220: First differences of A381116.

The programs for A381220, there is no canonical definition to state claims against.
-/

/-! ## A381220.P10118790924315304096

`Δ[A381116(n+1)]`
-/

namespace A381220.P10118790924315304096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381220.P10118790924315304096

/-! ## A381220.P3222409633279421676

`A381116(n+2)-A381116(n+1)`
-/

namespace A381220.P3222409633279421676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381116 (n + 2) - A381116 (n + 1)

end

end A381220.P3222409633279421676

/-! ## A381220.P4144844818411887136

`A381116(n+2)%A381116(A000027(n+1))`
-/

namespace A381220.P4144844818411887136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381116 (n + 2)) (A381116 (A000027 (n + 1)).toNat)

end

end A381220.P4144844818411887136

/-! ## A381220.P12426902066274046191

`Δ[A381119(A381115(n+1))]`
-/

namespace A381220.P12426902066274046191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381119 (A381115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381220.P12426902066274046191

/-! ## A381220.P18411626424728286763

`Δ[lt[A381019(n+1), n]]`
-/

namespace A381220.P18411626424728286763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381019 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A381220.P18411626424728286763

/-! ## A381220.P6305489530794371762

`Δ[record[A381116(A193738(n))]]`
-/

namespace A381220.P6305489530794371762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381116 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381220.P6305489530794371762

/-!
# A381221: Partial sums of A381116.

The programs for A381221, there is no canonical definition to state claims against.
-/

/-! ## A381221.P617705558744449919

`∑[A381220(n+1)]`
-/

namespace A381221.P617705558744449919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381221.P617705558744449919

/-! ## A381221.P14087865586856701209

`A381116(n+2)-7`
-/

namespace A381221.P14087865586856701209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381116 (n + 2) - 7

end

end A381221.P14087865586856701209

/-! ## A381221.P8870274177282787544

`∑[abs(Δ[A381116(n+1)])]`
-/

namespace A381221.P8870274177282787544
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381221.P8870274177282787544

/-! ## A381221.P8003104758970324090

`∑[A000027(Δ[A381116(n+1)])]`
-/

namespace A381221.P8003104758970324090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381221.P8003104758970324090

/-! ## A381221.P9574214943147271236

`∑[A381116(n+2)%A381116(n+1)]`
-/

namespace A381221.P9574214943147271236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381116 (n + 2)) (A381116 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A381221.P9574214943147271236

/-! ## A381221.P2714987592849616

`A023449(A381116(n+2))`
-/

namespace A381221.P2714987592849616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023449 (A381116 (n + 2)).toNat

end

end A381221.P2714987592849616

/-!
# A381223: Take the list (A381222) of successive values of the smallest number missing from A381019, and keep just the first of any run of successive equal terms.

The programs for A381223, there is no canonical definition to state claims against.
-/

/-! ## A381223.P4726398342910972062

`record[A381222(A275899(n+1))]`
-/

namespace A381223.P4726398342910972062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381222 (A275899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381223.P4726398342910972062

/-! ## A381223.P3678525149674341995

`record[A381222(A330647(n+1))]`
-/

namespace A381223.P3678525149674341995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381222 (A330647 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381223.P3678525149674341995

/-! ## A381223.P143678848604744724

`A381222(record[A381119(n+1)])`
-/

namespace A381223.P143678848604744724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A381223.P143678848604744724

/-! ## A381223.P8489663363749931877

`record[A381222(A049820(2*n+1)+1)]`
-/

namespace A381223.P8489663363749931877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381222 (A049820 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381223.P8489663363749931877

/-! ## A381223.P1772386305598339902

`record[A381222(n+1)-A045830(n)]`
-/

namespace A381223.P1772386305598339902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381222 (n + 1) - A045830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381223.P1772386305598339902

/-!
# A381226: a(n) is the number of distinct positive integers that can be obtained by starting with n!, and optionally applying the operations square root, floor, and ceiling, in any order.

The programs for A381226, there is no canonical definition to state claims against.
-/

/-! ## A381226.P10641962567674179946

`A070939(C(A333223(3*n+1)-A047773(3*(n+1)), 2))`
-/

namespace A381226.P10641962567674179946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A333223 (3 * n + 1) - A047773 (3 * (n + 1))).toNat 2)

end

end A381226.P10641962567674179946

/-! ## A381226.P6186931687847521433

`A070939(C(A333223(3*n+1)-A114099(3*n+4), 2))`
-/

namespace A381226.P6186931687847521433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Nat.choose (A333223 (3 * n + 1) - A114099 (3 * n + 4)).toNat 2)

end

end A381226.P6186931687847521433

/-!
# A381232: Count down from k to -k for k = 0, 1, 2, ... .

The programs for A381232, the canonical program `A381232.P8771641921475039308` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381232 has offset 0).

The definition of A381232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381232.P8771641921475039308

`floor(sqrt(n))*(floor(sqrt(n))+1)-n`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381232

/-- `floor(sqrt(n))*(floor(sqrt(n))+1)-n` -/
def P8771641921475039308.Spec : Prop :=
  ∀ n, P8771641921475039308.a n = A381232 n

theorem P8771641921475039308.correct : P8771641921475039308.Spec := by
  intro n
  simp only [A381232]

end A381232

/-! ## A381232.P9744434417742903890

`-A196199(n)`
-/

namespace A381232.P9744434417742903890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A196199 n

end

end A381232.P9744434417742903890

namespace A381232

/-- `-A196199(n)` -/
def P9744434417742903890.Spec : Prop :=
  ∀ n, P9744434417742903890.a n = A381232 n

theorem P9744434417742903890.correct : P9744434417742903890.Spec := by
  intro n
  simp only [A381232, Nat.add_sub_cancel, A381232.P9744434417742903890.a, A381232.P8771641921475039308.a, A196199, A196199.P3919230471390252242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381232

/-! ## A381232.P5503921103221560048

`floor(sqrt(n)-A053186(n))`
-/

namespace A381232.P5503921103221560048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) - (A053186 n : ℝ)⌋

end

end A381232.P5503921103221560048

namespace A381232

/-- `floor(sqrt(n)-A053186(n))` -/
def P5503921103221560048.Spec : Prop :=
  ∀ n, P5503921103221560048.a n = A381232 n

end A381232

/-! ## A381232.P2282291640271968482

`(A020703(n+1)-(n+1))/2`
-/

namespace A381232.P2282291640271968482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020703 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A381232.P2282291640271968482

namespace A381232

/-- `(A020703(n+1)-(n+1))/2` -/
def P2282291640271968482.Spec : Prop :=
  ∀ n, P2282291640271968482.a n = (A381232 n : ℚ)

theorem P2282291640271968482.correct : P2282291640271968482.Spec := by
  intro n
  simp only [A381232, Nat.add_sub_cancel, A381232.P2282291640271968482.a, A381232.P8771641921475039308.a, A020703, A020703.P16958220774647362096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A381232

/-! ## A381232.P18360757676475411564

`A001057(A253580(n))`
-/

namespace A381232.P18360757676475411564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A253580 n).toNat

end

end A381232.P18360757676475411564

namespace A381232

/-- `A001057(A253580(n))` -/
def P18360757676475411564.Spec : Prop :=
  ∀ n, P18360757676475411564.a n = A381232 n

end A381232

/-! ## A381232.P9281431018157819099

`A057428(n)*A196199(n)`
-/

namespace A381232.P9281431018157819099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A196199 n

end

end A381232.P9281431018157819099

namespace A381232

/-- `A057428(n)*A196199(n)` -/
def P9281431018157819099.Spec : Prop :=
  ∀ n, P9281431018157819099.a n = A381232 n

end A381232

/-! ## A381232.P18086199298202683722

`A196199(A020703(n+1)-1)`
-/

namespace A381232.P18086199298202683722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A020703 (n + 1) - 1).toNat

end

end A381232.P18086199298202683722

namespace A381232

/-- `A196199(A020703(n+1)-1)` -/
def P18086199298202683722.Spec : Prop :=
  ∀ n, P18086199298202683722.a n = A381232 n

end A381232

/-! ## A381232.P2941597288329447767

`A153881(n+1)*A196199(n)`
-/

namespace A381232.P2941597288329447767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A196199 n

end

end A381232.P2941597288329447767

namespace A381232

/-- `A153881(n+1)*A196199(n)` -/
def P2941597288329447767.Spec : Prop :=
  ∀ n, P2941597288329447767.a n = A381232 n

end A381232

/-! ## A381232.P5129419717135246916

`(A329116(n)-A255175(n))*A329116(n)`
-/

namespace A381232.P5129419717135246916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329116 n - A255175 n) * A329116 n

end

end A381232.P5129419717135246916

namespace A381232

/-- `(A329116(n)-A255175(n))*A329116(n)` -/
def P5129419717135246916.Spec : Prop :=
  ∀ n, P5129419717135246916.a n = A381232 n

end A381232

/-! ## A381232.P11475041991435356523

`(A339265(n)-A255175(n))*A339265(n)`
-/

namespace A381232.P11475041991435356523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A339265 n - A255175 n) * A339265 n

end

end A381232.P11475041991435356523

namespace A381232

/-- `(A339265(n)-A255175(n))*A339265(n)` -/
def P11475041991435356523.Spec : Prop :=
  ∀ n, P11475041991435356523.a n = A381232 n

end A381232

/-! ## A381232.P16558477477276442210

`(A053188(n+1)-A053188(n))*A053615(n)`
-/

namespace A381232.P16558477477276442210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053188 (n + 1) - A053188 n) * A053615 n

end

end A381232.P16558477477276442210

namespace A381232

/-- `(A053188(n+1)-A053188(n))*A053615(n)` -/
def P16558477477276442210.Spec : Prop :=
  ∀ n, P16558477477276442210.a n = A381232 n

end A381232

/-! ## A381232.P5858052934674954919

`(A329116(n)-A329116(n+1))*A329116(n)`
-/

namespace A381232.P5858052934674954919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329116 n - A329116 (n + 1)) * A329116 n

end

end A381232.P5858052934674954919

namespace A381232

/-- `(A329116(n)-A329116(n+1))*A329116(n)` -/
def P5858052934674954919.Spec : Prop :=
  ∀ n, P5858052934674954919.a n = A381232 n

end A381232

/-! ## A381232.P95982173285224080

`A038760(A174803(A038759(n+1))-n)`
-/

namespace A381232.P95982173285224080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038760 (A174803 (A038759 (n + 1)).toNat - (n : ℤ)).toNat

end

end A381232.P95982173285224080

namespace A381232

/-- `A038760(A174803(A038759(n+1))-n)` -/
def P95982173285224080.Spec : Prop :=
  ∀ n, P95982173285224080.a n = A381232 n

end A381232

/-! ## A381232.P3869614314392576611

`(A053615(n)-A053615(n+1))*A053615(n)`
-/

namespace A381232.P3869614314392576611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053615 n - A053615 (n + 1)) * A053615 n

end

end A381232.P3869614314392576611

namespace A381232

/-- `(A053615(n)-A053615(n+1))*A053615(n)` -/
def P3869614314392576611.Spec : Prop :=
  ∀ n, P3869614314392576611.a n = A381232 n

end A381232

/-! ## A381232.P17666349333525068054

`A196199(A002378(n)-A196199(n))`
-/

namespace A381232.P17666349333525068054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A002378 n - A196199 n).toNat

end

end A381232.P17666349333525068054

namespace A381232

/-- `A196199(A002378(n)-A196199(n))` -/
def P17666349333525068054.Spec : Prop :=
  ∀ n, P17666349333525068054.a n = A381232 n

end A381232

/-!
# A381233: Concatenate the sequences S(k) = [0, 1, -1, ..., k, -k] for k = 0, 1, ...

The programs for A381233, the canonical program `A381233.P13633514905474936498` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381233 has offset 0).

The definition of A381233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381233.P13633514905474936498

`A001057(n-floor(sqrt(n))²)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A381233

/-- `A001057(n-floor(sqrt(n))²)` -/
def P13633514905474936498.Spec : Prop :=
  ∀ n, P13633514905474936498.a n = A381233 n

theorem P13633514905474936498.correct : P13633514905474936498.Spec := by
  intro n
  simp only [A381233]

end A381233

/-! ## A381233.P12720122120127995556

`Δ[A152271(1-floor(sqrt(n))²+n)]`
-/

namespace A381233.P12720122120127995556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (1 - (Nat.sqrt n ^ 2 : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A381233.P12720122120127995556

namespace A381233

/-- `Δ[A152271(1-floor(sqrt(n))²+n)]` -/
def P12720122120127995556.Spec : Prop :=
  ∀ n, P12720122120127995556.a n = A381233 n

end A381233

/-! ## A381233.P1228466185247822141

`∑[A010052(n)]-A071797(A170950(n+1))`
-/

namespace A381233.P1228466185247822141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A071797 (A170950 (n + 1)).toNat

end

end A381233.P1228466185247822141

namespace A381233

/-- `∑[A010052(n)]-A071797(A170950(n+1))` -/
def P1228466185247822141.Spec : Prop :=
  ∀ n, P1228466185247822141.a n = A381233 n

end A381233

/-! ## A381233.P8805255334524947543

`A196199(A045901(n+1)+A001650(n+1))`
-/

namespace A381233.P8805255334524947543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A045901 (n + 1) + A001650 (n + 1)).toNat

end

end A381233.P8805255334524947543

namespace A381233

/-- `A196199(A045901(n+1)+A001650(n+1))` -/
def P8805255334524947543.Spec : Prop :=
  ∀ n, P8805255334524947543.a n = A381233 n

end A381233

/-! ## A381233.P2897051905254019910

`A002061(A003059(n+1))-A170950(n+1)`
-/

namespace A381233.P2897051905254019910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A003059 (n + 1)).toNat - A170950 (n + 1)

end

end A381233.P2897051905254019910

namespace A381233

/-- `A002061(A003059(n+1))-A170950(n+1)` -/
def P2897051905254019910.Spec : Prop :=
  ∀ n, P2897051905254019910.a n = A381233 n

end A381233

/-!
# A381235: a(n) = the term of A000319 that is repeated in the n-th run of equal consecutive terms.

The programs for A381235, there is no canonical definition to state claims against.
-/

/-! ## A381235.P5875592133768373691

`A000319(lt[A088830(n+1), A088827(3*(n+1))])`
-/

namespace A381235.P5875592133768373691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000319 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A381235.P5875592133768373691

/-! ## A381235.P12345796780847907506

`A000319(A031980(n+1))%A231614(n+1)`
-/

namespace A381235.P12345796780847907506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000319 (A031980 (n + 1)).toNat) (A231614 (n + 1))

end

end A381235.P12345796780847907506

/-!
# A381239: Primes of the form Sum_{k >= 0} floor(m/5^k) for some number m.

The programs for A381239, there is no canonical definition to state claims against.
-/

/-! ## A381239.P11919051120383176797

`p?[A191610(n+1)]`
-/

namespace A381239.P11919051120383176797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381239.P11919051120383176797

/-! ## A381239.P17670427264865707216

`p?[A027868(5*n)]`
-/

namespace A381239.P17670427264865707216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381239.P17670427264865707216

/-! ## A381239.P13841635401357275338

`p?[A027868(n)+n]`
-/

namespace A381239.P13841635401357275338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381239.P13841635401357275338

/-! ## A381239.P38823414194276461

`p?[∑[A055457(n+1)]]`
-/

namespace A381239.P38823414194276461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A381239.P38823414194276461

/-! ## A381239.P4568127850033801450

`record[A020639(A191610(n+3))]`
-/

namespace A381239.P4568127850033801450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A191610 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381239.P4568127850033801450

/-! ## A381239.P16559620489592122091

`A191610(A380662(n+1)+1)`
-/

namespace A381239.P16559620489592122091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (A380662 (n + 1) + 1).toNat

end

end A381239.P16559620489592122091

/-! ## A381239.P8316078964526785438

`filter[A191610(n+2), A010051(#)]`
-/

namespace A381239.P8316078964526785438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A381239.P8316078964526785438

/-! ## A381239.P11994621374202289529

`filter[A191610(n+3), A080339(#)]`
-/

namespace A381239.P11994621374202289529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A381239.P11994621374202289529

/-! ## A381239.P5734581779120888999

`eq[A048785(n), A091844(n+1)]`
-/

namespace A381239.P5734581779120888999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381239.P5734581779120888999

/-! ## A381239.P16742889057307977081

`∩[A000040(n+1), A191610(n+1)]`
-/

namespace A381239.P16742889057307977081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A381239.P16742889057307977081

/-!
# A381241: Records in A381096.

The programs for A381241, the canonical program `A381241.P648882658982533390` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381241 has offset 1).

The definition of A381241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381241.P648882658982533390

`record[A381096(n+1)]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A381241

/-- `record[A381096(n+1)]` -/
def P648882658982533390.Spec : Prop :=
  ∀ n, P648882658982533390.a n = A381241 (n + 1)

theorem P648882658982533390.correct : P648882658982533390.Spec := by
  intro n
  simp only [A381241, Nat.add_sub_cancel]

end A381241

/-! ## A381241.P16447193870694137943

`A381096(A381240(n+1))`
-/

namespace A381241.P16447193870694137943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381096 (A381240 (n + 1)).toNat

end

end A381241.P16447193870694137943

namespace A381241

/-- `A381096(A381240(n+1))` -/
def P16447193870694137943.Spec : Prop :=
  ∀ n, P16447193870694137943.a n = A381241 (n + 1)

end A381241

/-! ## A381241.P17079660789341316071

`record[A016035(n+1)-A183094(n+1)]`
-/

namespace A381241.P17079660789341316071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) - A183094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381241.P17079660789341316071

namespace A381241

/-- `record[A016035(n+1)-A183094(n+1)]` -/
def P17079660789341316071.Spec : Prop :=
  ∀ n, P17079660789341316071.a n = A381241 (n + 1)

end A381241

/-! ## A381241.P4618015326939359319

`record[A051953(2*(n+1))-A005361(2*(n+1))]`
-/

namespace A381241.P4618015326939359319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * (n + 1)) - A005361 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381241.P4618015326939359319

namespace A381241

/-- `record[A051953(2*(n+1))-A005361(2*(n+1))]` -/
def P4618015326939359319.Spec : Prop :=
  ∀ n, P4618015326939359319.a n = A381241 (n + 1)

end A381241

/-!
# A381243: Number of hyperplanes defined by the nonzero differences of two permutations of order n.

The programs for A381243, there is no canonical definition to state claims against.
-/

/-! ## A381243.P11295779023965134938

`A056943(A381376(n)+1)`
-/

namespace A381243.P11295779023965134938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 (A381376 n + 1).toNat

end

end A381243.P11295779023965134938

/-! ## A381243.P17130785208735768521

`A087177(A002430(n+1)*A064989(n+1))`
-/

namespace A381243.P17130785208735768521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087177 (A002430 (n + 1) * A064989 (n + 1)).toNat

end

end A381243.P17130785208735768521

/-!
# A381244: Number of regions in the arrangement of hyperplanes corresponding to the nonzero differences of two permutations of order n.

The programs for A381244, there is no canonical definition to state claims against.
-/

/-! ## A381244.P18185170658791621429

`A066186(a(n-1))*n` with `a(0)=1`
-/

namespace A381244.P18185170658791621429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066186 (a (n - 1)).toNat * (n : ℤ)

end

end A381244.P18185170658791621429

/-!
# A381251: a(n) is the number of ways to write prime(n) as a sum of distinct composites.

The programs for A381251, there is no canonical definition to state claims against.
-/

/-! ## A381251.P128848940422049424

`A204389(A000040(n+1))`
-/

namespace A381251.P128848940422049424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A000040 (n + 1)).toNat

end

end A381251.P128848940422049424

/-! ## A381251.P3219485392461300715

`A204389(A006005(n+1))`
-/

namespace A381251.P3219485392461300715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A006005 (n + 1)).toNat

end

end A381251.P3219485392461300715

/-! ## A381251.P17236769472922649217

`A204389(A161847(n+1))`
-/

namespace A381251.P17236769472922649217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A161847 (n + 1)).toNat

end

end A381251.P17236769472922649217

/-! ## A381251.P2010073185073453190

`A204389(A008578(n+2))`
-/

namespace A381251.P2010073185073453190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A008578 (n + 2)).toNat

end

end A381251.P2010073185073453190

/-! ## A381251.P11570829861880422424

`A204389(A075643(n+2))`
-/

namespace A381251.P11570829861880422424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A075643 (n + 2)).toNat

end

end A381251.P11570829861880422424

/-! ## A381251.P10132763228673798311

`A204389(A171525(n+2))`
-/

namespace A381251.P10132763228673798311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A171525 (n + 2)).toNat

end

end A381251.P10132763228673798311

/-! ## A381251.P3136883291841859810

`A204389(A182986(n+2))`
-/

namespace A381251.P3136883291841859810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A182986 (n + 2)).toNat

end

end A381251.P3136883291841859810

/-! ## A381251.P17796514750654232142

`A204389(A065855(A022449(n+2)))`
-/

namespace A381251.P17796514750654232142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (A065855 (A022449 (n + 2)).toNat).toNat

end

end A381251.P17796514750654232142

/-!
# A381253: Prime numbers whose constant congruence speed of tetration is greater than 1.

The programs for A381253, there is no canonical definition to state claims against.
-/

/-! ## A381253.P15690497291116840126

`∪[A004816(n+1), A172469(n+1)]`
-/

namespace A381253.P15690497291116840126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004816 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P15690497291116840126

/-! ## A381253.P9976481183121515667

`∪[A052027(n+1), A172469(n+1)]`
-/

namespace A381253.P9976481183121515667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P9976481183121515667

/-! ## A381253.P9400900437161615440

`∪[A079812(n+1), A172469(n+1)]`
-/

namespace A381253.P9400900437161615440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P9400900437161615440

/-! ## A381253.P17354900334143315022

`∪[A171980(n+1), A172469(n+1)]`
-/

namespace A381253.P17354900334143315022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P17354900334143315022

/-! ## A381253.P13570529377792448721

`∪[A172469(n+1), A177192(n+1)]`
-/

namespace A381253.P13570529377792448721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P13570529377792448721

/-! ## A381253.P14804070466533552610

`∪[A172469(n+1), A182345(n+1)]`
-/

namespace A381253.P14804070466533552610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P14804070466533552610

/-! ## A381253.P4701540425648144485

`∪[A172469(n+1), A193366(n+1)]`
-/

namespace A381253.P4701540425648144485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P4701540425648144485

/-! ## A381253.P7088859216988388764

`∪[A172469(n+1), A200916(n+1)]`
-/

namespace A381253.P7088859216988388764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P7088859216988388764

/-! ## A381253.P17383512716251420786

`∪[A172469(n+1), A201300(n+1)]`
-/

namespace A381253.P17383512716251420786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P17383512716251420786

/-! ## A381253.P14782167346661314794

`∪[A172469(n+1), A237641(n+1)]`
-/

namespace A381253.P14782167346661314794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237641 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A381253.P14782167346661314794

/-!
# A381255: Positive integers not of the form round(2^(k+2)/5). Complement of A007910.

The programs for A381255, the canonical program `A381255.P14805503171048512925` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381255 has offset 1).

The definition of A381255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A381255.P14805503171048512925

`comp[floor(A056469(n)/5)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A381255

/-- `comp[floor(A056469(n)/5)]` -/
def P14805503171048512925.Spec : Prop :=
  ∀ n, (P14805503171048512925.a n : ℤ) = A381255 (n + 1)

theorem P14805503171048512925.correct : P14805503171048512925.Spec := by
  intro n
  simp only [A381255, Nat.add_sub_cancel]

end A381255

/-! ## A381255.P16396895804868448426

`comp[A007910(n)-1]+1`
-/

namespace A381255.P16396895804868448426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A381255.P16396895804868448426

namespace A381255

/-- `comp[A007910(n)-1]+1` -/
def P16396895804868448426.Spec : Prop :=
  ∀ n, (P16396895804868448426.a n : ℤ) = A381255 (n + 1)

end A381255

/-! ## A381255.P6327962624210115494

`comp[floor((A000079(n)+2)/5)]`
-/

namespace A381255.P6327962624210115494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000079 n + 2 : ℚ) / 5⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P6327962624210115494

namespace A381255

/-- `comp[floor((A000079(n)+2)/5)]` -/
def P6327962624210115494.Spec : Prop :=
  ∀ n, (P6327962624210115494.a n : ℤ) = A381255 (n + 1)

end A381255

/-! ## A381255.P3378859242748685989

`lt[1, A091068(n)]+1`
-/

namespace A381255.P3378859242748685989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091068 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A381255.P3378859242748685989

namespace A381255

/-- `lt[1, A091068(n)]+1` -/
def P3378859242748685989.Spec : Prop :=
  ∀ n, (P3378859242748685989.a n : ℤ) = A381255 (n + 1)

end A381255

/-! ## A381255.P17844863760562450507

`comp[round(A067856(2*(n+2))/10)]`
-/

namespace A381255.P17844863760562450507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A067856 (2 * (n + 2)) : ℚ) / 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P17844863760562450507

namespace A381255

/-- `comp[round(A067856(2*(n+2))/10)]` -/
def P17844863760562450507.Spec : Prop :=
  ∀ n, (P17844863760562450507.a n : ℤ) = A381255 (n + 1)

end A381255

/-! ## A381255.P7820182033304871637

`comp[A083206(A020714(n))]`
-/

namespace A381255.P7820182033304871637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (A020714 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P7820182033304871637

namespace A381255

/-- `comp[A083206(A020714(n))]` -/
def P7820182033304871637.Spec : Prop :=
  ∀ n, (P7820182033304871637.a n : ℤ) = A381255 (n + 1)

end A381255

/-! ## A381255.P16049191935508387094

`comp[round(A003817(n)/10)]`
-/

namespace A381255.P16049191935508387094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003817 n : ℚ) / 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P16049191935508387094

namespace A381255

/-- `comp[round(A003817(n)/10)]` -/
def P16049191935508387094.Spec : Prop :=
  ∀ n, (P16049191935508387094.a n : ℤ) = A381255 (n + 1)

end A381255

/-! ## A381255.P6314406629825507234

`comp[Δ[A002266(A000225(n))]]`
-/

namespace A381255.P6314406629825507234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A000225 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P6314406629825507234

namespace A381255

/-- `comp[Δ[A002266(A000225(n))]]` -/
def P6314406629825507234.Spec : Prop :=
  ∀ n, (P6314406629825507234.a n : ℤ) = A381255 (n + 1)

end A381255

/-! ## A381255.P10849263541974529776

`comp[Δ[A059995(A131577(n))]]`
-/

namespace A381255.P10849263541974529776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A131577 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P10849263541974529776

namespace A381255

/-- `comp[Δ[A059995(A131577(n))]]` -/
def P10849263541974529776.Spec : Prop :=
  ∀ n, (P10849263541974529776.a n : ℤ) = A381255 (n + 1)

end A381255

/-!
# A381259: Numbers obtained by concatenating powers of 2, sorted into increasing order.

The programs for A381259, there is no canonical definition to state claims against.
-/

/-! ## A381259.P3221660344684146666

`A385289(n+1)+A000007(A280673(n+5))`
-/

namespace A381259.P3221660344684146666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 1) + A000007 (A280673 (n + 5)).toNat

end

end A381259.P3221660344684146666

/-! ## A381259.P645094585317183937

`A385289(n+1)+A358680(A385254(n+5))`
-/

namespace A381259.P645094585317183937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385289 (n + 1) + A358680 (A385254 (n + 5)).toNat

end

end A381259.P645094585317183937

/-! ## A381259.P15219055710317733182

`A385289(n+1)%A001043(A027337(3*n))`
-/

namespace A381259.P15219055710317733182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385289 (n + 1)) (A001043 (A027337 (3 * n)).toNat)

end

end A381259.P15219055710317733182

/-!
# A381260: Expansion of e.g.f. exp( -LambertW(-2 * x * cosh(x)) / 2 ).

The programs for A381260, there is no canonical definition to state claims against.
-/

/-! ## A381260.P14121470709206607840

`A004772(A192935(n))+1`
-/

namespace A381260.P14121470709206607840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (A192935 n).toNat + 1

end

end A381260.P14121470709206607840

/-!
# A381261: Expansion of e.g.f. exp( -LambertW(-2 * x * cos(x)) / 2 ).

The programs for A381261, there is no canonical definition to state claims against.
-/

/-! ## A381261.P2743606733353686314

`A292408(n^∑{p}[n+1, gcd(n, #)])`
-/

namespace A381261.P2743606733353686314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292408 (n ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A381261.P2743606733353686314

/-!
# A381262: Expansion of e.g.f. exp( -LambertW(-2 * sinh(x)) / 2 ).

The programs for A381262, there is no canonical definition to state claims against.
-/

/-! ## A381262.P5926928018079166568

`A098887(A149931(n))`
-/

namespace A381262.P5926928018079166568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098887 (A149931 n).toNat

end

end A381262.P5926928018079166568

/-!
# A381263: Expansion of e.g.f. exp( -LambertW(-2 * sin(x)) / 2 ).

The programs for A381263, there is no canonical definition to state claims against.
-/

/-! ## A381263.P12645053914491794672

`A064475(A088690(n)+1)+1`
-/

namespace A381263.P12645053914491794672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064475 (A088690 n + 1).toNat + 1

end

end A381263.P12645053914491794672

/-!
# A381265: a(n) is the number of solid (3D) partitions of n with 2 layers and second layer a plane partition of 3.

The programs for A381265, there is no canonical definition to state claims against.
-/

/-! ## A381265.P7898813679893047755

`A379277(A397439(n+1))`
-/

namespace A381265.P7898813679893047755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379277 (A397439 (n + 1)).toNat

end

end A381265.P7898813679893047755

/-!
# A381266: a(n) = least positive integer m such that when m*(m+1) is written in base n, it contains every single digit exactly once, or 0 if no such number exists.

The programs for A381266, there is no canonical definition to state claims against.
-/

/-! ## A381266.P301349689079096417

`A135872(A007598(n+1))-∑[n]`
-/

namespace A381266.P301349689079096417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135872 (A007598 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A381266.P301349689079096417

/-!
# A381268: a(n) = denominator( [(x*y*z*u)^n] 1/sqrt(1 - (x + y + z + u*(y + z))) ).

The programs for A381268, there is no canonical definition to state claims against.
-/

/-! ## A381268.P11631868283760354128

`A056982(n)*A124399(n)`
-/

namespace A381268.P11631868283760354128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056982 n * A124399 n

end

end A381268.P11631868283760354128

/-! ## A381268.P2105792789681288225

`(A046161(n)*A060818(n))²`
-/

namespace A381268.P2105792789681288225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046161 n * A060818 n) ^ 2

end

end A381268.P2105792789681288225

/-! ## A381268.P1610850830812529135

`A060818(n)²*A056982(n)`
-/

namespace A381268.P1610850830812529135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n ^ 2 * A056982 n

end

end A381268.P1610850830812529135

/-! ## A381268.P3122908899849950203

`A001901(2*n)*A124399(n)`
-/

namespace A381268.P3122908899849950203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001901 (2 * n) * A124399 n

end

end A381268.P3122908899849950203

/-! ## A381268.P11360868288660905923

`A124399(2*n)*A124399(n)`
-/

namespace A381268.P11360868288660905923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124399 (2 * n) * A124399 n

end

end A381268.P11360868288660905923

/-!
# A381270: a(n) = denominator( [x*y*z]^n 1/sqrt((1 - (x + y + z))*(1 - y - z^2)) ).

The programs for A381270, there is no canonical definition to state claims against.
-/

/-! ## A381270.P14692549043005959775

`4^n*A381272(n)`
-/

namespace A381270.P14692549043005959775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A381272 n

end

end A381270.P14692549043005959775

/-! ## A381270.P11913452217605490999

`A093586(n)/A001127(A000120(n))`
-/

namespace A381270.P11913452217605490999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093586 n : ℚ) / (A001127 (A000120 n).toNat : ℚ)

end

end A381270.P11913452217605490999

/-! ## A381270.P8592427225247430647

`A381272(2*n)`
-/

namespace A381270.P8592427225247430647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381272 (2 * n)

end

end A381270.P8592427225247430647

/-! ## A381270.P14918153930600918243

`A381272(A042963(n+1))%A358868(n+2)`
-/

namespace A381270.P14918153930600918243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381272 (A042963 (n + 1)).toNat) (A358868 (n + 2))

end

end A381270.P14918153930600918243

/-! ## A381270.P8202564621447066660

`A381272(A005843(n))%A089573(n+1)`
-/

namespace A381270.P8202564621447066660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381272 (A005843 n).toNat) (A089573 (n + 1))

end

end A381270.P8202564621447066660

/-!
# A381272: a(n) = denominator( [x*y*z]^n 1/sqrt((1 - (x + y + z))*(1 - x - y - z^2)) ).

The programs for A381272, there is no canonical definition to state claims against.
-/

/-! ## A381272.P2537137968535249075

`A381270(n)/A000302(n)`
-/

namespace A381272.P2537137968535249075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381270 n : ℚ) / (A000302 n : ℚ)

end

end A381272.P2537137968535249075

/-!
# A381273: Expansion of e.g.f. exp(x * cosh(2*x)).

The programs for A381273, there is no canonical definition to state claims against.
-/

/-! ## A381273.P6740946075445396916

`A257726(A192814(n))`
-/

namespace A381273.P6740946075445396916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A192814 n).toNat

end

end A381273.P6740946075445396916

/-! ## A381273.P10285595187756630060

`A333852(A243667(n)+1)`
-/

namespace A381273.P10285595187756630060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333852 (A243667 n + 1).toNat

end

end A381273.P10285595187756630060

/-!
# A381274: Expansion of e.g.f. exp(x * cosh(3*x)).

The programs for A381274, there is no canonical definition to state claims against.
-/

/-! ## A381274.P6383537716793703291

`A056107(A373949(a(n-1)+3*n-1))` with `a(0)=1`
-/

namespace A381274.P6383537716793703291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056107 (A373949 (a (n - 1) + (3 * n : ℤ) - 1).toNat).toNat

end

end A381274.P6383537716793703291

/-! ## A381274.P16364084474105663183

`A255831(A117989(n+1)+A041079(n))`
-/

namespace A381274.P16364084474105663183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255831 (A117989 (n + 1) + A041079 n).toNat

end

end A381274.P16364084474105663183

/-!
# A381276: Expansion of e.g.f. exp(x * cos(3*x)).

The programs for A381276, there is no canonical definition to state claims against.
-/

/-! ## A381276.P11635939790055822620

`A248977(A192883(n))`
-/

namespace A381276.P11635939790055822620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248977 (A192883 n).toNat

end

end A381276.P11635939790055822620

/-!
# A381277: Expansion of e.g.f. exp(sinh(3*x) / 3).

The programs for A381277, there is no canonical definition to state claims against.
-/

/-! ## A381277.P10873479299863704887

`A151893(A372373(n))`
-/

namespace A381277.P10873479299863704887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151893 (A372373 n).toNat

end

end A381277.P10873479299863704887

/-! ## A381277.P634426124813318244

`A259575(∑[A358963(n)])`
-/

namespace A381277.P634426124813318244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259575 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A381277.P634426124813318244

/-!
# A381280: Expansion of e.g.f. 1/(1 - x * cosh(2*x)).

The programs for A381280, there is no canonical definition to state claims against.
-/

/-! ## A381280.P6947042619261902323

`A060473(A377118(n)²+1)`
-/

namespace A381280.P6947042619261902323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060473 (A377118 n ^ 2 + 1).toNat

end

end A381280.P6947042619261902323

/-! ## A381280.P10976751722937610155

`A000010(A304997(n)+floor(2*n/5))`
-/

namespace A381280.P10976751722937610155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A304997 n + ⌊2 * ((n : ℚ) / 5)⌋).toNat

end

end A381280.P10976751722937610155

/-!
# A381281: Expansion of e.g.f. 1/(1 - x * cosh(3*x)).

The programs for A381281, there is no canonical definition to state claims against.
-/

/-! ## A381281.P5263692273757946379

`A140053(A047085(n))`
-/

namespace A381281.P5263692273757946379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140053 (A047085 n).toNat

end

end A381281.P5263692273757946379

/-!
# A381282: Expansion of e.g.f. 1/(1 - x * cos(2*x)).

The programs for A381282, there is no canonical definition to state claims against.
-/

/-! ## A381282.P13354678258054019828

`A165477(2*(n+2))-A136218(A000041(2*n+1))`
-/

namespace A381282.P13354678258054019828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165477 (2 * (n + 2)) - A136218 (A000041 (2 * n + 1)).toNat

end

end A381282.P13354678258054019828

/-!
# A381283: Expansion of e.g.f. 1/(1 - x * cos(3*x)).

The programs for A381283, there is no canonical definition to state claims against.
-/

/-! ## A381283.P6260302033901836828

`A121158(n+5)-A121147(n+3)`
-/

namespace A381283.P6260302033901836828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121158 (n + 5) - A121147 (n + 3)

end

end A381283.P6260302033901836828

/-!
# A381284: Expansion of e.g.f. 1/(1 - sinh(3*x) / 3).

The programs for A381284, there is no canonical definition to state claims against.
-/

/-! ## A381284.P16545625446700210336

`A289585(A087761(n)-A172236(n+1))`
-/

namespace A381284.P16545625446700210336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289585 (A087761 n - A172236 (n + 1)).toNat

end

end A381284.P16545625446700210336

/-! ## A381284.P12709110337180366333

`A114296(n)*A156251(A001011(n+1))`
-/

namespace A381284.P12709110337180366333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114296 n * A156251 (A001011 (n + 1)).toNat

end

end A381284.P12709110337180366333

/-!
# A381285: Expansion of e.g.f. 1/(1 - sin(2*x) / 2).

The programs for A381285, there is no canonical definition to state claims against.
-/

/-! ## A381285.P10727628246000050077

`A048896(A365342(n+1))-A000142(n)`
-/

namespace A381285.P10727628246000050077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A365342 (n + 1)).toNat - A000142 n

end

end A381285.P10727628246000050077

/-! ## A381285.P5338182900587444573

`A344897(A000045(2*n+1))-A000142(n)`
-/

namespace A381285.P5338182900587444573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344897 (A000045 (2 * n + 1)).toNat - A000142 n

end

end A381285.P5338182900587444573

/-!
# A381286: Expansion of e.g.f. 1/(1 - sin(3*x) / 3).

The programs for A381286, there is no canonical definition to state claims against.
-/

/-! ## A381286.P12352076281520419867

`A001511(A295153(2*n+1))-A060738(3*n)`
-/

namespace A381286.P12352076281520419867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A295153 (2 * n + 1)).toNat - A060738 (3 * n)

end

end A381286.P12352076281520419867

/-!
# A381288: Partial alternating sums of the trajectory of 2 under the morphism 2->{2,1,2}, 1->{2}.

The programs for A381288, the canonical program `A381288.P16481357389649938989` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381288 has offset 0).

The definition of A381288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381288.P16481357389649938989

`a(n-1)+(-1)^(n-1)*(A104521(n-1)+1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A381288

/-- `a(n-1)+(-1)^(n-1)*(A104521(n-1)+1)` -/
def P16481357389649938989.Spec : Prop :=
  ∀ n, P16481357389649938989.a n = (A381288 n : ℚ)

end A381288

/-! ## A381288.P3677503816875301518

`a(n-1)+(-1)^(n-1)*(3-A106035(n-1))` with `a(0)=0`
-/

namespace A381288.P3677503816875301518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (3 - A106035 (n - 1) : ℚ)

end

end A381288.P3677503816875301518

namespace A381288

/-- `a(n-1)+(-1)^(n-1)*(3-A106035(n-1))` -/
def P3677503816875301518.Spec : Prop :=
  ∀ n, P3677503816875301518.a n = (A381288 n : ℚ)

end A381288

/-! ## A381288.P8798969171827804856

`A055640(A008607(n)*A156552(n+1))`
-/

namespace A381288.P8798969171827804856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A008607 n * A156552 (n + 1)).toNat

end

end A381288.P8798969171827804856

namespace A381288

/-- `A055640(A008607(n)*A156552(n+1))` -/
def P8798969171827804856.Spec : Prop :=
  ∀ n, P8798969171827804856.a n = A381288 n

end A381288

/-! ## A381288.P11401261227587003167

`A055640(A161593(n+1)*A270317(n))`
-/

namespace A381288.P11401261227587003167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A161593 (n + 1) * A270317 n).toNat

end

end A381288.P11401261227587003167

namespace A381288

/-- `A055640(A161593(n+1)*A270317(n))` -/
def P11401261227587003167.Spec : Prop :=
  ∀ n, P11401261227587003167.a n = A381288 n

end A381288

/-! ## A381288.P10588476136476785262

`A109129(3*(n+1))-A166486(A092867(n+1))`
-/

namespace A381288.P10588476136476785262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109129 (3 * (n + 1)) - A166486 (A092867 (n + 1)).toNat

end

end A381288.P10588476136476785262

namespace A381288

/-- `A109129(3*(n+1))-A166486(A092867(n+1))` -/
def P10588476136476785262.Spec : Prop :=
  ∀ n, P10588476136476785262.a n = A381288 n

end A381288

/-!
# A381289: Number of subsets of 6 integers between 1 and n such that their sum is 0 modulo n.

The programs for A381289, the canonical program `A381289.P1617176722399721647` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381289 has offset 7).

The definition of A381289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381289.P1617176722399721647

`ogf((1+x+3x^2+2x^4+4x^5+x^6-x^7+x^8)/(1-2x-x^2+3x^3+x^4-x^5-4x^6+3x^7+3x^8-4x^9-x^10+x^11+3x^12-x^13-2x^14+x^15))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381289

/-- `ogf((1+x+3x^2+2x^4+4x^5+x^6-x^7+x^8)/(1-2x-x^2+3x^3+x^4-x^5-4x^6+3x^7+3x^8-4x^9-x^10+x^11+3x^12-x^13-2x^14+x^15))` -/
def P1617176722399721647.Spec : Prop :=
  ∀ n, P1617176722399721647.a n = A381289 (n + 7)

theorem P1617176722399721647.correct : P1617176722399721647.Spec := by
  intro n
  simp only [A381289, Nat.add_sub_cancel]

end A381289

/-! ## A381289.P4740305825578720841

`A307985(n+1)+A011796(n+1)`
-/

namespace A381289.P4740305825578720841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (n + 1) + A011796 (n + 1)

end

end A381289.P4740305825578720841

namespace A381289

/-- `A307985(n+1)+A011796(n+1)` -/
def P4740305825578720841.Spec : Prop :=
  ∀ n, P4740305825578720841.a n = A381289 (n + 7)

end A381289

/-! ## A381289.P2710736292553530910

`A374516(A136630(3*n+1))+A011796(n+1)`
-/

namespace A381289.P2710736292553530910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 (A136630 (3 * n + 1)).toNat + A011796 (n + 1)

end

end A381289.P2710736292553530910

namespace A381289

/-- `A374516(A136630(3*n+1))+A011796(n+1)` -/
def P2710736292553530910.Spec : Prop :=
  ∀ n, P2710736292553530910.a n = A381289 (n + 7)

end A381289

/-! ## A381289.P8638248358694025069

`A344739(A011782(n))+A011796(n+1)`
-/

namespace A381289.P8638248358694025069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344739 (A011782 n).toNat + A011796 (n + 1)

end

end A381289.P8638248358694025069

namespace A381289

/-- `A344739(A011782(n))+A011796(n+1)` -/
def P8638248358694025069.Spec : Prop :=
  ∀ n, P8638248358694025069.a n = A381289 (n + 7)

end A381289

/-!
# A381290: Number of subsets of 6 integers between 1 and n such that their sum is 1 modulo n.

The programs for A381290, the canonical program `A381290.P3964625547070745074` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A381290 has offset 7).

The definition of A381290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A381290.P3964625547070745074

`ogf((1+2x+3x^3+2x^4+2x^5+x^6+x^7)/(1-2x-x^2+3x^3+x^4-x^5-4x^6+3x^7+3x^8-4x^9-x^10+x^11+3x^12-x^13-2x^14+x^15))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A381290

/-- `ogf((1+2x+3x^3+2x^4+2x^5+x^6+x^7)/(1-2x-x^2+3x^3+x^4-x^5-4x^6+3x^7+3x^8-4x^9-x^10+x^11+3x^12-x^13-2x^14+x^15))` -/
def P3964625547070745074.Spec : Prop :=
  ∀ n, P3964625547070745074.a n = A381290 (n + 7)

theorem P3964625547070745074.correct : P3964625547070745074.Spec := by
  intro n
  simp only [A381290, Nat.add_sub_cancel]

end A381290

/-!
# A381291: Number of subsets of 8 integers between 1 and n such that their sum is 0 modulo n.

The programs for A381291, there is no canonical definition to state claims against.
-/

/-! ## A381291.P13396762687561453415

`A267632(eq[8, A144328(n+1)])`
-/

namespace A381291.P13396762687561453415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A381291.P13396762687561453415

/-! ## A381291.P1453106014420099091

`A110655(A018211(n+1))`
-/

namespace A381291.P1453106014420099091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A018211 (n + 1)).toNat

end

end A381291.P1453106014420099091

/-! ## A381291.P2294780165355516704

`A002265(A018211(n+1)+2)`
-/

namespace A381291.P2294780165355516704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A018211 (n + 1) + 2).toNat

end

end A381291.P2294780165355516704

/-! ## A381291.P16457557720462862568

`or(A249351(A075651(n+1)), A381350(n+9))`
-/

namespace A381291.P16457557720462862568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A249351 (A075651 (n + 1)).toNat) (A381350 (n + 9))

end

end A381291.P16457557720462862568

/-!
# A381292: Expansion of g.f. hypergeom([1/2, 3/4, 5/4], [1, 3/2], 256*x).

The programs for A381292, there is no canonical definition to state claims against.
-/

/-! ## A381292.P6403184686980441209

`record[A098660(Δ[n²])*A126869(n)]`
-/

namespace A381292.P6403184686980441209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098660 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381292.P6403184686980441209

/-! ## A381292.P10428712607430864385

`A000984(n)*A069720(2*n+1)`
-/

namespace A381292.P10428712607430864385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A069720 (2 * n + 1)

end

end A381292.P10428712607430864385

/-! ## A381292.P2131315999369719209

`A001700(2*n)*A060899(2*n)`
-/

namespace A381292.P2131315999369719209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (2 * n) * A060899 (2 * n)

end

end A381292.P2131315999369719209

/-! ## A381292.P11001563097118650184

`record[record[A128413(n+1)/2]*A126869(n)]`
-/

namespace A381292.P11001563097118650184
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128413 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * (A126869 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381292.P11001563097118650184

/-! ## A381292.P6464942709191523185

`record[(2*n+1)*A151374(n)*A126869(n)]`
-/

namespace A381292.P6464942709191523185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A151374 n * A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381292.P6464942709191523185

/-!
# A381294: Smallest number k such that there are n sets A_1,...,A_n with each A_i being a subset of {1,...,k} and the intersection of A_i and A_j has size |i-j| for all 1 <= i < j <= n.

The programs for A381294, there is no canonical definition to state claims against.
-/

/-! ## A381294.P7886732757538285498

`A248333(A007000(n))`
-/

namespace A381294.P7886732757538285498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A007000 n).toNat

end

end A381294.P7886732757538285498

/-! ## A381294.P56111934867339672

`A248333(A034379(n))`
-/

namespace A381294.P56111934867339672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A034379 n).toNat

end

end A381294.P56111934867339672

/-! ## A381294.P3597467248506682031

`A347697(A148631(n))`
-/

namespace A381294.P3597467248506682031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A148631 n).toNat

end

end A381294.P3597467248506682031

/-! ## A381294.P10175323340981557327

`A347697(A369528(n+1))`
-/

namespace A381294.P10175323340981557327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A369528 (n + 1)).toNat

end

end A381294.P10175323340981557327

/-! ## A381294.P9116400001967422490

`A347697(A371708(n+2))`
-/

namespace A381294.P9116400001967422490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347697 (A371708 (n + 2)).toNat

end

end A381294.P9116400001967422490

/-!
# A381296: a(n) = denominator( [(x*y*z*u*v)^n] 1/sqrt(1 - (x + y + z + u + v*(x*y*z + x*y*u + x*z*u + y*z*u))) ).

The programs for A381296, there is no canonical definition to state claims against.
-/

/-! ## A381296.P12393040412798737761

`A110316(n)^A302242(A215628(n+1))`
-/

namespace A381296.P12393040412798737761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110316 n : ℚ) ^ (A302242 (A215628 (n + 1)).toNat : ℤ)

end

end A381296.P12393040412798737761

/-! ## A381296.P12715406494857348689

`A370566(A001176(n+1)^A325676(n))`
-/

namespace A381296.P12715406494857348689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370566 (SequenceMachineLib.roundAway ((A001176 (n + 1) : ℚ) ^ (A325676 n : ℤ))).toNat

end

end A381296.P12715406494857348689

/-! ## A381296.P2580724284329592053

`A324386(n)^A324386(A013588(n+4))`
-/

namespace A381296.P2580724284329592053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324386 n : ℚ) ^ (A324386 (A013588 (n + 4)).toNat : ℤ)

end

end A381296.P2580724284329592053

/-!
# A381298: a(n) = denominator( [x^n] hypergeom([1/2, 1/2, 1/2, 1/4, 3/4], [1, 1, 1, 1], 256*x) ).

The programs for A381298, there is no canonical definition to state claims against.
-/

/-! ## A381298.P2153815587248454539

`2^A139365((n+1)^n)`
-/

namespace A381298.P2153815587248454539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A139365 ((n + 1) ^ n) : ℤ)

end

end A381298.P2153815587248454539

/-! ## A381298.P260712764504308336

`A052509(A364008(n+1))`
-/

namespace A381298.P260712764504308336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 (A364008 (n + 1)).toNat

end

end A381298.P260712764504308336

