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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
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
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A140700: a(n) = n*A069158(n).

The programs for A140700, the canonical program `A140700.P15054236554757068483` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140700 has offset 1).

The definition of A140700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140700.P15054236554757068483

`(n+1)*A069158(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140700

/-- `(n+1)*A069158(n+1)` -/
def P15054236554757068483.Spec : Prop :=
  ∀ n, P15054236554757068483.a n = A140700 (n + 1)

theorem P15054236554757068483.correct : P15054236554757068483.Spec := by
  intro n
  simp only [A140700, Nat.add_sub_cancel]

end A140700

/-! ## A140700.P17145953153582534479

`∏{d}[n+1, A140664(#)]`
-/

namespace A140700.P17145953153582534479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A140664 d

end

end A140700.P17145953153582534479

namespace A140700

/-- `∏{d}[n+1, A140664(#)]` -/
def P17145953153582534479.Spec : Prop :=
  ∀ n, P17145953153582534479.a n = A140700 (n + 1)

end A140700

/-! ## A140700.P145006469115568327

`(n+1)*∏{d}[n+1, A008683(#)]`
-/

namespace A140700.P145006469115568327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A008683 d)

end

end A140700.P145006469115568327

namespace A140700

/-- `(n+1)*∏{d}[n+1, A008683(#)]` -/
def P145006469115568327.Spec : Prop :=
  ∀ n, P145006469115568327.a n = A140700 (n + 1)

end A140700

/-! ## A140700.P1383735134861574169

`∏{p}[n+1, -#]*A008683(n*∏{p}[n+1, C(#%n, #)]+1)`
-/

namespace A140700.P1383735134861574169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))) * A008683 (n * (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p) + 1)

end

end A140700.P1383735134861574169

namespace A140700

/-- `∏{p}[n+1, -#]*A008683(n*∏{p}[n+1, C(#%n, #)]+1)` -/
def P1383735134861574169.Spec : Prop :=
  ∀ n, P1383735134861574169.a n = A140700 (n + 1)

end A140700

/-! ## A140700.P3864367859545622527

`A190902(n+1)%A060798(n+1)`
-/

namespace A140700.P3864367859545622527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190902 (n + 1)) (A060798 (n + 1))

end

end A140700.P3864367859545622527

namespace A140700

/-- `A190902(n+1)%A060798(n+1)` -/
def P3864367859545622527.Spec : Prop :=
  ∀ n, P3864367859545622527.a n = A140700 (n + 1)

end A140700

/-! ## A140700.P16393620684796456839

`(n+1)*A008683(A076078(n+1))`
-/

namespace A140700.P16393620684796456839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (A076078 (n + 1)).toNat

end

end A140700.P16393620684796456839

namespace A140700

/-- `(n+1)*A008683(A076078(n+1))` -/
def P16393620684796456839.Spec : Prop :=
  ∀ n, P16393620684796456839.a n = A140700 (n + 1)

end A140700

/-!
# A140701: Partial products of A005448.

The programs for A140701, there is no canonical definition to state claims against.
-/

/-! ## A140701.P7498780779282427176

`∏[3*C(n, 2)+1]`
-/

namespace A140701.P7498780779282427176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose n 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140701.P7498780779282427176

/-! ## A140701.P12347761730279170410

`∏[∑[n]+(1-n)²]`
-/

namespace A140701.P12347761730279170410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140701.P12347761730279170410

/-! ## A140701.P12438857320714959503

`abs(∏[∑[a(n-1)+3]])` with `a(0)=1, a(1)=0`
-/

namespace A140701.P12438857320714959503
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A140701.P12438857320714959503

/-! ## A140701.P4861457657112393373

`abs(∏[Δ[n-(2-n)*C(n, 2)]])`
-/

namespace A140701.P4861457657112393373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 - (n : ℤ)) * (Nat.choose n 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A140701.P4861457657112393373

/-! ## A140701.P10321657060709889248

`(3*C(n, 2)+1)*a(n-1)` with `a(0)=1`
-/

namespace A140701.P10321657060709889248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * Nat.choose n 2 + 1) * a (n - 1)

end

end A140701.P10321657060709889248

/-!
# A140702: Main diagonal of array A(k,n) = product of first n centered n-gonal numbers.

The programs for A140702, there is no canonical definition to state claims against.
-/

/-! ## A140702.P9225861597743522639

`(n+4)*A257132(n+3)`
-/

namespace A140702.P9225861597743522639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A257132 (n + 3)

end

end A140702.P9225861597743522639

/-!
# A140703: A000012 * A051731^3.

The programs for A140703, the canonical program `A140703.P2993075249473134701` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140703 has offset 1).

The definition of A140703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140703.P6214970650672518262

`A061201(A010766(n+1))`
-/

namespace A140703.P6214970650672518262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061201 (A010766 (n + 1)).toNat

end

end A140703.P6214970650672518262

namespace A140703

/-- `A061201(A010766(n+1))` -/
def P6214970650672518262.Spec : Prop :=
  ∀ n, P6214970650672518262.a n = A140703 (n + 1)

end A140703

/-! ## A140703.P2993075249473134701

`A061201(ceil(ratio[A074909(n)]))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A140703

/-- `A061201(ceil(ratio[A074909(n)]))` -/
def P2993075249473134701.Spec : Prop :=
  ∀ n, P2993075249473134701.a n = A140703 (n + 1)

theorem P2993075249473134701.correct : P2993075249473134701.Spec := by
  intro n
  simp only [A140703, Nat.add_sub_cancel]

end A140703

/-! ## A140703.P17715270472576084290

`A356045(A128489(n+1))`
-/

namespace A140703.P17715270472576084290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356045 (A128489 (n + 1)).toNat

end

end A140703.P17715270472576084290

namespace A140703

/-- `A356045(A128489(n+1))` -/
def P17715270472576084290.Spec : Prop :=
  ∀ n, P17715270472576084290.a n = A140703 (n + 1)

end A140703

/-! ## A140703.P15078961988244904250

`A103297(A140705(n+1))`
-/

namespace A140703.P15078961988244904250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 (A140705 (n + 1)).toNat

end

end A140703.P15078961988244904250

namespace A140703

/-- `A103297(A140705(n+1))` -/
def P15078961988244904250.Spec : Prop :=
  ∀ n, P15078961988244904250.a n = A140703 (n + 1)

end A140703

/-!
# A140704: A051731^3 * A000012.

The programs for A140704, there is no canonical definition to state claims against.
-/

/-! ## A140704.P6889551679347658068

`A319710(A104545(n))+A135539(n+1)²`
-/

namespace A140704.P6889551679347658068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319710 (A104545 n).toNat + A135539 (n + 1) ^ 2

end

end A140704.P6889551679347658068

/-! ## A140704.P15445189657677358243

`A028949(A127172(n+1)!)`
-/

namespace A140704.P15445189657677358243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028949 (Nat.factorial (A127172 (n + 1)).toNat)

end

end A140704.P15445189657677358243

/-! ## A140704.P12131773843482253582

`A139490(A135539(n+1)!)`
-/

namespace A140704.P12131773843482253582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139490 (Nat.factorial (A135539 (n + 1)).toNat)

end

end A140704.P12131773843482253582

/-! ## A140704.P6480799718208233510

`A000292(A135539(n+1)%A075978(n))`
-/

namespace A140704.P6480799718208233510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod (A135539 (n + 1)) (A075978 n)).toNat

end

end A140704.P6480799718208233510

/-! ## A140704.P14512393139127156887

`A000292(A135539(n+1)^A117816(n+1))`
-/

namespace A140704.P14512393139127156887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (SequenceMachineLib.roundAway ((A135539 (n + 1) : ℚ) ^ (A117816 (n + 1) : ℤ))).toNat

end

end A140704.P14512393139127156887

/-!
# A140705: A000012 * A051731^4.

The programs for A140705, the canonical program `A140705.P9027791330258946632` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140705 has offset 1).

The definition of A140705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140705.P9027791330258946632

`A061202(A010766(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A140705

/-- `A061202(A010766(n+1))` -/
def P9027791330258946632.Spec : Prop :=
  ∀ n, P9027791330258946632.a n = A140705 (n + 1)

theorem P9027791330258946632.correct : P9027791330258946632.Spec := by
  intro n
  simp only [A140705, Nat.add_sub_cancel]

end A140705

/-!
# A140706: A054525 * A014683; a(n) = Sum_{d|n} mu(d)*A014683(n/d).

The programs for A140706, the canonical program `A140706.P14405807002235164558` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140706 has offset 1).

The definition of A140706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140706.P14405807002235164558

`∑{d}[n+1, A008683(#)*A014683((n+1)/#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140706

/-- `∑{d}[n+1, A008683(#)*A014683((n+1)/#)]` -/
def P14405807002235164558.Spec : Prop :=
  ∀ n, P14405807002235164558.a n = A140706 (n + 1)

theorem P14405807002235164558.correct : P14405807002235164558.Spec := by
  intro n
  simp only [A140706, Nat.add_sub_cancel]

end A140706

/-! ## A140706.P6727605883007889005

`A143519(n+1)+Δ[A002088(n)]`
-/

namespace A140706.P6727605883007889005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1) + (f1 (n + 1) - f1 n)

end

end A140706.P6727605883007889005

namespace A140706

/-- `A143519(n+1)+Δ[A002088(n)]` -/
def P6727605883007889005.Spec : Prop :=
  ∀ n, P6727605883007889005.a n = A140706 (n + 1)

end A140706

/-! ## A140706.P8900870185607537536

`A143519(n+1)+Δ[A005728(n)]`
-/

namespace A140706.P8900870185607537536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1) + (f1 (n + 1) - f1 n)

end

end A140706.P8900870185607537536

namespace A140706

/-- `A143519(n+1)+Δ[A005728(n)]` -/
def P8900870185607537536.Spec : Prop :=
  ∀ n, P8900870185607537536.a n = A140706 (n + 1)

end A140706

/-! ## A140706.P8550702644914427375

`A143519(n+1)+A000010(n+1)`
-/

namespace A140706.P8550702644914427375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1) + A000010 (n + 1)

end

end A140706.P8550702644914427375

namespace A140706

/-- `A143519(n+1)+A000010(n+1)` -/
def P8550702644914427375.Spec : Prop :=
  ∀ n, P8550702644914427375.a n = A140706 (n + 1)

end A140706

/-! ## A140706.P15629303669406241926

`∑{d}[n+1, A007427(#)*A380457((n+1)/#)]`
-/

namespace A140706.P15629303669406241926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A380457 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140706.P15629303669406241926

namespace A140706

/-- `∑{d}[n+1, A007427(#)*A380457((n+1)/#)]` -/
def P15629303669406241926.Spec : Prop :=
  ∀ n, P15629303669406241926.a n = A140706 (n + 1)

end A140706

/-! ## A140706.P12088810365630948410

`A143519(n+1)+A032742(A140434(n+1))`
-/

namespace A140706.P12088810365630948410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143519 (n + 1) + A032742 (A140434 (n + 1)).toNat

end

end A140706.P12088810365630948410

namespace A140706

/-- `A143519(n+1)+A032742(A140434(n+1))` -/
def P12088810365630948410.Spec : Prop :=
  ∀ n, P12088810365630948410.a n = A140706 (n + 1)

end A140706

/-! ## A140706.P3039516283506329402

`A282634(A000124(n))+A143519(n+1)`
-/

namespace A140706.P3039516283506329402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282634 (A000124 n).toNat + A143519 (n + 1)

end

end A140706.P3039516283506329402

namespace A140706

/-- `A282634(A000124(n))+A143519(n+1)` -/
def P3039516283506329402.Spec : Prop :=
  ∀ n, P3039516283506329402.a n = A140706 (n + 1)

end A140706

/-!
# A140707: A positive integer n is included if n written in binary contains the same number of 0's as the number of distinct primes that divide n.

The programs for A140707, the canonical program `A140707.P14820232210912676940` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140707 has offset 1).

The definition of A140707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140707.P17549807331596511609

`eq[A001221(n+1), A023416(n+1)]+1`
-/

namespace A140707.P17549807331596511609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140707.P17549807331596511609

namespace A140707

/-- `eq[A001221(n+1), A023416(n+1)]+1` -/
def P17549807331596511609.Spec : Prop :=
  ∀ n, (P17549807331596511609.a n : ℤ) = A140707 (n + 1)

end A140707

/-! ## A140707.P14820232210912676940

`eq[A000523(n+1), A035531(n+1)]+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140707

/-- `eq[A000523(n+1), A035531(n+1)]+1` -/
def P14820232210912676940.Spec : Prop :=
  ∀ n, (P14820232210912676940.a n : ℤ) = A140707 (n + 1)

theorem P14820232210912676940.correct : P14820232210912676940.Spec := by
  intro n
  simp only [A140707, Nat.add_sub_cancel]

end A140707

/-! ## A140707.P344949390646577254

`eq[A001221(n+1), A080791(n+1)]+1`
-/

namespace A140707.P344949390646577254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A140707.P344949390646577254

namespace A140707

/-- `eq[A001221(n+1), A080791(n+1)]+1` -/
def P344949390646577254.Spec : Prop :=
  ∀ n, (P344949390646577254.a n : ℤ) = A140707 (n + 1)

end A140707

/-! ## A140707.P721824125123763718

`eq[A001221(A028310(n)), A023416(n)]`
-/

namespace A140707.P721824125123763718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140707.P721824125123763718

namespace A140707

/-- `eq[A001221(A028310(n)), A023416(n)]` -/
def P721824125123763718.Spec : Prop :=
  ∀ n, (P721824125123763718.a n : ℤ) = A140707 (n + 1)

end A140707

/-! ## A140707.P17798162375424122627

`eq[A001221(A257088(n)), A023416(n)]`
-/

namespace A140707.P17798162375424122627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140707.P17798162375424122627

namespace A140707

/-- `eq[A001221(A257088(n)), A023416(n)]` -/
def P17798162375424122627.Spec : Prop :=
  ∀ n, (P17798162375424122627.a n : ℤ) = A140707 (n + 1)

end A140707

/-! ## A140707.P14142651020450102250

`eq[A001221(A000007(n)+n), A023416(n)]`
-/

namespace A140707.P14142651020450102250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140707.P14142651020450102250

namespace A140707

/-- `eq[A001221(A000007(n)+n), A023416(n)]` -/
def P14142651020450102250.Spec : Prop :=
  ∀ n, (P14142651020450102250.a n : ℤ) = A140707 (n + 1)

end A140707

/-!
# A140710: Number of maximal initial consecutive columns ending at the same level, summed over all deco polyominoes of height n.

The programs for A140710, the canonical program `A140710.P3631010311094467060` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140710 has offset 1).

The definition of A140710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140710.P3631010311094467060

`n!*n+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140710

/-- `n!*n+2*a(n-1)` -/
def P3631010311094467060.Spec : Prop :=
  ∀ n, (P3631010311094467060.a n : ℤ) = A140710 (n + 1)

theorem P3631010311094467060.correct : P3631010311094467060.Spec := by
  intro n
  simp only [A140710, Nat.add_sub_cancel]

end A140710

/-! ## A140710.P17464596479461680056

`∑{#}[n, (#+1)!*A011782(n-#)]`
-/

namespace A140710.P17464596479461680056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.factorial (k + 1) : ℤ) * A011782 (n - k)

end

end A140710.P17464596479461680056

namespace A140710

/-- `∑{#}[n, (#+1)!*A011782(n-#)]` -/
def P17464596479461680056.Spec : Prop :=
  ∀ n, P17464596479461680056.a n = A140710 (n + 1)

end A140710

/-! ## A140710.P17553807905345930404

`Δ[n!+2*a(n-1)]` with `a(0)=0`
-/

namespace A140710.P17553807905345930404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.factorial n + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140710.P17553807905345930404

namespace A140710

/-- `Δ[n!+2*a(n-1)]` -/
def P17553807905345930404.Spec : Prop :=
  ∀ n, P17553807905345930404.a n = A140710 (n + 1)

end A140710

/-! ## A140710.P13420271779842681588

`n*n!+2*a(n-1)` with `a(0)=1`
-/

namespace A140710.P13420271779842681588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n * Nat.factorial n + 2 * a (n - 1)

end

end A140710.P13420271779842681588

namespace A140710

/-- `n*n!+2*a(n-1)` -/
def P13420271779842681588.Spec : Prop :=
  ∀ n, (P13420271779842681588.a n : ℤ) = A140710 (n + 1)

end A140710

/-! ## A140710.P8323572243312947318

`Δ[n!+a(n-1)+a(n-1)]` with `a(0)=0`
-/

namespace A140710.P8323572243312947318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.factorial n + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140710.P8323572243312947318

namespace A140710

/-- `Δ[n!+a(n-1)+a(n-1)]` -/
def P8323572243312947318.Spec : Prop :=
  ∀ n, P8323572243312947318.a n = A140710 (n + 1)

end A140710

/-! ## A140710.P17130730010271301540

`Δ[n*a(n-1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A140710.P17130730010271301540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2 * a (n - 1)

end

end A140710.P17130730010271301540

namespace A140710

/-- `Δ[n*a(n-1)]+2*a(n-1)` -/
def P17130730010271301540.Spec : Prop :=
  ∀ n, P17130730010271301540.a n = A140710 (n + 1)

end A140710

/-! ## A140710.P7644034873151039594

`A001563(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A140710.P7644034873151039594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001563 n + 2 * a (n - 1)

end

end A140710.P7644034873151039594

namespace A140710

/-- `A001563(n)+2*a(n-1)` -/
def P7644034873151039594.Spec : Prop :=
  ∀ n, P7644034873151039594.a n = A140710 (n + 1)

end A140710

/-! ## A140710.P18301731502153415289

`2*a(n-1)+n*A000142(n)` with `a(0)=1`
-/

namespace A140710.P18301731502153415289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n : ℤ) * A000142 n

end

end A140710.P18301731502153415289

namespace A140710

/-- `2*a(n-1)+n*A000142(n)` -/
def P18301731502153415289.Spec : Prop :=
  ∀ n, P18301731502153415289.a n = A140710 (n + 1)

end A140710

/-! ## A140710.P5130505816479293120

`A123642(n+1)+A233449(n)+A000079(n)`
-/

namespace A140710.P5130505816479293120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123642 (n + 1) + (A233449 n + A000079 n)

end

end A140710.P5130505816479293120

namespace A140710

/-- `A123642(n+1)+A233449(n)+A000079(n)` -/
def P5130505816479293120.Spec : Prop :=
  ∀ n, P5130505816479293120.a n = A140710 (n + 1)

end A140710

/-! ## A140710.P4946897979175613000

`A000142(n+1)+A233449(n)-A000079(n)`
-/

namespace A140710.P4946897979175613000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + (A233449 n - A000079 n)

end

end A140710.P4946897979175613000

namespace A140710

/-- `A000142(n+1)+A233449(n)-A000079(n)` -/
def P4946897979175613000.Spec : Prop :=
  ∀ n, P4946897979175613000.a n = A140710 (n + 1)

end A140710

/-!
# A140712: Number of white corners in all permutations of {1,2,...,n} (for definition see the Eriksson-Linusson references).

The programs for A140712, the canonical program `A140712.P11615804350479913455` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140712 has offset 1).

The definition of A140712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140712.P11615804350479913455

`n!*(C(n, 3)+6*C(n+1, 2))/6`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140712

/-- `n!*(C(n, 3)+6*C(n+1, 2))/6` -/
def P11615804350479913455.Spec : Prop :=
  ∀ n, P11615804350479913455.a n = (A140712 (n + 1) : ℚ)

end A140712

/-! ## A140712.P6255426251595526727

`1/36*n*n!*((n+1)²+13*(n+1)+6)`
-/

namespace A140712.P6255426251595526727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 36 * (n : ℚ) * (Nat.factorial n : ℚ) * ((n + 1) ^ 2 + 13 * (n + 1) + 6 : ℚ)

end

end A140712.P6255426251595526727

namespace A140712

/-- `1/36*n*n!*((n+1)²+13*(n+1)+6)` -/
def P6255426251595526727.Spec : Prop :=
  ∀ n, P6255426251595526727.a n = (A140712 (n + 1) : ℚ)

end A140712

/-! ## A140712.P5378591059407183896

`((n+1)²+13*(n+1)+6)*n*n!/36`
-/

namespace A140712.P5378591059407183896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 + 13 * (n + 1) + 6) * n * Nat.factorial n : ℚ) / 36

end

end A140712.P5378591059407183896

namespace A140712

/-- `((n+1)²+13*(n+1)+6)*n*n!/36` -/
def P5378591059407183896.Spec : Prop :=
  ∀ n, P5378591059407183896.a n = (A140712 (n + 1) : ℚ)

end A140712

/-! ## A140712.P636098810870534262

`n!/6*C(n, 3)+n!*∑[n]`
-/

namespace A140712.P636098810870534262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 6 * (Nat.choose n 3 : ℚ) + ((Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ)

end

end A140712.P636098810870534262

namespace A140712

/-- `n!/6*C(n, 3)+n!*∑[n]` -/
def P636098810870534262.Spec : Prop :=
  ∀ n, P636098810870534262.a n = (A140712 (n + 1) : ℚ)

end A140712

/-! ## A140712.P16763074759212141169

`C(n, 3)²*abs(3-n)!+n!*∑[n]`
-/

namespace A140712.P16763074759212141169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3 ^ 2 * Nat.factorial |3 - (n : ℤ)|.toNat + Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140712.P16763074759212141169

namespace A140712

/-- `C(n, 3)²*abs(3-n)!+n!*∑[n]` -/
def P16763074759212141169.Spec : Prop :=
  ∀ n, (P16763074759212141169.a n : ℤ) = A140712 (n + 1)

end A140712

/-! ## A140712.P1808994788895149763

`A180119(n)+A001810(n)`
-/

namespace A140712.P1808994788895149763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180119 n + A001810 n

end

end A140712.P1808994788895149763

namespace A140712

/-- `A180119(n)+A001810(n)` -/
def P1808994788895149763.Spec : Prop :=
  ∀ n, P1808994788895149763.a n = A140712 (n + 1)

end A140712

/-! ## A140712.P2542225314168853794

`A001810(n)+A000142(n)*A000217(n)`
-/

namespace A140712.P2542225314168853794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001810 n + A000142 n * A000217 n

end

end A140712.P2542225314168853794

namespace A140712

/-- `A001810(n)+A000142(n)*A000217(n)` -/
def P2542225314168853794.Spec : Prop :=
  ∀ n, P2542225314168853794.a n = A140712 (n + 1)

end A140712

/-! ## A140712.P11613553408679392279

`A131689(A034856(n+1))+A001810(n)`
-/

namespace A140712.P11613553408679392279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A034856 (n + 1)).toNat + A001810 n

end

end A140712.P11613553408679392279

namespace A140712

/-- `A131689(A034856(n+1))+A001810(n)` -/
def P11613553408679392279.Spec : Prop :=
  ∀ n, P11613553408679392279.a n = A140712 (n + 1)

end A140712

/-! ## A140712.P8148631869941682088

`A131689(A034856(n+1))+(A005990(n+1)-A002775(n))/6`
-/

namespace A140712.P8148631869941682088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131689 (A034856 (n + 1)).toNat : ℚ) + (A005990 (n + 1) - A002775 n : ℚ) / 6

end

end A140712.P8148631869941682088

namespace A140712

/-- `A131689(A034856(n+1))+(A005990(n+1)-A002775(n))/6` -/
def P8148631869941682088.Spec : Prop :=
  ∀ n, P8148631869941682088.a n = (A140712 (n + 1) : ℚ)

end A140712

/-!
# A140715: Consider all the integers k where the n-th prime <= k <= the (n+1)th prime. a(n) is the largest integer that divides at least two of the integers k.

The programs for A140715, there is no canonical definition to state claims against.
-/

/-! ## A140715.P12658777212171546423

`A230403(A143117(n+1)!)`
-/

namespace A140715.P12658777212171546423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (Nat.factorial (A143117 (n + 1)).toNat)

end

end A140715.P12658777212171546423

/-! ## A140715.P12536863816950311192

`A001227(xor(10, A143117(n+1)!))`
-/

namespace A140715.P12536863816950311192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Nat.xor 10 (Nat.factorial (A143117 (n + 1)).toNat))

end

end A140715.P12536863816950311192

/-! ## A140715.P7446791023721459016

`A376275(n+1)%A143117(n+1)`
-/

namespace A140715.P7446791023721459016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376275 (n + 1)) (A143117 (n + 1))

end

end A140715.P7446791023721459016

/-! ## A140715.P5348322185475811202

`A143117(n+1)-A000035(A245744(2*n+1))`
-/

namespace A140715.P5348322185475811202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143117 (n + 1) - A000035 (A245744 (2 * n + 1)).toNat

end

end A140715.P5348322185475811202

/-! ## A140715.P18016673610889826000

`A326391(n+1)%A143117(n+1)`
-/

namespace A140715.P18016673610889826000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326391 (n + 1)) (A143117 (n + 1))

end

end A140715.P18016673610889826000

/-!
# A140716: Blocky integers, i.e., integers m > 1 such that there is a run of m consecutive integer squares the average of which is a square.

The programs for A140716, the canonical program `A140716.P7695803920838457403` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140716 has offset 1).

The definition of A140716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140716.P7695803920838457403

`a(n-2)+24` with `a(0)=7, a(1)=25`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140716

/-- `a(n-2)+24` -/
def P7695803920838457403.Spec : Prop :=
  ∀ n, (P7695803920838457403.a n : ℤ) = A140716 (n + 1)

theorem P7695803920838457403.correct : P7695803920838457403.Spec := by
  intro n
  simp only [A140716, Nat.add_sub_cancel]

end A140716

/-! ## A140716.P150027843435449818

`ogf((7+18x-x^2)/(1-x-x^2+x^3))`
-/

namespace A140716.P150027843435449818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 18, -1] [1, -1, -1, 1] n

end

end A140716.P150027843435449818

namespace A140716

/-- `ogf((7+18x-x^2)/(1-x-x^2+x^3))` -/
def P150027843435449818.Spec : Prop :=
  ∀ n, P150027843435449818.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P4663798182826211690

`12*(n+1)-2+3*(-1)^(n+1)`
-/

namespace A140716.P4663798182826211690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℤ) - 2 + 3 * (-1) ^ (n + 1)

end

end A140716.P4663798182826211690

namespace A140716

/-- `12*(n+1)-2+3*(-1)^(n+1)` -/
def P4663798182826211690.Spec : Prop :=
  ∀ n, P4663798182826211690.a n = A140716 (n + 1)

theorem P4663798182826211690.correct : P4663798182826211690.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A140716, Nat.add_sub_cancel, A140716.P4663798182826211690.a, A140716.P7695803920838457403.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A140716, Nat.add_sub_cancel, A140716.P4663798182826211690.a, A140716.P7695803920838457403.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140716

/-! ## A140716.P1382884847590185962

`∑[abs(a(n-2))]` with `a(0)=7, a(1)=18, a(2)=6`
-/

namespace A140716.P1382884847590185962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 18, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140716.P1382884847590185962

namespace A140716

/-- `∑[abs(a(n-2))]` -/
def P1382884847590185962.Spec : Prop :=
  ∀ n, (P1382884847590185962.a n : ℤ) = A140716 (n + 1)

end A140716

/-! ## A140716.P13747271166733967783

`∑[24-a(n-1)]` with `a(0)=7, a(1)=18`
-/

namespace A140716.P13747271166733967783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 18] fun n f1 =>
  24 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140716.P13747271166733967783

namespace A140716

/-- `∑[24-a(n-1)]` -/
def P13747271166733967783.Spec : Prop :=
  ∀ n, P13747271166733967783.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P8774860314648145067

`∑[A214498(a(n-1))]` with `a(0)=7`
-/

namespace A140716.P8774860314648145067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A214498 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140716.P8774860314648145067

namespace A140716

/-- `∑[A214498(a(n-1))]` -/
def P8774860314648145067.Spec : Prop :=
  ∀ n, P8774860314648145067.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P12163232896263352289

`∑[A276149(a(n-1))]` with `a(0)=7`
-/

namespace A140716.P12163232896263352289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A276149 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140716.P12163232896263352289

namespace A140716

/-- `∑[A276149(a(n-1))]` -/
def P12163232896263352289.Spec : Prop :=
  ∀ n, P12163232896263352289.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P14198335950336712890

`A016921(A042948(n+1))`
-/

namespace A140716.P14198335950336712890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A042948 (n + 1)).toNat

end

end A140716.P14198335950336712890

namespace A140716

/-- `A016921(A042948(n+1))` -/
def P14198335950336712890.Spec : Prop :=
  ∀ n, P14198335950336712890.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P15740593985908267165

`A100764(A154708(n+2))`
-/

namespace A140716.P15740593985908267165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (A154708 (n + 2)).toNat

end

end A140716.P15740593985908267165

namespace A140716

/-- `A100764(A154708(n+2))` -/
def P15740593985908267165.Spec : Prop :=
  ∀ n, P15740593985908267165.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P7091955700756569273

`A016921(A007310(n+1)-n)`
-/

namespace A140716.P7091955700756569273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A007310 (n + 1) - (n : ℤ)).toNat

end

end A140716.P7091955700756569273

namespace A140716

/-- `A016921(A007310(n+1)-n)` -/
def P7091955700756569273.Spec : Prop :=
  ∀ n, P7091955700756569273.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P5561320612280597592

`A016921(A000034(n)+2*n)`
-/

namespace A140716.P5561320612280597592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A000034 n + (2 * n : ℤ)).toNat

end

end A140716.P5561320612280597592

namespace A140716

/-- `A016921(A000034(n)+2*n)` -/
def P5561320612280597592.Spec : Prop :=
  ∀ n, P5561320612280597592.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P8722299022635765301

`A019426(∑[A084099(n)²+2])`
-/

namespace A140716.P8722299022635765301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084099 n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140716.P8722299022635765301

namespace A140716

/-- `A019426(∑[A084099(n)²+2])` -/
def P8722299022635765301.Spec : Prop :=
  ∀ n, P8722299022635765301.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P16880311978519349699

`A016921(A000034(n)+n+n)`
-/

namespace A140716.P16880311978519349699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A000034 n + (n : ℤ) + (n : ℤ)).toNat

end

end A140716.P16880311978519349699

namespace A140716

/-- `A016921(A000034(n)+n+n)` -/
def P16880311978519349699.Spec : Prop :=
  ∀ n, P16880311978519349699.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P12237327682658541158

`A016921(A052928(n+1)+n+1)`
-/

namespace A140716.P12237327682658541158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A052928 (n + 1) + (n + 1 : ℤ)).toNat

end

end A140716.P12237327682658541158

namespace A140716

/-- `A016921(A052928(n+1)+n+1)` -/
def P12237327682658541158.Spec : Prop :=
  ∀ n, P12237327682658541158.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P17901002568743854825

`A016921(A047233(n+1)+1-n)`
-/

namespace A140716.P17901002568743854825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A047233 (n + 1) + (1 - (n : ℤ))).toNat

end

end A140716.P17901002568743854825

namespace A140716

/-- `A016921(A047233(n+1)+1-n)` -/
def P17901002568743854825.Spec : Prop :=
  ∀ n, P17901002568743854825.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P17016907759205576645

`A016921(A047241(n+2)-(n+2))`
-/

namespace A140716.P17016907759205576645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A047241 (n + 2) - (n + 2 : ℤ)).toNat

end

end A140716.P17016907759205576645

namespace A140716

/-- `A016921(A047241(n+2)-(n+2))` -/
def P17016907759205576645.Spec : Prop :=
  ∀ n, P17016907759205576645.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P9180251645765420393

`A016921(A014695(2*n)+2*n)`
-/

namespace A140716.P9180251645765420393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A014695 (2 * n) + (2 * n : ℤ)).toNat

end

end A140716.P9180251645765420393

namespace A140716

/-- `A016921(A014695(2*n)+2*n)` -/
def P9180251645765420393.Spec : Prop :=
  ∀ n, P9180251645765420393.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P815086457155447437

`A016921(A166486(2*n)+2*n+1)`
-/

namespace A140716.P815086457155447437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A166486 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A140716.P815086457155447437

namespace A140716

/-- `A016921(A166486(2*n)+2*n+1)` -/
def P815086457155447437.Spec : Prop :=
  ∀ n, P815086457155447437.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P8180518195880814978

`A016921(2*n+1-A131729(2*n))`
-/

namespace A140716.P8180518195880814978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 ((2 * n + 1 : ℤ) - A131729 (2 * n)).toNat

end

end A140716.P8180518195880814978

namespace A140716

/-- `A016921(2*n+1-A131729(2*n))` -/
def P8180518195880814978.Spec : Prop :=
  ∀ n, P8180518195880814978.a n = A140716 (n + 1)

end A140716

/-! ## A140716.P7338267571088193260

`A227144(A047219(n+2))`
-/

namespace A140716.P7338267571088193260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (A047219 (n + 2)).toNat

end

end A140716.P7338267571088193260

namespace A140716

/-- `A227144(A047219(n+2))` -/
def P7338267571088193260.Spec : Prop :=
  ∀ n, P7338267571088193260.a n = A140716 (n + 1)

end A140716

/-!
# A140717: Triangle read by rows: T(n,k) is the number of Dyck paths d of semilength n such that sum of peakheights of d - number of peaks of d = k (n >= 0, 0 <= k <= floor(n^2/4)).

The programs for A140717, there is no canonical definition to state claims against.
-/

/-! ## A140717.P2995178517667984

`gcd(A326631(A371077(n)), A368338(n))`
-/

namespace A140717.P2995178517667984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326631 (A371077 n).toNat) (A368338 n)

end

end A140717.P2995178517667984

/-! ## A140717.P2662018298130342073

`A368338(n)^A334824(A221890(n+1))`
-/

namespace A140717.P2662018298130342073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368338 n : ℚ) ^ (A334824 (A221890 (n + 1)).toNat : ℤ)

end

end A140717.P2662018298130342073

/-!
# A140719: Primes in A153257.

The programs for A140719, there is no canonical definition to state claims against.
-/

/-! ## A140719.P10907624372457995064

`A153257(A154111(n+2))`
-/

namespace A140719.P10907624372457995064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153257 (A154111 (n + 2)).toNat

end

end A140719.P10907624372457995064

/-! ## A140719.P1731038696726949598

`p?[n^3-(n+1)²]`
-/

namespace A140719.P1731038696726949598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140719.P1731038696726949598

/-! ## A140719.P12551045029875248072

`or(1, p?[n*n²-(n+1)²])`
-/

namespace A140719.P12551045029875248072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2 : ℤ) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140719.P12551045029875248072

/-!
# A140720: The length of the n-th run of identical consecutive values of A112325.

The programs for A140720, there is no canonical definition to state claims against.
-/

/-! ## A140720.P5985675663867267726

`Δ[A115392(n+1)]`
-/

namespace A140720.P5985675663867267726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140720.P5985675663867267726

/-! ## A140720.P5460595013910738931

`Δ[comp[A174956(or(1, n))]]`
-/

namespace A140720.P5460595013910738931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174956 (Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140720.P5460595013910738931

/-! ## A140720.P5395722015752010487

`Δ[eq[0, A106138(n+1)]]`
-/

namespace A140720.P5395722015752010487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106138 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140720.P5395722015752010487

/-! ## A140720.P3984704006392270792

`Δ[eq[1, A338912(n+1)]]`
-/

namespace A140720.P3984704006392270792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338912 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140720.P3984704006392270792

/-!
# A140721: Alternated reading of A000302 and negated A002042.

The programs for A140721, the canonical program `A140721.P11431038885877920842` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140721 has offset 0).

The definition of A140721 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140721.P11431038885877920842

`ogf((1-7x)/(1-4x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140721

/-- `ogf((1-7x)/(1-4x^2))` -/
def P11431038885877920842.Spec : Prop :=
  ∀ n, P11431038885877920842.a n = A140721 n

theorem P11431038885877920842.correct : P11431038885877920842.Spec := by
  intro n
  simp only [A140721]

end A140721

/-! ## A140721.P17269227126675355200

`Δ[-2^xor(1, n)]`
-/

namespace A140721.P17269227126675355200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 ^ Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140721.P17269227126675355200

namespace A140721

/-- `Δ[-2^xor(1, n)]` -/
def P17269227126675355200.Spec : Prop :=
  ∀ n, P17269227126675355200.a n = A140721 n

end A140721

/-! ## A140721.P5878544886541475005

`4*a(n-2)` with `a(0)=1, a(1)=-7`
-/

namespace A140721.P5878544886541475005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -7] fun n a =>
  4 * a (n - 2)

end

end A140721.P5878544886541475005

namespace A140721

/-- `4*a(n-2)` -/
def P5878544886541475005.Spec : Prop :=
  ∀ n, P5878544886541475005.a n = A140721 n

end A140721

/-! ## A140721.P8972932554638661311

`xor(2, 2-Δ[2^xor(1, n)])`
-/

namespace A140721.P8972932554638661311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A140721.P8972932554638661311

namespace A140721

/-- `xor(2, 2-Δ[2^xor(1, n)])` -/
def P8972932554638661311.Spec : Prop :=
  ∀ n, P8972932554638661311.a n = A140721 n

end A140721

/-! ## A140721.P4773466610279741467

`log2(1/2)*Δ[2^xor(1, n)]`
-/

namespace A140721.P4773466610279741467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 1 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((1 : ℚ) / 2 : ℝ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A140721.P4773466610279741467

namespace A140721

/-- `log2(1/2)*Δ[2^xor(1, n)]` -/
def P4773466610279741467.Spec : Prop :=
  ∀ n, P4773466610279741467.a n = (A140721 n : ℝ)

end A140721

/-! ## A140721.P6288312070012791619

`3*(-2)^n-2^xor(1, n)`
-/

namespace A140721.P6288312070012791619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (-2) ^ n - (2 ^ Nat.xor 1 n : ℤ)

end

end A140721.P6288312070012791619

namespace A140721

/-- `3*(-2)^n-2^xor(1, n)` -/
def P6288312070012791619.Spec : Prop :=
  ∀ n, P6288312070012791619.a n = A140721 n

end A140721

/-! ## A140721.P14058137187056060651

`Δ[-A135520(n)]`
-/

namespace A140721.P14058137187056060651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A135520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140721.P14058137187056060651

namespace A140721

/-- `Δ[-A135520(n)]` -/
def P14058137187056060651.Spec : Prop :=
  ∀ n, P14058137187056060651.a n = A140721 n

end A140721

/-! ## A140721.P11963425357899425836

`Δ[-A140590(n)]`
-/

namespace A140721.P11963425357899425836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A140590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140721.P11963425357899425836

namespace A140721

/-- `Δ[-A140590(n)]` -/
def P11963425357899425836.Spec : Prop :=
  ∀ n, P11963425357899425836.a n = A140721 n

end A140721

/-! ## A140721.P18068015089352262626

`Δ[-A000225(xor(1, n))]`
-/

namespace A140721.P18068015089352262626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000225 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140721.P18068015089352262626

namespace A140721

/-- `Δ[-A000225(xor(1, n))]` -/
def P18068015089352262626.Spec : Prop :=
  ∀ n, P18068015089352262626.a n = A140721 n

end A140721

/-! ## A140721.P18312544053982687095

`Δ[Δ[n-A084221(n)]]`
-/

namespace A140721.P18312544053982687095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A084221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140721.P18312544053982687095

namespace A140721

/-- `Δ[Δ[n-A084221(n)]]` -/
def P18312544053982687095.Spec : Prop :=
  ∀ n, P18312544053982687095.a n = A140721 n

end A140721

/-! ## A140721.P5161174997497925873

`Δ[-A137399(2*n+1)]`
-/

namespace A140721.P5161174997497925873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137399 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140721.P5161174997497925873

namespace A140721

/-- `Δ[-A137399(2*n+1)]` -/
def P5161174997497925873.Spec : Prop :=
  ∀ n, P5161174997497925873.a n = A140721 n

end A140721

/-! ## A140721.P4317423593713875657

`A135520(n)-A135520(n+1)`
-/

namespace A140721.P4317423593713875657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 n - A135520 (n + 1)

end

end A140721.P4317423593713875657

namespace A140721

/-- `A135520(n)-A135520(n+1)` -/
def P4317423593713875657.Spec : Prop :=
  ∀ n, P4317423593713875657.a n = A140721 n

end A140721

/-! ## A140721.P14460139610435911504

`A140590(n)-A140590(n+1)`
-/

namespace A140721.P14460139610435911504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140590 n - A140590 (n + 1)

end

end A140721.P14460139610435911504

namespace A140721

/-- `A140590(n)-A140590(n+1)` -/
def P14460139610435911504.Spec : Prop :=
  ∀ n, P14460139610435911504.a n = A140721 n

end A140721

/-! ## A140721.P11015001211316600204

`2*A122803(n)-A084221(n)`
-/

namespace A140721.P11015001211316600204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122803 n - A084221 n

end

end A140721.P11015001211316600204

namespace A140721

/-- `2*A122803(n)-A084221(n)` -/
def P11015001211316600204.Spec : Prop :=
  ∀ n, P11015001211316600204.a n = A140721 n

end A140721

/-! ## A140721.P12222983944842045043

`A137447(2*(n+1))-A084221(n)`
-/

namespace A140721.P12222983944842045043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137447 (2 * (n + 1)) - A084221 n

end

end A140721.P12222983944842045043

namespace A140721

/-- `A137447(2*(n+1))-A084221(n)` -/
def P12222983944842045043.Spec : Prop :=
  ∀ n, P12222983944842045043.a n = A140721 n

end A140721

/-! ## A140721.P8588711496242291794

`2*A213173(n)-A164073(n+1)²`
-/

namespace A140721.P8588711496242291794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213173 n - A164073 (n + 1) ^ 2

end

end A140721.P8588711496242291794

namespace A140721

/-- `2*A213173(n)-A164073(n+1)²` -/
def P8588711496242291794.Spec : Prop :=
  ∀ n, P8588711496242291794.a n = A140721 n

end A140721

/-! ## A140721.P2171546242191144368

`A137399(2*n+1)-A137399(2*n+3)`
-/

namespace A140721.P2171546242191144368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137399 (2 * n + 1) - A137399 (2 * n + 3)

end

end A140721.P2171546242191144368

namespace A140721

/-- `A137399(2*n+1)-A137399(2*n+3)` -/
def P2171546242191144368.Spec : Prop :=
  ∀ n, P2171546242191144368.a n = A140721 n

end A140721

/-! ## A140721.P7061014958822429413

`A135520(n)-A000079(n)*A010685(n)`
-/

namespace A140721.P7061014958822429413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135520 n - A000079 n * A010685 n

end

end A140721.P7061014958822429413

namespace A140721

/-- `A135520(n)-A000079(n)*A010685(n)` -/
def P7061014958822429413.Spec : Prop :=
  ∀ n, P7061014958822429413.a n = A140721 n

end A140721

/-! ## A140721.P5122587142553735477

`Δ[Δ[A136326(n+1)-A283323(n+1)]]`
-/

namespace A140721.P5122587142553735477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 (n + 1) - A283323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140721.P5122587142553735477

namespace A140721

/-- `Δ[Δ[A136326(n+1)-A283323(n+1)]]` -/
def P5122587142553735477.Spec : Prop :=
  ∀ n, P5122587142553735477.a n = A140721 n

end A140721

/-!
# A140722: Number of n X n symmetric matrices with nonnegative integer entries with each row sum i equal to i (1..n).

The programs for A140722, there is no canonical definition to state claims against.
-/

/-! ## A140722.P13192035748549408651

`A004773(∑[A005431(n)])`
-/

namespace A140722.P13192035748549408651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140722.P13192035748549408651

/-!
# A140724: Period 10: 1, 5, 9, 7, 7, 9, 5, 1, 3, 3 repeated.

The programs for A140724, the canonical program `A140724.P14877701096107448117` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140724 has offset 0).

The definition of A140724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140724.P14877701096107448117

`ogf((1+3x+x^2-3x^3+3x^4)/(1-2x+2x^2-2x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140724

/-- `ogf((1+3x+x^2-3x^3+3x^4)/(1-2x+2x^2-2x^3+2x^4-x^5))` -/
def P14877701096107448117.Spec : Prop :=
  ∀ n, P14877701096107448117.a n = A140724 n

theorem P14877701096107448117.correct : P14877701096107448117.Spec := by
  intro n
  simp only [A140724]

end A140724

/-!
# A140725: Inverse binomial transform of (0 followed by A037481).

The programs for A140725, the canonical program `A140725.P18046404347268479199` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140725 has offset 0).

The definition of A140725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140725.P13744349729116536518

`ogf((x+3x^2)/(1-x-6x^2))`
-/

namespace A140725.P13744349729116536518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -1, -6] n

end

end A140725.P13744349729116536518

namespace A140725

/-- `ogf((x+3x^2)/(1-x-6x^2))` -/
def P13744349729116536518.Spec : Prop :=
  ∀ n, P13744349729116536518.a n = A140725 n

end A140725

/-! ## A140725.P18046404347268479199

`a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140725

/-- `a(n-1)+6*a(n-2)` -/
def P18046404347268479199.Spec : Prop :=
  ∀ n, (P18046404347268479199.a n : ℤ) = A140725 n

theorem P18046404347268479199.correct : P18046404347268479199.Spec := by
  intro n
  simp only [A140725]

end A140725

/-! ## A140725.P10613389589318923137

`2*(3^(n-1)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A140725.P10613389589318923137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A140725.P10613389589318923137

namespace A140725

/-- `2*(3^(n-1)-a(n-1))` -/
def P10613389589318923137.Spec : Prop :=
  ∀ n, P10613389589318923137.a n = (A140725 n : ℚ)

end A140725

/-! ## A140725.P2315291438354390300

`7*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A140725.P2315291438354390300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  7 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A140725.P2315291438354390300

namespace A140725

/-- `7*a(n-2)-(a(n-2)-a(n-1))` -/
def P2315291438354390300.Spec : Prop :=
  ∀ n, P2315291438354390300.a n = A140725 n

end A140725

/-! ## A140725.P8540012672948872956

`round(3^((n-1)%or(2, n)))+abs(A091005(n))`
-/

namespace A140725.P8540012672948872956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (Nat.lor 2 n : ℤ) : ℤ)) + |A091005 n|

end

end A140725.P8540012672948872956

namespace A140725

/-- `round(3^((n-1)%or(2, n)))+abs(A091005(n))` -/
def P8540012672948872956.Spec : Prop :=
  ∀ n, P8540012672948872956.a n = A140725 n

end A140725

/-! ## A140725.P1795373491365011847

`abs(A000007(n)-A091003(n))`
-/

namespace A140725.P1795373491365011847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n - A091003 n|

end

end A140725.P1795373491365011847

namespace A140725

/-- `abs(A000007(n)-A091003(n))` -/
def P1795373491365011847.Spec : Prop :=
  ∀ n, P1795373491365011847.a n = A140725 n

end A140725

/-! ## A140725.P9872278985442251441

`lcm(A001876(A001876(n)), A091003(n))`
-/

namespace A140725.P9872278985442251441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001876 (A001876 n).toNat) (A091003 n)

end

end A140725.P9872278985442251441

namespace A140725

/-- `lcm(A001876(A001876(n)), A091003(n))` -/
def P9872278985442251441.Spec : Prop :=
  ∀ n, (P9872278985442251441.a n : ℤ) = A140725 n

end A140725

/-! ## A140725.P3753826034048521703

`Δ[3*a(n-1)]-2*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A140725.P3753826034048521703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2 * a (n - 1)

end

end A140725.P3753826034048521703

namespace A140725

/-- `Δ[3*a(n-1)]-2*a(n-1)` -/
def P3753826034048521703.Spec : Prop :=
  ∀ n, P3753826034048521703.a n = A140725 n

end A140725

/-! ## A140725.P7716989006257560789

`floor(A133467(n)/2)`
-/

namespace A140725.P7716989006257560789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A133467 n : ℚ) / 2⌋

end

end A140725.P7716989006257560789

namespace A140725

/-- `floor(A133467(n)/2)` -/
def P7716989006257560789.Spec : Prop :=
  ∀ n, P7716989006257560789.a n = A140725 n

end A140725

/-! ## A140725.P12388696267904862238

`A133467(n)-abs(A091003(n))`
-/

namespace A140725.P12388696267904862238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 n - |A091003 n|

end

end A140725.P12388696267904862238

namespace A140725

/-- `A133467(n)-abs(A091003(n))` -/
def P12388696267904862238.Spec : Prop :=
  ∀ n, P12388696267904862238.a n = A140725 n

end A140725

/-! ## A140725.P11036705314844441092

`A099856(n)-A140796(n)`
-/

namespace A140725.P11036705314844441092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n - A140796 n

end

end A140725.P11036705314844441092

namespace A140725

/-- `A099856(n)-A140796(n)` -/
def P11036705314844441092.Spec : Prop :=
  ∀ n, P11036705314844441092.a n = A140725 n

end A140725

/-! ## A140725.P16039171464236901680

`A008776(n)%A140796(n)`
-/

namespace A140725.P16039171464236901680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008776 n) (A140796 n)

end

end A140725.P16039171464236901680

namespace A140725

/-- `A008776(n)%A140796(n)` -/
def P16039171464236901680.Spec : Prop :=
  ∀ n, P16039171464236901680.a n = A140725 n

end A140725

/-! ## A140725.P11468630367554565276

`A110593(n+1)%A140796(n)`
-/

namespace A140725.P11468630367554565276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110593 (n + 1)) (A140796 n)

end

end A140725.P11468630367554565276

namespace A140725

/-- `A110593(n+1)%A140796(n)` -/
def P11468630367554565276.Spec : Prop :=
  ∀ n, P11468630367554565276.a n = A140725 n

end A140725

/-! ## A140725.P13501906831733025848

`round(A277104(n+1)/81)+abs(A091005(n))`
-/

namespace A140725.P13501906831733025848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A277104 (n + 1) : ℚ) / 81) + |A091005 n|

end

end A140725.P13501906831733025848

namespace A140725

/-- `round(A277104(n+1)/81)+abs(A091005(n))` -/
def P13501906831733025848.Spec : Prop :=
  ∀ n, P13501906831733025848.a n = A140725 n

end A140725

/-!
# A140726: Primes congruent to 61 or 149 mod 210.

The programs for A140726, the canonical program `A140726.P14915820974214834436` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140726 has offset 1).

The definition of A140726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140726.P14915820974214834436

`p?[A249674(n)+A238470(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140726

/-- `p?[A249674(n)+A238470(n)]` -/
def P14915820974214834436.Spec : Prop :=
  ∀ n, P14915820974214834436.a n = A140726 (n + 1)

theorem P14915820974214834436.correct : P14915820974214834436.Spec := by
  intro n
  simp only [A140726, Nat.add_sub_cancel]

end A140726

/-! ## A140726.P3613720060013454394

`p?[10*A072154(n)-A008486(n)]`
-/

namespace A140726.P3613720060013454394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A072154 n - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P3613720060013454394

namespace A140726

/-- `p?[10*A072154(n)-A008486(n)]` -/
def P3613720060013454394.Spec : Prop :=
  ∀ n, P3613720060013454394.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P17928537052998407093

`p?[A175887(A047276(n+1))]`
-/

namespace A140726.P17928537052998407093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A047276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P17928537052998407093

namespace A140726

/-- `p?[A175887(A047276(n+1))]` -/
def P17928537052998407093.Spec : Prop :=
  ∀ n, P17928537052998407093.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P14004310183020819067

`p?[A175887(A047293(2*(n+1)))]`
-/

namespace A140726.P14004310183020819067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A047293 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P14004310183020819067

namespace A140726

/-- `p?[A175887(A047293(2*(n+1)))]` -/
def P14004310183020819067.Spec : Prop :=
  ∀ n, P14004310183020819067.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P1681247695576707411

`p?[A175887(A047346(n+2)-2)]`
-/

namespace A140726.P1681247695576707411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A047346 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P1681247695576707411

namespace A140726

/-- `p?[A175887(A047346(n+2)-2)]` -/
def P1681247695576707411.Spec : Prop :=
  ∀ n, P1681247695576707411.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P8700982158337948732

`p?[A175887(A047209(n+1)+n+1)]`
-/

namespace A140726.P8700982158337948732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A047209 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P8700982158337948732

namespace A140726

/-- `p?[A175887(A047209(n+1)+n+1)]` -/
def P8700982158337948732.Spec : Prop :=
  ∀ n, P8700982158337948732.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P13790526350348024801

`p?[A175887(A008619(n)+A007310(n+1))]`
-/

namespace A140726.P13790526350348024801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A008619 n + A007310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P13790526350348024801

namespace A140726

/-- `p?[A175887(A008619(n)+A007310(n+1))]` -/
def P13790526350348024801.Spec : Prop :=
  ∀ n, P13790526350348024801.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P13786153034099073475

`p?[A175887(A106839(n)-A168205(n+1))]`
-/

namespace A140726.P13786153034099073475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A106839 n - A168205 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P13786153034099073475

namespace A140726

/-- `p?[A175887(A106839(n)-A168205(n+1))]` -/
def P13786153034099073475.Spec : Prop :=
  ∀ n, P13786153034099073475.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P18354208032203885359

`p?[A175887(A008619(A017017(n)))]`
-/

namespace A140726.P18354208032203885359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A008619 (A017017 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P18354208032203885359

namespace A140726

/-- `p?[A175887(A008619(A017017(n)))]` -/
def P18354208032203885359.Spec : Prop :=
  ∀ n, P18354208032203885359.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P5545127985838657553

`p?[A175887(A110654(A017029(n)))]`
-/

namespace A140726.P5545127985838657553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A110654 (A017029 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P5545127985838657553

namespace A140726

/-- `p?[A175887(A110654(A017029(n)))]` -/
def P5545127985838657553.Spec : Prop :=
  ∀ n, P5545127985838657553.a n = A140726 (n + 1)

end A140726

/-! ## A140726.P5023784284650006604

`p?[A130497(A096014(4*n+2))+A047276(5*n+2)]`
-/

namespace A140726.P5023784284650006604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A096014 (4 * n + 2)).toNat + A047276 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140726.P5023784284650006604

namespace A140726

/-- `p?[A130497(A096014(4*n+2))+A047276(5*n+2)]` -/
def P5023784284650006604.Spec : Prop :=
  ∀ n, P5023784284650006604.a n = A140726 (n + 1)

end A140726

/-!
# A140727: Expansion of (phi(q) * phi(q^15) - phi(q^3) * phi(q^5)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A140727, the canonical program `A140727.P12223123684502752672` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140727 has offset 1).

The definition of A140727 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A140728, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140727.P12223123684502752672

`(-1)^n*A140728(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A140727

/-- `(-1)^n*A140728(n+1)` -/
def P12223123684502752672.Spec : Prop :=
  ∀ n, P12223123684502752672.a n = A140727 (n + 1)

theorem P12223123684502752672.correct : P12223123684502752672.Spec := by
  intro n
  simp only [A140727, Nat.add_sub_cancel]

end A140727

/-! ## A140727.P7631822368498399086

`A140728(n+1)/A033999(n)`
-/

namespace A140727.P7631822368498399086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140728 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A140727.P7631822368498399086

namespace A140727

/-- `A140728(n+1)/A033999(n)` -/
def P7631822368498399086.Spec : Prop :=
  ∀ n, P7631822368498399086.a n = (A140727 (n + 1) : ℚ)

end A140727

/-! ## A140727.P16603952345158706747

`A260649(n+1)-A192323(n+1)`
-/

namespace A140727.P16603952345158706747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260649 (n + 1) - A192323 (n + 1)

end

end A140727.P16603952345158706747

namespace A140727

/-- `A260649(n+1)-A192323(n+1)` -/
def P16603952345158706747.Spec : Prop :=
  ∀ n, P16603952345158706747.a n = A140727 (n + 1)

end A140727

/-! ## A140727.P12645308211856001144

`A122855(n+1)-A192323(n+1)`
-/

namespace A140727.P12645308211856001144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (n + 1) - A192323 (n + 1)

end

end A140727.P12645308211856001144

namespace A140727

/-- `A122855(n+1)-A192323(n+1)` -/
def P12645308211856001144.Spec : Prop :=
  ∀ n, P12645308211856001144.a n = A140727 (n + 1)

end A140727

/-! ## A140727.P9957909810809710586

`A260671(n+1)-A122855(n+1)`
-/

namespace A140727.P9957909810809710586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (n + 1) - A122855 (n + 1)

end

end A140727.P9957909810809710586

namespace A140727

/-- `A260671(n+1)-A122855(n+1)` -/
def P9957909810809710586.Spec : Prop :=
  ∀ n, P9957909810809710586.a n = A140727 (n + 1)

end A140727

/-! ## A140727.P8567376572568648696

`A260671(n+1)-A260649(n+1)`
-/

namespace A140727.P8567376572568648696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260671 (n + 1) - A260649 (n + 1)

end

end A140727.P8567376572568648696

namespace A140727

/-- `A260671(n+1)-A260649(n+1)` -/
def P8567376572568648696.Spec : Prop :=
  ∀ n, P8567376572568648696.a n = A140727 (n + 1)

end A140727

/-! ## A140727.P18216202224389668797

`(A260671(n+1)-A192323(n+1))/2`
-/

namespace A140727.P18216202224389668797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260671 (n + 1) - A192323 (n + 1) : ℚ) / 2

end

end A140727.P18216202224389668797

namespace A140727

/-- `(A260671(n+1)-A192323(n+1))/2` -/
def P18216202224389668797.Spec : Prop :=
  ∀ n, P18216202224389668797.a n = (A140727 (n + 1) : ℚ)

end A140727

/-! ## A140727.P12742282023650032093

`A140728(A165998(n))`
-/

namespace A140727.P12742282023650032093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140728 (A165998 n).toNat

end

end A140727.P12742282023650032093

namespace A140727

/-- `A140728(A165998(n))` -/
def P12742282023650032093.Spec : Prop :=
  ∀ n, P12742282023650032093.a n = A140727 (n + 1)

end A140727

/-! ## A140727.P8076811656283252510

`A140728(A195817(n+1))`
-/

namespace A140727.P8076811656283252510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140728 (A195817 (n + 1)).toNat

end

end A140727.P8076811656283252510

namespace A140727

/-- `A140728(A195817(n+1))` -/
def P8076811656283252510.Spec : Prop :=
  ∀ n, P8076811656283252510.a n = A140727 (n + 1)

end A140727

/-!
# A140728: Expansion of (phi(-q^3) * phi(-q^5) - phi(-q) * phi(-q^15)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A140728, the canonical program `A140728.P15054832237717628178` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140728 has offset 1).

The definition of A140728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140728.P12541548170889189387

`(-1)^n*A140727(n+1)`
-/

namespace A140728.P12541548170889189387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A140727 (n + 1)

end

end A140728.P12541548170889189387

namespace A140728

/-- `(-1)^n*A140727(n+1)` -/
def P12541548170889189387.Spec : Prop :=
  ∀ n, P12541548170889189387.a n = A140728 (n + 1)

end A140728

/-! ## A140728.P4981298113773460347

`A140727(n+1)/A033999(n)`
-/

namespace A140728.P4981298113773460347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140727 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A140728.P4981298113773460347

namespace A140728

/-- `A140727(n+1)/A033999(n)` -/
def P4981298113773460347.Spec : Prop :=
  ∀ n, P4981298113773460347.a n = (A140728 (n + 1) : ℚ)

end A140728

/-! ## A140728.P15054832237717628178

`(2-A001511(n+1))*A121362(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140728

/-- `(2-A001511(n+1))*A121362(n+1)` -/
def P15054832237717628178.Spec : Prop :=
  ∀ n, P15054832237717628178.a n = A140728 (n + 1)

theorem P15054832237717628178.correct : P15054832237717628178.Spec := by
  intro n
  simp only [A140728, Nat.add_sub_cancel]

end A140728

/-! ## A140728.P18360505658510050788

`∑{d}[n+1, A106406(#)*A130706((n+1)/#-1)]`
-/

namespace A140728.P18360505658510050788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106406 d * A130706 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A140728.P18360505658510050788

namespace A140728

/-- `∑{d}[n+1, A106406(#)*A130706((n+1)/#-1)]` -/
def P18360505658510050788.Spec : Prop :=
  ∀ n, P18360505658510050788.a n = A140728 (n + 1)

end A140728

/-! ## A140728.P18417142868898799740

`A140727(2*(n+1))+A121362(n+1)`
-/

namespace A140728.P18417142868898799740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (2 * (n + 1)) + A121362 (n + 1)

end

end A140728.P18417142868898799740

namespace A140728

/-- `A140727(2*(n+1))+A121362(n+1)` -/
def P18417142868898799740.Spec : Prop :=
  ∀ n, P18417142868898799740.a n = A140728 (n + 1)

end A140728

/-! ## A140728.P14687478583273344817

`A140727(A165998(n))`
-/

namespace A140728.P14687478583273344817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (A165998 n).toNat

end

end A140728.P14687478583273344817

namespace A140728

/-- `A140727(A165998(n))` -/
def P14687478583273344817.Spec : Prop :=
  ∀ n, P14687478583273344817.a n = A140728 (n + 1)

end A140728

/-! ## A140728.P2858949305416373741

`A140727(A195817(n+1))`
-/

namespace A140728.P2858949305416373741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140727 (A195817 (n + 1)).toNat

end

end A140728.P2858949305416373741

namespace A140728

/-- `A140727(A195817(n+1))` -/
def P2858949305416373741.Spec : Prop :=
  ∀ n, P2858949305416373741.a n = A140728 (n + 1)

end A140728

/-!
# A140730: a(4*n)=5^n, a(4*n+1)=2*5^n, a(4*n+2)=3*5^n, a(4*n+3)=4*5^n.

The programs for A140730, the canonical program `A140730.P4706380302910771094` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140730 has offset 0).

The definition of A140730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140730.P4706380302910771094

`5*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140730

/-- `5*a(n-4)` -/
def P4706380302910771094.Spec : Prop :=
  ∀ n, (P4706380302910771094.a n : ℤ) = A140730 n

theorem P4706380302910771094.correct : P4706380302910771094.Spec := by
  intro n
  simp only [A140730]

end A140730

/-! ## A140730.P13176338206327361604

`(n+1-4*floor(n/4))*5^floor(n/4)`
-/

namespace A140730.P13176338206327361604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - 4 * ⌊(n : ℚ) / 4⌋ : ℚ) * (5 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)

end

end A140730.P13176338206327361604

namespace A140730

/-- `(n+1-4*floor(n/4))*5^floor(n/4)` -/
def P13176338206327361604.Spec : Prop :=
  ∀ n, P13176338206327361604.a n = (A140730 n : ℚ)

end A140730

/-! ## A140730.P17534392925289285746

`ogf((1+2x+3x^2+4x^3)/(1-5x^4))`
-/

namespace A140730.P17534392925289285746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 3, 4] [1, 0, 0, 0, -5] n

end

end A140730.P17534392925289285746

namespace A140730

/-- `ogf((1+2x+3x^2+4x^3)/(1-5x^4))` -/
def P17534392925289285746.Spec : Prop :=
  ∀ n, P17534392925289285746.a n = A140730 n

end A140730

/-! ## A140730.P17680736178577046376

`a(n-1)+a(n-1)/a((n-1)%4)` with `a(0)=1`
-/

namespace A140730.P17680736178577046376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / a (Int.tmod ((n : ℤ) - 1) 4).toNat

end

end A140730.P17680736178577046376

namespace A140730

/-- `a(n-1)+a(n-1)/a((n-1)%4)` -/
def P17680736178577046376.Spec : Prop :=
  ∀ n, P17680736178577046376.a n = (A140730 n : ℚ)

end A140730

/-! ## A140730.P11506264313560599622

`a(n-1)+a(n-a(a(n-2)%4))` with `a(0)=1, a(1)=2`
-/

namespace A140730.P11506264313560599622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - a (a (n - 2) % 4))

end

end A140730.P11506264313560599622

namespace A140730

/-- `a(n-1)+a(n-a(a(n-2)%4))` -/
def P11506264313560599622.Spec : Prop :=
  ∀ n, (P11506264313560599622.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P16647313257785644984

`a(n-1)+a(n-1)/gcd(gcd(2, n)+2, a(n-1))` with `a(0)=1`
-/

namespace A140730.P16647313257785644984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / (Int.gcd (Nat.gcd 2 n + 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A140730.P16647313257785644984

namespace A140730

/-- `a(n-1)+a(n-1)/gcd(gcd(2, n)+2, a(n-1))` -/
def P16647313257785644984.Spec : Prop :=
  ∀ n, P16647313257785644984.a n = (A140730 n : ℚ)

end A140730

/-! ## A140730.P5345544920945822651

`A181287(n+1)+1`
-/

namespace A140730.P5345544920945822651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 (n + 1) + 1

end

end A140730.P5345544920945822651

namespace A140730

/-- `A181287(n+1)+1` -/
def P5345544920945822651.Spec : Prop :=
  ∀ n, P5345544920945822651.a n = A140730 n

end A140730

/-! ## A140730.P3538939732231698183

`∑[ceil(5^(A002265(n+3)-1))]`
-/

namespace A140730.P3538939732231698183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) ^ (A002265 (n + 3) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140730.P3538939732231698183

namespace A140730

/-- `∑[ceil(5^(A002265(n+3)-1))]` -/
def P3538939732231698183.Spec : Prop :=
  ∀ n, P3538939732231698183.a n = A140730 n

end A140730

/-! ## A140730.P12546531253772733050

`∑[A074872(A065033(n))]`
-/

namespace A140730.P12546531253772733050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140730.P12546531253772733050

namespace A140730

/-- `∑[A074872(A065033(n))]` -/
def P12546531253772733050.Spec : Prop :=
  ∀ n, P12546531253772733050.a n = A140730 n

end A140730

/-! ## A140730.P3209809059061005309

`∑[A074872(∑[A266070(n)])]`
-/

namespace A140730.P3209809059061005309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140730.P3209809059061005309

namespace A140730

/-- `∑[A074872(∑[A266070(n)])]` -/
def P3209809059061005309.Spec : Prop :=
  ∀ n, P3209809059061005309.a n = A140730 n

end A140730

/-! ## A140730.P7389642010958949964

`∪[A133335(n), A133632(n+1)]`
-/

namespace A140730.P7389642010958949964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P7389642010958949964

namespace A140730

/-- `∪[A133335(n), A133632(n+1)]` -/
def P7389642010958949964.Spec : Prop :=
  ∀ n, (P7389642010958949964.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P12397547742849079411

`∪[A133335(n), A163141(n+1)]`
-/

namespace A140730.P12397547742849079411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P12397547742849079411

namespace A140730

/-- `∪[A133335(n), A163141(n+1)]` -/
def P12397547742849079411.Spec : Prop :=
  ∀ n, (P12397547742849079411.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P13577952209928850199

`∪[A056487(n), A245478(n+1)]`
-/

namespace A140730.P13577952209928850199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P13577952209928850199

namespace A140730

/-- `∪[A056487(n), A245478(n+1)]` -/
def P13577952209928850199.Spec : Prop :=
  ∀ n, (P13577952209928850199.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P16872978950902434256

`∪[A245478(n+1), A133335(n)]`
-/

namespace A140730.P16872978950902434256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P16872978950902434256

namespace A140730

/-- `∪[A245478(n+1), A133335(n)]` -/
def P16872978950902434256.Spec : Prop :=
  ∀ n, (P16872978950902434256.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P6191510004781288995

`∪[A163114(n+1), A245478(n+1)]`
-/

namespace A140730.P6191510004781288995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P6191510004781288995

namespace A140730

/-- `∪[A163114(n+1), A245478(n+1)]` -/
def P6191510004781288995.Spec : Prop :=
  ∀ n, (P6191510004781288995.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P10763501918466757079

`∪[A026395(n), A056487(n)]`
-/

namespace A140730.P10763501918466757079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P10763501918466757079

namespace A140730

/-- `∪[A026395(n), A056487(n)]` -/
def P10763501918466757079.Spec : Prop :=
  ∀ n, (P10763501918466757079.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P6790755828417211465

`∪[A026395(n), A133335(n)]`
-/

namespace A140730.P6790755828417211465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P6790755828417211465

namespace A140730

/-- `∪[A026395(n), A133335(n)]` -/
def P6790755828417211465.Spec : Prop :=
  ∀ n, (P6790755828417211465.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P10934441645477553975

`∪[A026395(n), A163114(n+1)]`
-/

namespace A140730.P10934441645477553975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P10934441645477553975

namespace A140730

/-- `∪[A026395(n), A163114(n+1)]` -/
def P10934441645477553975.Spec : Prop :=
  ∀ n, (P10934441645477553975.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P15130712074085763609

`∪[2*A026383(n), A056487(n)]`
-/

namespace A140730.P15130712074085763609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140730.P15130712074085763609

namespace A140730

/-- `∪[2*A026383(n), A056487(n)]` -/
def P15130712074085763609.Spec : Prop :=
  ∀ n, (P15130712074085763609.a n : ℤ) = A140730 n

end A140730

/-! ## A140730.P4066771806390179975

`∑[A020699(A002265(abs(1-n))+1)]/2`
-/

namespace A140730.P4066771806390179975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 (A002265 |1 - (n : ℤ)|.toNat + 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A140730.P4066771806390179975

namespace A140730

/-- `∑[A020699(A002265(abs(1-n))+1)]/2` -/
def P4066771806390179975.Spec : Prop :=
  ∀ n, P4066771806390179975.a n = (A140730 n : ℚ)

end A140730

/-!
# A140731: Primes congruent to 67 or 143 mod 210.

The programs for A140731, the canonical program `A140731.P14119832605904871914` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140731 has offset 1).

The definition of A140731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1830 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140731.P14119832605904871914

`p?[A241520(n+1)+A017113(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140731

/-- `p?[A241520(n+1)+A017113(n)]` -/
def P14119832605904871914.Spec : Prop :=
  ∀ n, P14119832605904871914.a n = A140731 (n + 1)

theorem P14119832605904871914.correct : P14119832605904871914.Spec := by
  intro n
  simp only [A140731, Nat.add_sub_cancel]

end A140731

/-! ## A140731.P891243905273277818

`p?[A177044(n+1)+A098180(n)]`
-/

namespace A140731.P891243905273277818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1) + A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P891243905273277818

namespace A140731

/-- `p?[A177044(n+1)+A098180(n)]` -/
def P891243905273277818.Spec : Prop :=
  ∀ n, P891243905273277818.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P7275910380249092535

`p?[A177044(n+1)+A052928(n+1)]`
-/

namespace A140731.P7275910380249092535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1) + A052928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P7275910380249092535

namespace A140731

/-- `p?[A177044(n+1)+A052928(n+1)]` -/
def P7275910380249092535.Spec : Prop :=
  ∀ n, P7275910380249092535.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P5601860288263862989

`p?[∑[A131757(n+1)²]]`
-/

namespace A140731.P5601860288263862989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131757 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P5601860288263862989

namespace A140731

/-- `p?[∑[A131757(n+1)²]]` -/
def P5601860288263862989.Spec : Prop :=
  ∀ n, P5601860288263862989.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P14454748684111664900

`p?[A017233(A301298(n))-A017053(n)]`
-/

namespace A140731.P14454748684111664900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A301298 n).toNat - A017053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P14454748684111664900

namespace A140731

/-- `p?[A017233(A301298(n))-A017053(n)]` -/
def P14454748684111664900.Spec : Prop :=
  ∀ n, P14454748684111664900.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P886623403743046196

`p?[A090771(A047524(n+1))+A056021(n+1)]`
-/

namespace A140731.P886623403743046196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A047524 (n + 1)).toNat + A056021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P886623403743046196

namespace A140731

/-- `p?[A090771(A047524(n+1))+A056021(n+1)]` -/
def P886623403743046196.Spec : Prop :=
  ∀ n, P886623403743046196.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P1085920023261320745

`p?[A008364(A125169(n))+6]`
-/

namespace A140731.P1085920023261320745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (A125169 n).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P1085920023261320745

namespace A140731

/-- `p?[A008364(A125169(n))+6]` -/
def P1085920023261320745.Spec : Prop :=
  ∀ n, P1085920023261320745.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P435324601857098733

`p?[A301708(n)+A298028(A136290(n))]`
-/

namespace A140731.P435324601857098733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + A298028 (A136290 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P435324601857098733

namespace A140731

/-- `p?[A301708(n)+A298028(A136290(n))]` -/
def P435324601857098733.Spec : Prop :=
  ∀ n, P435324601857098733.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P4246978345768741613

`p?[A054967(A017401(n))-A008854(n+1)]`
-/

namespace A140731.P4246978345768741613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (A017401 n).toNat - A008854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140731.P4246978345768741613

namespace A140731

/-- `p?[A054967(A017401(n))-A008854(n+1)]` -/
def P4246978345768741613.Spec : Prop :=
  ∀ n, P4246978345768741613.a n = A140731 (n + 1)

end A140731

/-! ## A140731.P8296576894205931730

`∩[A132237(n+1), A315671(n)]`
-/

namespace A140731.P8296576894205931730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140731.P8296576894205931730

namespace A140731

/-- `∩[A132237(n+1), A315671(n)]` -/
def P8296576894205931730.Spec : Prop :=
  ∀ n, (P8296576894205931730.a n : ℤ) = A140731 (n + 1)

end A140731

/-!
# A140732: Primes congruent to 71 or 139 mod 210.

The programs for A140732, the canonical program `A140732.P10377411480655812818` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140732 has offset 1).

The definition of A140732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140732.P10377411480655812818

`∩[A111092(n+1), A140506(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140732

/-- `∩[A111092(n+1), A140506(n+1)]` -/
def P10377411480655812818.Spec : Prop :=
  ∀ n, (P10377411480655812818.a n : ℤ) = A140732 (n + 1)

theorem P10377411480655812818.correct : P10377411480655812818.Spec := by
  intro n
  simp only [A140732, Nat.add_sub_cancel]

end A140732

/-! ## A140732.P4594912704548110612

`p?[36*n-A064429(n)]`
-/

namespace A140732.P4594912704548110612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (36 * n : ℤ) - A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P4594912704548110612

namespace A140732

/-- `p?[36*n-A064429(n)]` -/
def P4594912704548110612.Spec : Prop :=
  ∀ n, P4594912704548110612.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P10122290784786564881

`p?[A044102(A113655(n+1))-n]`
-/

namespace A140732.P10122290784786564881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A113655 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P10122290784786564881

namespace A140732

/-- `p?[A044102(A113655(n+1))-n]` -/
def P10122290784786564881.Spec : Prop :=
  ∀ n, P10122290784786564881.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P11861605190654467090

`p?[A044102(n)-A244477(n+1)]`
-/

namespace A140732.P11861605190654467090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n - A244477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P11861605190654467090

namespace A140732

/-- `p?[A044102(n)-A244477(n+1)]` -/
def P11861605190654467090.Spec : Prop :=
  ∀ n, P11861605190654467090.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P11781297344065802814

`p?[A158065(n+1)-A113655(n+1)]`
-/

namespace A140732.P11781297344065802814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1) - A113655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P11781297344065802814

namespace A140732

/-- `p?[A158065(n+1)-A113655(n+1)]` -/
def P11781297344065802814.Spec : Prop :=
  ∀ n, P11781297344065802814.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P3586271117901962540

`p?[A158065(n+1)-(A330396(n)+1)]`
-/

namespace A140732.P3586271117901962540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1) - (A330396 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P3586271117901962540

namespace A140732

/-- `p?[A158065(n+1)-(A330396(n)+1)]` -/
def P3586271117901962540.Spec : Prop :=
  ∀ n, P3586271117901962540.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P13905214794240953543

`p?[∑[A040865(n)+A040844(n)]]`
-/

namespace A140732.P13905214794240953543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040865 n + A040844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P13905214794240953543

namespace A140732

/-- `p?[∑[A040865(n)+A040844(n)]]` -/
def P13905214794240953543.Spec : Prop :=
  ∀ n, P13905214794240953543.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P3932304580380527339

`∩[A038894(n+1), A111092(n+1)]`
-/

namespace A140732.P3932304580380527339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140732.P3932304580380527339

namespace A140732

/-- `∩[A038894(n+1), A111092(n+1)]` -/
def P3932304580380527339.Spec : Prop :=
  ∀ n, (P3932304580380527339.a n : ℤ) = A140732 (n + 1)

end A140732

/-! ## A140732.P14345623759237807010

`∩[A111092(n+1), A271367(n+1)]`
-/

namespace A140732.P14345623759237807010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140732.P14345623759237807010

namespace A140732

/-- `∩[A111092(n+1), A271367(n+1)]` -/
def P14345623759237807010.Spec : Prop :=
  ∀ n, (P14345623759237807010.a n : ℤ) = A140732 (n + 1)

end A140732

/-! ## A140732.P12401285336605409786

`p?[A080782(2*n+3)+A017509(3*n+2)]`
-/

namespace A140732.P12401285336605409786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (2 * n + 3) + A017509 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P12401285336605409786

namespace A140732

/-- `p?[A080782(2*n+3)+A017509(3*n+2)]` -/
def P12401285336605409786.Spec : Prop :=
  ∀ n, P12401285336605409786.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P3897313931007938305

`p?[A175887(n+1)+A008706(A007775(n+1))]`
-/

namespace A140732.P3897313931007938305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + A008706 (A007775 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P3897313931007938305

namespace A140732

/-- `p?[A175887(n+1)+A008706(A007775(n+1))]` -/
def P3897313931007938305.Spec : Prop :=
  ∀ n, P3897313931007938305.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P898039945125793857

`p?[A091998(A091998(n+1))-A030118(n)]`
-/

namespace A140732.P898039945125793857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (A091998 (n + 1)).toNat - A030118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P898039945125793857

namespace A140732

/-- `p?[A091998(A091998(n+1))-A030118(n)]` -/
def P898039945125793857.Spec : Prop :=
  ∀ n, P898039945125793857.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P10157181617245734661

`p?[A298036(A298036(n))-A244477(n+1)]`
-/

namespace A140732.P10157181617245734661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298036 (A298036 n).toNat - A244477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P10157181617245734661

namespace A140732

/-- `p?[A298036(A298036(n))-A244477(n+1)]` -/
def P10157181617245734661.Spec : Prop :=
  ∀ n, P10157181617245734661.a n = A140732 (n + 1)

end A140732

/-! ## A140732.P12774338662433733691

`p?[A008486(A219529(n)+A008458(n))+n]`
-/

namespace A140732.P12774338662433733691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A219529 n + A008458 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140732.P12774338662433733691

namespace A140732

/-- `p?[A008486(A219529(n)+A008458(n))+n]` -/
def P12774338662433733691.Spec : Prop :=
  ∀ n, P12774338662433733691.a n = A140732 (n + 1)

end A140732

/-!
# A140735: Triangle read by rows, X^n * [1,0,0,0,...]; where X = a tridiagonal matrix with (1,2,3,...) in the main diagonal and (1,1,1,...) in the sub and subsubdiagonals.

The programs for A140735, there is no canonical definition to state claims against.
-/

/-! ## A140735.P504181086002377079

`A304972(comp[round(sqrt(n+1))²+n]+1)`
-/

namespace A140735.P504181086002377079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304972 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A140735.P504181086002377079

/-!
# A140736: Triangle read by rows, X^n * [1,0,0,0,...]; where X = a tridiagonal matrix with (1,0,1,0,1,...) in the main diagonal and (1,1,1,...) in the sub- and subsubdiagonals.

The programs for A140736, there is no canonical definition to state claims against.
-/

/-! ## A140736.P4351867626253776714

`A065941(comp[round(sqrt(n+1))²+n])`
-/

namespace A140736.P4351867626253776714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A140736.P4351867626253776714

/-! ## A140736.P2850586022759954522

`abs(A108299(A161983(n)))`
-/

namespace A140736.P2850586022759954522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (A161983 n).toNat|

end

end A140736.P2850586022759954522

/-! ## A140736.P3598576449157759933

`A140737(A020703(n+1))`
-/

namespace A140736.P3598576449157759933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140737 (A020703 (n + 1)).toNat

end

end A140736.P3598576449157759933

/-! ## A140736.P4298685599756206679

`A103631(A317303(n+1))`
-/

namespace A140736.P4298685599756206679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (A317303 (n + 1)).toNat

end

end A140736.P4298685599756206679

/-! ## A140736.P17581146024148422412

`abs(A108299(A316965(n)+1))`
-/

namespace A140736.P17581146024148422412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (A316965 n + 1).toNat|

end

end A140736.P17581146024148422412

/-! ## A140736.P4624927991443497932

`abs(A108299(comp[A162917(n+1)]))`
-/

namespace A140736.P4624927991443497932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108299 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A140736.P4624927991443497932

/-! ## A140736.P6124694741606952094

`A065941(A161983(n))^A056926(n)`
-/

namespace A140736.P6124694741606952094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065941 (A161983 n).toNat : ℚ) ^ (A056926 n : ℤ)

end

end A140736.P6124694741606952094

/-! ## A140736.P5880344148441910883

`A065941(A161983(n))%A017053(n)`
-/

namespace A140736.P5880344148441910883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065941 (A161983 n).toNat) (A017053 n)

end

end A140736.P5880344148441910883

/-! ## A140736.P12511897776391157546

`gcd(A065941(A161983(n)), A151935(n))`
-/

namespace A140736.P12511897776391157546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065941 (A161983 n).toNat) (A151935 n)

end

end A140736.P12511897776391157546

/-! ## A140736.P7418870732289010895

`A103631(eq[A155997(n), A206735(n)])`
-/

namespace A140736.P7418870732289010895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155997 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A140736.P7418870732289010895

/-!
# A140737: Triangle read by rows, X^n * [1,0,0,0,...]; where X = an infinite tridiagonal matrix with (1,1,1,...) in the main and subdiagonals and (1,0,1,0,1,...) in the subsubdiagonal.

The programs for A140737, there is no canonical definition to state claims against.
-/

/-! ## A140737.P9779001612293909394

`A046854(comp[round(sqrt(n+1))²+n])`
-/

namespace A140737.P9779001612293909394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A140737.P9779001612293909394

/-! ## A140737.P6922064054906768575

`abs(A066170(A161983(n)))`
-/

namespace A140737.P6922064054906768575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066170 (A161983 n).toNat|

end

end A140737.P6922064054906768575

/-! ## A140737.P13195345752807540618

`abs(A130777(A316670(n+1)))`
-/

namespace A140737.P13195345752807540618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130777 (A316670 (n + 1)).toNat|

end

end A140737.P13195345752807540618

/-! ## A140737.P4703888421039909223

`A140736(A020703(n+1)-1)`
-/

namespace A140737.P4703888421039909223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140736 (A020703 (n + 1) - 1).toNat

end

end A140737.P4703888421039909223

/-! ## A140737.P6859094837945498160

`abs(A066170(comp[A162917(n+1)]))`
-/

namespace A140737.P6859094837945498160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066170 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A140737.P6859094837945498160

/-! ## A140737.P2055784254278720616

`abs(A130777(comp[A162917(n+1)]))`
-/

namespace A140737.P2055784254278720616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A140737.P2055784254278720616

/-! ## A140737.P10261397666334354053

`abs(A267482(comp[A162917(n+1)]))`
-/

namespace A140737.P10261397666334354053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162917 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267482 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A140737.P10261397666334354053

/-! ## A140737.P1209491310855713893

`A046854(A161983(n))^A056926(n)`
-/

namespace A140737.P1209491310855713893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046854 (A161983 n).toNat : ℚ) ^ (A056926 n : ℤ)

end

end A140737.P1209491310855713893

/-! ## A140737.P3790283690385098705

`A046854(A161983(n))%A017053(n)`
-/

namespace A140737.P3790283690385098705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046854 (A161983 n).toNat) (A017053 n)

end

end A140737.P3790283690385098705

/-! ## A140737.P7750437618441558189

`gcd(A000122(n), A066170(A161983(n)))`
-/

namespace A140737.P7750437618441558189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 n) (A066170 (A161983 n).toNat)

end

end A140737.P7750437618441558189

/-!
# A140738: a(n) = (A139640(n) - 7)/24.

The programs for A140738, there is no canonical definition to state claims against.
-/

/-! ## A140738.P3126812168224994662

`(A139640(n+1)-7)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140738.P3126812168224994662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139640 (n + 1) - 7 : ℚ) / 24

end

end A140738.P3126812168224994662

/-! ## A140738.P2222329311173115675

`floor(A139640(n+1)/24)`
-/

namespace A140738.P2222329311173115675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139640 (n + 1) : ℚ) / 24⌋

end

end A140738.P2222329311173115675

/-! ## A140738.P1572788665530034404

`A140739(n)+a(n-1)` with `a(0)=6`
-/

namespace A140738.P1572788665530034404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A140739 n + a (n - 1)

end

end A140738.P1572788665530034404

/-! ## A140738.P10841990555275899674

`A194698(A139640(n+1))`
-/

namespace A140738.P10841990555275899674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A139640 (n + 1)).toNat

end

end A140738.P10841990555275899674

/-!
# A140739: First differences of A140738.

The programs for A140739, there is no canonical definition to state claims against.
-/

/-! ## A140739.P9368521459597259363

`Δ[A140738(n+1)]`
-/

namespace A140739.P9368521459597259363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140739.P9368521459597259363

/-! ## A140739.P1302153060210734672

`Δ[A139640(n+1)/24]`
-/

namespace A140739.P1302153060210734672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139640 (n + 1) : ℚ) / 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140739.P1302153060210734672

/-! ## A140739.P5478312663341825269

`Δ[record[A140738(A051340(n))]]`
-/

namespace A140739.P5478312663341825269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140738 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140739.P5478312663341825269

/-! ## A140739.P4445449824305552565

`Δ[record[A140738(A065648(n))]]`
-/

namespace A140739.P4445449824305552565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140738 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140739.P4445449824305552565

/-! ## A140739.P1654760702523157603

`Δ[record[A140738(A106466(n))]]`
-/

namespace A140739.P1654760702523157603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140738 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140739.P1654760702523157603

/-!
# A140740: Triangle read by rows: T(n,n) = 1 and for k with 1 <= k < n: T(n+1,k) = T(n,k) + T(n - n mod k, k).

The programs for A140740, there is no canonical definition to state claims against.
-/

/-! ## A140740.P17476498576863127641

`A356517(∑[char[∑[n]]]²-n+1)+1`
-/

namespace A140740.P17476498576863127641
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356517 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat + 1

end

end A140740.P17476498576863127641

/-! ## A140740.P5041176330094373780

`A280577(A089606(n+1)%A211745(n+1))`
-/

namespace A140740.P5041176330094373780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280577 (Int.tmod (A089606 (n + 1)) (A211745 (n + 1))).toNat

end

end A140740.P5041176330094373780

/-! ## A140740.P15445970138651931748

`A280577(A089606(n+1))%A096604(3*n+1)`
-/

namespace A140740.P15445970138651931748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280577 (A089606 (n + 1)).toNat) (A096604 (3 * n + 1))

end

end A140740.P15445970138651931748

/-! ## A140740.P7098129346351180994

`A000005(A134145(∑[A008284(n+1)]))`
-/

namespace A140740.P7098129346351180994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134145 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A140740.P7098129346351180994

/-! ## A140740.P16519477716624746494

`A001817(A134151(n+1))`
-/

namespace A140740.P16519477716624746494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (A134151 (n + 1)).toNat

end

end A140740.P16519477716624746494

/-!
# A140741: Sums of rows of the triangle in A140740.

The programs for A140741, there is no canonical definition to state claims against.
-/

/-! ## A140741.P13594570307209074819

`∑[∑[A131818(A095817(n))]]`
-/

namespace A140741.P13594570307209074819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A095817 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140741.P13594570307209074819

/-! ## A140741.P11808957847973262251

`A002024(A007070(n))+∏[xor(1, n)/(n+1)+1]-2`
-/

namespace A140741.P11808957847973262251
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℚ) / (n + 1 : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (A007070 n).toNat : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A140741.P11808957847973262251

/-! ## A140741.P5481578112945838896

`A375057(A005318(n))-A028422(2*(n+1))`
-/

namespace A140741.P5481578112945838896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375057 (A005318 n).toNat - A028422 (2 * (n + 1))

end

end A140741.P5481578112945838896

/-!
# A140742: Primes congruent to 73 or 137 mod 210.

The programs for A140742, the canonical program `A140742.P11985771280274507556` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140742 has offset 1).

The definition of A140742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140742.P11985771280274507556

`p?[A241521(n+1)+A206525(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140742

/-- `p?[A241521(n+1)+A206525(n+1)]` -/
def P11985771280274507556.Spec : Prop :=
  ∀ n, P11985771280274507556.a n = A140742 (n + 1)

theorem P11985771280274507556.correct : P11985771280274507556.Spec := by
  intro n
  simp only [A140742, Nat.add_sub_cancel]

end A140742

/-! ## A140742.P5865611437831673327

`p?[A158065(n+1)-A330396(A113655(n+1))]`
-/

namespace A140742.P5865611437831673327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (n + 1) - A330396 (A113655 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P5865611437831673327

namespace A140742

/-- `p?[A158065(n+1)-A330396(A113655(n+1))]` -/
def P5865611437831673327.Spec : Prop :=
  ∀ n, P5865611437831673327.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P13749846256291739767

`p?[A065187(n+1)+2*A017317(n)]`
-/

namespace A140742.P13749846256291739767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (n + 1) + 2 * A017317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P13749846256291739767

namespace A140742

/-- `p?[A065187(n+1)+2*A017317(n)]` -/
def P13749846256291739767.Spec : Prop :=
  ∀ n, P13749846256291739767.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P3938817098618605798

`p?[A248474(A004442(A017029(n)))]`
-/

namespace A140742.P3938817098618605798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248474 (A004442 (A017029 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P3938817098618605798

namespace A140742

/-- `p?[A248474(A004442(A017029(n)))]` -/
def P3938817098618605798.Spec : Prop :=
  ∀ n, P3938817098618605798.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P18121496308497764538

`p?[A017293(A063226(n+1))+A008851(n+1)]`
-/

namespace A140742.P18121496308497764538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (A063226 (n + 1)).toNat + A008851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P18121496308497764538

namespace A140742

/-- `p?[A017293(A063226(n+1))+A008851(n+1)]` -/
def P18121496308497764538.Spec : Prop :=
  ∀ n, P18121496308497764538.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P12951885271006363177

`p?[A186731(n)+A022144(A301688(n))]`
-/

namespace A140742.P12951885271006363177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n + A022144 (A301688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P12951885271006363177

namespace A140742

/-- `p?[A186731(n)+A022144(A301688(n))]` -/
def P12951885271006363177.Spec : Prop :=
  ∀ n, P12951885271006363177.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P3261010316547969222

`p?[A047341(A155449(n+1)-n)]`
-/

namespace A140742.P3261010316547969222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047341 (A155449 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P3261010316547969222

namespace A140742

/-- `p?[A047341(A155449(n+1)-n)]` -/
def P3261010316547969222.Spec : Prop :=
  ∀ n, P3261010316547969222.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P7838342344704821920

`p?[A054967(A017281(n))+A008854(n+1)]`
-/

namespace A140742.P7838342344704821920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (A017281 n).toNat + A008854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P7838342344704821920

namespace A140742

/-- `p?[A054967(A017281(n))+A008854(n+1)]` -/
def P7838342344704821920.Spec : Prop :=
  ∀ n, P7838342344704821920.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P11584327812243946453

`p?[A065187(n+1)+A005843(A017317(n))]`
-/

namespace A140742.P11584327812243946453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065187 (n + 1) + A005843 (A017317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140742.P11584327812243946453

namespace A140742

/-- `p?[A065187(n+1)+A005843(A017317(n))]` -/
def P11584327812243946453.Spec : Prop :=
  ∀ n, P11584327812243946453.a n = A140742 (n + 1)

end A140742

/-! ## A140742.P10852294209992301765

`∩[A140533(n+1), A315469(n)]`
-/

namespace A140742.P10852294209992301765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140742.P10852294209992301765

namespace A140742

/-- `∩[A140533(n+1), A315469(n)]` -/
def P10852294209992301765.Spec : Prop :=
  ∀ n, (P10852294209992301765.a n : ℤ) = A140742 (n + 1)

end A140742

/-!
# A140743: Primes congruent to 79 or 131 mod 210.

The programs for A140743, the canonical program `A140743.P10125303616789807518` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140743 has offset 1).

The definition of A140743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1786 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140743.P3297973402157866579

`p?[A298468(n)+A053742(n)]`
-/

namespace A140743.P3297973402157866579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298468 n + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P3297973402157866579

namespace A140743

/-- `p?[A298468(n)+A053742(n)]` -/
def P3297973402157866579.Spec : Prop :=
  ∀ n, P3297973402157866579.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P10125303616789807518

`p?[A053742(n)+A047209(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140743

/-- `p?[A053742(n)+A047209(n+1)]` -/
def P10125303616789807518.Spec : Prop :=
  ∀ n, P10125303616789807518.a n = A140743 (n + 1)

theorem P10125303616789807518.correct : P10125303616789807518.Spec := by
  intro n
  simp only [A140743, Nat.add_sub_cancel]

end A140743

/-! ## A140743.P14936793619267559368

`p?[A217562(n+1)+A053742(n)]`
-/

namespace A140743.P14936793619267559368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217562 (n + 1) + A053742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P14936793619267559368

namespace A140743

/-- `p?[A217562(n+1)+A053742(n)]` -/
def P14936793619267559368.Spec : Prop :=
  ∀ n, P14936793619267559368.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P7839980211688808781

`p?[9*A136290(n)-n]`
-/

namespace A140743.P7839980211688808781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A136290 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P7839980211688808781

namespace A140743

/-- `p?[9*A136290(n)-n]` -/
def P7839980211688808781.Spec : Prop :=
  ∀ n, P7839980211688808781.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P5285818625077566665

`p?[A255414(2*(n+1))-6]`
-/

namespace A140743.P5285818625077566665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255414 (2 * (n + 1)) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P5285818625077566665

namespace A140743

/-- `p?[A255414(2*(n+1))-6]` -/
def P5285818625077566665.Spec : Prop :=
  ∀ n, P5285818625077566665.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P11350170240589133163

`p?[A305548(n)-A006368(n)]`
-/

namespace A140743.P11350170240589133163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 n - A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P11350170240589133163

namespace A140743

/-- `p?[A305548(n)-A006368(n)]` -/
def P11350170240589133163.Spec : Prop :=
  ∀ n, P11350170240589133163.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P2151176725896979170

`p?[A183010(2*n+1)+A007494(3*n+2)]`
-/

namespace A140743.P2151176725896979170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (2 * n + 1) + A007494 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P2151176725896979170

namespace A140743

/-- `p?[A183010(2*n+1)+A007494(3*n+2)]` -/
def P2151176725896979170.Spec : Prop :=
  ∀ n, P2151176725896979170.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P14690796137279337342

`p?[A001651(9*A016825(n)-n)]`
-/

namespace A140743.P14690796137279337342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (9 * A016825 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P14690796137279337342

namespace A140743

/-- `p?[A001651(9*A016825(n)-n)]` -/
def P14690796137279337342.Spec : Prop :=
  ∀ n, P14690796137279337342.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P18177965585048383016

`p?[A006368(A008600(n))-A006368(n)]`
-/

namespace A140743.P18177965585048383016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A008600 n).toNat - A006368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140743.P18177965585048383016

namespace A140743

/-- `p?[A006368(A008600(n))-A006368(n)]` -/
def P18177965585048383016.Spec : Prop :=
  ∀ n, P18177965585048383016.a n = A140743 (n + 1)

end A140743

/-! ## A140743.P15043134372507369823

`∩[A140506(n+1), A313875(n)]`
-/

namespace A140743.P15043134372507369823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140743.P15043134372507369823

namespace A140743

/-- `∩[A140506(n+1), A313875(n)]` -/
def P15043134372507369823.Spec : Prop :=
  ∀ n, (P15043134372507369823.a n : ℤ) = A140743 (n + 1)

end A140743

/-!
# A140744: Arises in enumerating iterated point-line configurations.

The programs for A140744, there is no canonical definition to state claims against.
-/

/-! ## A140744.P10838413090566301127

`A048766(A111570(n))+3`
-/

namespace A140744.P10838413090566301127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A111570 n).toNat + 3

end

end A140744.P10838413090566301127

/-! ## A140744.P5206893659777396007

`A100196(A253926(n)+8)`
-/

namespace A140744.P5206893659777396007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A253926 (n + 15) + 8).toNat

end

end A140744.P5206893659777396007

/-! ## A140744.P15310231065870677175

`A048766(A005684(n+6))+3`
-/

namespace A140744.P15310231065870677175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A005684 (n + 6)).toNat + 3

end

end A140744.P15310231065870677175

/-! ## A140744.P6604899728401099815

`A048766(5*A126116(n))+3`
-/

namespace A140744.P6604899728401099815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (5 * A126116 n).toNat + 3

end

end A140744.P6604899728401099815

/-! ## A140744.P14361231693850460697

`A048766(2*A000032(n)-1)+3`
-/

namespace A140744.P14361231693850460697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (2 * A000032 n - 1).toNat + 3

end

end A140744.P14361231693850460697

/-!
# A140745: Smallest prime p such that the Mersenne number A000225(p) = 2^p - 1 has exactly n prime factors (counted with multiplicity).

The programs for A140745, there is no canonical definition to state claims against.
-/

/-! ## A140745.P13901216085026578095

`A292473(∑[n+1])`
-/

namespace A140745.P13901216085026578095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292473 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140745.P13901216085026578095

/-! ## A140745.P2152030562803982384

`A014963(A292473(C(n+2, 2)))`
-/

namespace A140745.P2152030562803982384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A292473 (Nat.choose (n + 2) 2)).toNat

end

end A140745.P2152030562803982384

/-!
# A140747: a(n) is the number of divisors of n that are coprime to the next larger divisor of n.

The programs for A140747, there is no canonical definition to state claims against.
-/

/-! ## A140747.P8987033523622097463

`A032741(n+1)-A140748(n+1)`
-/

namespace A140747.P8987033523622097463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A140748 (n + 1)

end

end A140747.P8987033523622097463

/-! ## A140747.P16446403071630225471

`A000005(n+1)-(A140748(n+1)+1)`
-/

namespace A140747.P16446403071630225471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A140748 (n + 1) + 1)

end

end A140747.P16446403071630225471

/-! ## A140747.P700377236407764106

`A025581(A140748(n+1)+A066446(n+1))`
-/

namespace A140747.P700377236407764106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A140748 (n + 1) + A066446 (n + 1)).toNat

end

end A140747.P700377236407764106

/-! ## A140747.P5319642396591867756

`A229621(A000005(n+1)-A140748(n+1))`
-/

namespace A140747.P5319642396591867756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229621 (A000005 (n + 1) - A140748 (n + 1)).toNat

end

end A140747.P5319642396591867756

/-! ## A140747.P14769490593543848201

`A123108(A114003(n+1))-A140748(n+1)`
-/

namespace A140747.P14769490593543848201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A114003 (n + 1)).toNat - A140748 (n + 1)

end

end A140747.P14769490593543848201

/-! ## A140747.P18389265815936890552

`A057979(A136165(n+1)+A136164(n+1))`
-/

namespace A140747.P18389265815936890552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A136165 (n + 1) + A136164 (n + 1)).toNat

end

end A140747.P18389265815936890552

/-! ## A140747.P10675199152645902465

`and(A002223(n+1), A330757(n+1))`
-/

namespace A140747.P10675199152645902465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A330757 (n + 1))

end

end A140747.P10675199152645902465

/-! ## A140747.P15385766062456953760

`and(A045535(n), A330757(n+1))`
-/

namespace A140747.P15385766062456953760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A330757 (n + 1))

end

end A140747.P15385766062456953760

/-! ## A140747.P4254637109166470584

`and(A141311(n+1), A330757(n+1))`
-/

namespace A140747.P4254637109166470584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A330757 (n + 1))

end

end A140747.P4254637109166470584

/-! ## A140747.P9174879624353260248

`and(A176500(n+1), A330757(n+1))`
-/

namespace A140747.P9174879624353260248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A176500 (n + 1)) (A330757 (n + 1))

end

end A140747.P9174879624353260248

/-!
# A140748: a(n) is the number of divisors of n that are not coprime to the next larger divisor of n.

The programs for A140748, there is no canonical definition to state claims against.
-/

/-! ## A140748.P13541333807024130470

`A032741(n+1)-A140747(n+1)`
-/

namespace A140748.P13541333807024130470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A140747 (n + 1)

end

end A140748.P13541333807024130470

/-! ## A140748.P14376806037229189951

`A000005(n+1)-(A140747(n+1)+1)`
-/

namespace A140748.P14376806037229189951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A140747 (n + 1) + 1)

end

end A140748.P14376806037229189951

/-! ## A140748.P8101880139967743024

`A114003(n+1)%(A140747(n+1)+A000005(n+1))`
-/

namespace A140748.P8101880139967743024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114003 (n + 1)) (A140747 (n + 1) + A000005 (n + 1))

end

end A140748.P8101880139967743024

/-! ## A140748.P3982940775103664507

`A004526(A136167(n+1)+A136166(n+1))`
-/

namespace A140748.P3982940775103664507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A136167 (n + 1) + A136166 (n + 1)).toNat

end

end A140748.P3982940775103664507

/-! ## A140748.P4213940078696279802

`A000196(A136166(n+1)*A136167(n+1))`
-/

namespace A140748.P4213940078696279802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A136166 (n + 1) * A136167 (n + 1)).toNat

end

end A140748.P4213940078696279802

/-! ## A140748.P54168830493344853

`A001222(A293514(n+1))-A140747(n+1)`
-/

namespace A140748.P54168830493344853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293514 (n + 1)).toNat - A140747 (n + 1)

end

end A140748.P54168830493344853

/-!
# A140749: Triangle c(n,k) of the numerators of coefficients [x^k] P(n,x) of the polynomials P(n,x) of A129891.

The programs for A140749, the canonical program `A140749.P4451316965419510155` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140749 has offset 0).

The definition of A140749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140749.P4137664848659082067

`A008275(n+1)/A173333(n+1)*A141412(n)`
-/

namespace A140749.P4137664848659082067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A173333 (n + 1) : ℚ) * (A141412 n : ℚ)

end

end A140749.P4137664848659082067

namespace A140749

/-- `A008275(n+1)/A173333(n+1)*A141412(n)` -/
def P4137664848659082067.Spec : Prop :=
  ∀ n, P4137664848659082067.a n = (A140749 n : ℚ)

end A140749

/-! ## A140749.P4451316965419510155

`A008275(n+1)/gcd(A130534(n), A173333(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140749

/-- `A008275(n+1)/gcd(A130534(n), A173333(n+1))` -/
def P4451316965419510155.Spec : Prop :=
  ∀ n, P4451316965419510155.a n = (A140749 n : ℚ)

end A140749

/-!
# A140750: Triangle read by rows, X^n * [1,0,0,0,...]; where X = an infinite tridiagonal matrix with (1,0,1,0,1,...) in the main and subsubdiagonals and (1,1,1,...) in the subdiagonal.

The programs for A140750, there is no canonical definition to state claims against.
-/

/-! ## A140750.P11349475890089937725

`A008288(A117384(n+1)-1)`
-/

namespace A140750.P11349475890089937725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A117384 (n + 1) - 1).toNat

end

end A140750.P11349475890089937725

/-! ## A140750.P3664418317302934705

`A245212(A249095(n))%p?[A026637(n)]`
-/

namespace A140750.P3664418317302934705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245212 (A249095 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A140750.P3664418317302934705

/-! ## A140750.P5322136621553999517

`A245212(A249095(n))+A000007(A055781(n+1))`
-/

namespace A140750.P5322136621553999517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245212 (A249095 n).toNat + A000007 (A055781 (n + 1)).toNat

end

end A140750.P5322136621553999517

/-! ## A140750.P17729387900714275535

`A001222(A000978(n+1))*A245212(A249095(n))`
-/

namespace A140750.P17729387900714275535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000978 (n + 1)).toNat * A245212 (A249095 n).toNat

end

end A140750.P17729387900714275535

/-! ## A140750.P6915608399924774731

`A355773(A249095(n)%A249092(n+1))`
-/

namespace A140750.P6915608399924774731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355773 (Int.tmod (A249095 n) (A249092 (n + 1))).toNat

end

end A140750.P6915608399924774731

/-!
# A140751: Triangle read by rows, X^n * [1,0,0,0,...] where X = an infinite tridiagonal matrix with (1,0,1,0,1,...) in the main and subdiagonals and (1,1,1,...) in the subsubdiagonal.

The programs for A140751, the canonical program `A140751.P16826418069839501853` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140751 has offset 0).

The definition of A140751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140751.P12637665263636305280

`A247644(n)/a(n-1)` with `a(0)=1`
-/

namespace A140751.P12637665263636305280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A247644 n : ℚ) / a (n - 1)

end

end A140751.P12637665263636305280

namespace A140751

/-- `A247644(n)/a(n-1)` -/
def P12637665263636305280.Spec : Prop :=
  ∀ n, P12637665263636305280.a n = (A140751 n : ℚ)

end A140751

/-! ## A140751.P3275773825926420384

`A007318(floor((sqrt(n)+n)/2))`
-/

namespace A140751.P3275773825926420384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(Real.sqrt (n : ℝ) + (n : ℝ)) / 2⌋.toNat

end

end A140751.P3275773825926420384

namespace A140751

/-- `A007318(floor((sqrt(n)+n)/2))` -/
def P3275773825926420384.Spec : Prop :=
  ∀ n, P3275773825926420384.a n = A140751 n

end A140751

/-! ## A140751.P16826418069839501853

`C(floor(sqrt(n)), A088226(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140751

/-- `C(floor(sqrt(n)), A088226(n+1))` -/
def P16826418069839501853.Spec : Prop :=
  ∀ n, (P16826418069839501853.a n : ℤ) = A140751 n

theorem P16826418069839501853.correct : P16826418069839501853.Spec := by
  intro n
  simp only [A140751]

end A140751

/-! ## A140751.P4896387315518168628

`A152905(A028392(n))`
-/

namespace A140751.P4896387315518168628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A028392 n).toNat

end

end A140751.P4896387315518168628

namespace A140751

/-- `A152905(A028392(n))` -/
def P4896387315518168628.Spec : Prop :=
  ∀ n, P4896387315518168628.a n = A140751 n

end A140751

/-! ## A140751.P9738338125008478200

`A152905(A183570(n))`
-/

namespace A140751.P9738338125008478200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152905 (A183570 n).toNat

end

end A140751.P9738338125008478200

namespace A140751

/-- `A152905(A183570(n))` -/
def P9738338125008478200.Spec : Prop :=
  ∀ n, P9738338125008478200.a n = A140751 n

end A140751

/-! ## A140751.P18429604352542833678

`A074909(floor(A028391(n)/2))`
-/

namespace A140751.P18429604352542833678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 ⌊(A028391 n : ℚ) / 2⌋.toNat

end

end A140751.P18429604352542833678

namespace A140751

/-- `A074909(floor(A028391(n)/2))` -/
def P18429604352542833678.Spec : Prop :=
  ∀ n, P18429604352542833678.a n = A140751 n

end A140751

/-! ## A140751.P15525956222961309828

`A051159(eq[0, A115718(n)])`
-/

namespace A140751.P15525956222961309828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A140751.P15525956222961309828

namespace A140751

/-- `A051159(eq[0, A115718(n)])` -/
def P15525956222961309828.Spec : Prop :=
  ∀ n, P15525956222961309828.a n = A140751 n

end A140751

/-! ## A140751.P10905013030174802309

`A258445(comp[∑[2*n]]%2+n)`
-/

namespace A140751.P10905013030174802309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258445 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 + n)

end

end A140751.P10905013030174802309

namespace A140751

/-- `A258445(comp[∑[2*n]]%2+n)` -/
def P10905013030174802309.Spec : Prop :=
  ∀ n, P10905013030174802309.a n = A140751 n

end A140751

/-! ## A140751.P17796674067136157483

`A258445(A071028(n)+n)`
-/

namespace A140751.P17796674067136157483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258445 (A071028 n + (n : ℤ)).toNat

end

end A140751.P17796674067136157483

namespace A140751

/-- `A258445(A071028(n)+n)` -/
def P17796674067136157483.Spec : Prop :=
  ∀ n, P17796674067136157483.a n = A140751 n

end A140751

/-! ## A140751.P15489589290622547239

`A177276(A071028(n)-1+n)`
-/

namespace A140751.P15489589290622547239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177276 (A071028 n - 1 + (n : ℤ)).toNat

end

end A140751.P15489589290622547239

namespace A140751

/-- `A177276(A071028(n)-1+n)` -/
def P15489589290622547239.Spec : Prop :=
  ∀ n, P15489589290622547239.a n = A140751 n

end A140751

/-!
# A140752: Indices of elements of A005179 that belong to A134865 (in order of their appearance in A134865). The sorted version of this sequence is given by A138394.

The programs for A140752, there is no canonical definition to state claims against.
-/

/-! ## A140752.P15387512771141636365

`∏{e}[A134865(n+1), #+1]`
-/

namespace A140752.P15387512771141636365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A140752.P15387512771141636365

/-! ## A140752.P14379428247725843920

`A138394(A275164(n+1)%A138400(n+1))`
-/

namespace A140752.P14379428247725843920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138394 (Int.tmod (A275164 (n + 1)) (A138400 (n + 1))).toNat

end

end A140752.P14379428247725843920

/-! ## A140752.P10421818528112569298

`A138394(∪[A001013(n+1), A132263(n+1)])`
-/

namespace A140752.P10421818528112569298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138394 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A140752.P10421818528112569298

/-! ## A140752.P16066945940111926337

`A138394(∪[A002182(n+1), A132263(n+1)])`
-/

namespace A140752.P16066945940111926337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138394 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A140752.P16066945940111926337

/-! ## A140752.P4600278312892020346

`A138394(∪[A004394(n+1), A132263(n+1)])`
-/

namespace A140752.P4600278312892020346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132263 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138394 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A140752.P4600278312892020346

/-!
# A140753: Subsequence of elements of A005179 that appear in A134865.

The programs for A140753, there is no canonical definition to state claims against.
-/

/-! ## A140753.P15820782605301481603

`A005179(A138394(n+1))`
-/

namespace A140753.P15820782605301481603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A138394 (n + 1)).toNat

end

end A140753.P15820782605301481603

/-! ## A140753.P14719643333007847783

`∩[A134865(n+1), A333964(n+1)]`
-/

namespace A140753.P14719643333007847783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140753.P14719643333007847783

/-! ## A140753.P14867759898018829286

`A134865(∑[A034450(n+1)!])`
-/

namespace A140753.P14867759898018829286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A034450 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140753.P14867759898018829286

/-! ## A140753.P8942894671004696217

`A134865(A034450(n+1)!+n)`
-/

namespace A140753.P8942894671004696217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (Nat.factorial (A034450 (n + 1)).toNat + n)

end

end A140753.P8942894671004696217

/-! ## A140753.P13037025004557036269

`A134865(∑[A219585(n-∏{digits}[n, #])])`
-/

namespace A140753.P13037025004557036269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219585 (n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134865 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140753.P13037025004557036269

/-!
# A140754: Array T(n,k) = 19*n^2 + 10*k^2, read by rows, with 14 columns and 14 rows.

The programs for A140754, there is no canonical definition to state claims against.
-/

/-! ## A140754.P10393045161995463461

`A140340(record[A077168(n)%A000978(n+1)])`
-/

namespace A140754.P10393045161995463461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077168 n) (A000978 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A140754.P10393045161995463461

/-! ## A140754.P5834265751357175906

`A140340(∑[A281661(A180649(n))])`
-/

namespace A140754.P5834265751357175906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281661 (A180649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140754.P5834265751357175906

/-! ## A140754.P9131802814797879894

`A140340(∑[A062378(A081668(n))])`
-/

namespace A140754.P9131802814797879894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (A081668 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140754.P9131802814797879894

/-! ## A140754.P9037905206542013850

`A140340(A187829(n+1)+A180649(n))`
-/

namespace A140754.P9037905206542013850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140340 (A187829 (n + 1) + A180649 n).toNat

end

end A140754.P9037905206542013850

/-!
# A140755: Square array read by rows: T(n,k) = 41*n^2 + k^2 + n*k, with 20 columns.

The programs for A140755, there is no canonical definition to state claims against.
-/

/-! ## A140755.P2692338167900727523

`record[A202018(A265691(n+1))]`
-/

namespace A140755.P2692338167900727523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A265691 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140755.P2692338167900727523

/-! ## A140755.P4113273338616553009

`record[A202018(A299755(n+1))]`
-/

namespace A140755.P4113273338616553009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A299755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140755.P4113273338616553009

/-! ## A140755.P7700829729769547211

`record[A202018(A299756(n+1))]`
-/

namespace A140755.P7700829729769547211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A299756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140755.P7700829729769547211

/-!
# A140756: Count up to k sequence with alternating signs (k always positive).

The programs for A140756, the canonical program `A140756.P3277884654481900354` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140756 has offset 1).

The definition of A140756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140756.P3277884654481900354

`(-1)^(A004736(n+1)+1)*A002260(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A140756

/-- `(-1)^(A004736(n+1)+1)*A002260(n+1)` -/
def P3277884654481900354.Spec : Prop :=
  ∀ n, P3277884654481900354.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P10432144403325014090

`(-1)^(row(n)+col(n))*(col(n)+1)`
-/

namespace A140756.P10432144403325014090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triCol n + 1 : ℤ)

end

end A140756.P10432144403325014090

namespace A140756

/-- `(-1)^(row(n)+col(n))*(col(n)+1)` -/
def P10432144403325014090.Spec : Prop :=
  ∀ n, P10432144403325014090.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P14560054930039872770

`col(n)+1-(T(n-1,k-1)+T(n-1,k)+1)*T(n-1,k)` with `a(0)=1`
-/

namespace A140756.P14560054930039872770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n + 1) * SequenceMachineLib.triUp a n

end

end A140756.P14560054930039872770

namespace A140756

/-- `col(n)+1-(T(n-1,k-1)+T(n-1,k)+1)*T(n-1,k)` -/
def P14560054930039872770.Spec : Prop :=
  ∀ n, P14560054930039872770.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P8025764495354224880

`col(n)+(T(n,k-1)-(T(n-1,k)+1))*T(n-1,k)+1` with `a(0)=1`
-/

namespace A140756.P8025764495354224880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triLeft a n - (SequenceMachineLib.triUp a n + 1)) * SequenceMachineLib.triUp a n + 1

end

end A140756.P8025764495354224880

namespace A140756

/-- `col(n)+(T(n,k-1)-(T(n-1,k)+1))*T(n-1,k)+1` -/
def P8025764495354224880.Spec : Prop :=
  ∀ n, P8025764495354224880.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P2193088072121185303

`col(n)+(T(n-2,k-1)-(T(n-1,k)+1))*T(n-1,k)+1` with `a(0)=1`
-/

namespace A140756.P2193088072121185303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triUp2Left a n - (SequenceMachineLib.triUp a n + 1)) * SequenceMachineLib.triUp a n + 1

end

end A140756.P2193088072121185303

namespace A140756

/-- `col(n)+(T(n-2,k-1)-(T(n-1,k)+1))*T(n-1,k)+1` -/
def P2193088072121185303.Spec : Prop :=
  ∀ n, P2193088072121185303.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P10245829148558208334

`A001057(A131225(n+1))`
-/

namespace A140756.P10245829148558208334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A131225 (n + 1)).toNat

end

end A140756.P10245829148558208334

namespace A140756

/-- `A001057(A131225(n+1))` -/
def P10245829148558208334.Spec : Prop :=
  ∀ n, P10245829148558208334.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P4035490003308448442

`A103406(n)/A130595(n)`
-/

namespace A140756.P4035490003308448442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103406 n : ℚ) / (A130595 n : ℚ)

end

end A140756.P4035490003308448442

namespace A140756

/-- `A103406(n)/A130595(n)` -/
def P4035490003308448442.Spec : Prop :=
  ∀ n, P4035490003308448442.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P11088027189451483749

`A141611(n)/A103283(n)`
-/

namespace A140756.P11088027189451483749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A103283 n : ℚ)

end

end A140756.P11088027189451483749

namespace A140756

/-- `A141611(n)/A103283(n)` -/
def P11088027189451483749.Spec : Prop :=
  ∀ n, P11088027189451483749.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P3108389894053569839

`A002260(n+1)*A097807(n)`
-/

namespace A140756.P3108389894053569839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A097807 n

end

end A140756.P3108389894053569839

namespace A140756

/-- `A002260(n+1)*A097807(n)` -/
def P3108389894053569839.Spec : Prop :=
  ∀ n, P3108389894053569839.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P10354700508234466413

`(A002262(n)+1)*A097807(n)`
-/

namespace A140756.P10354700508234466413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A097807 n

end

end A140756.P10354700508234466413

namespace A140756

/-- `(A002262(n)+1)*A097807(n)` -/
def P10354700508234466413.Spec : Prop :=
  ∀ n, P10354700508234466413.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P5334143654360769008

`A104633(n+1)/A122432(n)`
-/

namespace A140756.P5334143654360769008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104633 (n + 1) : ℚ) / (A122432 n : ℚ)

end

end A140756.P5334143654360769008

namespace A140756

/-- `A104633(n+1)/A122432(n)` -/
def P5334143654360769008.Spec : Prop :=
  ∀ n, P5334143654360769008.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P11687833515439638100

`A127718(n+1)/A103316(n)`
-/

namespace A140756.P11687833515439638100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127718 (n + 1) : ℚ) / (A103316 n : ℚ)

end

end A140756.P11687833515439638100

namespace A140756

/-- `A127718(n+1)/A103316(n)` -/
def P11687833515439638100.Spec : Prop :=
  ∀ n, P11687833515439638100.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P12668378071844083530

`A248345(n)/A128176(n+1)`
-/

namespace A140756.P12668378071844083530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248345 n : ℚ) / (A128176 (n + 1) : ℚ)

end

end A140756.P12668378071844083530

namespace A140756

/-- `A248345(n)/A128176(n+1)` -/
def P12668378071844083530.Spec : Prop :=
  ∀ n, P12668378071844083530.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P14685209347660601509

`A095800(n+1)/A128180(n+1)`
-/

namespace A140756.P14685209347660601509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095800 (n + 1) : ℚ) / (A128180 (n + 1) : ℚ)

end

end A140756.P14685209347660601509

namespace A140756

/-- `A095800(n+1)/A128180(n+1)` -/
def P14685209347660601509.Spec : Prop :=
  ∀ n, P14685209347660601509.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P15672967098599505028

`2*A128179(n+1)-A002260(n+1)`
-/

namespace A140756.P15672967098599505028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128179 (n + 1) - A002260 (n + 1)

end

end A140756.P15672967098599505028

namespace A140756

/-- `2*A128179(n+1)-A002260(n+1)` -/
def P15672967098599505028.Spec : Prop :=
  ∀ n, P15672967098599505028.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P18014661152012029041

`A002260(n+1)*A033999(A025581(n))`
-/

namespace A140756.P18014661152012029041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A033999 (A025581 n).toNat

end

end A140756.P18014661152012029041

namespace A140756

/-- `A002260(n+1)*A033999(A025581(n))` -/
def P18014661152012029041.Spec : Prop :=
  ∀ n, P18014661152012029041.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P12208939231411728754

`(A002262(n)+1)*A033999(A025581(n))`
-/

namespace A140756.P12208939231411728754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A033999 (A025581 n).toNat

end

end A140756.P12208939231411728754

namespace A140756

/-- `(A002262(n)+1)*A033999(A025581(n))` -/
def P12208939231411728754.Spec : Prop :=
  ∀ n, P12208939231411728754.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P13408077560289543486

`A002260(n+1)*A009531(A099375(n))`
-/

namespace A140756.P13408077560289543486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A009531 (A099375 n).toNat

end

end A140756.P13408077560289543486

namespace A140756

/-- `A002260(n+1)*A009531(A099375(n))` -/
def P13408077560289543486.Spec : Prop :=
  ∀ n, P13408077560289543486.a n = A140756 (n + 1)

end A140756

/-! ## A140756.P2714893457223848921

`A002260(n+1)/A033999(A025581(n)+2)`
-/

namespace A140756.P2714893457223848921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A033999 (A025581 n + 2).toNat : ℚ)

end

end A140756.P2714893457223848921

namespace A140756

/-- `A002260(n+1)/A033999(A025581(n)+2)` -/
def P2714893457223848921.Spec : Prop :=
  ∀ n, P2714893457223848921.a n = (A140756 (n + 1) : ℚ)

end A140756

/-! ## A140756.P18247548466476666509

`A002260(n+1)*A007318(n)/A130595(n)`
-/

namespace A140756.P18247548466476666509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A007318 n : ℚ) / (A130595 n : ℚ)

end

end A140756.P18247548466476666509

namespace A140756

/-- `A002260(n+1)*A007318(n)/A130595(n)` -/
def P18247548466476666509.Spec : Prop :=
  ∀ n, P18247548466476666509.a n = (A140756 (n + 1) : ℚ)

end A140756

/-!
# A140757: Cumulative sums of A140756.

The programs for A140757, the canonical program `A140757.P932709549133875573` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140757 has offset 1).

The definition of A140757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140757.P2859619789989285146

`∑[(1-C(∑[char[∑[n]]], 2)+n)*(and(2, comp[∑[n]]+n)-1)]`
-/

namespace A140757.P2859619789989285146
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ)) * ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n + n) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P2859619789989285146

namespace A140757

/-- `∑[(1-C(∑[char[∑[n]]], 2)+n)*(and(2, comp[∑[n]]+n)-1)]` -/
def P2859619789989285146.Spec : Prop :=
  ∀ n, P2859619789989285146.a n = A140757 (n + 1)

end A140757

/-! ## A140757.P8572674467775160106

`∑[(1-C(∑[char[∑[n]]], 2)+n)/(and(2, comp[∑[n]]+n)-1)]`
-/

namespace A140757.P8572674467775160106
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ) : ℚ) / ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f5 j ≠ x) n + n) : ℤ) - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P8572674467775160106

namespace A140757

/-- `∑[(1-C(∑[char[∑[n]]], 2)+n)/(and(2, comp[∑[n]]+n)-1)]` -/
def P8572674467775160106.Spec : Prop :=
  ∀ n, P8572674467775160106.a n = (A140757 (n + 1) : ℚ)

end A140757

/-! ## A140757.P932709549133875573

`∑[A140756(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140757

/-- `∑[A140756(n+1)]` -/
def P932709549133875573.Spec : Prop :=
  ∀ n, P932709549133875573.a n = A140757 (n + 1)

theorem P932709549133875573.correct : P932709549133875573.Spec := by
  intro n
  simp only [A140757, Nat.add_sub_cancel]

end A140757

/-! ## A140757.P17259695502449354924

`abs(∑[A140756(-xor(n, -1))])`
-/

namespace A140757.P17259695502449354924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A140757.P17259695502449354924

namespace A140757

/-- `abs(∑[A140756(-xor(n, -1))])` -/
def P17259695502449354924.Spec : Prop :=
  ∀ n, P17259695502449354924.a n = A140757 (n + 1)

end A140757

/-! ## A140757.P6633631506985382125

`abs(∑[A140756(Δ[n²]-n)])`
-/

namespace A140757.P6633631506985382125
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A140757.P6633631506985382125

namespace A140757

/-- `abs(∑[A140756(Δ[n²]-n)])` -/
def P6633631506985382125.Spec : Prop :=
  ∀ n, P6633631506985382125.a n = A140757 (n + 1)

end A140757

/-! ## A140757.P6145836599229413801

`∑[(and(2, comp[∑[n]]+n)-1)*A002260(n+1)]`
-/

namespace A140757.P6145836599229413801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n) : ℤ) - 1) * A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P6145836599229413801

namespace A140757

/-- `∑[(and(2, comp[∑[n]]+n)-1)*A002260(n+1)]` -/
def P6145836599229413801.Spec : Prop :=
  ∀ n, P6145836599229413801.a n = A140757 (n + 1)

end A140757

/-! ## A140757.P1287471123636553905

`∑[A002260(n+1)*A033999(A025581(n))]`
-/

namespace A140757.P1287471123636553905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A033999 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P1287471123636553905

namespace A140757

/-- `∑[A002260(n+1)*A033999(A025581(n))]` -/
def P1287471123636553905.Spec : Prop :=
  ∀ n, P1287471123636553905.a n = A140757 (n + 1)

end A140757

/-! ## A140757.P8789962338850778301

`∑[-A140756(comp[∑[n]])]`
-/

namespace A140757.P8789962338850778301
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A140756 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P8789962338850778301

namespace A140757

/-- `∑[-A140756(comp[∑[n]])]` -/
def P8789962338850778301.Spec : Prop :=
  ∀ n, P8789962338850778301.a n = A140757 (n + 1)

end A140757

/-! ## A140757.P14757369223452241513

`a(n-1)+A140756(n+1)%record[A000010(n+1)]` with `a(0)=1`
-/

namespace A140757.P14757369223452241513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A140756 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A140757.P14757369223452241513

namespace A140757

/-- `a(n-1)+A140756(n+1)%record[A000010(n+1)]` -/
def P14757369223452241513.Spec : Prop :=
  ∀ n, P14757369223452241513.a n = A140757 (n + 1)

end A140757

/-! ## A140757.P2353218026300130751

`∑[A002260(n+1)/A033999(A025581(n)²)]`
-/

namespace A140757.P2353218026300130751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (A033999 (A025581 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P2353218026300130751

namespace A140757

/-- `∑[A002260(n+1)/A033999(A025581(n)²)]` -/
def P2353218026300130751.Spec : Prop :=
  ∀ n, P2353218026300130751.a n = (A140757 (n + 1) : ℚ)

end A140757

/-! ## A140757.P14749033834041047462

`∑[A164677(A253551(n+1))]`
-/

namespace A140757.P14749033834041047462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164677 (A253551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140757.P14749033834041047462

namespace A140757

/-- `∑[A164677(A253551(n+1))]` -/
def P14749033834041047462.Spec : Prop :=
  ∀ n, P14749033834041047462.a n = A140757 (n + 1)

end A140757

/-!
# A140758: a(n) = floor(n*Pi/2).

The programs for A140758, the canonical program `A140758.P12448805622776760400` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140758 has offset 0).

The definition of A140758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π/2)` (program `A140758.P12448805622776760400`, by `A140758.P12448805622776760400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140758.P12448805622776760400

`floor(n*π/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140758

/-- `floor(n*π/2)` -/
def P12448805622776760400.Spec : Prop :=
  ∀ n, P12448805622776760400.a n = A140758 n

theorem P12448805622776760400.correct : P12448805622776760400.Spec := by
  intro n
  simp only [A140758]

end A140758

/-! ## A140758.P9552179228098343019

`floor(n*acos(0))`
-/

namespace A140758.P9552179228098343019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arccos (0 : ℝ)⌋

end

end A140758.P9552179228098343019

namespace A140758

/-- `floor(n*acos(0))` -/
def P9552179228098343019.Spec : Prop :=
  ∀ n, P9552179228098343019.a n = A140758 n

theorem P9552179228098343019.correct : P9552179228098343019.Spec := by
  intro n
  simp only [A140758, Nat.add_sub_cancel, A140758.P9552179228098343019.a, A140758.P12448805622776760400.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A140758

/-! ## A140758.P990452101803371101

`floor(n*asin(1))`
-/

namespace A140758.P990452101803371101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.arcsin (1 : ℝ)⌋

end

end A140758.P990452101803371101

namespace A140758

/-- `floor(n*asin(1))` -/
def P990452101803371101.Spec : Prop :=
  ∀ n, P990452101803371101.a n = A140758 n

theorem P990452101803371101.correct : P990452101803371101.Spec := by
  intro n
  simp only [A140758, Nat.add_sub_cancel, A140758.P990452101803371101.a, A140758.P12448805622776760400.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A140758

/-! ## A140758.P6408534118899865888

`round(n*atan(2*n))`
-/

namespace A140758.P6408534118899865888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.arctan (2 * n : ℝ))

end

end A140758.P6408534118899865888

namespace A140758

/-- `round(n*atan(2*n))` -/
def P6408534118899865888.Spec : Prop :=
  ∀ n, P6408534118899865888.a n = A140758 n

end A140758

/-! ## A140758.P14967714297463577470

`round(n*acot(acot(2*n)))`
-/

namespace A140758.P14967714297463577470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (2 * n : ℝ)))

end

end A140758.P14967714297463577470

namespace A140758

/-- `round(n*acot(acot(2*n)))` -/
def P14967714297463577470.Spec : Prop :=
  ∀ n, P14967714297463577470.a n = A140758 n

end A140758

/-! ## A140758.P13176984096333948813

`-ceil(2*n*acot(-1))`
-/

namespace A140758.P13176984096333948813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(2 * n : ℝ) * SequenceMachineLib.acot (-1 : ℝ)⌉

end

end A140758.P13176984096333948813

namespace A140758

/-- `-ceil(2*n*acot(-1))` -/
def P13176984096333948813.Spec : Prop :=
  ∀ n, P13176984096333948813.a n = A140758 n

end A140758

/-! ## A140758.P5463983379171133692

`ceil(n*atan(n-2+ϕ))`
-/

namespace A140758.P5463983379171133692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.arctan (((n : ℤ) - 2 : ℝ) + Real.goldenRatio)⌉

end

end A140758.P5463983379171133692

namespace A140758

/-- `ceil(n*atan(n-2+ϕ))` -/
def P5463983379171133692.Spec : Prop :=
  ∀ n, P5463983379171133692.a n = A140758 n

end A140758

/-! ## A140758.P16165684148905135167

`floor(2*n*atan(1))%(2*n+1)`
-/

namespace A140758.P16165684148905135167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(2 * n : ℝ) * Real.arctan (1 : ℝ)⌋ (2 * n + 1 : ℤ)

end

end A140758.P16165684148905135167

namespace A140758

/-- `floor(2*n*atan(1))%(2*n+1)` -/
def P16165684148905135167.Spec : Prop :=
  ∀ n, P16165684148905135167.a n = A140758 n

end A140758

/-! ## A140758.P7349253286445759972

`comp[A108589(n+1)]`
-/

namespace A140758.P7349253286445759972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A140758.P7349253286445759972

namespace A140758

/-- `comp[A108589(n+1)]` -/
def P7349253286445759972.Spec : Prop :=
  ∀ n, (P7349253286445759972.a n : ℤ) = A140758 n

end A140758

/-! ## A140758.P14505441526459104163

`(A132222(n)-1)/2`
-/

namespace A140758.P14505441526459104163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132222 n - 1 : ℚ) / 2

end

end A140758.P14505441526459104163

namespace A140758

/-- `(A132222(n)-1)/2` -/
def P14505441526459104163.Spec : Prop :=
  ∀ n, P14505441526459104163.a n = (A140758 n : ℚ)

theorem P14505441526459104163.correct : P14505441526459104163.Spec := by
  intro n
  simp only [A140758, Nat.add_sub_cancel, A140758.P14505441526459104163.a, A140758.P12448805622776760400.a, A132222, A132222.P474283487268452410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140758

/-! ## A140758.P13828513887764299803

`∪[A062389(n+1), A022844(n)]`
-/

namespace A140758.P13828513887764299803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140758.P13828513887764299803

namespace A140758

/-- `∪[A062389(n+1), A022844(n)]` -/
def P13828513887764299803.Spec : Prop :=
  ∀ n, (P13828513887764299803.a n : ℤ) = A140758 n

end A140758

/-! ## A140758.P2301113829099587168

`∪[A004084(n+1)-1, A062389(n+1)]`
-/

namespace A140758.P2301113829099587168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A140758.P2301113829099587168

namespace A140758

/-- `∪[A004084(n+1)-1, A062389(n+1)]` -/
def P2301113829099587168.Spec : Prop :=
  ∀ n, (P2301113829099587168.a n : ℤ) = A140758 n

end A140758

/-! ## A140758.P2831339080095502715

`A004526(A187320(n))+n`
-/

namespace A140758.P2831339080095502715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A187320 n).toNat + (n : ℤ)

end

end A140758.P2831339080095502715

namespace A140758

/-- `A004526(A187320(n))+n` -/
def P2831339080095502715.Spec : Prop :=
  ∀ n, P2831339080095502715.a n = A140758 n

end A140758

/-! ## A140758.P15187380516612524671

`A004526(A022844(n))`
-/

namespace A140758.P15187380516612524671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022844 n).toNat

end

end A140758.P15187380516612524671

namespace A140758

/-- `A004526(A022844(n))` -/
def P15187380516612524671.Spec : Prop :=
  ∀ n, P15187380516612524671.a n = A140758 n

end A140758

/-! ## A140758.P17847633128923727681

`A004524(A132222(n))`
-/

namespace A140758.P17847633128923727681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A132222 n).toNat

end

end A140758.P17847633128923727681

namespace A140758

/-- `A004524(A132222(n))` -/
def P17847633128923727681.Spec : Prop :=
  ∀ n, P17847633128923727681.a n = A140758 n

end A140758

/-! ## A140758.P11341859223260538302

`A004526(A063459(n)+n)`
-/

namespace A140758.P11341859223260538302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A063459 n + (n : ℤ)).toNat

end

end A140758.P11341859223260538302

namespace A140758

/-- `A004526(A063459(n)+n)` -/
def P11341859223260538302.Spec : Prop :=
  ∀ n, P11341859223260538302.a n = A140758 n

end A140758

/-! ## A140758.P10383824188131278128

`A002265(A038130(n))`
-/

namespace A140758.P10383824188131278128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A038130 n).toNat

end

end A140758.P10383824188131278128

namespace A140758

/-- `A002265(A038130(n))` -/
def P10383824188131278128.Spec : Prop :=
  ∀ n, P10383824188131278128.a n = A140758 n

end A140758

/-! ## A140758.P5581710247385519142

`round(log2(A397379(2*n)))`
-/

namespace A140758.P5581710247385519142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A397379 (2 * n) : ℝ))

end

end A140758.P5581710247385519142

namespace A140758

/-- `round(log2(A397379(2*n)))` -/
def P5581710247385519142.Spec : Prop :=
  ∀ n, P5581710247385519142.a n = A140758 n

end A140758

/-! ## A140758.P4725014132961208922

`round(∑[acos(1/3^n)])`
-/

namespace A140758.P4725014132961208922
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arccos (1 / (3 ^ n : ℚ) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A140758.P4725014132961208922

namespace A140758

/-- `round(∑[acos(1/3^n)])` -/
def P4725014132961208922.Spec : Prop :=
  ∀ n, P4725014132961208922.a n = A140758 n

end A140758

/-! ## A140758.P3695994443195528352

`ceil(∑[atan(∑[sinh(n)])])`
-/

namespace A140758.P3695994443195528352
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A140758.P3695994443195528352

namespace A140758

/-- `ceil(∑[atan(∑[sinh(n)])])` -/
def P3695994443195528352.Spec : Prop :=
  ∀ n, P3695994443195528352.a n = A140758 n

end A140758

/-!
# A140759: An irregular table of natural numbers used to generate the values in sequence A140760; which, in turn, can be mapped to the source partitions counted by A053445.

The programs for A140759, there is no canonical definition to state claims against.
-/

/-! ## A140759.P16991877449086415852

`filter[A140760(n+1), A014707(#)]`
-/

namespace A140759.P16991877449086415852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014707 (f1 j).toNat = 1) n)

end

end A140759.P16991877449086415852

/-! ## A140759.P4133271485843764535

`filter[A140760(n+1), A021913(#)]`
-/

namespace A140759.P4133271485843764535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A140759.P4133271485843764535

/-! ## A140759.P1003688820729486689

`filter[A140760(n+1), A059125(#)]`
-/

namespace A140759.P1003688820729486689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059125 (f1 j).toNat = 1) n)

end

end A140759.P1003688820729486689

/-! ## A140759.P5419361138514821496

`filter[A140760(n+1), A082410(#)]`
-/

namespace A140759.P5419361138514821496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082410 (f1 j).toNat = 1) n)

end

end A140759.P5419361138514821496

/-! ## A140759.P7809560812985920396

`filter[A140760(n+1), A088150(#)]`
-/

namespace A140759.P7809560812985920396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088150 (f1 j).toNat = 1) n)

end

end A140759.P7809560812985920396

/-!
# A140760: Irregular table of natural numbers (read by columns) which can be mapped to the source partitions described in A053445 and A126441.

The programs for A140760, there is no canonical definition to state claims against.
-/

/-! ## A140760.P3318267773580997311

`A140759(n+2)/2-1`
-/

namespace A140760.P3318267773580997311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140759 (n + 2) : ℚ) / 2 - 1

end

end A140760.P3318267773580997311

/-! ## A140760.P8811735153083895591

`∑[Δ[A140759(n+1)]/2]`
-/

namespace A140760.P8811735153083895591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140759 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140760.P8811735153083895591

/-! ## A140760.P7018092547327158159

`A004524(A140759(n+2))`
-/

namespace A140760.P7018092547327158159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A140759 (n + 2)).toNat

end

end A140760.P7018092547327158159

/-! ## A140760.P9633229225695220312

`A001281(A140759(n+2)-2)`
-/

namespace A140760.P9633229225695220312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A140759 (n + 2) - 2).toNat

end

end A140760.P9633229225695220312

/-! ## A140760.P17290698307059534916

`A004525(A140759(n+2)-2)`
-/

namespace A140760.P17290698307059534916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A140759 (n + 2) - 2).toNat

end

end A140760.P17290698307059534916

/-!
# A140761: Primes p(j) = A000040(j), j>=1, such that p(1)*p(2)*...*p(j) is an integral multiple of p(1)+p(2)+...+p(j).

The programs for A140761, the canonical program `A140761.P1386468688477579553` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140761 has offset 1).

The definition of A140761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051838, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140761.P1386468688477579553

`A000040(A051838(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140761

/-- `A000040(A051838(n+1))` -/
def P1386468688477579553.Spec : Prop :=
  ∀ n, P1386468688477579553.a n = A140761 (n + 1)

theorem P1386468688477579553.correct : P1386468688477579553.Spec := by
  intro n
  simp only [A140761, Nat.add_sub_cancel]

end A140761

/-! ## A140761.P18054285854633766501

`A140763(n+1)-A007504(A051838(n+1)-1)`
-/

namespace A140761.P18054285854633766501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140763 (n + 1) - A007504 (A051838 (n + 1) - 1).toNat

end

end A140761.P18054285854633766501

namespace A140761

/-- `A140763(n+1)-A007504(A051838(n+1)-1)` -/
def P18054285854633766501.Spec : Prop :=
  ∀ n, P18054285854633766501.a n = A140761 (n + 1)

end A140761

/-! ## A140761.P6818341578060417368

`record[A132995(n+1)-A007504(n)]`
-/

namespace A140761.P6818341578060417368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (n + 1) - A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140761.P6818341578060417368

namespace A140761

/-- `record[A132995(n+1)-A007504(n)]` -/
def P6818341578060417368.Spec : Prop :=
  ∀ n, P6818341578060417368.a n = A140761 (n + 1)

end A140761

/-! ## A140761.P16035108897703584242

`A000040(eq[1, A121755(n+1)]+1)`
-/

namespace A140761.P16035108897703584242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A140761.P16035108897703584242

namespace A140761

/-- `A000040(eq[1, A121755(n+1)]+1)` -/
def P16035108897703584242.Spec : Prop :=
  ∀ n, P16035108897703584242.a n = A140761 (n + 1)

end A140761

/-! ## A140761.P13749511517740846682

`A000040(lt[A121755(n+1), 2]+1)`
-/

namespace A140761.P13749511517740846682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A140761.P13749511517740846682

namespace A140761

/-- `A000040(lt[A121755(n+1), 2]+1)` -/
def P13749511517740846682.Spec : Prop :=
  ∀ n, P13749511517740846682.a n = A140761 (n + 1)

end A140761

/-! ## A140761.P13912261216390667767

`record[A000040(n+1)/A121755(n+1)²]`
-/

namespace A140761.P13912261216390667767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A121755 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140761.P13912261216390667767

namespace A140761

/-- `record[A000040(n+1)/A121755(n+1)²]` -/
def P13912261216390667767.Spec : Prop :=
  ∀ n, P13912261216390667767.a n = (A140761 (n + 1) : ℚ)

end A140761

/-! ## A140761.P6675101656124179625

`p?[(1-A255217(n+1))*A000040(n+1)]`
-/

namespace A140761.P6675101656124179625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A255217 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140761.P6675101656124179625

namespace A140761

/-- `p?[(1-A255217(n+1))*A000040(n+1)]` -/
def P6675101656124179625.Spec : Prop :=
  ∀ n, P6675101656124179625.a n = A140761 (n + 1)

end A140761

/-! ## A140761.P16237947205904131927

`A008578(A051838(n+1)+1)`
-/

namespace A140761.P16237947205904131927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A051838 (n + 1) + 1).toNat

end

end A140761.P16237947205904131927

namespace A140761

/-- `A008578(A051838(n+1)+1)` -/
def P16237947205904131927.Spec : Prop :=
  ∀ n, P16237947205904131927.a n = A140761 (n + 1)

end A140761

/-!
# A140763: A051838 gives numbers m such that the sum of first m primes divides the product of the first m primes. This sequence gives corresponding values of the sum of first m primes.

The programs for A140763, the canonical program `A140763.P12497329234687933226` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140763 has offset 1).

The definition of A140763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051838, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A140763.P12497329234687933226

`A007504(A051838(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140763

/-- `A007504(A051838(n+1))` -/
def P12497329234687933226.Spec : Prop :=
  ∀ n, P12497329234687933226.a n = A140763 (n + 1)

theorem P12497329234687933226.correct : P12497329234687933226.Spec := by
  intro n
  simp only [A140763, Nat.add_sub_cancel]

end A140763

/-! ## A140763.P3463406688898043684

`∑{#}[A051838(n+1)-1, A000040(#+1)]`
-/

namespace A140763.P3463406688898043684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051838 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000040 (k + 1)

end

end A140763.P3463406688898043684

namespace A140763

/-- `∑{#}[A051838(n+1)-1, A000040(#+1)]` -/
def P3463406688898043684.Spec : Prop :=
  ∀ n, P3463406688898043684.a n = A140763 (n + 1)

end A140763

/-! ## A140763.P5627038436840895360

`A007504(eq[1, A121755(n+1)]+1)`
-/

namespace A140763.P5627038436840895360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A140763.P5627038436840895360

namespace A140763

/-- `A007504(eq[1, A121755(n+1)]+1)` -/
def P5627038436840895360.Spec : Prop :=
  ∀ n, P5627038436840895360.a n = A140763 (n + 1)

end A140763

/-! ## A140763.P7441594991803281213

`A007504(lt[A121755(n+1), 2]+1)`
-/

namespace A140763.P7441594991803281213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121755 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A140763.P7441594991803281213

namespace A140763

/-- `A007504(lt[A121755(n+1), 2]+1)` -/
def P7441594991803281213.Spec : Prop :=
  ∀ n, P7441594991803281213.a n = A140763 (n + 1)

end A140763

/-! ## A140763.P1482141522917727724

`A132995(A051838(2*n+1-n))`
-/

namespace A140763.P1482141522917727724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (A051838 (2 * n + 1 - n)).toNat

end

end A140763.P1482141522917727724

namespace A140763

/-- `A132995(A051838(2*n+1-n))` -/
def P1482141522917727724.Spec : Prop :=
  ∀ n, P1482141522917727724.a n = A140763 (n + 1)

end A140763

/-! ## A140763.P11131076270629870928

`record[A132995(n+1)/A121755(n+1)]`
-/

namespace A140763.P11131076270629870928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132995 (n + 1) : ℚ) / (A121755 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140763.P11131076270629870928

namespace A140763

/-- `record[A132995(n+1)/A121755(n+1)]` -/
def P11131076270629870928.Spec : Prop :=
  ∀ n, P11131076270629870928.a n = (A140763 (n + 1) : ℚ)

end A140763

/-! ## A140763.P1190265502348702558

`record[(2-A121755(n+1))*A007504(n+1)]`
-/

namespace A140763.P1190265502348702558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A121755 (n + 1)) * A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140763.P1190265502348702558

namespace A140763

/-- `record[(2-A121755(n+1))*A007504(n+1)]` -/
def P1190265502348702558.Spec : Prop :=
  ∀ n, P1190265502348702558.a n = A140763 (n + 1)

end A140763

/-! ## A140763.P2338812388224686618

`A007504(A000720(A140761(n+1)))`
-/

namespace A140763.P2338812388224686618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000720 (A140761 (n + 1)).toNat).toNat

end

end A140763.P2338812388224686618

namespace A140763

/-- `A007504(A000720(A140761(n+1)))` -/
def P2338812388224686618.Spec : Prop :=
  ∀ n, P2338812388224686618.a n = A140763 (n + 1)

end A140763

/-! ## A140763.P3697941860166412084

`A034387(A140761(n+1))`
-/

namespace A140763.P3697941860166412084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A140761 (n + 1)).toNat

end

end A140763.P3697941860166412084

namespace A140763

/-- `A034387(A140761(n+1))` -/
def P3697941860166412084.Spec : Prop :=
  ∀ n, P3697941860166412084.a n = A140763 (n + 1)

end A140763

/-! ## A140763.P7463301103618050975

`∑{d}[A000040(A051838(n+1)), A034387(#)]`
-/

namespace A140763.P7463301103618050975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051838 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A034387 d

end

end A140763.P7463301103618050975

namespace A140763

/-- `∑{d}[A000040(A051838(n+1)), A034387(#)]` -/
def P7463301103618050975.Spec : Prop :=
  ∀ n, P7463301103618050975.a n = A140763 (n + 1)

end A140763

/-!
# A140765: Array T(n,k) = binomial(k+2, k-1) + n*binomial(k+2, k) read by antidiagonals.

The programs for A140765, the canonical program `A140765.P2071160814300224079` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140765 has offset 0).

The definition of A140765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140765.P2071160814300224079

`C(col(n)+2, 3)+(row(n)-col(n))*C(col(n)+2, 2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140765

/-- `C(col(n)+2, 3)+(row(n)-col(n))*C(col(n)+2, 2)` -/
def P2071160814300224079.Spec : Prop :=
  ∀ n, P2071160814300224079.a n = A140765 n

theorem P2071160814300224079.correct : P2071160814300224079.Spec := by
  intro n
  simp only [A140765]

end A140765

/-! ## A140765.P13377753715730606077

`A082652(n+1)-C(A002262(n)+3, 3)`
-/

namespace A140765.P13377753715730606077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (n + 1) - (Nat.choose (A002262 n + 3).toNat 3 : ℤ)

end

end A140765.P13377753715730606077

namespace A140765

/-- `A082652(n+1)-C(A002262(n)+3, 3)` -/
def P13377753715730606077.Spec : Prop :=
  ∀ n, P13377753715730606077.a n = A140765 n

end A140765

/-! ## A140765.P3009815330803386549

`A082652(n+1)-A000292(A002260(n+1))`
-/

namespace A140765.P3009815330803386549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (n + 1) - A000292 (A002260 (n + 1)).toNat

end

end A140765.P3009815330803386549

namespace A140765

/-- `A082652(n+1)-A000292(A002260(n+1))` -/
def P3009815330803386549.Spec : Prop :=
  ∀ n, P3009815330803386549.a n = A140765 n

end A140765

/-! ## A140765.P4473886495856730303

`A082652(n+1)-A000292(A002262(n)+1)`
-/

namespace A140765.P4473886495856730303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082652 (n + 1) - A000292 (A002262 n + 1).toNat

end

end A140765.P4473886495856730303

namespace A140765

/-- `A082652(n+1)-A000292(A002262(n)+1)` -/
def P4473886495856730303.Spec : Prop :=
  ∀ n, P4473886495856730303.a n = A140765 n

end A140765

/-! ## A140765.P13079163035060909618

`A115262(A245300(n))-A000292(A002260(n+1))`
-/

namespace A140765.P13079163035060909618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 (A245300 n).toNat - A000292 (A002260 (n + 1)).toNat

end

end A140765.P13079163035060909618

namespace A140765

/-- `A115262(A245300(n))-A000292(A002260(n+1))` -/
def P13079163035060909618.Spec : Prop :=
  ∀ n, P13079163035060909618.a n = A140765 n

end A140765

/-! ## A140765.P12092419247265947138

`A104634(A038722(n+1))-A000292(A002260(n+1))`
-/

namespace A140765.P12092419247265947138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A038722 (n + 1)).toNat - A000292 (A002260 (n + 1)).toNat

end

end A140765.P12092419247265947138

namespace A140765

/-- `A104634(A038722(n+1))-A000292(A002260(n+1))` -/
def P12092419247265947138.Spec : Prop :=
  ∀ n, P12092419247265947138.a n = A140765 n

end A140765

/-! ## A140765.P10016429200545732537

`A104634(A061579(n)+1)-A000292(A002260(n+1))`
-/

namespace A140765.P10016429200545732537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A061579 n + 1).toNat - A000292 (A002260 (n + 1)).toNat

end

end A140765.P10016429200545732537

namespace A140765

/-- `A104634(A061579(n)+1)-A000292(A002260(n+1))` -/
def P10016429200545732537.Spec : Prop :=
  ∀ n, P10016429200545732537.a n = A140765 n

end A140765

/-! ## A140765.P10095140237364661125

`A104634(A093995(n+1)-n)-A000292(A002260(n+1))`
-/

namespace A140765.P10095140237364661125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104634 (A093995 (n + 1) - (n : ℤ)).toNat - A000292 (A002260 (n + 1)).toNat

end

end A140765.P10095140237364661125

namespace A140765

/-- `A104634(A093995(n+1)-n)-A000292(A002260(n+1))` -/
def P10095140237364661125.Spec : Prop :=
  ∀ n, P10095140237364661125.a n = A140765 n

end A140765

/-! ## A140765.P7928594488312609735

`A180854(n+1)-C(comp[∑[n]]-n, 2)`
-/

namespace A140765.P7928594488312609735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)

end

end A140765.P7928594488312609735

namespace A140765

/-- `A180854(n+1)-C(comp[∑[n]]-n, 2)` -/
def P7928594488312609735.Spec : Prop :=
  ∀ n, P7928594488312609735.a n = A140765 n

end A140765

/-! ## A140765.P13868541750519507141

`A180854(n+1)-A127739(n+1)`
-/

namespace A140765.P13868541750519507141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180854 (n + 1) - A127739 (n + 1)

end

end A140765.P13868541750519507141

namespace A140765

/-- `A180854(n+1)-A127739(n+1)` -/
def P13868541750519507141.Spec : Prop :=
  ∀ n, P13868541750519507141.a n = A140765 n

end A140765

/-!
# A140766: a(n) = 6*a(n-1) - 6*a(n-2).

The programs for A140766, the canonical program `A140766.P13979768639081427445` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140766 has offset 1).

The definition of A140766 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-6*a(n-2)` (program `A140766.P13979768639081427445`, by `A140766.P13979768639081427445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140766.P583792709463169667

`ogf((1-x)/(1-6x+6x^2))`
-/

namespace A140766.P583792709463169667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 6] n

end

end A140766.P583792709463169667

namespace A140766

/-- `ogf((1-x)/(1-6x+6x^2))` -/
def P583792709463169667.Spec : Prop :=
  ∀ n, P583792709463169667.a n = A140766 (n + 1)

end A140766

/-! ## A140766.P13979768639081427445

`6*a(n-1)-6*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140766

/-- `6*a(n-1)-6*a(n-2)` -/
def P13979768639081427445.Spec : Prop :=
  ∀ n, P13979768639081427445.a n = A140766 (n + 1)

theorem P13979768639081427445.correct : P13979768639081427445.Spec := by
  intro n
  simp only [A140766, Nat.add_sub_cancel]

end A140766

/-! ## A140766.P14574650465517241435

`sqrt(3)/36*((3+sqrt(3))^(n+2)-(3-sqrt(3))^(n+2))`
-/

namespace A140766.P14574650465517241435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 : ℝ) / 36 * ((3 + Real.sqrt (3 : ℝ)) ^ (n + 2) - (3 - Real.sqrt (3 : ℝ)) ^ (n + 2))

end

end A140766.P14574650465517241435

namespace A140766

/-- `sqrt(3)/36*((3+sqrt(3))^(n+2)-(3-sqrt(3))^(n+2))` -/
def P14574650465517241435.Spec : Prop :=
  ∀ n, P14574650465517241435.a n = (A140766 (n + 1) : ℝ)

theorem P14574650465517241435.correct : P14574650465517241435.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A140766, Nat.add_sub_cancel, A140766.P14574650465517241435.a, A140766.P13979768639081427445.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A140766, Nat.add_sub_cancel, A140766.P14574650465517241435.a, A140766.P13979768639081427445.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A140766

/-! ## A140766.P14588709210954003881

`6*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A140766.P14588709210954003881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  6 * (a (n - 1) - a (n - 2))

end

end A140766.P14588709210954003881

namespace A140766

/-- `6*(a(n-1)-a(n-2))` -/
def P14588709210954003881.Spec : Prop :=
  ∀ n, P14588709210954003881.a n = A140766 (n + 1)

theorem P14588709210954003881.correct : P14588709210954003881.Spec := by
  intro n
  simp only [A140766, Nat.add_sub_cancel, A140766.P14588709210954003881.a, A140766.P13979768639081427445.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140766

/-! ## A140766.P7612256458686581333

`A291016(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A140766.P7612256458686581333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291016 (n - 1) + a (n - 1)

end

end A140766.P7612256458686581333

namespace A140766

/-- `A291016(n-1)+a(n-1)` -/
def P7612256458686581333.Spec : Prop :=
  ∀ n, P7612256458686581333.a n = A140766 (n + 1)

end A140766

/-! ## A140766.P6973451772604036767

`A094434(n+1)+A083881(n)`
-/

namespace A140766.P6973451772604036767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094434 (n + 1) + A083881 n

end

end A140766.P6973451772604036767

namespace A140766

/-- `A094434(n+1)+A083881(n)` -/
def P6973451772604036767.Spec : Prop :=
  ∀ n, P6973451772604036767.a n = A140766 (n + 1)

end A140766

/-! ## A140766.P4091866977472718466

`A086405(n)+A094434(n+1)/2`
-/

namespace A140766.P4091866977472718466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 n : ℚ) + (A094434 (n + 1) : ℚ) / 2

end

end A140766.P4091866977472718466

namespace A140766

/-- `A086405(n)+A094434(n+1)/2` -/
def P4091866977472718466.Spec : Prop :=
  ∀ n, P4091866977472718466.a n = (A140766 (n + 1) : ℚ)

end A140766

/-! ## A140766.P17622919195443524121

`A083881(n)+∑[A083881(n)-A094433(n)]`
-/

namespace A140766.P17622919195443524121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n - A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140766.P17622919195443524121

namespace A140766

/-- `A083881(n)+∑[A083881(n)-A094433(n)]` -/
def P17622919195443524121.Spec : Prop :=
  ∀ n, P17622919195443524121.a n = A140766 (n + 1)

end A140766

/-! ## A140766.P7416761703563799402

`Δ[A083881(n)]-A086405(n)`
-/

namespace A140766.P7416761703563799402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086405 n

end

end A140766.P7416761703563799402

namespace A140766

/-- `Δ[A083881(n)]-A086405(n)` -/
def P7416761703563799402.Spec : Prop :=
  ∀ n, P7416761703563799402.a n = A140766 (n + 1)

end A140766

/-! ## A140766.P4047877104465351862

`A287807(n)-Δ[A094433(n)]`
-/

namespace A140766.P4047877104465351862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287807 n - (f1 (n + 1) - f1 n)

end

end A140766.P4047877104465351862

namespace A140766

/-- `A287807(n)-Δ[A094433(n)]` -/
def P4047877104465351862.Spec : Prop :=
  ∀ n, P4047877104465351862.a n = A140766 (n + 1)

end A140766

/-! ## A140766.P4523008142834972277

`(A086405(n)+A030192(n))/2`
-/

namespace A140766.P4523008142834972277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 n + A030192 n : ℚ) / 2

end

end A140766.P4523008142834972277

namespace A140766

/-- `(A086405(n)+A030192(n))/2` -/
def P4523008142834972277.Spec : Prop :=
  ∀ n, P4523008142834972277.a n = (A140766 (n + 1) : ℚ)

end A140766

/-! ## A140766.P18124303290251252992

`A030192(n)-A094434(n+1)/2`
-/

namespace A140766.P18124303290251252992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030192 n : ℚ) - (A094434 (n + 1) : ℚ) / 2

end

end A140766.P18124303290251252992

namespace A140766

/-- `A030192(n)-A094434(n+1)/2` -/
def P18124303290251252992.Spec : Prop :=
  ∀ n, P18124303290251252992.a n = (A140766 (n + 1) : ℚ)

end A140766

/-! ## A140766.P13870407518560621374

`Δ[(A086405(n)-A094433(n+1))/2]`
-/

namespace A140766.P13870407518560621374
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086405 n - A094433 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140766.P13870407518560621374

namespace A140766

/-- `Δ[(A086405(n)-A094433(n+1))/2]` -/
def P13870407518560621374.Spec : Prop :=
  ∀ n, P13870407518560621374.a n = (A140766 (n + 1) : ℚ)

end A140766

/-! ## A140766.P2759982237868721641

`(A083881(n+1)-A094433(n+1))/2`
-/

namespace A140766.P2759982237868721641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083881 (n + 1) - A094433 (n + 1) : ℚ) / 2

end

end A140766.P2759982237868721641

namespace A140766

/-- `(A083881(n+1)-A094433(n+1))/2` -/
def P2759982237868721641.Spec : Prop :=
  ∀ n, P2759982237868721641.a n = (A140766 (n + 1) : ℚ)

end A140766

/-! ## A140766.P10640940538223863010

`Δ[A094434(n+1)/A020639(A092346(n))]`
-/

namespace A140766.P10640940538223863010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094434 (n + 1) : ℚ) / (A020639 (A092346 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140766.P10640940538223863010

namespace A140766

/-- `Δ[A094434(n+1)/A020639(A092346(n))]` -/
def P10640940538223863010.Spec : Prop :=
  ∀ n, P10640940538223863010.a n = (A140766 (n + 1) : ℚ)

end A140766

/-! ## A140766.P14553574106167543441

`A030192(n+1)/6`
-/

namespace A140766.P14553574106167543441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030192 (n + 1) : ℚ) / 6

end

end A140766.P14553574106167543441

namespace A140766

/-- `A030192(n+1)/6` -/
def P14553574106167543441.Spec : Prop :=
  ∀ n, P14553574106167543441.a n = (A140766 (n + 1) : ℚ)

end A140766

/-!
# A140769: Numbers n such that consecutive Mersenne numbers A000225(n-1) = M(n-1) = 2^(n-1) - 1 and A000225(n) = M(n) = 2^n - 1 are both squarefree.

The programs for A140769, the canonical program `A140769.P16438192305256289288` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140769 has offset 1).

The definition of A140769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 629 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140769.P17813804428903167732

`eq[0, Δ[A272334(n+1)]]+2`
-/

namespace A140769.P17813804428903167732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A140769.P17813804428903167732

namespace A140769

/-- `eq[0, Δ[A272334(n+1)]]+2` -/
def P17813804428903167732.Spec : Prop :=
  ∀ n, (P17813804428903167732.a n : ℤ) = A140769 (n + 1)

end A140769

/-! ## A140769.P14263112880046734576

`eq[A272334(n+2), A272334(n+1)]+2`
-/

namespace A140769.P14263112880046734576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272334 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A140769.P14263112880046734576

namespace A140769

/-- `eq[A272334(n+2), A272334(n+1)]+2` -/
def P14263112880046734576.Spec : Prop :=
  ∀ n, (P14263112880046734576.a n : ℤ) = A140769 (n + 1)

end A140769

/-! ## A140769.P16438192305256289288

`∩[A049093(n+1)+1, A049093(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A140769

/-- `∩[A049093(n+1)+1, A049093(n+1)]` -/
def P16438192305256289288.Spec : Prop :=
  ∀ n, (P16438192305256289288.a n : ℤ) = A140769 (n + 1)

theorem P16438192305256289288.correct : P16438192305256289288.Spec := by
  intro n
  simp only [A140769, Nat.add_sub_cancel]

end A140769

/-! ## A140769.P7426844566303610754

`eq[A336104(n+2), A336104(n+1)]+2`
-/

namespace A140769.P7426844566303610754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336104 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A140769.P7426844566303610754

namespace A140769

/-- `eq[A336104(n+2), A336104(n+1)]+2` -/
def P7426844566303610754.Spec : Prop :=
  ∀ n, (P7426844566303610754.a n : ℤ) = A140769 (n + 1)

end A140769

/-! ## A140769.P14029259934428093900

`eq[A112166(n), A161264(A036606(n))]`
-/

namespace A140769.P14029259934428093900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (A036606 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140769.P14029259934428093900

namespace A140769

/-- `eq[A112166(n), A161264(A036606(n))]` -/
def P14029259934428093900.Spec : Prop :=
  ∀ n, (P14029259934428093900.a n : ℤ) = A140769 (n + 1)

end A140769

/-!
# A140770: 3D analog of A081113: the number of (n-1)-step paths a 3D chess king can make starting from one face of the n X n X n cube to the opposite one.

The programs for A140770, there is no canonical definition to state claims against.
-/

/-! ## A140770.P12922549457348306535

`A081113(n+1)²`
-/

namespace A140770.P12922549457348306535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (n + 1) ^ 2

end

end A140770.P12922549457348306535

/-! ## A140770.P314787639625544068

`record[A081113(A152271(n))²]`
-/

namespace A140770.P314787639625544068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (A152271 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140770.P314787639625544068

/-! ## A140770.P11227220335450928096

`record[A081113(A286589(n))²]`
-/

namespace A140770.P11227220335450928096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081113 (A286589 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140770.P11227220335450928096

/-! ## A140770.P115973026132983203

`(A288834(n+1)-A163872(n))²`
-/

namespace A140770.P115973026132983203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A288834 (n + 1) - A163872 n) ^ 2

end

end A140770.P115973026132983203

/-! ## A140770.P13006776152483441301

`A081113(n+1)^A020639(2*(n+1))`
-/

namespace A140770.P13006776152483441301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081113 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A140770.P13006776152483441301

/-!
# A140771: Primes congruent to 83 or 127 mod 210.

The programs for A140771, the canonical program `A140771.P5669248433578580930` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140771 has offset 1).

The definition of A140771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 656 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140771.P5669248433578580930

`p?[9*A008458(n)-A008706(A072154(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140771

/-- `p?[9*A008458(n)-A008706(A072154(n))]` -/
def P5669248433578580930.Spec : Prop :=
  ∀ n, P5669248433578580930.a n = A140771 (n + 1)

theorem P5669248433578580930.correct : P5669248433578580930.Spec := by
  intro n
  simp only [A140771, Nat.add_sub_cancel]

end A140771

/-! ## A140771.P14977459887614629717

`p?[A008596(3*n)-A253262(2*n)]`
-/

namespace A140771.P14977459887614629717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (3 * n) - A253262 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P14977459887614629717

namespace A140771

/-- `p?[A008596(3*n)-A253262(2*n)]` -/
def P14977459887614629717.Spec : Prop :=
  ∀ n, P14977459887614629717.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P5065501507185166680

`p?[A156797(n+1)+A008585(A168397(n+1))]`
-/

namespace A140771.P5065501507185166680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156797 (n + 1) + A008585 (A168397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P5065501507185166680

namespace A140771

/-- `p?[A156797(n+1)+A008585(A168397(n+1))]` -/
def P5065501507185166680.Spec : Prop :=
  ∀ n, P5065501507185166680.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P7842679231403206486

`p?[A113801(A155095(n+1)-n)]`
-/

namespace A140771.P7842679231403206486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A155095 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P7842679231403206486

namespace A140771

/-- `p?[A113801(A155095(n+1)-n)]` -/
def P7842679231403206486.Spec : Prop :=
  ∀ n, P7842679231403206486.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P12282678657332948205

`p?[A113801(A032766(A016885(n)))]`
-/

namespace A140771.P12282678657332948205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A032766 (A016885 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P12282678657332948205

namespace A140771

/-- `p?[A113801(A032766(A016885(n)))]` -/
def P12282678657332948205.Spec : Prop :=
  ∀ n, P12282678657332948205.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P15193109018658020609

`p?[A113801(A004770(n+1)-A008619(n))]`
-/

namespace A140771.P15193109018658020609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A004770 (n + 1) - A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P15193109018658020609

namespace A140771

/-- `p?[A113801(A004770(n+1)-A008619(n))]` -/
def P15193109018658020609.Spec : Prop :=
  ∀ n, P15193109018658020609.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P2586301065756313197

`p?[A113801(A231002(n+1)-A106389(n+1))]`
-/

namespace A140771.P2586301065756313197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (A231002 (n + 1) - A106389 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P2586301065756313197

namespace A140771

/-- `p?[A113801(A231002(n+1)-A106389(n+1))]` -/
def P2586301065756313197.Spec : Prop :=
  ∀ n, P2586301065756313197.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P1513845283801592136

`p?[A089644(A008706(n))-A057539(n+1)]`
-/

namespace A140771.P1513845283801592136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (A008706 n).toNat - A057539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P1513845283801592136

namespace A140771

/-- `p?[A089644(A008706(n))-A057539(n+1)]` -/
def P1513845283801592136.Spec : Prop :=
  ∀ n, P1513845283801592136.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P2254145319511962046

`p?[A008706(A250120(n))-A008486(n)]`
-/

namespace A140771.P2254145319511962046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A250120 n).toNat - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P2254145319511962046

namespace A140771

/-- `p?[A008706(A250120(n))-A008486(n)]` -/
def P2254145319511962046.Spec : Prop :=
  ∀ n, P2254145319511962046.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P8641426559443517788

`p?[A166522(A161709(n+1)-(7*n+1))]`
-/

namespace A140771.P8641426559443517788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166522 (A161709 (n + 1) - (7 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P8641426559443517788

namespace A140771

/-- `p?[A166522(A161709(n+1)-(7*n+1))]` -/
def P8641426559443517788.Spec : Prop :=
  ∀ n, P8641426559443517788.a n = A140771 (n + 1)

end A140771

/-! ## A140771.P11048774676612484229

`p?[A047336(A014681(A164284(n+1)))]`
-/

namespace A140771.P11048774676612484229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047336 (A014681 (A164284 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140771.P11048774676612484229

namespace A140771

/-- `p?[A047336(A014681(A164284(n+1)))]` -/
def P11048774676612484229.Spec : Prop :=
  ∀ n, P11048774676612484229.a n = A140771 (n + 1)

end A140771

/-!
# A140772: Primes congruent to 89 or 121 mod 210.

The programs for A140772, the canonical program `A140772.P16304119335175969558` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140772 has offset 1).

The definition of A140772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140772.P16304119335175969558

`p?[A176010(n+1)+A016825(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140772

/-- `p?[A176010(n+1)+A016825(n)]` -/
def P16304119335175969558.Spec : Prop :=
  ∀ n, P16304119335175969558.a n = A140772 (n + 1)

theorem P16304119335175969558.correct : P16304119335175969558.Spec := by
  intro n
  simp only [A140772, Nat.add_sub_cancel]

end A140772

/-! ## A140772.P15707725992355323384

`p?[A176010(n+1)+A001105(n+1)-A001105(n)]`
-/

namespace A140772.P15707725992355323384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176010 (n + 1) + (A001105 (n + 1) - A001105 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P15707725992355323384

namespace A140772

/-- `p?[A176010(n+1)+A001105(n+1)-A001105(n)]` -/
def P15707725992355323384.Spec : Prop :=
  ∀ n, P15707725992355323384.a n = A140772 (n + 1)

theorem P15707725992355323384.correct : P15707725992355323384.Spec := by
  intro n
  simp only [A140772, Nat.add_sub_cancel, A140772.P15707725992355323384.f1, A140772.P15707725992355323384.a, A140772.P16304119335175969558.f1, A140772.P16304119335175969558.a, A001105, A001105.P6098599260439307493.a, A016825, A016825.P4712696052905976233.a, A176010, A176010.P8991699498595305899.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140772

/-! ## A140772.P12582041786429408917

`p?[A017401(n)+A017329(A065187(n+1))]`
-/

namespace A140772.P12582041786429408917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n + A017329 (A065187 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P12582041786429408917

namespace A140772

/-- `p?[A017401(n)+A017329(A065187(n+1))]` -/
def P12582041786429408917.Spec : Prop :=
  ∀ n, P12582041786429408917.a n = A140772 (n + 1)

end A140772

/-! ## A140772.P4857380150987969658

`p?[A175887(n+1)+A008597(A007310(n+1))]`
-/

namespace A140772.P4857380150987969658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + A008597 (A007310 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P4857380150987969658

namespace A140772

/-- `p?[A175887(n+1)+A008597(A007310(n+1))]` -/
def P4857380150987969658.Spec : Prop :=
  ∀ n, P4857380150987969658.a n = A140772 (n + 1)

end A140772

/-! ## A140772.P14399034504030322360

`p?[A231002(n+1)+A008593(A047336(n+1))]`
-/

namespace A140772.P14399034504030322360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1) + A008593 (A047336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P14399034504030322360

namespace A140772

/-- `p?[A231002(n+1)+A008593(A047336(n+1))]` -/
def P14399034504030322360.Spec : Prop :=
  ∀ n, P14399034504030322360.a n = A140772 (n + 1)

end A140772

/-! ## A140772.P11387605018214889102

`p?[A175887(A014681(A017029(n)))]`
-/

namespace A140772.P11387605018214889102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (A014681 (A017029 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P11387605018214889102

namespace A140772

/-- `p?[A175887(A014681(A017029(n)))]` -/
def P11387605018214889102.Spec : Prop :=
  ∀ n, P11387605018214889102.a n = A140772 (n + 1)

end A140772

/-! ## A140772.P10885157868215342703

`p?[A090771(A017029(A047228(n+1)))]`
-/

namespace A140772.P10885157868215342703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A017029 (A047228 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P10885157868215342703

namespace A140772

/-- `p?[A090771(A017029(A047228(n+1)))]` -/
def P10885157868215342703.Spec : Prop :=
  ∀ n, P10885157868215342703.a n = A140772 (n + 1)

end A140772

/-! ## A140772.P4065524398326675079

`p?[A180964(A017329(n))+A016885(n)]`
-/

namespace A140772.P4065524398326675079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 (A017329 n).toNat + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140772.P4065524398326675079

namespace A140772

/-- `p?[A180964(A017329(n))+A016885(n)]` -/
def P4065524398326675079.Spec : Prop :=
  ∀ n, P4065524398326675079.a n = A140772 (n + 1)

end A140772

/-! ## A140772.P17440720643028491543

`∩[A132240(n+1), A313793(n)]`
-/

namespace A140772.P17440720643028491543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140772.P17440720643028491543

namespace A140772

/-- `∩[A132240(n+1), A313793(n)]` -/
def P17440720643028491543.Spec : Prop :=
  ∀ n, (P17440720643028491543.a n : ℤ) = A140772 (n + 1)

end A140772

/-! ## A140772.P14799553287970890130

`∩[A132240(n+1), A313875(n)]`
-/

namespace A140772.P14799553287970890130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140772.P14799553287970890130

namespace A140772

/-- `∩[A132240(n+1), A313875(n)]` -/
def P14799553287970890130.Spec : Prop :=
  ∀ n, (P14799553287970890130.a n : ℤ) = A140772 (n + 1)

end A140772

/-!
# A140773: Consider the products of all pairs of (not necessarily distinct) positive divisors of n. a(n) is the number of these products that divide n. a(n) also is the number of the products that are divisible by n.

The programs for A140773, the canonical program `A140773.P9739347816414512295` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140773 has offset 1).

The definition of A140773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140773.P10438810230729300813

`∑{d}[n+1, A038548(#)]`
-/

namespace A140773.P10438810230729300813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038548 d

end

end A140773.P10438810230729300813

namespace A140773

/-- `∑{d}[n+1, A038548(#)]` -/
def P10438810230729300813.Spec : Prop :=
  ∀ n, P10438810230729300813.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P9739347816414512295

`(A007425(n+1)+A046951(n+1))/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A140773

/-- `(A007425(n+1)+A046951(n+1))/2` -/
def P9739347816414512295.Spec : Prop :=
  ∀ n, P9739347816414512295.a n = (A140773 (n + 1) : ℚ)

end A140773

/-! ## A140773.P10769883855858811624

`∑{d}[n+1, ceil(A000005(#)/2)]`
-/

namespace A140773.P10769883855858811624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈(A000005 d : ℚ) / 2⌉

end

end A140773.P10769883855858811624

namespace A140773

/-- `∑{d}[n+1, ceil(A000005(#)/2)]` -/
def P10769883855858811624.Spec : Prop :=
  ∀ n, P10769883855858811624.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P6979310831661132974

`∑{d}[n+1, A072670(#-1)+1]`
-/

namespace A140773.P6979310831661132974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A072670 (d - 1) + 1)

end

end A140773.P6979310831661132974

namespace A140773

/-- `∑{d}[n+1, A072670(#-1)+1]` -/
def P6979310831661132974.Spec : Prop :=
  ∀ n, P6979310831661132974.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P18097846203098607915

`∑{d}[n+1, A065033(A000005(#))]`
-/

namespace A140773.P18097846203098607915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065033 (A000005 d).toNat

end

end A140773.P18097846203098607915

namespace A140773

/-- `∑{d}[n+1, A065033(A000005(#))]` -/
def P18097846203098607915.Spec : Prop :=
  ∀ n, P18097846203098607915.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P16138348213905203047

`∑{d}[n+1, A004526(A000005(#)+1)]`
-/

namespace A140773.P16138348213905203047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (A000005 d + 1).toNat

end

end A140773.P16138348213905203047

namespace A140773

/-- `∑{d}[n+1, A004526(A000005(#)+1)]` -/
def P16138348213905203047.Spec : Prop :=
  ∀ n, P16138348213905203047.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P2064006475563608615

`∑{d}[n+1, A008619(A000005(#)-1)]`
-/

namespace A140773.P2064006475563608615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008619 (A000005 d - 1).toNat

end

end A140773.P2064006475563608615

namespace A140773

/-- `∑{d}[n+1, A008619(A000005(#)-1)]` -/
def P2064006475563608615.Spec : Prop :=
  ∀ n, P2064006475563608615.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P5301935443430686696

`∑{d}[n+1, A010052(#)*A018892((n+1)/#)]`
-/

namespace A140773.P5301935443430686696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A018892 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140773.P5301935443430686696

namespace A140773

/-- `∑{d}[n+1, A010052(#)*A018892((n+1)/#)]` -/
def P5301935443430686696.Spec : Prop :=
  ∀ n, P5301935443430686696.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P7629527152542141433

`∑{d}[n+1, A007875(#)*A046951((n+1)/#)]`
-/

namespace A140773.P7629527152542141433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140773.P7629527152542141433

namespace A140773

/-- `∑{d}[n+1, A007875(#)*A046951((n+1)/#)]` -/
def P7629527152542141433.Spec : Prop :=
  ∀ n, P7629527152542141433.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P887595765797607978

`∑{d}[n+1, A000005(#)*A065043((n+1)/#)]`
-/

namespace A140773.P887595765797607978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A065043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140773.P887595765797607978

namespace A140773

/-- `∑{d}[n+1, A000005(#)*A065043((n+1)/#)]` -/
def P887595765797607978.Spec : Prop :=
  ∀ n, P887595765797607978.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P391967181743584998

`∑{d}[n+1, A008836(#)*A184389((n+1)/#)]`
-/

namespace A140773.P391967181743584998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A184389 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140773.P391967181743584998

namespace A140773

/-- `∑{d}[n+1, A008836(#)*A184389((n+1)/#)]` -/
def P391967181743584998.Spec : Prop :=
  ∀ n, P391967181743584998.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P401623636744465992

`∑{d}[n+1, A124315(#)*A353629((n+1)/#)]`
-/

namespace A140773.P401623636744465992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140773.P401623636744465992

namespace A140773

/-- `∑{d}[n+1, A124315(#)*A353629((n+1)/#)]` -/
def P401623636744465992.Spec : Prop :=
  ∀ n, P401623636744465992.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P16190658758280575782

`∑{d}[n+1, A130054(#)*A378542((n+1)/#)]`
-/

namespace A140773.P16190658758280575782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A378542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140773.P16190658758280575782

namespace A140773

/-- `∑{d}[n+1, A130054(#)*A378542((n+1)/#)]` -/
def P16190658758280575782.Spec : Prop :=
  ∀ n, P16190658758280575782.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P1747616841214045841

`∑{d}[n+1, A322327(#)*A369255((n+1)/#)]`
-/

namespace A140773.P1747616841214045841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322327 d * A369255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140773.P1747616841214045841

namespace A140773

/-- `∑{d}[n+1, A322327(#)*A369255((n+1)/#)]` -/
def P1747616841214045841.Spec : Prop :=
  ∀ n, P1747616841214045841.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P17651986396647051588

`∑{d}[A110654(2*n+1), A110654(A000005(#))]`
-/

namespace A140773.P17651986396647051588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A110654 (A000005 d).toNat

end

end A140773.P17651986396647051588

namespace A140773

/-- `∑{d}[A110654(2*n+1), A110654(A000005(#))]` -/
def P17651986396647051588.Spec : Prop :=
  ∀ n, P17651986396647051588.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P6908011167655844959

`A034836(n+1)+A088433(n+1)+A088432(n+1)`
-/

namespace A140773.P6908011167655844959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) + (A088433 (n + 1) + A088432 (n + 1))

end

end A140773.P6908011167655844959

namespace A140773

/-- `A034836(n+1)+A088433(n+1)+A088432(n+1)` -/
def P6908011167655844959.Spec : Prop :=
  ∀ n, P6908011167655844959.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P10017048774905720341

`A034836(A087560(n+1))`
-/

namespace A140773.P10017048774905720341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (A087560 (n + 1)).toNat

end

end A140773.P10017048774905720341

namespace A140773

/-- `A034836(A087560(n+1))` -/
def P10017048774905720341.Spec : Prop :=
  ∀ n, P10017048774905720341.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P16696545400444770883

`A034836((n+1)*A053674(n+1))`
-/

namespace A140773.P16696545400444770883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 ((n + 1 : ℤ) * A053674 (n + 1)).toNat

end

end A140773.P16696545400444770883

namespace A140773

/-- `A034836((n+1)*A053674(n+1))` -/
def P16696545400444770883.Spec : Prop :=
  ∀ n, P16696545400444770883.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P7031150082147454016

`A034836(2*A003961(n+1))`
-/

namespace A140773.P7031150082147454016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (2 * A003961 (n + 1)).toNat

end

end A140773.P7031150082147454016

namespace A140773

/-- `A034836(2*A003961(n+1))` -/
def P7031150082147454016.Spec : Prop :=
  ∀ n, P7031150082147454016.a n = A140773 (n + 1)

end A140773

/-! ## A140773.P15521717157399498408

`A034836(2*A064988(n+1))`
-/

namespace A140773.P15521717157399498408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (2 * A064988 (n + 1)).toNat

end

end A140773.P15521717157399498408

namespace A140773

/-- `A034836(2*A064988(n+1))` -/
def P15521717157399498408.Spec : Prop :=
  ∀ n, P15521717157399498408.a n = A140773 (n + 1)

end A140773

/-!
# A140774: Consider the products of all pairs of consecutive (when ordered by size) positive divisors of n. a(n) = the number of these products that divide n. a(n) also = the number of the products that are divisible by n.

The programs for A140774, there is no canonical definition to state claims against.
-/

/-! ## A140774.P10597158357647853157

`A186747(A034563(n+1))+A099042(n+1)`
-/

namespace A140774.P10597158357647853157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A034563 (n + 1)).toNat + A099042 (n + 1)

end

end A140774.P10597158357647853157

/-! ## A140774.P16695421398265944949

`A186747(A034563(n+1))+∑{d}[n+1, A099104(#)]`
-/

namespace A140774.P16695421398265944949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186747 (A034563 (n + 1)).toNat + ∑ d ∈ Nat.divisors (f1 n), A099104 d

end

end A140774.P16695421398265944949

/-! ## A140774.P7500952480432458319

`A099042(n+1)+A099039(A034461(n+1)!)`
-/

namespace A140774.P7500952480432458319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099042 (n + 1) + A099039 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A140774.P7500952480432458319

/-!
# A140775: Numbers k > 1 such that p + k/p is prime for every prime p that divides k.

The programs for A140775, there is no canonical definition to state claims against.
-/

/-! ## A140775.P12104417249471211686

`∩[2*A306202(A306202(n+1)), A140777(n+1)]`
-/

namespace A140775.P12104417249471211686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306202 (A306202 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140775.P12104417249471211686

/-! ## A140775.P16217172077716109215

`∩[A050687(n+1), A140777(n+1)]`
-/

namespace A140775.P16217172077716109215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140775.P16217172077716109215

/-! ## A140775.P16538680430453679663

`∩[A140777(n+1), A340682(n+1)]`
-/

namespace A140775.P16538680430453679663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140775.P16538680430453679663

/-! ## A140775.P1401240304840952770

`∩[A140777(n+1), A382913(n+1)]`
-/

namespace A140775.P1401240304840952770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140775.P1401240304840952770

/-! ## A140775.P8928823018940633040

`eq[A112229(n+1), A168182(n)]`
-/

namespace A140775.P8928823018940633040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A140775.P8928823018940633040

/-!
# A140776: A number n is included if (p + n/p) is prime, where p is the largest prime that divides n.

The programs for A140776, the canonical program `A140776.P5718510351764920094` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140776 has offset 1).

The definition of A140776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1649 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140776.P5718510351764920094

`eq[1, A001222(A064920(n+2)+1)]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A140776

/-- `eq[1, A001222(A064920(n+2)+1)]+2` -/
def P5718510351764920094.Spec : Prop :=
  ∀ n, (P5718510351764920094.a n : ℤ) = A140776 (n + 1)

theorem P5718510351764920094.correct : P5718510351764920094.Spec := by
  intro n
  simp only [A140776, Nat.add_sub_cancel]

end A140776

/-! ## A140776.P18028723077346720434

`eq[1, A014673(A064920(n+2)+1)]+2`
-/

namespace A140776.P18028723077346720434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A064920 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A140776.P18028723077346720434

namespace A140776

/-- `eq[1, A014673(A064920(n+2)+1)]+2` -/
def P18028723077346720434.Spec : Prop :=
  ∀ n, (P18028723077346720434.a n : ℤ) = A140776 (n + 1)

end A140776

/-! ## A140776.P2828932915807887085

`eq[2, A000005(A064920(n+2)+1)]+2`
-/

namespace A140776.P2828932915807887085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064920 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A140776.P2828932915807887085

namespace A140776

/-- `eq[2, A000005(A064920(n+2)+1)]+2` -/
def P2828932915807887085.Spec : Prop :=
  ∀ n, (P2828932915807887085.a n : ℤ) = A140776 (n + 1)

end A140776

/-! ## A140776.P3204647259215767873

`lt[3*A000005(A064920(abs(2-n)+2)+1), 7]`
-/

namespace A140776.P3204647259215767873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000005 (A064920 (|2 - (n : ℤ)| + 2).toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A140776.P3204647259215767873

namespace A140776

/-- `lt[3*A000005(A064920(abs(2-n)+2)+1), 7]` -/
def P3204647259215767873.Spec : Prop :=
  ∀ n, (P3204647259215767873.a n : ℤ) = A140776 (n + 1)

end A140776

/-! ## A140776.P13909646868655426036

`record[A014681(n+1)/A014673(A064920(n+2)+1)]`
-/

namespace A140776.P13909646868655426036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) : ℚ) / (A014673 (A064920 (n + 2) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140776.P13909646868655426036

namespace A140776

/-- `record[A014681(n+1)/A014673(A064920(n+2)+1)]` -/
def P13909646868655426036.Spec : Prop :=
  ∀ n, P13909646868655426036.a n = (A140776 (n + 1) : ℚ)

end A140776

/-!
# A140777: a(n) = 2*prime(n) - 4.

The programs for A140777, the canonical program `A140777.P12433789027448162273` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140777 has offset 1).

The definition of A140777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+1)-4` (program `A140777.P12433789027448162273`, by `A140777.P12433789027448162273.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140777.P17195144800070271988

`2*A040976(n+1)`
-/

namespace A140777.P17195144800070271988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1)

end

end A140777.P17195144800070271988

namespace A140777

/-- `2*A040976(n+1)` -/
def P17195144800070271988.Spec : Prop :=
  ∀ n, P17195144800070271988.a n = A140777 (n + 1)

theorem P17195144800070271988.correct : P17195144800070271988.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P17195144800070271988.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P12433789027448162273

`2*A000040(n+1)-4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140777

/-- `2*A000040(n+1)-4` -/
def P12433789027448162273.Spec : Prop :=
  ∀ n, P12433789027448162273.a n = A140777 (n + 1)

theorem P12433789027448162273.correct : P12433789027448162273.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel]

end A140777

/-! ## A140777.P8155808699442714868

`A131426(n+1)-1`
-/

namespace A140777.P8155808699442714868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - 1

end

end A140777.P8155808699442714868

namespace A140777

/-- `A131426(n+1)-1` -/
def P8155808699442714868.Spec : Prop :=
  ∀ n, P8155808699442714868.a n = A140777 (n + 1)

theorem P8155808699442714868.correct : P8155808699442714868.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P8155808699442714868.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131426, A131426.P1992533446428371945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P5101995903918868185

`A037168(n+1)-2`
-/

namespace A140777.P5101995903918868185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - 2

end

end A140777.P5101995903918868185

namespace A140777

/-- `A037168(n+1)-2` -/
def P5101995903918868185.Spec : Prop :=
  ∀ n, P5101995903918868185.a n = A140777 (n + 1)

theorem P5101995903918868185.correct : P5101995903918868185.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P5101995903918868185.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037168, A037168.P225285487484933431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P7133248232295137820

`A100484(n+1)-4`
-/

namespace A140777.P7133248232295137820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 4

end

end A140777.P7133248232295137820

namespace A140777

/-- `A100484(n+1)-4` -/
def P7133248232295137820.Spec : Prop :=
  ∀ n, P7133248232295137820.a n = A140777 (n + 1)

end A140777

/-! ## A140777.P16960658667170204012

`A072055(n+1)-5`
-/

namespace A140777.P16960658667170204012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 5

end

end A140777.P16960658667170204012

namespace A140777

/-- `A072055(n+1)-5` -/
def P16960658667170204012.Spec : Prop :=
  ∀ n, P16960658667170204012.a n = A140777 (n + 1)

theorem P16960658667170204012.correct : P16960658667170204012.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P16960658667170204012.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A072055, A072055.P8252801676711237860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P15725190298273832242

`A089241(n+1)-6`
-/

namespace A140777.P15725190298273832242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 6

end

end A140777.P15725190298273832242

namespace A140777

/-- `A089241(n+1)-6` -/
def P15725190298273832242.Spec : Prop :=
  ∀ n, P15725190298273832242.a n = A140777 (n + 1)

theorem P15725190298273832242.correct : P15725190298273832242.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P15725190298273832242.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A089241, A089241.P14705987553220613803.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P17167953822258331950

`A129069(n+1)-7`
-/

namespace A140777.P17167953822258331950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1) - 7

end

end A140777.P17167953822258331950

namespace A140777

/-- `A129069(n+1)-7` -/
def P17167953822258331950.Spec : Prop :=
  ∀ n, P17167953822258331950.a n = A140777 (n + 1)

theorem P17167953822258331950.correct : P17167953822258331950.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P17167953822258331950.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A129069, A129069.P1730810587281407252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P15247662250893190546

`sqrt(A069262(n+1))-4`
-/

namespace A140777.P15247662250893190546
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069262 (n + 1) : ℝ) - 4

end

end A140777.P15247662250893190546

namespace A140777

/-- `sqrt(A069262(n+1))-4` -/
def P15247662250893190546.Spec : Prop :=
  ∀ n, P15247662250893190546.a n = (A140777 (n + 1) : ℝ)

end A140777

/-! ## A140777.P18382389627322196166

`2*(Δ[A007504(n)]-2)`
-/

namespace A140777.P18382389627322196166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 2)

end

end A140777.P18382389627322196166

namespace A140777

/-- `2*(Δ[A007504(n)]-2)` -/
def P18382389627322196166.Spec : Prop :=
  ∀ n, P18382389627322196166.a n = A140777 (n + 1)

end A140777

/-! ## A140777.P7791301416626221558

`2*(A086801(n+1)+1)`
-/

namespace A140777.P7791301416626221558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086801 (n + 1) + 1)

end

end A140777.P7791301416626221558

namespace A140777

/-- `2*(A086801(n+1)+1)` -/
def P7791301416626221558.Spec : Prop :=
  ∀ n, P7791301416626221558.a n = A140777 (n + 1)

theorem P7791301416626221558.correct : P7791301416626221558.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P7791301416626221558.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P9690520066641260430

`2*(A006093(n+1)-1)`
-/

namespace A140777.P9690520066641260430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006093 (n + 1) - 1)

end

end A140777.P9690520066641260430

namespace A140777

/-- `2*(A006093(n+1)-1)` -/
def P9690520066641260430.Spec : Prop :=
  ∀ n, P9690520066641260430.a n = A140777 (n + 1)

theorem P9690520066641260430.correct : P9690520066641260430.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P9690520066641260430.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P17769336383045903004

`2*(A000040(n+1)-2)`
-/

namespace A140777.P17769336383045903004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000040 (n + 1) - 2)

end

end A140777.P17769336383045903004

namespace A140777

/-- `2*(A000040(n+1)-2)` -/
def P17769336383045903004.Spec : Prop :=
  ∀ n, P17769336383045903004.a n = A140777 (n + 1)

theorem P17769336383045903004.correct : P17769336383045903004.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P17769336383045903004.a, A140777.P12433789027448162273.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A140777

/-! ## A140777.P5091924666713637827

`2*(A008864(n+1)-3)`
-/

namespace A140777.P5091924666713637827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008864 (n + 1) - 3)

end

end A140777.P5091924666713637827

namespace A140777

/-- `2*(A008864(n+1)-3)` -/
def P5091924666713637827.Spec : Prop :=
  ∀ n, P5091924666713637827.a n = A140777 (n + 1)

theorem P5091924666713637827.correct : P5091924666713637827.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P5091924666713637827.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P17353990312657106447

`2*(A052147(n+1)-4)`
-/

namespace A140777.P17353990312657106447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052147 (n + 1) - 4)

end

end A140777.P17353990312657106447

namespace A140777

/-- `2*(A052147(n+1)-4)` -/
def P17353990312657106447.Spec : Prop :=
  ∀ n, P17353990312657106447.a n = A140777 (n + 1)

theorem P17353990312657106447.correct : P17353990312657106447.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P17353990312657106447.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P4016965658188864669

`A001749(n+1)/2-4`
-/

namespace A140777.P4016965658188864669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 2 - 4

end

end A140777.P4016965658188864669

namespace A140777

/-- `A001749(n+1)/2-4` -/
def P4016965658188864669.Spec : Prop :=
  ∀ n, P4016965658188864669.a n = (A140777 (n + 1) : ℚ)

theorem P4016965658188864669.correct : P4016965658188864669.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P4016965658188864669.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P18017257616061104605

`2*(A113935(n+1)-5)`
-/

namespace A140777.P18017257616061104605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113935 (n + 1) - 5)

end

end A140777.P18017257616061104605

namespace A140777

/-- `2*(A113935(n+1)-5)` -/
def P18017257616061104605.Spec : Prop :=
  ∀ n, P18017257616061104605.a n = A140777 (n + 1)

theorem P18017257616061104605.correct : P18017257616061104605.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P18017257616061104605.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P8809384789227902956

`2*(A065890(n+1)+n)`
-/

namespace A140777.P8809384789227902956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A065890 (n + 1) + (n : ℤ))

end

end A140777.P8809384789227902956

namespace A140777

/-- `2*(A065890(n+1)+n)` -/
def P8809384789227902956.Spec : Prop :=
  ∀ n, P8809384789227902956.a n = A140777 (n + 1)

theorem P8809384789227902956.correct : P8809384789227902956.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P8809384789227902956.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065890, A065890.P15936493256530540462.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P18346513615485177668

`2*(sqrt(A001248(n+1))-2)`
-/

namespace A140777.P18346513615485177668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (Real.sqrt (A001248 (n + 1) : ℝ) - 2)

end

end A140777.P18346513615485177668

namespace A140777

/-- `2*(sqrt(A001248(n+1))-2)` -/
def P18346513615485177668.Spec : Prop :=
  ∀ n, P18346513615485177668.a n = (A140777 (n + 1) : ℝ)

end A140777

/-! ## A140777.P5016419080856181899

`A134591(n+1)+A023445(n)`
-/

namespace A140777.P5016419080856181899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) + A023445 n

end

end A140777.P5016419080856181899

namespace A140777

/-- `A134591(n+1)+A023445(n)` -/
def P5016419080856181899.Spec : Prop :=
  ∀ n, P5016419080856181899.a n = A140777 (n + 1)

theorem P5016419080856181899.correct : P5016419080856181899.Spec := by
  intro n
  simp only [A140777, Nat.add_sub_cancel, A140777.P5016419080856181899.a, A140777.P12433789027448162273.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A023445, A023445.P17030645253662401943.a, A134591, A134591.P13784663667261059065.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140777

/-! ## A140777.P12005775355171789573

`record[2*∑{p}[2*n+1, #-2]]`
-/

namespace A140777.P12005775355171789573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140777.P12005775355171789573

namespace A140777

/-- `record[2*∑{p}[2*n+1, #-2]]` -/
def P12005775355171789573.Spec : Prop :=
  ∀ n, P12005775355171789573.a n = A140777 (n + 1)

end A140777

/-!
# A140778: a(n) is the smallest positive integer such that no number occurs twice in the union of the sequence and its absolute first differences.

The programs for A140778, there is no canonical definition to state claims against.
-/

/-! ## A140778.P9209955574949946093

`A140779(n)+a(n-1)` with `a(0)=1`
-/

namespace A140778.P9209955574949946093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140779 n + a (n - 1)

end

end A140778.P9209955574949946093

/-! ## A140778.P13912696975067727567

`∑[A140779(floor(acot(n)+n))]-1`
-/

namespace A140778.P13912696975067727567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140779 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140778.P13912696975067727567

/-! ## A140778.P18227697106820745716

`∑[A140779(round(sqrt(n²+1)))]-1`
-/

namespace A140778.P18227697106820745716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140779 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A140778.P18227697106820745716

/-! ## A140778.P10683567570895808677

`∑[A140779(n*a(A054977(n)-1))]` with `a(0)=1`
-/

namespace A140778.P10683567570895808677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A140779 ((n : ℤ) * f1 (A054977 n - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140778.P10683567570895808677

/-! ## A140778.P5061034592451950681

`∑[A140779(A000007(n*a((n+1)%3))+n)]` with `a(0)=1, a(1)=2`
-/

namespace A140778.P5061034592451950681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A140779 (A000007 ((n : ℤ) * f1 ((n + 1) % 3)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140778.P5061034592451950681

/-!
# A140779: First differences of A140778.

The programs for A140779, there is no canonical definition to state claims against.
-/

/-! ## A140779.P13101073049392648787

`Δ[A140778(n+1)]`
-/

namespace A140779.P13101073049392648787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140779.P13101073049392648787

/-! ## A140779.P2932437275244171091

`A140778(n+2)-A140778(n+1)`
-/

namespace A140779.P2932437275244171091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140778 (n + 2) - A140778 (n + 1)

end

end A140779.P2932437275244171091

/-!
# A140780: a(n) = 10*a(n-1) - a(n-2) for n >= 2 with a(0) = 1 and a(1) = 3.

The programs for A140780, the canonical program `A140780.P2272194548690573452` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140780 has offset 0).

The definition of A140780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A140780.P2272194548690573452`, by `A140780.P2272194548690573452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140780.P3840372221762008514

`ogf((1-7x)/(1-10x+x^2))`
-/

namespace A140780.P3840372221762008514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -10, 1] n

end

end A140780.P3840372221762008514

namespace A140780

/-- `ogf((1-7x)/(1-10x+x^2))` -/
def P3840372221762008514.Spec : Prop :=
  ∀ n, P3840372221762008514.a n = A140780 n

end A140780

/-! ## A140780.P2272194548690573452

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140780

/-- `10*a(n-1)-a(n-2)` -/
def P2272194548690573452.Spec : Prop :=
  ∀ n, P2272194548690573452.a n = A140780 n

theorem P2272194548690573452.correct : P2272194548690573452.Spec := by
  intro n
  simp only [A140780]

end A140780

/-! ## A140780.P4894920205716499872

`lcm(10, a(n-1))-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A140780.P4894920205716499872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - a (n - 2)

end

end A140780.P4894920205716499872

namespace A140780

/-- `lcm(10, a(n-1))-a(n-2)` -/
def P4894920205716499872.Spec : Prop :=
  ∀ n, P4894920205716499872.a n = A140780 n

end A140780

/-! ## A140780.P8752517939364276354

`A080874(2*n)`
-/

namespace A140780.P8752517939364276354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (2 * n)

end

end A140780.P8752517939364276354

namespace A140780

/-- `A080874(2*n)` -/
def P8752517939364276354.Spec : Prop :=
  ∀ n, P8752517939364276354.a n = A140780 n

end A140780

/-! ## A140780.P1481843619765563695

`A259594(comp[2*(n+1)])`
-/

namespace A140780.P1481843619765563695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259594 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A140780.P1481843619765563695

namespace A140780

/-- `A259594(comp[2*(n+1)])` -/
def P1481843619765563695.Spec : Prop :=
  ∀ n, P1481843619765563695.a n = A140780 n

end A140780

/-! ## A140780.P16838734707283421407

`record[A259594(n*n%2)]`
-/

namespace A140780.P16838734707283421407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259594 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140780.P16838734707283421407

namespace A140780

/-- `record[A259594(n*n%2)]` -/
def P16838734707283421407.Spec : Prop :=
  ∀ n, P16838734707283421407.a n = A140780 n

end A140780

/-! ## A140780.P418499204814470296

`record[A080874(n)^log2(gcd(2, n))]`
-/

namespace A140780.P418499204814470296
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080874 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140780.P418499204814470296

namespace A140780

/-- `record[A080874(n)^log2(gcd(2, n))]` -/
def P418499204814470296.Spec : Prop :=
  ∀ n, P418499204814470296.a n = (A140780 n : ℝ)

end A140780

/-! ## A140780.P3178109335348112757

`A131093(comp[2*(n+1)]+n+1)`
-/

namespace A140780.P3178109335348112757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1))

end

end A140780.P3178109335348112757

namespace A140780

/-- `A131093(comp[2*(n+1)]+n+1)` -/
def P3178109335348112757.Spec : Prop :=
  ∀ n, P3178109335348112757.a n = A140780 n

end A140780

/-! ## A140780.P16757929511276055244

`A080806(A004277(n))`
-/

namespace A140780.P16757929511276055244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (A004277 n).toNat

end

end A140780.P16757929511276055244

namespace A140780

/-- `A080806(A004277(n))` -/
def P16757929511276055244.Spec : Prop :=
  ∀ n, P16757929511276055244.a n = A140780 n

end A140780

/-! ## A140780.P12945003319954546935

`A080806(A004275(n+1))`
-/

namespace A140780.P12945003319954546935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (A004275 (n + 1)).toNat

end

end A140780.P12945003319954546935

namespace A140780

/-- `A080806(A004275(n+1))` -/
def P12945003319954546935.Spec : Prop :=
  ∀ n, P12945003319954546935.a n = A140780 n

end A140780

/-! ## A140780.P17900165019535367513

`A072256(n)+A001078(n)`
-/

namespace A140780.P17900165019535367513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n + A001078 n

end

end A140780.P17900165019535367513

namespace A140780

/-- `A072256(n)+A001078(n)` -/
def P17900165019535367513.Spec : Prop :=
  ∀ n, P17900165019535367513.a n = A140780 n

end A140780

/-! ## A140780.P3805694991850813670

`A001079(n)-A001078(n)`
-/

namespace A140780.P3805694991850813670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - A001078 n

end

end A140780.P3805694991850813670

namespace A140780

/-- `A001079(n)-A001078(n)` -/
def P3805694991850813670.Spec : Prop :=
  ∀ n, P3805694991850813670.a n = A140780 n

end A140780

/-! ## A140780.P9152417374918441020

`2*A181442(A004273(n))-1`
-/

namespace A140780.P9152417374918441020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181442 (A004273 n).toNat - 1

end

end A140780.P9152417374918441020

namespace A140780

/-- `2*A181442(A004273(n))-1` -/
def P9152417374918441020.Spec : Prop :=
  ∀ n, P9152417374918441020.a n = A140780 n

end A140780

/-! ## A140780.P14764994028152844764

`A072256(n+1)-A122653(n)`
-/

namespace A140780.P14764994028152844764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 (n + 1) - A122653 n

end

end A140780.P14764994028152844764

namespace A140780

/-- `A072256(n+1)-A122653(n)` -/
def P14764994028152844764.Spec : Prop :=
  ∀ n, P14764994028152844764.a n = A140780 n

end A140780

/-! ## A140780.P555282182196341780

`A072256(n)+2*A004189(n)`
-/

namespace A140780.P555282182196341780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n + 2 * A004189 n

end

end A140780.P555282182196341780

namespace A140780

/-- `A072256(n)+2*A004189(n)` -/
def P555282182196341780.Spec : Prop :=
  ∀ n, P555282182196341780.a n = A140780 n

end A140780

/-! ## A140780.P5602503188025908257

`A080873(2*n)+A004189(n)`
-/

namespace A140780.P5602503188025908257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n) + A004189 n

end

end A140780.P5602503188025908257

namespace A140780

/-- `A080873(2*n)+A004189(n)` -/
def P5602503188025908257.Spec : Prop :=
  ∀ n, P5602503188025908257.a n = A140780 n

end A140780

/-! ## A140780.P2007739443672652360

`A001079(n)-2*A004189(n)`
-/

namespace A140780.P2007739443672652360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - 2 * A004189 n

end

end A140780.P2007739443672652360

namespace A140780

/-- `A001079(n)-2*A004189(n)` -/
def P2007739443672652360.Spec : Prop :=
  ∀ n, P2007739443672652360.a n = A140780 n

end A140780

/-! ## A140780.P4226347237853308486

`(A072256(n)+A001079(n))/2`
-/

namespace A140780.P4226347237853308486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072256 n + A001079 n : ℚ) / 2

end

end A140780.P4226347237853308486

namespace A140780

/-- `(A072256(n)+A001079(n))/2` -/
def P4226347237853308486.Spec : Prop :=
  ∀ n, P4226347237853308486.a n = (A140780 n : ℚ)

end A140780

/-! ## A140780.P15357057625694843592

`A080872(2*n)-A001078(n)`
-/

namespace A140780.P15357057625694843592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n) - A001078 n

end

end A140780.P15357057625694843592

namespace A140780

/-- `A080872(2*n)-A001078(n)` -/
def P15357057625694843592.Spec : Prop :=
  ∀ n, P15357057625694843592.a n = A140780 n

end A140780

/-! ## A140780.P5248423239432749492

`A140781(n)+A001078(n)/2`
-/

namespace A140780.P5248423239432749492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140781 n : ℚ) + (A001078 n : ℚ) / 2

end

end A140780.P5248423239432749492

namespace A140780

/-- `A140781(n)+A001078(n)/2` -/
def P5248423239432749492.Spec : Prop :=
  ∀ n, P5248423239432749492.a n = (A140780 n : ℚ)

end A140780

/-!
# A140781: a(n) = 10*a(n-1) - a(n-2).

The programs for A140781, the canonical program `A140781.P14503323869913898562` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140781 has offset 0).

The definition of A140781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A140781.P14503323869913898562`, by `A140781.P14503323869913898562.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140781.P14503323869913898562

`10*a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140781

/-- `10*a(n-1)-a(n-2)` -/
def P14503323869913898562.Spec : Prop :=
  ∀ n, P14503323869913898562.a n = A140781 n

theorem P14503323869913898562.correct : P14503323869913898562.Spec := by
  intro n
  simp only [A140781]

end A140781

/-! ## A140781.P18415959370896664402

`ogf((1-8x)/(1-10x+x^2))`
-/

namespace A140781.P18415959370896664402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -10, 1] n

end

end A140781.P18415959370896664402

namespace A140781

/-- `ogf((1-8x)/(1-10x+x^2))` -/
def P18415959370896664402.Spec : Prop :=
  ∀ n, P18415959370896664402.a n = A140781 n

end A140781

/-! ## A140781.P17157485021117018423

`A080873(2*n)`
-/

namespace A140781.P17157485021117018423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n)

end

end A140781.P17157485021117018423

namespace A140781

/-- `A080873(2*n)` -/
def P17157485021117018423.Spec : Prop :=
  ∀ n, P17157485021117018423.a n = A140781 n

end A140781

/-! ## A140781.P1296504223613871263

`record[A080873(n)^log2(gcd(2, n))]`
-/

namespace A140781.P1296504223613871263
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080873 n : ℝ) ^ (Real.logb 2 (Nat.gcd 2 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140781.P1296504223613871263

namespace A140781

/-- `record[A080873(n)^log2(gcd(2, n))]` -/
def P1296504223613871263.Spec : Prop :=
  ∀ n, P1296504223613871263.a n = (A140781 n : ℝ)

end A140781

/-! ## A140781.P3410952866747526319

`A129445(floor(acot(n))+2*n)`
-/

namespace A140781.P3410952866747526319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A140781.P3410952866747526319

namespace A140781

/-- `A129445(floor(acot(n))+2*n)` -/
def P3410952866747526319.Spec : Prop :=
  ∀ n, P3410952866747526319.a n = A140781 n

end A140781

/-! ## A140781.P9994883124369286566

`A129445(comp[2*(n+1)]+1)`
-/

namespace A140781.P9994883124369286566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129445 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A140781.P9994883124369286566

namespace A140781

/-- `A129445(comp[2*(n+1)]+1)` -/
def P9994883124369286566.Spec : Prop :=
  ∀ n, P9994883124369286566.a n = A140781 n

end A140781

/-! ## A140781.P10909518759546739616

`A072256(n)+A004189(n)`
-/

namespace A140781.P10909518759546739616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n + A004189 n

end

end A140781.P10909518759546739616

namespace A140781

/-- `A072256(n)+A004189(n)` -/
def P10909518759546739616.Spec : Prop :=
  ∀ n, P10909518759546739616.a n = A140781 n

end A140781

/-! ## A140781.P10544162714347710625

`A072256(n)+A001078(n)/2`
-/

namespace A140781.P10544162714347710625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072256 n : ℚ) + (A001078 n : ℚ) / 2

end

end A140781.P10544162714347710625

namespace A140781

/-- `A072256(n)+A001078(n)/2` -/
def P10544162714347710625.Spec : Prop :=
  ∀ n, P10544162714347710625.a n = (A140781 n : ℚ)

end A140781

/-! ## A140781.P8345163024755354555

`A072256(n)+∑[A057427(n)*A072256(n)]`
-/

namespace A140781.P8345163024755354555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A072256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140781.P8345163024755354555

namespace A140781

/-- `A072256(n)+∑[A057427(n)*A072256(n)]` -/
def P8345163024755354555.Spec : Prop :=
  ∀ n, P8345163024755354555.a n = A140781 n

end A140781

/-! ## A140781.P107626668393345360

`record[C(A129445(n+1), and(1, n))]`
-/

namespace A140781.P107626668393345360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129445 (n + 1)).toNat (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140781.P107626668393345360

namespace A140781

/-- `record[C(A129445(n+1), and(1, n))]` -/
def P107626668393345360.Spec : Prop :=
  ∀ n, (P107626668393345360.a n : ℤ) = A140781 n

end A140781

/-! ## A140781.P4471862651228133783

`A080874(2*n)-A004189(n)`
-/

namespace A140781.P4471862651228133783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (2 * n) - A004189 n

end

end A140781.P4471862651228133783

namespace A140781

/-- `A080874(2*n)-A004189(n)` -/
def P4471862651228133783.Spec : Prop :=
  ∀ n, P4471862651228133783.a n = A140781 n

end A140781

/-! ## A140781.P4423849193846802692

`A152450(2*n)-A001078(n)`
-/

namespace A140781.P4423849193846802692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152450 (2 * n) - A001078 n

end

end A140781.P4423849193846802692

namespace A140781

/-- `A152450(2*n)-A001078(n)` -/
def P4423849193846802692.Spec : Prop :=
  ∀ n, P4423849193846802692.a n = A140781 n

end A140781

/-! ## A140781.P3905820078102872728

`A001079(n)-A122653(n)/2`
-/

namespace A140781.P3905820078102872728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001079 n : ℚ) - (A122653 n : ℚ) / 2

end

end A140781.P3905820078102872728

namespace A140781

/-- `A001079(n)-A122653(n)/2` -/
def P3905820078102872728.Spec : Prop :=
  ∀ n, P3905820078102872728.a n = (A140781 n : ℚ)

end A140781

/-! ## A140781.P7181056043575427900

`A140780(n)-A001078(n)/2`
-/

namespace A140781.P7181056043575427900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140780 n : ℚ) - (A001078 n : ℚ) / 2

end

end A140781.P7181056043575427900

namespace A140781

/-- `A140780(n)-A001078(n)/2` -/
def P7181056043575427900.Spec : Prop :=
  ∀ n, P7181056043575427900.a n = (A140781 n : ℚ)

end A140781

/-! ## A140781.P7508934158387575841

`(A087799(n)-A122653(n))/2`
-/

namespace A140781.P7508934158387575841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087799 n - A122653 n : ℚ) / 2

end

end A140781.P7508934158387575841

namespace A140781

/-- `(A087799(n)-A122653(n))/2` -/
def P7508934158387575841.Spec : Prop :=
  ∀ n, P7508934158387575841.a n = (A140781 n : ℚ)

end A140781

/-! ## A140781.P5760048938786092287

`∑[A138288(n)]-2*A122652(n)`
-/

namespace A140781.P5760048938786092287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A122652 n

end

end A140781.P5760048938786092287

namespace A140781

/-- `∑[A138288(n)]-2*A122652(n)` -/
def P5760048938786092287.Spec : Prop :=
  ∀ n, P5760048938786092287.a n = A140781 n

end A140781

/-! ## A140781.P12216628991002811604

`2*A152448(2*n)-A004189(n+1)`
-/

namespace A140781.P12216628991002811604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152448 (2 * n) - A004189 (n + 1)

end

end A140781.P12216628991002811604

namespace A140781

/-- `2*A152448(2*n)-A004189(n+1)` -/
def P12216628991002811604.Spec : Prop :=
  ∀ n, P12216628991002811604.a n = A140781 n

end A140781

/-! ## A140781.P12820530026581724380

`A181442(2*n)-A129444(2*n+1)`
-/

namespace A140781.P12820530026581724380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 (2 * n) - A129444 (2 * n + 1)

end

end A140781.P12820530026581724380

namespace A140781

/-- `A181442(2*n)-A129444(2*n+1)` -/
def P12820530026581724380.Spec : Prop :=
  ∀ n, P12820530026581724380.a n = A140781 n

end A140781

/-! ## A140781.P11408556885826765895

`2*A080872(2*n)-A080874(2*n+1)`
-/

namespace A140781.P11408556885826765895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080872 (2 * n) - A080874 (2 * n + 1)

end

end A140781.P11408556885826765895

namespace A140781

/-- `2*A080872(2*n)-A080874(2*n+1)` -/
def P11408556885826765895.Spec : Prop :=
  ∀ n, P11408556885826765895.a n = A140781 n

end A140781

/-! ## A140781.P14466320735810793566

`2*A080872(2*n)-A129445(2*n+1)`
-/

namespace A140781.P14466320735810793566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080872 (2 * n) - A129445 (2 * n + 1)

end

end A140781.P14466320735810793566

namespace A140781

/-- `2*A080872(2*n)-A129445(2*n+1)` -/
def P14466320735810793566.Spec : Prop :=
  ∀ n, P14466320735810793566.a n = A140781 n

end A140781

/-!
# A140782: a(n) = sigma(n) * Kronecker(13, n).

The programs for A140782, the canonical program `A140782.P1653428901956576105` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140782 has offset 1).

The definition of A140782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140782.P1653428901956576105

`A000203(n+1)*A011583(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140782

/-- `A000203(n+1)*A011583(n+1)` -/
def P1653428901956576105.Spec : Prop :=
  ∀ n, P1653428901956576105.a n = A140782 (n + 1)

theorem P1653428901956576105.correct : P1653428901956576105.Spec := by
  intro n
  simp only [A140782, Nat.add_sub_cancel]

end A140782

/-! ## A140782.P4564934981127079041

`(A107497(n+1)-A107498(n+1))/2+A107499(n+1)-A107500(n+1)+A107501(n+1)-A107502(n+1)+A107503(n+1)-A107504(n+1)`
-/

namespace A140782.P4564934981127079041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107497 (n + 1) - A107498 (n + 1) : ℚ) / 2 + (A107499 (n + 1) : ℚ) - (A107500 (n + 1) : ℚ) + (A107501 (n + 1) : ℚ) - (A107502 (n + 1) : ℚ) + (A107503 (n + 1) : ℚ) - (A107504 (n + 1) : ℚ)

end

end A140782.P4564934981127079041

namespace A140782

/-- `(A107497(n+1)-A107498(n+1))/2+A107499(n+1)-A107500(n+1)+A107501(n+1)-A107502(n+1)+A107503(n+1)-A107504(n+1)` -/
def P4564934981127079041.Spec : Prop :=
  ∀ n, P4564934981127079041.a n = (A140782 (n + 1) : ℚ)

end A140782

/-! ## A140782.P16845001271421202420

`∑{d}[n+1, #]*A011583((n+1)/3^val(n+1, 3))`
-/

namespace A140782.P16845001271421202420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A011583 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A140782.P16845001271421202420

namespace A140782

/-- `∑{d}[n+1, #]*A011583((n+1)/3^val(n+1, 3))` -/
def P16845001271421202420.Spec : Prop :=
  ∀ n, P16845001271421202420.a n = A140782 (n + 1)

end A140782

/-! ## A140782.P14599002470129592250

`Δ[A160664(n)]*A011583(n+1)`
-/

namespace A140782.P14599002470129592250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A011583 (n + 1)

end

end A140782.P14599002470129592250

namespace A140782

/-- `Δ[A160664(n)]*A011583(n+1)` -/
def P14599002470129592250.Spec : Prop :=
  ∀ n, P14599002470129592250.a n = A140782 (n + 1)

end A140782

/-! ## A140782.P5085557900253161356

`abs(Δ[A330725(n)])*A011583(n+1)`
-/

namespace A140782.P5085557900253161356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| * A011583 (n + 1)

end

end A140782.P5085557900253161356

namespace A140782

/-- `abs(Δ[A330725(n)])*A011583(n+1)` -/
def P5085557900253161356.Spec : Prop :=
  ∀ n, P5085557900253161356.a n = A140782 (n + 1)

end A140782

/-! ## A140782.P12934683676055498373

`A011583(n+1)*A245092(Δ[n²])`
-/

namespace A140782.P12934683676055498373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (n + 1) * A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140782.P12934683676055498373

namespace A140782

/-- `A011583(n+1)*A245092(Δ[n²])` -/
def P12934683676055498373.Spec : Prop :=
  ∀ n, P12934683676055498373.a n = A140782 (n + 1)

end A140782

/-! ## A140782.P2096495934007384105

`abs(A143348(n+1))*A011583(n+1)`
-/

namespace A140782.P2096495934007384105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| * A011583 (n + 1)

end

end A140782.P2096495934007384105

namespace A140782

/-- `abs(A143348(n+1))*A011583(n+1)` -/
def P2096495934007384105.Spec : Prop :=
  ∀ n, P2096495934007384105.a n = A140782 (n + 1)

end A140782

/-! ## A140782.P2346418450636993066

`sqrt(A072861(n+1))*A011583(n+1)`
-/

namespace A140782.P2346418450636993066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A011583 (n + 1) : ℝ)

end

end A140782.P2346418450636993066

namespace A140782

/-- `sqrt(A072861(n+1))*A011583(n+1)` -/
def P2346418450636993066.Spec : Prop :=
  ∀ n, P2346418450636993066.a n = (A140782 (n + 1) : ℝ)

end A140782

/-! ## A140782.P7719246036343213358

`A011583(n+1)*A326065(2*(n+1))`
-/

namespace A140782.P7719246036343213358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (n + 1) * A326065 (2 * (n + 1))

end

end A140782.P7719246036343213358

namespace A140782

/-- `A011583(n+1)*A326065(2*(n+1))` -/
def P7719246036343213358.Spec : Prop :=
  ∀ n, P7719246036343213358.a n = A140782 (n + 1)

end A140782

/-!
# A140783: Digit sum of A091137(n).

The programs for A140783, there is no canonical definition to state claims against.
-/

/-! ## A140783.P323874304834159077

`∑{digits}[A091137(n), #]`
-/

namespace A140783.P323874304834159077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091137 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140783.P323874304834159077

/-! ## A140783.P2324332563604553052

`∑{digits}[∏[A141056(n)], #]`
-/

namespace A140783.P2324332563604553052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140783.P2324332563604553052

/-! ## A140783.P13454704179677882569

`∑{digits}[a(n-1)*A027760(n), #]` with `a(0)=1`
-/

namespace A140783.P13454704179677882569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A027760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140783.P13454704179677882569

/-! ## A140783.P524369536632415888

`∑{digits}[A001316(n)*A165641(n), #]`
-/

namespace A140783.P524369536632415888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A165641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140783.P524369536632415888

/-! ## A140783.P4819445372943749774

`∑{digits}[(n+1)*A176493(n), #]`
-/

namespace A140783.P4819445372943749774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A176493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A140783.P4819445372943749774

/-!
# A140785: a(n) = the single integer k, where p(n) <= k <= p(n+1), that is divisible by (p(n+1)-p(n)+1), where p(n) is the n-th prime.

The programs for A140785, the canonical program `A140785.P17301607032182637890` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140785 has offset 1).

The definition of A140785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A140785.P17301607032182637890

`(A000040(n+2)-A000040(n+1)+1)*floor(A000040(n+2)/(A000040(n+2)-A000040(n+1)+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A140785

/-- `(A000040(n+2)-A000040(n+1)+1)*floor(A000040(n+2)/(A000040(n+2)-A000040(n+1)+1))` -/
def P17301607032182637890.Spec : Prop :=
  ∀ n, P17301607032182637890.a n = A140785 (n + 1)

theorem P17301607032182637890.correct : P17301607032182637890.Spec := by
  intro n
  simp only [A140785, Nat.add_sub_cancel]

end A140785

/-! ## A140785.P9396782372112234493

`A000040(n+2)-A000040(n+2)%A076368(n+2)`
-/

namespace A140785.P9396782372112234493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - Int.tmod (A000040 (n + 2)) (A076368 (n + 2))

end

end A140785.P9396782372112234493

namespace A140785

/-- `A000040(n+2)-A000040(n+2)%A076368(n+2)` -/
def P9396782372112234493.Spec : Prop :=
  ∀ n, P9396782372112234493.a n = A140785 (n + 1)

end A140785

/-! ## A140785.P17198090915834748457

`A182986(n+3)-A182986(n+3)%A076368(n+2)`
-/

namespace A140785.P17198090915834748457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 3) - Int.tmod (A182986 (n + 3)) (A076368 (n + 2))

end

end A140785.P17198090915834748457

namespace A140785

/-- `A182986(n+3)-A182986(n+3)%A076368(n+2)` -/
def P17198090915834748457.Spec : Prop :=
  ∀ n, P17198090915834748457.a n = A140785 (n + 1)

end A140785

/-! ## A140785.P14486114468889120277

`A006093(n+2)-A006093(n+2)%Δ[A095116(n+1)]`
-/

namespace A140785.P14486114468889120277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - Int.tmod (A006093 (n + 2)) (f1 (n + 1) - f1 n)

end

end A140785.P14486114468889120277

namespace A140785

/-- `A006093(n+2)-A006093(n+2)%Δ[A095116(n+1)]` -/
def P14486114468889120277.Spec : Prop :=
  ∀ n, P14486114468889120277.a n = A140785 (n + 1)

end A140785

/-! ## A140785.P3940783206515636401

`A045344(n+1)-A045344(n+1)%(A001223(n+1)+1)`
-/

namespace A140785.P3940783206515636401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - Int.tmod (A045344 (n + 1)) (A001223 (n + 1) + 1)

end

end A140785.P3940783206515636401

namespace A140785

/-- `A045344(n+1)-A045344(n+1)%(A001223(n+1)+1)` -/
def P3940783206515636401.Spec : Prop :=
  ∀ n, P3940783206515636401.a n = A140785 (n + 1)

end A140785

/-! ## A140785.P139942625583100093

`A000040(n+2)-1-(A000040(n+2)-1)%Δ[A095116(n+1)]`
-/

namespace A140785.P139942625583100093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - 1 - Int.tmod (A000040 (n + 2) - 1) (f1 (n + 1) - f1 n)

end

end A140785.P139942625583100093

namespace A140785

/-- `A000040(n+2)-1-(A000040(n+2)-1)%Δ[A095116(n+1)]` -/
def P139942625583100093.Spec : Prop :=
  ∀ n, P139942625583100093.a n = A140785 (n + 1)

end A140785

/-!
# A140786: Number of n X n symmetric binary matrices with no more than one greater count of 1's than 0's in and to the left of any position.

The programs for A140786, there is no canonical definition to state claims against.
-/

/-! ## A140786.P17229530434472038924

`∏[record[A146119(n)]]/A146121(n)`
-/

namespace A140786.P17229530434472038924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A146121 n : ℚ)

end

end A140786.P17229530434472038924

/-!
# A140787: Expansion of 1 / ( (1+x)*(2*x+1)*(-1+2*x)^2 ).

The programs for A140787, the canonical program `A140787.P11595686962298845275` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140787 has offset 0).

The definition of A140787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-6x^2+4x^3+8x^4))` (program `A140787.P11595686962298845275`, by `A140787.P11595686962298845275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140787.P3213275946120437155

`2^n*(n/3+11/18)+(-1)^n*(2^(n-1)-1/9)`
-/

namespace A140787.P3213275946120437155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * ((n : ℚ) / 3 + (11 : ℚ) / 18) + ((-1) ^ n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (1 : ℚ) / 9)

end

end A140787.P3213275946120437155

namespace A140787

/-- `2^n*(n/3+11/18)+(-1)^n*(2^(n-1)-1/9)` -/
def P3213275946120437155.Spec : Prop :=
  ∀ n, P3213275946120437155.a n = (A140787 n : ℚ)

end A140787

/-! ## A140787.P11595686962298845275

`ogf(1/(1-x-6x^2+4x^3+8x^4))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140787

/-- `ogf(1/(1-x-6x^2+4x^3+8x^4))` -/
def P11595686962298845275.Spec : Prop :=
  ∀ n, P11595686962298845275.a n = A140787 n

theorem P11595686962298845275.correct : P11595686962298845275.Spec := by
  intro n
  simp only [A140787]

end A140787

/-! ## A140787.P12478075652190194458

`abs(a(n-1)-A134353(n))` with `a(0)=1`
-/

namespace A140787.P12478075652190194458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A134353 n|

end

end A140787.P12478075652190194458

namespace A140787

/-- `abs(a(n-1)-A134353(n))` -/
def P12478075652190194458.Spec : Prop :=
  ∀ n, P12478075652190194458.a n = A140787 n

end A140787

/-! ## A140787.P9590484364427949542

`Δ[A059570(n+1)-A092809(n)]`
-/

namespace A140787.P9590484364427949542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059570 (n + 1) - A092809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140787.P9590484364427949542

namespace A140787

/-- `Δ[A059570(n+1)-A092809(n)]` -/
def P9590484364427949542.Spec : Prop :=
  ∀ n, P9590484364427949542.a n = A140787 n

end A140787

/-!
# A140788: a(n) = 6*4^n + 2.

The programs for A140788, the canonical program `A140788.P4402501163805591567` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140788 has offset 0).

The definition of A140788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n+2` (program `A140788.P4402501163805591567`, by `A140788.P4402501163805591567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140788.P4402501163805591567

`6*4^n+2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140788

/-- `6*4^n+2` -/
def P4402501163805591567.Spec : Prop :=
  ∀ n, (P4402501163805591567.a n : ℤ) = A140788 n

theorem P4402501163805591567.correct : P4402501163805591567.Spec := by
  intro n
  simp only [A140788]

end A140788

/-! ## A140788.P1574416673703721167

`ogf((8-14x)/(1-5x+4x^2))`
-/

namespace A140788.P1574416673703721167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -14] [1, -5, 4] n

end

end A140788.P1574416673703721167

namespace A140788

/-- `ogf((8-14x)/(1-5x+4x^2))` -/
def P1574416673703721167.Spec : Prop :=
  ∀ n, P1574416673703721167.a n = A140788 n

end A140788

/-! ## A140788.P18195723869289441565

`2*A140660(n)`
-/

namespace A140788.P18195723869289441565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140660 n

end

end A140788.P18195723869289441565

namespace A140788

/-- `2*A140660(n)` -/
def P18195723869289441565.Spec : Prop :=
  ∀ n, P18195723869289441565.a n = A140788 n

theorem P18195723869289441565.correct : P18195723869289441565.Spec := by
  intro n
  simp only [A140788, Nat.add_sub_cancel, A140788.P18195723869289441565.a, A140788.P4402501163805591567.a, A140660, A140660.P5031545441558427530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140788

/-! ## A140788.P17278984892405923827

`Δ[2*or(n, 4^n)]`
-/

namespace A140788.P17278984892405923827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor n (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140788.P17278984892405923827

namespace A140788

/-- `Δ[2*or(n, 4^n)]` -/
def P17278984892405923827.Spec : Prop :=
  ∀ n, P17278984892405923827.a n = A140788 n

end A140788

/-! ## A140788.P15902322316680635580

`Δ[2*xor(n, 4^n)]`
-/

namespace A140788.P15902322316680635580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A140788.P15902322316680635580

namespace A140788

/-- `Δ[2*xor(n, 4^n)]` -/
def P15902322316680635580.Spec : Prop :=
  ∀ n, P15902322316680635580.a n = A140788 n

end A140788

/-! ## A140788.P6408344526709678468

`∑[4*a(n-1)]` with `a(0)=8, a(1)=18`
-/

namespace A140788.P6408344526709678468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 18] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A140788.P6408344526709678468

namespace A140788

/-- `∑[4*a(n-1)]` -/
def P6408344526709678468.Spec : Prop :=
  ∀ n, (P6408344526709678468.a n : ℤ) = A140788 n

end A140788

/-! ## A140788.P16677752894293184566

`abs(4*a(n-1)-6)` with `a(0)=8`
-/

namespace A140788.P16677752894293184566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |4 * a (n - 1) - 6|

end

end A140788.P16677752894293184566

namespace A140788

/-- `abs(4*a(n-1)-6)` -/
def P16677752894293184566.Spec : Prop :=
  ∀ n, P16677752894293184566.a n = A140788 n

end A140788

/-! ## A140788.P4467196134176633053

`record[2*(3-a(n-1))]` with `a(0)=8`
-/

namespace A140788.P4467196134176633053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140788.P4467196134176633053

namespace A140788

/-- `record[2*(3-a(n-1))]` -/
def P4467196134176633053.Spec : Prop :=
  ∀ n, P4467196134176633053.a n = A140788 n

end A140788

/-! ## A140788.P11948475637957778064

`ceil(4*(a(n-1)-ϕ))` with `a(0)=8`
-/

namespace A140788.P11948475637957778064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  ⌈4 * ((a (n - 1) : ℝ) - Real.goldenRatio)⌉

end

end A140788.P11948475637957778064

namespace A140788

/-- `ceil(4*(a(n-1)-ϕ))` -/
def P11948475637957778064.Spec : Prop :=
  ∀ n, P11948475637957778064.a n = A140788 n

end A140788

/-! ## A140788.P14011553999412664495

`round(4*(a(n-1)-ϕ))` with `a(0)=8`
-/

namespace A140788.P14011553999412664495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  SequenceMachineLib.roundAway (4 * ((a (n - 1) : ℝ) - Real.goldenRatio))

end

end A140788.P14011553999412664495

namespace A140788

/-- `round(4*(a(n-1)-ϕ))` -/
def P14011553999412664495.Spec : Prop :=
  ∀ n, P14011553999412664495.a n = A140788 n

end A140788

/-! ## A140788.P7866537364289650542

`record[Δ[(-2)^(n+1)]+2]`
-/

namespace A140788.P7866537364289650542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140788.P7866537364289650542

namespace A140788

/-- `record[Δ[(-2)^(n+1)]+2]` -/
def P7866537364289650542.Spec : Prop :=
  ∀ n, P7866537364289650542.a n = A140788 n

end A140788

/-! ## A140788.P3221993087154050617

`2*(2*a(n-1)-3)` with `a(0)=8`
-/

namespace A140788.P3221993087154050617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  2 * (2 * a (n - 1) - 3)

end

end A140788.P3221993087154050617

namespace A140788

/-- `2*(2*a(n-1)-3)` -/
def P3221993087154050617.Spec : Prop :=
  ∀ n, P3221993087154050617.a n = A140788 n

theorem P3221993087154050617.correct : P3221993087154050617.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A140788, Nat.add_sub_cancel, A140788.P3221993087154050617.a, A140788.P4402501163805591567.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A140788, Nat.add_sub_cancel, A140788.P3221993087154050617.a, A140788.P4402501163805591567.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A140788

/-! ## A140788.P17204242741385531976

`A164094(Δ[n²])`
-/

namespace A140788.P17204242741385531976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140788.P17204242741385531976

namespace A140788

/-- `A164094(Δ[n²])` -/
def P17204242741385531976.Spec : Prop :=
  ∀ n, P17204242741385531976.a n = A140788 n

end A140788

/-! ## A140788.P12445229087676442458

`A259713(Δ[n²])`
-/

namespace A140788.P12445229087676442458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259713 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A140788.P12445229087676442458

namespace A140788

/-- `A259713(Δ[n²])` -/
def P12445229087676442458.Spec : Prop :=
  ∀ n, P12445229087676442458.a n = A140788 n

end A140788

/-! ## A140788.P3542662536391338915

`Δ[A083706(2*n)]`
-/

namespace A140788.P3542662536391338915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083706 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140788.P3542662536391338915

namespace A140788

/-- `Δ[A083706(2*n)]` -/
def P3542662536391338915.Spec : Prop :=
  ∀ n, P3542662536391338915.a n = A140788 n

end A140788

/-! ## A140788.P7315244803425505517

`Δ[2*A158879(n)]`
-/

namespace A140788.P7315244803425505517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140788.P7315244803425505517

namespace A140788

/-- `Δ[2*A158879(n)]` -/
def P7315244803425505517.Spec : Prop :=
  ∀ n, P7315244803425505517.a n = A140788 n

theorem P7315244803425505517.correct : P7315244803425505517.Spec := by
  intro n
  simp only [A140788, Nat.add_sub_cancel, A140788.P7315244803425505517.f1, A140788.P7315244803425505517.a, A140788.P4402501163805591567.a, A158879, A158879.P14813342468476927609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140788

/-! ## A140788.P5405645684110615095

`Δ[A005126(Δ[n²])]`
-/

namespace A140788.P5405645684110615095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005126 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140788.P5405645684110615095

namespace A140788

/-- `Δ[A005126(Δ[n²])]` -/
def P5405645684110615095.Spec : Prop :=
  ∀ n, P5405645684110615095.a n = A140788 n

end A140788

/-! ## A140788.P9870809180090006696

`Δ[A006127(Δ[n²])]`
-/

namespace A140788.P9870809180090006696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006127 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140788.P9870809180090006696

namespace A140788

/-- `Δ[A006127(Δ[n²])]` -/
def P9870809180090006696.Spec : Prop :=
  ∀ n, P9870809180090006696.a n = A140788 n

end A140788

/-! ## A140788.P7193625165523369655

`Δ[A052944(Δ[n²])]`
-/

namespace A140788.P7193625165523369655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052944 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A140788.P7193625165523369655

namespace A140788

/-- `Δ[A052944(Δ[n²])]` -/
def P7193625165523369655.Spec : Prop :=
  ∀ n, P7193625165523369655.a n = A140788 n

end A140788

/-! ## A140788.P13787073803519493462

`2*(A164346(n)+1)`
-/

namespace A140788.P13787073803519493462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A164346 n + 1)

end

end A140788.P13787073803519493462

namespace A140788

/-- `2*(A164346(n)+1)` -/
def P13787073803519493462.Spec : Prop :=
  ∀ n, P13787073803519493462.a n = A140788 n

theorem P13787073803519493462.correct : P13787073803519493462.Spec := by
  intro n
  simp only [A140788, Nat.add_sub_cancel, A140788.P13787073803519493462.a, A140788.P4402501163805591567.a, A164346, A164346.P15391135698532929339.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A140788

/-!
# A140789: We consider how many ways there are of coloring a square grid, n X n, using just two colors, black & white say. If the resulting grid has TWO lines of symmetry, then the number of different grids is given by this sequence. None of these counted are the images of any of the others under a rotation. If one wishes to count these as different, then each of these numbers can be multiplied by 2.

The programs for A140789, there is no canonical definition to state claims against.
-/

/-! ## A140789.P15423248590114848484

`and(A001160(A343364(n)), A268157(n+1))`
-/

namespace A140789.P15423248590114848484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001160 (A343364 n).toNat) (A268157 (n + 1))

end

end A140789.P15423248590114848484

/-! ## A140789.P17820947789662049809

`A160171(A259377(n+1))*A259386(n+1)`
-/

namespace A140789.P17820947789662049809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160171 (A259377 (n + 1)).toNat * A259386 (n + 1)

end

end A140789.P17820947789662049809

/-!
# A140790: Numbers n such that phi(n)*sigma(n)=phi(n-1)*sigma(n-1) (phi is the Euler totient function A000010 and sigma is the sum-of-divisors function A000203).

The programs for A140790, there is no canonical definition to state claims against.
-/

/-! ## A140790.P12014997510960434450

`A244439(n+1)+1`
-/

namespace A140790.P12014997510960434450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244439 (n + 1) + 1

end

end A140790.P12014997510960434450

/-! ## A140790.P8288155635795098409

`A335023(A244439(n+1))`
-/

namespace A140790.P8288155635795098409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335023 (A244439 (n + 1)).toNat

end

end A140790.P8288155635795098409

/-! ## A140790.P2614739476000662829

`A020725(A244439(n+1))`
-/

namespace A140790.P2614739476000662829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A244439 (n + 1)).toNat

end

end A140790.P2614739476000662829

/-! ## A140790.P10977043802000379186

`eq[A062354(n+1), A062354(n+2)]+2`
-/

namespace A140790.P10977043802000379186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A140790.P10977043802000379186

/-!
# A140791: First occurrence of prime gap 10*n.

The programs for A140791, there is no canonical definition to state claims against.
-/

/-! ## A140791.P16641733350206348575

`A000230(5*(n+1))`
-/

namespace A140791.P16641733350206348575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000230 (5 * (n + 1))

end

end A140791.P16641733350206348575

/-! ## A140791.P14015131319091452545

`A045881(5*(n+1))-1`
-/

namespace A140791.P14015131319091452545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045881 (5 * (n + 1)) - 1

end

end A140791.P14015131319091452545

/-! ## A140791.P1024571938541247535

`or(1, A000230(A008706(n+1)))`
-/

namespace A140791.P1024571938541247535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000230 (A008706 (n + 1)).toNat)

end

end A140791.P1024571938541247535

/-! ## A140791.P17757288282471882478

`A000230(A008706(n+1))/A007318(∑[n])`
-/

namespace A140791.P17757288282471882478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000230 (A008706 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A140791.P17757288282471882478

/-! ## A140791.P5873280502546677312

`lcm(A000230(A008706(n+1)), A178334(n+1))`
-/

namespace A140791.P5873280502546677312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000230 (A008706 (n + 1)).toNat) (A178334 (n + 1))

end

end A140791.P5873280502546677312

/-!
# A140792: Weight distribution of [128,64,22] extended binary primitive BCH (or XBCH) code.

The programs for A140792, there is no canonical definition to state claims against.
-/

/-! ## A140792.P12448587315521789508

`A151818(2*n)+A151818(A004281(n+1))`
-/

namespace A140792.P12448587315521789508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151818 (2 * n) + A151818 (A004281 (n + 1)).toNat

end

end A140792.P12448587315521789508

/-! ## A140792.P6459412666920747029

`A151818(2*n)+A151818(A080676(n+4))`
-/

namespace A140792.P6459412666920747029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151818 (2 * n) + A151818 (A080676 (n + 4)).toNat

end

end A140792.P6459412666920747029

/-! ## A140792.P15901288448692713739

`A100910(n)*A140894(A250120(n))`
-/

namespace A140792.P15901288448692713739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 n * A140894 (A250120 n).toNat

end

end A140792.P15901288448692713739

/-! ## A140792.P1281220154428385949

`A000203(A265125(n+1))*A014856(n)`
-/

namespace A140792.P1281220154428385949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A265125 (n + 1)).toNat * A014856 n

end

end A140792.P1281220154428385949

/-! ## A140792.P14063538713133535939

`A000203(A265125(n+1))*A100910(n)`
-/

namespace A140792.P14063538713133535939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A265125 (n + 1)).toNat * A100910 n

end

end A140792.P14063538713133535939

/-!
# A140795: We consider how many ways there are of coloring a square grid, n X n, using just two colors, black & white say. If the resulting grid has rotational symmetry of order two only, then the number of different grids is given by this sequence. None of these counted are the images of any of the others under a reflection or a rotation of 90 degrees. If one wishes to count these as different, then each of these numbers can be multiplied by 4.

The programs for A140795, there is no canonical definition to state claims against.
-/

/-! ## A140795.P2825834672509133296

`A079688(∑[18*a(n-1)-a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A140795.P2825834672509133296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  18 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079688 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A140795.P2825834672509133296

/-!
# A140796: a(n)=a(n-1)+6a(n-2), n>2.

The programs for A140796, the canonical program `A140796.P2297825914097039603` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140796 has offset 0).

The definition of A140796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+6*a(n-2)` (program `A140796.P2297825914097039603`, by `A140796.P2297825914097039603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A140796.P1284931874830693200

`ogf((1+4x+3x^2)/(1-x-6x^2))`
-/

namespace A140796.P1284931874830693200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 3] [1, -1, -6] n

end

end A140796.P1284931874830693200

namespace A140796

/-- `ogf((1+4x+3x^2)/(1-x-6x^2))` -/
def P1284931874830693200.Spec : Prop :=
  ∀ n, P1284931874830693200.a n = A140796 n

end A140796

/-! ## A140796.P2297825914097039603

`a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=5, a(2)=14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140796

/-- `a(n-1)+6*a(n-2)` -/
def P2297825914097039603.Spec : Prop :=
  ∀ n, (P2297825914097039603.a n : ℤ) = A140796 n

theorem P2297825914097039603.correct : P2297825914097039603.Spec := by
  intro n
  simp only [A140796]

end A140796

/-! ## A140796.P7726812832118833583

`A140725(n)+A140725(n+1)`
-/

namespace A140796.P7726812832118833583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140725 n + A140725 (n + 1)

end

end A140796.P7726812832118833583

namespace A140796

/-- `A140725(n)+A140725(n+1)` -/
def P7726812832118833583.Spec : Prop :=
  ∀ n, P7726812832118833583.a n = A140796 n

end A140796

/-! ## A140796.P6282865947326070847

`3*a(n-1)-(-2)^(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A140796.P6282865947326070847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  3 * a (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A140796.P6282865947326070847

namespace A140796

/-- `3*a(n-1)-(-2)^(n-2)` -/
def P6282865947326070847.Spec : Prop :=
  ∀ n, P6282865947326070847.a n = (A140796 n : ℚ)

end A140796

/-! ## A140796.P17348522054299952194

`A003946(n)+abs(A091004(n))`
-/

namespace A140796.P17348522054299952194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n + |A091004 n|

end

end A140796.P17348522054299952194

namespace A140796

/-- `A003946(n)+abs(A091004(n))` -/
def P17348522054299952194.Spec : Prop :=
  ∀ n, P17348522054299952194.a n = A140796 n

end A140796

/-! ## A140796.P7908437537658458325

`A133467(n)+lcm(3, A091004(n))`
-/

namespace A140796.P7908437537658458325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 n + (Int.lcm 3 (A091004 n) : ℤ)

end

end A140796.P7908437537658458325

namespace A140796

/-- `A133467(n)+lcm(3, A091004(n))` -/
def P7908437537658458325.Spec : Prop :=
  ∀ n, P7908437537658458325.a n = A140796 n

end A140796

/-! ## A140796.P10446220382477106855

`abs(A000007(n)+Δ[A091003(n)])`
-/

namespace A140796.P10446220382477106855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000007 n + (f1 (n + 1) - f1 n)|

end

end A140796.P10446220382477106855

namespace A140796

/-- `abs(A000007(n)+Δ[A091003(n)])` -/
def P10446220382477106855.Spec : Prop :=
  ∀ n, P10446220382477106855.a n = A140796 n

end A140796

/-! ## A140796.P16673668704132474062

`A133467(n)+Δ[abs(A091003(n))]`
-/

namespace A140796.P16673668704132474062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091003 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 n + (f1 (n + 1) - f1 n)

end

end A140796.P16673668704132474062

namespace A140796

/-- `A133467(n)+Δ[abs(A091003(n))]` -/
def P16673668704132474062.Spec : Prop :=
  ∀ n, P16673668704132474062.a n = A140796 n

end A140796

/-! ## A140796.P16620064456531787956

`A074324(2*n)+abs(A091004(n))`
-/

namespace A140796.P16620064456531787956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 (2 * n) + |A091004 n|

end

end A140796.P16620064456531787956

namespace A140796

/-- `A074324(2*n)+abs(A091004(n))` -/
def P16620064456531787956.Spec : Prop :=
  ∀ n, P16620064456531787956.a n = A140796 n

end A140796

/-! ## A140796.P4140633395425955575

`A000244(n)+A000244(n)-abs(A091003(n))`
-/

namespace A140796.P4140633395425955575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A000244 n - |A091003 n|)

end

end A140796.P4140633395425955575

namespace A140796

/-- `A000244(n)+A000244(n)-abs(A091003(n))` -/
def P4140633395425955575.Spec : Prop :=
  ∀ n, P4140633395425955575.a n = A140796 n

end A140796

/-! ## A140796.P3538987818566084146

`A099856(n)-A140725(n)`
-/

namespace A140796.P3538987818566084146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099856 n - A140725 n

end

end A140796.P3538987818566084146

namespace A140796

/-- `A099856(n)-A140725(n)` -/
def P3538987818566084146.Spec : Prop :=
  ∀ n, P3538987818566084146.a n = A140796 n

end A140796

/-! ## A140796.P15198651908369489308

`Δ[A000244(n)]-abs(A091003(n))`
-/

namespace A140796.P15198651908369489308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - |A091003 n|

end

end A140796.P15198651908369489308

namespace A140796

/-- `Δ[A000244(n)]-abs(A091003(n))` -/
def P15198651908369489308.Spec : Prop :=
  ∀ n, P15198651908369489308.a n = A140796 n

end A140796

/-!
# A140797: Numbers of the form (2^p^N-1)/(2^p^(N-1)-1), where N>0, p is prime.

The programs for A140797, there is no canonical definition to state claims against.
-/

/-! ## A140797.P10203972870757375007

`∩[A144753(n+1), A153601(n+1)]`
-/

namespace A140797.P10203972870757375007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140797.P10203972870757375007

/-! ## A140797.P13036855165790441664

`∩[A153601(n+1), A258159(n+1)]`
-/

namespace A140797.P13036855165790441664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140797.P13036855165790441664

/-! ## A140797.P936470933964690513

`filter[A064896(n+1), A257000(#)]`
-/

namespace A140797.P936470933964690513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A140797.P936470933964690513

/-! ## A140797.P18237286818540789234

`filter[A235264(n+1), A257000(#)]`
-/

namespace A140797.P18237286818540789234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A140797.P18237286818540789234

/-! ## A140797.P16452010115962490932

`filter[A164713(n+3), A257000(#)]`
-/

namespace A140797.P16452010115962490932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164713 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A140797.P16452010115962490932

/-!
# A140799: Primes congruent to 101 or 109 mod 210.

The programs for A140799, the canonical program `A140799.P9378238813652599034` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A140799 has offset 1).

The definition of A140799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A140799.P9378238813652599034

`p?[7*15*n-a(n-1)]` with `a(0)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A140799

/-- `p?[7*15*n-a(n-1)]` -/
def P9378238813652599034.Spec : Prop :=
  ∀ n, P9378238813652599034.a n = A140799 (n + 1)

theorem P9378238813652599034.correct : P9378238813652599034.Spec := by
  intro n
  simp only [A140799, Nat.add_sub_cancel]

end A140799

/-! ## A140799.P699324987737291407

`p?[A110655(n)+A008574(A175886(n+1))]`
-/

namespace A140799.P699324987737291407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A008574 (A175886 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140799.P699324987737291407

namespace A140799

/-- `p?[A110655(n)+A008574(A175886(n+1))]` -/
def P699324987737291407.Spec : Prop :=
  ∀ n, P699324987737291407.a n = A140799 (n + 1)

end A140799

/-! ## A140799.P4537982712688229536

`p?[A214066(A113801(n+1))+1]`
-/

namespace A140799.P4537982712688229536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214066 (A113801 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140799.P4537982712688229536

namespace A140799

/-- `p?[A214066(A113801(n+1))+1]` -/
def P4537982712688229536.Spec : Prop :=
  ∀ n, P4537982712688229536.a n = A140799 (n + 1)

end A140799

/-! ## A140799.P5310895318046187227

`∩[A140506(n+1), A315671(n)]`
-/

namespace A140799.P5310895318046187227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140799.P5310895318046187227

namespace A140799

/-- `∩[A140506(n+1), A315671(n)]` -/
def P5310895318046187227.Spec : Prop :=
  ∀ n, (P5310895318046187227.a n : ℤ) = A140799 (n + 1)

end A140799

/-! ## A140799.P2292490113989942830

`p?[A315368(n)+A313595(A315368(n))]`
-/

namespace A140799.P2292490113989942830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315368 n + A313595 (A315368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A140799.P2292490113989942830

namespace A140799

/-- `p?[A315368(n)+A313595(A315368(n))]` -/
def P2292490113989942830.Spec : Prop :=
  ∀ n, P2292490113989942830.a n = A140799 (n + 1)

end A140799

/-! ## A140799.P16737754676726076954

`∩[A140506(n+1), A311440(n)]`
-/

namespace A140799.P16737754676726076954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140799.P16737754676726076954

namespace A140799

/-- `∩[A140506(n+1), A311440(n)]` -/
def P16737754676726076954.Spec : Prop :=
  ∀ n, (P16737754676726076954.a n : ℤ) = A140799 (n + 1)

end A140799

