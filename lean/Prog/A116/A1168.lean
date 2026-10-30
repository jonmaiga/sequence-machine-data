import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

/-!
# A116800: Number of permutations of length n which avoid the patterns 1432, 2314, 3241.

The programs for A116800, the canonical program `A116800.P14582775853327887143` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116800 has offset 1).

The definition of A116800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116800.P14582775853327887143

`ogf((1-5x+10x^2-7x^3+3x^4-x^5)/(1-7x+18x^2-22x^3+14x^4-3x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116800

/-- `ogf((1-5x+10x^2-7x^3+3x^4-x^5)/(1-7x+18x^2-22x^3+14x^4-3x^5))` -/
def P14582775853327887143.Spec : Prop :=
  ∀ n, P14582775853327887143.a n = A116800 (n + 1)

theorem P14582775853327887143.correct : P14582775853327887143.Spec := by
  intro n
  simp only [A116800, Nat.add_sub_cancel]

end A116800

/-! ## A116800.P15157066461697854644

`∑[A233583(A025192(n))-A273342(n+2)]`
-/

namespace A116800.P15157066461697854644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A025192 n).toNat - A273342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116800.P15157066461697854644

namespace A116800

/-- `∑[A233583(A025192(n))-A273342(n+2)]` -/
def P15157066461697854644.Spec : Prop :=
  ∀ n, P15157066461697854644.a n = A116800 (n + 1)

end A116800

/-! ## A116800.P3552587357869804849

`∑[A233583(A025192(n))-A276067(n+2)]`
-/

namespace A116800.P3552587357869804849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A025192 n).toNat - A276067 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116800.P3552587357869804849

namespace A116800

/-- `∑[A233583(A025192(n))-A276067(n+2)]` -/
def P3552587357869804849.Spec : Prop :=
  ∀ n, P3552587357869804849.a n = A116800 (n + 1)

end A116800

/-!
# A116801: Number of permutations of length n which avoid the patterns 1234, 1432, 2413.

The programs for A116801, there is no canonical definition to state claims against.
-/

/-! ## A116801.P14415563029880193867

`A110656(A097786(n)+A006234(n+3))`
-/

namespace A116801.P14415563029880193867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A097786 n + A006234 (n + 3)).toNat

end

end A116801.P14415563029880193867

/-! ## A116801.P14977459604896352430

`A187186(A127866(n+2)-A270929(n+1))`
-/

namespace A116801.P14977459604896352430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A127866 (n + 2) - A270929 (n + 1)).toNat

end

end A116801.P14977459604896352430

/-!
# A116802: Number of permutations of length n which avoid the patterns 1342, 3421, 4213.

The programs for A116802, there is no canonical definition to state claims against.
-/

/-! ## A116802.P13407436580793575839

`A357923(n)-A110532(A357923(n))`
-/

namespace A116802.P13407436580793575839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357923 n - A110532 (A357923 n).toNat

end

end A116802.P13407436580793575839

/-! ## A116802.P16008581530842485431

`A226431(n+1)+A185284(n²+1)`
-/

namespace A116802.P16008581530842485431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226431 (n + 1) + A185284 (n ^ 2 + 1)

end

end A116802.P16008581530842485431

/-! ## A116802.P4723277234914179757

`A116787(n+1)+A006370(A184993(n))`
-/

namespace A116802.P4723277234914179757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116787 (n + 1) + A006370 (A184993 n).toNat

end

end A116802.P4723277234914179757

/-!
# A116803: Number of permutations of length n which avoid the patterns 1234, 3421, 4231.

The programs for A116803, the canonical program `A116803.P1055783820682823091` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116803 has offset 1).

The definition of A116803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116803.P1055783820682823091

`ogf((1-5x+13x^2-14x^3+17x^4-3x^5-7x^6+3x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116803

/-- `ogf((1-5x+13x^2-14x^3+17x^4-3x^5-7x^6+3x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P1055783820682823091.Spec : Prop :=
  ∀ n, P1055783820682823091.a n = A116803 (n + 1)

theorem P1055783820682823091.correct : P1055783820682823091.Spec := by
  intro n
  simp only [A116803, Nat.add_sub_cancel]

end A116803

/-! ## A116803.P5701952872774932085

`A026819(A099459(n))-n²`
-/

namespace A116803.P5701952872774932085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A099459 n).toNat - (n ^ 2 : ℤ)

end

end A116803.P5701952872774932085

namespace A116803

/-- `A026819(A099459(n))-n²` -/
def P5701952872774932085.Spec : Prop :=
  ∀ n, P5701952872774932085.a n = A116803 (n + 1)

end A116803

/-!
# A116804: Number of permutations of length n which avoid the patterns 1234, 1432, 4231.

The programs for A116804, the canonical program `A116804.P10824774747222260964` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116804 has offset 1).

The definition of A116804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116804.P10824774747222260964

`ogf((1-3x+6x^2+x^3+10x^4+9x^5-x^6-2x^7+5x^8)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116804

/-- `ogf((1-3x+6x^2+x^3+10x^4+9x^5-x^6-2x^7+5x^8)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10824774747222260964.Spec : Prop :=
  ∀ n, P10824774747222260964.a n = A116804 (n + 1)

theorem P10824774747222260964.correct : P10824774747222260964.Spec := by
  intro n
  simp only [A116804, Nat.add_sub_cancel]

end A116804

/-! ## A116804.P12735608524162546832

`∑[A169799(a(n-1)+2)]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A116804.P12735608524162546832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  A169799 (f1 (n - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116804.P12735608524162546832

namespace A116804

/-- `∑[A169799(a(n-1)+2)]` -/
def P12735608524162546832.Spec : Prop :=
  ∀ n, P12735608524162546832.a n = A116804 (n + 1)

end A116804

/-!
# A116805: Number of permutations of length n which avoid the patterns 2134, 3214, 4123.

The programs for A116805, there is no canonical definition to state claims against.
-/

/-! ## A116805.P11128833565764567072

`record[A008616(A082133(n))]`
-/

namespace A116805.P11128833565764567072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A082133 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116805.P11128833565764567072

/-! ## A116805.P18329425898508177846

`A008616(A082133(n+2))`
-/

namespace A116805.P18329425898508177846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A082133 (n + 2)).toNat

end

end A116805.P18329425898508177846

/-! ## A116805.P2734189702930558071

`A002266(A261064(n+1)+8)`
-/

namespace A116805.P2734189702930558071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A261064 (n + 1) + 8).toNat

end

end A116805.P2734189702930558071

/-!
# A116806: Number of permutations of length n which avoid the patterns 2314, 4213, 4312.

The programs for A116806, there is no canonical definition to state claims against.
-/

/-! ## A116806.P4353197218302073583

`A116746(n+1)+A010054(A014448(n))`
-/

namespace A116806.P4353197218302073583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116746 (n + 1) + A010054 (A014448 n).toNat

end

end A116806.P4353197218302073583

/-! ## A116806.P12524557307345765911

`A255408(A116746(n+1)+A000579(n))`
-/

namespace A116806.P12524557307345765911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A116746 (n + 1) + A000579 n).toNat

end

end A116806.P12524557307345765911

/-! ## A116806.P8922796581795285408

`A269166(A005667(n))+A116746(n+1)`
-/

namespace A116806.P8922796581795285408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269166 (A005667 n).toNat + A116746 (n + 1)

end

end A116806.P8922796581795285408

/-!
# A116807: Number of permutations of length n which avoid the patterns 1234, 2143, 2431.

The programs for A116807, there is no canonical definition to state claims against.
-/

/-! ## A116807.P14712754561937468077

`A116761(n+1)+A028702(A003659(n+1))`
-/

namespace A116807.P14712754561937468077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116761 (n + 1) + A028702 (A003659 (n + 1)).toNat

end

end A116807.P14712754561937468077

/-!
# A116808: Number of permutations of length n which avoid the patterns 1342, 3214, 4312.

The programs for A116808, there is no canonical definition to state claims against.
-/

/-! ## A116808.P17426260614742315038

`A198315(A318851(n))+A116833(n+1)`
-/

namespace A116808.P17426260614742315038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198315 (A318851 n).toNat + A116833 (n + 1)

end

end A116808.P17426260614742315038

/-! ## A116808.P11662991009155472081

`or(A000005(A005923(n)), A116755(n+1))`
-/

namespace A116808.P11662991009155472081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A005923 n).toNat) (A116755 (n + 1))

end

end A116808.P11662991009155472081

/-! ## A116808.P17813763893745960131

`or(A116755(n+1), A135898(A120588(n)))`
-/

namespace A116808.P17813763893745960131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A116755 (n + 1)) (A135898 (A120588 n).toNat)

end

end A116808.P17813763893745960131

/-!
# A116809: Number of permutations of length n which avoid the patterns 1432, 2134, 2143.

The programs for A116809, there is no canonical definition to state claims against.
-/

/-! ## A116809.P14269973956703660591

`A110656(∑[∑[A007484(n)]])`
-/

namespace A116809.P14269973956703660591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007484 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116809.P14269973956703660591

/-! ## A116809.P4618914904041278869

`A261226(A000322(2*(n+2))+A000040(n+1))`
-/

namespace A116809.P4618914904041278869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A000322 (2 * (n + 2)) + A000040 (n + 1)).toNat

end

end A116809.P4618914904041278869

/-! ## A116809.P7134797234166164694

`A261226(or(A000322(2*(n+2)), A171022(n+1)))`
-/

namespace A116809.P7134797234166164694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (Int.lor (A000322 (2 * (n + 2))) (A171022 (n + 1))).toNat

end

end A116809.P7134797234166164694

/-!
# A116810: Number of permutations of length n which avoid the patterns 2134, 3241, 4132.

The programs for A116810, there is no canonical definition to state claims against.
-/

/-! ## A116810.P10463599422751415631

`A116747(n+1)+A101606(A151159(n))`
-/

namespace A116810.P10463599422751415631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116747 (n + 1) + A101606 (A151159 n).toNat

end

end A116810.P10463599422751415631

/-!
# A116811: Number of permutations of length n which avoid the patterns 1234, 1432, 3214.

The programs for A116811, the canonical program `A116811.P18417141894320441816` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116811 has offset 1).

The definition of A116811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116811.P18417141894320441816

`ogf((1+x^2+5x^3+13x^4+7x^5-25x^6-25x^7-17x^8-10x^9-16x^10-x^11)/(1-2x-x^2-2x^3-5x^4-14x^5-7x^6+25x^7+25x^8+17x^9+10x^10+16x^11+x^12))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116811

/-- `ogf((1+x^2+5x^3+13x^4+7x^5-25x^6-25x^7-17x^8-10x^9-16x^10-x^11)/(1-2x-x^2-2x^3-5x^4-14x^5-7x^6+25x^7+25x^8+17x^9+10x^10+16x^11+x^12))` -/
def P18417141894320441816.Spec : Prop :=
  ∀ n, P18417141894320441816.a n = A116811 (n + 1)

theorem P18417141894320441816.correct : P18417141894320441816.Spec := by
  intro n
  simp only [A116811, Nat.add_sub_cancel]

end A116811

/-! ## A116811.P8449893304127445517

`∑[A085089(A014062(n))]`
-/

namespace A116811.P8449893304127445517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A014062 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116811.P8449893304127445517

namespace A116811

/-- `∑[A085089(A014062(n))]` -/
def P8449893304127445517.Spec : Prop :=
  ∀ n, P8449893304127445517.a n = A116811 (n + 1)

end A116811

/-!
# A116812: Number of permutations of length n which avoid the patterns 2314, 3421, 4123.

The programs for A116812, there is no canonical definition to state claims against.
-/

/-! ## A116812.P7687712138608825650

`A343378(A287745(n))+A001047(n)`
-/

namespace A116812.P7687712138608825650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (A287745 n).toNat + A001047 n

end

end A116812.P7687712138608825650

/-! ## A116812.P16412916431919555622

`A266170(A139630(n))+A116748(n+1)`
-/

namespace A116812.P16412916431919555622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266170 (A139630 n).toNat + A116748 (n + 1)

end

end A116812.P16412916431919555622

/-! ## A116812.P3171833364797345711

`A116830(n+1)-A221469(A327199(n))`
-/

namespace A116812.P3171833364797345711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116830 (n + 1) - A221469 (A327199 n).toNat

end

end A116812.P3171833364797345711

/-!
# A116813: Number of permutations of length n which avoid the patterns 1234, 2431, 4213.

The programs for A116813, the canonical program `A116813.P3246304400317850432` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116813 has offset 1).

The definition of A116813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116813.P3246304400317850432

`ogf((1-4x+6x^2+3x^3-3x^4-22x^5-26x^6+54x^7+56x^8-15x^9-49x^10-23x^11+8x^12+6x^13)/(1-6x+12x^2-6x^3-7x^4+4x^5+5x^6-4x^8+x^10))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116813

/-- `ogf((1-4x+6x^2+3x^3-3x^4-22x^5-26x^6+54x^7+56x^8-15x^9-49x^10-23x^11+8x^12+6x^13)/(1-6x+12x^2-6x^3-7x^4+4x^5+5x^6-4x^8+x^10))` -/
def P3246304400317850432.Spec : Prop :=
  ∀ n, P3246304400317850432.a n = A116813 (n + 1)

theorem P3246304400317850432.correct : P3246304400317850432.Spec := by
  intro n
  simp only [A116813, Nat.add_sub_cancel]

end A116813

/-! ## A116813.P11138430002429299833

`A212647(A150605(n))`
-/

namespace A116813.P11138430002429299833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (A150605 n).toNat

end

end A116813.P11138430002429299833

namespace A116813

/-- `A212647(A150605(n))` -/
def P11138430002429299833.Spec : Prop :=
  ∀ n, P11138430002429299833.a n = A116813 (n + 1)

end A116813

/-!
# A116814: Number of permutations of length n which avoid the patterns 3124, 3421, 4231.

The programs for A116814, there is no canonical definition to state claims against.
-/

/-! ## A116814.P7866964387893245246

`A294807(n+1)-A280317(A007579(n))`
-/

namespace A116814.P7866964387893245246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294807 (n + 1) - A280317 (A007579 n).toNat

end

end A116814.P7866964387893245246

/-! ## A116814.P15074217501614659780

`A294807(n+1)-A280317(A007580(n))`
-/

namespace A116814.P15074217501614659780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294807 (n + 1) - A280317 (A007580 n).toNat

end

end A116814.P15074217501614659780

/-! ## A116814.P12150429959378065420

`A116841(n+1)+A102037(A046931(n+1))`
-/

namespace A116814.P12150429959378065420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116841 (n + 1) + A102037 (A046931 (n + 1)).toNat

end

end A116814.P12150429959378065420

/-!
# A116815: Number of permutations of length n which avoid the patterns 1234, 1432, 3241.

The programs for A116815, the canonical program `A116815.P13179644983194809157` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116815 has offset 1).

The definition of A116815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116815.P13179644983194809157

`ogf((1-x+x^2+5x^3+15x^4+18x^5-4x^6-9x^7-9x^8-4x^9-2x^10)/(1-3x+x^2+2x^4+4x^5+x^6-2x^7-3x^8-x^9))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116815

/-- `ogf((1-x+x^2+5x^3+15x^4+18x^5-4x^6-9x^7-9x^8-4x^9-2x^10)/(1-3x+x^2+2x^4+4x^5+x^6-2x^7-3x^8-x^9))` -/
def P13179644983194809157.Spec : Prop :=
  ∀ n, P13179644983194809157.a n = A116815 (n + 1)

theorem P13179644983194809157.correct : P13179644983194809157.Spec := by
  intro n
  simp only [A116815, Nat.add_sub_cancel]

end A116815

/-! ## A116815.P6187708529436105950

`A322678(A072536(n+1))`
-/

namespace A116815.P6187708529436105950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322678 (A072536 (n + 1)).toNat

end

end A116815.P6187708529436105950

namespace A116815

/-- `A322678(A072536(n+1))` -/
def P6187708529436105950.Spec : Prop :=
  ∀ n, P6187708529436105950.a n = A116815 (n + 1)

end A116815

/-!
# A116816: Number of permutations of length n which avoid the patterns 2314, 3124, 4312.

The programs for A116816, the canonical program `A116816.P12699467769989003574` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116816 has offset 1).

The definition of A116816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116816.P12699467769989003574

`A159036(n+2)-∑[A020695(2*n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116816

/-- `A159036(n+2)-∑[A020695(2*n+1)]` -/
def P12699467769989003574.Spec : Prop :=
  ∀ n, P12699467769989003574.a n = A116816 (n + 1)

theorem P12699467769989003574.correct : P12699467769989003574.Spec := by
  intro n
  simp only [A116816, Nat.add_sub_cancel]

end A116816

/-! ## A116816.P2887185051943455172

`A008611(A181410(n)-A000325(n))`
-/

namespace A116816.P2887185051943455172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A181410 n - A000325 n).toNat

end

end A116816.P2887185051943455172

namespace A116816

/-- `A008611(A181410(n)-A000325(n))` -/
def P2887185051943455172.Spec : Prop :=
  ∀ n, P2887185051943455172.a n = A116816 (n + 1)

end A116816

/-! ## A116816.P13692138010255476709

`A292233(n+7)-A022307(A300974(n))`
-/

namespace A116816.P13692138010255476709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292233 (n + 7) - A022307 (A300974 n).toNat

end

end A116816.P13692138010255476709

namespace A116816

/-- `A292233(n+7)-A022307(A300974(n))` -/
def P13692138010255476709.Spec : Prop :=
  ∀ n, P13692138010255476709.a n = A116816 (n + 1)

end A116816

/-!
# A116818: Number of permutations of length n which avoid the patterns 1234, 2341, 3421.

The programs for A116818, the canonical program `A116818.P14261491027004693774` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116818 has offset 1).

The definition of A116818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116818.P14261491027004693774

`ogf((1-6x+18x^2-27x^3+33x^4-16x^5+11x^6-2x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116818

/-- `ogf((1-6x+18x^2-27x^3+33x^4-16x^5+11x^6-2x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P14261491027004693774.Spec : Prop :=
  ∀ n, P14261491027004693774.a n = A116818 (n + 1)

theorem P14261491027004693774.correct : P14261491027004693774.Spec := by
  intro n
  simp only [A116818, Nat.add_sub_cancel]

end A116818

/-! ## A116818.P16091494603581880051

`A113215(A081199(n))+1`
-/

namespace A116818.P16091494603581880051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A081199 n).toNat + 1

end

end A116818.P16091494603581880051

namespace A116818

/-- `A113215(A081199(n))+1` -/
def P16091494603581880051.Spec : Prop :=
  ∀ n, P16091494603581880051.a n = A116818 (n + 1)

end A116818

/-!
# A116819: Number of permutations of length n which avoid the patterns 2431, 4123, 4231.

The programs for A116819, there is no canonical definition to state claims against.
-/

/-! ## A116819.P13740607313726866795

`A209081(A026616(n))`
-/

namespace A116819.P13740607313726866795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A026616 n).toNat

end

end A116819.P13740607313726866795

/-! ## A116819.P14899080098346411671

`A369715(A107307(n))`
-/

namespace A116819.P14899080098346411671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369715 (A107307 n).toNat

end

end A116819.P14899080098346411671

/-!
# A116820: Number of permutations of length n which avoid the patterns 2341, 3241, 4213.

The programs for A116820, the canonical program `A116820.P7819303348484078164` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116820 has offset 1).

The definition of A116820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116820.P16004697302805432651

`ogf((1-6x+13x^2-10x^3+x^4)/(1-8x+23x^2-29x^3+14x^4-x^5))`
-/

namespace A116820.P16004697302805432651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 13, -10, 1] [1, -8, 23, -29, 14, -1] n

end

end A116820.P16004697302805432651

namespace A116820

/-- `ogf((1-6x+13x^2-10x^3+x^4)/(1-8x+23x^2-29x^3+14x^4-x^5))` -/
def P16004697302805432651.Spec : Prop :=
  ∀ n, P16004697302805432651.a n = A116820 (n + 1)

end A116820

/-! ## A116820.P7819303348484078164

`8*a(n-1)-23*a(n-2)+29*a(n-3)-14*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=21, a(4)=75`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116820

/-- `8*a(n-1)-23*a(n-2)+29*a(n-3)-14*a(n-4)+a(n-5)` -/
def P7819303348484078164.Spec : Prop :=
  ∀ n, P7819303348484078164.a n = A116820 (n + 1)

theorem P7819303348484078164.correct : P7819303348484078164.Spec := by
  intro n
  simp only [A116820, Nat.add_sub_cancel]

end A116820

/-! ## A116820.P12557430976418981855

`A248635(A149880(n))`
-/

namespace A116820.P12557430976418981855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248635 (A149880 n).toNat

end

end A116820.P12557430976418981855

namespace A116820

/-- `A248635(A149880(n))` -/
def P12557430976418981855.Spec : Prop :=
  ∀ n, P12557430976418981855.a n = A116820 (n + 1)

end A116820

/-!
# A116821: Number of permutations of length n which avoid the patterns 1234, 1324, 1432.

The programs for A116821, there is no canonical definition to state claims against.
-/

/-! ## A116821.P6039930781465427052

`A194990(A184596(n+1))`
-/

namespace A116821.P6039930781465427052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A184596 (n + 1)).toNat

end

end A116821.P6039930781465427052

/-! ## A116821.P17113420283499954927

`A300763(A296215(n+1))`
-/

namespace A116821.P17113420283499954927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (A296215 (n + 1)).toNat

end

end A116821.P17113420283499954927

/-! ## A116821.P15120145057287325274

`A110655(A253070(n)+A058385(n))`
-/

namespace A116821.P15120145057287325274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A253070 n + A058385 n).toNat

end

end A116821.P15120145057287325274

/-!
# A116822: Number of permutations of length n which avoid the patterns 2341, 3421, 4123.

The programs for A116822, there is no canonical definition to state claims against.
-/

/-! ## A116822.P1043002014735280495

`A281116(A000400(n))+A171099(n)`
-/

namespace A116822.P1043002014735280495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A000400 n).toNat + A171099 n

end

end A116822.P1043002014735280495

/-! ## A116822.P14713738451191733944

`A329864(A306347(n))+A116773(n+1)`
-/

namespace A116822.P14713738451191733944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329864 (A306347 n).toNat + A116773 (n + 1)

end

end A116822.P14713738451191733944

/-! ## A116822.P4306725083943619709

`A116797(n+1)-A230642(A101481(n))`
-/

namespace A116822.P4306725083943619709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116797 (n + 1) - A230642 (A101481 n).toNat

end

end A116822.P4306725083943619709

/-!
# A116823: Number of permutations of length n which avoid the patterns 1342, 3142, 4312; or avoid the patterns 3124, 3412, 3421.

The programs for A116823, there is no canonical definition to state claims against.
-/

/-! ## A116823.P12608518732241119278

`A296020(A020522(n)-A000330(n))+C(n, 5)`
-/

namespace A116823.P12608518732241119278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296020 (A020522 n - A000330 n).toNat + (Nat.choose n 5 : ℤ)

end

end A116823.P12608518732241119278

/-! ## A116823.P5649141217012886125

`C(n, 5)+A110656(A283276(n+1))-A321728(n)`
-/

namespace A116823.P5649141217012886125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 5 : ℤ) + (A110656 (A283276 (n + 1)).toNat - A321728 n)

end

end A116823.P5649141217012886125

/-!
# A116824: Number of permutations of length n which avoid the patterns 1234, 3412, 3421.

The programs for A116824, the canonical program `A116824.P9528370861953851798` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116824 has offset 1).

The definition of A116824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116824.P9528370861953851798

`ogf((1-5x+13x^2-14x^3+17x^4-2x^5+4x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116824

/-- `ogf((1-5x+13x^2-14x^3+17x^4-2x^5+4x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P9528370861953851798.Spec : Prop :=
  ∀ n, P9528370861953851798.a n = A116824 (n + 1)

theorem P9528370861953851798.correct : P9528370861953851798.Spec := by
  intro n
  simp only [A116824, Nat.add_sub_cancel]

end A116824

/-! ## A116824.P12803285720442636439

`A325327(∑[A319765(n)])`
-/

namespace A116824.P12803285720442636439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325327 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116824.P12803285720442636439

namespace A116824

/-- `A325327(∑[A319765(n)])` -/
def P12803285720442636439.Spec : Prop :=
  ∀ n, P12803285720442636439.a n = A116824 (n + 1)

end A116824

/-!
# A116825: Number of permutations of length n which avoid the patterns 1243, 2341, 4321.

The programs for A116825, the canonical program `A116825.P109452463031175318` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116825 has offset 1).

The definition of A116825 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116825.P109452463031175318

`ogf((1-3x+6x^2+x^3+11x^4+8x^5-13x^6-15x^7+16x^8-2x^9)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116825

/-- `ogf((1-3x+6x^2+x^3+11x^4+8x^5-13x^6-15x^7+16x^8-2x^9)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P109452463031175318.Spec : Prop :=
  ∀ n, P109452463031175318.a n = A116825 (n + 1)

theorem P109452463031175318.correct : P109452463031175318.Spec := by
  intro n
  simp only [A116825, Nat.add_sub_cancel]

end A116825

/-! ## A116825.P10661794142589540765

`∑[∑[2*(A053039(a(n-1)+1)+1)+1]]` with `a(0)=1, a(1)=0`
-/

namespace A116825.P10661794142589540765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 * (A053039 (f2 (n - 1) + 1).toNat + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116825.P10661794142589540765

namespace A116825

/-- `∑[∑[2*(A053039(a(n-1)+1)+1)+1]]` -/
def P10661794142589540765.Spec : Prop :=
  ∀ n, P10661794142589540765.a n = A116825 (n + 1)

end A116825

/-!
# A116826: Number of permutations of length n which avoid the patterns 2143, 2431, 3124.

The programs for A116826, there is no canonical definition to state claims against.
-/

/-! ## A116826.P6457311602700400265

`xor(A055400(n), A308754(A002001(n)))`
-/

namespace A116826.P6457311602700400265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055400 n) (A308754 (A002001 n).toNat)

end

end A116826.P6457311602700400265

/-! ## A116826.P5622777980982262102

`A178798(A001105(n))+A116760(n+1)`
-/

namespace A116826.P5622777980982262102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A001105 n).toNat + A116760 (n + 1)

end

end A116826.P5622777980982262102

/-! ## A116826.P17659962567222661333

`A226431(A141769(n+1))+A218627(n)`
-/

namespace A116826.P17659962567222661333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226431 (A141769 (n + 1)).toNat + A218627 n

end

end A116826.P17659962567222661333

/-!
# A116827: Number of permutations of length n which avoid the patterns 1234, 1342, 4132.

The programs for A116827, there is no canonical definition to state claims against.
-/

/-! ## A116827.P9848296222998429008

`A004526(A116818(n+1)+A116781(n+1))`
-/

namespace A116827.P9848296222998429008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A116818 (n + 1) + A116781 (n + 1)).toNat

end

end A116827.P9848296222998429008

/-! ## A116827.P5607807317722729999

`A116780(n+1)-A293520(A020059(n))`
-/

namespace A116827.P5607807317722729999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116780 (n + 1) - A293520 (A020059 n).toNat

end

end A116827.P5607807317722729999

/-! ## A116827.P2945025684957440486

`A002266(A000395(n+6))+A000377(n)`
-/

namespace A116827.P2945025684957440486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A000395 (n + 6)).toNat + A000377 n

end

end A116827.P2945025684957440486

/-!
# A116828: Number of permutations of length n which avoid the patterns 2413, 3421, 4123.

The programs for A116828, there is no canonical definition to state claims against.
-/

/-! ## A116828.P5876647036007068414

`A095716(n)-record[A209859(n)]`
-/

namespace A116828.P5876647036007068414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095716 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116828.P5876647036007068414

/-! ## A116828.P6593085477484446462

`A184964((2-n)²)+A116760(n+1)`
-/

namespace A116828.P6593085477484446462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 ((2 - (n : ℤ)) ^ 2).toNat + A116760 (n + 1)

end

end A116828.P6593085477484446462

/-! ## A116828.P11798813262539699297

`A181834(A328746(n))+A116802(n+1)`
-/

namespace A116828.P11798813262539699297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A328746 n).toNat + A116802 (n + 1)

end

end A116828.P11798813262539699297

/-!
# A116829: Number of permutations of length n which avoid the patterns 1234, 1324, 3421.

The programs for A116829, the canonical program `A116829.P17327903444450033593` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116829 has offset 1).

The definition of A116829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116829.P17327903444450033593

`ogf((1-5x+13x^2-14x^3+17x^4-2x^5-x^6-6x^7+5x^8-x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116829

/-- `ogf((1-5x+13x^2-14x^3+17x^4-2x^5-x^6-6x^7+5x^8-x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P17327903444450033593.Spec : Prop :=
  ∀ n, P17327903444450033593.a n = A116829 (n + 1)

theorem P17327903444450033593.correct : P17327903444450033593.Spec := by
  intro n
  simp only [A116829, Nat.add_sub_cancel]

end A116829

/-!
# A116830: Number of permutations of length n which avoid the patterns 1324, 2431, 4123.

The programs for A116830, there is no canonical definition to state claims against.
-/

/-! ## A116830.P7672342264948193756

`∑[A347656(∑[A084505(n)])]`
-/

namespace A116830.P7672342264948193756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347656 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116830.P7672342264948193756

/-! ## A116830.P16458547450807671446

`A309395(A277222(n))+A116812(n+1)`
-/

namespace A116830.P16458547450807671446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309395 (A277222 n).toNat + A116812 (n + 1)

end

end A116830.P16458547450807671446

/-! ## A116830.P11708733353271043114

`A116747(n+1)-A033665(A155020(n))`
-/

namespace A116830.P11708733353271043114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116747 (n + 1) - A033665 (A155020 n).toNat

end

end A116830.P11708733353271043114

/-!
# A116831: Number of permutations of length n which avoid the patterns 3124, 3241, 4321.

The programs for A116831, there is no canonical definition to state claims against.
-/

/-! ## A116831.P5819630874989727108

`A331994(A290996(n))`
-/

namespace A116831.P5819630874989727108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (A290996 n).toNat

end

end A116831.P5819630874989727108

/-! ## A116831.P12108685945069270313

`A331994(∑[A148288(n)])`
-/

namespace A116831.P12108685945069270313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116831.P12108685945069270313

/-!
# A116832: Number of permutations of length n which avoid the patterns 1324, 3421, 4123.

The programs for A116832, the canonical program `A116832.P6008043322238064078` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116832 has offset 1).

The definition of A116832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116832.P6008043322238064078

`ogf((1-5x+13x^2-14x^3+14x^4-7x^5+6x^6+3x^7-4x^8+x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116832

/-- `ogf((1-5x+13x^2-14x^3+14x^4-7x^5+6x^6+3x^7-4x^8+x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P6008043322238064078.Spec : Prop :=
  ∀ n, P6008043322238064078.a n = A116832 (n + 1)

theorem P6008043322238064078.correct : P6008043322238064078.Spec := by
  intro n
  simp only [A116832, Nat.add_sub_cancel]

end A116832

/-! ## A116832.P11354041362992375188

`A008727(∑[A004868(n+1)²])`
-/

namespace A116832.P11354041362992375188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004868 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008727 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116832.P11354041362992375188

namespace A116832

/-- `A008727(∑[A004868(n+1)²])` -/
def P11354041362992375188.Spec : Prop :=
  ∀ n, P11354041362992375188.a n = A116832 (n + 1)

end A116832

/-! ## A116832.P9516498044649371584

`A008727(∑[A004912(n+1)²])`
-/

namespace A116832.P9516498044649371584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004912 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008727 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116832.P9516498044649371584

namespace A116832

/-- `A008727(∑[A004912(n+1)²])` -/
def P9516498044649371584.Spec : Prop :=
  ∀ n, P9516498044649371584.a n = A116832 (n + 1)

end A116832

/-!
# A116833: Number of permutations of length n which avoid the patterns 2134, 3421, 4132.

The programs for A116833, the canonical program `A116833.P13824192459511203336` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116833 has offset 1).

The definition of A116833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116833.P13824192459511203336

`ogf((1-6x+18x^2-27x^3+29x^4-19x^5+8x^6-2x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116833

/-- `ogf((1-6x+18x^2-27x^3+29x^4-19x^5+8x^6-2x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P13824192459511203336.Spec : Prop :=
  ∀ n, P13824192459511203336.a n = A116833 (n + 1)

theorem P13824192459511203336.correct : P13824192459511203336.Spec := by
  intro n
  simp only [A116833, Nat.add_sub_cancel]

end A116833

/-! ## A116833.P17527661095974240090

`A116755(n+1)+A101606(A151159(n))`
-/

namespace A116833.P17527661095974240090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116755 (n + 1) + A101606 (A151159 n).toNat

end

end A116833.P17527661095974240090

namespace A116833

/-- `A116755(n+1)+A101606(A151159(n))` -/
def P17527661095974240090.Spec : Prop :=
  ∀ n, P17527661095974240090.a n = A116833 (n + 1)

end A116833

/-! ## A116833.P6723545192522567324

`A101606(A151159(n))+A294725(n+1)+A000579(n+1)`
-/

namespace A116833.P6723545192522567324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (A151159 n).toNat + (A294725 (n + 1) + A000579 (n + 1))

end

end A116833.P6723545192522567324

namespace A116833

/-- `A101606(A151159(n))+A294725(n+1)+A000579(n+1)` -/
def P6723545192522567324.Spec : Prop :=
  ∀ n, P6723545192522567324.a n = A116833 (n + 1)

end A116833

/-!
# A116834: Number of permutations of length n which avoid the patterns 1234, 2431, 3421.

The programs for A116834, the canonical program `A116834.P16325953803648374278` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116834 has offset 1).

The definition of A116834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116834.P16325953803648374278

`ogf((1-3x+6x^2+x^3+13x^4+16x^5+x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116834

/-- `ogf((1-3x+6x^2+x^3+13x^4+16x^5+x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P16325953803648374278.Spec : Prop :=
  ∀ n, P16325953803648374278.a n = A116834 (n + 1)

theorem P16325953803648374278.correct : P16325953803648374278.Spec := by
  intro n
  simp only [A116834, Nat.add_sub_cancel]

end A116834

/-! ## A116834.P3271656132407213598

`∑[A052986(n)-A180632(n)]`
-/

namespace A116834.P3271656132407213598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052986 n - A180632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116834.P3271656132407213598

namespace A116834

/-- `∑[A052986(n)-A180632(n)]` -/
def P3271656132407213598.Spec : Prop :=
  ∀ n, P3271656132407213598.a n = A116834 (n + 1)

end A116834

/-!
# A116836: Number of permutations of length n which avoid the patterns 2341, 4132, 4321.

The programs for A116836, the canonical program `A116836.P9662056203787935089` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116836 has offset 1).

The definition of A116836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116836.P9662056203787935089

`ogf((1-5x+11x^2-12x^3+8x^4-8x^5+7x^6-7x^7+2x^8)/(1-7x+19x^2-29x^3+27x^4-16x^5+10x^6-7x^7+7x^8-2x^9))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116836

/-- `ogf((1-5x+11x^2-12x^3+8x^4-8x^5+7x^6-7x^7+2x^8)/(1-7x+19x^2-29x^3+27x^4-16x^5+10x^6-7x^7+7x^8-2x^9))` -/
def P9662056203787935089.Spec : Prop :=
  ∀ n, P9662056203787935089.a n = A116836 (n + 1)

theorem P9662056203787935089.correct : P9662056203787935089.Spec := by
  intro n
  simp only [A116836, Nat.add_sub_cancel]

end A116836

/-! ## A116836.P6784640421703207203

`3^n-record[A326029(n)]`
-/

namespace A116836.P6784640421703207203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116836.P6784640421703207203

namespace A116836

/-- `3^n-record[A326029(n)]` -/
def P6784640421703207203.Spec : Prop :=
  ∀ n, P6784640421703207203.a n = A116836 (n + 1)

end A116836

/-!
# A116837: Number of permutations of length n which avoid the patterns 3421, 4123, 4312; or avoid the patterns 2341, 3142, 3214.

The programs for A116837, the canonical program `A116837.P8353541432783247056` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116837 has offset 1).

The definition of A116837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116837.P8353541432783247056

`ogf((1-3x+3x^2-x^3)/(1-5x+7x^2-6x^3+2x^4))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116837

/-- `ogf((1-3x+3x^2-x^3)/(1-5x+7x^2-6x^3+2x^4))` -/
def P8353541432783247056.Spec : Prop :=
  ∀ n, P8353541432783247056.a n = A116837 (n + 1)

theorem P8353541432783247056.correct : P8353541432783247056.Spec := by
  intro n
  simp only [A116837, Nat.add_sub_cancel]

end A116837

/-! ## A116837.P9879331704724124962

`2*(2*a(n-1)-a(n-2))-round(cos(n%6))` with `a(0)=1, a(1)=2`
-/

namespace A116837.P9879331704724124962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * a (n - 1) - a (n - 2)) - SequenceMachineLib.roundAway (Real.cos ((n % 6 : ℕ) : ℝ))

end

end A116837.P9879331704724124962

namespace A116837

/-- `2*(2*a(n-1)-a(n-2))-round(cos(n%6))` -/
def P9879331704724124962.Spec : Prop :=
  ∀ n, P9879331704724124962.a n = A116837 (n + 1)

end A116837

/-! ## A116837.P15863815729919508770

`∑{#}[n, C(n, #)*A322496(#)]`
-/

namespace A116837.P15863815729919508770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A322496 k

end

end A116837.P15863815729919508770

namespace A116837

/-- `∑{#}[n, C(n, #)*A322496(#)]` -/
def P15863815729919508770.Spec : Prop :=
  ∀ n, P15863815729919508770.a n = A116837 (n + 1)

end A116837

/-! ## A116837.P17209511271887823155

`2*(2*a(n-1)-a(n-2))-A010892(n)` with `a(0)=1, a(1)=2`
-/

namespace A116837.P17209511271887823155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (2 * a (n - 1) - a (n - 2)) - A010892 n

end

end A116837.P17209511271887823155

namespace A116837

/-- `2*(2*a(n-1)-a(n-2))-A010892(n)` -/
def P17209511271887823155.Spec : Prop :=
  ∀ n, P17209511271887823155.a n = A116837 (n + 1)

end A116837

/-! ## A116837.P6135987727756141116

`round(A007052(n)/A161941(n)*A007052(n))`
-/

namespace A116837.P6135987727756141116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007052 n : ℚ) / (A161941 n : ℚ) * (A007052 n : ℚ))

end

end A116837.P6135987727756141116

namespace A116837

/-- `round(A007052(n)/A161941(n)*A007052(n))` -/
def P6135987727756141116.Spec : Prop :=
  ∀ n, P6135987727756141116.a n = A116837 (n + 1)

end A116837

/-! ## A116837.P9719564712065831692

`Δ[round(A111567(n)/7)]`
-/

namespace A116837.P9719564712065831692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A111567 n : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116837.P9719564712065831692

namespace A116837

/-- `Δ[round(A111567(n)/7)]` -/
def P9719564712065831692.Spec : Prop :=
  ∀ n, P9719564712065831692.a n = A116837 (n + 1)

end A116837

/-! ## A116837.P16952950617759616172

`round(A161938(n+1)/14)`
-/

namespace A116837.P16952950617759616172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161938 (n + 1) : ℚ) / 14)

end

end A116837.P16952950617759616172

namespace A116837

/-- `round(A161938(n+1)/14)` -/
def P16952950617759616172.Spec : Prop :=
  ∀ n, P16952950617759616172.a n = A116837 (n + 1)

end A116837

/-! ## A116837.P860918444856821134

`round(A007052(n)²/A161941(n))`
-/

namespace A116837.P860918444856821134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007052 n ^ 2 : ℚ) / (A161941 n : ℚ))

end

end A116837.P860918444856821134

namespace A116837

/-- `round(A007052(n)²/A161941(n))` -/
def P860918444856821134.Spec : Prop :=
  ∀ n, P860918444856821134.a n = A116837 (n + 1)

end A116837

/-!
# A116838: Number of permutations of length n which avoid the patterns 1342, 3421, 4312.

The programs for A116838, there is no canonical definition to state claims against.
-/

/-! ## A116838.P14265159872941920567

`A194173(A116810(n+1)+A116796(n+1))`
-/

namespace A116838.P14265159872941920567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194173 (A116810 (n + 1) + A116796 (n + 1)).toNat

end

end A116838.P14265159872941920567

/-!
# A116839: Number of permutations of length n which avoid the patterns 1234, 1243, 3241.

The programs for A116839, the canonical program `A116839.P11726641166067916876` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116839 has offset 1).

The definition of A116839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116839.P11726641166067916876

`ogf((1-7x+19x^2-18x^3-8x^4+20x^5-7x^6-6x^7+11x^8+x^9-2x^10)/(1-9x+31x^2-47x^3+16x^4+38x^5-37x^6-5x^7+15x^8-x^9-2x^10))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116839

/-- `ogf((1-7x+19x^2-18x^3-8x^4+20x^5-7x^6-6x^7+11x^8+x^9-2x^10)/(1-9x+31x^2-47x^3+16x^4+38x^5-37x^6-5x^7+15x^8-x^9-2x^10))` -/
def P11726641166067916876.Spec : Prop :=
  ∀ n, P11726641166067916876.a n = A116839 (n + 1)

theorem P11726641166067916876.correct : P11726641166067916876.Spec := by
  intro n
  simp only [A116839, Nat.add_sub_cancel]

end A116839

/-!
# A116840: Number of permutations of length n which avoid the patterns 1234, 1243, 2431.

The programs for A116840, there is no canonical definition to state claims against.
-/

/-! ## A116840.P15815924956993480288

`A116783(n+1)+A106609(4*(A335793(n+1)+1))-A116777(n+1)`
-/

namespace A116840.P15815924956993480288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116783 (n + 1) + A106609 (4 * (A335793 (n + 1) + 1)).toNat - A116777 (n + 1)

end

end A116840.P15815924956993480288

/-! ## A116840.P5674427513629527574

`A320536(A255631(n+1))`
-/

namespace A116840.P5674427513629527574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A255631 (n + 1)).toNat

end

end A116840.P5674427513629527574

/-!
# A116841: Number of permutations of length n which avoid the patterns 1234, 1324, 2431.

The programs for A116841, there is no canonical definition to state claims against.
-/

/-! ## A116841.P5003026357404936233

`A116814(n+1)-A116856(A075035(n+1))`
-/

namespace A116841.P5003026357404936233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116814 (n + 1) - A116856 (A075035 (n + 1)).toNat

end

end A116841.P5003026357404936233

/-! ## A116841.P11623658526206091797

`A116814(n+1)-A340607(A040082(n+1))`
-/

namespace A116841.P11623658526206091797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116814 (n + 1) - A340607 (A040082 (n + 1)).toNat

end

end A116841.P11623658526206091797

/-!
# A116842: Number of permutations of length n which avoid the patterns 1234, 2143, 3421.

The programs for A116842, the canonical program `A116842.P10856592409465770866` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116842 has offset 1).

The definition of A116842 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116842.P10856592409465770866

`ogf((1-x+3x^2+8x^3+22x^4+31x^5+18x^6)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116842

/-- `ogf((1-x+3x^2+8x^3+22x^4+31x^5+18x^6)/(1-3x+3x^2-x^3))` -/
def P10856592409465770866.Spec : Prop :=
  ∀ n, P10856592409465770866.a n = A116842 (n + 1)

theorem P10856592409465770866.correct : P10856592409465770866.Spec := by
  intro n
  simp only [A116842, Nat.add_sub_cancel]

end A116842

/-! ## A116842.P5363338080150731492

`∑[A179000(A178508(n+1))]`
-/

namespace A116842.P5363338080150731492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179000 (A178508 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116842.P5363338080150731492

namespace A116842

/-- `∑[A179000(A178508(n+1))]` -/
def P5363338080150731492.Spec : Prop :=
  ∀ n, P5363338080150731492.a n = A116842 (n + 1)

end A116842

/-!
# A116843: Number of permutations of length n which avoid the patterns 1342, 3241, 4312.

The programs for A116843, there is no canonical definition to state claims against.
-/

/-! ## A116843.P14027579000329763122

`A283316(A053983(n))+A116787(n+1)`
-/

namespace A116843.P14027579000329763122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (A053983 n).toNat + A116787 (n + 1)

end

end A116843.P14027579000329763122

/-! ## A116843.P11819275104736813675

`A169890(A184993(n))+A116778(n+1)`
-/

namespace A116843.P11819275104736813675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169890 (A184993 n).toNat + A116778 (n + 1)

end

end A116843.P11819275104736813675

/-! ## A116843.P10785427750096253103

`A358754(A225827(n))+A116787(n+1)`
-/

namespace A116843.P10785427750096253103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358754 (A225827 n).toNat + A116787 (n + 1)

end

end A116843.P10785427750096253103

/-!
# A116844: Number of permutations of length n which avoid the patterns 231, 12345.

The programs for A116844, the canonical program `A116844.P3386200743278474251` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116844 has offset 0).

The definition of A116844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116844.P3386200743278474251

`ogf((1-6x+16x^2-23x^3+21x^4-8x^5+4x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116844

/-- `ogf((1-6x+16x^2-23x^3+21x^4-8x^5+4x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3386200743278474251.Spec : Prop :=
  ∀ n, P3386200743278474251.a n = A116844 n

theorem P3386200743278474251.correct : P3386200743278474251.Spec := by
  intro n
  simp only [A116844]

end A116844

/-! ## A116844.P6578896503945874403

`A137940(∑[n+3])`
-/

namespace A116844.P6578896503945874403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137940 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116844.P6578896503945874403

namespace A116844

/-- `A137940(∑[n+3])` -/
def P6578896503945874403.Spec : Prop :=
  ∀ n, P6578896503945874403.a n = A116844 n

end A116844

/-! ## A116844.P1560106487252439578

`A106396(∑[n+2]+5)`
-/

namespace A116844.P1560106487252439578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106396 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A116844.P1560106487252439578

namespace A116844

/-- `A106396(∑[n+2]+5)` -/
def P1560106487252439578.Spec : Prop :=
  ∀ n, P1560106487252439578.a n = A116844 n

end A116844

/-! ## A116844.P14389998563343888791

`A055801(n)*A137940(A141214(n))`
-/

namespace A116844.P14389998563343888791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055801 n * A137940 (A141214 n).toNat

end

end A116844.P14389998563343888791

namespace A116844

/-- `A055801(n)*A137940(A141214(n))` -/
def P14389998563343888791.Spec : Prop :=
  ∀ n, P14389998563343888791.a n = A116844 n

end A116844

/-! ## A116844.P13952890708393766906

`or(A037800(n), A137940(A141214(n)))`
-/

namespace A116844.P13952890708393766906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037800 n) (A137940 (A141214 n).toNat)

end

end A116844.P13952890708393766906

namespace A116844

/-- `or(A037800(n), A137940(A141214(n)))` -/
def P13952890708393766906.Spec : Prop :=
  ∀ n, P13952890708393766906.a n = A116844 n

end A116844

/-!
# A116845: Number of permutations of length n which avoid the patterns 231, 12534.

The programs for A116845, the canonical program `A116845.P16676049407834793497` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116845 has offset 1).

The definition of A116845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116845.P5945473669578981882

`ogf((1-5x+8x^2-4x^3+x^4)/(1-7x+17x^2-17x^3+7x^4-x^5))`
-/

namespace A116845.P5945473669578981882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 8, -4, 1] [1, -7, 17, -17, 7, -1] n

end

end A116845.P5945473669578981882

namespace A116845

/-- `ogf((1-5x+8x^2-4x^3+x^4)/(1-7x+17x^2-17x^3+7x^4-x^5))` -/
def P5945473669578981882.Spec : Prop :=
  ∀ n, P5945473669578981882.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P16676049407834793497

`7*a(n-1)-17*a(n-2)+17*a(n-3)-7*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14, a(4)=41`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116845

/-- `7*a(n-1)-17*a(n-2)+17*a(n-3)-7*a(n-4)+a(n-5)` -/
def P16676049407834793497.Spec : Prop :=
  ∀ n, P16676049407834793497.a n = A116845 (n + 1)

theorem P16676049407834793497.correct : P16676049407834793497.Spec := by
  intro n
  simp only [A116845, Nat.add_sub_cancel]

end A116845

/-! ## A116845.P17115909087434082212

`∑[A059502(n)]+1`
-/

namespace A116845.P17115909087434082212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116845.P17115909087434082212

namespace A116845

/-- `∑[A059502(n)]+1` -/
def P17115909087434082212.Spec : Prop :=
  ∀ n, P17115909087434082212.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P18397955425234256131

`A279735(n+1)/2+1`
-/

namespace A116845.P18397955425234256131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279735 (n + 1) : ℚ) / 2 + 1

end

end A116845.P18397955425234256131

namespace A116845

/-- `A279735(n+1)/2+1` -/
def P18397955425234256131.Spec : Prop :=
  ∀ n, P18397955425234256131.a n = (A116845 (n + 1) : ℚ)

end A116845

/-! ## A116845.P3529098472488222225

`A006367(2*n+1)/2+1`
-/

namespace A116845.P3529098472488222225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006367 (2 * n + 1) : ℚ) / 2 + 1

end

end A116845.P3529098472488222225

namespace A116845

/-- `A006367(2*n+1)/2+1` -/
def P3529098472488222225.Spec : Prop :=
  ∀ n, P3529098472488222225.a n = (A116845 (n + 1) : ℚ)

end A116845

/-! ## A116845.P12396624791189059569

`A059502(xor(1, xor(1, n)))+a(n-1)` with `a(0)=1`
-/

namespace A116845.P12396624791189059569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059502 (Nat.xor 1 (Nat.xor 1 n)) + a (n - 1)

end

end A116845.P12396624791189059569

namespace A116845

/-- `A059502(xor(1, xor(1, n)))+a(n-1)` -/
def P12396624791189059569.Spec : Prop :=
  ∀ n, P12396624791189059569.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P13971719148581715159

`∑[A059502(or(n, A000007(n)))]`
-/

namespace A116845.P13971719148581715159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059502 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116845.P13971719148581715159

namespace A116845

/-- `∑[A059502(or(n, A000007(n)))]` -/
def P13971719148581715159.Spec : Prop :=
  ∀ n, P13971719148581715159.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P13518301198995265497

`A094864(n)+1-A001519(n)`
-/

namespace A116845.P13518301198995265497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094864 n + (1 - A001519 n)

end

end A116845.P13518301198995265497

namespace A116845

/-- `A094864(n)+1-A001519(n)` -/
def P13518301198995265497.Spec : Prop :=
  ∀ n, P13518301198995265497.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P9386237840018274438

`2-∑[A000007(n)-A059502(n)]`
-/

namespace A116845.P9386237840018274438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A059502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116845.P9386237840018274438

namespace A116845

/-- `2-∑[A000007(n)-A059502(n)]` -/
def P9386237840018274438.Spec : Prop :=
  ∀ n, P9386237840018274438.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P4202906172900130638

`A000035(Δ[n²])-(A001519(n)-A094864(n))`
-/

namespace A116845.P4202906172900130638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (A001519 n - A094864 n)

end

end A116845.P4202906172900130638

namespace A116845

/-- `A000035(Δ[n²])-(A001519(n)-A094864(n))` -/
def P4202906172900130638.Spec : Prop :=
  ∀ n, P4202906172900130638.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P6793240348424565970

`A001629(2*n+1)+1-A129722(2*n+1)`
-/

namespace A116845.P6793240348424565970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n + 1) + (1 - A129722 (2 * n + 1))

end

end A116845.P6793240348424565970

namespace A116845

/-- `A001629(2*n+1)+1-A129722(2*n+1)` -/
def P6793240348424565970.Spec : Prop :=
  ∀ n, P6793240348424565970.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P18258323431131692113

`A001870(n)+A166336(n)-A001871(n)`
-/

namespace A116845.P18258323431131692113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 n + (A166336 n - A001871 n)

end

end A116845.P18258323431131692113

namespace A116845

/-- `A001870(n)+A166336(n)-A001871(n)` -/
def P18258323431131692113.Spec : Prop :=
  ∀ n, P18258323431131692113.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P9519999857954539338

`A166336(n)+A238846(n)-A001870(n)`
-/

namespace A116845.P9519999857954539338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166336 n + (A238846 n - A001870 n)

end

end A116845.P9519999857954539338

namespace A116845

/-- `A166336(n)+A238846(n)-A001870(n)` -/
def P9519999857954539338.Spec : Prop :=
  ∀ n, P9519999857954539338.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P8445695218976864976

`A030267(n+1)+A166336(n)-A054444(n)`
-/

namespace A116845.P8445695218976864976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030267 (n + 1) + (A166336 n - A054444 n)

end

end A116845.P8445695218976864976

namespace A116845

/-- `A030267(n+1)+A166336(n)-A054444(n)` -/
def P8445695218976864976.Spec : Prop :=
  ∀ n, P8445695218976864976.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P9827764235559981324

`A238846(n+1)+A166336(n)-A030267(n+2)`
-/

namespace A116845.P9827764235559981324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238846 (n + 1) + (A166336 n - A030267 (n + 2))

end

end A116845.P9827764235559981324

namespace A116845

/-- `A238846(n+1)+A166336(n)-A030267(n+2)` -/
def P9827764235559981324.Spec : Prop :=
  ∀ n, P9827764235559981324.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P11765603349985913804

`A001870(n+1)+A166336(n)-A054444(n+1)`
-/

namespace A116845.P11765603349985913804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 (n + 1) + (A166336 n - A054444 (n + 1))

end

end A116845.P11765603349985913804

namespace A116845

/-- `A001870(n+1)+A166336(n)-A054444(n+1)` -/
def P11765603349985913804.Spec : Prop :=
  ∀ n, P11765603349985913804.a n = A116845 (n + 1)

end A116845

/-! ## A116845.P12049383585482034181

`∑[A147703(∑[n]+1)]`
-/

namespace A116845.P12049383585482034181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147703 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116845.P12049383585482034181

namespace A116845

/-- `∑[A147703(∑[n]+1)]` -/
def P12049383585482034181.Spec : Prop :=
  ∀ n, P12049383585482034181.a n = A116845 (n + 1)

end A116845

/-!
# A116846: Number of permutations of length n which avoid the patterns 321, 12354.

The programs for A116846, the canonical program `A116846.P3518052858560878148` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116846 has offset 0).

The definition of A116846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116846.P3518052858560878148

`ogf((1-6x+16x^2-23x^3+21x^4-8x^5+x^6-4x^7+4x^8-x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116846

/-- `ogf((1-6x+16x^2-23x^3+21x^4-8x^5+x^6-4x^7+4x^8-x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P3518052858560878148.Spec : Prop :=
  ∀ n, P3518052858560878148.a n = A116846 n

theorem P3518052858560878148.correct : P3518052858560878148.Spec := by
  intro n
  simp only [A116846]

end A116846

/-! ## A116846.P5432878433811675554

`A226378(7*n!)`
-/

namespace A116846.P5432878433811675554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (7 * Nat.factorial n)

end

end A116846.P5432878433811675554

namespace A116846

/-- `A226378(7*n!)` -/
def P5432878433811675554.Spec : Prop :=
  ∀ n, P5432878433811675554.a n = A116846 n

end A116846

/-! ## A116846.P18207695798930396414

`A305899(∏[ceil(2^(n-1))])`
-/

namespace A116846.P18207695798930396414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305899 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116846.P18207695798930396414

namespace A116846

/-- `A305899(∏[ceil(2^(n-1))])` -/
def P18207695798930396414.Spec : Prop :=
  ∀ n, P18207695798930396414.a n = A116846 n

end A116846

/-!
# A116847: Number of permutations of length n which avoid the patterns 123, 51432.

The programs for A116847, the canonical program `A116847.P5495450403933766828` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116847 has offset 1).

The definition of A116847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116847.P5495450403933766828

`A001906(n+1)-A004006(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A116847

/-- `A001906(n+1)-A004006(n)` -/
def P5495450403933766828.Spec : Prop :=
  ∀ n, P5495450403933766828.a n = A116847 (n + 1)

theorem P5495450403933766828.correct : P5495450403933766828.Spec := by
  intro n
  simp only [A116847, Nat.add_sub_cancel]

end A116847

/-! ## A116847.P4672544630236232243

`ogf((1-5x+10x^2-9x^3+5x^4-x^5)/(1-7x+19x^2-26x^3+19x^4-7x^5+x^6))`
-/

namespace A116847.P4672544630236232243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10, -9, 5, -1] [1, -7, 19, -26, 19, -7, 1] n

end

end A116847.P4672544630236232243

namespace A116847

/-- `ogf((1-5x+10x^2-9x^3+5x^4-x^5)/(1-7x+19x^2-26x^3+19x^4-7x^5+x^6))` -/
def P4672544630236232243.Spec : Prop :=
  ∀ n, P4672544630236232243.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P14314873564979534866

`∑[∑[A055588(n)-n]]-n`
-/

namespace A116847.P14314873564979534866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A116847.P14314873564979534866

namespace A116847

/-- `∑[∑[A055588(n)-n]]-n` -/
def P14314873564979534866.Spec : Prop :=
  ∀ n, P14314873564979534866.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P16577249484193154502

`∑[∑[∑[A001519(n)]-n]]-n`
-/

namespace A116847.P16577249484193154502
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A116847.P16577249484193154502

namespace A116847

/-- `∑[∑[∑[A001519(n)]-n]]-n` -/
def P16577249484193154502.Spec : Prop :=
  ∀ n, P16577249484193154502.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P6830834598567479148

`∑[∑[A001906(n)]-C(n, 2)]+1`
-/

namespace A116847.P6830834598567479148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116847.P6830834598567479148

namespace A116847

/-- `∑[∑[A001906(n)]-C(n, 2)]+1` -/
def P6830834598567479148.Spec : Prop :=
  ∀ n, P6830834598567479148.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P15425432384868706105

`∑[A000045(Δ[n²])-C(n, 2)]-n`
-/

namespace A116847.P15425432384868706105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A116847.P15425432384868706105

namespace A116847

/-- `∑[A000045(Δ[n²])-C(n, 2)]-n` -/
def P15425432384868706105.Spec : Prop :=
  ∀ n, P15425432384868706105.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P2147772782985603275

`∑[∑[A000045(2*n)-n]+n]+1`
-/

namespace A116847.P2147772782985603275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116847.P2147772782985603275

namespace A116847

/-- `∑[∑[A000045(2*n)-n]+n]+1` -/
def P2147772782985603275.Spec : Prop :=
  ∀ n, P2147772782985603275.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P3767748721500894199

`A035508(n)-A283551(n)`
-/

namespace A116847.P3767748721500894199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n - A283551 n

end

end A116847.P3767748721500894199

namespace A116847

/-- `A035508(n)-A283551(n)` -/
def P3767748721500894199.Spec : Prop :=
  ∀ n, P3767748721500894199.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P8239699612176476073

`∑[A122367(n)]-A004006(n)`
-/

namespace A116847.P8239699612176476073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004006 n

end

end A116847.P8239699612176476073

namespace A116847

/-- `∑[A122367(n)]-A004006(n)` -/
def P8239699612176476073.Spec : Prop :=
  ∀ n, P8239699612176476073.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P15606203965882692164

`A147600(2*n)-A004006(n)`
-/

namespace A116847.P15606203965882692164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (2 * n) - A004006 n

end

end A116847.P15606203965882692164

namespace A116847

/-- `A147600(2*n)-A004006(n)` -/
def P15606203965882692164.Spec : Prop :=
  ∀ n, P15606203965882692164.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P2788501831310526818

`A000124(n)+∑[∑[A054452(n)]]`
-/

namespace A116847.P2788501831310526818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116847.P2788501831310526818

namespace A116847

/-- `A000124(n)+∑[∑[A054452(n)]]` -/
def P2788501831310526818.Spec : Prop :=
  ∀ n, P2788501831310526818.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P7844191592731179782

`A000045(2*(n+1))-A004006(n)`
-/

namespace A116847.P7844191592731179782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) - A004006 n

end

end A116847.P7844191592731179782

namespace A116847

/-- `A000045(2*(n+1))-A004006(n)` -/
def P7844191592731179782.Spec : Prop :=
  ∀ n, P7844191592731179782.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P13929587212885990291

`A360705(2*n+1)-A004006(n)`
-/

namespace A116847.P13929587212885990291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360705 (2 * n + 1) - A004006 n

end

end A116847.P13929587212885990291

namespace A116847

/-- `A360705(2*n+1)-A004006(n)` -/
def P13929587212885990291.Spec : Prop :=
  ∀ n, P13929587212885990291.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P9340764237061575520

`A212804(2*n+3)-A004006(n)`
-/

namespace A116847.P9340764237061575520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 3) - A004006 n

end

end A116847.P9340764237061575520

namespace A116847

/-- `A212804(2*n+3)-A004006(n)` -/
def P9340764237061575520.Spec : Prop :=
  ∀ n, P9340764237061575520.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P16428568674624595617

`∑[A000045(n+1+n)]-A004006(n)`
-/

namespace A116847.P16428568674624595617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004006 n

end

end A116847.P16428568674624595617

namespace A116847

/-- `∑[A000045(n+1+n)]-A004006(n)` -/
def P16428568674624595617.Spec : Prop :=
  ∀ n, P16428568674624595617.a n = A116847 (n + 1)

end A116847

/-! ## A116847.P9757257729921342397

`A000071(2*(n+1))+1-A175686(2*n)`
-/

namespace A116847.P9757257729921342397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * (n + 1)) + (1 - A175686 (2 * n))

end

end A116847.P9757257729921342397

namespace A116847

/-- `A000071(2*(n+1))+1-A175686(2*n)` -/
def P9757257729921342397.Spec : Prop :=
  ∀ n, P9757257729921342397.a n = A116847 (n + 1)

end A116847

/-!
# A116848: Number of permutations of length n which avoid the patterns 231, 51234.

The programs for A116848, the canonical program `A116848.P1395264294158698603` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116848 has offset 1).

The definition of A116848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116848.P1395264294158698603

`ogf((1-4x+7x^2-5x^3+3x^4)/(1-6x+14x^2-17x^3+10x^4-4x^5))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116848

/-- `ogf((1-4x+7x^2-5x^3+3x^4)/(1-6x+14x^2-17x^3+10x^4-4x^5))` -/
def P1395264294158698603.Spec : Prop :=
  ∀ n, P1395264294158698603.a n = A116848 (n + 1)

theorem P1395264294158698603.correct : P1395264294158698603.Spec := by
  intro n
  simp only [A116848, Nat.add_sub_cancel]

end A116848

/-! ## A116848.P5636861347905179222

`6*a(n-1)-14*a(n-2)+17*a(n-3)-10*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14, a(4)=41`
-/

namespace A116848.P5636861347905179222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 14, 41] fun n a =>
  6 * a (n - 1) - 14 * a (n - 2) + 17 * a (n - 3) - 10 * a (n - 4) + 4 * a (n - 5)

end

end A116848.P5636861347905179222

namespace A116848

/-- `6*a(n-1)-14*a(n-2)+17*a(n-3)-10*a(n-4)+4*a(n-5)` -/
def P5636861347905179222.Spec : Prop :=
  ∀ n, P5636861347905179222.a n = A116848 (n + 1)

end A116848

/-! ## A116848.P2877719666995195630

`A116847(n+1)+A080224(A093100(n+1))`
-/

namespace A116848.P2877719666995195630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116847 (n + 1) + A080224 (A093100 (n + 1)).toNat

end

end A116848.P2877719666995195630

namespace A116848

/-- `A116847(n+1)+A080224(A093100(n+1))` -/
def P2877719666995195630.Spec : Prop :=
  ∀ n, P2877719666995195630.a n = A116848 (n + 1)

end A116848

/-! ## A116848.P8904271850943710614

`A069782(A116847(n+1)^A044931(n+1))`
-/

namespace A116848.P8904271850943710614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (SequenceMachineLib.roundAway ((A116847 (n + 1) : ℚ) ^ (A044931 (n + 1) : ℤ))).toNat

end

end A116848.P8904271850943710614

namespace A116848

/-- `A069782(A116847(n+1)^A044931(n+1))` -/
def P8904271850943710614.Spec : Prop :=
  ∀ n, P8904271850943710614.a n = A116848 (n + 1)

end A116848

/-!
# A116849: Number of permutations of length n which avoid the patterns 213, 51432.

The programs for A116849, the canonical program `A116849.P10133064225124641238` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116849 has offset 1).

The definition of A116849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116849.P11221206114806725793

`ogf((1-3x+3x^2-x^3)/(1-5x+8x^2-6x^3+x^4))`
-/

namespace A116849.P11221206114806725793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -5, 8, -6, 1] n

end

end A116849.P11221206114806725793

namespace A116849

/-- `ogf((1-3x+3x^2-x^3)/(1-5x+8x^2-6x^3+x^4))` -/
def P11221206114806725793.Spec : Prop :=
  ∀ n, P11221206114806725793.a n = A116849 (n + 1)

end A116849

/-! ## A116849.P10133064225124641238

`5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116849

/-- `5*a(n-1)-8*a(n-2)+6*a(n-3)-a(n-4)` -/
def P10133064225124641238.Spec : Prop :=
  ∀ n, P10133064225124641238.a n = A116849 (n + 1)

theorem P10133064225124641238.correct : P10133064225124641238.Spec := by
  intro n
  simp only [A116849, Nat.add_sub_cancel]

end A116849

/-! ## A116849.P9188121431098574439

`A291006(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A116849.P9188121431098574439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A291006 (n - 1) + a (n - 1)

end

end A116849.P9188121431098574439

namespace A116849

/-- `A291006(n-1)+a(n-1)` -/
def P9188121431098574439.Spec : Prop :=
  ∀ n, P9188121431098574439.a n = A116849 (n + 1)

end A116849

/-! ## A116849.P1570364632059862345

`∑[A291006(log2(A011782(n)))]`
-/

namespace A116849.P1570364632059862345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291006 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116849.P1570364632059862345

namespace A116849

/-- `∑[A291006(log2(A011782(n)))]` -/
def P1570364632059862345.Spec : Prop :=
  ∀ n, P1570364632059862345.a n = A116849 (n + 1)

end A116849

/-! ## A116849.P16246535221222355724

`Δ[Δ[Δ[A116521(n)]]]`
-/

namespace A116849.P16246535221222355724
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116521 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116849.P16246535221222355724

namespace A116849

/-- `Δ[Δ[Δ[A116521(n)]]]` -/
def P16246535221222355724.Spec : Prop :=
  ∀ n, P16246535221222355724.a n = A116849 (n + 1)

end A116849

/-! ## A116849.P17837079638170507942

`∑[A291006(n)]+1-A291006(n)`
-/

namespace A116849.P17837079638170507942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A291006 n)

end

end A116849.P17837079638170507942

namespace A116849

/-- `∑[A291006(n)]+1-A291006(n)` -/
def P17837079638170507942.Spec : Prop :=
  ∀ n, P17837079638170507942.a n = A116849 (n + 1)

end A116849

/-! ## A116849.P9290607596536369356

`∑[A291006(A259361(n²))]`
-/

namespace A116849.P9290607596536369356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291006 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116849.P9290607596536369356

namespace A116849

/-- `∑[A291006(A259361(n²))]` -/
def P9290607596536369356.Spec : Prop :=
  ∀ n, P9290607596536369356.a n = A116849 (n + 1)

end A116849

/-!
# A116850: Number of permutations of length n which avoid the patterns 231, 12354.

The programs for A116850, the canonical program `A116850.P17050424171351842072` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116850 has offset 1).

The definition of A116850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116850.P17474242886722736384

`ogf((1-7x+20x^2-28x^3+20x^4-7x^5)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))`
-/

namespace A116850.P17474242886722736384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 20, -28, 20, -7] [1, -9, 33, -63, 66, -36, 8] n

end

end A116850.P17474242886722736384

namespace A116850

/-- `ogf((1-7x+20x^2-28x^3+20x^4-7x^5)/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))` -/
def P17474242886722736384.Spec : Prop :=
  ∀ n, P17474242886722736384.a n = A116850 (n + 1)

end A116850

/-! ## A116850.P17050424171351842072

`1/16*(32-9*2^(1+n+1)+(8+2^(n+1))*(n+1)+(8+2^(n+1))*(n+1)²)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116850

/-- `1/16*(32-9*2^(1+n+1)+(8+2^(n+1))*(n+1)+(8+2^(n+1))*(n+1)²)` -/
def P17050424171351842072.Spec : Prop :=
  ∀ n, P17050424171351842072.a n = (A116850 (n + 1) : ℚ)

end A116850

/-! ## A116850.P8068182614875240101

`∑[A049611(n)-A000295(n)]+1`
-/

namespace A116850.P8068182614875240101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116850.P8068182614875240101

namespace A116850

/-- `∑[A049611(n)-A000295(n)]+1` -/
def P8068182614875240101.Spec : Prop :=
  ∀ n, P8068182614875240101.a n = A116850 (n + 1)

end A116850

/-! ## A116850.P5069283411269341217

`∑[A049611(A028310(n))-A000295(n)]`
-/

namespace A116850.P5069283411269341217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (A028310 n).toNat - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116850.P5069283411269341217

namespace A116850

/-- `∑[A049611(A028310(n))-A000295(n)]` -/
def P5069283411269341217.Spec : Prop :=
  ∀ n, P5069283411269341217.a n = A116850 (n + 1)

end A116850

/-! ## A116850.P5681115594765637957

`A000124(n+1)+A072863(n)-A055010(n+1)`
-/

namespace A116850.P5681115594765637957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + (A072863 n - A055010 (n + 1))

end

end A116850.P5681115594765637957

namespace A116850

/-- `A000124(n+1)+A072863(n)-A055010(n+1)` -/
def P5681115594765637957.Spec : Prop :=
  ∀ n, P5681115594765637957.a n = A116850 (n + 1)

end A116850

/-! ## A116850.P13510829230140506168

`A005408(n)-(2*n-∑[A049611(n)-A000295(n)])`
-/

namespace A116850.P13510829230140506168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116850.P13510829230140506168

namespace A116850

/-- `A005408(n)-(2*n-∑[A049611(n)-A000295(n)])` -/
def P13510829230140506168.Spec : Prop :=
  ∀ n, P13510829230140506168.a n = A116850 (n + 1)

end A116850

/-! ## A116850.P2856662919632764371

`A029579(2*n)-(n-∑[A049611(n)-A000295(n)])`
-/

namespace A116850.P2856662919632764371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n) - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116850.P2856662919632764371

namespace A116850

/-- `A029579(2*n)-(n-∑[A049611(n)-A000295(n)])` -/
def P2856662919632764371.Spec : Prop :=
  ∀ n, P2856662919632764371.a n = A116850 (n + 1)

end A116850

/-! ## A116850.P3721196373416770708

`A000034(n)-(n%2-∑[A049611(n)-A000295(n)])`
-/

namespace A116850.P3721196373416770708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n - A000295 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - (((n % 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A116850.P3721196373416770708

namespace A116850

/-- `A000034(n)-(n%2-∑[A049611(n)-A000295(n)])` -/
def P3721196373416770708.Spec : Prop :=
  ∀ n, P3721196373416770708.a n = A116850 (n + 1)

end A116850

/-!
# A116851: Number of permutations of length n which avoid the patterns 321, 31245.

The programs for A116851, the canonical program `A116851.P1906211914061957682` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116851 has offset 1).

The definition of A116851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116851.P1906211914061957682

`5*2^(n+1)-(n+3)*((n+1)^3+11*(n+1)+24)/12`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116851

/-- `5*2^(n+1)-(n+3)*((n+1)^3+11*(n+1)+24)/12` -/
def P1906211914061957682.Spec : Prop :=
  ∀ n, P1906211914061957682.a n = (A116851 (n + 1) : ℚ)

end A116851

/-! ## A116851.P12896171039919567340

`ogf((1-5x+11x^2-11x^3+8x^4-2x^5)/(1-7x+20x^2-30x^3+25x^4-11x^5+2x^6))`
-/

namespace A116851.P12896171039919567340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 11, -11, 8, -2] [1, -7, 20, -30, 25, -11, 2] n

end

end A116851.P12896171039919567340

namespace A116851

/-- `ogf((1-5x+11x^2-11x^3+8x^4-2x^5)/(1-7x+20x^2-30x^3+25x^4-11x^5+2x^6))` -/
def P12896171039919567340.Spec : Prop :=
  ∀ n, P12896171039919567340.a n = A116851 (n + 1)

end A116851

/-! ## A116851.P17631593876747004021

`∑[∑[A188589(n)-A132411(n)]]`
-/

namespace A116851.P17631593876747004021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188589 n - A132411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116851.P17631593876747004021

namespace A116851

/-- `∑[∑[A188589(n)-A132411(n)]]` -/
def P17631593876747004021.Spec : Prop :=
  ∀ n, P17631593876747004021.a n = A116851 (n + 1)

end A116851

/-!
# A116852: Number of partitions of n-th semiprime into 2 squares.

The programs for A116852, the canonical program `A116852.P1267035583415015737` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116852 has offset 1).

The definition of A116852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000161, A001358, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A116852.P1267035583415015737

`A000161(A001358(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A116852

/-- `A000161(A001358(n+1))` -/
def P1267035583415015737.Spec : Prop :=
  ∀ n, P1267035583415015737.a n = A116852 (n + 1)

theorem P1267035583415015737.correct : P1267035583415015737.Spec := by
  intro n
  simp only [A116852, Nat.add_sub_cancel]

end A116852

/-! ## A116852.P7255824111628664895

`A000161(A176540(n+2))`
-/

namespace A116852.P7255824111628664895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A176540 (n + 2)).toNat

end

end A116852.P7255824111628664895

namespace A116852

/-- `A000161(A176540(n+2))` -/
def P7255824111628664895.Spec : Prop :=
  ∀ n, P7255824111628664895.a n = A116852 (n + 1)

end A116852

/-! ## A116852.P17655125685023107055

`A000161(A088707(n+1)-1)`
-/

namespace A116852.P17655125685023107055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A088707 (n + 1) - 1).toNat

end

end A116852.P17655125685023107055

namespace A116852

/-- `A000161(A088707(n+1)-1)` -/
def P17655125685023107055.Spec : Prop :=
  ∀ n, P17655125685023107055.a n = A116852 (n + 1)

end A116852

/-! ## A116852.P1037269943728947268

`A000161(A075818(n+1)/2)`
-/

namespace A116852.P1037269943728947268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A116852.P1037269943728947268

namespace A116852

/-- `A000161(A075818(n+1)/2)` -/
def P1037269943728947268.Spec : Prop :=
  ∀ n, P1037269943728947268.a n = A116852 (n + 1)

end A116852

/-! ## A116852.P11117428715454607384

`A000161(eq[2, A001222(n+1)]+1)`
-/

namespace A116852.P11117428715454607384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A116852.P11117428715454607384

namespace A116852

/-- `A000161(eq[2, A001222(n+1)]+1)` -/
def P11117428715454607384.Spec : Prop :=
  ∀ n, P11117428715454607384.a n = A116852 (n + 1)

end A116852

/-! ## A116852.P8489570921206689653

`A025435(eq[2, A001222(n+1)]+1)`
-/

namespace A116852.P8489570921206689653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A116852.P8489570921206689653

namespace A116852

/-- `A025435(eq[2, A001222(n+1)]+1)` -/
def P8489570921206689653.Spec : Prop :=
  ∀ n, P8489570921206689653.a n = A116852 (n + 1)

end A116852

/-! ## A116852.P7918484527420592274

`A025435(eq[4, A124315(n+1)]+1)`
-/

namespace A116852.P7918484527420592274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A116852.P7918484527420592274

namespace A116852

/-- `A025435(eq[4, A124315(n+1)]+1)` -/
def P7918484527420592274.Spec : Prop :=
  ∀ n, P7918484527420592274.a n = A116852 (n + 1)

end A116852

/-! ## A116852.P5082817047907347629

`A000161(A075818(n+1))`
-/

namespace A116852.P5082817047907347629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A075818 (n + 1)).toNat

end

end A116852.P5082817047907347629

namespace A116852

/-- `A000161(A075818(n+1))` -/
def P5082817047907347629.Spec : Prop :=
  ∀ n, P5082817047907347629.a n = A116852 (n + 1)

end A116852

/-! ## A116852.P9750366881451210603

`A000161(A176570(n+1))`
-/

namespace A116852.P9750366881451210603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A176570 (n + 1)).toNat

end

end A116852.P9750366881451210603

namespace A116852

/-- `A000161(A176570(n+1))` -/
def P9750366881451210603.Spec : Prop :=
  ∀ n, P9750366881451210603.a n = A116852 (n + 1)

end A116852

/-!
# A116853: Difference triangle of factorial numbers read by upward diagonals.

The programs for A116853, the canonical program `A116853.P8257682953299871170` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116853 has offset 1).

The definition of A116853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116853.P15120607686184782534

`A068106(comp[∑[n]])`
-/

namespace A116853.P15120607686184782534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A116853.P15120607686184782534

namespace A116853

/-- `A068106(comp[∑[n]])` -/
def P15120607686184782534.Spec : Prop :=
  ∀ n, P15120607686184782534.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P8257682953299871170

`A068106(A007401(n+1))+A068106(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A116853

/-- `A068106(A007401(n+1))+A068106(n)` -/
def P8257682953299871170.Spec : Prop :=
  ∀ n, P8257682953299871170.a n = A116853 (n + 1)

theorem P8257682953299871170.correct : P8257682953299871170.Spec := by
  intro n
  simp only [A116853, Nat.add_sub_cancel]

end A116853

/-! ## A116853.P3488128414693847644

`A068106(A014132(n+1)-1)+A068106(n)`
-/

namespace A116853.P3488128414693847644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A014132 (n + 1) - 1).toNat + A068106 n

end

end A116853.P3488128414693847644

namespace A116853

/-- `A068106(A014132(n+1)-1)+A068106(n)` -/
def P3488128414693847644.Spec : Prop :=
  ∀ n, P3488128414693847644.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P9501222120892144450

`A116854(A080036(n+1))`
-/

namespace A116853.P9501222120892144450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A080036 (n + 1)).toNat

end

end A116853.P9501222120892144450

namespace A116853

/-- `A116854(A080036(n+1))` -/
def P9501222120892144450.Spec : Prop :=
  ∀ n, P9501222120892144450.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P11339853145523247693

`A047920(A099375(n)+n)`
-/

namespace A116853.P11339853145523247693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A099375 n + (n : ℤ)).toNat

end

end A116853.P11339853145523247693

namespace A116853

/-- `A047920(A099375(n)+n)` -/
def P11339853145523247693.Spec : Prop :=
  ∀ n, P11339853145523247693.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P15084237875499982986

`A116854(lt[1, A074909(n)]+1)`
-/

namespace A116853.P15084237875499982986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A116853.P15084237875499982986

namespace A116853

/-- `A116854(lt[1, A074909(n)]+1)` -/
def P15084237875499982986.Spec : Prop :=
  ∀ n, P15084237875499982986.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P6761424856427736460

`A116854(A002024(n+1)+2+n)`
-/

namespace A116853.P6761424856427736460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A002024 (n + 1) + 2 + (n : ℤ)).toNat

end

end A116853.P6761424856427736460

namespace A116853

/-- `A116854(A002024(n+1)+2+n)` -/
def P6761424856427736460.Spec : Prop :=
  ∀ n, P6761424856427736460.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P1480655208672833767

`A047920(A038722(n+1)+A003056(n))`
-/

namespace A116853.P1480655208672833767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A038722 (n + 1) + A003056 n).toNat

end

end A116853.P1480655208672833767

namespace A116853

/-- `A047920(A038722(n+1)+A003056(n))` -/
def P1480655208672833767.Spec : Prop :=
  ∀ n, P1480655208672833767.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P1992302528282047364

`A047920(A061579(n)+A002024(n+1))`
-/

namespace A116853.P1992302528282047364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A061579 n + A002024 (n + 1)).toNat

end

end A116853.P1992302528282047364

namespace A116853

/-- `A047920(A061579(n)+A002024(n+1))` -/
def P1992302528282047364.Spec : Prop :=
  ∀ n, P1992302528282047364.a n = A116853 (n + 1)

end A116853

/-! ## A116853.P670533502743368947

`A047920(A093995(n+1)-A083920(n))`
-/

namespace A116853.P670533502743368947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A093995 (n + 1) - A083920 n).toNat

end

end A116853.P670533502743368947

namespace A116853

/-- `A047920(A093995(n+1)-A083920(n))` -/
def P670533502743368947.Spec : Prop :=
  ∀ n, P670533502743368947.a n = A116853 (n + 1)

end A116853

/-!
# A116854: First differences of the rows in the triangle of A116853, starting with 0.

The programs for A116854, the canonical program `A116854.P7495526389933567981` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116854 has offset 1).

The definition of A116854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116854.P7495526389933567981

`A068106(A066182(n+1)+A010054(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A116854

/-- `A068106(A066182(n+1)+A010054(n))` -/
def P7495526389933567981.Spec : Prop :=
  ∀ n, P7495526389933567981.a n = A116854 (n + 1)

theorem P7495526389933567981.correct : P7495526389933567981.Spec := by
  intro n
  simp only [A116854, Nat.add_sub_cancel]

end A116854

/-! ## A116854.P18135663210510404355

`A068106(n)+A000166(A130296(n+1))`
-/

namespace A116854.P18135663210510404355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 n + A000166 (A130296 (n + 1)).toNat

end

end A116854.P18135663210510404355

namespace A116854

/-- `A068106(n)+A000166(A130296(n+1))` -/
def P18135663210510404355.Spec : Prop :=
  ∀ n, P18135663210510404355.a n = A116854 (n + 1)

end A116854

/-! ## A116854.P17346820347844247967

`A068106(A066182(n+1)+char[A000217(n)])`
-/

namespace A116854.P17346820347844247967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A066182 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A116854.P17346820347844247967

namespace A116854

/-- `A068106(A066182(n+1)+char[A000217(n)])` -/
def P17346820347844247967.Spec : Prop :=
  ∀ n, P17346820347844247967.a n = A116854 (n + 1)

end A116854

/-! ## A116854.P14640160015394832572

`A047920(A114327(n)+A066182(n+1))`
-/

namespace A116854.P14640160015394832572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A114327 n + A066182 (n + 1)).toNat

end

end A116854.P14640160015394832572

namespace A116854

/-- `A047920(A114327(n)+A066182(n+1))` -/
def P14640160015394832572.Spec : Prop :=
  ∀ n, P14640160015394832572.a n = A116854 (n + 1)

end A116854

/-! ## A116854.P5147805923770705233

`A047920(A038722(n+1)-A167407(n))`
-/

namespace A116854.P5147805923770705233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (A038722 (n + 1) - A167407 n).toNat

end

end A116854.P5147805923770705233

namespace A116854

/-- `A047920(A038722(n+1)-A167407(n))` -/
def P5147805923770705233.Spec : Prop :=
  ∀ n, P5147805923770705233.a n = A116854 (n + 1)

end A116854

/-!
# A116855: Triangle read by rows, constructed from binomial transforms of prefixes of A000255 (see Comments for precise definition).

The programs for A116855, there is no canonical definition to state claims against.
-/

/-! ## A116855.P16566028554463131896

`A103298(A216274(n)^A004197(n))`
-/

namespace A116855.P16566028554463131896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (SequenceMachineLib.roundAway ((A216274 n : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A116855.P16566028554463131896

/-! ## A116855.P10789465316803449643

`A103298(A216274(n)^A342955(n))`
-/

namespace A116855.P10789465316803449643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (SequenceMachineLib.roundAway ((A216274 n : ℚ) ^ (A342955 n : ℤ))).toNat

end

end A116855.P10789465316803449643

/-! ## A116855.P16864527129550765901

`A228708(A046777(n))+A179749(n+1)`
-/

namespace A116855.P16864527129550765901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228708 (A046777 n).toNat + A179749 (n + 1)

end

end A116855.P16864527129550765901

/-! ## A116855.P7969354744811198009

`A317492(A225641(n+1)^A043282(n+3))`
-/

namespace A116855.P7969354744811198009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (SequenceMachineLib.roundAway ((A225641 (n + 1) : ℚ) ^ (A043282 (n + 3) : ℤ))).toNat

end

end A116855.P7969354744811198009

/-! ## A116855.P6906991674633452916

`A171397(A225641(n+1)%A293230(2*(n+2)))`
-/

namespace A116855.P6906991674633452916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171397 (Int.tmod (A225641 (n + 1)) (A293230 (2 * (n + 2)))).toNat

end

end A116855.P6906991674633452916

/-!
# A116856: Triangle read by rows: T(n,k) is the number of partitions of n into odd parts such that the smallest part is k (n>=1, k>=1).

The programs for A116856, there is no canonical definition to state claims against.
-/

/-! ## A116856.P10351086094231343039

`A102673(A320293(n+1)+A143850(n+1))`
-/

namespace A116856.P10351086094231343039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A320293 (n + 1) + A143850 (n + 1)).toNat

end

end A116856.P10351086094231343039

/-!
# A116857: Triangle read by rows: T(n,k) is the number of partitions of n into distinct odd parts, the largest of which is k (n>=1, k>=1).

The programs for A116857, there is no canonical definition to state claims against.
-/

/-! ## A116857.P5060294379824531543

`A027356(comp[C(2*n+1, 2)])`
-/

namespace A116857.P5060294379824531543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A116857.P5060294379824531543

/-! ## A116857.P13484151986136460689

`A027356(A183301(n+1))`
-/

namespace A116857.P13484151986136460689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A183301 (n + 1)).toNat

end

end A116857.P13484151986136460689

/-! ## A116857.P3222035997138209008

`A027356(comp[A000217(2*n)])`
-/

namespace A116857.P3222035997138209008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A116857.P3222035997138209008

/-! ## A116857.P1359905382744715436

`A027356(A339183(n)+1+n)`
-/

namespace A116857.P1359905382744715436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A339183 n + 1 + (n : ℤ)).toNat

end

end A116857.P1359905382744715436

/-! ## A116857.P11999098486975929077

`A027356(∑[A000034(A063725(n))])`
-/

namespace A116857.P11999098486975929077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A063725 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A116857.P11999098486975929077

/-! ## A116857.P15989139300807034579

`A027356(lt[A010816(n), 1])`
-/

namespace A116857.P15989139300807034579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A116857.P15989139300807034579

/-! ## A116857.P9776110606018175435

`A027356(eq[4, A040059(A028842(n+1))])`
-/

namespace A116857.P9776110606018175435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040059 (A028842 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116857.P9776110606018175435

/-!
# A116858: Triangle read by rows: T(n,k) is the number of partitions into distinct parts having Durfee square of size k (n>=1, k>=1).

The programs for A116858, there is no canonical definition to state claims against.
-/

/-! ## A116858.P10976007259127929969

`A334430(A131575(n)+2)`
-/

namespace A116858.P10976007259127929969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334430 (A131575 n + 2).toNat

end

end A116858.P10976007259127929969

/-! ## A116858.P1979227943876718438

`A334430(or(2, A131575(n)))`
-/

namespace A116858.P1979227943876718438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334430 (Int.lor 2 (A131575 n)).toNat

end

end A116858.P1979227943876718438

/-! ## A116858.P4668188741277398210

`A188170(6*A230312(n+1))`
-/

namespace A116858.P4668188741277398210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (6 * A230312 (n + 1)).toNat

end

end A116858.P4668188741277398210

/-! ## A116858.P10982718980110158439

`A000005(gcd(A004275(n), A213860(n+1)))`
-/

namespace A116858.P10982718980110158439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A004275 n) (A213860 (n + 1)))

end

end A116858.P10982718980110158439

/-!
# A116859: Sum of the sizes of the Durfee squares of all partitions of n into distinct parts.

The programs for A116859, there is no canonical definition to state claims against.
-/

/-! ## A116859.P16058576995144623136

`A034891(n)-A116865(A058984(n))`
-/

namespace A116859.P16058576995144623136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - A116865 (A058984 n).toNat

end

end A116859.P16058576995144623136

/-! ## A116859.P6856956414865463371

`A034891(n)-A318950(A000041(n))`
-/

namespace A116859.P6856956414865463371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 n - A318950 (A000041 n).toNat

end

end A116859.P6856956414865463371

/-! ## A116859.P1961905522755422562

`A105224(A268191(n+2)+A000070(2*n))`
-/

namespace A116859.P1961905522755422562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A268191 (n + 2) + A000070 (2 * n)).toNat

end

end A116859.P1961905522755422562

/-!
# A116860: Triangle read by rows: T(n,k) is the number of partitions into distinct odd parts with smallest part k (n>=1, k>=1).

The programs for A116860, there is no canonical definition to state claims against.
-/

/-! ## A116860.P16516391599482550061

`ceil(Δ[A206437(n+3)]/A234521(2*(n+1)))`
-/

namespace A116860.P16516391599482550061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / (A234521 (2 * (n + 1)) : ℚ)⌉

end

end A116860.P16516391599482550061

/-! ## A116860.P4590299608406996004

`Δ[A039963(A133809(n+2))]²`
-/

namespace A116860.P4590299608406996004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039963 (A133809 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A116860.P4590299608406996004

/-! ## A116860.P15888842133370786447

`A120524(A103298(∑[A052938(n)]))`
-/

namespace A116860.P15888842133370786447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120524 (A103298 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A116860.P15888842133370786447

/-! ## A116860.P8297845161099583507

`A055641(n)^A336423(A010784(3*n+2))`
-/

namespace A116860.P8297845161099583507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055641 n : ℚ) ^ (A336423 (A010784 (3 * n + 2)).toNat : ℤ)

end

end A116860.P8297845161099583507

/-! ## A116860.P8157257717716243233

`A010051(A108615(3*n)+A208747(n+1))`
-/

namespace A116860.P8157257717716243233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A108615 (3 * n) + A208747 (n + 1)).toNat

end

end A116860.P8157257717716243233

/-!
# A116861: Triangle read by rows: T(n,k) is the number of partitions of n such that the sum of the parts, counted without multiplicities, is equal to k (n>=1, k>=1).

The programs for A116861, there is no canonical definition to state claims against.
-/

/-! ## A116861.P13413548767764651449

`A364916(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A116861.P13413548767764651449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A116861.P13413548767764651449

/-! ## A116861.P7879575710589740097

`A364916(A099375(n)+n)`
-/

namespace A116861.P7879575710589740097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A099375 n + (n : ℤ)).toNat

end

end A116861.P7879575710589740097

/-! ## A116861.P15848477577960817678

`A364916(A061579(n)+A002024(n+1))`
-/

namespace A116861.P15848477577960817678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A061579 n + A002024 (n + 1)).toNat

end

end A116861.P15848477577960817678

/-! ## A116861.P9298325414547494379

`A364916(A380649(n+1))`
-/

namespace A116861.P9298325414547494379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A380649 (n + 1)).toNat

end

end A116861.P9298325414547494379

/-! ## A116861.P12469601089772129731

`A073490(A167502(n+2))`
-/

namespace A116861.P12469601089772129731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A167502 (n + 2)).toNat

end

end A116861.P12469601089772129731

/-!
# A116862: Row sums of triangle A116868 (called Y(1,3)).

The programs for A116862, there is no canonical definition to state claims against.
-/

/-! ## A116862.P15906185480106240969

`Δ[A064063(n+1)/3]`
-/

namespace A116862.P15906185480106240969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064063 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116862.P15906185480106240969

/-! ## A116862.P18231400280725837998

`Δ[A110519(∑[n+1])/3]`
-/

namespace A116862.P18231400280725837998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110519 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116862.P18231400280725837998

/-! ## A116862.P10025097962130157843

`Δ[record[A116866(n)/3]]`
-/

namespace A116862.P10025097962130157843
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116866 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A116862.P10025097962130157843

/-!
# A116864: Array of product of parts of the partitions of n with only prime parts.

The programs for A116864, there is no canonical definition to state claims against.
-/

/-! ## A116864.P18162103533535666296

`∏{e}[A036035(n+1), A331045(#)]`
-/

namespace A116864.P18162103533535666296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A331045 (Nat.factorization (f1 n).natAbs p)

end

end A116864.P18162103533535666296

/-! ## A116864.P12102171458176658798

`∏{e}[A036035(n+1), A049084(A065091(#)-2)]`
-/

namespace A116864.P12102171458176658798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A049084 (A065091 (Nat.factorization (f1 n).natAbs p) - 2).toNat

end

end A116864.P12102171458176658798

/-! ## A116864.P8910005143219399051

`A179787(A179806(n+1))%2*A085141(A352490(n+1))`
-/

namespace A116864.P8910005143219399051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179787 (A179806 (n + 1)).toNat) 2 * A085141 (A352490 (n + 1)).toNat

end

end A116864.P8910005143219399051

/-! ## A116864.P17811178143681647753

`A116865(n+1)*A328003(A071786(n+1))`
-/

namespace A116864.P17811178143681647753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116865 (n + 1) * A328003 (A071786 (n + 1)).toNat

end

end A116864.P17811178143681647753

/-! ## A116864.P14234498969930500066

`A160692(A002269(n+2))`
-/

namespace A116864.P14234498969930500066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160692 (A002269 (n + 2)).toNat

end

end A116864.P14234498969930500066

/-!
# A116865: Characteristic array for partitions with only prime parts.

The programs for A116865, there is no canonical definition to state claims against.
-/

/-! ## A116865.P5473128872263767566

`∏{p}[A185974(n+1), A176723(#)]`
-/

namespace A116865.P5473128872263767566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A176723 p

end

end A116865.P5473128872263767566

/-! ## A116865.P16396998478067882663

`floor(atan(A116864(n+1)))`
-/

namespace A116865.P16396998478067882663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A116864 (n + 1) : ℝ)⌋

end

end A116865.P16396998478067882663

/-! ## A116865.P17392845907764058537

`A057427(A116864(1+n))`
-/

namespace A116865.P17392845907764058537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A116864 (1 + n)).toNat

end

end A116865.P17392845907764058537

/-! ## A116865.P693911666037873411

`A002828(A116864(n+1)²)`
-/

namespace A116865.P693911666037873411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A116864 (n + 1) ^ 2).toNat

end

end A116865.P693911666037873411

/-! ## A116865.P16445062468434219176

`A000045(ceil(A116864(n+1)/90))`
-/

namespace A116865.P16445062468434219176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A116864 (n + 1) : ℚ) / 90⌉.toNat

end

end A116865.P16445062468434219176

/-! ## A116865.P7353008293570789168

`A000040(A116864(n+1)+1)%2`
-/

namespace A116865.P7353008293570789168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A116864 (n + 1) + 1).toNat) 2

end

end A116865.P7353008293570789168

/-! ## A116865.P9424290996697545452

`ceil(A116864(n+1)/A000040(n+1))`
-/

namespace A116865.P9424290996697545452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116864 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A116865.P9424290996697545452

/-! ## A116865.P4636456902749846898

`char[eq[0, A000038(n)^A116864(n+1)]]`
-/

namespace A116865.P4636456902749846898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A116864 (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A116865.P4636456902749846898

/-! ## A116865.P13780902896957938934

`char[eq[0, A014029(n)^A116864(n+1)]]`
-/

namespace A116865.P13780902896957938934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014029 n : ℚ) ^ (A116864 (n + 1) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A116865.P13780902896957938934

/-! ## A116865.P14371985706336919016

`(A000010(A116864(n+1)+1)-1)%2`
-/

namespace A116865.P14371985706336919016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A116864 (n + 1) + 1).toNat - 1) 2

end

end A116865.P14371985706336919016

/-!
# A116867: Convolution of generalized Catalan sequence A064063 (named C(3;n)).

The programs for A116867, there is no canonical definition to state claims against.
-/

/-! ## A116867.P9095479670559984712

`A188080(A365183(n)+A072758(n))`
-/

namespace A116867.P9095479670559984712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (A365183 n + A072758 n).toNat

end

end A116867.P9095479670559984712

/-! ## A116867.P10578579546010030519

`A188080(A365183(n)+A029962(n+1))`
-/

namespace A116867.P10578579546010030519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188080 (A365183 n + A029962 (n + 1)).toNat

end

end A116867.P10578579546010030519

/-!
# A116869: Sixth column of triangle A028364.

The programs for A116869, there is no canonical definition to state claims against.
-/

/-! ## A116869.P7309450252641891756

`A028378(A166136(n+3))`
-/

namespace A116869.P7309450252641891756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A166136 (n + 3)).toNat

end

end A116869.P7309450252641891756

/-! ## A116869.P17441343548958192897

`A028378(A155212(n)+14)`
-/

namespace A116869.P17441343548958192897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (A155212 n + 14).toNat

end

end A116869.P17441343548958192897

/-! ## A116869.P18029375308501494870

`A067323(∑[n+6]+9)`
-/

namespace A116869.P18029375308501494870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A116869.P18029375308501494870

/-! ## A116869.P58629853371548563

`A028364(A167499(n+4))`
-/

namespace A116869.P58629853371548563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A167499 (n + 4)).toNat

end

end A116869.P58629853371548563

/-! ## A116869.P4115675662662014063

`A028376(A056119(n)+27)`
-/

namespace A116869.P4115675662662014063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A056119 n + 27).toNat

end

end A116869.P4115675662662014063

/-!
# A116870: Seventh column of triangle A028364.

The programs for A116870, there is no canonical definition to state claims against.
-/

/-! ## A116870.P18023954431854613116

`A028364(A056119(n)+27)`
-/

namespace A116870.P18023954431854613116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A056119 n + 27).toNat

end

end A116870.P18023954431854613116

/-! ## A116870.P16207718178719887309

`A028364(eq[6, A002262(n)])`
-/

namespace A116870.P16207718178719887309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116870.P16207718178719887309

/-! ## A116870.P671013397468996983

`A067323(A155212(n+3)+1)`
-/

namespace A116870.P671013397468996983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A155212 (n + 3) + 1).toNat

end

end A116870.P671013397468996983

/-! ## A116870.P3881344580941443197

`A067323(eq[6, A025581(n)])`
-/

namespace A116870.P3881344580941443197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116870.P3881344580941443197

/-! ## A116870.P18149610465945344242

`A028376(eq[7, A002262(n)])`
-/

namespace A116870.P18149610465945344242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116870.P18149610465945344242

/-!
# A116871: Sixth column of triangle A067323.

The programs for A116871, there is no canonical definition to state claims against.
-/

/-! ## A116871.P3294429842506463871

`A028378(∑[n+5]+6)`
-/

namespace A116871.P3294429842506463871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028378 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A116871.P3294429842506463871

/-! ## A116871.P16790383288339957595

`A067323(A167499(n+4))`
-/

namespace A116871.P16790383288339957595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067323 (A167499 (n + 4)).toNat

end

end A116871.P16790383288339957595

/-! ## A116871.P6840292194619529358

`A028364(A056119(n)+15)`
-/

namespace A116871.P6840292194619529358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (A056119 n + 15).toNat

end

end A116871.P6840292194619529358

/-! ## A116871.P17685802037607846318

`A028364(eq[5, A025581(n)])`
-/

namespace A116871.P17685802037607846318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A116871.P17685802037607846318

/-! ## A116871.P960293219959226135

`A028376(A055999(n+4))`
-/

namespace A116871.P960293219959226135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028376 (A055999 (n + 4)).toNat

end

end A116871.P960293219959226135

/-!
# A116872: Subtriangle of generalized Catalan triangle CM(1,2) = A116880.

The programs for A116872, there is no canonical definition to state claims against.
-/

/-! ## A116872.P11097234430360642274

`A116880(C(row(n)+2, 2)+col(n))`
-/

namespace A116872.P11097234430360642274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + SequenceMachineLib.triCol n)

end

end A116872.P11097234430360642274

/-! ## A116872.P18238725565879723890

`A116880(comp[∑[n+1]])`
-/

namespace A116872.P18238725565879723890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A116872.P18238725565879723890

/-! ## A116872.P3047208555365282767

`record[A116880(n)-char[1]]`
-/

namespace A116872.P3047208555365282767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116872.P3047208555365282767

/-! ## A116872.P17056704741589744630

`record[A116880(ceil(xor(1, n)/2))]`
-/

namespace A116872.P17056704741589744630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116880 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116872.P17056704741589744630

/-! ## A116872.P18315756057674105706

`or(1, A116880(comp[∑[n-1]]))`
-/

namespace A116872.P18315756057674105706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A116880 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A116872.P18315756057674105706

/-!
# A116873: Generalized Catalan numbers C(2,3;n) = C(3,2;n).

The programs for A116873, there is no canonical definition to state claims against.
-/

/-! ## A116873.P10160529127557267431

`or(1, A316974(comp[2*n+3]))`
-/

namespace A116873.P10160529127557267431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A316974 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A116873.P10160529127557267431

/-!
# A116874: Generalized Catalan numbers C(2,4;n)=C(4,2;n).

The programs for A116874, there is no canonical definition to state claims against.
-/

/-! ## A116874.P13719032642488349721

`A310627(n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A116874.P13719032642488349721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A310627 ((n : ℤ) * a (n - 1)).toNat

end

end A116874.P13719032642488349721

/-!
# A116875: Generalized Catalan numbers C(2,5;n)=C(5,2;n).

The programs for A116875, there is no canonical definition to state claims against.
-/

/-! ## A116875.P302902737019916365

`A258195(n*a(n-1)+1)` with `a(0)=1, a(1)=1`
-/

namespace A116875.P302902737019916365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A258195 ((n : ℤ) * a (n - 1) + 1).toNat

end

end A116875.P302902737019916365

/-!
# A116876: Generalized Catalan numbers C(2,6;n)=C(6,2;n).

The programs for A116876, there is no canonical definition to state claims against.
-/

/-! ## A116876.P4813922958461071324

`A218305(n*(n*(n-5)+5)²)-16*24*C(n, 4)`
-/

namespace A116876.P4813922958461071324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218305 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat - (16 * (24 * Nat.choose n 4) : ℤ)

end

end A116876.P4813922958461071324

/-!
# A116877: Generalized Catalan numbers C(2,7;n)=C(7,2;n).

The programs for A116877, there is no canonical definition to state claims against.
-/

/-! ## A116877.P1117178550840655048

`or(1, A000593(A058121(n+3)))`
-/

namespace A116877.P1117178550840655048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000593 (A058121 (n + 3)).toNat)

end

end A116877.P1117178550840655048

/-!
# A116878: Generalized Catalan numbers C(2,8;n)=C(8,2;n).

The programs for A116878, there is no canonical definition to state claims against.
-/

/-! ## A116878.P2121503327707982504

`ceil(2^(n-1))*A019554(A294024(n))`
-/

namespace A116878.P2121503327707982504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A019554 (A294024 n).toNat

end

end A116878.P2121503327707982504

/-!
# A116879: Row sums of triangle A116872.

The programs for A116879, there is no canonical definition to state claims against.
-/

/-! ## A116879.P12512050319067137473

`A158687((n+1)²+(n+2)²)`
-/

namespace A116879.P12512050319067137473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158687 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A116879.P12512050319067137473

/-! ## A116879.P10566242841491777629

`A116881(n+1)-A062992(n+1)`
-/

namespace A116879.P10566242841491777629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116881 (n + 1) - A062992 (n + 1)

end

end A116879.P10566242841491777629

/-! ## A116879.P17978580830545196121

`A116881(n+1)-A064062(n+2)`
-/

namespace A116879.P17978580830545196121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116881 (n + 1) - A064062 (n + 2)

end

end A116879.P17978580830545196121

/-! ## A116879.P973992988335690862

`A158687(A099776(n+1))%A158701(n+3)`
-/

namespace A116879.P973992988335690862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158687 (A099776 (n + 1)).toNat) (A158701 (n + 3))

end

end A116879.P973992988335690862

/-!
# A116880: Generalized Catalan triangle, called CM(1,2).

The programs for A116880, there is no canonical definition to state claims against.
-/

/-! ## A116880.P11542387923430381730

`A116872(∑[1-char[∑[n]]]+1)`
-/

namespace A116880.P11542387923430381730
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116872 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A116880.P11542387923430381730

/-! ## A116880.P6675903481715745490

`or(1, A116872(A122797(n+1)))`
-/

namespace A116880.P6675903481715745490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A116872 (A122797 (n + 1)).toNat)

end

end A116880.P6675903481715745490

/-! ## A116880.P15989689695832509153

`lcm(A033999(n), A116872(A122797(n+1)))`
-/

namespace A116880.P15989689695832509153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A116872 (A122797 (n + 1)).toNat)

end

end A116880.P15989689695832509153

/-! ## A116880.P1621207890219591825

`A000034(2*n)*A116872(A122797(n+1))`
-/

namespace A116880.P1621207890219591825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A116872 (A122797 (n + 1)).toNat

end

end A116880.P1621207890219591825

/-! ## A116880.P11652398047904212208

`A116872(A122797(n+1))%A087788(n+1)`
-/

namespace A116880.P11652398047904212208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116872 (A122797 (n + 1)).toNat) (A087788 (n + 1))

end

end A116880.P11652398047904212208

/-!
# A116881: Row sums of triangle A116880 (generalized Catalan C(1,2)).

The programs for A116881, the canonical program `A116881.P5650209048026767423` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116881 has offset 0).

The definition of A116881 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A116881.P5650209048026767423

`∑{#}[n, 2^#*(-1)^(n-#)*(n-#+1)*C(2*n+1, #)]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116881

/-- `∑{#}[n, 2^#*(-1)^(n-#)*(n-#+1)*C(2*n+1, #)]` -/
def P5650209048026767423.Spec : Prop :=
  ∀ n, P5650209048026767423.a n = (A116881 n : ℚ)

end A116881

/-! ## A116881.P15518309714590746732

`∑{#}[n, A116880(C(n+1, 2)+#)]`
-/

namespace A116881.P15518309714590746732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A116880 (Nat.choose (n + 1) 2 + k)

end

end A116881.P15518309714590746732

namespace A116881

/-- `∑{#}[n, A116880(C(n+1, 2)+#)]` -/
def P15518309714590746732.Spec : Prop :=
  ∀ n, P15518309714590746732.a n = A116881 n

end A116881

/-! ## A116881.P11536297269579421476

`A119259(n)+n*A064062(n)`
-/

namespace A116881.P11536297269579421476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119259 n + (n : ℤ) * A064062 n

end

end A116881.P11536297269579421476

namespace A116881

/-- `A119259(n)+n*A064062(n)` -/
def P11536297269579421476.Spec : Prop :=
  ∀ n, P11536297269579421476.a n = A116881 n

end A116881

/-! ## A116881.P7189871720668370713

`abs(A159856(A046092(n)))`
-/

namespace A116881.P7189871720668370713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159856 (A046092 n).toNat|

end

end A116881.P7189871720668370713

namespace A116881

/-- `abs(A159856(A046092(n)))` -/
def P7189871720668370713.Spec : Prop :=
  ∀ n, P7189871720668370713.a n = A116881 n

end A116881

/-! ## A116881.P12111684390518334465

`abs(A159856(4*A000217(n)))`
-/

namespace A116881.P12111684390518334465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159856 (4 * A000217 n).toNat|

end

end A116881.P12111684390518334465

namespace A116881

/-- `abs(A159856(4*A000217(n)))` -/
def P12111684390518334465.Spec : Prop :=
  ∀ n, P12111684390518334465.a n = A116881 n

end A116881

/-! ## A116881.P3805066830945015926

`record[gcd(A159856(n), A214292(n))]`
-/

namespace A116881.P3805066830945015926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159856 n) (A214292 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116881.P3805066830945015926

namespace A116881

/-- `record[gcd(A159856(n), A214292(n))]` -/
def P3805066830945015926.Spec : Prop :=
  ∀ n, (P3805066830945015926.a n : ℤ) = A116881 n

end A116881

/-! ## A116881.P14821649074775508568

`A033999(n)*A159856(A046092(n))`
-/

namespace A116881.P14821649074775508568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A159856 (A046092 n).toNat

end

end A116881.P14821649074775508568

namespace A116881

/-- `A033999(n)*A159856(A046092(n))` -/
def P14821649074775508568.Spec : Prop :=
  ∀ n, P14821649074775508568.a n = A116881 n

end A116881

/-!
# A116882: A number k is included if (highest odd divisor of k)^2 <= k.

The programs for A116882, the canonical program `A116882.P18409861636886691626` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A116882 has offset 1).

The definition of A116882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A116882.P11535237789109374064

`∑[∏[char[2*a(n-1)]+1]]` with `a(0)=2, a(1)=3`
-/

namespace A116882.P11535237789109374064
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f3 =>
  2 * f3 (n - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P11535237789109374064

namespace A116882

/-- `∑[∏[char[2*a(n-1)]+1]]` -/
def P11535237789109374064.Spec : Prop :=
  ∀ n, (P11535237789109374064.a n : ℤ) = A116882 (n + 1)

end A116882

/-! ## A116882.P18409861636886691626

`∑[round(n/a(n-1))*a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A116882

/-- `∑[round(n/a(n-1))*a(n-1)]` -/
def P18409861636886691626.Spec : Prop :=
  ∀ n, P18409861636886691626.a n = A116882 (n + 1)

theorem P18409861636886691626.correct : P18409861636886691626.Spec := by
  intro n
  simp only [A116882, Nat.add_sub_cancel]

end A116882

/-! ## A116882.P5715684940107234910

`A080075(n%(2*a(n-1)))-1` with `a(0)=1`
-/

namespace A116882.P5715684940107234910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080075 (Int.tmod (n : ℤ) (2 * a (n - 1))).toNat - 1

end

end A116882.P5715684940107234910

namespace A116882

/-- `A080075(n%(2*a(n-1)))-1` -/
def P5715684940107234910.Spec : Prop :=
  ∀ n, P5715684940107234910.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P14973486965388648621

`∑[a(n-1)+and(a(n-1), A009947(n))]` with `a(0)=1`
-/

namespace A116882.P14973486965388648621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + Int.land (f1 (n - 1)) (A009947 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P14973486965388648621

namespace A116882

/-- `∑[a(n-1)+and(a(n-1), A009947(n))]` -/
def P14973486965388648621.Spec : Prop :=
  ∀ n, P14973486965388648621.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P4623005331434799988

`∑[a(n-1)*A000010(floor(2*n/a(n-1)))]` with `a(0)=1`
-/

namespace A116882.P4623005331434799988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A000010 ⌊(2 * n : ℚ) / (f1 (n - 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P4623005331434799988

namespace A116882

/-- `∑[a(n-1)*A000010(floor(2*n/a(n-1)))]` -/
def P4623005331434799988.Spec : Prop :=
  ∀ n, P4623005331434799988.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P4001607639540249505

`∑[A062383(A004523(n))]`
-/

namespace A116882.P4001607639540249505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P4001607639540249505

namespace A116882

/-- `∑[A062383(A004523(n))]` -/
def P4001607639540249505.Spec : Prop :=
  ∀ n, P4001607639540249505.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P11649254323195071524

`(n+1-A053646(n+1))*A006165(n+1)`
-/

namespace A116882.P11649254323195071524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A053646 (n + 1)) * A006165 (n + 1)

end

end A116882.P11649254323195071524

namespace A116882

/-- `(n+1-A053646(n+1))*A006165(n+1)` -/
def P11649254323195071524.Spec : Prop :=
  ∀ n, P11649254323195071524.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P7000632012923537149

`∑[A053644(A008611(n)+n)]`
-/

namespace A116882.P7000632012923537149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A008611 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P7000632012923537149

namespace A116882

/-- `∑[A053644(A008611(n)+n)]` -/
def P7000632012923537149.Spec : Prop :=
  ∀ n, P7000632012923537149.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P1139361086168449658

`∑[A053644(A004396(2*n))]+1`
-/

namespace A116882.P1139361086168449658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A004396 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A116882.P1139361086168449658

namespace A116882

/-- `∑[A053644(A004396(2*n))]+1` -/
def P1139361086168449658.Spec : Prop :=
  ∀ n, P1139361086168449658.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P273746780885335347

`ceil(A082662(2*n+1)/2)`
-/

namespace A116882.P273746780885335347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082662 (2 * n + 1) : ℚ) / 2⌉

end

end A116882.P273746780885335347

namespace A116882

/-- `ceil(A082662(2*n+1)/2)` -/
def P273746780885335347.Spec : Prop :=
  ∀ n, P273746780885335347.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P10442099135174743351

`ceil(ceil((A080075(Δ[n²])-1)/2)/2)`
-/

namespace A116882.P10442099135174743351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A080075 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1 : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A116882.P10442099135174743351

namespace A116882

/-- `ceil(ceil((A080075(Δ[n²])-1)/2)/2)` -/
def P10442099135174743351.Spec : Prop :=
  ∀ n, P10442099135174743351.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P9693695322981122689

`A082662(A004273(n)+2)/2`
-/

namespace A116882.P9693695322981122689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082662 (A004273 n + 2).toNat : ℚ) / 2

end

end A116882.P9693695322981122689

namespace A116882

/-- `A082662(A004273(n)+2)/2` -/
def P9693695322981122689.Spec : Prop :=
  ∀ n, P9693695322981122689.a n = (A116882 (n + 1) : ℚ)

end A116882

/-! ## A116882.P17759326264516822235

`A006165(n+1)*A060973(2*(n+1))`
-/

namespace A116882.P17759326264516822235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1) * A060973 (2 * (n + 1))

end

end A116882.P17759326264516822235

namespace A116882

/-- `A006165(n+1)*A060973(2*(n+1))` -/
def P17759326264516822235.Spec : Prop :=
  ∀ n, P17759326264516822235.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P9002069077776755935

`A082662(2*n+1)/(A178226(2*n)+1)`
-/

namespace A116882.P9002069077776755935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082662 (2 * n + 1) : ℚ) / (A178226 (2 * n) + 1 : ℚ)

end

end A116882.P9002069077776755935

namespace A116882

/-- `A082662(2*n+1)/(A178226(2*n)+1)` -/
def P9002069077776755935.Spec : Prop :=
  ∀ n, P9002069077776755935.a n = (A116882 (n + 1) : ℚ)

end A116882

/-! ## A116882.P8042339033102048069

`A082662(2*n+1)/(A005171(2*(n+1))+1)`
-/

namespace A116882.P8042339033102048069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082662 (2 * n + 1) : ℚ) / (A005171 (2 * (n + 1)) + 1 : ℚ)

end

end A116882.P8042339033102048069

namespace A116882

/-- `A082662(2*n+1)/(A005171(2*(n+1))+1)` -/
def P8042339033102048069.Spec : Prop :=
  ∀ n, P8042339033102048069.a n = (A116882 (n + 1) : ℚ)

end A116882

/-! ## A116882.P7256108554581737766

`A082662(2*n+1)*A286477(2*(n+1))/2`
-/

namespace A116882.P7256108554581737766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082662 (2 * n + 1) * A286477 (2 * (n + 1)) : ℚ) / 2

end

end A116882.P7256108554581737766

namespace A116882

/-- `A082662(2*n+1)*A286477(2*(n+1))/2` -/
def P7256108554581737766.Spec : Prop :=
  ∀ n, P7256108554581737766.a n = (A116882 (n + 1) : ℚ)

end A116882

/-! ## A116882.P10131506018840778125

`∑[A072376(record[A093048(2*(n+1))])]`
-/

namespace A116882.P10131506018840778125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P10131506018840778125

namespace A116882

/-- `∑[A072376(record[A093048(2*(n+1))])]` -/
def P10131506018840778125.Spec : Prop :=
  ∀ n, P10131506018840778125.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P4638446896907008816

`∑[A072376(A004396(2*n+1)+A004396(2*n))]`
-/

namespace A116882.P4638446896907008816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A004396 (2 * n + 1) + A004396 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P4638446896907008816

namespace A116882

/-- `∑[A072376(A004396(2*n+1)+A004396(2*n))]` -/
def P4638446896907008816.Spec : Prop :=
  ∀ n, P4638446896907008816.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P11426965941406934718

`∑[A053644(A008611(4*n))]`
-/

namespace A116882.P11426965941406934718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A008611 (4 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P11426965941406934718

namespace A116882

/-- `∑[A053644(A008611(4*n))]` -/
def P11426965941406934718.Spec : Prop :=
  ∀ n, P11426965941406934718.a n = A116882 (n + 1)

end A116882

/-! ## A116882.P499093606691669786

`∑[A072376(A154443(2*n)+A072376(2*n+1))]`
-/

namespace A116882.P499093606691669786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A154443 (2 * n) + A072376 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A116882.P499093606691669786

namespace A116882

/-- `∑[A072376(A154443(2*n)+A072376(2*n+1))]` -/
def P499093606691669786.Spec : Prop :=
  ∀ n, P499093606691669786.a n = A116882 (n + 1)

end A116882

/-!
# A116883: A number k is included iff (highest odd divisor of k)^2 >= k.

The programs for A116883, there is no canonical definition to state claims against.
-/

/-! ## A116883.P1288723487617716269

`lt[0, and(n, -n²)]`
-/

namespace A116883.P1288723487617716269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A116883.P1288723487617716269

/-! ## A116883.P15798345036484251812

`lt[and(n, n²-1), n]`
-/

namespace A116883.P15798345036484251812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n ^ 2 : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A116883.P15798345036484251812

/-! ## A116883.P17532839190663160776

`comp[eq[0, and(n, -n²)]]`
-/

namespace A116883.P17532839190663160776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n ^ 2 : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A116883.P17532839190663160776

/-! ## A116883.P12244648991543233037

`lt[gcd(n, 2^n)², n+1]`
-/

namespace A116883.P12244648991543233037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 ^ n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A116883.P12244648991543233037

/-! ## A116883.P14319167584097251371

`lt[(xor(n, n-1)/2)², n]`
-/

namespace A116883.P14319167584097251371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A116883.P14319167584097251371

/-! ## A116883.P14578096691622996539

`comp[lcm(n, 2^ceil(log2(n+1)))]`
-/

namespace A116883.P14578096691622996539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A116883.P14578096691622996539

/-! ## A116883.P583679561844697718

`eq[0, C(and(n, (n+1)*(n-1)), n)]`
-/

namespace A116883.P583679561844697718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) ((n + 1 : ℤ) * ((n : ℤ) - 1))).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A116883.P583679561844697718

/-! ## A116883.P10972242905056597273

`lt[-and(n+1, (n+1)*(n-2)), 0]`
-/

namespace A116883.P10972242905056597273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (n + 1 : ℤ) ((n + 1 : ℤ) * ((n : ℤ) - 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A116883.P10972242905056597273

/-! ## A116883.P11591386725597477657

`lt[sqrt(n), (n+1)/2^val(n+1, 2)]+1`
-/

namespace A116883.P11591386725597477657
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A116883.P11591386725597477657

/-! ## A116883.P7823811150292862144

`comp[(and(n, -n)+n)%(2^val(n+1, 2))²]`
-/

namespace A116883.P7823811150292862144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ)) ((2 ^ SequenceMachineLib.valuation (n + 1) 2) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A116883.P7823811150292862144

/-!
# A116885: Integers k such that 0<|k^5-m^2|<= k for some integer m.

The programs for A116885, there is no canonical definition to state claims against.
-/

/-! ## A116885.P6674652151976738815

`∏{e}[3^n, A179407(#)]`
-/

namespace A116885.P6674652151976738815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A179407 (Nat.factorization (f1 n) p)

end

end A116885.P6674652151976738815

/-!
# A116886: Primes p that remain prime through at least 2 iterations of the function f(p) = p^2 + 4.

The programs for A116886, there is no canonical definition to state claims against.
-/

/-! ## A116886.P531647552505799703

`floor(sqrt(A165218(n+1)))`
-/

namespace A116886.P531647552505799703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A165218 (n + 1))

end

end A116886.P531647552505799703

/-! ## A116886.P12558752704817591895

`A000007(n+1)+sqrt(xor(4, A165218(n+1)))`
-/

namespace A116886.P12558752704817591895
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + Real.sqrt (Int.xor 4 (A165218 (n + 1)) : ℝ)

end

end A116886.P12558752704817591895

/-! ## A116886.P7607312442304561308

`A122840(2*n+1)+sqrt(xor(4, A165218(n+1)))`
-/

namespace A116886.P7607312442304561308
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A122840 (2 * n + 1) : ℝ) + Real.sqrt (Int.xor 4 (A165218 (n + 1)) : ℝ)

end

end A116886.P7607312442304561308

/-! ## A116886.P18378711365366114363

`A000027(sqrt(A165218(n+1)-4))`
-/

namespace A116886.P18378711365366114363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A165218 (n + 1) - 4 : ℝ))).toNat

end

end A116886.P18378711365366114363

/-! ## A116886.P2776625333693763472

`A000027(sqrt(xor(4, A165218(n+1))))`
-/

namespace A116886.P2776625333693763472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (Int.xor 4 (A165218 (n + 1)) : ℝ))).toNat

end

end A116886.P2776625333693763472

/-! ## A116886.P8242240146897941556

`A006530(sqrt(A165218(n+1)-4))`
-/

namespace A116886.P8242240146897941556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A165218 (n + 1) - 4 : ℝ))).toNat

end

end A116886.P8242240146897941556

/-! ## A116886.P3092559924336063636

`A020639(sqrt(A165218(n+1)-4))`
-/

namespace A116886.P3092559924336063636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (A165218 (n + 1) - 4 : ℝ))).toNat

end

end A116886.P3092559924336063636

/-! ## A116886.P12987324786882948647

`A006530(sqrt(xor(4, A165218(n+1))))`
-/

namespace A116886.P12987324786882948647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (Int.xor 4 (A165218 (n + 1)) : ℝ))).toNat

end

end A116886.P12987324786882948647

/-! ## A116886.P8901031370919937325

`A020639(sqrt(xor(4, A165218(n+1))))`
-/

namespace A116886.P8901031370919937325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (Int.xor 4 (A165218 (n + 1)) : ℝ))).toNat

end

end A116886.P8901031370919937325

/-!
# A116887: Primes p that remain prime through at least 3 iterations of function f(p)=p^2+4.

The programs for A116887, there is no canonical definition to state claims against.
-/

/-! ## A116887.P2582331875883025115

`floor(sqrt(A231120(n+1)))`
-/

namespace A116887.P2582331875883025115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A231120 (n + 1))

end

end A116887.P2582331875883025115

/-! ## A116887.P7964451081047748719

`A000027(round(sqrt(A231120(n+1))))`
-/

namespace A116887.P7964451081047748719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (A231120 (n + 1) : ℝ))).toNat

end

end A116887.P7964451081047748719

/-!
# A116888: Primes p that remain prime through 4 iterations of the function f(p) = p^2 + 4.

The programs for A116888, there is no canonical definition to state claims against.
-/

/-! ## A116888.P7519914099775385369

`floor(sqrt(A231235(n+1)))`
-/

namespace A116888.P7519914099775385369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A231235 (n + 1))

end

end A116888.P7519914099775385369

/-! ## A116888.P1394533553134317989

`round(sqrt(A231235(n+1)-A000007(n)))`
-/

namespace A116888.P1394533553134317989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A231235 (n + 1) - A000007 n : ℝ))

end

end A116888.P1394533553134317989

/-! ## A116888.P9005594928882227559

`round(sqrt(A231235(n+1)-A000035(n)))`
-/

namespace A116888.P9005594928882227559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A231235 (n + 1) - A000035 n : ℝ))

end

end A116888.P9005594928882227559

/-! ## A116888.P16779814315006055853

`round(sqrt(A231235(n+1)-A000027(n+1)))`
-/

namespace A116888.P16779814315006055853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A231235 (n + 1) - A000027 (n + 1) : ℝ))

end

end A116888.P16779814315006055853

/-! ## A116888.P5993389227672898896

`round(sqrt(A231235(n+1)-A040169(n+1)))`
-/

namespace A116888.P5993389227672898896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A231235 (n + 1) - A040169 (n + 1) : ℝ))

end

end A116888.P5993389227672898896

/-!
# A116891: a(n) = gcd(n! + 1, n^n + 1).

The programs for A116891, there is no canonical definition to state claims against.
-/

/-! ## A116891.P16591904859575468723

`gcd(A000142(n+1)+1, A162484(n+1))`
-/

namespace A116891.P16591904859575468723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 1) + 1) (A162484 (n + 1))

end

end A116891.P16591904859575468723

/-! ## A116891.P15438814707811773431

`gcd(A052650(n)-1, A052649(n))`
-/

namespace A116891.P15438814707811773431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052650 n - 1) (A052649 n)

end

end A116891.P15438814707811773431

/-! ## A116891.P6076459182531683896

`gcd(A072280(n+1), A367121(n))`
-/

namespace A116891.P6076459182531683896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072280 (n + 1)) (A367121 n)

end

end A116891.P6076459182531683896

/-! ## A116891.P14063449691001275962

`gcd(A052022(n+2), A077322(n+1))`
-/

namespace A116891.P14063449691001275962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052022 (n + 2)) (A077322 (n + 1))

end

end A116891.P14063449691001275962

/-! ## A116891.P6574773218075258053

`gcd(∑[A214781(2*(n+2))], A034694(n+1))`
-/

namespace A116891.P6574773218075258053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214781 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A034694 (n + 1))

end

end A116891.P6574773218075258053

/-!
# A116892: Values of gcd(k!+1, k^k+1), when greater than 1.

The programs for A116892, there is no canonical definition to state claims against.
-/

/-! ## A116892.P6983710503224913166

`p?[A116891(n+1)]`
-/

namespace A116892.P6983710503224913166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A116892.P6983710503224913166

/-! ## A116892.P9005021417319576300

`A116891(A116893(n+1))`
-/

namespace A116892.P9005021417319576300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (A116893 (n + 1)).toNat

end

end A116892.P9005021417319576300

/-! ## A116892.P5862306782216365285

`filter[A116891(n+1), A010051(#)]`
-/

namespace A116892.P5862306782216365285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A116892.P5862306782216365285

/-! ## A116892.P8271307166345423566

`filter[A116891(n+1), A066829(#)]`
-/

namespace A116892.P8271307166345423566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A116892.P8271307166345423566

/-! ## A116892.P7993270778978218676

`filter[A116891(n+1), A069513(#)]`
-/

namespace A116892.P7993270778978218676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A116892.P7993270778978218676

/-! ## A116892.P10215275801619575742

`filter[A116891(n+1), A014306(#)]`
-/

namespace A116892.P10215275801619575742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A116892.P10215275801619575742

/-! ## A116892.P10054729209483528246

`filter[A116891(n+1), A049240(#)]`
-/

namespace A116892.P10054729209483528246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A116892.P10054729209483528246

/-! ## A116892.P5797609039279500578

`filter[A116891(n+1), A099104(#)]`
-/

namespace A116892.P5797609039279500578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A116892.P5797609039279500578

/-! ## A116892.P1984889270217272743

`filter[A116891(n+1), A101040(#)]`
-/

namespace A116892.P1984889270217272743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A116892.P1984889270217272743

/-! ## A116892.P2699756488913221904

`filter[A116891(n+1), A211487(#)]`
-/

namespace A116892.P2699756488913221904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A116892.P2699756488913221904

/-! ## A116892.P15184663824428792895

`filter[A116891(n+1), A252233(#)]`
-/

namespace A116892.P15184663824428792895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A116892.P15184663824428792895

/-! ## A116892.P14170077028872880963

`filter[A116891(n+1), A130853(#)]`
-/

namespace A116892.P14170077028872880963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130853 (f1 j).toNat = 1) n)

end

end A116892.P14170077028872880963

/-! ## A116892.P9906497684475744412

`filter[A116891(n+1), A123110(#)]`
-/

namespace A116892.P9906497684475744412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A116892.P9906497684475744412

/-! ## A116892.P3231373812401056030

`filter[A116891(n+1), A053867(#)]`
-/

namespace A116892.P3231373812401056030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A116892.P3231373812401056030

/-! ## A116892.P6378662197884690696

`A088732(A116893(n+1)%A094535(3*n))`
-/

namespace A116892.P6378662197884690696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 (Int.tmod (A116893 (n + 1)) (A094535 (3 * n))).toNat

end

end A116892.P6378662197884690696

/-! ## A116892.P9914963608858109768

`A034694(A116893(n+1)*A160338(n+1))`
-/

namespace A116892.P9914963608858109768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A116893 (n + 1) * A160338 (n + 1)).toNat

end

end A116892.P9914963608858109768

/-! ## A116892.P6192705864939249590

`A034694(lcm(A116893(n+1), A160338(n+1)))`
-/

namespace A116892.P6192705864939249590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.lcm (A116893 (n + 1)) (A160338 (n + 1)))

end

end A116892.P6192705864939249590

/-! ## A116892.P4219111888994226691

`A034694(A000034(n)*A116893(n+1))`
-/

namespace A116892.P4219111888994226691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A000034 n * A116893 (n + 1)).toNat

end

end A116892.P4219111888994226691

/-! ## A116892.P3729236181936755237

`A034694(lcm(A000034(n), A116893(n+1)))`
-/

namespace A116892.P3729236181936755237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.lcm (A000034 n) (A116893 (n + 1)))

end

end A116892.P3729236181936755237

/-! ## A116892.P12158936669289080318

`A000015(2*A116893(n+1))`
-/

namespace A116892.P12158936669289080318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (2 * A116893 (n + 1)).toNat

end

end A116892.P12158936669289080318

/-!
# A116893: Numbers k such that gcd(k!+1, k^k+1) > 1.

The programs for A116893, there is no canonical definition to state claims against.
-/

/-! ## A116893.P10312595968815381387

`record[A000265(n+1)%A116891(n+1)]`
-/

namespace A116893.P10312595968815381387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A116891 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116893.P10312595968815381387

/-! ## A116893.P4275361367614238084

`A278539(xor(3, A116892(n+1)))`
-/

namespace A116893.P4275361367614238084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (Int.xor 3 (A116892 (n + 1))).toNat

end

end A116893.P4275361367614238084

/-! ## A116893.P15554920898438105001

`A116892(n+1)-A278539(A116892(n+1)-1)`
-/

namespace A116893.P15554920898438105001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116892 (n + 1) - A278539 (A116892 (n + 1) - 1).toNat

end

end A116893.P15554920898438105001

/-! ## A116893.P1103355853590796206

`A260739(A116892(n+1)-1)`
-/

namespace A116893.P1103355853590796206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (A116892 (n + 1) - 1).toNat

end

end A116893.P1103355853590796206

/-! ## A116893.P2794818539945906212

`A260739(xor(1, A116892(n+1)))`
-/

namespace A116893.P2794818539945906212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (Int.xor 1 (A116892 (n + 1))).toNat

end

end A116893.P2794818539945906212

/-! ## A116893.P11367535711048989205

`A004525(A116892(n+1))`
-/

namespace A116893.P11367535711048989205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A116892 (n + 1)).toNat

end

end A116893.P11367535711048989205

/-! ## A116893.P7639275391109866849

`A023022(record[A116892(n+1)])`
-/

namespace A116893.P7639275391109866849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116893.P7639275391109866849

/-! ## A116893.P6500967573080381944

`A124446(record[A116892(n+1)])`
-/

namespace A116893.P6500967573080381944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124446 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A116893.P6500967573080381944

/-! ## A116893.P16881256802106220214

`A026741(A116892(n+1)-1)`
-/

namespace A116893.P16881256802106220214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A116892 (n + 1) - 1).toNat

end

end A116893.P16881256802106220214

/-! ## A116893.P7819337853398034409

`A028234(A116892(n+1)-1)`
-/

namespace A116893.P7819337853398034409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A116892 (n + 1) - 1).toNat

end

end A116893.P7819337853398034409

/-! ## A116893.P3710832301597188549

`A110654(A116892(n+1)-1)`
-/

namespace A116893.P3710832301597188549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A116892 (n + 1) - 1).toNat

end

end A116893.P3710832301597188549

/-! ## A116893.P2315833916116890026

`A008619(A116892(n+1)-2)`
-/

namespace A116893.P2315833916116890026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A116892 (n + 1) - 2).toNat

end

end A116893.P2315833916116890026

/-! ## A116893.P5266842394366643146

`A008619(xor(2, A116892(n+1)))`
-/

namespace A116893.P5266842394366643146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.xor 2 (A116892 (n + 1))).toNat

end

end A116893.P5266842394366643146

/-! ## A116893.P15361499930876582665

`A115384(record[A116892(n+1)])-1`
-/

namespace A116893.P15361499930876582665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A116893.P15361499930876582665

/-! ## A116893.P16873533313586003065

`A115384(A116892(n+1)+2)-2`
-/

namespace A116893.P16873533313586003065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A116892 (n + 1) + 2).toNat - 2

end

end A116893.P16873533313586003065

/-!
# A116895: Least prime factor of n^n-1.

The programs for A116895, there is no canonical definition to state claims against.
-/

/-! ## A116895.P14743132531599346492

`A112046(A156271(n+1)+A156261(n+4))`
-/

namespace A116895.P14743132531599346492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A156271 (n + 1) + A156261 (n + 4)).toNat

end

end A116895.P14743132531599346492

/-! ## A116895.P7998378714896719343

`A112046(A112046(A276086(n))+A005408(n))`
-/

namespace A116895.P7998378714896719343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A112046 (A276086 n).toNat + A005408 n).toNat

end

end A116895.P7998378714896719343

/-! ## A116895.P13354976008717440339

`A112046(A085736(2*n+1)+2)`
-/

namespace A116895.P13354976008717440339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A085736 (2 * n + 1) + 2).toNat

end

end A116895.P13354976008717440339

/-! ## A116895.P11872721290566854278

`A112046(A085736(C(n+1, n)+n+2))`
-/

namespace A116895.P11872721290566854278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112046 (A085736 (Nat.choose (n + 1) n + (n + 2))).toNat

end

end A116895.P11872721290566854278

/-! ## A116895.P15009514534675792400

`A007978((n+2)*A166304(n))`
-/

namespace A116895.P15009514534675792400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 ((n + 2 : ℤ) * A166304 n).toNat

end

end A116895.P15009514534675792400

/-!
# A116896: Numbers k such that k! + k!! + 1 is prime, where k!! denotes double factorial (A006882).

The programs for A116896, there is no canonical definition to state claims against.
-/

/-! ## A116896.P5795224586034016260

`A004526(A385762(n)+n)`
-/

namespace A116896.P5795224586034016260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A385762 n + (n : ℤ)).toNat

end

end A116896.P5795224586034016260

/-! ## A116896.P7515826109688752471

`A340764(A305144(n)+n)`
-/

namespace A116896.P7515826109688752471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A305144 n + (n : ℤ)).toNat

end

end A116896.P7515826109688752471

/-!
# A116897: Numbers k such that k! - k!! + 1 is prime, where k!! denotes double factorial (A006882).

The programs for A116897, there is no canonical definition to state claims against.
-/

/-! ## A116897.P6873754512059591623

`A033732(2*n+1)+A033726(A033689(n+1))`
-/

namespace A116897.P6873754512059591623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033732 (2 * n + 1) + A033726 (A033689 (n + 1)).toNat

end

end A116897.P6873754512059591623

