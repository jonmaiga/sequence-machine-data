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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.B011.C001
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
# A353800: a(n) = 1 if n is a power of prime with an even exponent, otherwise 0.

The programs for A353800, the canonical program `A353800.P5626433138732261385` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353800 has offset 1).

The definition of A353800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353800.P9314300641722288232

`A010055(n+1)-A353817(n+1)`
-/

namespace A353800.P9314300641722288232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) - A353817 (n + 1)

end

end A353800.P9314300641722288232

namespace A353800

/-- `A010055(n+1)-A353817(n+1)` -/
def P9314300641722288232.Spec : Prop :=
  ∀ n, P9314300641722288232.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P5626433138732261385

`and(∑{e}[∏{p}[n+1, #], #]!%2, ∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353800

/-- `and(∑{e}[∏{p}[n+1, #], #]!%2, ∏{e}[n+1, #+1])` -/
def P5626433138732261385.Spec : Prop :=
  ∀ n, (P5626433138732261385.a n : ℤ) = A353800 (n + 1)

theorem P5626433138732261385.correct : P5626433138732261385.Spec := by
  intro n
  simp only [A353800, Nat.add_sub_cancel]

end A353800

/-! ## A353800.P12968565904009289912

`char[A056798(n+1)-1]`
-/

namespace A353800.P12968565904009289912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056798 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353800.P12968565904009289912

namespace A353800

/-- `char[A056798(n+1)-1]` -/
def P12968565904009289912.Spec : Prop :=
  ∀ n, (P12968565904009289912.a n : ℤ) = A353800 (n + 1)

end A353800

/-! ## A353800.P12789337538509338430

`(A046523(n+1)%3)%2`
-/

namespace A353800.P12789337538509338430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A046523 (n + 1)) 3) 2

end

end A353800.P12789337538509338430

namespace A353800

/-- `(A046523(n+1)%3)%2` -/
def P12789337538509338430.Spec : Prop :=
  ∀ n, P12789337538509338430.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P9082054870690093424

`char[A000961(n+1)²-1]`
-/

namespace A353800.P9082054870690093424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) ^ 2 - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353800.P9082054870690093424

namespace A353800

/-- `char[A000961(n+1)²-1]` -/
def P9082054870690093424.Spec : Prop :=
  ∀ n, (P9082054870690093424.a n : ℤ) = A353800 (n + 1)

end A353800

/-! ## A353800.P8905930815490118057

`char[(lt[A001221(n+1), 2]+1)²-1]`
-/

namespace A353800.P8905930815490118057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353800.P8905930815490118057

namespace A353800

/-- `char[(lt[A001221(n+1), 2]+1)²-1]` -/
def P8905930815490118057.Spec : Prop :=
  ∀ n, (P8905930815490118057.a n : ℤ) = A353800 (n + 1)

end A353800

/-! ## A353800.P14317251509079394014

`char[C(A072505(n+1), n²%3)²-1]`
-/

namespace A353800.P14317251509079394014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A072505 (n + 1)).toNat (n ^ 2 % 3) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353800.P14317251509079394014

namespace A353800

/-- `char[C(A072505(n+1), n²%3)²-1]` -/
def P14317251509079394014.Spec : Prop :=
  ∀ n, (P14317251509079394014.a n : ℤ) = A353800 (n + 1)

end A353800

/-! ## A353800.P2245383514428780763

`A033684(A046523(n+1))`
-/

namespace A353800.P2245383514428780763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (A046523 (n + 1)).toNat

end

end A353800.P2245383514428780763

namespace A353800

/-- `A033684(A046523(n+1))` -/
def P2245383514428780763.Spec : Prop :=
  ∀ n, P2245383514428780763.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P10674526901023321179

`A008683(A286779(n+1))²`
-/

namespace A353800.P10674526901023321179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A286779 (n + 1)).toNat ^ 2

end

end A353800.P10674526901023321179

namespace A353800

/-- `A008683(A286779(n+1))²` -/
def P10674526901023321179.Spec : Prop :=
  ∀ n, P10674526901023321179.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P6607121061439147429

`∑{d}[A317581(n+1), A008683(#)]`
-/

namespace A353800.P6607121061439147429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A353800.P6607121061439147429

namespace A353800

/-- `∑{d}[A317581(n+1), A008683(#)]` -/
def P6607121061439147429.Spec : Prop :=
  ∀ n, P6607121061439147429.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P12871308304184094718

`A010052(n+1)*A010055(n+1)`
-/

namespace A353800.P12871308304184094718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) * A010055 (n + 1)

end

end A353800.P12871308304184094718

namespace A353800

/-- `A010052(n+1)*A010055(n+1)` -/
def P12871308304184094718.Spec : Prop :=
  ∀ n, P12871308304184094718.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P4717945191823938697

`A010055(n+1)*A065043(n+1)`
-/

namespace A353800.P4717945191823938697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A065043 (n + 1)

end

end A353800.P4717945191823938697

namespace A353800

/-- `A010055(n+1)*A065043(n+1)` -/
def P4717945191823938697.Spec : Prop :=
  ∀ n, P4717945191823938697.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P14238395088030236640

`A010055(n+1)*A102448(n+1)`
-/

namespace A353800.P14238395088030236640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A102448 (n + 1)

end

end A353800.P14238395088030236640

namespace A353800

/-- `A010055(n+1)*A102448(n+1)` -/
def P14238395088030236640.Spec : Prop :=
  ∀ n, P14238395088030236640.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P11797129825232879321

`A007875(n+1)%A007421(n+1)`
-/

namespace A353800.P11797129825232879321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007875 (n + 1)) (A007421 (n + 1))

end

end A353800.P11797129825232879321

namespace A353800

/-- `A007875(n+1)%A007421(n+1)` -/
def P11797129825232879321.Spec : Prop :=
  ∀ n, P11797129825232879321.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P12518595887266683277

`and(A000005(n+1), A010055(n+1))`
-/

namespace A353800.P12518595887266683277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (n + 1)) (A010055 (n + 1))

end

end A353800.P12518595887266683277

namespace A353800

/-- `and(A000005(n+1), A010055(n+1))` -/
def P12518595887266683277.Spec : Prop :=
  ∀ n, P12518595887266683277.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P659151527703948746

`(A007875(n+1)²*A000005(n+1))%2`
-/

namespace A353800.P659151527703948746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007875 (n + 1) ^ 2 * A000005 (n + 1)) 2

end

end A353800.P659151527703948746

namespace A353800

/-- `(A007875(n+1)²*A000005(n+1))%2` -/
def P659151527703948746.Spec : Prop :=
  ∀ n, P659151527703948746.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P1210162055049024867

`char[lt[0, A347992(n+1)]]`
-/

namespace A353800.P1210162055049024867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347992 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353800.P1210162055049024867

namespace A353800

/-- `char[lt[0, A347992(n+1)]]` -/
def P1210162055049024867.Spec : Prop :=
  ∀ n, (P1210162055049024867.a n : ℤ) = A353800 (n + 1)

end A353800

/-! ## A353800.P3481604949920774857

`char[A068795((n+1)²)-1]`
-/

namespace A353800.P3481604949920774857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068795 ((n + 1) ^ 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353800.P3481604949920774857

namespace A353800

/-- `char[A068795((n+1)²)-1]` -/
def P3481604949920774857.Spec : Prop :=
  ∀ n, (P3481604949920774857.a n : ℤ) = A353800 (n + 1)

end A353800

/-! ## A353800.P11158593764322823448

`A105861(n+1)%A365708(n+1)`
-/

namespace A353800.P11158593764322823448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105861 (n + 1)) (A365708 (n + 1))

end

end A353800.P11158593764322823448

namespace A353800

/-- `A105861(n+1)%A365708(n+1)` -/
def P11158593764322823448.Spec : Prop :=
  ∀ n, P11158593764322823448.a n = A353800 (n + 1)

end A353800

/-! ## A353800.P11851516065904099585

`A128386(n)%A365708(n+1)`
-/

namespace A353800.P11851516065904099585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128386 n) (A365708 (n + 1))

end

end A353800.P11851516065904099585

namespace A353800

/-- `A128386(n)%A365708(n+1)` -/
def P11851516065904099585.Spec : Prop :=
  ∀ n, P11851516065904099585.a n = A353800 (n + 1)

end A353800

/-!
# A353801: a(n) = A049559(n) / A187730(n), where A049559(n) and A187730(n) are the greatest common divisors between Euler phi(n) and n-1, and between Carmichael lambda(n) and n-1, respectively.

The programs for A353801, there is no canonical definition to state claims against.
-/

/-! ## A353801.P11937605270287742374

`A049559(n+1)/A187730(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353801.P11937605270287742374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049559 (n + 1) : ℚ) / (A187730 (n + 1) : ℚ)

end

end A353801.P11937605270287742374

/-! ## A353801.P15598329079983902388

`(1-A318827(n+1)+n)/A187730(n+1)`
-/

namespace A353801.P15598329079983902388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A318827 (n + 1) + (n : ℤ) : ℚ) / (A187730 (n + 1) : ℚ)

end

end A353801.P15598329079983902388

/-! ## A353801.P16294409652273078720

`gcd(A013636(n), A023900(n+1))/A187730(n+1)`
-/

namespace A353801.P16294409652273078720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A013636 n) (A023900 (n + 1)) : ℚ) / (A187730 (n + 1) : ℚ)

end

end A353801.P16294409652273078720

/-! ## A353801.P13453267999764020488

`lcm(A002322(n+1), A049559(n+1))/A002322(n+1)`
-/

namespace A353801.P13453267999764020488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002322 (n + 1)) (A049559 (n + 1)) : ℚ) / (A002322 (n + 1) : ℚ)

end

end A353801.P13453267999764020488

/-! ## A353801.P12818857512067417766

`ceil(A000010(n+1)/A160595(n+1))/A187730(n+1)`
-/

namespace A353801.P12818857512067417766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000010 (n + 1) : ℚ) / (A160595 (n + 1) : ℚ)⌉ : ℚ) / (A187730 (n + 1) : ℚ)

end

end A353801.P12818857512067417766

/-! ## A353801.P10144577938915620222

`A348037(gcd(A007092(n), A117006(n+1)))`
-/

namespace A353801.P10144577938915620222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348037 (Int.gcd (A007092 n) (A117006 (n + 1)))

end

end A353801.P10144577938915620222

/-! ## A353801.P4592166169674902030

`gcd(A351083(A272211(n+1)), A351083(n))`
-/

namespace A353801.P4592166169674902030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A351083 (A272211 (n + 1)).toNat) (A351083 n)

end

end A353801.P4592166169674902030

/-! ## A353801.P14472433982900199940

`A321405(gcd(n, A116512(n+1)))`
-/

namespace A353801.P14472433982900199940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321405 (Int.gcd (n : ℤ) (A116512 (n + 1)))

end

end A353801.P14472433982900199940

/-! ## A353801.P10360402783765659502

`gcd(A244226(n), A346109(n+1))`
-/

namespace A353801.P10360402783765659502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244226 n) (A346109 (n + 1))

end

end A353801.P10360402783765659502

/-! ## A353801.P2101132798693573653

`gcd(Δ[A047304(n+4)], A325362(n+1))`
-/

namespace A353801.P2101132798693573653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A325362 (n + 1))

end

end A353801.P2101132798693573653

/-!
# A353802: Multiplicative with a(p^e) = sigma(sigma(p^e)).

The programs for A353802, there is no canonical definition to state claims against.
-/

/-! ## A353802.P6295550106475490424

`A051027(n+1)+A353803(n+1)`
-/

namespace A353802.P6295550106475490424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (n + 1) + A353803 (n + 1)

end

end A353802.P6295550106475490424

/-! ## A353802.P633109739780033335

`A353804(n+1)*A353806(n+1)`
-/

namespace A353802.P633109739780033335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353804 (n + 1) * A353806 (n + 1)

end

end A353802.P633109739780033335

/-! ## A353802.P18048875096588951660

`A353803(n+1)+∑[A111408(n)]`
-/

namespace A353802.P18048875096588951660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353802.P18048875096588951660

/-! ## A353802.P1435617687428510884

`A353803(n+1)+A000203(A000203(n+1))`
-/

namespace A353802.P1435617687428510884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1) + A000203 (A000203 (n + 1)).toNat

end

end A353802.P1435617687428510884

/-! ## A353802.P17527637126413446751

`A353803(n+1)+A249353(n+1)-Δ[A002088(n)]`
-/

namespace A353802.P17527637126413446751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1) + (A249353 (n + 1) - (f1 (n + 1) - f1 n))

end

end A353802.P17527637126413446751

/-! ## A353802.P654883996961742749

`A193336(n+1)+A353803(n+1)+A193337(n+1)`
-/

namespace A353802.P654883996961742749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193336 (n + 1) + (A353803 (n + 1) + A193337 (n + 1))

end

end A353802.P654883996961742749

/-! ## A353802.P7226956436513975928

`A353803(n+1)+A353804(n+1)*A353805(n+1)`
-/

namespace A353802.P7226956436513975928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1) + A353804 (n + 1) * A353805 (n + 1)

end

end A353802.P7226956436513975928

/-! ## A353802.P7665063620873669811

`A051027(n+1)/A353805(n+1)*A353806(n+1)`
-/

namespace A353802.P7665063620873669811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (A353805 (n + 1) : ℚ) * (A353806 (n + 1) : ℚ)

end

end A353802.P7665063620873669811

/-! ## A353802.P11801678955231523440

`A353803(n+1)+A245092(A002659(n+1))`
-/

namespace A353802.P11801678955231523440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1) + A245092 (A002659 (n + 1)).toNat

end

end A353802.P11801678955231523440

/-! ## A353802.P16117920812887075833

`A353803(n+1)+A326065(A074400(n+1))`
-/

namespace A353802.P16117920812887075833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353803 (n + 1) + A326065 (A074400 (n + 1)).toNat

end

end A353802.P16117920812887075833

/-!
# A353803: a(n) = Product_{p^e||n} sigma(sigma(p^e)) - sigma(sigma(n)), where n = Product_{p^e||n}, with each p^e the maximal power of prime p that divides n.

The programs for A353803, there is no canonical definition to state claims against.
-/

/-! ## A353803.P2997510940467602256

`A353802(n+1)-A051027(n+1)`
-/

namespace A353803.P2997510940467602256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353802 (n + 1) - A051027 (n + 1)

end

end A353803.P2997510940467602256

/-! ## A353803.P6955418580293775640

`A353802(n+1)-∑[A111408(n)]`
-/

namespace A353803.P6955418580293775640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353802 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353803.P6955418580293775640

/-! ## A353803.P6592245050106879826

`A353802(n+1)-A000203(A000203(n+1))`
-/

namespace A353803.P6592245050106879826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353802 (n + 1) - A000203 (A000203 (n + 1)).toNat

end

end A353803.P6592245050106879826

/-! ## A353803.P5397177902859818491

`A353804(n+1)*A353806(n+1)-A051027(n+1)`
-/

namespace A353803.P5397177902859818491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353804 (n + 1) * A353806 (n + 1) - A051027 (n + 1)

end

end A353803.P5397177902859818491

/-! ## A353803.P6494416394533376715

`A353802(n+1)-A353804(n+1)*A353805(n+1)`
-/

namespace A353803.P6494416394533376715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353802 (n + 1) - A353804 (n + 1) * A353805 (n + 1)

end

end A353803.P6494416394533376715

/-! ## A353803.P10495632380372125639

`(A353806(n+1)-A353805(n+1))*A353804(n+1)`
-/

namespace A353803.P10495632380372125639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A353806 (n + 1) - A353805 (n + 1)) * A353804 (n + 1)

end

end A353803.P10495632380372125639

/-! ## A353803.P3689251240303861590

`A353802(n+1)-A245092(A002659(n+1))`
-/

namespace A353803.P3689251240303861590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353802 (n + 1) - A245092 (A002659 (n + 1)).toNat

end

end A353803.P3689251240303861590

/-!
# A353804: Greatest common divisor of sigma(sigma(n)) and Product_{p^e||n} sigma(sigma(p^e)), where n = Product_{p^e||n}, with each p^e the maximal power of prime p that divides n.

The programs for A353804, there is no canonical definition to state claims against.
-/

/-! ## A353804.P6671310079317342536

`gcd(A051027(n+1), A353802(n+1))`
-/

namespace A353804.P6671310079317342536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051027 (n + 1)) (A353802 (n + 1))

end

end A353804.P6671310079317342536

/-! ## A353804.P10516025556055903348

`A051027(n+1)/A353805(n+1)`
-/

namespace A353804.P10516025556055903348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (A353805 (n + 1) : ℚ)

end

end A353804.P10516025556055903348

/-! ## A353804.P17785210296261967067

`A353802(n+1)/A353806(n+1)`
-/

namespace A353804.P17785210296261967067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) : ℚ) / (A353806 (n + 1) : ℚ)

end

end A353804.P17785210296261967067

/-! ## A353804.P643786390394085332

`A000203(A000203(n+1))/A353805(n+1)`
-/

namespace A353804.P643786390394085332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (n + 1)).toNat : ℚ) / (A353805 (n + 1) : ℚ)

end

end A353804.P643786390394085332

/-! ## A353804.P927658067879831122

`(A353803(n+1)+A051027(n+1))/A353806(n+1)`
-/

namespace A353804.P927658067879831122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353803 (n + 1) + A051027 (n + 1) : ℚ) / (A353806 (n + 1) : ℚ)

end

end A353804.P927658067879831122

/-! ## A353804.P9062617714365923017

`(A353802(n+1)-A353803(n+1))/A353805(n+1)`
-/

namespace A353804.P9062617714365923017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) - A353803 (n + 1) : ℚ) / (A353805 (n + 1) : ℚ)

end

end A353804.P9062617714365923017

/-!
# A353805: a(n) = A051027(n) / gcd(A051027(n), A353802(n)), where A051027(n) = sigma(sigma(n)), and A353802(n) = Product_{p^e||n} sigma(sigma(p^e)).

The programs for A353805, there is no canonical definition to state claims against.
-/

/-! ## A353805.P2998878976940540002

`A051027(n+1)/A353804(n+1)`
-/

namespace A353805.P2998878976940540002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353805.P2998878976940540002

/-! ## A353805.P11860825760409150966

`A051027(n+1)/gcd(A051027(n+1), A353802(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353805.P11860825760409150966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (Int.gcd (A051027 (n + 1)) (A353802 (n + 1)) : ℚ)

end

end A353805.P11860825760409150966

/-! ## A353805.P12701836900408714786

`A000203(A000203(n+1))/A353804(n+1)`
-/

namespace A353805.P12701836900408714786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A000203 (n + 1)).toNat : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353805.P12701836900408714786

/-! ## A353805.P15601830700780545239

`(A353802(n+1)-A353803(n+1))/A353804(n+1)`
-/

namespace A353805.P15601830700780545239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) - A353803 (n + 1) : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353805.P15601830700780545239

/-! ## A353805.P10968488525888763573

`A353806(n+1)-A353803(n+1)/A353804(n+1)`
-/

namespace A353805.P10968488525888763573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353806 (n + 1) : ℚ) - (A353803 (n + 1) : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353805.P10968488525888763573

/-! ## A353805.P12743786578787734022

`A051027(n+1)/A353802(n+1)*A353806(n+1)`
-/

namespace A353805.P12743786578787734022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051027 (n + 1) : ℚ) / (A353802 (n + 1) : ℚ) * (A353806 (n + 1) : ℚ)

end

end A353805.P12743786578787734022

/-! ## A353805.P7394338168700993894

`A245092(A002659(n+1))/A353804(n+1)`
-/

namespace A353805.P7394338168700993894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (A002659 (n + 1)).toNat : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353805.P7394338168700993894

/-!
# A353806: a(n) = A353802(n) / gcd(A051027(n), A353802(n)), where A051027(n) = sigma(sigma(n)), and A353802(n) = Product_{p^e||n} sigma(sigma(p^e)).

The programs for A353806, there is no canonical definition to state claims against.
-/

/-! ## A353806.P11651455337360884601

`A353802(n+1)/A353804(n+1)`
-/

namespace A353806.P11651455337360884601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353806.P11651455337360884601

/-! ## A353806.P12408897313235008854

`A353802(n+1)/gcd(A051027(n+1), A353802(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353806.P12408897313235008854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) : ℚ) / (Int.gcd (A051027 (n + 1)) (A353802 (n + 1)) : ℚ)

end

end A353806.P12408897313235008854

/-! ## A353806.P12777622637418357554

`(A353803(n+1)+A051027(n+1))/A353804(n+1)`
-/

namespace A353806.P12777622637418357554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353803 (n + 1) + A051027 (n + 1) : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353806.P12777622637418357554

/-! ## A353806.P5852426188852993132

`A353805(n+1)+A353803(n+1)/A353804(n+1)`
-/

namespace A353806.P5852426188852993132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353805 (n + 1) : ℚ) + (A353803 (n + 1) : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353806.P5852426188852993132

/-! ## A353806.P7196473361485535111

`A353802(n+1)/A051027(n+1)*A353805(n+1)`
-/

namespace A353806.P7196473361485535111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) : ℚ) / (A051027 (n + 1) : ℚ) * (A353805 (n + 1) : ℚ)

end

end A353806.P7196473361485535111

/-! ## A353806.P2286372682304029979

`(A353803(n+1)+A000203(A000203(n+1)))/A353804(n+1)`
-/

namespace A353806.P2286372682304029979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353803 (n + 1) + A000203 (A000203 (n + 1)).toNat : ℚ) / (A353804 (n + 1) : ℚ)

end

end A353806.P2286372682304029979

/-! ## A353806.P15357535778737796485

`A353802(n+1)/A000203(A000203(n+1))*A353805(n+1)`
-/

namespace A353806.P15357535778737796485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353802 (n + 1) : ℚ) / (A000203 (A000203 (n + 1)).toNat : ℚ) * (A353805 (n + 1) : ℚ)

end

end A353806.P15357535778737796485

/-!
# A353807: Numbers k such that A353802(k) / sigma(sigma(k)) is an integer > 1, where A353802(n) = Product_{p^e||n} sigma(sigma(p^e)).

The programs for A353807, there is no canonical definition to state claims against.
-/

/-! ## A353807.P5834844316571963790

`filter[A336561(n+1), A141260(#)]`
-/

namespace A353807.P5834844316571963790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A141260 (f1 j).toNat = 1) n)

end

end A353807.P5834844316571963790

/-!
# A353808: a(n) = 1 if A187730(n) < A049559(n), otherwise 0. Here A187730(n) and A049559(n) are the greatest common divisors between Carmichael lambda(n) and n-1, and between Euler phi(n) and n-1, respectively.

The programs for A353808, there is no canonical definition to state claims against.
-/

/-! ## A353808.P17436135945422008229

`floor(atan(A353801(n+1)))`
-/

namespace A353808.P17436135945422008229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A353801 (n + 1) : ℝ)⌋

end

end A353808.P17436135945422008229

/-! ## A353808.P10167924336381421983

`char[A280262(n+1)-1]`
-/

namespace A353808.P10167924336381421983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280262 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353808.P10167924336381421983

/-! ## A353808.P6498197588536287744

`A005408(n)%A353801(n+1)`
-/

namespace A353808.P6498197588536287744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A353801 (n + 1))

end

end A353808.P6498197588536287744

/-! ## A353808.P15733701268944672056

`A005904(n)%A353801(n+1)`
-/

namespace A353808.P15733701268944672056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005904 n) (A353801 (n + 1))

end

end A353808.P15733701268944672056

/-! ## A353808.P15570187750659173505

`A008379(n)%A353801(n+1)`
-/

namespace A353808.P15570187750659173505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008379 n) (A353801 (n + 1))

end

end A353808.P15570187750659173505

/-! ## A353808.P1259313149887669306

`A016760(n)%A353801(n+1)`
-/

namespace A353808.P1259313149887669306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016760 n) (A353801 (n + 1))

end

end A353808.P1259313149887669306

/-! ## A353808.P14093477715899815782

`A016819(n)%A353801(n+1)`
-/

namespace A353808.P14093477715899815782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016819 n) (A353801 (n + 1))

end

end A353808.P14093477715899815782

/-! ## A353808.P14751801950628192497

`A017286(n)%A353801(n+1)`
-/

namespace A353808.P14751801950628192497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017286 n) (A353801 (n + 1))

end

end A353808.P14751801950628192497

/-! ## A353808.P4889817939843643155

`A017406(n)%A353801(n+1)`
-/

namespace A353808.P4889817939843643155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017406 n) (A353801 (n + 1))

end

end A353808.P4889817939843643155

/-! ## A353808.P17697601770265225169

`A014963(n+1)%A353801(n+1)`
-/

namespace A353808.P17697601770265225169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) (A353801 (n + 1))

end

end A353808.P17697601770265225169

/-! ## A353808.P93971756781632575

`A353678(4^A353801(n+1))`
-/

namespace A353808.P93971756781632575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353678 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A353801 (n + 1) : ℤ))).toNat

end

end A353808.P93971756781632575

/-! ## A353808.P6017425248155224450

`A376451(A353801(n+1)²+1)`
-/

namespace A353808.P6017425248155224450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376451 (A353801 (n + 1) ^ 2 + 1).toNat

end

end A353808.P6017425248155224450

/-! ## A353808.P2152505925598870047

`A005183(n)%A353801(n+1)`
-/

namespace A353808.P2152505925598870047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005183 n) (A353801 (n + 1))

end

end A353808.P2152505925598870047

/-! ## A353808.P3236399683376810808

`A002064(n)%A353801(n+1)`
-/

namespace A353808.P3236399683376810808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002064 n) (A353801 (n + 1))

end

end A353808.P3236399683376810808

/-! ## A353808.P7219430298982426756

`A003469(n+1)%A353801(n+1)`
-/

namespace A353808.P7219430298982426756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003469 (n + 1)) (A353801 (n + 1))

end

end A353808.P7219430298982426756

/-! ## A353808.P16195637184954629940

`A048479(n)%A353801(n+1)`
-/

namespace A353808.P16195637184954629940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048479 n) (A353801 (n + 1))

end

end A353808.P16195637184954629940

/-! ## A353808.P17283393800921484594

`A048509(n)%A353801(n+1)`
-/

namespace A353808.P17283393800921484594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048509 n) (A353801 (n + 1))

end

end A353808.P17283393800921484594

/-! ## A353808.P1303657832300356356

`A048482(n)%A353801(n+1)`
-/

namespace A353808.P1303657832300356356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048482 n) (A353801 (n + 1))

end

end A353808.P1303657832300356356

/-! ## A353808.P8479900826164583430

`A018111(n)%A353801(n+1)`
-/

namespace A353808.P8479900826164583430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018111 n) (A353801 (n + 1))

end

end A353808.P8479900826164583430

/-! ## A353808.P17906113462724579575

`A026567(n)%A353801(n+1)`
-/

namespace A353808.P17906113462724579575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026567 n) (A353801 (n + 1))

end

end A353808.P17906113462724579575

/-!
# A353809: a(n) = 1 if n is of the form 4m+1 and is not the sum of two squares, otherwise 0.

The programs for A353809, the canonical program `A353809.P4442062719913416770` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353809 has offset 1).

The definition of A353809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353809.P15392724179951227250

`char[4*A020757(n+1)]`
-/

namespace A353809.P15392724179951227250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353809.P15392724179951227250

namespace A353809

/-- `char[4*A020757(n+1)]` -/
def P15392724179951227250.Spec : Prop :=
  ∀ n, (P15392724179951227250.a n : ℤ) = A353809 (n + 1)

end A353809

/-! ## A353809.P8306552940103459844

`char[4*lt[A209941(n)², 1]]`
-/

namespace A353809.P8306552940103459844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209941 n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353809.P8306552940103459844

namespace A353809

/-- `char[4*lt[A209941(n)², 1]]` -/
def P8306552940103459844.Spec : Prop :=
  ∀ n, (P8306552940103459844.a n : ℤ) = A353809 (n + 1)

end A353809

/-! ## A353809.P2662943023685113129

`char[A008574(A020757(n+1))]`
-/

namespace A353809.P2662943023685113129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A020757 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353809.P2662943023685113129

namespace A353809

/-- `char[A008574(A020757(n+1))]` -/
def P2662943023685113129.Spec : Prop :=
  ∀ n, (P2662943023685113129.a n : ℤ) = A353809 (n + 1)

end A353809

/-! ## A353809.P1120789823140816885

`A121262(or(n, A103340(n+1)))`
-/

namespace A353809.P1120789823140816885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (Int.lor (n : ℤ) (A103340 (n + 1))).toNat

end

end A353809.P1120789823140816885

namespace A353809

/-- `A121262(or(n, A103340(n+1)))` -/
def P1120789823140816885.Spec : Prop :=
  ∀ n, P1120789823140816885.a n = A353809 (n + 1)

end A353809

/-! ## A353809.P13771556917523518320

`char[A008574(comp[A020756(n+1)])]`
-/

namespace A353809.P13771556917523518320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020756 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353809.P13771556917523518320

namespace A353809

/-- `char[A008574(comp[A020756(n+1)])]` -/
def P13771556917523518320.Spec : Prop :=
  ∀ n, (P13771556917523518320.a n : ℤ) = A353809 (n + 1)

end A353809

/-! ## A353809.P2768451983775539421

`and(A105673(n+1)!, char[A008574(n)])`
-/

namespace A353809.P2768451983775539421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.factorial (A105673 (n + 1)).toNat) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A353809.P2768451983775539421

namespace A353809

/-- `and(A105673(n+1)!, char[A008574(n)])` -/
def P2768451983775539421.Spec : Prop :=
  ∀ n, (P2768451983775539421.a n : ℤ) = A353809 (n + 1)

end A353809

/-! ## A353809.P14769279951557610082

`round(A293513(n+1)/A000005(n+1))`
-/

namespace A353809.P14769279951557610082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293513 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))

end

end A353809.P14769279951557610082

namespace A353809

/-- `round(A293513(n+1)/A000005(n+1))` -/
def P14769279951557610082.Spec : Prop :=
  ∀ n, P14769279951557610082.a n = A353809 (n + 1)

end A353809

/-! ## A353809.P15889257472777814854

`A010893(A010873(n)+A002654(n+1))`
-/

namespace A353809.P15889257472777814854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A010873 n + A002654 (n + 1)).toNat + 13)

end

end A353809.P15889257472777814854

namespace A353809

/-- `A010893(A010873(n)+A002654(n+1))` -/
def P15889257472777814854.Spec : Prop :=
  ∀ n, P15889257472777814854.a n = A353809 (n + 1)

end A353809

/-! ## A353809.P4442062719913416770

`and(A000007(A002654(n+1)), A038459(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353809

/-- `and(A000007(A002654(n+1)), A038459(n+1))` -/
def P4442062719913416770.Spec : Prop :=
  ∀ n, P4442062719913416770.a n = A353809 (n + 1)

theorem P4442062719913416770.correct : P4442062719913416770.Spec := by
  intro n
  simp only [A353809, Nat.add_sub_cancel]

end A353809

/-!
# A353810: a(n) = 1 if sigma(n) has an odd number of prime factors (with multiplicity), and 0 otherwise. Here sigma is the sum of divisors function.

The programs for A353810, the canonical program `A353810.P10357715078653884361` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353810 has offset 1).

The definition of A353810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058063, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353810.P10357715078653884361

`A000035(A058063(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353810

/-- `A000035(A058063(n+1))` -/
def P10357715078653884361.Spec : Prop :=
  ∀ n, P10357715078653884361.a n = A353810 (n + 1)

theorem P10357715078653884361.correct : P10357715078653884361.Spec := by
  intro n
  simp only [A353810, Nat.add_sub_cancel]

end A353810

/-! ## A353810.P2172790604105817660

`A066829(A000203(n+1))`
-/

namespace A353810.P2172790604105817660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A000203 (n + 1)).toNat

end

end A353810.P2172790604105817660

namespace A353810

/-- `A066829(A000203(n+1))` -/
def P2172790604105817660.Spec : Prop :=
  ∀ n, P2172790604105817660.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P5989241675055943271

`A066829(∑{d}[n+1, #])`
-/

namespace A353810.P5989241675055943271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A353810.P5989241675055943271

namespace A353810

/-- `A066829(∑{d}[n+1, #])` -/
def P5989241675055943271.Spec : Prop :=
  ∀ n, P5989241675055943271.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P1305951275889573729

`(1-A358766(n+1))/2`
-/

namespace A353810.P1305951275889573729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A358766 (n + 1) : ℚ) / 2

end

end A353810.P1305951275889573729

namespace A353810

/-- `(1-A358766(n+1))/2` -/
def P1305951275889573729.Spec : Prop :=
  ∀ n, P1305951275889573729.a n = (A353810 (n + 1) : ℚ)

end A353810

/-! ## A353810.P13909388274278671357

`A001222(∑{d}[n+1, #])%2`
-/

namespace A353810.P13909388274278671357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (∑ d ∈ Nat.divisors (f1 n), d)) 2

end

end A353810.P13909388274278671357

namespace A353810

/-- `A001222(∑{d}[n+1, #])%2` -/
def P13909388274278671357.Spec : Prop :=
  ∀ n, P13909388274278671357.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P904035490929696617

`A066829(A276528(n+1))`
-/

namespace A353810.P904035490929696617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A276528 (n + 1)).toNat

end

end A353810.P904035490929696617

namespace A353810

/-- `A066829(A276528(n+1))` -/
def P904035490929696617.Spec : Prop :=
  ∀ n, P904035490929696617.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P18187249107605793731

`A066829(A355928(n+1))`
-/

namespace A353810.P18187249107605793731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (A355928 (n + 1)).toNat

end

end A353810.P18187249107605793731

namespace A353810

/-- `A066829(A355928(n+1))` -/
def P18187249107605793731.Spec : Prop :=
  ∀ n, P18187249107605793731.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P3280653198661031573

`and(A008349(n), A058063(n+1))`
-/

namespace A353810.P3280653198661031573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008349 n) (A058063 (n + 1))

end

end A353810.P3280653198661031573

namespace A353810

/-- `and(A008349(n), A058063(n+1))` -/
def P3280653198661031573.Spec : Prop :=
  ∀ n, P3280653198661031573.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P8748810456830471521

`and(A008362(n), A058063(n+1))`
-/

namespace A353810.P8748810456830471521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008362 n) (A058063 (n + 1))

end

end A353810.P8748810456830471521

namespace A353810

/-- `and(A008362(n), A058063(n+1))` -/
def P8748810456830471521.Spec : Prop :=
  ∀ n, P8748810456830471521.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P17847756910039194517

`and(A008417(n), A058063(n+1))`
-/

namespace A353810.P17847756910039194517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008417 n) (A058063 (n + 1))

end

end A353810.P17847756910039194517

namespace A353810

/-- `and(A008417(n), A058063(n+1))` -/
def P17847756910039194517.Spec : Prop :=
  ∀ n, P17847756910039194517.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P12845207261699741193

`and(A008514(n), A058063(n+1))`
-/

namespace A353810.P12845207261699741193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008514 n) (A058063 (n + 1))

end

end A353810.P12845207261699741193

namespace A353810

/-- `and(A008514(n), A058063(n+1))` -/
def P12845207261699741193.Spec : Prop :=
  ∀ n, P12845207261699741193.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P14380819860239463654

`and(A016760(n), A058063(n+1))`
-/

namespace A353810.P14380819860239463654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A058063 (n + 1))

end

end A353810.P14380819860239463654

namespace A353810

/-- `and(A016760(n), A058063(n+1))` -/
def P14380819860239463654.Spec : Prop :=
  ∀ n, P14380819860239463654.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P15365603232057509310

`and(A016820(n), A058063(n+1))`
-/

namespace A353810.P15365603232057509310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016820 n) (A058063 (n + 1))

end

end A353810.P15365603232057509310

namespace A353810

/-- `and(A016820(n), A058063(n+1))` -/
def P15365603232057509310.Spec : Prop :=
  ∀ n, P15365603232057509310.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P15156499886225149115

`A000035(A001222(∑{d}[n+1, #]))`
-/

namespace A353810.P15156499886225149115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001222 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A353810.P15156499886225149115

namespace A353810

/-- `A000035(A001222(∑{d}[n+1, #]))` -/
def P15156499886225149115.Spec : Prop :=
  ∀ n, P15156499886225149115.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P17249555346578389006

`and(1, A001222(A088580(n+1)-1))`
-/

namespace A353810.P17249555346578389006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (A088580 (n + 1) - 1).toNat)

end

end A353810.P17249555346578389006

namespace A353810

/-- `and(1, A001222(A088580(n+1)-1))` -/
def P17249555346578389006.Spec : Prop :=
  ∀ n, P17249555346578389006.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P13721262004267991805

`and(1, A001222(A245092(2*n+1)))`
-/

namespace A353810.P13721262004267991805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001222 (A245092 (2 * n + 1)).toNat)

end

end A353810.P13721262004267991805

namespace A353810

/-- `and(1, A001222(A245092(2*n+1)))` -/
def P13721262004267991805.Spec : Prop :=
  ∀ n, P13721262004267991805.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P4030951257171461418

`and(A058063(n+1), A282997(n+1))`
-/

namespace A353810.P4030951257171461418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058063 (n + 1)) (A282997 (n + 1))

end

end A353810.P4030951257171461418

namespace A353810

/-- `and(A058063(n+1), A282997(n+1))` -/
def P4030951257171461418.Spec : Prop :=
  ∀ n, P4030951257171461418.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P1757037214182790197

`gcd(2, A001222(2*A000203(n+1)))-1`
-/

namespace A353810.P1757037214182790197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001222 (2 * A000203 (n + 1)).toNat) : ℤ) - 1

end

end A353810.P1757037214182790197

namespace A353810

/-- `gcd(2, A001222(2*A000203(n+1)))-1` -/
def P1757037214182790197.Spec : Prop :=
  ∀ n, P1757037214182790197.a n = A353810 (n + 1)

end A353810

/-! ## A353810.P13679141499864562331

`A000035(A001222(A000203(n+1))²)`
-/

namespace A353810.P13679141499864562331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A001222 (A000203 (n + 1)).toNat ^ 2).toNat

end

end A353810.P13679141499864562331

namespace A353810

/-- `A000035(A001222(A000203(n+1))²)` -/
def P13679141499864562331.Spec : Prop :=
  ∀ n, P13679141499864562331.a n = A353810 (n + 1)

end A353810

/-!
# A353811: a(n) = 1 if sigma(n) is odd, and has an odd number of prime factors (with multiplicity), otherwise 0. Here sigma is the sum of divisors function.

The programs for A353811, the canonical program `A353811.P62770870440473012` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353811 has offset 1).

The definition of A353811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353811.P13658690391888815795

`A353558(A000203(n+1))`
-/

namespace A353811.P13658690391888815795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (A000203 (n + 1)).toNat

end

end A353811.P13658690391888815795

namespace A353811

/-- `A353558(A000203(n+1))` -/
def P13658690391888815795.Spec : Prop :=
  ∀ n, P13658690391888815795.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P17016646801044787279

`A347870(n+1)-A353812(n+1)`
-/

namespace A353811.P17016646801044787279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1) - A353812 (n + 1)

end

end A353811.P17016646801044787279

namespace A353811

/-- `A347870(n+1)-A353812(n+1)` -/
def P17016646801044787279.Spec : Prop :=
  ∀ n, P17016646801044787279.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P62770870440473012

`A053866(n+1)*A353810(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353811

/-- `A053866(n+1)*A353810(n+1)` -/
def P62770870440473012.Spec : Prop :=
  ∀ n, P62770870440473012.a n = A353811 (n + 1)

theorem P62770870440473012.correct : P62770870440473012.Spec := by
  intro n
  simp only [A353811, Nat.add_sub_cancel]

end A353811

/-! ## A353811.P6891502034273596718

`A353558(∑{d}[n+1, #])`
-/

namespace A353811.P6891502034273596718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A353811.P6891502034273596718

namespace A353811

/-- `A353558(∑{d}[n+1, #])` -/
def P6891502034273596718.Spec : Prop :=
  ∀ n, P6891502034273596718.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P2496549435428625169

`A359370(A074400(n+1))`
-/

namespace A353811.P2496549435428625169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (A074400 (n + 1)).toNat

end

end A353811.P2496549435428625169

namespace A353811

/-- `A359370(A074400(n+1))` -/
def P2496549435428625169.Spec : Prop :=
  ∀ n, P2496549435428625169.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P11900565629234849681

`A359370(2*A000203(n+1))`
-/

namespace A353811.P11900565629234849681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (2 * A000203 (n + 1)).toNat

end

end A353811.P11900565629234849681

namespace A353811

/-- `A359370(2*A000203(n+1))` -/
def P11900565629234849681.Spec : Prop :=
  ∀ n, P11900565629234849681.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P10147339303292645073

`and(A208856(n), A347870(n+1))`
-/

namespace A353811.P10147339303292645073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A208856 n) (A347870 (n + 1))

end

end A353811.P10147339303292645073

namespace A353811

/-- `and(A208856(n), A347870(n+1))` -/
def P10147339303292645073.Spec : Prop :=
  ∀ n, P10147339303292645073.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P2426049453185847785

`and(A208856(n), A353810(n+1))`
-/

namespace A353811.P2426049453185847785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A208856 n) (A353810 (n + 1))

end

end A353811.P2426049453185847785

namespace A353811

/-- `and(A208856(n), A353810(n+1))` -/
def P2426049453185847785.Spec : Prop :=
  ∀ n, P2426049453185847785.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P3342565128640551110

`A053866(n+1)*A347870(n+1)`
-/

namespace A353811.P3342565128640551110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) * A347870 (n + 1)

end

end A353811.P3342565128640551110

namespace A353811

/-- `A053866(n+1)*A347870(n+1)` -/
def P3342565128640551110.Spec : Prop :=
  ∀ n, P3342565128640551110.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P5218904505267586090

`A244611(n+1)*A347870(n+1)`
-/

namespace A353811.P5218904505267586090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1) * A347870 (n + 1)

end

end A353811.P5218904505267586090

namespace A353811

/-- `A244611(n+1)*A347870(n+1)` -/
def P5218904505267586090.Spec : Prop :=
  ∀ n, P5218904505267586090.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P1388023267591532266

`A347870(n+1)*A356163(n+1)`
-/

namespace A353811.P1388023267591532266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1) * A356163 (n + 1)

end

end A353811.P1388023267591532266

namespace A353811

/-- `A347870(n+1)*A356163(n+1)` -/
def P1388023267591532266.Spec : Prop :=
  ∀ n, P1388023267591532266.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P7513478224272173315

`and(A053866(n+1), A058063(n+1))`
-/

namespace A353811.P7513478224272173315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053866 (n + 1)) (A058063 (n + 1))

end

end A353811.P7513478224272173315

namespace A353811

/-- `and(A053866(n+1), A058063(n+1))` -/
def P7513478224272173315.Spec : Prop :=
  ∀ n, P7513478224272173315.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P8067013844619573793

`and(A000203(n+1), A347870(n+1))`
-/

namespace A353811.P8067013844619573793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A347870 (n + 1))

end

end A353811.P8067013844619573793

namespace A353811

/-- `and(A000203(n+1), A347870(n+1))` -/
def P8067013844619573793.Spec : Prop :=
  ∀ n, P8067013844619573793.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P18171269916571169233

`and(A000203(n+1), A353810(n+1))`
-/

namespace A353811.P18171269916571169233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A353810 (n + 1))

end

end A353811.P18171269916571169233

namespace A353811

/-- `and(A000203(n+1), A353810(n+1))` -/
def P18171269916571169233.Spec : Prop :=
  ∀ n, P18171269916571169233.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P17380470075738549253

`and(A013958(n+1), A347870(n+1))`
-/

namespace A353811.P17380470075738549253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013958 (n + 1)) (A347870 (n + 1))

end

end A353811.P17380470075738549253

namespace A353811

/-- `and(A013958(n+1), A347870(n+1))` -/
def P17380470075738549253.Spec : Prop :=
  ∀ n, P17380470075738549253.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P14053135271986338285

`and(A013958(n+1), A353810(n+1))`
-/

namespace A353811.P14053135271986338285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013958 (n + 1)) (A353810 (n + 1))

end

end A353811.P14053135271986338285

namespace A353811

/-- `and(A013958(n+1), A353810(n+1))` -/
def P14053135271986338285.Spec : Prop :=
  ∀ n, P14053135271986338285.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P981265942155458841

`and(A321549(n+1), A347870(n+1))`
-/

namespace A353811.P981265942155458841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321549 (n + 1)) (A347870 (n + 1))

end

end A353811.P981265942155458841

namespace A353811

/-- `and(A321549(n+1), A347870(n+1))` -/
def P981265942155458841.Spec : Prop :=
  ∀ n, P981265942155458841.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P14570580021265155208

`and(A321555(n+1), A347870(n+1))`
-/

namespace A353811.P14570580021265155208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321555 (n + 1)) (A347870 (n + 1))

end

end A353811.P14570580021265155208

namespace A353811

/-- `and(A321555(n+1), A347870(n+1))` -/
def P14570580021265155208.Spec : Prop :=
  ∀ n, P14570580021265155208.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P9410115491175497111

`and(A321807(n+1), A347870(n+1))`
-/

namespace A353811.P9410115491175497111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321807 (n + 1)) (A347870 (n + 1))

end

end A353811.P9410115491175497111

namespace A353811

/-- `and(A321807(n+1), A347870(n+1))` -/
def P9410115491175497111.Spec : Prop :=
  ∀ n, P9410115491175497111.a n = A353811 (n + 1)

end A353811

/-! ## A353811.P10887232434154540725

`and(A321814(n+1), A347870(n+1))`
-/

namespace A353811.P10887232434154540725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321814 (n + 1)) (A347870 (n + 1))

end

end A353811.P10887232434154540725

namespace A353811

/-- `and(A321814(n+1), A347870(n+1))` -/
def P10887232434154540725.Spec : Prop :=
  ∀ n, P10887232434154540725.a n = A353811 (n + 1)

end A353811

/-!
# A353812: a(n) = 1 if sigma(n) is of the form 4m+2, otherwise 0.

The programs for A353812, the canonical program `A353812.P18155869108031714769` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353812 has offset 1).

The definition of A353812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347870, A353811, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353812.P18155869108031714769

`A347870(n+1)-A353811(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353812

/-- `A347870(n+1)-A353811(n+1)` -/
def P18155869108031714769.Spec : Prop :=
  ∀ n, P18155869108031714769.a n = A353812 (n + 1)

theorem P18155869108031714769.correct : P18155869108031714769.Spec := by
  intro n
  simp only [A353812, Nat.add_sub_cancel]

end A353812

/-! ## A353812.P15348023928539391083

`and(4, ∑{d}[n+1, #]²)/4`
-/

namespace A353812.P15348023928539391083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 4 ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2) : ℚ) / 4

end

end A353812.P15348023928539391083

namespace A353812

/-- `and(4, ∑{d}[n+1, #]²)/4` -/
def P15348023928539391083.Spec : Prop :=
  ∀ n, P15348023928539391083.a n = (A353812 (n + 1) : ℚ)

end A353812

/-! ## A353812.P15552116130605517569

`A354032(4*(n+1))`
-/

namespace A353812.P15552116130605517569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354032 (4 * (n + 1))

end

end A353812.P15552116130605517569

namespace A353812

/-- `A354032(4*(n+1))` -/
def P15552116130605517569.Spec : Prop :=
  ∀ n, P15552116130605517569.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P11438218323939546047

`A326040(n+1)%2`
-/

namespace A353812.P11438218323939546047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326040 (n + 1)) 2

end

end A353812.P11438218323939546047

namespace A353812

/-- `A326040(n+1)%2` -/
def P11438218323939546047.Spec : Prop :=
  ∀ n, P11438218323939546047.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P1486894540821078277

`char[A191217(n+1)-1]`
-/

namespace A353812.P1486894540821078277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191217 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353812.P1486894540821078277

namespace A353812

/-- `char[A191217(n+1)-1]` -/
def P1486894540821078277.Spec : Prop :=
  ∀ n, (P1486894540821078277.a n : ℤ) = A353812 (n + 1)

end A353812

/-! ## A353812.P7889672701496769858

`char[eq[1, A336937(n+1)]]`
-/

namespace A353812.P7889672701496769858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353812.P7889672701496769858

namespace A353812

/-- `char[eq[1, A336937(n+1)]]` -/
def P7889672701496769858.Spec : Prop :=
  ∀ n, (P7889672701496769858.a n : ℤ) = A353812 (n + 1)

end A353812

/-! ## A353812.P4290876843343058835

`char[eq[2, A105824(n+1)]]`
-/

namespace A353812.P4290876843343058835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353812.P4290876843343058835

namespace A353812

/-- `char[eq[2, A105824(n+1)]]` -/
def P4290876843343058835.Spec : Prop :=
  ∀ n, (P4290876843343058835.a n : ℤ) = A353812 (n + 1)

end A353812

/-! ## A353812.P9327670511646552724

`val(A000203(n+1)²+4, 8)`
-/

namespace A353812.P9327670511646552724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1) ^ 2 + 4).toNat 8

end

end A353812.P9327670511646552724

namespace A353812

/-- `val(A000203(n+1)²+4, 8)` -/
def P9327670511646552724.Spec : Prop :=
  ∀ n, (P9327670511646552724.a n : ℤ) = A353812 (n + 1)

end A353812

/-! ## A353812.P2323000058596366356

`A005369(A082903(n+1))`
-/

namespace A353812.P2323000058596366356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A082903 (n + 1)).toNat

end

end A353812.P2323000058596366356

namespace A353812

/-- `A005369(A082903(n+1))` -/
def P2323000058596366356.Spec : Prop :=
  ∀ n, P2323000058596366356.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P5669819142305382520

`A121262(A000203(n+1)+2)`
-/

namespace A353812.P5669819142305382520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A000203 (n + 1) + 2).toNat

end

end A353812.P5669819142305382520

namespace A353812

/-- `A121262(A000203(n+1)+2)` -/
def P5669819142305382520.Spec : Prop :=
  ∀ n, P5669819142305382520.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P9346626533444361996

`and(1, A001281(A004018(n+1)/4))`
-/

namespace A353812.P9346626533444361996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001281 (SequenceMachineLib.roundAway ((A004018 (n + 1) : ℚ) / 4)).toNat)

end

end A353812.P9346626533444361996

namespace A353812

/-- `and(1, A001281(A004018(n+1)/4))` -/
def P9346626533444361996.Spec : Prop :=
  ∀ n, P9346626533444361996.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P2142692270577059573

`A324904(n+1)*A347870(n+1)`
-/

namespace A353812.P2142692270577059573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (n + 1) * A347870 (n + 1)

end

end A353812.P2142692270577059573

namespace A353812

/-- `A324904(n+1)*A347870(n+1)` -/
def P2142692270577059573.Spec : Prop :=
  ∀ n, P2142692270577059573.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P4441675667999961679

`A336937(n+1)*A347870(n+1)`
-/

namespace A353812.P4441675667999961679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (n + 1) * A347870 (n + 1)

end

end A353812.P4441675667999961679

namespace A353812

/-- `A336937(n+1)*A347870(n+1)` -/
def P4441675667999961679.Spec : Prop :=
  ∀ n, P4441675667999961679.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P15607722431106651177

`and(A000203(n+1)+1, A347870(n+1))`
-/

namespace A353812.P15607722431106651177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1) + 1) (A347870 (n + 1))

end

end A353812.P15607722431106651177

namespace A353812

/-- `and(A000203(n+1)+1, A347870(n+1))` -/
def P15607722431106651177.Spec : Prop :=
  ∀ n, P15607722431106651177.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P1924975223771848619

`and(A013958(n+1)+1, A347870(n+1))`
-/

namespace A353812.P1924975223771848619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013958 (n + 1) + 1) (A347870 (n + 1))

end

end A353812.P1924975223771848619

namespace A353812

/-- `and(A013958(n+1)+1, A347870(n+1))` -/
def P1924975223771848619.Spec : Prop :=
  ∀ n, P1924975223771848619.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P11004672754511690493

`and(A321549(n+1)+1, A347870(n+1))`
-/

namespace A353812.P11004672754511690493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321549 (n + 1) + 1) (A347870 (n + 1))

end

end A353812.P11004672754511690493

namespace A353812

/-- `and(A321549(n+1)+1, A347870(n+1))` -/
def P11004672754511690493.Spec : Prop :=
  ∀ n, P11004672754511690493.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P16671743487205922882

`and(A321814(n+1)+1, A347870(n+1))`
-/

namespace A353812.P16671743487205922882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321814 (n + 1) + 1) (A347870 (n + 1))

end

end A353812.P16671743487205922882

namespace A353812

/-- `and(A321814(n+1)+1, A347870(n+1))` -/
def P16671743487205922882.Spec : Prop :=
  ∀ n, P16671743487205922882.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P13380871645940280109

`and(A321826(n+1)+1, A347870(n+1))`
-/

namespace A353812.P13380871645940280109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321826 (n + 1) + 1) (A347870 (n + 1))

end

end A353812.P13380871645940280109

namespace A353812

/-- `and(A321826(n+1)+1, A347870(n+1))` -/
def P13380871645940280109.Spec : Prop :=
  ∀ n, P13380871645940280109.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P71593894546340671

`and(1, A001281(∑{d}[n+1, A056594(#-1)]))`
-/

namespace A353812.P71593894546340671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001281 (∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1)).toNat)

end

end A353812.P71593894546340671

namespace A353812

/-- `and(1, A001281(∑{d}[n+1, A056594(#-1)]))` -/
def P71593894546340671.Spec : Prop :=
  ∀ n, P71593894546340671.a n = A353812 (n + 1)

end A353812

/-! ## A353812.P7161672070685745237

`char[eq[2, A286357(n+1)]]`
-/

namespace A353812.P7161672070685745237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353812.P7161672070685745237

namespace A353812

/-- `char[eq[2, A286357(n+1)]]` -/
def P7161672070685745237.Spec : Prop :=
  ∀ n, (P7161672070685745237.a n : ℤ) = A353812 (n + 1)

end A353812

/-!
# A353813: 

The programs for A353813, there is no canonical definition to state claims against.
-/

/-! ## A353813.P71377860771591346

`char[A230779(n+1)-1]`
-/

namespace A353813.P71377860771591346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353813.P71377860771591346

/-! ## A353813.P10766709080783747063

`4%A002175(Δ[A014200(n)])`
-/

namespace A353813.P10766709080783747063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A002175 (f1 (n + 1) - f1 n).toNat)

end

end A353813.P10766709080783747063

/-! ## A353813.P13250978346983901683

`A025455(A004018(n+1)+1)`
-/

namespace A353813.P13250978346983901683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A004018 (n + 1) + 1).toNat

end

end A353813.P13250978346983901683

/-! ## A353813.P3161194314827258898

`A025468(A004018(n+1)+1)`
-/

namespace A353813.P3161194314827258898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (A004018 (n + 1) + 1).toNat

end

end A353813.P3161194314827258898

/-! ## A353813.P9696873974332679712

`A010052(A002654(n+1)+2)`
-/

namespace A353813.P9696873974332679712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A002654 (n + 1) + 2).toNat

end

end A353813.P9696873974332679712

/-! ## A353813.P11542907476032147918

`A058343(xor(2, A002654(n+1)))`
-/

namespace A353813.P11542907476032147918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 (Int.xor 2 (A002654 (n + 1))).toNat

end

end A353813.P11542907476032147918

/-! ## A353813.P16638968304133002262

`A058343(abs(2-A002654(n+1)))`
-/

namespace A353813.P16638968304133002262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 |2 - A002654 (n + 1)|.toNat

end

end A353813.P16638968304133002262

/-! ## A353813.P11677708115224793762

`A010052(A004018(n+1)/4+2)`
-/

namespace A353813.P11677708115224793762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (SequenceMachineLib.roundAway ((A004018 (n + 1) : ℚ) / 4 + 2)).toNat

end

end A353813.P11677708115224793762

/-! ## A353813.P12906424846523924439

`∑{d}[n+1, A079260(#)*A354199((n+1)/#)]`
-/

namespace A353813.P12906424846523924439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A079260 d * A354199 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353813.P12906424846523924439

/-! ## A353813.P6084449718778901133

`char[eq[2, A113446(n+1)]]`
-/

namespace A353813.P6084449718778901133
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353813.P6084449718778901133

/-! ## A353813.P3984183728430256651

`char[eq[2, A138950(n+1)]]`
-/

namespace A353813.P3984183728430256651
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138950 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353813.P3984183728430256651

/-! ## A353813.P2062945503254704456

`A058343((2-A002654(n+1))²)`
-/

namespace A353813.P2062945503254704456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058343 ((2 - A002654 (n + 1)) ^ 2).toNat

end

end A353813.P2062945503254704456

/-!
# A353814: a(n) = 1 if n is the sum of 2 distinct nonzero squares, 0 otherwise.

The programs for A353814, the canonical program `A353814.P3429435947782467007` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353814 has offset 1).

The definition of A353814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353814.P8044077695529049926

`floor(atan(Δ[A014200(n)]))`
-/

namespace A353814.P8044077695529049926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A353814.P8044077695529049926

namespace A353814

/-- `floor(atan(Δ[A014200(n)]))` -/
def P8044077695529049926.Spec : Prop :=
  ∀ n, P8044077695529049926.a n = A353814 (n + 1)

end A353814

/-! ## A353814.P3429435947782467007

`floor(atan(A002654(n+1)))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353814

/-- `floor(atan(A002654(n+1)))` -/
def P3429435947782467007.Spec : Prop :=
  ∀ n, P3429435947782467007.a n = A353814 (n + 1)

theorem P3429435947782467007.correct : P3429435947782467007.Spec := by
  intro n
  simp only [A353814, Nat.add_sub_cancel]

end A353814

/-! ## A353814.P10440250897604995367

`char[A004431(n+1)-1]`
-/

namespace A353814.P10440250897604995367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353814.P10440250897604995367

namespace A353814

/-- `char[A004431(n+1)-1]` -/
def P10440250897604995367.Spec : Prop :=
  ∀ n, (P10440250897604995367.a n : ℤ) = A353814 (n + 1)

end A353814

/-! ## A353814.P11941908306672221202

`char[A024507(n+1)-1]`
-/

namespace A353814.P11941908306672221202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024507 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353814.P11941908306672221202

namespace A353814

/-- `char[A024507(n+1)-1]` -/
def P11941908306672221202.Spec : Prop :=
  ∀ n, (P11941908306672221202.a n : ℤ) = A353814 (n + 1)

end A353814

/-! ## A353814.P14942756894958344777

`char[A055096(n+2)-1]`
-/

namespace A353814.P14942756894958344777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353814.P14942756894958344777

namespace A353814

/-- `char[A055096(n+2)-1]` -/
def P14942756894958344777.Spec : Prop :=
  ∀ n, (P14942756894958344777.a n : ℤ) = A353814 (n + 1)

end A353814

/-! ## A353814.P2245733691247516515

`char[lt[0, A025441(n+1)]]`
-/

namespace A353814.P2245733691247516515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353814.P2245733691247516515

namespace A353814

/-- `char[lt[0, A025441(n+1)]]` -/
def P2245733691247516515.Spec : Prop :=
  ∀ n, (P2245733691247516515.a n : ℤ) = A353814 (n + 1)

end A353814

/-! ## A353814.P4642647575471224293

`A000007(C(4, A004018(n+1)))`
-/

namespace A353814.P4642647575471224293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose 4 (A004018 (n + 1)).toNat)

end

end A353814.P4642647575471224293

namespace A353814

/-- `A000007(C(4, A004018(n+1)))` -/
def P4642647575471224293.Spec : Prop :=
  ∀ n, P4642647575471224293.a n = A353814 (n + 1)

end A353814

/-! ## A353814.P16022649934322802945

`A093768(a(n-1))%A000041(A002654(n+1))` with `a(0)=0`
-/

namespace A353814.P16022649934322802945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A093768 (a (n - 1)).toNat) (A000041 (A002654 (n + 1)).toNat)

end

end A353814.P16022649934322802945

namespace A353814

/-- `A093768(a(n-1))%A000041(A002654(n+1))` -/
def P16022649934322802945.Spec : Prop :=
  ∀ n, P16022649934322802945.a n = A353814 (n + 1)

end A353814

/-! ## A353814.P12521099866385458602

`A007318(floor(1/(n+1)))%A000041(A002654(n+1))`
-/

namespace A353814.P12521099866385458602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat) (A000041 (A002654 (n + 1)).toNat)

end

end A353814.P12521099866385458602

namespace A353814

/-- `A007318(floor(1/(n+1)))%A000041(A002654(n+1))` -/
def P12521099866385458602.Spec : Prop :=
  ∀ n, P12521099866385458602.a n = A353814 (n + 1)

end A353814

/-! ## A353814.P15514821323725061295

`A364693(A063725(n+1)²²)`
-/

namespace A353814.P15514821323725061295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 ((A063725 (n + 1) ^ 2) ^ 2).toNat

end

end A353814.P15514821323725061295

namespace A353814

/-- `A364693(A063725(n+1)²²)` -/
def P15514821323725061295.Spec : Prop :=
  ∀ n, P15514821323725061295.a n = A353814 (n + 1)

end A353814

/-! ## A353814.P17364989433143799860

`A000010(A014963(2*(n+1)))%A000041(A002654(n+1))`
-/

namespace A353814.P17364989433143799860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A014963 (2 * (n + 1))).toNat) (A000041 (A002654 (n + 1)).toNat)

end

end A353814.P17364989433143799860

namespace A353814

/-- `A000010(A014963(2*(n+1)))%A000041(A002654(n+1))` -/
def P17364989433143799860.Spec : Prop :=
  ∀ n, P17364989433143799860.a n = A353814 (n + 1)

end A353814

/-! ## A353814.P4671341408514744399

`1-A010052(A143574(n+1))`
-/

namespace A353814.P4671341408514744399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010052 (A143574 (n + 1)).toNat

end

end A353814.P4671341408514744399

namespace A353814

/-- `1-A010052(A143574(n+1))` -/
def P4671341408514744399.Spec : Prop :=
  ∀ n, P4671341408514744399.a n = A353814 (n + 1)

end A353814

/-!
# A353815: a(n) = 1 if sigma(n) is not a multiple of 3, otherwise 0.

The programs for A353815, the canonical program `A353815.P2689922941255411122` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353815 has offset 1).

The definition of A353815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A353815.P2689922941255411122

`A011655(A000203(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A353815

/-- `A011655(A000203(n+1))` -/
def P2689922941255411122.Spec : Prop :=
  ∀ n, P2689922941255411122.a n = A353815 (n + 1)

theorem P2689922941255411122.correct : P2689922941255411122.Spec := by
  intro n
  simp only [A353815, Nat.add_sub_cancel]

end A353815

/-! ## A353815.P15327732603668583485

`∑{d}[n+1, #]²%3`
-/

namespace A353815.P15327732603668583485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 2 % 3

end

end A353815.P15327732603668583485

namespace A353815

/-- `∑{d}[n+1, #]²%3` -/
def P15327732603668583485.Spec : Prop :=
  ∀ n, (P15327732603668583485.a n : ℤ) = A353815 (n + 1)

end A353815

/-! ## A353815.P13518733617265261456

`(∑{d}[n+1, #]^4)%3`
-/

namespace A353815.P13518733617265261456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d) ^ 4 % 3

end

end A353815.P13518733617265261456

namespace A353815

/-- `(∑{d}[n+1, #]^4)%3` -/
def P13518733617265261456.Spec : Prop :=
  ∀ n, (P13518733617265261456.a n : ℤ) = A353815 (n + 1)

end A353815

/-! ## A353815.P7462677735379711447

`gcd(3, ∑{d}[n+1, #])%3`
-/

namespace A353815.P7462677735379711447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ d ∈ Nat.divisors (f1 n), d) % 3

end

end A353815.P7462677735379711447

namespace A353815

/-- `gcd(3, ∑{d}[n+1, #])%3` -/
def P7462677735379711447.Spec : Prop :=
  ∀ n, (P7462677735379711447.a n : ℤ) = A353815 (n + 1)

end A353815

/-! ## A353815.P17759767467330416001

`floor(sqrt(∑{d}[n+1, #]%3))`
-/

namespace A353815.P17759767467330416001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ d ∈ Nat.divisors (f1 n), d) % 3)

end

end A353815.P17759767467330416001

namespace A353815

/-- `floor(sqrt(∑{d}[n+1, #]%3))` -/
def P17759767467330416001.Spec : Prop :=
  ∀ n, (P17759767467330416001.a n : ℤ) = A353815 (n + 1)

end A353815

/-! ## A353815.P10390018807248475219

`A324293(n+1)%2`
-/

namespace A353815.P10390018807248475219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324293 (n + 1)) 2

end

end A353815.P10390018807248475219

namespace A353815

/-- `A324293(n+1)%2` -/
def P10390018807248475219.Spec : Prop :=
  ∀ n, P10390018807248475219.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P4588839623490010726

`A350073(n+1)%2`
-/

namespace A353815.P4588839623490010726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350073 (n + 1)) 2

end

end A353815.P4588839623490010726

namespace A353815

/-- `A350073(n+1)%2` -/
def P4588839623490010726.Spec : Prop :=
  ∀ n, P4588839623490010726.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P15013449924033221830

`A072861(n+1)%3`
-/

namespace A353815.P15013449924033221830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072861 (n + 1)) 3

end

end A353815.P15013449924033221830

namespace A353815

/-- `A072861(n+1)%3` -/
def P15013449924033221830.Spec : Prop :=
  ∀ n, P15013449924033221830.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P3534845773746191795

`A356534(n+1)%3`
-/

namespace A353815.P3534845773746191795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356534 (n + 1)) 3

end

end A353815.P3534845773746191795

namespace A353815

/-- `A356534(n+1)%3` -/
def P3534845773746191795.Spec : Prop :=
  ∀ n, P3534845773746191795.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P1734295445893555240

`A361179(n+1)%3`
-/

namespace A353815.P1734295445893555240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361179 (n + 1)) 3

end

end A353815.P1734295445893555240

namespace A353815

/-- `A361179(n+1)%3` -/
def P1734295445893555240.Spec : Prop :=
  ∀ n, P1734295445893555240.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P10785390104283808409

`A379473(n+1)%3`
-/

namespace A353815.P10785390104283808409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379473 (n + 1)) 3

end

end A353815.P10785390104283808409

namespace A353815

/-- `A379473(n+1)%3` -/
def P10785390104283808409.Spec : Prop :=
  ∀ n, P10785390104283808409.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P1002762890926197851

`A379813(n+1)%3`
-/

namespace A353815.P1002762890926197851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379813 (n + 1)) 3

end

end A353815.P1002762890926197851

namespace A353815

/-- `A379813(n+1)%3` -/
def P1002762890926197851.Spec : Prop :=
  ∀ n, P1002762890926197851.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P13287055057569707251

`floor(sqrt(A074941(n+1)))`
-/

namespace A353815.P13287055057569707251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A074941 (n + 1))

end

end A353815.P13287055057569707251

namespace A353815

/-- `floor(sqrt(A074941(n+1)))` -/
def P13287055057569707251.Spec : Prop :=
  ∀ n, P13287055057569707251.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P10001273381695738027

`A011655(A034690(n+1))`
-/

namespace A353815.P10001273381695738027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A034690 (n + 1)).toNat

end

end A353815.P10001273381695738027

namespace A353815

/-- `A011655(A034690(n+1))` -/
def P10001273381695738027.Spec : Prop :=
  ∀ n, P10001273381695738027.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P5327979729029827655

`A011655(A067342(n+1))`
-/

namespace A353815.P5327979729029827655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A067342 (n + 1)).toNat

end

end A353815.P5327979729029827655

namespace A353815

/-- `A011655(A067342(n+1))` -/
def P5327979729029827655.Spec : Prop :=
  ∀ n, P5327979729029827655.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P12534884780220764393

`A011655(A097011(n+1))`
-/

namespace A353815.P12534884780220764393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A097011 (n + 1)).toNat

end

end A353815.P12534884780220764393

namespace A353815

/-- `A011655(A097011(n+1))` -/
def P12534884780220764393.Spec : Prop :=
  ∀ n, P12534884780220764393.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P17745695344945669196

`A011655(A097012(n+1))`
-/

namespace A353815.P17745695344945669196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A097012 (n + 1)).toNat

end

end A353815.P17745695344945669196

namespace A353815

/-- `A011655(A097012(n+1))` -/
def P17745695344945669196.Spec : Prop :=
  ∀ n, P17745695344945669196.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P9001962781359204569

`A070563(A038502(n+1))`
-/

namespace A353815.P9001962781359204569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070563 (A038502 (n + 1)).toNat

end

end A353815.P9001962781359204569

namespace A353815

/-- `A070563(A038502(n+1))` -/
def P9001962781359204569.Spec : Prop :=
  ∀ n, P9001962781359204569.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P18364603432347451490

`A130196(A113063(n+1))-1`
-/

namespace A353815.P18364603432347451490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (A113063 (n + 1)).toNat - 1

end

end A353815.P18364603432347451490

namespace A353815

/-- `A130196(A113063(n+1))-1` -/
def P18364603432347451490.Spec : Prop :=
  ∀ n, P18364603432347451490.a n = A353815 (n + 1)

end A353815

/-! ## A353815.P787993893860613996

`A007949(A379473(n+1)+2)`
-/

namespace A353815.P787993893860613996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A379473 (n + 1) + 2).toNat

end

end A353815.P787993893860613996

namespace A353815

/-- `A007949(A379473(n+1)+2)` -/
def P787993893860613996.Spec : Prop :=
  ∀ n, P787993893860613996.a n = A353815 (n + 1)

end A353815

/-!
# A353816: a(n) = 1 if n is a number of the form x^2 + xy + y^2, otherwise 0.

The programs for A353816, the canonical program `A353816.P1702208988910723846` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353816 has offset 0).

The definition of A353816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353816.P1702208988910723846

`char[A132111(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A353816

/-- `char[A132111(n)]` -/
def P1702208988910723846.Spec : Prop :=
  ∀ n, (P1702208988910723846.a n : ℤ) = A353816 n

theorem P1702208988910723846.correct : P1702208988910723846.Spec := by
  intro n
  simp only [A353816]

end A353816

/-! ## A353816.P15914667593073824482

`ceil(A088534(n)/5)`
-/

namespace A353816.P15914667593073824482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088534 n : ℚ) / 5⌉

end

end A353816.P15914667593073824482

namespace A353816

/-- `ceil(A088534(n)/5)` -/
def P15914667593073824482.Spec : Prop :=
  ∀ n, P15914667593073824482.a n = A353816 n

end A353816

/-! ## A353816.P5318350516839949028

`ceil(A119395(n)/12)`
-/

namespace A353816.P5318350516839949028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A119395 n : ℚ) / 12⌉

end

end A353816.P5318350516839949028

namespace A353816

/-- `ceil(A119395(n)/12)` -/
def P5318350516839949028.Spec : Prop :=
  ∀ n, P5318350516839949028.a n = A353816 n

end A353816

/-! ## A353816.P2043123530539396611

`char[A003136(n+1)]`
-/

namespace A353816.P2043123530539396611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353816.P2043123530539396611

namespace A353816

/-- `char[A003136(n+1)]` -/
def P2043123530539396611.Spec : Prop :=
  ∀ n, (P2043123530539396611.a n : ℤ) = A353816 n

end A353816

/-! ## A353816.P14227946395812096449

`char[lt[0, A004016(n)]]`
-/

namespace A353816.P14227946395812096449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353816.P14227946395812096449

namespace A353816

/-- `char[lt[0, A004016(n)]]` -/
def P14227946395812096449.Spec : Prop :=
  ∀ n, (P14227946395812096449.a n : ℤ) = A353816 n

end A353816

/-! ## A353816.P7717092550342306285

`char[lt[0, A217220(n)]]`
-/

namespace A353816.P7717092550342306285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353816.P7717092550342306285

namespace A353816

/-- `char[lt[0, A217220(n)]]` -/
def P7717092550342306285.Spec : Prop :=
  ∀ n, (P7717092550342306285.a n : ℤ) = A353816 n

end A353816

/-! ## A353816.P6960951893991832731

`ceil(atan(atan(A033716(n))))`
-/

namespace A353816.P6960951893991832731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.arctan (A033716 n : ℝ))⌉

end

end A353816.P6960951893991832731

namespace A353816

/-- `ceil(atan(atan(A033716(n))))` -/
def P6960951893991832731.Spec : Prop :=
  ∀ n, P6960951893991832731.a n = A353816 n

end A353816

/-! ## A353816.P17031113371667773764

`A019425(A033716(n))`
-/

namespace A353816.P17031113371667773764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033716 n).toNat

end

end A353816.P17031113371667773764

namespace A353816

/-- `A019425(A033716(n))` -/
def P17031113371667773764.Spec : Prop :=
  ∀ n, P17031113371667773764.a n = A353816 n

end A353816

/-! ## A353816.P12633157216568377787

`A057427(A113062(n))`
-/

namespace A353816.P12633157216568377787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A113062 n).toNat

end

end A353816.P12633157216568377787

namespace A353816

/-- `A057427(A113062(n))` -/
def P12633157216568377787.Spec : Prop :=
  ∀ n, P12633157216568377787.a n = A353816 n

end A353816

/-! ## A353816.P13055338133163717371

`A178489(A004016(n))`
-/

namespace A353816.P13055338133163717371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A004016 n).toNat

end

end A353816.P13055338133163717371

namespace A353816

/-- `A178489(A004016(n))` -/
def P13055338133163717371.Spec : Prop :=
  ∀ n, P13055338133163717371.a n = A353816 n

end A353816

/-! ## A353816.P12384653979320448350

`A002828(A004016(n)²)`
-/

namespace A353816.P12384653979320448350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A004016 n ^ 2).toNat

end

end A353816.P12384653979320448350

namespace A353816

/-- `A002828(A004016(n)²)` -/
def P12384653979320448350.Spec : Prop :=
  ∀ n, P12384653979320448350.a n = A353816 n

end A353816

/-! ## A353816.P12185301129573069132

`A002828(A033716(n)²)`
-/

namespace A353816.P12185301129573069132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A033716 n ^ 2).toNat

end

end A353816.P12185301129573069132

namespace A353816

/-- `A002828(A033716(n)²)` -/
def P12185301129573069132.Spec : Prop :=
  ∀ n, P12185301129573069132.a n = A353816 n

end A353816

/-! ## A353816.P15696138428817624132

`A057427(A005928(n)²)`
-/

namespace A353816.P15696138428817624132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A005928 n ^ 2).toNat

end

end A353816.P15696138428817624132

namespace A353816

/-- `A057427(A005928(n)²)` -/
def P15696138428817624132.Spec : Prop :=
  ∀ n, P15696138428817624132.a n = A353816 n

end A353816

/-! ## A353816.P9068112833881828289

`A089309(A113062(n)²)`
-/

namespace A353816.P9068112833881828289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A113062 n ^ 2).toNat

end

end A353816.P9068112833881828289

namespace A353816

/-- `A089309(A113062(n)²)` -/
def P9068112833881828289.Spec : Prop :=
  ∀ n, P9068112833881828289.a n = A353816 n

end A353816

/-! ## A353816.P3085579989565230378

`A071625(A004016(n)+1)`
-/

namespace A353816.P3085579989565230378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A004016 n + 1).toNat

end

end A353816.P3085579989565230378

namespace A353816

/-- `A071625(A004016(n)+1)` -/
def P3085579989565230378.Spec : Prop :=
  ∀ n, P3085579989565230378.a n = A353816 n

end A353816

/-! ## A353816.P12670792255206101092

`A293234(A004016(n)+1)`
-/

namespace A353816.P12670792255206101092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A004016 n + 1).toNat

end

end A353816.P12670792255206101092

namespace A353816

/-- `A293234(A004016(n)+1)` -/
def P12670792255206101092.Spec : Prop :=
  ∀ n, P12670792255206101092.a n = A353816 n

end A353816

/-! ## A353816.P7041408884034488231

`A293235(A004016(n)+1)`
-/

namespace A353816.P7041408884034488231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293235 (A004016 n + 1).toNat

end

end A353816.P7041408884034488231

namespace A353816

/-- `A293235(A004016(n)+1)` -/
def P7041408884034488231.Spec : Prop :=
  ∀ n, P7041408884034488231.a n = A353816 n

end A353816

/-! ## A353816.P1008848877138912873

`A258998(A004016(n)²)²`
-/

namespace A353816.P1008848877138912873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (A004016 n ^ 2).toNat ^ 2

end

end A353816.P1008848877138912873

namespace A353816

/-- `A258998(A004016(n)²)²` -/
def P1008848877138912873.Spec : Prop :=
  ∀ n, P1008848877138912873.a n = A353816 n

end A353816

/-! ## A353816.P16688899748158022342

`A258998(A005928(n)²)²`
-/

namespace A353816.P16688899748158022342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (A005928 n ^ 2).toNat ^ 2

end

end A353816.P16688899748158022342

namespace A353816

/-- `A258998(A005928(n)²)²` -/
def P16688899748158022342.Spec : Prop :=
  ∀ n, P16688899748158022342.a n = A353816 n

end A353816

/-!
# A353817: a(n) = 1 if n is a prime power with an odd exponent, otherwise 0.

The programs for A353817, the canonical program `A353817.P3406860122766679345` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353817 has offset 1).

The definition of A353817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A353800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353817.P3406860122766679345

`A010055(n+1)-A353800(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A353817

/-- `A010055(n+1)-A353800(n+1)` -/
def P3406860122766679345.Spec : Prop :=
  ∀ n, P3406860122766679345.a n = A353817 (n + 1)

theorem P3406860122766679345.correct : P3406860122766679345.Spec := by
  intro n
  simp only [A353817, Nat.add_sub_cancel]

end A353817

/-! ## A353817.P1077257915894490728

`A100995(n+1)%2`
-/

namespace A353817.P1077257915894490728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100995 (n + 1)) 2

end

end A353817.P1077257915894490728

namespace A353817

/-- `A100995(n+1)%2` -/
def P1077257915894490728.Spec : Prop :=
  ∀ n, P1077257915894490728.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P455036051135625348

`char[record[A382660(n+1)]]`
-/

namespace A353817.P455036051135625348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382660 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353817.P455036051135625348

namespace A353817

/-- `char[record[A382660(n+1)]]` -/
def P455036051135625348.Spec : Prop :=
  ∀ n, (P455036051135625348.a n : ℤ) = A353817 (n + 1)

end A353817

/-! ## A353817.P10300040186068879172

`char[A246551(n+1)-1]`
-/

namespace A353817.P10300040186068879172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353817.P10300040186068879172

namespace A353817

/-- `char[A246551(n+1)-1]` -/
def P10300040186068879172.Spec : Prop :=
  ∀ n, (P10300040186068879172.a n : ℤ) = A353817 (n + 1)

end A353817

/-! ## A353817.P4682748988086933767

`val(A358346(n+1), n+2)`
-/

namespace A353817.P4682748988086933767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A358346 (n + 1)).toNat (n + 2)

end

end A353817.P4682748988086933767

namespace A353817

/-- `val(A358346(n+1), n+2)` -/
def P4682748988086933767.Spec : Prop :=
  ∀ n, (P4682748988086933767.a n : ℤ) = A353817 (n + 1)

end A353817

/-! ## A353817.P1878698757999657599

`C(2, (A114006(n+1)+1)²)`
-/

namespace A353817.P1878698757999657599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((A114006 (n + 1) + 1) ^ 2).toNat

end

end A353817.P1878698757999657599

namespace A353817

/-- `C(2, (A114006(n+1)+1)²)` -/
def P1878698757999657599.Spec : Prop :=
  ∀ n, (P1878698757999657599.a n : ℤ) = A353817 (n + 1)

end A353817

/-! ## A353817.P17761331352314661695

`and(∑{e}[n+1, #], A010051(∏{p}[n+1, #]))`
-/

namespace A353817.P17761331352314661695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A010051 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A353817.P17761331352314661695

namespace A353817

/-- `and(∑{e}[n+1, #], A010051(∏{p}[n+1, #]))` -/
def P17761331352314661695.Spec : Prop :=
  ∀ n, P17761331352314661695.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P8105125932686079602

`A010051(A066990(n+1))`
-/

namespace A353817.P8105125932686079602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A066990 (n + 1)).toNat

end

end A353817.P8105125932686079602

namespace A353817

/-- `A010051(A066990(n+1))` -/
def P8105125932686079602.Spec : Prop :=
  ∀ n, P8105125932686079602.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P6187694727834929561

`A000035(A100995(n+1))`
-/

namespace A353817.P6187694727834929561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A100995 (n + 1)).toNat

end

end A353817.P6187694727834929561

namespace A353817

/-- `A000035(A100995(n+1))` -/
def P6187694727834929561.Spec : Prop :=
  ∀ n, P6187694727834929561.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P8699487959405540813

`A049240(A100994(n+1))`
-/

namespace A353817.P8699487959405540813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A100994 (n + 1)).toNat

end

end A353817.P8699487959405540813

namespace A353817

/-- `A049240(A100994(n+1))` -/
def P8699487959405540813.Spec : Prop :=
  ∀ n, P8699487959405540813.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P3937033457647858313

`A072627(A046523(n+1)+1)`
-/

namespace A353817.P3937033457647858313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072627 (A046523 (n + 1) + 1).toNat

end

end A353817.P3937033457647858313

namespace A353817

/-- `A072627(A046523(n+1)+1)` -/
def P3937033457647858313.Spec : Prop :=
  ∀ n, P3937033457647858313.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P2614584301694851948

`A033684(2*A046523(n+1))`
-/

namespace A353817.P2614584301694851948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033684 (2 * A046523 (n + 1)).toNat

end

end A353817.P2614584301694851948

namespace A353817

/-- `A033684(2*A046523(n+1))` -/
def P2614584301694851948.Spec : Prop :=
  ∀ n, P2614584301694851948.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P5679984668740333649

`A354982(2*A046523(n+1))`
-/

namespace A353817.P5679984668740333649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354982 (2 * A046523 (n + 1)).toNat

end

end A353817.P5679984668740333649

namespace A353817

/-- `A354982(2*A046523(n+1))` -/
def P5679984668740333649.Spec : Prop :=
  ∀ n, P5679984668740333649.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P14245923823869683213

`A069513(n+1)*A267866(n)`
-/

namespace A353817.P14245923823869683213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A267866 n

end

end A353817.P14245923823869683213

namespace A353817

/-- `A069513(n+1)*A267866(n)` -/
def P14245923823869683213.Spec : Prop :=
  ∀ n, P14245923823869683213.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P9848323770843703613

`A007875(n+1)%A275437(n)`
-/

namespace A353817.P9848323770843703613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007875 (n + 1)) (A275437 n)

end

end A353817.P9848323770843703613

namespace A353817

/-- `A007875(n+1)%A275437(n)` -/
def P9848323770843703613.Spec : Prop :=
  ∀ n, P9848323770843703613.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P12251557207020830319

`A071570(n+1)%A275437(n)`
-/

namespace A353817.P12251557207020830319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071570 (n + 1)) (A275437 n)

end

end A353817.P12251557207020830319

namespace A353817

/-- `A071570(n+1)%A275437(n)` -/
def P12251557207020830319.Spec : Prop :=
  ∀ n, P12251557207020830319.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P11686701565090088219

`A273711(n+1)%A275437(n)`
-/

namespace A353817.P11686701565090088219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273711 (n + 1)) (A275437 n)

end

end A353817.P11686701565090088219

namespace A353817

/-- `A273711(n+1)%A275437(n)` -/
def P11686701565090088219.Spec : Prop :=
  ∀ n, P11686701565090088219.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P3974852174466520095

`A333175(n+1)%A275437(n)`
-/

namespace A353817.P3974852174466520095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333175 (n + 1)) (A275437 n)

end

end A353817.P3974852174466520095

namespace A353817

/-- `A333175(n+1)%A275437(n)` -/
def P3974852174466520095.Spec : Prop :=
  ∀ n, P3974852174466520095.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P9786531876300669808

`A349612(n+1)%A275437(n)`
-/

namespace A353817.P9786531876300669808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349612 (n + 1)) (A275437 n)

end

end A353817.P9786531876300669808

namespace A353817

/-- `A349612(n+1)%A275437(n)` -/
def P9786531876300669808.Spec : Prop :=
  ∀ n, P9786531876300669808.a n = A353817 (n + 1)

end A353817

/-! ## A353817.P5187298661525092654

`A378533(n+1)%A275437(n)`
-/

namespace A353817.P5187298661525092654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378533 (n + 1)) (A275437 n)

end

end A353817.P5187298661525092654

namespace A353817

/-- `A378533(n+1)%A275437(n)` -/
def P5187298661525092654.Spec : Prop :=
  ∀ n, P5187298661525092654.a n = A353817 (n + 1)

end A353817

/-!
# A353821: Product_{n>=1} (1 + a(n)*x^n/n!) = 1 + arctanh(x).

The programs for A353821, there is no canonical definition to state claims against.
-/

/-! ## A353821.P417965278525773690

`(-1)^n*A070821(A000165(n))`
-/

namespace A353821.P417965278525773690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A070821 (A000165 n).toNat

end

end A353821.P417965278525773690

/-! ## A353821.P11324717245544927992

`A070821(A000165(n))/A033999(n)`
-/

namespace A353821.P11324717245544927992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070821 (A000165 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A353821.P11324717245544927992

/-!
# A353822: Product_{n>=1} (1 + x^n/n!)^a(n) = exp(-x)/(1 - x).

The programs for A353822, there is no canonical definition to state claims against.
-/

/-! ## A353822.P2493548846677644066

`n*A277620(A106361(n+1))`
-/

namespace A353822.P2493548846677644066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A277620 (A106361 (n + 1)).toNat

end

end A353822.P2493548846677644066

/-! ## A353822.P1964047626828839855

`A222239(n*A261720(A212205(n)))`
-/

namespace A353822.P1964047626828839855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 ((n : ℤ) * A261720 (A212205 n).toNat).toNat

end

end A353822.P1964047626828839855

/-!
# A353824: The positions of nonzero digits in the ternary expansions of n and a(n) are the same, and the k-th leftmost nonzero digit in a(n) equals modulo 3 the product of the k leftmost nonzero digits in n.

The programs for A353824, there is no canonical definition to state claims against.
-/

/-! ## A353824.P3178170005896497686

`A353825(A258141(A022167(n))+n)`
-/

namespace A353824.P3178170005896497686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 (A258141 (A022167 n).toNat + (n : ℤ)).toNat

end

end A353824.P3178170005896497686

/-! ## A353824.P16631666846114654332

`A353825(n)+A102683(A189111(n+1))`
-/

namespace A353824.P16631666846114654332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 n + A102683 (A189111 (n + 1)).toNat

end

end A353824.P16631666846114654332

/-! ## A353824.P14821420033727099837

`A353825(n)%A003204(n)`
-/

namespace A353824.P14821420033727099837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353825 n) (A003204 n)

end

end A353824.P14821420033727099837

/-! ## A353824.P18211625204603782401

`A353825(n)+A353808(A225467(n))`
-/

namespace A353824.P18211625204603782401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 n + A353808 (A225467 n).toNat

end

end A353824.P18211625204603782401

/-! ## A353824.P13820558467468578073

`A353825(n)*A353849(A353848(n))`
-/

namespace A353824.P13820558467468578073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 n * A353849 (A353848 n).toNat

end

end A353824.P13820558467468578073

/-!
# A353825: Inverse permutation to A353824.

The programs for A353825, there is no canonical definition to state claims against.
-/

/-! ## A353825.P12275873189963397734

`A353824(A258141(A022167(n))+n)`
-/

namespace A353825.P12275873189963397734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353824 (A258141 (A022167 n).toNat + (n : ℤ)).toNat

end

end A353825.P12275873189963397734

/-! ## A353825.P11232675707284604722

`A353824(n)-A258141(A022167(n))`
-/

namespace A353825.P11232675707284604722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353824 n - A258141 (A022167 n).toNat

end

end A353825.P11232675707284604722

/-! ## A353825.P12910744261221606861

`A353824(n)-A102683(A189111(n+1))`
-/

namespace A353825.P12910744261221606861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353824 n - A102683 (A189111 (n + 1)).toNat

end

end A353825.P12910744261221606861

/-!
# A353826: The positions of nonzero digits in the ternary expansions of n and a(n) are the same, and the k-th rightmost nonzero digit in a(n) equals modulo 3 the product of the k rightmost nonzero digits in n.

The programs for A353826, there is no canonical definition to state claims against.
-/

/-! ## A353826.P2233156006740546892

`A222256(n)%A048054(A278222(n))`
-/

namespace A353826.P2233156006740546892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222256 n) (A048054 (A278222 n).toNat)

end

end A353826.P2233156006740546892

/-! ## A353826.P7595988912473322104

`A222257(n)-A010130(A068072(n+2))`
-/

namespace A353826.P7595988912473322104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 n - A010130 (A068072 (n + 2)).toNat

end

end A353826.P7595988912473322104

/-! ## A353826.P15196091339949246434

`A222256(n*((2*n)²-3))%(n^(n%2)+n)`
-/

namespace A353826.P15196091339949246434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222256 ((n : ℤ) * (((2 * n) ^ 2 : ℤ) - 3)).toNat) (n ^ (n % 2) + n : ℤ)

end

end A353826.P15196091339949246434

/-! ## A353826.P316480110674227331

`A353827(A122202(∑[n]))`
-/

namespace A353826.P316480110674227331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353827 (A122202 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353826.P316480110674227331

/-! ## A353826.P18258174532914007844

`A353827(A122285(∑[n]))`
-/

namespace A353826.P18258174532914007844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353827 (A122285 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353826.P18258174532914007844

/-!
# A353827: Inverse permutation to A353826.

The programs for A353827, there is no canonical definition to state claims against.
-/

/-! ## A353827.P7867768112088843517

`A004483((n+1)*Δ[n^3])%A004482(2*n+1)`
-/

namespace A353827.P7867768112088843517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004483 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat) (A004482 (2 * n + 1))

end

end A353827.P7867768112088843517

/-!
# A353830: The positions of nonzero digits in the balanced ternary expansions of n and a(n) are the same, and the k-th rightmost nonzero digit in a(n) equals the product of the k rightmost nonzero digits in n.

The programs for A353830, the canonical program `A353830.P1157779251727351386` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353830 has offset 0).

The definition of A353830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353830.P1157779251727351386

`-A338241(A140263(2*n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353830

/-- `-A338241(A140263(2*n))` -/
def P1157779251727351386.Spec : Prop :=
  ∀ n, P1157779251727351386.a n = A353830 n

theorem P1157779251727351386.correct : P1157779251727351386.Spec := by
  intro n
  simp only [A353830]

end A353830

/-! ## A353830.P7710118497895267486

`A057428(n)*A338241(A140263(2*n))`
-/

namespace A353830.P7710118497895267486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A338241 (A140263 (2 * n)).toNat

end

end A353830.P7710118497895267486

namespace A353830

/-- `A057428(n)*A338241(A140263(2*n))` -/
def P7710118497895267486.Spec : Prop :=
  ∀ n, P7710118497895267486.a n = A353830 n

end A353830

/-! ## A353830.P17200435278217030050

`A000038(n+1)-A338241(A140263(2*n))`
-/

namespace A353830.P17200435278217030050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A338241 (A140263 (2 * n)).toNat

end

end A353830.P17200435278217030050

namespace A353830

/-- `A000038(n+1)-A338241(A140263(2*n))` -/
def P17200435278217030050.Spec : Prop :=
  ∀ n, P17200435278217030050.a n = A353830 n

end A353830

/-! ## A353830.P17530696350207807906

`A159075(2*n)-A338241(A140263(2*n))`
-/

namespace A353830.P17530696350207807906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (2 * n) - A338241 (A140263 (2 * n)).toNat

end

end A353830.P17530696350207807906

namespace A353830

/-- `A159075(2*n)-A338241(A140263(2*n))` -/
def P17530696350207807906.Spec : Prop :=
  ∀ n, P17530696350207807906.a n = A353830 n

end A353830

/-! ## A353830.P15628171960903565056

`floor(A000038(n)/10)-A338241(A140263(2*n))`
-/

namespace A353830.P15628171960903565056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000038 n : ℚ) / 10⌋ - A338241 (A140263 (2 * n)).toNat

end

end A353830.P15628171960903565056

namespace A353830

/-- `floor(A000038(n)/10)-A338241(A140263(2*n))` -/
def P15628171960903565056.Spec : Prop :=
  ∀ n, P15628171960903565056.a n = A353830 n

end A353830

/-! ## A353830.P15393248334255502117

`floor(A269027(n)/10)-A338241(A140263(2*n))`
-/

namespace A353830.P15393248334255502117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269027 n : ℚ) / 10⌋ - A338241 (A140263 (2 * n)).toNat

end

end A353830.P15393248334255502117

namespace A353830

/-- `floor(A269027(n)/10)-A338241(A140263(2*n))` -/
def P15393248334255502117.Spec : Prop :=
  ∀ n, P15393248334255502117.a n = A353830 n

end A353830

/-! ## A353830.P3785649273320256879

`floor(A307672(n)/10)-A338241(A140263(2*n))`
-/

namespace A353830.P3785649273320256879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307672 n : ℚ) / 10⌋ - A338241 (A140263 (2 * n)).toNat

end

end A353830.P3785649273320256879

namespace A353830

/-- `floor(A307672(n)/10)-A338241(A140263(2*n))` -/
def P3785649273320256879.Spec : Prop :=
  ∀ n, P3785649273320256879.a n = A353830 n

end A353830

/-! ## A353830.P13871942934235532538

`A063377(2*(n+2))-A338241(A140263(2*n))`
-/

namespace A353830.P13871942934235532538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (2 * (n + 2)) - A338241 (A140263 (2 * n)).toNat

end

end A353830.P13871942934235532538

namespace A353830

/-- `A063377(2*(n+2))-A338241(A140263(2*n))` -/
def P13871942934235532538.Spec : Prop :=
  ∀ n, P13871942934235532538.a n = A353830 n

end A353830

/-! ## A353830.P17270428943191215393

`A008683(4*(n+1))-A338241(A140263(2*n))`
-/

namespace A353830.P17270428943191215393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A338241 (A140263 (2 * n)).toNat

end

end A353830.P17270428943191215393

namespace A353830

/-- `A008683(4*(n+1))-A338241(A140263(2*n))` -/
def P17270428943191215393.Spec : Prop :=
  ∀ n, P17270428943191215393.a n = A353830 n

end A353830

/-! ## A353830.P6534150821561601376

`and(2, A078650(n+1))-A338241(A140263(2*n))`
-/

namespace A353830.P6534150821561601376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A078650 (n + 1)) - A338241 (A140263 (2 * n)).toNat

end

end A353830.P6534150821561601376

namespace A353830

/-- `and(2, A078650(n+1))-A338241(A140263(2*n))` -/
def P6534150821561601376.Spec : Prop :=
  ∀ n, P6534150821561601376.a n = A353830 n

end A353830

/-! ## A353830.P2372734974402916231

`A001222(gcd(n, n+1))-A338241(A140263(2*n))`
-/

namespace A353830.P2372734974402916231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) - A338241 (A140263 (2 * n)).toNat

end

end A353830.P2372734974402916231

namespace A353830

/-- `A001222(gcd(n, n+1))-A338241(A140263(2*n))` -/
def P2372734974402916231.Spec : Prop :=
  ∀ n, P2372734974402916231.a n = A353830 n

end A353830

/-! ## A353830.P15022542990988644444

`(A003961(n+1)+1)%2-A338241(A140263(2*n))`
-/

namespace A353830.P15022542990988644444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) + 1) 2 - A338241 (A140263 (2 * n)).toNat

end

end A353830.P15022542990988644444

namespace A353830

/-- `(A003961(n+1)+1)%2-A338241(A140263(2*n))` -/
def P15022542990988644444.Spec : Prop :=
  ∀ n, P15022542990988644444.a n = A353830 n

end A353830

/-! ## A353830.P6636556910855385134

`A008683(A005382(n+1))*A338241(A140263(2*n))`
-/

namespace A353830.P6636556910855385134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005382 (n + 1)).toNat * A338241 (A140263 (2 * n)).toNat

end

end A353830.P6636556910855385134

namespace A353830

/-- `A008683(A005382(n+1))*A338241(A140263(2*n))` -/
def P6636556910855385134.Spec : Prop :=
  ∀ n, P6636556910855385134.a n = A353830 n

end A353830

/-! ## A353830.P2833352860837216206

`A258774(A038500(n+1))%3-A338241(A140263(2*n))`
-/

namespace A353830.P2833352860837216206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258774 (A038500 (n + 1)).toNat) 3 - A338241 (A140263 (2 * n)).toNat

end

end A353830.P2833352860837216206

namespace A353830

/-- `A258774(A038500(n+1))%3-A338241(A140263(2*n))` -/
def P2833352860837216206.Spec : Prop :=
  ∀ n, P2833352860837216206.a n = A353830 n

end A353830

/-! ## A353830.P8602653757173561595

`A103822(∑[n])-A338241(A140263(2*n))`
-/

namespace A353830.P8602653757173561595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 (∑ j ∈ Finset.range (n + 1), f1 j) - A338241 (A140263 (2 * n)).toNat

end

end A353830.P8602653757173561595

namespace A353830

/-- `A103822(∑[n])-A338241(A140263(2*n))` -/
def P8602653757173561595.Spec : Prop :=
  ∀ n, P8602653757173561595.a n = A353830 n

end A353830

/-!
# A353831: Product_{n>=1} (1 + a(n)*x^n) = Sum_{n>=0} Bell(n)*x^n, where Bell = A000110.

The programs for A353831, there is no canonical definition to state claims against.
-/

/-! ## A353831.P1547302464337236601

`A305846(n+1)+A086076(A084859(n))`
-/

namespace A353831.P1547302464337236601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305846 (n + 1) + A086076 (A084859 n).toNat

end

end A353831.P1547302464337236601

/-! ## A353831.P1032534988904823226

`A305846(n+1)+A083918(A305852(n))`
-/

namespace A353831.P1032534988904823226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305846 (n + 1) + A083918 (A305852 n).toNat

end

end A353831.P1032534988904823226

/-! ## A353831.P1267867386363084967

`A305846(n+1)+A085405(A305869(n))`
-/

namespace A353831.P1267867386363084967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305846 (n + 1) + A085405 (A305869 n).toNat

end

end A353831.P1267867386363084967

/-!
# A353832: Heinz number of the multiset of run-sums of the prime indices of n.

The programs for A353832, there is no canonical definition to state claims against.
-/

/-! ## A353832.P1384577205559696735

`A333219(A357877(n+1)+1)`
-/

namespace A353832.P1384577205559696735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A357877 (n + 1) + 1).toNat

end

end A353832.P1384577205559696735

/-! ## A353832.P10319107250858141098

`A369054(A375006(n+1))+A353842(n+1)`
-/

namespace A353832.P10319107250858141098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A375006 (n + 1)).toNat + A353842 (n + 1)

end

end A353832.P10319107250858141098

/-! ## A353832.P8295701318073716606

`A055653(n+1)-A002483(A384850(3*n+4))`
-/

namespace A353832.P8295701318073716606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (n + 1) - A002483 (A384850 (3 * n + 4)).toNat

end

end A353832.P8295701318073716606

/-! ## A353832.P13471765614485881468

`A279372(A094683(n))+A003967(n+1)`
-/

namespace A353832.P13471765614485881468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279372 (A094683 n).toNat + A003967 (n + 1)

end

end A353832.P13471765614485881468

/-! ## A353832.P17900145281256581935

`A085310(n+1)-A349797(A354904(2*(n+1)))`
-/

namespace A353832.P17900145281256581935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085310 (n + 1) - A349797 (A354904 (2 * (n + 1))).toNat

end

end A353832.P17900145281256581935

/-!
# A353833: Numbers whose multiset of prime indices has all equal run-sums.

The programs for A353833, there is no canonical definition to state claims against.
-/

/-! ## A353833.P14958924802144523114

`lt[A353835(n+1), 2]+1`
-/

namespace A353833.P14958924802144523114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353833.P14958924802144523114

/-! ## A353833.P3569568803084925826

`A353844(A258068(n+2))`
-/

namespace A353833.P3569568803084925826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (A258068 (n + 2)).toNat

end

end A353833.P3569568803084925826

/-! ## A353833.P3562405145710790249

`record[A327498(A353844(n+1))]`
-/

namespace A353833.P3562405145710790249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A353844 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353833.P3562405145710790249

/-! ## A353833.P4021901731004362808

`filter[A353844(n+1), A340372(#)]`
-/

namespace A353833.P4021901731004362808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340372 (f1 j).toNat = 1) n)

end

end A353833.P4021901731004362808

/-! ## A353833.P1841241111954065113

`filter[A353844(n+1), A351564(#)]`
-/

namespace A353833.P1841241111954065113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A353833.P1841241111954065113

/-! ## A353833.P15682817370291486086

`∪[A353834(n+1), Δ[A007504(n)]]`
-/

namespace A353833.P15682817370291486086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353834 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353833.P15682817370291486086

/-! ## A353833.P245047506759080241

`∩[A070915(n+1), A353844(n+1)]`
-/

namespace A353833.P245047506759080241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353833.P245047506759080241

/-! ## A353833.P15831058448720006248

`∩[A130091(n+1), A353844(n+1)]`
-/

namespace A353833.P15831058448720006248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353833.P15831058448720006248

/-! ## A353833.P7308526390163741308

`∩[A212165(n+1), A353844(n+1)]`
-/

namespace A353833.P7308526390163741308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353833.P7308526390163741308

/-! ## A353833.P3933086091699990445

`∩[A285801(n+1), A353844(n+1)]`
-/

namespace A353833.P3933086091699990445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353833.P3933086091699990445

/-!
# A353834: Nonprime numbers whose prime indices have all equal run-sums.

The programs for A353834, there is no canonical definition to state claims against.
-/

/-! ## A353834.P10273037783873417731

`∪[A025475(n+1), A383015(n+1)]`
-/

namespace A353834.P10273037783873417731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353834.P10273037783873417731

/-! ## A353834.P14619063266580532900

`filter[A353833(n+1), A005171(#)]`
-/

namespace A353834.P14619063266580532900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A353834.P14619063266580532900

/-! ## A353834.P10410066267168957884

`filter[A353833(n+1), A087049(#)]`
-/

namespace A353834.P10410066267168957884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A353834.P10410066267168957884

/-! ## A353834.P13273786314815373432

`∩[A018252(n+1), A353833(n+1)]`
-/

namespace A353834.P13273786314815373432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353834.P13273786314815373432

/-! ## A353834.P8222856855520745252

`∩[A048098(n+1), A353833(n+1)]`
-/

namespace A353834.P8222856855520745252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353834.P8222856855520745252

/-!
# A353835: Number of distinct run-sums of the prime indices of n.

The programs for A353835, there is no canonical definition to state claims against.
-/

/-! ## A353835.P2964815250540856876

`A001221(A353832(n+1))`
-/

namespace A353835.P2964815250540856876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A353832 (n + 1)).toNat

end

end A353835.P2964815250540856876

/-! ## A353835.P2841830853853240847

`∑{d}[A353832(n+1), A010051(#)]`
-/

namespace A353835.P2841830853853240847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A353835.P2841830853853240847

/-! ## A353835.P14433487876566478830

`∑{p}[A353832(n+1), A001055(#)]`
-/

namespace A353835.P14433487876566478830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A353835.P14433487876566478830

/-! ## A353835.P11531251130807970320

`∑{p}[A353832(n+1), A001222(#)]`
-/

namespace A353835.P11531251130807970320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A353835.P11531251130807970320

/-! ## A353835.P7958682238315583677

`∑{p}[A353832(n+1), A009194(#)]`
-/

namespace A353835.P7958682238315583677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A009194 p

end

end A353835.P7958682238315583677

/-! ## A353835.P7380147124391758186

`∑{p}[A353832(n+1), A143773(#)]`
-/

namespace A353835.P7380147124391758186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A143773 p

end

end A353835.P7380147124391758186

/-! ## A353835.P4638050259883050925

`A001222(∏{p}[A353832(n+1)+A000007(3*n+2), #])`
-/

namespace A353835.P4638050259883050925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1) + A000007 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353835.P4638050259883050925

/-! ## A353835.P12394610958471229317

`∑{p}[A353832(n+1), A000001(#)]`
-/

namespace A353835.P12394610958471229317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000001 p

end

end A353835.P12394610958471229317

/-! ## A353835.P3660344810448647064

`A064547(A353832(n+1)²)`
-/

namespace A353835.P3660344810448647064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A353832 (n + 1) ^ 2).toNat

end

end A353835.P3660344810448647064

/-! ## A353835.P12642878972743247476

`A001222(A353832(A353832((n+1)²)))`
-/

namespace A353835.P12642878972743247476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A353832 (A353832 ((n + 1) ^ 2)).toNat).toNat

end

end A353835.P12642878972743247476

/-! ## A353835.P14567688785846794084

`A056170(A353832(n+1)²)`
-/

namespace A353835.P14567688785846794084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A353832 (n + 1) ^ 2).toNat

end

end A353835.P14567688785846794084

/-! ## A353835.P10297251375170302173

`A063962(A353832(n+1)²)`
-/

namespace A353835.P10297251375170302173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A353832 (n + 1) ^ 2).toNat

end

end A353835.P10297251375170302173

/-! ## A353835.P7152732682509484785

`A349258(A353832(n+1)²)`
-/

namespace A353835.P7152732682509484785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (A353832 (n + 1) ^ 2).toNat

end

end A353835.P7152732682509484785

/-! ## A353835.P7998758527956687075

`A349258(A353832(n+1)^2)`
-/

namespace A353835.P7998758527956687075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (A353832 (n + 1) ^ 2).toNat

end

end A353835.P7998758527956687075

/-!
# A353836: Triangle read by rows where T(n,k) is the number of integer partitions of n with k distinct run-sums.

The programs for A353836, there is no canonical definition to state claims against.
-/

/-! ## A353836.P4081505628444811826

`A345164(2*A124731(n))`
-/

namespace A353836.P4081505628444811826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345164 (2 * A124731 n).toNat

end

end A353836.P4081505628444811826

/-! ## A353836.P3810003144300353915

`A304465(n+5)%A051179(A330463(n))`
-/

namespace A353836.P3810003144300353915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304465 (n + 5)) (A051179 (A330463 n).toNat)

end

end A353836.P3810003144300353915

/-! ## A353836.P1592251563218729618

`and(A229915(n), A334029(A239318(3*n+5)))`
-/

namespace A353836.P1592251563218729618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A229915 n) (A334029 (A239318 (3 * n + 5)).toNat)

end

end A353836.P1592251563218729618

/-! ## A353836.P2366907540614160974

`A333766(A325227(n+1)^A061395(2^n))^A124767(n)`
-/

namespace A353836.P2366907540614160974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333766 (SequenceMachineLib.roundAway ((A325227 (n + 1) : ℚ) ^ (A061395 (2 ^ n) : ℤ))).toNat : ℚ) ^ (A124767 n : ℤ)

end

end A353836.P2366907540614160974

/-! ## A353836.P7406077764543729209

`A333766(A325227(n+1)^A061395(2^n))^A112798(n+3)`
-/

namespace A353836.P7406077764543729209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333766 (SequenceMachineLib.roundAway ((A325227 (n + 1) : ℚ) ^ (A061395 (2 ^ n) : ℤ))).toNat : ℚ) ^ (A112798 (n + 3) : ℤ)

end

end A353836.P7406077764543729209

/-!
# A353837: Number of integer partitions of n with all distinct run-sums.

The programs for A353837, there is no canonical definition to state claims against.
-/

/-! ## A353837.P12721672991225421108

`A237685(round(sqrt(n²+1)))+A000009(n)`
-/

namespace A353837.P12721672991225421108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237685 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A000009 n

end

end A353837.P12721672991225421108

/-! ## A353837.P15098892830556071413

`A237685(A028310(n))+abs(A081360(n))`
-/

namespace A353837.P15098892830556071413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237685 (A028310 n).toNat + |A081360 n|

end

end A353837.P15098892830556071413

/-! ## A353837.P3661944988631489994

`A237685(A028310(n))+∑[A087897(n)]`
-/

namespace A353837.P3661944988631489994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237685 (A028310 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353837.P3661944988631489994

/-! ## A353837.P4907307969247514719

`A003114(n)+A238708(n)+A237685(A028310(n))`
-/

namespace A353837.P4907307969247514719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003114 n + (A238708 n + A237685 (A028310 n).toNat)

end

end A353837.P4907307969247514719

/-! ## A353837.P5640234637878233045

`A000700(n)+A331848(n)+A237685(A028310(n))`
-/

namespace A353837.P5640234637878233045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A331848 n + A237685 (A028310 n).toNat)

end

end A353837.P5640234637878233045

/-!
# A353838: Numbers whose prime indices have all distinct run-sums.

The programs for A353838, there is no canonical definition to state claims against.
-/

/-! ## A353838.P8976279741337218797

`comp[lcm(comp[or(2, n)-1], lt[(-1)^∑{e}[2*n, #], 0])]`
-/

namespace A353838.P8976279741337218797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p)

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) (SequenceMachineLib.nth (fun j => f3 j < (f5 j : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353838.P8976279741337218797

/-! ## A353838.P13647108056392029417

`comp[n*A269631(n+5)]`
-/

namespace A353838.P13647108056392029417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A269631 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353838.P13647108056392029417

/-! ## A353838.P9081517149888473661

`lt[A353841(n+1), 3]+1`
-/

namespace A353838.P9081517149888473661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353838.P9081517149888473661

/-! ## A353838.P3691461196109421835

`comp[A353839(n+1)-1]+1`
-/

namespace A353838.P3691461196109421835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353839 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A353838.P3691461196109421835

/-! ## A353838.P6045025363614639545

`comp[∑{digits}[n, #]*A075492(n+1)]`
-/

namespace A353838.P6045025363614639545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A075492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353838.P6045025363614639545

/-! ## A353838.P9750170702960168293

`comp[lcm(Δ[n²], A046954(n+1))]`
-/

namespace A353838.P9750170702960168293
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (A046954 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353838.P9750170702960168293

/-! ## A353838.P4949045083745028434

`comp[lcm(n-char[1], A344415(n+1))]`
-/

namespace A353838.P4949045083745028434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) (A344415 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A353838.P4949045083745028434

/-! ## A353838.P11664693275014796156

`comp[comp[A005117(n+1)]*A151548(n)]`
-/

namespace A353838.P11664693275014796156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) * A151548 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353838.P11664693275014796156

/-!
# A353839: Numbers whose prime indices do not have all distinct run-sums.

The programs for A353839, there is no canonical definition to state claims against.
-/

/-! ## A353839.P7482517013315199472

`lt[2, A353841(n+1)]+1`
-/

namespace A353839.P7482517013315199472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353839.P7482517013315199472

/-! ## A353839.P9960118178716373157

`lt[2, A353841(A028310(n))]`
-/

namespace A353839.P9960118178716373157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A353839.P9960118178716373157

/-! ## A353839.P18322709130569338643

`A020725(lt[2, A353841(n+1)])`
-/

namespace A353839.P18322709130569338643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353839.P18322709130569338643

/-! ## A353839.P16299845465187765825

`lt[1, A000189(A353832(n+1))]+1`
-/

namespace A353839.P16299845465187765825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A353832 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353839.P16299845465187765825

/-! ## A353839.P12096523580566749350

`lt[A353835(n+1), A001221(n+1)]+1`
-/

namespace A353839.P12096523580566749350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353839.P12096523580566749350

/-!
# A353841: Length of the trajectory of the partition run-sum transformation of n, using Heinz numbers; a(1) = 0.

The programs for A353841, there is no canonical definition to state claims against.
-/

/-! ## A353841.P4731233282457502521

`A081212(n+1)+A057427(A345165(n+1))`
-/

namespace A353841.P4731233282457502521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (n + 1) + A057427 (A345165 (n + 1)).toNat

end

end A353841.P4731233282457502521

/-! ## A353841.P8735454949580629365

`A081212(n+1)+A081212(A353833(n+1)²)`
-/

namespace A353841.P8735454949580629365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (n + 1) + A081212 (A353833 (n + 1) ^ 2).toNat

end

end A353841.P8735454949580629365

/-! ## A353841.P2610970702079403971

`A081212(n+1)+A057427(A033585(n))`
-/

namespace A353841.P2610970702079403971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (n + 1) + A057427 (A033585 n).toNat

end

end A353841.P2610970702079403971

/-! ## A353841.P4161182874325723571

`A081212(n+1)+A081212(A081217(n+1)²)`
-/

namespace A353841.P4161182874325723571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (n + 1) + A081212 (A081217 (n + 1) ^ 2).toNat

end

end A353841.P4161182874325723571

/-! ## A353841.P8363632590965662447

`A081212(n+1)+A081212(A371477(n+1)²)`
-/

namespace A353841.P8363632590965662447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081212 (n + 1) + A081212 (A371477 (n + 1) ^ 2).toNat

end

end A353841.P8363632590965662447

/-!
# A353842: Last part of the trajectory of the partition run-sum transformation of n, using Heinz numbers.

The programs for A353842, there is no canonical definition to state claims against.
-/

/-! ## A353842.P436008955345949126

`A353832(A353832(n+1))`
-/

namespace A353842.P436008955345949126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (A353832 (n + 1)).toNat

end

end A353842.P436008955345949126

/-! ## A353842.P2335146313033319714

`filter[A353840(n+1), A008966(#)]`
-/

namespace A353842.P2335146313033319714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A353842.P2335146313033319714

/-! ## A353842.P10410984293042826992

`A353840(∑[A353841(n+1)]+1)`
-/

namespace A353842.P10410984293042826992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A353842.P10410984293042826992

/-! ## A353842.P11372630308925908750

`A353840(lt[A210435(n), A353840(n+1)])`
-/

namespace A353842.P11372630308925908750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353842.P11372630308925908750

/-! ## A353842.P5259242499871583771

`A353840(lt[A005206(n+1), A353840(n+1)])`
-/

namespace A353842.P5259242499871583771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353840 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353842.P5259242499871583771

/-!
# A353844: Starting with the multiset of prime indices of n, repeatedly take the multiset of run-sums until you reach a squarefree number. This number is prime (or 1) iff n belongs to the sequence.

The programs for A353844, there is no canonical definition to state claims against.
-/

/-! ## A353844.P16317003127127443089

`∪[A353833(n+1), A008359(n)]`
-/

namespace A353844.P16317003127127443089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008359 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P16317003127127443089

/-! ## A353844.P10715569386374096425

`∪[A014329(n), A353833(n+1)]`
-/

namespace A353844.P10715569386374096425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P10715569386374096425

/-! ## A353844.P15939448562345151665

`∪[A038665(n), A353833(n+1)]`
-/

namespace A353844.P15939448562345151665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P15939448562345151665

/-! ## A353844.P5499616572025845585

`∪[A041530(n), A353833(n+1)]`
-/

namespace A353844.P5499616572025845585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041530 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P5499616572025845585

/-! ## A353844.P1950116989566067393

`∪[A041532(n), A353833(n+1)]`
-/

namespace A353844.P1950116989566067393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P1950116989566067393

/-! ## A353844.P3953859163630653606

`∪[A048773(n), A353833(n+1)]`
-/

namespace A353844.P3953859163630653606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P3953859163630653606

/-! ## A353844.P8675099913525393503

`∪[A353833(n+1), A054343(n)]`
-/

namespace A353844.P8675099913525393503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P8675099913525393503

/-! ## A353844.P13710723011078160601

`∪[A057592(n), A353833(n+1)]`
-/

namespace A353844.P13710723011078160601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P13710723011078160601

/-! ## A353844.P949103771526213491

`∪[A353833(n+1), A069080(n)]`
-/

namespace A353844.P949103771526213491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069080 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P949103771526213491

/-! ## A353844.P14478705400187661443

`∪[A104674(n), A353833(n+1)]`
-/

namespace A353844.P14478705400187661443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104674 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353844.P14478705400187661443

/-!
# A353845: Number of integer partitions of n such that if you repeatedly take the multiset of run-sums (or condensation), you eventually reach an empty set or singleton.

The programs for A353845, there is no canonical definition to state claims against.
-/

/-! ## A353845.P3214992096596424042

`A353843(∑[round(sqrt(2*n))]+1-n)`
-/

namespace A353845.P3214992096596424042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353843 (∑ j ∈ Finset.range (n + 1), f1 j + 1 - (n : ℤ)).toNat

end

end A353845.P3214992096596424042

/-! ## A353845.P14928085377389410420

`A356939(A304442(n))%A073639(n+1)`
-/

namespace A353845.P14928085377389410420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356939 (A304442 n).toNat) (A073639 (n + 1))

end

end A353845.P14928085377389410420

/-! ## A353845.P1664747037617108071

`A005100(A304442(n))%A185006(3*n+2)`
-/

namespace A353845.P1664747037617108071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005100 (A304442 n).toNat) (A185006 (3 * n + 2))

end

end A353845.P1664747037617108071

/-! ## A353845.P17489487793047670315

`A047253(A304442(n))%A268448(2*n+3)`
-/

namespace A353845.P17489487793047670315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047253 (A304442 n).toNat) (A268448 (2 * n + 3))

end

end A353845.P17489487793047670315

/-! ## A353845.P18110283166555307889

`A304442(n)-A248805(A134964(n))`
-/

namespace A353845.P18110283166555307889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n - A248805 (A134964 n).toNat

end

end A353845.P18110283166555307889

/-!
# A353846: Triangle read by rows where T(n,k) is the number of integer partitions of n with partition run-sum trajectory of length k.

The programs for A353846, there is no canonical definition to state claims against.
-/

/-! ## A353846.P9155785374916800116

`A330462(n)+A014045(A000712(n))`
-/

namespace A353846.P9155785374916800116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330462 n + A014045 (A000712 n).toNat

end

end A353846.P9155785374916800116

/-! ## A353846.P6461069213202199062

`A152146(n)%A145356(3*n+2)`
-/

namespace A353846.P6461069213202199062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152146 n) (A145356 (3 * n + 2))

end

end A353846.P6461069213202199062

/-! ## A353846.P15814995008201196909

`A353849(A025157(n)*A353859(n))`
-/

namespace A353846.P15814995008201196909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (A025157 n * A353859 n).toNat

end

end A353846.P15814995008201196909

/-! ## A353846.P5924456466622856453

`and(A285202(A099980(n)), A285229(n))`
-/

namespace A353846.P5924456466622856453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285202 (A099980 n).toNat) (A285229 n)

end

end A353846.P5924456466622856453

/-! ## A353846.P4427562678939144993

`A351014(A353859(n)+A230275(n+1))`
-/

namespace A353846.P4427562678939144993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A353859 n + A230275 (n + 1)).toNat

end

end A353846.P4427562678939144993

/-!
# A353847: Composition run-sum transformation in terms of standard composition numbers. The a(k)-th composition in standard order is the sequence of run-sums of the k-th composition in standard order. Takes each index of a row of A066099 to the index of the row consisting of its run-sums.

The programs for A353847, there is no canonical definition to state claims against.
-/

/-! ## A353847.P16882370342927269454

`and(n, A004525(A141742(n)))`
-/

namespace A353847.P16882370342927269454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A004525 (A141742 n).toNat)

end

end A353847.P16882370342927269454

/-! ## A353847.P18426184404756553366

`A025480(and(2*n, A141742(n)))`
-/

namespace A353847.P18426184404756553366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.land (2 * n : ℤ) (A141742 n)).toNat

end

end A353847.P18426184404756553366

/-! ## A353847.P5577176579637962344

`and(A005843(n), A141742(n))/2`
-/

namespace A353847.P5577176579637962344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A005843 n) (A141742 n) : ℚ) / 2

end

end A353847.P5577176579637962344

/-! ## A353847.P11659966135649885300

`A353855(n)+A102683(A000642(n+1))`
-/

namespace A353847.P11659966135649885300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353855 n + A102683 (A000642 (n + 1)).toNat

end

end A353847.P11659966135649885300

/-! ## A353847.P2265694407746151213

`A353855(n)+A351592(A202015(n+1))`
-/

namespace A353847.P2265694407746151213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353855 n + A351592 (A202015 (n + 1)).toNat

end

end A353847.P2265694407746151213

/-!
# A353848: Numbers k such that the k-th composition in standard order (row k of A066099) has all equal run-sums.

The programs for A353848, there is no canonical definition to state claims against.
-/

/-! ## A353848.P10945287852326750601

`A353857(A028310(n))%A029508(n+1)`
-/

namespace A353848.P10945287852326750601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353857 (A028310 n).toNat) (A029508 (n + 1))

end

end A353848.P10945287852326750601

/-! ## A353848.P16938790180731751069

`lt[A353849(n), 2]`
-/

namespace A353848.P16938790180731751069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353848.P16938790180731751069

/-! ## A353848.P15932303298942412840

`eq[1, A353849(round(acot(n)+n))]`
-/

namespace A353848.P15932303298942412840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353848.P15932303298942412840

/-! ## A353848.P7062649619810965807

`eq[1, A353849(round(sqrt(n²+1)))]`
-/

namespace A353848.P7062649619810965807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353848.P7062649619810965807

/-! ## A353848.P7765077907934410311

`eq[0, A231204(A353855(n))]`
-/

namespace A353848.P7765077907934410311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 (A353855 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353848.P7765077907934410311

/-!
# A353849: Number of distinct positive run-sums of the n-th composition in standard order.

The programs for A353849, there is no canonical definition to state claims against.
-/

/-! ## A353849.P13410625914814813190

`A334028(A353855(n))`
-/

namespace A353849.P13410625914814813190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A353855 n).toNat

end

end A353849.P13410625914814813190

/-! ## A353849.P2489194784054605214

`A351014(and(n, A353855(n)))`
-/

namespace A353849.P2489194784054605214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.land (n : ℤ) (A353855 n)).toNat

end

end A353849.P2489194784054605214

/-! ## A353849.P73149236918382459

`A354582(and(n, A353855(n)))`
-/

namespace A353849.P73149236918382459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (Int.land (n : ℤ) (A353855 n)).toNat

end

end A353849.P73149236918382459

/-! ## A353849.P17575874899548505611

`A354907(and(n, A353855(n)))`
-/

namespace A353849.P17575874899548505611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (Int.land (n : ℤ) (A353855 n)).toNat

end

end A353849.P17575874899548505611

/-! ## A353849.P7469391882074783569

`A354582(A353855(char[1]+n))`
-/

namespace A353849.P7469391882074783569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A353855 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A353849.P7469391882074783569

/-! ## A353849.P485439928945208061

`A354907(lcm((-1)^∑[n], A353855(n)))`
-/

namespace A353849.P485439928945208061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (Int.lcm ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) (A353855 n))

end

end A353849.P485439928945208061

/-! ## A353849.P495078289435950009

`A354582(A353855(n)%∑[1-4*n])`
-/

namespace A353849.P495078289435950009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (Int.tmod (A353855 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353849.P495078289435950009

/-! ## A353849.P16086896833110654937

`A354582(A178334(n)*A353855(n))`
-/

namespace A353849.P16086896833110654937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A178334 n * A353855 n).toNat

end

end A353849.P16086896833110654937

/-! ## A353849.P7038813346903273367

`A354907(A043285(n+1)*A353855(n))`
-/

namespace A353849.P7038813346903273367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A043285 (n + 1) * A353855 n).toNat

end

end A353849.P7038813346903273367

/-! ## A353849.P13688370881596012847

`A354907(A043289(n+1)*A353855(n))`
-/

namespace A353849.P13688370881596012847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354907 (A043289 (n + 1) * A353855 n).toNat

end

end A353849.P13688370881596012847

/-!
# A353851: Number of integer compositions of n with all equal run-sums.

The programs for A353851, there is no canonical definition to state claims against.
-/

/-! ## A353851.P5536590436423073759

`A247469(A353858(n))`
-/

namespace A353851.P5536590436423073759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247469 (A353858 n).toNat

end

end A353851.P5536590436423073759

/-! ## A353851.P71377594710181887

`A319412(A319356(round(sqrt(n²+1))))`
-/

namespace A353851.P71377594710181887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319412 (A319356 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat).toNat

end

end A353851.P71377594710181887

/-! ## A353851.P16434615541347534560

`A008481(5^A074206(n))+A004273(A211110(n))`
-/

namespace A353851.P16434615541347534560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A074206 n : ℤ))).toNat + A004273 (A211110 n).toNat

end

end A353851.P16434615541347534560

/-!
# A353852: Numbers k such that the k-th composition in standard order (row k of A066099) has all distinct run-sums.

The programs for A353852, there is no canonical definition to state claims against.
-/

/-! ## A353852.P2456414478463681906

`eq[A124767(n), A353849(n)]`
-/

namespace A353852.P2456414478463681906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353852.P2456414478463681906

/-! ## A353852.P17030348945198634106

`eq[A353745(A057335(n)), A353849(n)]`
-/

namespace A353852.P17030348945198634106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (A057335 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353852.P17030348945198634106

/-! ## A353852.P17930837856141031173

`eq[A124766(n)+A124760(n), A353849(n)]`
-/

namespace A353852.P17930837856141031173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n + A124760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353852.P17930837856141031173

/-! ## A353852.P18096042800498523226

`lt[A124765(n)+A124761(n), A353849(n)+1]`
-/

namespace A353852.P18096042800498523226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n + A124761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353852.P18096042800498523226

/-! ## A353852.P16971346392204660397

`eq[A000120(A333627(n)), A353849(n)]`
-/

namespace A353852.P16971346392204660397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A333627 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353852.P16971346392204660397

/-! ## A353852.P8854611978364999519

`eq[A000120(A353855(n)), A351014(n)]`
-/

namespace A353852.P8854611978364999519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A353855 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353852.P8854611978364999519

/-! ## A353852.P11602483984222565080

`eq[A124767(n), A351014(A353847(n))]`
-/

namespace A353852.P11602483984222565080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A353847 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353852.P11602483984222565080

/-!
# A353854: Length of the trajectory of the composition run-sum transformation (condensation) of the n-th composition in standard order.

The programs for A353854, there is no canonical definition to state claims against.
-/

/-! ## A353854.P18387355556780654026

`A078832(A133299(3*n+5)^A124762(n))`
-/

namespace A353854.P18387355556780654026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078832 (SequenceMachineLib.roundAway ((A133299 (3 * n + 5) : ℚ) ^ (A124762 n : ℤ))).toNat

end

end A353854.P18387355556780654026

/-! ## A353854.P7418947442789002782

`gcd(A241583(A014574(n+5)), A319646(n))`
-/

namespace A353854.P7418947442789002782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A241583 (A014574 (n + 5)).toNat) (A319646 n)

end

end A353854.P7418947442789002782

/-! ## A353854.P12700459447609787798

`gcd(A122197(n+1), A279420(A089259(n)))`
-/

namespace A353854.P12700459447609787798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122197 (n + 1)) (A279420 (A089259 n).toNat)

end

end A353854.P12700459447609787798

/-! ## A353854.P11875965786986990985

`A187447(A014847(n+1))`
-/

namespace A353854.P11875965786986990985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187447 (A014847 (n + 1)).toNat

end

end A353854.P11875965786986990985

/-! ## A353854.P965469290379849052

`A191591(A028608(n+1))`
-/

namespace A353854.P965469290379849052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191591 (A028608 (n + 1)).toNat

end

end A353854.P965469290379849052

/-!
# A353855: Last term of the trajectory of the composition run-sum transformation (condensation) of the n-th composition in standard order.

The programs for A353855, there is no canonical definition to state claims against.
-/

/-! ## A353855.P7683300730522124968

`A353847(A353847(n))`
-/

namespace A353855.P7683300730522124968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A353847 n).toNat

end

end A353855.P7683300730522124968

/-! ## A353855.P1392465739675886070

`A353853(∑[A353854(n)]-1)`
-/

namespace A353855.P1392465739675886070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A353855.P1392465739675886070

/-! ## A353855.P2821386249251478122

`A353853(lt[0, Δ[A353853(n)]])`
-/

namespace A353855.P2821386249251478122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A353855.P2821386249251478122

/-! ## A353855.P13082967037615689333

`A353853(lt[A353853(n), A353853(n+1)])`
-/

namespace A353855.P13082967037615689333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353855.P13082967037615689333

/-! ## A353855.P11869456559190604822

`and(n, 6-A300352(3*n+2))`
-/

namespace A353855.P11869456559190604822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (6 - A300352 (3 * n + 2))

end

end A353855.P11869456559190604822

/-!
# A353856: Triangle read by rows where T(n,k) is the number of integer compositions of n with run-sum trajectory (condensation) ending in a composition of length k.

The programs for A353856, there is no canonical definition to state claims against.
-/

/-! ## A353856.P8248186031952521635

`A025675(3^A333755(n))`
-/

namespace A353856.P8248186031952521635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025675 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A333755 n : ℤ))).toNat

end

end A353856.P8248186031952521635

/-! ## A353856.P4346884391875360945

`A280317(3^A333755(n))`
-/

namespace A353856.P4346884391875360945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280317 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A333755 n : ℤ))).toNat

end

end A353856.P4346884391875360945

/-! ## A353856.P4655619577512261748

`A131711(A333755(n)^4)`
-/

namespace A353856.P4655619577512261748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131711 (A333755 n ^ 4).toNat

end

end A353856.P4655619577512261748

/-! ## A353856.P6468137151326380007

`A090079(A333755(n)^5)`
-/

namespace A353856.P6468137151326380007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A333755 n ^ 5).toNat

end

end A353856.P6468137151326380007

/-! ## A353856.P3647141258438969175

`A265745(A333755(n)^5)`
-/

namespace A353856.P3647141258438969175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A333755 n ^ 5).toNat

end

end A353856.P3647141258438969175

/-!
# A353857: Numbers k such that the k-th composition in standard order has run-sum trajectory ending in a singleton.

The programs for A353857, there is no canonical definition to state claims against.
-/

/-! ## A353857.P12639589525495330854

`record[A353848(A127255(n))]`
-/

namespace A353857.P12639589525495330854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A127255 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353857.P12639589525495330854

/-! ## A353857.P8698856314566761723

`record[A353848(A274533(n+1))]`
-/

namespace A353857.P8698856314566761723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A274533 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353857.P8698856314566761723

/-! ## A353857.P13837410762889826149

`record[A353848(A286000(n+1))]`
-/

namespace A353857.P13837410762889826149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A286000 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353857.P13837410762889826149

/-! ## A353857.P5483628129789701526

`record[A353848(A286001(n+1))]`
-/

namespace A353857.P5483628129789701526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A286001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353857.P5483628129789701526

/-! ## A353857.P4208489132436983787

`record[A353848(A354322(n+1))]`
-/

namespace A353857.P4208489132436983787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353848 (A354322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353857.P4208489132436983787

/-!
# A353858: Number of integer compositions of n with run-sum trajectory ending in a singleton.

The programs for A353858, there is no canonical definition to state claims against.
-/

/-! ## A353858.P3294996423439825788

`A353856(∑[n]+1)`
-/

namespace A353858.P3294996423439825788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353856 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A353858.P3294996423439825788

/-! ## A353858.P4570095504523557979

`A353856(A000124(n))%34`
-/

namespace A353858.P4570095504523557979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353856 (A000124 n).toNat) 34

end

end A353858.P4570095504523557979

/-! ## A353858.P12376143970360700651

`A353847(A353856(C(n+1, 2)+1))`
-/

namespace A353858.P12376143970360700651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A353856 (Nat.choose (n + 1) 2 + 1)).toNat

end

end A353858.P12376143970360700651

/-! ## A353858.P5521462308136467944

`A353847(A353856(or(1, n)*ceil(n/2)+1))`
-/

namespace A353858.P5521462308136467944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A353856 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉ + 1).toNat).toNat

end

end A353858.P5521462308136467944

/-! ## A353858.P6981406678679848150

`A353856(A000124(n))+A185284(n)`
-/

namespace A353858.P6981406678679848150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353856 (A000124 n).toNat + A185284 n

end

end A353858.P6981406678679848150

/-!
# A353859: Triangle read by rows where T(n,k) is the number of integer compositions of n with composition run-sum trajectory of length k.

The programs for A353859, there is no canonical definition to state claims against.
-/

/-! ## A353859.P7449286443183397808

`and(xor(1, A245472(n+1)), A216566(3*(n+1)))`
-/

namespace A353859.P7449286443183397808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor 1 (A245472 (n + 1))) (A216566 (3 * (n + 1)))

end

end A353859.P7449286443183397808

/-! ## A353859.P13062876155919735151

`A353846(n)+A353846(A364113(n))`
-/

namespace A353859.P13062876155919735151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 n + A353846 (A364113 n).toNat

end

end A353859.P13062876155919735151

/-! ## A353859.P7340317305804764683

`A288108(n)-A082784(A244711(n))`
-/

namespace A353859.P7340317305804764683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 n - A082784 (A244711 (n + 11)).toNat

end

end A353859.P7340317305804764683

/-! ## A353859.P5315664267726394802

`and(A046072(A290073(n)), A143395(n))`
-/

namespace A353859.P5315664267726394802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046072 (A290073 n).toNat) (A143395 n)

end

end A353859.P5315664267726394802

/-! ## A353859.P6513267181781545823

`A353846(A195892(n+2))+A353846(n)`
-/

namespace A353859.P6513267181781545823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (A195892 (n + 2)).toNat + A353846 n

end

end A353859.P6513267181781545823

/-!
# A353861: Number of distinct weak run-sums of the prime indices of n.

The programs for A353861, there is no canonical definition to state claims against.
-/

/-! ## A353861.P10803820928748455846

`A124768(A046523(3*(n+1))-1)`
-/

namespace A353861.P10803820928748455846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A046523 (3 * (n + 1)) - 1).toNat

end

end A353861.P10803820928748455846

/-! ## A353861.P3737972624184198791

`A073093(n+1)-A024362(A280699(n+3))`
-/

namespace A353861.P3737972624184198791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A024362 (A280699 (n + 3)).toNat

end

end A353861.P3737972624184198791

/-! ## A353861.P7700098596470238292

`A252464(A181819(3*(n+1)))%A325043(n+1)`
-/

namespace A353861.P7700098596470238292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A181819 (3 * (n + 1))).toNat) (A325043 (n + 1))

end

end A353861.P7700098596470238292

/-! ## A353861.P2401155273552387251

`A010892(A110981(n+1))+A001222(n+1)`
-/

namespace A353861.P2401155273552387251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A110981 (n + 1)).toNat + A001222 (n + 1)

end

end A353861.P2401155273552387251

/-! ## A353861.P6242272756330805595

`A047999(A119464(3*n+2))+A001222(n+1)`
-/

namespace A353861.P6242272756330805595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A119464 (3 * n + 2)).toNat + A001222 (n + 1)

end

end A353861.P6242272756330805595

/-!
# A353862: Greatest run-sum of the prime indices of n.

The programs for A353862, there is no canonical definition to state claims against.
-/

/-! ## A353862.P7586004112244977939

`A061395(A353832(n+1))`
-/

namespace A353862.P7586004112244977939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A353832 (n + 1)).toNat

end

end A353862.P7586004112244977939

/-! ## A353862.P14917980567824829842

`A065770(∏{p}[A353832(n+1), #])`
-/

namespace A353862.P14917980567824829842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353862.P14917980567824829842

/-! ## A353862.P6706961626487844271

`A263297(∏{p}[A353832(n+1), #])`
-/

namespace A353862.P6706961626487844271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353862.P6706961626487844271

/-! ## A353862.P17670598331110228216

`A335603(∏{p}[A353832(n+1), #])`
-/

namespace A353862.P17670598331110228216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353862.P17670598331110228216

/-! ## A353862.P4684989134459488238

`A363487(∏{p}[A353832(n+1), #])`
-/

namespace A353862.P4684989134459488238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363487 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A353862.P4684989134459488238

/-! ## A353862.P4208022447657285015

`A056239(or(A005088(n+1), A034699(n+1)))`
-/

namespace A353862.P4208022447657285015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor (A005088 (n + 1)) (A034699 (n + 1))).toNat

end

end A353862.P4208022447657285015

/-! ## A353862.P16590560203061157261

`A056239(or(A034699(n+1), A295297(n+1)))`
-/

namespace A353862.P16590560203061157261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor (A034699 (n + 1)) (A295297 (n + 1))).toNat

end

end A353862.P16590560203061157261

/-! ## A353862.P2847150225388755657

`A335603(or(A034699(n+1), A295297(n+1)))`
-/

namespace A353862.P2847150225388755657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (Int.lor (A034699 (n + 1)) (A295297 (n + 1))).toNat

end

end A353862.P2847150225388755657

/-! ## A353862.P9348492018168266558

`A335603((A295297(n+1)+1)*A034699(n+1))`
-/

namespace A353862.P9348492018168266558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 ((A295297 (n + 1) + 1) * A034699 (n + 1)).toNat

end

end A353862.P9348492018168266558

/-! ## A353862.P321395286274827328

`A302039(A034699(n+1))%A329600(A133808(n+1))`
-/

namespace A353862.P321395286274827328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302039 (A034699 (n + 1)).toNat) (A329600 (A133808 (n + 1)).toNat)

end

end A353862.P321395286274827328

/-!
# A353863: Number of integer partitions of n whose weak run-sums cover an initial interval of nonnegative integers.

The programs for A353863, there is no canonical definition to state claims against.
-/

/-! ## A353863.P17390695572149414235

`A350843(A078662(n+1))`
-/

namespace A353863.P17390695572149414235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (A078662 (n + 1)).toNat

end

end A353863.P17390695572149414235

/-! ## A353863.P7479810299181714149

`A086707(A179255(2*n)+A067513(n+5))`
-/

namespace A353863.P7479810299181714149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (A179255 (2 * n) + A067513 (n + 5)).toNat

end

end A353863.P7479810299181714149

/-! ## A353863.P5597803444100340651

`A086707(A179255(2*n)+A005361(2*(n+1)))`
-/

namespace A353863.P5597803444100340651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (A179255 (2 * n) + A005361 (2 * (n + 1))).toNat

end

end A353863.P5597803444100340651

/-!
# A353864: Number of rucksack partitions of n: every consecutive constant subsequence has a different sum.

The programs for A353864, there is no canonical definition to state claims against.
-/

/-! ## A353864.P7898298257251630392

`A348613(A253413(n))+A038348(n)`
-/

namespace A353864.P7898298257251630392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A253413 n).toNat + A038348 n

end

end A353864.P7898298257251630392

/-! ## A353864.P9378157044279027624

`A342739(A027337(n+2))+A005896(n)`
-/

namespace A353864.P9378157044279027624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342739 (A027337 (n + 2)).toNat + A005896 n

end

end A353864.P9378157044279027624

/-! ## A353864.P17899494274622145701

`round(root(A280466(n), 3))`
-/

namespace A353864.P17899494274622145701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A280466 n : ℝ) ^ (1 / (3 : ℝ)))

end

end A353864.P17899494274622145701

/-! ## A353864.P11659976362130013406

`A105224(∑[2^n]+C(∑[n]+1, 2))`
-/

namespace A353864.P11659976362130013406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2)

end

end A353864.P11659976362130013406

/-! ## A353864.P15682363987662583577

`A056556(A087447(n))`
-/

namespace A353864.P15682363987662583577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A087447 n).toNat

end

end A353864.P15682363987662583577

/-!
# A353865: Number of complete rucksack partitions of n. Partitions whose weak run-sums are distinct and cover an initial interval of nonnegative integers.

The programs for A353865, there is no canonical definition to state claims against.
-/

/-! ## A353865.P11328139367548381461

`A119620(A056239(n+4))%A301738(n)`
-/

namespace A353865.P11328139367548381461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119620 (A056239 (n + 4)).toNat) (A301738 n)

end

end A353865.P11328139367548381461

/-! ## A353865.P6034841639300740533

`A002095(A056239(n+4)%A019988(n+1))`
-/

namespace A353865.P6034841639300740533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002095 (Int.tmod (A056239 (n + 4)) (A019988 (n + 1))).toNat

end

end A353865.P6034841639300740533

/-! ## A353865.P1781850342996064316

`A002095(A056239(n+4))%A319912(n+4)`
-/

namespace A353865.P1781850342996064316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002095 (A056239 (n + 4)).toNat) (A319912 (n + 4))

end

end A353865.P1781850342996064316

/-! ## A353865.P6294459602501427186

`A178503(A056239(n+4))%A276643(2*n+3)`
-/

namespace A353865.P6294459602501427186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178503 (A056239 (n + 4)).toNat) (A276643 (2 * n + 3))

end

end A353865.P6294459602501427186

/-! ## A353865.P58059830154322573

`A240201(A056239(n+4))%A240201(3*n+4)`
-/

namespace A353865.P58059830154322573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240201 (A056239 (n + 4)).toNat) (A240201 (3 * n + 4))

end

end A353865.P58059830154322573

/-!
# A353866: Heinz numbers of rucksack partitions. Every prime-power divisor has a different sum of prime indices.

The programs for A353866, there is no canonical definition to state claims against.
-/

/-! ## A353866.P8483706273567596253

`lt[A243865(n+1), 4]+1`
-/

namespace A353866.P8483706273567596253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243865 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353866.P8483706273567596253

/-! ## A353866.P10669604473375986998

`comp[A354583(n+1)-1]+1`
-/

namespace A353866.P10669604473375986998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354583 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A353866.P10669604473375986998

/-! ## A353866.P8841627615106662596

`∪[or(1, n)+n, A299702(n+1)]`
-/

namespace A353866.P8841627615106662596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353866.P8841627615106662596

/-! ## A353866.P1919303588019545578

`comp[A105570(A325777(n+1))]`
-/

namespace A353866.P1919303588019545578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A325777 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353866.P1919303588019545578

/-! ## A353866.P16284043596053472808

`∪[A001800(n), A299702(n+1)]`
-/

namespace A353866.P16284043596053472808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353866.P16284043596053472808

/-! ## A353866.P16774640410698456742

`∪[A299702(n+1), A016825(n)]`
-/

namespace A353866.P16774640410698456742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353866.P16774640410698456742

/-! ## A353866.P16084873778598809452

`∪[A299702(n+1), A314027(n)]`
-/

namespace A353866.P16084873778598809452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314027 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353866.P16084873778598809452

/-! ## A353866.P3435748685914457519

`∪[A002038(n+1), A299702(n+1)]`
-/

namespace A353866.P3435748685914457519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353866.P3435748685914457519

/-! ## A353866.P18446061031104822933

`∪[2*A005408(n), A299702(n+1)]`
-/

namespace A353866.P18446061031104822933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353866.P18446061031104822933

/-! ## A353866.P12405763583442788474

`∪[A299702(n+1), A022441(n)+n]`
-/

namespace A353866.P12405763583442788474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022441 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353866.P12405763583442788474

/-!
# A353867: Heinz numbers of integer partitions where every partial run (consecutive constant subsequence) has a different sum, and these sums include every integer from 0 to the greatest part.

The programs for A353867, there is no canonical definition to state claims against.
-/

/-! ## A353867.P14982449763468909194

`eq[A290104((n+1)²)/A290104(n+1), A008480(n+1)]+1`
-/

namespace A353867.P14982449763468909194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290104 ((n + 1) ^ 2) : ℚ) / (A290104 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A353867.P14982449763468909194

/-! ## A353867.P16564526792303929629

`A091065(lt[A058160(n+1), A000217(n)])`
-/

namespace A353867.P16564526792303929629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091065 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353867.P16564526792303929629

/-! ## A353867.P14260810764481793893

`A275692(lt[A300435(n+1), A213711(n)])`
-/

namespace A353867.P14260810764481793893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275692 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353867.P14260810764481793893

/-! ## A353867.P7981110603037840706

`A328596(lt[A346381(n), A329394(n+1)])`
-/

namespace A353867.P7981110603037840706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353867.P7981110603037840706

/-! ## A353867.P2767944948681126494

`A328596(lt[A367302(n+3), A328596(3*n+2)])`
-/

namespace A353867.P2767944948681126494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367302 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353867.P2767944948681126494

/-!
# A353868: Numbers k such that the Carmichael function A002322(k) divides Dedekind psi A001615(k).

The programs for A353868, there is no canonical definition to state claims against.
-/

/-! ## A353868.P1176828957355741121

`lt[A002891(A051724(n)), A191791(n)]`
-/

namespace A353868.P1176828957355741121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002891 (A051724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353868.P1176828957355741121

/-! ## A353868.P1137621806075169889

`lt[A245092(A007504(2*n)), A363395(2*n)]`
-/

namespace A353868.P1137621806075169889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A007504 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363395 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353868.P1137621806075169889

/-! ## A353868.P12371785531426798728

`lt[A001222(A052284(n)), A074206(n)]`
-/

namespace A353868.P12371785531426798728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A052284 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353868.P12371785531426798728

/-! ## A353868.P11147123596523153517

`lt[A061078(A301333(n)), A000203(n+1)]`
-/

namespace A353868.P11147123596523153517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061078 (A301333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A353868.P11147123596523153517

/-!
# A353869: Squarefree numbers k such that the Carmichael function A002322(k) divides the Dedekind psi A001615(k).

The programs for A353869, there is no canonical definition to state claims against.
-/

/-! ## A353869.P13611891235064099453

`record[A007913(A324243(n+1))]`
-/

namespace A353869.P13611891235064099453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A324243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353869.P13611891235064099453

/-! ## A353869.P12290369178265757946

`record[A007913(A353868(n+1))]`
-/

namespace A353869.P12290369178265757946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A353868 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353869.P12290369178265757946

/-! ## A353869.P17002505619653028370

`filter[A324243(n+1), A008966(#)]`
-/

namespace A353869.P17002505619653028370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A353869.P17002505619653028370

/-! ## A353869.P51919794942298682

`filter[A353868(n+1), A008966(#)]`
-/

namespace A353869.P51919794942298682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A353869.P51919794942298682

/-! ## A353869.P12423035585806537741

`∩[A005117(n+1), A324243(n+1)]`
-/

namespace A353869.P12423035585806537741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P12423035585806537741

/-! ## A353869.P9599737681360876869

`∩[A005117(n+1), A353868(n+1)]`
-/

namespace A353869.P9599737681360876869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P9599737681360876869

/-! ## A353869.P12391372658904396533

`∩[A167207(n+1), A324243(n+1)]`
-/

namespace A353869.P12391372658904396533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P12391372658904396533

/-! ## A353869.P17378691283120186456

`∩[A303554(n+1), A324243(n+1)]`
-/

namespace A353869.P17378691283120186456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P17378691283120186456

/-! ## A353869.P3445810713098247628

`∩[A072774(n+1), A324243(n+1)]`
-/

namespace A353869.P3445810713098247628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P3445810713098247628

/-! ## A353869.P12480283559468118088

`∩[A210490(n+1), A324243(n+1)]`
-/

namespace A353869.P12480283559468118088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P12480283559468118088

/-! ## A353869.P13691389395772057811

`∩[A065200(n+1), A324243(n+1)]`
-/

namespace A353869.P13691389395772057811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P13691389395772057811

/-! ## A353869.P1133295852938279686

`∩[A304449(n+1), A324243(n+1)]`
-/

namespace A353869.P1133295852938279686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P1133295852938279686

/-! ## A353869.P12739386449141529

`∩[A304678(n+1), A324243(n+1)]`
-/

namespace A353869.P12739386449141529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353869.P12739386449141529

/-! ## A353869.P4277115102631961245

`filter[A324243(n+1), A384667(#)]`
-/

namespace A353869.P4277115102631961245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A353869.P4277115102631961245

/-!
# A353871: Squarefree primitive terms of A353868; also primitive terms of A353869.

The programs for A353871, there is no canonical definition to state claims against.
-/

/-! ## A353871.P2996901916699749239

`record[A007947(A353870(n+1))]`
-/

namespace A353871.P2996901916699749239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A353870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353871.P2996901916699749239

/-! ## A353871.P2700164948284990138

`filter[A353870(n+1), A008966(#)]`
-/

namespace A353871.P2700164948284990138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A353871.P2700164948284990138

/-! ## A353871.P2835614042158045808

`filter[A353870(n+1), A323154(#)]`
-/

namespace A353871.P2835614042158045808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A353871.P2835614042158045808

/-! ## A353871.P10329586782536188734

`filter[A353870(n+1), A353559(#)]`
-/

namespace A353871.P10329586782536188734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A353871.P10329586782536188734

/-! ## A353871.P10047545418784265429

`filter[A353870(n+1), A384667(#)]`
-/

namespace A353871.P10047545418784265429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A353871.P10047545418784265429

/-!
# A353872: Numbers k such that the arithmetic differential equation m'' - m'm + k = 0 has exactly one positive solution in m with two prime factors (counted with multiplicity).

The programs for A353872, there is no canonical definition to state claims against.
-/

/-! ## A353872.P10389806558568793692

`A195928(A007845(3*n+1))-∑[n+2]`
-/

namespace A353872.P10389806558568793692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195928 (A007845 (3 * n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A353872.P10389806558568793692

/-!
# A353877: Triangle read by rows: T(n,k) = number of tilings of a n X k rectangle using right trominoes, dominoes and 1 X 1 tiles, n >= 0, k = 0..n.

The programs for A353877, there is no canonical definition to state claims against.
-/

/-! ## A353877.P9637585890870395712

`A130157(A132950(n))`
-/

namespace A353877.P9637585890870395712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130157 (A132950 n).toNat

end

end A353877.P9637585890870395712

/-! ## A353877.P14108351554777805121

`A337587(A053199(n))`
-/

namespace A353877.P14108351554777805121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337587 (A053199 n).toNat

end

end A353877.P14108351554777805121

/-! ## A353877.P9489033383919510214

`A265553(A153188(n))`
-/

namespace A353877.P9489033383919510214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265553 (A153188 n).toNat

end

end A353877.P9489033383919510214

/-! ## A353877.P6644743488216264248

`A265540(A155955(n))`
-/

namespace A353877.P6644743488216264248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265540 (A155955 n).toNat

end

end A353877.P6644743488216264248

/-! ## A353877.P1500955621187571142

`A360683(A100064(n))`
-/

namespace A353877.P1500955621187571142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360683 (A100064 n).toNat

end

end A353877.P1500955621187571142

/-!
# A353879: Number of tilings of a 4 X n rectangle using right trominoes, dominoes and 1 X 1 tiles.

The programs for A353879, there is no canonical definition to state claims against.
-/

/-! ## A353879.P16695710466721621814

`record[A353877(A045918(n))]`
-/

namespace A353879.P16695710466721621814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353877 (A045918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353879.P16695710466721621814

/-!
# A353880: Expansion of e.g.f. 1/(1 - (x * log(1-x))^2 / 4).

The programs for A353880, there is no canonical definition to state claims against.
-/

/-! ## A353880.P1460865016356100593

`A353891(A024649(n))`
-/

namespace A353880.P1460865016356100593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353891 (A024649 n).toNat

end

end A353880.P1460865016356100593

/-! ## A353880.P5671881655225290607

`A004525(abs(A009031(n)))`
-/

namespace A353880.P5671881655225290607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 |A009031 n|.toNat

end

end A353880.P5671881655225290607

/-! ## A353880.P3940993403133586097

`A004525(abs(A009136(n)))`
-/

namespace A353880.P3940993403133586097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 |A009136 n|.toNat

end

end A353880.P3940993403133586097

/-! ## A353880.P3380671560192090290

`A006370(2*A353891(n))`
-/

namespace A353880.P3380671560192090290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A353891 n).toNat

end

end A353880.P3380671560192090290

/-!
# A353881: Expansion of e.g.f. 1/(1 + (x * log(1-x))^3 / 36).

The programs for A353881, there is no canonical definition to state claims against.
-/

/-! ## A353881.P7469347010919376381

`A353892(A049872(n))`
-/

namespace A353881.P7469347010919376381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353892 (A049872 n).toNat

end

end A353881.P7469347010919376381

/-! ## A353881.P17011096120471043169

`A353892(A115009(∑[n]))`
-/

namespace A353881.P17011096120471043169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353892 (A115009 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353881.P17011096120471043169

/-! ## A353881.P638107089145859151

`A353892(lcm(n, A004086(n)))`
-/

namespace A353881.P638107089145859151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353892 (Int.lcm (n : ℤ) (A004086 n))

end

end A353881.P638107089145859151

/-! ## A353881.P10713133177848298606

`A353892(floor(1/A097694(n)+n))`
-/

namespace A353881.P10713133177848298606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353892 ⌊1 / (A097694 (n + 15) : ℚ) + (n : ℚ)⌋.toNat

end

end A353881.P10713133177848298606

/-! ## A353881.P11231757629699379904

`A353892(n)+A308276(A000079(n))`
-/

namespace A353881.P11231757629699379904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353892 n + A308276 (A000079 n).toNat

end

end A353881.P11231757629699379904

/-!
# A353882: Expansion of e.g.f. 1/(1 - (x * log(1-x))^4 / 576).

The programs for A353882, there is no canonical definition to state claims against.
-/

/-! ## A353882.P6544033512722559300

`A353893(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A353882.P6544033512722559300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353893 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A353882.P6544033512722559300

/-! ## A353882.P372467731077855512

`A353893(n^A043568(n))`
-/

namespace A353882.P372467731077855512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353893 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A043568 n : ℤ))).toNat

end

end A353882.P372467731077855512

/-! ## A353882.P17775003853692266436

`A353893(n)^A016754(∑{digits}[n, val(#+1, 7)])`
-/

namespace A353882.P17775003853692266436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353893 n : ℚ) ^ (A016754 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 7).sum : ℤ)

end

end A353882.P17775003853692266436

/-! ## A353882.P16755094819279431473

`A344970(A011782(n))*A353893(n)`
-/

namespace A353882.P16755094819279431473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344970 (A011782 n).toNat * A353893 n

end

end A353882.P16755094819279431473

/-! ## A353882.P10904344640452151570

`A227339(A141523(n))*A353893(n)`
-/

namespace A353882.P10904344640452151570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227339 (A141523 n).toNat * A353893 n

end

end A353882.P10904344640452151570

/-!
# A353883: Expansion of e.g.f. 1/(1 - (x * (exp(x) - 1))^2 / 4).

The programs for A353883, there is no canonical definition to state claims against.
-/

/-! ## A353883.P13631651836652191226

`A154454(A353894(n))`
-/

namespace A353883.P13631651836652191226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154454 (A353894 n).toNat

end

end A353883.P13631651836652191226

/-! ## A353883.P9249591967244682394

`A353894(A004880(n+1))`
-/

namespace A353883.P9249591967244682394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353894 (A004880 (n + 1)).toNat

end

end A353883.P9249591967244682394

/-! ## A353883.P13775148628592322570

`A014682(A392827(n))/2`
-/

namespace A353883.P13775148628592322570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014682 (A392827 n).toNat : ℚ) / 2

end

end A353883.P13775148628592322570

/-! ## A353883.P6101523891647457224

`A002266(5*A353894(n))`
-/

namespace A353883.P6101523891647457224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (5 * A353894 n).toNat

end

end A353883.P6101523891647457224

/-!
# A353884: Expansion of e.g.f. 1/(1 - (x * (exp(x) - 1))^3 / 36).

The programs for A353884, there is no canonical definition to state claims against.
-/

/-! ## A353884.P6801945276626707305

`A353895(n^(char[∑[and(3, n)+12]]+1))`
-/

namespace A353884.P6801945276626707305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353895 (n ^ ((if ∃ j, f1 j = n then 1 else 0) + 1))

end

end A353884.P6801945276626707305

/-! ## A353884.P12209328018690594875

`A353895(A115009(∑[n]))`
-/

namespace A353884.P12209328018690594875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353895 (A115009 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353884.P12209328018690594875

/-! ## A353884.P14774488954037386846

`A353895(A324662(∑[n]))`
-/

namespace A353884.P14774488954037386846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353895 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353884.P14774488954037386846

/-! ## A353884.P12861643279286579995

`A353895(n*A061674(n)²)`
-/

namespace A353884.P12861643279286579995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353895 ((n : ℤ) * A061674 n ^ 2).toNat

end

end A353884.P12861643279286579995

/-! ## A353884.P14001358302780857013

`A353895(n)%A038664(∑[n+3])`
-/

namespace A353884.P14001358302780857013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353895 n) (A038664 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A353884.P14001358302780857013

/-!
# A353885: Expansion of e.g.f. 1/(1 - (x * (exp(x) - 1))^4 / 576).

The programs for A353885, there is no canonical definition to state claims against.
-/

/-! ## A353885.P1788050069543926346

`A353896(n)^C(or(8, n), n)`
-/

namespace A353885.P1788050069543926346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353896 n ^ Nat.choose (Nat.lor 8 n) n

end

end A353885.P1788050069543926346

/-! ## A353885.P6552809437337819121

`A353896(a(floor(n/2))+n)` with `a(0)=1`
-/

namespace A353885.P6552809437337819121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353896 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat

end

end A353885.P6552809437337819121

/-! ## A353885.P14738161387747393172

`A353896(xor(n, a(floor(n/2))))` with `a(0)=1, a(1)=0`
-/

namespace A353885.P14738161387747393172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A353896 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 2⌋.toNat)).toNat

end

end A353885.P14738161387747393172

/-! ## A353885.P16536399741092247898

`A353896(n^A185328(n))`
-/

namespace A353885.P16536399741092247898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353896 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A185328 n : ℤ))).toNat

end

end A353885.P16536399741092247898

/-! ## A353885.P3928228604800446333

`A353896(n)%A059118(n+1)`
-/

namespace A353885.P3928228604800446333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353896 n) (A059118 (n + 1))

end

end A353885.P3928228604800446333

/-!
# A353886: Nonnegative numbers k such that k^2 + k + 1 is squarefree.

The programs for A353886, the canonical program `A353886.P5475911567096865001` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353886 has offset 1).

The definition of A353886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353886.P5475911567096865001

`comp[A351121(n+1)-1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353886

/-- `comp[A351121(n+1)-1]` -/
def P5475911567096865001.Spec : Prop :=
  ∀ n, (P5475911567096865001.a n : ℤ) = A353886 (n + 1)

theorem P5475911567096865001.correct : P5475911567096865001.Spec := by
  intro n
  simp only [A353886, Nat.add_sub_cancel]

end A353886

/-! ## A353886.P6252101901699285194

`eq[1, A347442(A278251(n+1))]`
-/

namespace A353886.P6252101901699285194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347442 (A278251 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353886.P6252101901699285194

namespace A353886

/-- `eq[1, A347442(A278251(n+1))]` -/
def P6252101901699285194.Spec : Prop :=
  ∀ n, (P6252101901699285194.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P14268061803652368614

`eq[1, ∏{e}[n²+n+1, #]]`
-/

namespace A353886.P14268061803652368614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353886.P14268061803652368614

namespace A353886

/-- `eq[1, ∏{e}[n²+n+1, #]]` -/
def P14268061803652368614.Spec : Prop :=
  ∀ n, (P14268061803652368614.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P18305122248788006431

`lt[∏{e}[n²+n+1, #], 2]`
-/

namespace A353886.P18305122248788006431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A353886.P18305122248788006431

namespace A353886

/-- `lt[∏{e}[n²+n+1, #], 2]` -/
def P18305122248788006431.Spec : Prop :=
  ∀ n, (P18305122248788006431.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P17069994665325278631

`eq[1, A008833((n+1)²-n)]`
-/

namespace A353886.P17069994665325278631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 ((n + 1) ^ 2 - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353886.P17069994665325278631

namespace A353886

/-- `eq[1, A008833((n+1)²-n)]` -/
def P17069994665325278631.Spec : Prop :=
  ∀ n, (P17069994665325278631.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P10715302042479880107

`eq[1, A008966(A002061(n+1))]`
-/

namespace A353886.P10715302042479880107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A002061 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353886.P10715302042479880107

namespace A353886

/-- `eq[1, A008966(A002061(n+1))]` -/
def P10715302042479880107.Spec : Prop :=
  ∀ n, (P10715302042479880107.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P2782783696628111453

`eq[1, A298735(n²+n+1)]`
-/

namespace A353886.P2782783696628111453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (n ^ 2 + n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353886.P2782783696628111453

namespace A353886

/-- `eq[1, A298735(n²+n+1)]` -/
def P2782783696628111453.Spec : Prop :=
  ∀ n, (P2782783696628111453.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P6547462100960620127

`lt[A078771(n²+1+n), 1]`
-/

namespace A353886.P6547462100960620127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078771 (n ^ 2 + 1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353886.P6547462100960620127

namespace A353886

/-- `lt[A078771(n²+1+n), 1]` -/
def P6547462100960620127.Spec : Prop :=
  ∀ n, (P6547462100960620127.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P10100087271309611470

`lt[A336551(n²+n+1), 1]`
-/

namespace A353886.P10100087271309611470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n ^ 2 + (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353886.P10100087271309611470

namespace A353886

/-- `lt[A336551(n²+n+1), 1]` -/
def P10100087271309611470.Spec : Prop :=
  ∀ n, (P10100087271309611470.a n : ℤ) = A353886 (n + 1)

end A353886

/-! ## A353886.P15975813451825071994

`A053188(A353887(n+1))`
-/

namespace A353886.P15975813451825071994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A353887 (n + 1)).toNat

end

end A353886.P15975813451825071994

namespace A353886

/-- `A053188(A353887(n+1))` -/
def P15975813451825071994.Spec : Prop :=
  ∀ n, P15975813451825071994.a n = A353886 (n + 1)

end A353886

/-!
# A353887: Squarefree numbers of the form k^2 + k + 1 for some k >= 0.

The programs for A353887, the canonical program `A353887.P13676733746258180591` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353887 has offset 1).

The definition of A353887 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353886, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353887.P13676733746258180591

`A002061(1+A353886(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353887

/-- `A002061(1+A353886(n+1))` -/
def P13676733746258180591.Spec : Prop :=
  ∀ n, P13676733746258180591.a n = A353887 (n + 1)

theorem P13676733746258180591.correct : P13676733746258180591.Spec := by
  intro n
  simp only [A353887, Nat.add_sub_cancel]

end A353887

/-! ## A353887.P4572271198729483255

`record[∏{p}[n²+n+1, #]]`
-/

namespace A353887.P4572271198729483255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353887.P4572271198729483255

namespace A353887

/-- `record[∏{p}[n²+n+1, #]]` -/
def P4572271198729483255.Spec : Prop :=
  ∀ n, (P4572271198729483255.a n : ℤ) = A353887 (n + 1)

end A353887

/-! ## A353887.P6803344598929934780

`record[A007913(n²+n+1)]`
-/

namespace A353887.P6803344598929934780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353887.P6803344598929934780

namespace A353887

/-- `record[A007913(n²+n+1)]` -/
def P6803344598929934780.Spec : Prop :=
  ∀ n, P6803344598929934780.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P6411251899197457198

`record[A007947(n²+n+1)]`
-/

namespace A353887.P6411251899197457198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n ^ 2 + n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353887.P6411251899197457198

namespace A353887

/-- `record[A007947(n²+n+1)]` -/
def P6411251899197457198.Spec : Prop :=
  ∀ n, P6411251899197457198.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P1658420000961397132

`filter[A002061(n+1), A008966(#)]`
-/

namespace A353887.P1658420000961397132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A353887.P1658420000961397132

namespace A353887

/-- `filter[A002061(n+1), A008966(#)]` -/
def P1658420000961397132.Spec : Prop :=
  ∀ n, P1658420000961397132.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P5980876444763835177

`filter[A002061(n+1), A359590(#)]`
-/

namespace A353887.P5980876444763835177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A353887.P5980876444763835177

namespace A353887

/-- `filter[A002061(n+1), A359590(#)]` -/
def P5980876444763835177.Spec : Prop :=
  ∀ n, P5980876444763835177.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P6927295157940163733

`filter[A002061(n+1), A359592(#)]`
-/

namespace A353887.P6927295157940163733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A353887.P6927295157940163733

namespace A353887

/-- `filter[A002061(n+1), A359592(#)]` -/
def P6927295157940163733.Spec : Prop :=
  ∀ n, P6927295157940163733.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P12162405158272276428

`filter[A002061(n+1), A359834(#)]`
-/

namespace A353887.P12162405158272276428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A353887.P12162405158272276428

namespace A353887

/-- `filter[A002061(n+1), A359834(#)]` -/
def P12162405158272276428.Spec : Prop :=
  ∀ n, P12162405158272276428.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P14761702844466259795

`filter[A004652(n+2), A008966(#)]`
-/

namespace A353887.P14761702844466259795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A353887.P14761702844466259795

namespace A353887

/-- `filter[A004652(n+2), A008966(#)]` -/
def P14761702844466259795.Spec : Prop :=
  ∀ n, P14761702844466259795.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P11559358172809423554

`filter[A152032(2*n), A008966(#)]`
-/

namespace A353887.P11559358172809423554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A353887.P11559358172809423554

namespace A353887

/-- `filter[A152032(2*n), A008966(#)]` -/
def P11559358172809423554.Spec : Prop :=
  ∀ n, P11559358172809423554.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P16355532278307648582

`filter[A152032(2*n), A359590(#)]`
-/

namespace A353887.P16355532278307648582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A353887.P16355532278307648582

namespace A353887

/-- `filter[A152032(2*n), A359590(#)]` -/
def P16355532278307648582.Spec : Prop :=
  ∀ n, P16355532278307648582.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P8237071874793058327

`filter[A152032(2*n), A359592(#)]`
-/

namespace A353887.P8237071874793058327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A353887.P8237071874793058327

namespace A353887

/-- `filter[A152032(2*n), A359592(#)]` -/
def P8237071874793058327.Spec : Prop :=
  ∀ n, P8237071874793058327.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P1641498839714248465

`filter[A152032(2*n), A359834(#)]`
-/

namespace A353887.P1641498839714248465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A353887.P1641498839714248465

namespace A353887

/-- `filter[A152032(2*n), A359834(#)]` -/
def P1641498839714248465.Spec : Prop :=
  ∀ n, P1641498839714248465.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P3378648648058952045

`∩[A034021(n+1), A130404(n+1)]`
-/

namespace A353887.P3378648648058952045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353887.P3378648648058952045

namespace A353887

/-- `∩[A034021(n+1), A130404(n+1)]` -/
def P3378648648058952045.Spec : Prop :=
  ∀ n, (P3378648648058952045.a n : ℤ) = A353887 (n + 1)

end A353887

/-! ## A353887.P13898147703635812015

`filter[A008811(n), A323239(#)]`
-/

namespace A353887.P13898147703635812015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A353887.P13898147703635812015

namespace A353887

/-- `filter[A008811(n), A323239(#)]` -/
def P13898147703635812015.Spec : Prop :=
  ∀ n, P13898147703635812015.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P7178903490983917149

`filter[A008819(n), A323239(#)]`
-/

namespace A353887.P7178903490983917149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A353887.P7178903490983917149

namespace A353887

/-- `filter[A008819(n), A323239(#)]` -/
def P7178903490983917149.Spec : Prop :=
  ∀ n, P7178903490983917149.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P8340712577677773436

`filter[A181385(n), A323239(#)]`
-/

namespace A353887.P8340712577677773436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A353887.P8340712577677773436

namespace A353887

/-- `filter[A181385(n), A323239(#)]` -/
def P8340712577677773436.Spec : Prop :=
  ∀ n, P8340712577677773436.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P17134372424038533702

`filter[A002061(n+1), A323154(#)]`
-/

namespace A353887.P17134372424038533702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A353887.P17134372424038533702

namespace A353887

/-- `filter[A002061(n+1), A323154(#)]` -/
def P17134372424038533702.Spec : Prop :=
  ∀ n, P17134372424038533702.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P3824570877662866342

`filter[A002061(n+1), A323239(#)]`
-/

namespace A353887.P3824570877662866342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A353887.P3824570877662866342

namespace A353887

/-- `filter[A002061(n+1), A323239(#)]` -/
def P3824570877662866342.Spec : Prop :=
  ∀ n, P3824570877662866342.a n = A353887 (n + 1)

end A353887

/-! ## A353887.P7353694664896725481

`filter[A002061(n+1), A353519(#)]`
-/

namespace A353887.P7353694664896725481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A353887.P7353694664896725481

namespace A353887

/-- `filter[A002061(n+1), A353519(#)]` -/
def P7353694664896725481.Spec : Prop :=
  ∀ n, P7353694664896725481.a n = A353887 (n + 1)

end A353887

/-!
# A353888: a(n) is the least positive integer not occurring earlier in the sequence that contains at least one digit not in a(n-1); a(1)=1.

The programs for A353888, there is no canonical definition to state claims against.
-/

/-! ## A353888.P9354596899723068152

`A239086(A130572(n+1))`
-/

namespace A353888.P9354596899723068152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (A130572 (n + 1)).toNat

end

end A353888.P9354596899723068152

/-!
# A353897: a(n) is the largest divisor of n whose exponents in its prime factorization are all powers of 2 (A138302).

The programs for A353897, there is no canonical definition to state claims against.
-/

/-! ## A353897.P14874183116224816682

`A356194(∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])`
-/

namespace A353897.P14874183116224816682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356194 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A353897.P14874183116224816682

/-! ## A353897.P12431690816842367221

`A356194(A355261(n+1))`
-/

namespace A353897.P12431690816842367221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356194 (A355261 (n + 1)).toNat

end

end A353897.P12431690816842367221

/-! ## A353897.P6176025272986610461

`A356194(A066990(n+1)*A295657(n+1))`
-/

namespace A353897.P6176025272986610461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356194 (A066990 (n + 1) * A295657 (n + 1)).toNat

end

end A353897.P6176025272986610461

/-! ## A353897.P6838655644570248837

`A356194(A356191(n+1)/A000188(n+1))`
-/

namespace A353897.P6838655644570248837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356194 (SequenceMachineLib.roundAway ((A356191 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A353897.P6838655644570248837

/-! ## A353897.P15263346473326131970

`A019554(A372329(n+1))`
-/

namespace A353897.P15263346473326131970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A372329 (n + 1)).toNat

end

end A353897.P15263346473326131970

/-! ## A353897.P7965360845801780915

`A007948(n+1)*A007948(A008835(n+1)²)`
-/

namespace A353897.P7965360845801780915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) * A007948 (A008835 (n + 1) ^ 2).toNat

end

end A353897.P7965360845801780915

/-! ## A353897.P8130937638329714356

`and(A366905(n+1), A381707(n+1))`
-/

namespace A353897.P8130937638329714356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A366905 (n + 1)) (A381707 (n + 1))

end

end A353897.P8130937638329714356

/-! ## A353897.P12078644771636416485

`gcd(n+1, A015053((n+1)*A008834(n+1))²)`
-/

namespace A353897.P12078644771636416485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A015053 ((n + 1 : ℤ) * A008834 (n + 1)).toNat ^ 2)

end

end A353897.P12078644771636416485

/-! ## A353897.P11905725421242552077

`and(A086827(n+1), A366905(n+1))`
-/

namespace A353897.P11905725421242552077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A366905 (n + 1))

end

end A353897.P11905725421242552077

/-! ## A353897.P9808123794108958225

`A015053(A057521(n+1)²)*A019555(n+1)`
-/

namespace A353897.P9808123794108958225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A057521 (n + 1) ^ 2).toNat * A019555 (n + 1)

end

end A353897.P9808123794108958225

/-! ## A353897.P6196340063432479986

`A366905(n+1)+A165560(n²)`
-/

namespace A353897.P6196340063432479986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366905 (n + 1) + A165560 (n ^ 2)

end

end A353897.P6196340063432479986

/-! ## A353897.P8521660420151182232

`gcd(n+1, A015053((n+1)²)²)`
-/

namespace A353897.P8521660420151182232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A015053 ((n + 1) ^ 2) ^ 2)

end

end A353897.P8521660420151182232

/-! ## A353897.P11151864226736775369

`A356194(A019555((n+1)²))`
-/

namespace A353897.P11151864226736775369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356194 (A019555 ((n + 1) ^ 2)).toNat

end

end A353897.P11151864226736775369

/-! ## A353897.P6558369668961776539

`lcm(A008835(n+1), A019554((n+1)*∏{p}[n+1, #]))`
-/

namespace A353897.P6558369668961776539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008835 (n + 1)) (A019554 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p)))

end

end A353897.P6558369668961776539

/-! ## A353897.P11007086276212329527

`A000189(n+1)*A048798(lcm(1-(4/2+n), ∏{p}[n+1, #²]))`
-/

namespace A353897.P11007086276212329527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (n + 1) * A048798 (Int.lcm (SequenceMachineLib.roundAway (1 - ((4 : ℚ) / 2 + (n : ℚ)))) ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ))

end

end A353897.P11007086276212329527

/-! ## A353897.P2110459933788212283

`A000190(n+1)*A015052(A048798(n+1))`
-/

namespace A353897.P2110459933788212283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1) * A015052 (A048798 (n + 1)).toNat

end

end A353897.P2110459933788212283

/-! ## A353897.P9119285838818553288

`A000189(A048798(n+1)*A057521(n+1))`
-/

namespace A353897.P9119285838818553288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A048798 (n + 1) * A057521 (n + 1)).toNat

end

end A353897.P9119285838818553288

/-! ## A353897.P6042442988017913458

`A000190(n+1)*A056552(A159253(n+1))`
-/

namespace A353897.P6042442988017913458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (n + 1) * A056552 (A159253 (n + 1)).toNat

end

end A353897.P6042442988017913458

/-! ## A353897.P4477396985746762194

`lcm(A008835(n+1), A019554(A064549(n+1)))`
-/

namespace A353897.P4477396985746762194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008835 (n + 1)) (A019554 (A064549 (n + 1)).toNat)

end

end A353897.P4477396985746762194

/-!
# A353898: a(n) is the number of divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

The programs for A353898, the canonical program `A353898.P9652589498491851610` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353898 has offset 1).

The definition of A353898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353898.P9652589498491851610

`∏{e}[n+1, floor(log2(#))+2]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353898

/-- `∏{e}[n+1, floor(log2(#))+2]` -/
def P9652589498491851610.Spec : Prop :=
  ∀ n, (P9652589498491851610.a n : ℤ) = A353898 (n + 1)

theorem P9652589498491851610.correct : P9652589498491851610.Spec := by
  intro n
  simp only [A353898, Nat.add_sub_cancel]

end A353898

/-! ## A353898.P1749749624356961334

`∑{d}[n+1, A355823(#)]`
-/

namespace A353898.P1749749624356961334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355823 d

end

end A353898.P1749749624356961334

namespace A353898

/-- `∑{d}[n+1, A355823(#)]` -/
def P1749749624356961334.Spec : Prop :=
  ∀ n, P1749749624356961334.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P4860078739613992615

`A049599(A353897(n+1))`
-/

namespace A353898.P4860078739613992615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A353897 (n + 1)).toNat

end

end A353898.P4860078739613992615

namespace A353898

/-- `A049599(A353897(n+1))` -/
def P4860078739613992615.Spec : Prop :=
  ∀ n, P4860078739613992615.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P9011904163128312478

`A000027(∏{e}[n+1, A070941(#)])`
-/

namespace A353898.P9011904163128312478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), A070941 (Nat.factorization (f1 n) p)).toNat

end

end A353898.P9011904163128312478

namespace A353898

/-- `A000027(∏{e}[n+1, A070941(#)])` -/
def P9011904163128312478.Spec : Prop :=
  ∀ n, P9011904163128312478.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P5238624022406244574

`A106618(∏{e}[n+1, A070939(#)+1])`
-/

namespace A353898.P5238624022406244574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (∏ p ∈ Nat.primeFactors (f1 n), (A070939 (Nat.factorization (f1 n) p) + 1)).toNat

end

end A353898.P5238624022406244574

namespace A353898

/-- `A106618(∏{e}[n+1, A070939(#)+1])` -/
def P5238624022406244574.Spec : Prop :=
  ∀ n, P5238624022406244574.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P2104007210734702751

`∑{d}[n+1, A023900(#)*A385139((n+1)/#)]`
-/

namespace A353898.P2104007210734702751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A385139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A353898.P2104007210734702751

namespace A353898

/-- `∑{d}[n+1, A023900(#)*A385139((n+1)/#)]` -/
def P2104007210734702751.Spec : Prop :=
  ∀ n, P2104007210734702751.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P949830780534616674

`A138011(A372329(n+1))`
-/

namespace A353898.P949830780534616674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138011 (A372329 (n + 1)).toNat

end

end A353898.P949830780534616674

namespace A353898

/-- `A138011(A372329(n+1))` -/
def P949830780534616674.Spec : Prop :=
  ∀ n, P949830780534616674.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P14844733743960298299

`A372380(A102631(n+1))`
-/

namespace A353898.P14844733743960298299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A102631 (n + 1)).toNat

end

end A353898.P14844733743960298299

namespace A353898

/-- `A372380(A102631(n+1))` -/
def P14844733743960298299.Spec : Prop :=
  ∀ n, P14844733743960298299.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P17120338934083147409

`∑{d}[A102631(n+1), A000007(A348271(#))]`
-/

namespace A353898.P17120338934083147409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000007 (A348271 d).toNat

end

end A353898.P17120338934083147409

namespace A353898

/-- `∑{d}[A102631(n+1), A000007(A348271(#))]` -/
def P17120338934083147409.Spec : Prop :=
  ∀ n, P17120338934083147409.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P15893096494545118442

`A372380(A342768(n+1))`
-/

namespace A353898.P15893096494545118442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A342768 (n + 1)).toNat

end

end A353898.P15893096494545118442

namespace A353898

/-- `A372380(A342768(n+1))` -/
def P15893096494545118442.Spec : Prop :=
  ∀ n, P15893096494545118442.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P11621829351483057785

`and(A366901(n+1), A381707(n+1))`
-/

namespace A353898.P11621829351483057785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A366901 (n + 1)) (A381707 (n + 1))

end

end A353898.P11621829351483057785

namespace A353898

/-- `and(A366901(n+1), A381707(n+1))` -/
def P11621829351483057785.Spec : Prop :=
  ∀ n, P11621829351483057785.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P14367752504380042646

`A372380(A278254(n+1))`
-/

namespace A353898.P14367752504380042646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A278254 (n + 1)).toNat

end

end A353898.P14367752504380042646

namespace A353898

/-- `A372380(A278254(n+1))` -/
def P14367752504380042646.Spec : Prop :=
  ∀ n, P14367752504380042646.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P6260830446238329738

`and(A086827(n+1), A366901(n+1))`
-/

namespace A353898.P6260830446238329738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A366901 (n + 1))

end

end A353898.P6260830446238329738

namespace A353898

/-- `and(A086827(n+1), A366901(n+1))` -/
def P6260830446238329738.Spec : Prop :=
  ∀ n, P6260830446238329738.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P5291259095152577719

`gcd(A067994(n), A366901(n+1))`
-/

namespace A353898.P5291259095152577719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067994 n) (A366901 (n + 1))

end

end A353898.P5291259095152577719

namespace A353898

/-- `gcd(A067994(n), A366901(n+1))` -/
def P5291259095152577719.Spec : Prop :=
  ∀ n, (P5291259095152577719.a n : ℤ) = A353898 (n + 1)

end A353898

/-! ## A353898.P9425860293873368840

`A372380(A140651(n+1))`
-/

namespace A353898.P9425860293873368840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A140651 (n + 1)).toNat

end

end A353898.P9425860293873368840

namespace A353898

/-- `A372380(A140651(n+1))` -/
def P9425860293873368840.Spec : Prop :=
  ∀ n, P9425860293873368840.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P656858434465201385

`A372380(A170826(n+1))`
-/

namespace A353898.P656858434465201385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A170826 (n + 1)).toNat

end

end A353898.P656858434465201385

namespace A353898

/-- `A372380(A170826(n+1))` -/
def P656858434465201385.Spec : Prop :=
  ∀ n, P656858434465201385.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P8300944193532506897

`A372380(A326578(n+1))`
-/

namespace A353898.P8300944193532506897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A326578 (n + 1)).toNat

end

end A353898.P8300944193532506897

namespace A353898

/-- `A372380(A326578(n+1))` -/
def P8300944193532506897.Spec : Prop :=
  ∀ n, P8300944193532506897.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P4241620512866767761

`A372380(A103390(n+2))`
-/

namespace A353898.P4241620512866767761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A103390 (n + 2)).toNat

end

end A353898.P4241620512866767761

namespace A353898

/-- `A372380(A103390(n+2))` -/
def P4241620512866767761.Spec : Prop :=
  ∀ n, P4241620512866767761.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P12875007605561449558

`A372380((n+1)²)`
-/

namespace A353898.P12875007605561449558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 ((n + 1) ^ 2)

end

end A353898.P12875007605561449558

namespace A353898

/-- `A372380((n+1)²)` -/
def P12875007605561449558.Spec : Prop :=
  ∀ n, P12875007605561449558.a n = A353898 (n + 1)

end A353898

/-! ## A353898.P12994068739961351586

`A049419((∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²)`
-/

namespace A353898.P12994068739961351586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p)) ^ 2)

end

end A353898.P12994068739961351586

namespace A353898

/-- `A049419((∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #])²)` -/
def P12994068739961351586.Spec : Prop :=
  ∀ n, P12994068739961351586.a n = A353898 (n + 1)

end A353898

