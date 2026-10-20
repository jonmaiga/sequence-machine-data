import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A372800: Smallest prime p such that the multiplicative order of 16 modulo p is 2*n, or 0 if no such prime exists.

The programs for A372800, there is no canonical definition to state claims against.
-/

/-! ## A372800.P7198796969050149155

`A265759(A000032(n+1)*A040001(n))`
-/

namespace A372800.P7198796969050149155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (A000032 (n + 1) * A040001 n).toNat

end

end A372800.P7198796969050149155

/-! ## A372800.P6671104420593774884

`A265759(A000032(n+1)*A002331(n+1))`
-/

namespace A372800.P6671104420593774884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265759 (A000032 (n + 1) * A002331 (n + 1)).toNat

end

end A372800.P6671104420593774884

/-!
# A372801: Order of 16 modulo the n-th prime: least k such that prime(n) divides 16^k-1.

The programs for A372801, there is no canonical definition to state claims against.
-/

/-! ## A372801.P17685360261581985081

`A014664(n+2)/gcd(4, A014664(n+2))`
-/

namespace A372801.P17685360261581985081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014664 (n + 2) : ℚ) / (Int.gcd 4 (A014664 (n + 2)) : ℚ)

end

end A372801.P17685360261581985081

/-! ## A372801.P7508638753996939537

`A082654(n+2)/gcd(2, A082654(n+2))`
-/

namespace A372801.P7508638753996939537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082654 (n + 2) : ℚ) / (Int.gcd 2 (A082654 (n + 2)) : ℚ)

end

end A372801.P7508638753996939537

/-! ## A372801.P10587334495073148039

`A082654(n+2)-A240659(n+2)`
-/

namespace A372801.P10587334495073148039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 2) - A240659 (n + 2)

end

end A372801.P10587334495073148039

/-! ## A372801.P3076058054726664768

`A026741(A082654(n+2))`
-/

namespace A372801.P3076058054726664768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A082654 (n + 2)).toNat

end

end A372801.P3076058054726664768

/-! ## A372801.P5007547845126222995

`A003569(A005097(n+1))`
-/

namespace A372801.P5007547845126222995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A005097 (n + 1)).toNat

end

end A372801.P5007547845126222995

/-! ## A372801.P11407202291319819485

`A003569(A102781(n+2))`
-/

namespace A372801.P11407202291319819485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A102781 (n + 2)).toNat

end

end A372801.P11407202291319819485

/-! ## A372801.P6310009702648370304

`A003569(A130290(n+2))`
-/

namespace A372801.P6310009702648370304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (A130290 (n + 2)).toNat

end

end A372801.P6310009702648370304

/-! ## A372801.P5021454075322497529

`A003569(eq[n, A072451(n+1)])`
-/

namespace A372801.P5021454075322497529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A372801.P5021454075322497529

/-! ## A372801.P12425676491602555079

`A060819(A014664(n+2))`
-/

namespace A372801.P12425676491602555079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A014664 (n + 2)).toNat

end

end A372801.P12425676491602555079

/-! ## A372801.P12281927719098046543

`A054716(p?[2*n+1])`
-/

namespace A372801.P12281927719098046543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A372801.P12281927719098046543

/-! ## A372801.P17571470376747948073

`A054716(A065091(n+1))`
-/

namespace A372801.P17571470376747948073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A065091 (n + 1)).toNat

end

end A372801.P17571470376747948073

/-! ## A372801.P2566390571330437432

`A054716(A140475(n+1))`
-/

namespace A372801.P2566390571330437432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A140475 (n + 1)).toNat

end

end A372801.P2566390571330437432

/-! ## A372801.P9155675377428673530

`A054716(A000040(n+2))`
-/

namespace A372801.P9155675377428673530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A000040 (n + 2)).toNat

end

end A372801.P9155675377428673530

/-! ## A372801.P16396364095237517407

`A054716(A006005(n+2))`
-/

namespace A372801.P16396364095237517407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A006005 (n + 2)).toNat

end

end A372801.P16396364095237517407

/-! ## A372801.P12272079561329155650

`A054716(A161847(n+2))`
-/

namespace A372801.P12272079561329155650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A161847 (n + 2)).toNat

end

end A372801.P12272079561329155650

/-! ## A372801.P11978898026795447072

`A054716(A171577(n+2))`
-/

namespace A372801.P11978898026795447072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (A171577 (n + 2)).toNat

end

end A372801.P11978898026795447072

/-!
# A372802: Number of partitions of [n] having exactly one block of maximal size and one block of minimal size (and any number of non-extremal blocks).

The programs for A372802, there is no canonical definition to state claims against.
-/

/-! ## A372802.P10437441475232641085

`and(A007837(n), A056041(n))`
-/

namespace A372802.P10437441475232641085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007837 n) (A056041 n)

end

end A372802.P10437441475232641085

/-! ## A372802.P1374964165086114079

`A007837(n)-A278073(∑[n])`
-/

namespace A372802.P1374964165086114079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 n - A278073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A372802.P1374964165086114079

/-! ## A372802.P16210140981724328664

`A007837(n)%A082790(n+5)`
-/

namespace A372802.P16210140981724328664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007837 n) (A082790 (n + 5))

end

end A372802.P16210140981724328664

/-! ## A372802.P2453753932289948055

`A007837(n)-A051390(2*n+1)`
-/

namespace A372802.P2453753932289948055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 n - A051390 (2 * n + 1)

end

end A372802.P2453753932289948055

/-!
# A372808: a(n) = sum of the digits (mod 5) of 5^n.

The programs for A372808, the canonical program `A372808.P8392929225235514161` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372808 has offset 0).

The definition of A372808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372808.P8392929225235514161

`∑{digits}[5^n, #%5]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372808

/-- `∑{digits}[5^n, #%5]` -/
def P8392929225235514161.Spec : Prop :=
  ∀ n, (P8392929225235514161.a n : ℤ) = A372808 n

theorem P8392929225235514161.correct : P8392929225235514161.Spec := by
  intro n
  simp only [A372808]

end A372808

/-! ## A372808.P17429817609645087932

`∑{digits}[5^n, A010874(#)]`
-/

namespace A372808.P17429817609645087932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A010874 x).sum

end

end A372808.P17429817609645087932

namespace A372808

/-- `∑{digits}[5^n, A010874(#)]` -/
def P17429817609645087932.Spec : Prop :=
  ∀ n, P17429817609645087932.a n = A372808 n

end A372808

/-!
# A372810: a(n) is the smallest number whose Collatz trajectory contains n, if trajectories do not terminate at 1 but continue to cycle through 1, 4, 2, 1, 4, 2, 1, ... .

The programs for A372810, there is no canonical definition to state claims against.
-/

/-! ## A372810.P9313701934694149360

`gcd(A070167(n+1), A182688(n+1))`
-/

namespace A372810.P9313701934694149360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070167 (n + 1)) (A182688 (n + 1))

end

end A372810.P9313701934694149360

/-! ## A372810.P3617428210240963830

`gcd(A010815(A017994(n)), A070167(n+1))`
-/

namespace A372810.P3617428210240963830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A017994 n).toNat) (A070167 (n + 1))

end

end A372810.P3617428210240963830

/-!
# A372815: The square of n minus (the largest divisor d of n with 2 <= d <= m-1, or 0 if there is no such divisor).

The programs for A372815, there is no canonical definition to state claims against.
-/

/-! ## A372815.P14086371599035138375

`A364391(n+1)+n²+n`
-/

namespace A372815.P14086371599035138375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364391 (n + 1) + (n ^ 2 + n : ℤ)

end

end A372815.P14086371599035138375

/-! ## A372815.P2914865540362380706

`(n+1)²-A086971(A080926(n)+1)`
-/

namespace A372815.P2914865540362380706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A086971 (A080926 n + 1).toNat

end

end A372815.P2914865540362380706

/-!
# A372818: Table read by antidiagonals: T(m,n) = number of 2-metered (m,n)-parking functions.

The programs for A372818, there is no canonical definition to state claims against.
-/

/-! ## A372818.P15541551757512613390

`A372819(A219209(n+1))`
-/

namespace A372818.P15541551757512613390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372819 (A219209 (n + 1)).toNat

end

end A372818.P15541551757512613390

/-! ## A372818.P1081657929624496364

`A372819(n+1)%A163797(n+1)`
-/

namespace A372818.P1081657929624496364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372819 (n + 1)) (A163797 (n + 1))

end

end A372818.P1081657929624496364

/-! ## A372818.P2223496223443465436

`A372819(A243833(2*n+1)+n+1)`
-/

namespace A372818.P2223496223443465436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372819 (A243833 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A372818.P2223496223443465436

/-! ## A372818.P9500990303824139671

`A372820(n+1)%A101819(∑{d}[n+1, #])`
-/

namespace A372818.P9500990303824139671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372820 (n + 1)) (A101819 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A372818.P9500990303824139671

/-! ## A372818.P12724768991566281069

`A372819(n+1)+A048146(A001317(n))`
-/

namespace A372818.P12724768991566281069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372819 (n + 1) + A048146 (A001317 n).toNat

end

end A372818.P12724768991566281069

/-!
# A372819: Table read by antidiagonals: T(m,n) = number of 3-metered (m,n)-parking functions.

The programs for A372819, there is no canonical definition to state claims against.
-/

/-! ## A372819.P7577686146749540915

`and(A086839(n+1), A372820(n+1))`
-/

namespace A372819.P7577686146749540915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086839 (n + 1)) (A372820 (n + 1))

end

end A372819.P7577686146749540915

/-! ## A372819.P16885842196664036360

`and(A140330(n+1), A372820(n+1))`
-/

namespace A372819.P16885842196664036360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140330 (n + 1)) (A372820 (n + 1))

end

end A372819.P16885842196664036360

/-! ## A372819.P15569598288587339680

`A372820(n+1)%A270929(comp[∑[n]])`
-/

namespace A372819.P15569598288587339680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372820 (n + 1)) (A270929 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A372819.P15569598288587339680

/-! ## A372819.P3137625818370971345

`A372820(n+1)+A102683(A058710(n))`
-/

namespace A372819.P3137625818370971345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372820 (n + 1) + A102683 (A058710 n).toNat

end

end A372819.P3137625818370971345

/-! ## A372819.P14499593595422039108

`A372820(n+1)+A185013(A000330(n))`
-/

namespace A372819.P14499593595422039108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372820 (n + 1) + A185013 (A000330 n).toNat

end

end A372819.P14499593595422039108

/-!
# A372820: Table read by antidiagonals: T(m,n) = number of 4-metered (m,n)-parking functions.

The programs for A372820, there is no canonical definition to state claims against.
-/

/-! ## A372820.P15531961764281762197

`C(A372819(n+1), A224814(A364830(2*n+1)))`
-/

namespace A372820.P15531961764281762197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A372819 (n + 1)).toNat (A224814 (A364830 (2 * n + 1)).toNat).toNat

end

end A372820.P15531961764281762197

/-!
# A372822: a(n) = floor(n*tanh(Pi/2)).

The programs for A372822, the canonical program `A372822.P6657335928837300334` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372822 has offset 0).

The definition of A372822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*tanh(π/2))` (program `A372822.P6657335928837300334`, by `A372822.P6657335928837300334.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A372822.P6657335928837300334

`floor(n*tanh(π/2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372822

/-- `floor(n*tanh(π/2))` -/
def P6657335928837300334.Spec : Prop :=
  ∀ n, P6657335928837300334.a n = A372822 n

theorem P6657335928837300334.correct : P6657335928837300334.Spec := by
  intro n
  simp only [A372822]

end A372822

/-! ## A372822.P2613296830072442079

`∑[A047751(A047751(n+4)+1)]-1`
-/

namespace A372822.P2613296830072442079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (A047751 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A372822.P2613296830072442079

namespace A372822

/-- `∑[A047751(A047751(n+4)+1)]-1` -/
def P2613296830072442079.Spec : Prop :=
  ∀ n, P2613296830072442079.a n = A372822 n

end A372822

/-! ## A372822.P8519443892070802589

`floor(11*n/12)*A214293((n+2)²)`
-/

namespace A372822.P8519443892070802589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 * ((n : ℚ) / 12)⌋ * A214293 ((n + 2) ^ 2)

end

end A372822.P8519443892070802589

namespace A372822

/-- `floor(11*n/12)*A214293((n+2)²)` -/
def P8519443892070802589.Spec : Prop :=
  ∀ n, P8519443892070802589.a n = A372822 n

end A372822

/-! ## A372822.P5544931486216112502

`A010051(A000567(2*(n+2)))+floor(11*n/12)`
-/

namespace A372822.P5544931486216112502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000567 (2 * (n + 2))).toNat + ⌊11 * ((n : ℚ) / 12)⌋

end

end A372822.P5544931486216112502

namespace A372822

/-- `A010051(A000567(2*(n+2)))+floor(11*n/12)` -/
def P5544931486216112502.Spec : Prop :=
  ∀ n, P5544931486216112502.a n = A372822 n

end A372822

/-! ## A372822.P12680874719198620276

`n+1-round(A089870(n+17)/12)`
-/

namespace A372822.P12680874719198620276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - SequenceMachineLib.roundAway ((A089870 (n + 17) : ℚ) / 12)

end

end A372822.P12680874719198620276

namespace A372822

/-- `n+1-round(A089870(n+17)/12)` -/
def P12680874719198620276.Spec : Prop :=
  ∀ n, P12680874719198620276.a n = A372822 n

end A372822

/-!
# A372823: Sequence formed as follows: for each k >= 0, insert between 3^k and 3^(k+1) the least power of 2 that is in the interval [3^k, 3^(k+1)], and then arrange the resulting numbers in nondecreasing order.

The programs for A372823, there is no canonical definition to state claims against.
-/

/-! ## A372823.P3752972243762373533

`A040382(2^n)^A372825(n)`
-/

namespace A372823.P3752972243762373533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040382 (2 ^ n) : ℚ) ^ (A372825 n : ℤ)

end

end A372823.P3752972243762373533

/-! ## A372823.P3240979078418975884

`A309639(round(A163912(n)/2))`
-/

namespace A372823.P3240979078418975884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309639 (SequenceMachineLib.roundAway ((A163912 n : ℚ) / 2)).toNat

end

end A372823.P3240979078418975884

/-! ## A372823.P10955969363454488343

`A109814(∏[A338687(∑{d}[n+1, #])])`
-/

namespace A372823.P10955969363454488343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338687 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109814 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372823.P10955969363454488343

/-!
# A372824: Sequence formed as follows: for each k >= 0, insert between 3^k and 3^(k+1) the greatest power of 2 that is in the interval [3^k, 3^(k+1)], and then arrange the resulting numbers in nondecreasing order.

The programs for A372824, there is no canonical definition to state claims against.
-/

/-! ## A372824.P11468478990763426201

`∪[A000244(n), A098232(n)]`
-/

namespace A372824.P11468478990763426201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098232 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372824.P11468478990763426201

/-! ## A372824.P14903510508016966056

`∪[A376478(n+1), A098232(n)]`
-/

namespace A372824.P14903510508016966056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098232 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372824.P14903510508016966056

/-! ## A372824.P10368274751923809304

`∪[A000244(n), A000079(A056576(n))]`
-/

namespace A372824.P10368274751923809304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056576 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372824.P10368274751923809304

/-! ## A372824.P8459730940517017472

`∪[A000244(n), A000079(A020914(n)-1)]`
-/

namespace A372824.P8459730940517017472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A020914 n - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A372824.P8459730940517017472

/-!
# A372825: Exponents of 3 and 2 in sequence A372823.

The programs for A372825, there is no canonical definition to state claims against.
-/

/-! ## A372825.P4271496603512527497

`ceil(log2((n%2+2)^floor(n/2)))`
-/

namespace A372825.P4271496603512527497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (((n % 2 + 2 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) : ℝ)⌉

end

end A372825.P4271496603512527497

/-! ## A372825.P6370684016748102703

`ceil(log2(A098293(n)))`
-/

namespace A372825.P6370684016748102703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A098293 n : ℝ)⌉

end

end A372825.P6370684016748102703

/-! ## A372825.P4704968313650693424

`A064680(n)%A336109(n+1)`
-/

namespace A372825.P4704968313650693424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064680 n) (A336109 (n + 1))

end

end A372825.P4704968313650693424

/-! ## A372825.P3745119599263331956

`∑{e}[A372823(n), #]`
-/

namespace A372825.P3745119599263331956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A372825.P3745119599263331956

/-! ## A372825.P15271239008192117745

`A001222(A372823(n))`
-/

namespace A372825.P15271239008192117745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A372823 n).toNat

end

end A372825.P15271239008192117745

/-!
# A372826: Exponents of 3 and 2 in sequence A372824.

The programs for A372826, there is no canonical definition to state claims against.
-/

/-! ## A372826.P15592832824586000486

`floor(log2(A258439(n+1)))`
-/

namespace A372826.P15592832824586000486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A258439 (n + 1)).toNat

end

end A372826.P15592832824586000486

/-! ## A372826.P10647450164047807555

`A271478(n)%A188040(n+1)`
-/

namespace A372826.P10647450164047807555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271478 n) (A188040 (n + 1))

end

end A372826.P10647450164047807555

/-! ## A372826.P5878222060532647117

`A006370(n)%(A286904(n+1)-1)`
-/

namespace A372826.P5878222060532647117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006370 n) (A286904 (n + 1) - 1)

end

end A372826.P5878222060532647117

/-! ## A372826.P14301488402884763387

`A372825(n+2)-1`
-/

namespace A372826.P14301488402884763387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372825 (n + 2) - 1

end

end A372826.P14301488402884763387

/-! ## A372826.P14681695504041998519

`A004526(A372825(n+2)+A372825(n))`
-/

namespace A372826.P14681695504041998519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A372825 (n + 2) + A372825 n).toNat

end

end A372826.P14681695504041998519

/-!
# A372829: a(n) = n! * Sum_{k=0..floor(n/2)} k! / (2*k)!.

The programs for A372829, there is no canonical definition to state claims against.
-/

/-! ## A372829.P114759772622798099

`A074840(A010051(n+3)+A000522(n))`
-/

namespace A372829.P114759772622798099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (A010051 (n + 3) + A000522 n).toNat

end

end A372829.P114759772622798099

/-! ## A372829.P12312516135372380098

`A056576(A325109(n)!)`
-/

namespace A372829.P12312516135372380098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (Nat.factorial (A325109 n).toNat)

end

end A372829.P12312516135372380098

/-!
# A372832: a(n) is the numerator of Sum_{d|n, d <= sqrt(n)} 1/d.

The programs for A372832, there is no canonical definition to state claims against.
-/

/-! ## A372832.P17120227049728285417

`∑{e}[A135079(A072499(n+1)), #]`
-/

namespace A372832.P17120227049728285417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135079 (A072499 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A372832.P17120227049728285417

/-! ## A372832.P5479722719107215193

`A316848(A066839(n+1)!+1)`
-/

namespace A372832.P5479722719107215193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316848 (Nat.factorial (A066839 (n + 1)).toNat + 1)

end

end A372832.P5479722719107215193

/-! ## A372832.P15121626384361604622

`A347529(A072499(n+1)%A180631(n+1))`
-/

namespace A372832.P15121626384361604622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347529 (Int.tmod (A072499 (n + 1)) (A180631 (n + 1))).toNat

end

end A372832.P15121626384361604622

/-! ## A372832.P9929431279807057306

`A007091(A333752(n+1)%A333788(n+1))`
-/

namespace A372832.P9929431279807057306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (Int.tmod (A333752 (n + 1)) (A333788 (n + 1))).toNat

end

end A372832.P9929431279807057306

/-! ## A372832.P16056084188168518644

`A344594(n+1)+A070039(A344592(n+1))`
-/

namespace A372832.P16056084188168518644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344594 (n + 1) + A070039 (A344592 (n + 1)).toNat

end

end A372832.P16056084188168518644

/-!
# A372833: a(n) is the denominator of Sum_{d|n, d <= sqrt(n)} 1/d.

The programs for A372833, there is no canonical definition to state claims against.
-/

/-! ## A372833.P11940872274858799879

`A072504(n+1)%A125163(A099567(n))`
-/

namespace A372833.P11940872274858799879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072504 (n + 1)) (A125163 (A099567 n).toNat)

end

end A372833.P11940872274858799879

/-!
# A372834: a(n) is the numerator of Sum_{d|n, d < sqrt(n)} 1/d.

The programs for A372834, there is no canonical definition to state claims against.
-/

/-! ## A372834.P7517306707305776014

`A007091(A070039(n+1))%A127787(3*n+1)`
-/

namespace A372834.P7517306707305776014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007091 (A070039 (n + 1)).toNat) (A127787 (3 * n + 1))

end

end A372834.P7517306707305776014

/-! ## A372834.P10836060273673672217

`A007091(A070039(n+1))%A160474(n+5)`
-/

namespace A372834.P10836060273673672217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007091 (A070039 (n + 1)).toNat) (A160474 (n + 5))

end

end A372834.P10836060273673672217

/-! ## A372834.P8016765484850682969

`A293292(A070039(n+1)+1)%A239663(n+5)`
-/

namespace A372834.P8016765484850682969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293292 (A070039 (n + 1) + 1).toNat) (A239663 (n + 5))

end

end A372834.P8016765484850682969

/-! ## A372834.P12344169403706611540

`A007091(A070039(n+1)%A219043(n+1))`
-/

namespace A372834.P12344169403706611540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (Int.tmod (A070039 (n + 1)) (A219043 (n + 1))).toNat

end

end A372834.P12344169403706611540

/-! ## A372834.P7168788976409172829

`A093040(A070039(n+1))%A326488(n+1)`
-/

namespace A372834.P7168788976409172829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093040 (A070039 (n + 1)).toNat) (A326488 (n + 1))

end

end A372834.P7168788976409172829

/-!
# A372835: a(n) is the denominator of Sum_{d|n, d < sqrt(n)} 1/d.

The programs for A372835, there is no canonical definition to state claims against.
-/

/-! ## A372835.P7466857457646294382

`gcd(A072504(n+1), A100540(A060775(n+1)))`
-/

namespace A372835.P7466857457646294382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072504 (n + 1)) (A100540 (A060775 (n + 1)).toNat)

end

end A372835.P7466857457646294382

/-! ## A372835.P4990109173240036490

`gcd(A278640(n), A363520(n+1))`
-/

namespace A372835.P4990109173240036490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A278640 n) (A363520 (n + 1))

end

end A372835.P4990109173240036490

/-! ## A372835.P2145052484942462179

`A353897(A363520(n+1)%A293289(n+2))`
-/

namespace A372835.P2145052484942462179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (Int.tmod (A363520 (n + 1)) (A293289 (n + 2))).toNat

end

end A372835.P2145052484942462179

/-! ## A372835.P5206541867247260266

`gcd(A007948(n+1), A333175(A263673(n)))`
-/

namespace A372835.P5206541867247260266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007948 (n + 1)) (A333175 (A263673 n).toNat)

end

end A372835.P5206541867247260266

/-! ## A372835.P1529142657333976975

`gcd(A072504(n+1), A382996(n+1))`
-/

namespace A372835.P1529142657333976975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072504 (n + 1)) (A382996 (n + 1))

end

end A372835.P1529142657333976975

/-!
# A372836: a(n) is the numerator of Sum_{d|n, 1 < d < n} 1/d.

The programs for A372836, the canonical program `A372836.P15851100196529758634` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372836 has offset 1).

The definition of A372836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372836.P15851100196529758634

`A048050(n+1)/gcd(n+1, A048050(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A372836

/-- `A048050(n+1)/gcd(n+1, A048050(n+1))` -/
def P15851100196529758634.Spec : Prop :=
  ∀ n, P15851100196529758634.a n = (A372836 (n + 1) : ℚ)

end A372836

/-! ## A372836.P1824404420388122914

`A116416(A328337(n+1))`
-/

namespace A372836.P1824404420388122914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116416 (A328337 (n + 1)).toNat

end

end A372836.P1824404420388122914

namespace A372836

/-- `A116416(A328337(n+1))` -/
def P1824404420388122914.Spec : Prop :=
  ∀ n, P1824404420388122914.a n = A372836 (n + 1)

end A372836

/-! ## A372836.P17792427537662787007

`A214949(A106708(n+1))`
-/

namespace A372836.P17792427537662787007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214949 (A106708 (n + 1)).toNat

end

end A372836.P17792427537662787007

namespace A372836

/-- `A214949(A106708(n+1))` -/
def P17792427537662787007.Spec : Prop :=
  ∀ n, P17792427537662787007.a n = A372836 (n + 1)

end A372836

/-! ## A372836.P5633818167963931865

`A325130(A171251(n+1))%A048671(n+1)`
-/

namespace A372836.P5633818167963931865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325130 (A171251 (n + 1)).toNat) (A048671 (n + 1))

end

end A372836.P5633818167963931865

namespace A372836

/-- `A325130(A171251(n+1))%A048671(n+1)` -/
def P5633818167963931865.Spec : Prop :=
  ∀ n, P5633818167963931865.a n = A372836 (n + 1)

end A372836

/-! ## A372836.P15001428902415138845

`A274130(3*n+5)%A205959(n+1)`
-/

namespace A372836.P15001428902415138845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274130 (3 * n + 5)) (A205959 (n + 1))

end

end A372836.P15001428902415138845

namespace A372836

/-- `A274130(3*n+5)%A205959(n+1)` -/
def P15001428902415138845.Spec : Prop :=
  ∀ n, P15001428902415138845.a n = A372836 (n + 1)

end A372836

/-!
# A372840: a(n) = 5-adic valuation of A008336(5*n).

The programs for A372840, there is no canonical definition to state claims against.
-/

/-! ## A372840.P14839695269399668016

`A196564(2*n)+A060953(∑[A022144(n)])`
-/

namespace A372840.P14839695269399668016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (2 * n) + A060953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372840.P14839695269399668016

/-! ## A372840.P10292088252161394212

`and(A123201(n+1), A236000(A262544(n+1)))`
-/

namespace A372840.P10292088252161394212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123201 (n + 1)) (A236000 (A262544 (n + 1)).toNat)

end

end A372840.P10292088252161394212

/-! ## A372840.P17503676332364056889

`A040081(A321471(n+1)+A129204(n))`
-/

namespace A372840.P17503676332364056889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A321471 (n + 1) + A129204 n).toNat

end

end A372840.P17503676332364056889

/-! ## A372840.P8755363398770853485

`A072170(A198514(n+1))-A227551(n)`
-/

namespace A372840.P8755363398770853485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A198514 (n + 1)).toNat - A227551 n

end

end A372840.P8755363398770853485

/-! ## A372840.P3377577742450062574

`A037911(A152773(3*n)+A022958(n))`
-/

namespace A372840.P3377577742450062574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037911 (A152773 (3 * n) + A022958 n).toNat

end

end A372840.P3377577742450062574

/-!
# A372841: 4-full numbers that are not prime powers.

The programs for A372841, there is no canonical definition to state claims against.
-/

/-! ## A372841.P11471770272267285063

`∩[A036967(n+1), A372695(n+1)]`
-/

namespace A372841.P11471770272267285063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372841.P11471770272267285063

/-! ## A372841.P14049803389745879317

`∩[A036967(n+1), A376936(n+1)]`
-/

namespace A372841.P14049803389745879317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372841.P14049803389745879317

/-! ## A372841.P6226255008916039222

`∩[A036967(n+1), A372404(n+1)]`
-/

namespace A372841.P6226255008916039222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372841.P6226255008916039222

/-! ## A372841.P8267952403633849572

`∩[A036967(n+1), A286708(n+1)]`
-/

namespace A372841.P8267952403633849572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372841.P8267952403633849572

/-! ## A372841.P9718268314346261944

`∩[A036967(n+1), A391968(n+1)]`
-/

namespace A372841.P9718268314346261944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372841.P9718268314346261944

/-!
# A372842: a(n) is the number of parking functions of order n for which the second spot is lucky.

The programs for A372842, the canonical program `A372842.P2397356972932678415` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372842 has offset 2).

The definition of A372842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372842.P2397356972932678415

`3/4*(n+3)^(n+1)-1/4*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372842

/-- `3/4*(n+3)^(n+1)-1/4*(n+1)^(n+1)` -/
def P2397356972932678415.Spec : Prop :=
  ∀ n, P2397356972932678415.a n = (A372842 (n + 2) : ℚ)

end A372842

/-!
# A372843: a(n) is the number of parking functions of order n for which the third spot is lucky.

The programs for A372843, the canonical program `A372843.P13691355703014907915` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372843 has offset 3).

The definition of A372843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372843.P13691355703014907915

`2/3*(n+4)^(n+2)-1/3*(2*(n+3)-1)*(n+1)^(n+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372843

/-- `2/3*(n+4)^(n+2)-1/3*(2*(n+3)-1)*(n+1)^(n+1)` -/
def P13691355703014907915.Spec : Prop :=
  ∀ n, P13691355703014907915.a n = (A372843 (n + 3) : ℚ)

end A372843

/-!
# A372851: Squarefree numbers whose prime indices are the binary indices of some prime number.

The programs for A372851, there is no canonical definition to state claims against.
-/

/-! ## A372851.P8075635174024414081

`record[A007913(A277319(n+1))]`
-/

namespace A372851.P8075635174024414081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A277319 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372851.P8075635174024414081

/-! ## A372851.P15694461936550092016

`filter[A277319(n+1), A008966(#)]`
-/

namespace A372851.P15694461936550092016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A372851.P15694461936550092016

/-! ## A372851.P8928760736723261573

`∩[A005117(n+1), A277319(n+1)]`
-/

namespace A372851.P8928760736723261573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P8928760736723261573

/-! ## A372851.P6315964574624603551

`∩[A034044(n+1), A277319(n+1)]`
-/

namespace A372851.P6315964574624603551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P6315964574624603551

/-! ## A372851.P15191228070392298427

`∩[A087249(n+1), A277319(n+1)]`
-/

namespace A372851.P15191228070392298427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P15191228070392298427

/-! ## A372851.P12860625411747001172

`∩[A107998(n+1), A277319(n+1)]`
-/

namespace A372851.P12860625411747001172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P12860625411747001172

/-! ## A372851.P1718584192724694570

`∩[A144338(n+1), A277319(n+1)]`
-/

namespace A372851.P1718584192724694570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P1718584192724694570

/-! ## A372851.P17638275282377617801

`∩[A230375(n+1), A277319(n+1)]`
-/

namespace A372851.P17638275282377617801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P17638275282377617801

/-! ## A372851.P5010729609101118788

`∩[A277319(n+1), A348506(n+1)]`
-/

namespace A372851.P5010729609101118788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P5010729609101118788

/-! ## A372851.P5850729467491498671

`∩[A277319(n+1), A348961(n+1)]`
-/

namespace A372851.P5850729467491498671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372851.P5850729467491498671

/-!
# A372852: a(n) is the total number of runs of ascents over all flattened Catalan words of length n.

The programs for A372852, the canonical program `A372852.P7705018397727502091` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372852 has offset 1).

The definition of A372852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372852.P7705018397727502091

`(3^n+1)*(n+2)/4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372852

/-- `(3^n+1)*(n+2)/4` -/
def P7705018397727502091.Spec : Prop :=
  ∀ n, P7705018397727502091.a n = (A372852 (n + 1) : ℚ)

end A372852

/-! ## A372852.P15104788530967950264

`A372872(n+1)+A082133(n)`
-/

namespace A372852.P15104788530967950264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372872 (n + 1) + A082133 n

end

end A372852.P15104788530967950264

namespace A372852

/-- `A372872(n+1)+A082133(n)` -/
def P15104788530967950264.Spec : Prop :=
  ∀ n, P15104788530967950264.a n = A372852 (n + 1)

end A372852

/-! ## A372852.P3300378739134051197

`A372874(n+1)-A082133(n)`
-/

namespace A372852.P3300378739134051197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372874 (n + 1) - A082133 n

end

end A372852.P3300378739134051197

namespace A372852

/-- `A372874(n+1)-A082133(n)` -/
def P3300378739134051197.Spec : Prop :=
  ∀ n, P3300378739134051197.a n = A372852 (n + 1)

end A372852

/-! ## A372852.P2985227041415458087

`A212337(n)-A392084(n)`
-/

namespace A372852.P2985227041415458087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212337 n - A392084 n

end

end A372852.P2985227041415458087

namespace A372852

/-- `A212337(n)-A392084(n)` -/
def P2985227041415458087.Spec : Prop :=
  ∀ n, P2985227041415458087.a n = A372852 (n + 1)

end A372852

/-! ## A372852.P2898851876747220264

`A288834(n+1)-A261064(n+1)`
-/

namespace A372852.P2898851876747220264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - A261064 (n + 1)

end

end A372852.P2898851876747220264

namespace A372852

/-- `A288834(n+1)-A261064(n+1)` -/
def P2898851876747220264.Spec : Prop :=
  ∀ n, P2898851876747220264.a n = A372852 (n + 1)

end A372852

/-!
# A372853: Numbers of uniquely embeddable planar connected graphs on n vertices.

The programs for A372853, there is no canonical definition to state claims against.
-/

/-! ## A372853.P5743433836572935292

`A217556(∑[(1-n)²])`
-/

namespace A372853.P5743433836572935292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217556 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A372853.P5743433836572935292

/-! ## A372853.P6049377884372444284

`A030454(A149347(n))`
-/

namespace A372853.P6049377884372444284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030454 (A149347 n).toNat

end

end A372853.P6049377884372444284

/-!
# A372854: Maximum numbers of planar embeddings for connected planar graphs on n vertices.

The programs for A372854, there is no canonical definition to state claims against.
-/

/-! ## A372854.P4082215475894249546

`gcd(A000602(n)!, A018350(2*(n+2)))`
-/

namespace A372854.P4082215475894249546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A000602 n).toNat : ℤ) (A018350 (2 * (n + 2)))

end

end A372854.P4082215475894249546

/-! ## A372854.P14605996986203646072

`A118851(A038168(n+1)-A241914(n+1))`
-/

namespace A372854.P14605996986203646072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 (A038168 (n + 1) - A241914 (n + 1)).toNat

end

end A372854.P14605996986203646072

/-! ## A372854.P4590178071124370358

`A118851(A038168(n+1)-A303138(n+4))`
-/

namespace A372854.P4590178071124370358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118851 (A038168 (n + 1) - A303138 (n + 4)).toNat

end

end A372854.P4590178071124370358

/-!
# A372858: Decimal expansion of (1 + log(2))/2.

The programs for A372858, there is no canonical definition to state claims against.
-/

/-! ## A372858.P18254951085728647201

`9-A382854(n)`
-/

namespace A372858.P18254951085728647201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A382854 n

end

end A372858.P18254951085728647201

/-!
# A372865: a(n) = (Sum_{k = 1..n-1} k*a(k)) (mod n) with a(1) = 1.

The programs for A372865, the canonical program `A372865.P14439274848610670333` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372865 has offset 1).

The definition of A372865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372865.P14439274848610670333

`Δ[a(n-1)+n*a(n-1)%n]/(n+1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372865

/-- `Δ[a(n-1)+n*a(n-1)%n]/(n+1)` -/
def P14439274848610670333.Spec : Prop :=
  ∀ n, P14439274848610670333.a n = (A372865 (n + 1) : ℚ)

end A372865

/-! ## A372865.P8940640384834374015

`A095238(n+1)/(n+1)`
-/

namespace A372865.P8940640384834374015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095238 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A372865.P8940640384834374015

namespace A372865

/-- `A095238(n+1)/(n+1)` -/
def P8940640384834374015.Spec : Prop :=
  ∀ n, P8940640384834374015.a n = (A372865 (n + 1) : ℚ)

end A372865

/-!
# A372866: a(n) is the sum, over all positive integers x, y such that x*y <= n, of phi(gcd(x,y)).

The programs for A372866, the canonical program `A372866.P5052813688178563770` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372866 has offset 1).

The definition of A372866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372866.P3978953782871408499

`∑[A001616(n+1)]`
-/

namespace A372866.P3978953782871408499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372866.P3978953782871408499

namespace A372866

/-- `∑[A001616(n+1)]` -/
def P3978953782871408499.Spec : Prop :=
  ∀ n, P3978953782871408499.a n = A372866 (n + 1)

end A372866

/-! ## A372866.P15270277009482461203

`∑[∑{d}[n+1, A000010(gcd(#, (n+1)/#))]]`
-/

namespace A372866.P15270277009482461203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 (Int.gcd (d : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372866.P15270277009482461203

namespace A372866

/-- `∑[∑{d}[n+1, A000010(gcd(#, (n+1)/#))]]` -/
def P15270277009482461203.Spec : Prop :=
  ∀ n, P15270277009482461203.a n = A372866 (n + 1)

end A372866

/-! ## A372866.P13728606169030949975

`∑[A367203(n+1)/A000188(n+1)]`
-/

namespace A372866.P13728606169030949975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367203 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372866.P13728606169030949975

namespace A372866

/-- `∑[A367203(n+1)/A000188(n+1)]` -/
def P13728606169030949975.Spec : Prop :=
  ∀ n, P13728606169030949975.a n = (A372866 (n + 1) : ℚ)

end A372866

/-! ## A372866.P7843579470948971776

`∑[∑{d}[A007947(n+1), A000188((n+1)/#)]]`
-/

namespace A372866.P7843579470948971776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A000188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372866.P7843579470948971776

namespace A372866

/-- `∑[∑{d}[A007947(n+1), A000188((n+1)/#)]]` -/
def P7843579470948971776.Spec : Prop :=
  ∀ n, P7843579470948971776.a n = A372866 (n + 1)

end A372866

/-! ## A372866.P13232077730819008811

`∑[∑{d}[n+1, A000010(A000188(n%#+1))]]`
-/

namespace A372866.P13232077730819008811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 (A000188 (n % d + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372866.P13232077730819008811

namespace A372866

/-- `∑[∑{d}[n+1, A000010(A000188(n%#+1))]]` -/
def P13232077730819008811.Spec : Prop :=
  ∀ n, P13232077730819008811.a n = A372866 (n + 1)

end A372866

/-! ## A372866.P5052813688178563770

`∑[∑{d}[n+1, A055155(#)*A271102((n+1)/#)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A372866

/-- `∑[∑{d}[n+1, A055155(#)*A271102((n+1)/#)]]` -/
def P5052813688178563770.Spec : Prop :=
  ∀ n, P5052813688178563770.a n = A372866 (n + 1)

theorem P5052813688178563770.correct : P5052813688178563770.Spec := by
  intro n
  simp only [A372866, Nat.add_sub_cancel]

end A372866

/-!
# A372867: Distinct terms in A242017, listed in the order of their appearance.

The programs for A372867, there is no canonical definition to state claims against.
-/

/-! ## A372867.P7526032071284860635

`filter[A057775(n+1), A088150(#)]`
-/

namespace A372867.P7526032071284860635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088150 (f1 j).toNat = 1) n)

end

end A372867.P7526032071284860635

/-! ## A372867.P5905293687363605376

`A057775(A070939(n)+A062934(n+1))`
-/

namespace A372867.P5905293687363605376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 (A070939 n + A062934 (n + 1)).toNat

end

end A372867.P5905293687363605376

/-!
# A372868: Irregular triangle read by rows: T(n,k) is the number of flattened Catalan words of length n with exactly k runs of weak ascents, with 1 <= k <= ceiling(n/2).

The programs for A372868, there is no canonical definition to state claims against.
-/

/-! ## A372868.P14618613904077355210

`A193791(comp[n²]+n)`
-/

namespace A372868.P14618613904077355210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A372868.P14618613904077355210

/-! ## A372868.P3330502979502227532

`A038207(2*n-floor(sqrt(n)))`
-/

namespace A372868.P3330502979502227532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (2 * n - Nat.sqrt n)

end

end A372868.P3330502979502227532

/-! ## A372868.P14225379540585111285

`A065109(n-floor(sqrt(n))+n)`
-/

namespace A372868.P14225379540585111285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 ((n : ℤ) - (Nat.sqrt n : ℤ) + (n : ℤ)).toNat

end

end A372868.P14225379540585111285

/-! ## A372868.P16271076754886746416

`A114192(A091018(n))`
-/

namespace A372868.P16271076754886746416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114192 (A091018 n).toNat

end

end A372868.P16271076754886746416

/-!
# A372870: G.f. A(x) satisfies A(x)^3 = A(x^3) / (1 - 3*x)^3 with A(0)=1.

The programs for A372870, there is no canonical definition to state claims against.
-/

/-! ## A372870.P13432185275368579857

`A057360(A132835(n+1))`
-/

namespace A372870.P13432185275368579857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A132835 (n + 1)).toNat

end

end A372870.P13432185275368579857

/-! ## A372870.P2881783496214948109

`A004526(A017982(3*n+2))`
-/

namespace A372870.P2881783496214948109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A017982 (3 * n + 2)).toNat

end

end A372870.P2881783496214948109

/-! ## A372870.P12685444320037037579

`A004526(A017983(3*n+2))`
-/

namespace A372870.P12685444320037037579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A017983 (3 * n + 2)).toNat

end

end A372870.P12685444320037037579

/-! ## A372870.P12599569418067157636

`A002265(2*A017982(3*n+2))`
-/

namespace A372870.P12599569418067157636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A017982 (3 * n + 2)).toNat

end

end A372870.P12599569418067157636

/-!
# A372871: Number of compositions of n into n nonnegative parts such that their xor-sum is not zero.

The programs for A372871, there is no canonical definition to state claims against.
-/

/-! ## A372871.P15416222361641706284

`ceil(n/2)*A003059((C(2*n, n)/(n+1))²)`
-/

namespace A372871.P15416222361641706284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A003059 (SequenceMachineLib.roundAway (((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)) ^ 2)).toNat

end

end A372871.P15416222361641706284

/-! ## A372871.P4737922948163387680

`A373070(A038407(n+1))`
-/

namespace A372871.P4737922948163387680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373070 (A038407 (n + 1)).toNat

end

end A372871.P4737922948163387680

/-!
# A372872: a(n) is the total number of runs of weak ascents over all flattened Catalan words of length n.

The programs for A372872, the canonical program `A372872.P5209676324782287963` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372872 has offset 1).

The definition of A372872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372872.P5209676324782287963

`8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372872

/-- `8*a(n-1)-22*a(n-2)+24*a(n-3)-9*a(n-4)` -/
def P5209676324782287963.Spec : Prop :=
  ∀ n, P5209676324782287963.a n = A372872 (n + 1)

theorem P5209676324782287963.correct : P5209676324782287963.Spec := by
  intro n
  simp only [A372872, Nat.add_sub_cancel]

end A372872

/-! ## A372872.P1806153640921260891

`(27-9*(n+1)+(5+n+1)*3^(n+1))/36`
-/

namespace A372872.P1806153640921260891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (27 - (9 * (n + 1) : ℤ) + ((5 + (n + 1)) * 3 ^ (n + 1) : ℤ) : ℚ) / 36

end

end A372872.P1806153640921260891

namespace A372872

/-- `(27-9*(n+1)+(5+n+1)*3^(n+1))/36` -/
def P1806153640921260891.Spec : Prop :=
  ∀ n, P1806153640921260891.a n = (A372872 (n + 1) : ℚ)

theorem P1806153640921260891.correct : P1806153640921260891.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A372872, Nat.add_sub_cancel, A372872.P1806153640921260891.a, A372872.P5209676324782287963.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A372872, Nat.add_sub_cancel, A372872.P1806153640921260891.a, A372872.P5209676324782287963.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A372872

/-! ## A372872.P10462660002340709526

`A121365(n+1)+∑[A003462(n)]`
-/

namespace A372872.P10462660002340709526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121365 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372872.P10462660002340709526

namespace A372872

/-- `A121365(n+1)+∑[A003462(n)]` -/
def P10462660002340709526.Spec : Prop :=
  ∀ n, P10462660002340709526.a n = A372872 (n + 1)

end A372872

/-! ## A372872.P2879885481578151815

`ceil((3^n+1)*(n+2)/4-A082133(n))`
-/

namespace A372872.P2879885481578151815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n + 1 : ℚ) * ((n + 2 : ℚ) / 4) - (A082133 n : ℚ)⌉

end

end A372872.P2879885481578151815

namespace A372872

/-- `ceil((3^n+1)*(n+2)/4-A082133(n))` -/
def P2879885481578151815.Spec : Prop :=
  ∀ n, P2879885481578151815.a n = A372872 (n + 1)

end A372872

/-! ## A372872.P7290087562240089695

`round(A229472(n+3)/2-A082133(n))`
-/

namespace A372872.P7290087562240089695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A229472 (n + 3) : ℚ) / 2 - (A082133 n : ℚ))

end

end A372872.P7290087562240089695

namespace A372872

/-- `round(A229472(n+3)/2-A082133(n))` -/
def P7290087562240089695.Spec : Prop :=
  ∀ n, P7290087562240089695.a n = A372872 (n + 1)

end A372872

/-! ## A372872.P9179600760718911936

`round(A288834(n+1)-(A082133(n+2)-(n+2))/2-A082133(n))`
-/

namespace A372872.P9179600760718911936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A288834 (n + 1) : ℚ) - (A082133 (n + 2) - (n + 2 : ℤ) : ℚ) / 2 - (A082133 n : ℚ))

end

end A372872.P9179600760718911936

namespace A372872

/-- `round(A288834(n+1)-(A082133(n+2)-(n+2))/2-A082133(n))` -/
def P9179600760718911936.Spec : Prop :=
  ∀ n, P9179600760718911936.a n = A372872 (n + 1)

end A372872

/-! ## A372872.P15462527252440165546

`round(A082149(n+2)/(n+1)-A082133(n))`
-/

namespace A372872.P15462527252440165546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A082149 (n + 2) : ℚ) / (n + 1 : ℚ) - (A082133 n : ℚ))

end

end A372872.P15462527252440165546

namespace A372872

/-- `round(A082149(n+2)/(n+1)-A082133(n))` -/
def P15462527252440165546.Spec : Prop :=
  ∀ n, P15462527252440165546.a n = A372872 (n + 1)

end A372872

/-!
# A372873: Triangle read by rows: T(n,k) is the number of flattened Catalan words of length n with exactly k runs of descents.

The programs for A372873, the canonical program `A372873.P8475125270225187405` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372873 has offset 1).

The definition of A372873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372873.P8475125270225187405

`A098158(n)*A116588(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A372873

/-- `A098158(n)*A116588(n)` -/
def P8475125270225187405.Spec : Prop :=
  ∀ n, P8475125270225187405.a n = A372873 (n + 1)

theorem P8475125270225187405.correct : P8475125270225187405.Spec := by
  intro n
  simp only [A372873, Nat.add_sub_cancel]

end A372873

/-! ## A372873.P2033702908369257319

`A000079(A049581(n))*A098158(n)`
-/

namespace A372873.P2033702908369257319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A049581 n).toNat * A098158 n

end

end A372873.P2033702908369257319

namespace A372873

/-- `A000079(A049581(n))*A098158(n)` -/
def P2033702908369257319.Spec : Prop :=
  ∀ n, P2033702908369257319.a n = A372873 (n + 1)

end A372873

/-! ## A372873.P10512137998761647552

`and(A113106(A001615(n+1)), A340264(n))`
-/

namespace A372873.P10512137998761647552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113106 (A001615 (n + 1)).toNat) (A340264 n)

end

end A372873.P10512137998761647552

namespace A372873

/-- `and(A113106(A001615(n+1)), A340264(n))` -/
def P10512137998761647552.Spec : Prop :=
  ∀ n, P10512137998761647552.a n = A372873 (n + 1)

end A372873

/-! ## A372873.P13823044690312058812

`A340264(A077168(n)-A008284(n+1))`
-/

namespace A372873.P13823044690312058812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340264 (A077168 n - A008284 (n + 1)).toNat

end

end A372873.P13823044690312058812

namespace A372873

/-- `A340264(A077168(n)-A008284(n+1))` -/
def P13823044690312058812.Spec : Prop :=
  ∀ n, P13823044690312058812.a n = A372873 (n + 1)

end A372873

/-! ## A372873.P478150666555077172

`C(A099089(n), A006928(A227960(n)))`
-/

namespace A372873.P478150666555077172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099089 n).toNat (A006928 (A227960 n).toNat).toNat

end

end A372873.P478150666555077172

namespace A372873

/-- `C(A099089(n), A006928(A227960(n)))` -/
def P478150666555077172.Spec : Prop :=
  ∀ n, (P478150666555077172.a n : ℤ) = A372873 (n + 1)

end A372873

/-!
# A372874: a(n) is the total number of runs of descents over all flattened Catalan words of length n.

The programs for A372874, the canonical program `A372874.P1085532594983295114` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372874 has offset 1).

The definition of A372874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372874.P1085532594983295114

`(27*(n+1)-9+(5*(n+1)+1)*3^(n+1))/36`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372874

/-- `(27*(n+1)-9+(5*(n+1)+1)*3^(n+1))/36` -/
def P1085532594983295114.Spec : Prop :=
  ∀ n, P1085532594983295114.a n = (A372874 (n + 1) : ℚ)

end A372874

/-! ## A372874.P1949124011323353207

`ceil(A082133(n)+(3^n+1)*(n+2)/4)`
-/

namespace A372874.P1949124011323353207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082133 n : ℚ) + (3 ^ n + 1 : ℚ) * ((n + 2 : ℚ) / 4)⌉

end

end A372874.P1949124011323353207

namespace A372874

/-- `ceil(A082133(n)+(3^n+1)*(n+2)/4)` -/
def P1949124011323353207.Spec : Prop :=
  ∀ n, P1949124011323353207.a n = A372874 (n + 1)

end A372874

/-! ## A372874.P6946263429376661245

`round(A082133(n)+A229472(n+3)/2)`
-/

namespace A372874.P6946263429376661245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A082133 n : ℚ) + (A229472 (n + 3) : ℚ) / 2)

end

end A372874.P6946263429376661245

namespace A372874

/-- `round(A082133(n)+A229472(n+3)/2)` -/
def P6946263429376661245.Spec : Prop :=
  ∀ n, P6946263429376661245.a n = A372874 (n + 1)

end A372874

/-! ## A372874.P13377961301634285329

`round(A082133(n)+A288834(n+1)-(A082133(n+2)-(n+2))/2)`
-/

namespace A372874.P13377961301634285329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A082133 n : ℚ) + ((A288834 (n + 1) : ℚ) - (A082133 (n + 2) - (n + 2 : ℤ) : ℚ) / 2))

end

end A372874.P13377961301634285329

namespace A372874

/-- `round(A082133(n)+A288834(n+1)-(A082133(n+2)-(n+2))/2)` -/
def P13377961301634285329.Spec : Prop :=
  ∀ n, P13377961301634285329.a n = A372874 (n + 1)

end A372874

/-! ## A372874.P18614688822831971

`round(A082133(n)+A082149(n+2)/(n+1))`
-/

namespace A372874.P18614688822831971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A082133 n : ℚ) + (A082149 (n + 2) : ℚ) / (n + 1 : ℚ))

end

end A372874.P18614688822831971

namespace A372874

/-- `round(A082133(n)+A082149(n+2)/(n+1))` -/
def P18614688822831971.Spec : Prop :=
  ∀ n, P18614688822831971.a n = A372874 (n + 1)

end A372874

/-!
# A372876: Row sums of A372877.

The programs for A372876, there is no canonical definition to state claims against.
-/

/-! ## A372876.P5532292212507155629

`A255920(A069124(n+1)+A006991(n+1))`
-/

namespace A372876.P5532292212507155629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (A069124 (n + 1) + A006991 (n + 1)).toNat

end

end A372876.P5532292212507155629

/-!
# A372877: Jacobi's triangle read by rows. T(n, k) = J(n, k) where J(n, k) is the Jacobi symbol (n / k) provided k is odd and otherwise 0.

The programs for A372877, there is no canonical definition to state claims against.
-/

/-! ## A372877.P13235898847121582356

`A372728(n*char[comp[n²]+n])`
-/

namespace A372877.P13235898847121582356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372728 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A372877.P13235898847121582356

/-! ## A372877.P5531701785010597257

`A060510(n)*A372728(n)`
-/

namespace A372877.P5531701785010597257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060510 n * A372728 n

end

end A372877.P5531701785010597257

/-! ## A372877.P6751769387313844341

`A372728(n)%A132728(n)`
-/

namespace A372877.P6751769387313844341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372728 n) (A132728 n)

end

end A372877.P6751769387313844341

/-! ## A372877.P10137282181428637096

`A177990(n+1)*A372728(n)`
-/

namespace A372877.P10137282181428637096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177990 (n + 1) * A372728 n

end

end A372877.P10137282181428637096

/-! ## A372877.P3714930107484803934

`(A002262(n)*A372728(n))%2`
-/

namespace A372877.P3714930107484803934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n * A372728 n) 2

end

end A372877.P3714930107484803934

/-! ## A372877.P6142151762401100866

`A000035(A002262(n))*A372728(n)`
-/

namespace A372877.P6142151762401100866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002262 n).toNat * A372728 n

end

end A372877.P6142151762401100866

/-! ## A372877.P6188686807310028158

`A344616(A059268(n))*A372728(n)`
-/

namespace A372877.P6188686807310028158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (A059268 n).toNat * A372728 n

end

end A372877.P6188686807310028158

/-!
# A372878: a(n) is the sum of all symmetric valleys in the set of flattened Catalan words of length n.

The programs for A372878, the canonical program `A372878.P11775883574361570933` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372878 has offset 4).

The definition of A372878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372878.P11775883574361570933

`(3^(n+4)*(2*(n+4)-5)-18*(n+4)²+54*(n+4)-27)/144`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372878

/-- `(3^(n+4)*(2*(n+4)-5)-18*(n+4)²+54*(n+4)-27)/144` -/
def P11775883574361570933.Spec : Prop :=
  ∀ n, P11775883574361570933.a n = (A372878 (n + 4) : ℚ)

end A372878

/-! ## A372878.P12595233021687929036

`and(∑[A261064(n+1)], -1)`
-/

namespace A372878.P12595233021687929036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A372878.P12595233021687929036

namespace A372878

/-- `and(∑[A261064(n+1)], -1)` -/
def P12595233021687929036.Spec : Prop :=
  ∀ n, P12595233021687929036.a n = A372878 (n + 4)

end A372878

/-! ## A372878.P7046239712641765862

`or(∑[A261064(n+1)], A000007(n))`
-/

namespace A372878.P7046239712641765862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A372878.P7046239712641765862

namespace A372878

/-- `or(∑[A261064(n+1)], A000007(n))` -/
def P7046239712641765862.Spec : Prop :=
  ∀ n, P7046239712641765862.a n = A372878 (n + 4)

end A372878

/-! ## A372878.P12372990538362340922

`or(∑[A261064(n+1)], A063524(n))`
-/

namespace A372878.P12372990538362340922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A063524 n)

end

end A372878.P12372990538362340922

namespace A372878

/-- `or(∑[A261064(n+1)], A063524(n))` -/
def P12372990538362340922.Spec : Prop :=
  ∀ n, P12372990538362340922.a n = A372878 (n + 4)

end A372878

/-! ## A372878.P11142660724401167601

`A000007(2*(n+1))+∑[A261064(n+1)]`
-/

namespace A372878.P11142660724401167601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372878.P11142660724401167601

namespace A372878

/-- `A000007(2*(n+1))+∑[A261064(n+1)]` -/
def P11142660724401167601.Spec : Prop :=
  ∀ n, P11142660724401167601.a n = A372878 (n + 4)

end A372878

/-! ## A372878.P8946717744426235720

`∑[A261064(n+1)]%A261064(n+2)`
-/

namespace A372878.P8946717744426235720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A261064 (n + 2))

end

end A372878.P8946717744426235720

namespace A372878

/-- `∑[A261064(n+1)]%A261064(n+2)` -/
def P8946717744426235720.Spec : Prop :=
  ∀ n, P8946717744426235720.a n = A372878 (n + 4)

end A372878

/-!
# A372880: a(1) = 1; a(2) = 3; for n > 2, a(n) is the smallest proper multiple of a(n-1) that contains a(n-2) as subsequence of its digits.

The programs for A372880, there is no canonical definition to state claims against.
-/

/-! ## A372880.P5192857235636720064

`∏[A338027(∏[2*n+1])]`
-/

namespace A372880.P5192857235636720064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338027 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A372880.P5192857235636720064

/-!
# A372881: a(n) = Sum_{j=1..n} Sum_{k=1..n} gcd(j*k,n).

The programs for A372881, there is no canonical definition to state claims against.
-/

/-! ## A372881.P13536885610779200101

`A352078(n+1)+A003215(n)`
-/

namespace A372881.P13536885610779200101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352078 (n + 1) + A003215 n

end

end A372881.P13536885610779200101

/-! ## A372881.P1873616775477246195

`A334215(A282418(n))+A000203(n+1)*A000720((n+1)²)`
-/

namespace A372881.P1873616775477246195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334215 (A282418 n).toNat + A000203 (n + 1) * A000720 ((n + 1) ^ 2)

end

end A372881.P1873616775477246195

/-!
# A372884: a(n) is the sum of all symmetric peaks in the set of flattened Catalan words of length n.

The programs for A372884, the canonical program `A372884.P8965271498334765251` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372884 has offset 3).

The definition of A372884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A372884.P8965271498334765251

`(63+3^(n+3)+2*(3^(n+3)-45)*(n+3)+18*(n+3)²)/144`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A372884

/-- `(63+3^(n+3)+2*(3^(n+3)-45)*(n+3)+18*(n+3)²)/144` -/
def P8965271498334765251.Spec : Prop :=
  ∀ n, P8965271498334765251.a n = (A372884 (n + 3) : ℚ)

end A372884

/-! ## A372884.P11822860001837489135

`∑[∑[∑[A038765(n)]]]`
-/

namespace A372884.P11822860001837489135
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372884.P11822860001837489135

namespace A372884

/-- `∑[∑[∑[A038765(n)]]]` -/
def P11822860001837489135.Spec : Prop :=
  ∀ n, P11822860001837489135.a n = A372884 (n + 3)

end A372884

/-! ## A372884.P370437765620953939

`2*A261064(n+1)-A372878(n+4)`
-/

namespace A372884.P370437765620953939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A261064 (n + 1) - A372878 (n + 4)

end

end A372884.P370437765620953939

namespace A372884

/-- `2*A261064(n+1)-A372878(n+4)` -/
def P370437765620953939.Spec : Prop :=
  ∀ n, P370437765620953939.a n = A372884 (n + 3)

end A372884

/-! ## A372884.P15857066512133885607

`∑[A349370(3^n)]`
-/

namespace A372884.P15857066512133885607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349370 (3 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372884.P15857066512133885607

namespace A372884

/-- `∑[A349370(3^n)]` -/
def P15857066512133885607.Spec : Prop :=
  ∀ n, P15857066512133885607.a n = A372884 (n + 3)

end A372884

/-!
# A372885: Prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

The programs for A372885, the canonical program `A372885.P14839180436812864898` is in `Seq.B009.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372885 has offset 1).

The definition of A372885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372885.P14839180436812864898

`A000040(A372886(n+1))`

The canonical program, it is in `Seq.B009.C001`.
-/

namespace A372885

/-- `A000040(A372886(n+1))` -/
def P14839180436812864898.Spec : Prop :=
  ∀ n, P14839180436812864898.a n = A372885 (n + 1)

theorem P14839180436812864898.correct : P14839180436812864898.Spec := by
  intro n
  simp only [A372885, Nat.add_sub_cancel]

end A372885

/-! ## A372885.P146990572457564070

`A008578(A372886(n+1)+1)`
-/

namespace A372885.P146990572457564070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A372886 (n + 1) + 1).toNat

end

end A372885.P146990572457564070

namespace A372885

/-- `A008578(A372886(n+1)+1)` -/
def P146990572457564070.Spec : Prop :=
  ∀ n, P146990572457564070.a n = A372885 (n + 1)

end A372885

/-! ## A372885.P18025216636085115185

`A158611(A372886(n+1)+2)`
-/

namespace A372885.P18025216636085115185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A372886 (n + 1) + 2).toNat

end

end A372885.P18025216636085115185

namespace A372885

/-- `A158611(A372886(n+1)+2)` -/
def P18025216636085115185.Spec : Prop :=
  ∀ n, P18025216636085115185.a n = A372885 (n + 1)

end A372885

/-! ## A372885.P10990055357222893131

`lt[A171400(A029931(n))+A171400(n), 1]`
-/

namespace A372885.P10990055357222893131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171400 (A029931 n).toNat + A171400 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A372885.P10990055357222893131

namespace A372885

/-- `lt[A171400(A029931(n))+A171400(n), 1]` -/
def P10990055357222893131.Spec : Prop :=
  ∀ n, (P10990055357222893131.a n : ℤ) = A372885 (n + 1)

end A372885

/-! ## A372885.P10231667489280901467

`p?[A372689(n+1)]`
-/

namespace A372885.P10231667489280901467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A372885.P10231667489280901467

namespace A372885

/-- `p?[A372689(n+1)]` -/
def P10231667489280901467.Spec : Prop :=
  ∀ n, P10231667489280901467.a n = A372885 (n + 1)

end A372885

/-!
# A372886: Indices of prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

The programs for A372886, the canonical program `A372886.P4173512411131491016` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372886 has offset 1).

The definition of A372886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2409 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A372886.P13129024138816283687

`A000720(A372885(n+1))`
-/

namespace A372886.P13129024138816283687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A372885 (n + 1)).toNat

end

end A372886.P13129024138816283687

namespace A372886

/-- `A000720(A372885(n+1))` -/
def P13129024138816283687.Spec : Prop :=
  ∀ n, P13129024138816283687.a n = A372886 (n + 1)

end A372886

/-! ## A372886.P4173512411131491016

`eq[1, A010051(A372429(n+1))]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A372886

/-- `eq[1, A010051(A372429(n+1))]+1` -/
def P4173512411131491016.Spec : Prop :=
  ∀ n, (P4173512411131491016.a n : ℤ) = A372886 (n + 1)

theorem P4173512411131491016.correct : P4173512411131491016.Spec := by
  intro n
  simp only [A372886, Nat.add_sub_cancel]

end A372886

/-! ## A372886.P15399579243066903734

`A061395(2*A372885(n+1))`
-/

namespace A372886.P15399579243066903734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A372885 (n + 1)).toNat

end

end A372886.P15399579243066903734

namespace A372886

/-- `A061395(2*A372885(n+1))` -/
def P15399579243066903734.Spec : Prop :=
  ∀ n, P15399579243066903734.a n = A372886 (n + 1)

end A372886

/-! ## A372886.P13170261801591203691

`A055396(A372885(n+1))%A016825(n)`
-/

namespace A372886.P13170261801591203691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A372885 (n + 1)).toNat) (A016825 n)

end

end A372886.P13170261801591203691

namespace A372886

/-- `A055396(A372885(n+1))%A016825(n)` -/
def P13170261801591203691.Spec : Prop :=
  ∀ n, P13170261801591203691.a n = A372886 (n + 1)

end A372886

/-! ## A372886.P10539448669359285002

`A252464(A372885(n+1))%A028394(n)`
-/

namespace A372886.P10539448669359285002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A372885 (n + 1)).toNat) (A028394 n)

end

end A372886.P10539448669359285002

namespace A372886

/-- `A252464(A372885(n+1))%A028394(n)` -/
def P10539448669359285002.Spec : Prop :=
  ∀ n, P10539448669359285002.a n = A372886 (n + 1)

end A372886

/-! ## A372886.P5679581163795144275

`A252464(A372885(n+1)%A085001(n))`
-/

namespace A372886.P5679581163795144275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (Int.tmod (A372885 (n + 1)) (A085001 n)).toNat

end

end A372886.P5679581163795144275

namespace A372886

/-- `A252464(A372885(n+1)%A085001(n))` -/
def P5679581163795144275.Spec : Prop :=
  ∀ n, P5679581163795144275.a n = A372886 (n + 1)

end A372886

/-! ## A372886.P11409462729319511430

`A258851(A372885(n+1))%A087536(n+1)`
-/

namespace A372886.P11409462729319511430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258851 (A372885 (n + 1)).toNat) (A087536 (n + 1))

end

end A372886.P11409462729319511430

namespace A372886

/-- `A258851(A372885(n+1))%A087536(n+1)` -/
def P11409462729319511430.Spec : Prop :=
  ∀ n, P11409462729319511430.a n = A372886 (n + 1)

end A372886

/-! ## A372886.P18332862163635388458

`A056172(2*A372885(n+1))`
-/

namespace A372886.P18332862163635388458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * A372885 (n + 1)).toNat

end

end A372886.P18332862163635388458

namespace A372886

/-- `A056172(2*A372885(n+1))` -/
def P18332862163635388458.Spec : Prop :=
  ∀ n, P18332862163635388458.a n = A372886 (n + 1)

end A372886

/-! ## A372886.P15140289501424021497

`A153452(2*A372885(n+1))`
-/

namespace A372886.P15140289501424021497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (2 * A372885 (n + 1)).toNat

end

end A372886.P15140289501424021497

namespace A372886

/-- `A153452(2*A372885(n+1))` -/
def P15140289501424021497.Spec : Prop :=
  ∀ n, P15140289501424021497.a n = A372886 (n + 1)

end A372886

/-!
# A372888: Sum of binary ranks of all strict integer partitions of n, where the binary rank of a partition y is given by Sum_i 2^(y_i-1).

The programs for A372888, there is no canonical definition to state claims against.
-/

/-! ## A372888.P9021380697418858971

`A217038(A148883(n+1))`
-/

namespace A372888.P9021380697418858971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A148883 (n + 1)).toNat

end

end A372888.P9021380697418858971

/-! ## A372888.P9037353245185204666

`A217038(A148889(n+1))`
-/

namespace A372888.P9037353245185204666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A148889 (n + 1)).toNat

end

end A372888.P9037353245185204666

/-! ## A372888.P1828100724706372166

`A217038(A398113(n+1))`
-/

namespace A372888.P1828100724706372166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A398113 (n + 1)).toNat

end

end A372888.P1828100724706372166

/-! ## A372888.P9078786459387875758

`A217038(A376230(n+2))`
-/

namespace A372888.P9078786459387875758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A376230 (n + 2)).toNat

end

end A372888.P9078786459387875758

/-!
# A372889: Greatest squarefree number <= 2^n.

The programs for A372889, the canonical program `A372889.P15805631827507383` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A372889 has offset 0).

The definition of A372889 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A372889.P7373198545138175460

`A005117(A143658(n))`
-/

namespace A372889.P7373198545138175460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A143658 n).toNat

end

end A372889.P7373198545138175460

namespace A372889

/-- `A005117(A143658(n))` -/
def P7373198545138175460.Spec : Prop :=
  ∀ n, P7373198545138175460.a n = A372889 n

end A372889

/-! ## A372889.P15805631827507383

`A070321(2^n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A372889

/-- `A070321(2^n)` -/
def P15805631827507383.Spec : Prop :=
  ∀ n, P15805631827507383.a n = A372889 n

theorem P15805631827507383.correct : P15805631827507383.Spec := by
  intro n
  simp only [A372889]

end A372889

/-! ## A372889.P17591952680388734260

`2^n-A373126(n)`
-/

namespace A372889.P17591952680388734260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A373126 n

end

end A372889.P17591952680388734260

namespace A372889

/-- `2^n-A373126(n)` -/
def P17591952680388734260.Spec : Prop :=
  ∀ n, P17591952680388734260.a n = A372889 n

end A372889

/-! ## A372889.P12237866509135354911

`abs(A000079(n)-A373126(n))`
-/

namespace A372889.P12237866509135354911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A373126 n|

end

end A372889.P12237866509135354911

namespace A372889

/-- `abs(A000079(n)-A373126(n))` -/
def P12237866509135354911.Spec : Prop :=
  ∀ n, P12237866509135354911.a n = A372889 n

end A372889

/-! ## A372889.P3311567115514993638

`A000051(n)-(A373126(n)+1)`
-/

namespace A372889.P3311567115514993638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A373126 n + 1)

end

end A372889.P3311567115514993638

namespace A372889

/-- `A000051(n)-(A373126(n)+1)` -/
def P3311567115514993638.Spec : Prop :=
  ∀ n, P3311567115514993638.a n = A372889 n

end A372889

/-! ## A372889.P2491393714583020956

`A372683(n)-(A373126(n)+A373125(n))`
-/

namespace A372889.P2491393714583020956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372683 n - (A373126 n + A373125 n)

end

end A372889.P2491393714583020956

namespace A372889

/-- `A372683(n)-(A373126(n)+A373125(n))` -/
def P2491393714583020956.Spec : Prop :=
  ∀ n, P2491393714583020956.a n = A372889 n

end A372889

/-!
# A372890: Sum of binary ranks of all integer partitions of n, where the binary rank of a partition y is given by Sum_i 2^(y_i-1).

The programs for A372890, there is no canonical definition to state claims against.
-/

/-! ## A372890.P5807456080616445816

`A085945(n+1)-A360540(A001764(n))`
-/

namespace A372890.P5807456080616445816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085945 (n + 1) - A360540 (A001764 n).toNat

end

end A372890.P5807456080616445816

/-! ## A372890.P10230549950462615313

`A085945(n+1)-A327354(A112972(n+1))`
-/

namespace A372890.P10230549950462615313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085945 (n + 1) - A327354 (A112972 (n + 1)).toNat

end

end A372890.P10230549950462615313

/-! ## A372890.P18087354177414796989

`A023566(A017961(n))`
-/

namespace A372890.P18087354177414796989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023566 (A017961 n).toNat

end

end A372890.P18087354177414796989

/-!
# A372891: Anti-elite primes (A128852) that are not prime factors of Fermat primes (A023394).

The programs for A372891, there is no canonical definition to state claims against.
-/

/-! ## A372891.P7451983371940577394

`filter[A128852(n+1), A088911(#)]`
-/

namespace A372891.P7451983371940577394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A372891.P7451983371940577394

/-! ## A372891.P1264710926912203413

`filter[A128852(n+1), A095130(#)]`
-/

namespace A372891.P1264710926912203413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095130 (f1 j).toNat = 1) n)

end

end A372891.P1264710926912203413

/-! ## A372891.P15040403820856164506

`filter[A128852(n+1), A131719(#)]`
-/

namespace A372891.P15040403820856164506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131719 (f1 j).toNat = 1) n)

end

end A372891.P15040403820856164506

/-! ## A372891.P9380303538022570712

`filter[A128852(n+1), A241979(#)]`
-/

namespace A372891.P9380303538022570712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A241979 (f1 j).toNat = 1) n)

end

end A372891.P9380303538022570712

/-! ## A372891.P11035954770577515575

`filter[A128852(n+1), A266786(#)]`
-/

namespace A372891.P11035954770577515575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266786 (f1 j).toNat = 1) n)

end

end A372891.P11035954770577515575

/-!
# A372892: Total number of unlabeled simple maps on the sphere with n vertices.

The programs for A372892, there is no canonical definition to state claims against.
-/

/-! ## A372892.P9777816497781877234

`A122620(A019439(n))`
-/

namespace A372892.P9777816497781877234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122620 (A019439 n).toNat

end

end A372892.P9777816497781877234

/-! ## A372892.P16815918033888019644

`A215818(A193284(n))`
-/

namespace A372892.P16815918033888019644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215818 (A193284 n).toNat

end

end A372892.P16815918033888019644

/-!
# A372893: Number of distinct partitions p of n such that max(p) == 0 mod 3.

The programs for A372893, there is no canonical definition to state claims against.
-/

/-! ## A372893.P2415048192220292819

`A000009(n)-(A373013(n)+A373012(n))`
-/

namespace A372893.P2415048192220292819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (A373013 n + A373012 n)

end

end A372893.P2415048192220292819

/-!
# A372894: A positive integer 2^k*m, where m is odd and k >= 0, belongs to this sequence iff the Jacobi symbol (F_n/m) = -1 for only a finite number of Fermat numbers F_n = A000215(n).

The programs for A372894, there is no canonical definition to state claims against.
-/

/-! ## A372894.P2948572885897752189

`lt[A014376(A360595(n+1)), A165471(n)]`
-/

namespace A372894.P2948572885897752189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014376 (A360595 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A372894.P2948572885897752189

/-! ## A372894.P7990561632129694632

`eq[A124778(A086571(n+1)), A165471(n)]`
-/

namespace A372894.P7990561632129694632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A086571 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372894.P7990561632129694632

/-! ## A372894.P11200118311097654619

`eq[A165471(n), A289508(A200785(n+1))]`
-/

namespace A372894.P11200118311097654619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A200785 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372894.P11200118311097654619

/-! ## A372894.P15322732592087875669

`eq[A165471(n), A350388(A355319(3*n+7))]`
-/

namespace A372894.P15322732592087875669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165471 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A355319 (3 * n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A372894.P15322732592087875669

/-!
# A372898: Numbers k that divide the k-th Padovan number.

The programs for A372898, there is no canonical definition to state claims against.
-/

/-! ## A372898.P16773209885237003087

`record[gcd(n, A000931(n))]`
-/

namespace A372898.P16773209885237003087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000931 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372898.P16773209885237003087

/-! ## A372898.P5083658496350087098

`record[gcd(n-2, A124745(n))]`
-/

namespace A372898.P5083658496350087098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (A124745 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A372898.P5083658496350087098

/-!
# A372899: Numbers k that divide the k-th companion Pell number.

The programs for A372899, there is no canonical definition to state claims against.
-/

/-! ## A372899.P4706062691816870893

`∩[A140494(n+1), A191120(n+1)]`
-/

namespace A372899.P4706062691816870893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372899.P4706062691816870893

/-! ## A372899.P11197920416855032050

`∩[A140494(n+1), A191229(n+1)]`
-/

namespace A372899.P11197920416855032050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372899.P11197920416855032050

/-! ## A372899.P15750521396739874331

`∩[A191120(n+1), A191612(n+1)]`
-/

namespace A372899.P15750521396739874331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372899.P15750521396739874331

/-! ## A372899.P1478718898445290022

`∩[A191229(n+1), A191612(n+1)]`
-/

namespace A372899.P1478718898445290022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372899.P1478718898445290022

