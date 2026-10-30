import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
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
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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
# A360703: Starting from 1, successively take the smallest "Choix de Bruxelles" with factor 3 which is not already in the sequence.

The programs for A360703, there is no canonical definition to state claims against.
-/

/-! ## A360703.P10295940338044086484

`A161957(A289463(n))`
-/

namespace A360703.P10295940338044086484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161957 (A289463 n).toNat

end

end A360703.P10295940338044086484

/-! ## A360703.P8662923348714684422

`A161929(A052548(n))-4`
-/

namespace A360703.P8662923348714684422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161929 (A052548 n).toNat - 4

end

end A360703.P8662923348714684422

/-!
# A360704: Expansion of Sum_{k>=0} (x * (1 + 2^k * x))^k.

The programs for A360704, the canonical program `A360704.P4414727502548017384` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360704 has offset 0).

The definition of A360704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360704.P4414727502548017384

`∑{#}[floor(n/2), 2^(#*(n-#))*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360704

/-- `∑{#}[floor(n/2), 2^(#*(n-#))*C(n-#, #)]` -/
def P4414727502548017384.Spec : Prop :=
  ∀ n, P4414727502548017384.a n = (A360704 n : ℚ)

end A360704

/-! ## A360704.P7215810595459130299

`or(1, A202691((n+1)²))`
-/

namespace A360704.P7215810595459130299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A202691 ((n + 1) ^ 2))

end

end A360704.P7215810595459130299

namespace A360704

/-- `or(1, A202691((n+1)²))` -/
def P7215810595459130299.Spec : Prop :=
  ∀ n, P7215810595459130299.a n = A360704 n

end A360704

/-!
# A360705: Expansion of Sum_{k>=0} (x * (1 + (-1)^k * x))^k.

The programs for A360705, the canonical program `A360705.P15837955753182579723` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360705 has offset 0).

The definition of A360705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360705.P15837955753182579723

`ogf((1+x-2x^2+x^3-2x^4+x^5+x^6)/(1-2x^2-x^4-2x^6+x^8))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360705

/-- `ogf((1+x-2x^2+x^3-2x^4+x^5+x^6)/(1-2x^2-x^4-2x^6+x^8))` -/
def P15837955753182579723.Spec : Prop :=
  ∀ n, P15837955753182579723.a n = A360705 n

theorem P15837955753182579723.correct : P15837955753182579723.Spec := by
  intro n
  simp only [A360705]

end A360705

/-! ## A360705.P12792367137416822016

`∑{#}[floor(n/2), (-1)^(#*(n-#))*C(n-#, #)]`
-/

namespace A360705.P12792367137416822016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1 : ℚ) ^ ((k : ℤ) * ((n : ℤ) - (k : ℤ)) : ℤ) * (Nat.choose ((n : ℤ) - (k : ℤ)).toNat k : ℚ)

end

end A360705.P12792367137416822016

namespace A360705

/-- `∑{#}[floor(n/2), (-1)^(#*(n-#))*C(n-#, #)]` -/
def P12792367137416822016.Spec : Prop :=
  ∀ n, P12792367137416822016.a n = (A360705 n : ℚ)

end A360705

/-! ## A360705.P13607079470250682271

`A005252(n)-A106511(n+2)`
-/

namespace A360705.P13607079470250682271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 n - A106511 (n + 2)

end

end A360705.P13607079470250682271

namespace A360705

/-- `A005252(n)-A106511(n+2)` -/
def P13607079470250682271.Spec : Prop :=
  ∀ n, P13607079470250682271.a n = A360705 n

end A360705

/-! ## A360705.P12894264660872796832

`∑[abs(A106511(n))]-A106511(n+2)`
-/

namespace A360705.P12894264660872796832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106511 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A106511 (n + 2)

end

end A360705.P12894264660872796832

namespace A360705

/-- `∑[abs(A106511(n))]-A106511(n+2)` -/
def P12894264660872796832.Spec : Prop :=
  ∀ n, P12894264660872796832.a n = A360705 n

end A360705

/-! ## A360705.P8996687899300928416

`(A260192(2*n)+A000045(n+1))/2-A106511(n+2)`
-/

namespace A360705.P8996687899300928416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260192 (2 * n) + A000045 (n + 1) : ℚ) / 2 - (A106511 (n + 2) : ℚ)

end

end A360705.P8996687899300928416

namespace A360705

/-- `(A260192(2*n)+A000045(n+1))/2-A106511(n+2)` -/
def P8996687899300928416.Spec : Prop :=
  ∀ n, P8996687899300928416.a n = (A360705 n : ℚ)

end A360705

/-! ## A360705.P17270719014242516424

`A201947(A266304(n))`
-/

namespace A360705.P17270719014242516424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201947 (A266304 n).toNat

end

end A360705.P17270719014242516424

namespace A360705

/-- `A201947(A266304(n))` -/
def P17270719014242516424.Spec : Prop :=
  ∀ n, P17270719014242516424.a n = A360705 n

end A360705

/-!
# A360708: Expansion of Sum_{k>=0} (x^2 / (1 - k*x))^k.

The programs for A360708, there is no canonical definition to state claims against.
-/

/-! ## A360708.P4903184150750684961

`A161746(n+1)-A392609(n+1)`
-/

namespace A360708.P4903184150750684961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161746 (n + 1) - A392609 (n + 1)

end

end A360708.P4903184150750684961

/-! ## A360708.P11930090182385419676

`A280951(A173534(n+1))-A392609(n+1)`
-/

namespace A360708.P11930090182385419676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 (A173534 (n + 1)).toNat - A392609 (n + 1)

end

end A360708.P11930090182385419676

/-! ## A360708.P15469822351884358856

`A279012(A320788(n+4))-A392609(A032559(n+1))`
-/

namespace A360708.P15469822351884358856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279012 (A320788 (n + 4)).toNat - A392609 (A032559 (n + 1)).toNat

end

end A360708.P15469822351884358856

/-!
# A360709: Expansion of Sum_{k>=0} (x^3 / (1 - k*x))^k.

The programs for A360709, there is no canonical definition to state claims against.
-/

/-! ## A360709.P5171600276214985074

`A165190(A053562(n+1)+A040006(n))`
-/

namespace A360709.P5171600276214985074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A053562 (n + 1) + A040006 n).toNat

end

end A360709.P5171600276214985074

/-! ## A360709.P16683861104783599994

`A165190(A072774(n+4)+A053562(n+1))`
-/

namespace A360709.P16683861104783599994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A072774 (n + 4) + A053562 (n + 1)).toNat

end

end A360709.P16683861104783599994

/-! ## A360709.P851306799680807821

`A259361(A327075(n)+gcd(2, ∑{e}[n+1, #]))`
-/

namespace A360709.P851306799680807821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A327075 n + (Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)).toNat

end

end A360709.P851306799680807821

/-!
# A360710: Multiplicative with a(p^k) = 1 or -1 so as to minimize abs(Sum_{m = 1..p^k} a(m)); in case of a tie, a(p^k) = a(p^k-1).

The programs for A360710, there is no canonical definition to state claims against.
-/

/-! ## A360710.P9220960043095864668

`Δ[A360711(n)]`
-/

namespace A360710.P9220960043095864668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360710.P9220960043095864668

/-! ## A360710.P4563945879820377520

`A360711(n+1)-A360711(n)`
-/

namespace A360710.P4563945879820377520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360711 (n + 1) - A360711 n

end

end A360710.P4563945879820377520

/-! ## A360710.P1950347978747795833

`A179010(2*(n+1))-A011626(A062570(2*(n+1)))`
-/

namespace A360710.P1950347978747795833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179010 (2 * (n + 1)) - A011626 (A062570 (2 * (n + 1))).toNat

end

end A360710.P1950347978747795833

/-! ## A360710.P15455385892130789898

`A011626(A179010(2*(n+2))+A062570(n+1))`
-/

namespace A360710.P15455385892130789898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011626 (A179010 (2 * (n + 2)) + A062570 (n + 1)).toNat

end

end A360710.P15455385892130789898

/-! ## A360710.P11171167843987808234

`A011626(A062570(n+1))^A127581(n)`
-/

namespace A360710.P11171167843987808234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011626 (A062570 (n + 1)).toNat : ℚ) ^ (A127581 n : ℤ)

end

end A360710.P11171167843987808234

/-!
# A360711: Partial sums of A360710.

The programs for A360711, there is no canonical definition to state claims against.
-/

/-! ## A360711.P7078840783310170679

`∑[A360710(abs(1-n)+1)]+1`
-/

namespace A360711.P7078840783310170679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360710 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A360711.P7078840783310170679

/-!
# A360712: Expansion of Sum_{k>0} (k * x * (1 + k*x^k))^k.

The programs for A360712, the canonical program `A360712.P14964881425418714543` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360712 has offset 1).

The definition of A360712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360712.P14964881425418714543

`∑{d}[n+1, #^(#+(n+1)/#-1)*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360712

/-- `∑{d}[n+1, #^(#+(n+1)/#-1)*C(#, (n+1)/#-1)]` -/
def P14964881425418714543.Spec : Prop :=
  ∀ n, P14964881425418714543.a n = (A360712 (n + 1) : ℝ)

end A360712

/-!
# A360714: Number of sets of nonempty integer partitions with a total of n parts and total sum of 2n.

The programs for A360714, there is no canonical definition to state claims against.
-/

/-! ## A360714.P10325657398344468533

`A360742(C(2*n+1, 2)+n)`
-/

namespace A360714.P10325657398344468533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360742 (Nat.choose (2 * n + 1) 2 + n)

end

end A360714.P10325657398344468533

/-! ## A360714.P5137593707795998549

`A360742(∑[4*n])`
-/

namespace A360714.P5137593707795998549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360742 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360714.P5137593707795998549

/-! ## A360714.P6901428633065726375

`A055679(A038665(n))-n`
-/

namespace A360714.P6901428633065726375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A038665 n).toNat - (n : ℤ)

end

end A360714.P6901428633065726375

/-!
# A360715: Number of self-avoiding paths with nodes chosen among n given points on a circle; one-node paths are allowed.

The programs for A360715, the canonical program `A360715.P17184911805466368077` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360715 has offset 1).

The definition of A360715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360715.P4943978543517962834

`ogf((1-5x+7x^2)/(1-8x+22x^2-24x^3+9x^4))`
-/

namespace A360715.P4943978543517962834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 7] [1, -8, 22, -24, 9] n

end

end A360715.P4943978543517962834

namespace A360715

/-- `ogf((1-5x+7x^2)/(1-8x+22x^2-24x^3+9x^4))` -/
def P4943978543517962834.Spec : Prop :=
  ∀ n, P4943978543517962834.a n = A360715 (n + 1)

end A360715

/-! ## A360715.P17184911805466368077

`(n+1)/4*(3^n+3)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360715

/-- `(n+1)/4*(3^n+3)` -/
def P17184911805466368077.Spec : Prop :=
  ∀ n, P17184911805466368077.a n = (A360715 (n + 1) : ℚ)

end A360715

/-! ## A360715.P675271853767081752

`n+1+∑{#}[n-1, C(n+1, #+2)*A001792(#)]`
-/

namespace A360715.P675271853767081752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (n + 1) (k + 2) : ℤ) * A001792 k

end

end A360715.P675271853767081752

namespace A360715

/-- `n+1+∑{#}[n-1, C(n+1, #+2)*A001792(#)]` -/
def P675271853767081752.Spec : Prop :=
  ∀ n, P675271853767081752.a n = A360715 (n + 1)

end A360715

/-! ## A360715.P11084875912733692618

`∑[∑[3*a(n-1)*ratio[n+1]]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A360715.P11084875912733692618
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  3 * (f2 (n - 1) * ((f3 (n + 1) : ℚ) / (f3 n : ℚ)))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360715.P11084875912733692618

namespace A360715

/-- `∑[∑[3*a(n-1)*ratio[n+1]]]` -/
def P11084875912733692618.Spec : Prop :=
  ∀ n, P11084875912733692618.a n = (A360715 (n + 1) : ℚ)

end A360715

/-! ## A360715.P11794144919915826814

`∑[∑[(3/(n+1)+3)*a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A360715.P11794144919915826814
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 4] fun n f2 =>
  (3 / (n + 1 : ℚ) + 3) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360715.P11794144919915826814

namespace A360715

/-- `∑[∑[(3/(n+1)+3)*a(n-1)]]` -/
def P11794144919915826814.Spec : Prop :=
  ∀ n, P11794144919915826814.a n = (A360715 (n + 1) : ℚ)

end A360715

/-! ## A360715.P17860944936235086601

`∑[A392266(n)+1]`
-/

namespace A360715.P17860944936235086601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392266 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360715.P17860944936235086601

namespace A360715

/-- `∑[A392266(n)+1]` -/
def P17860944936235086601.Spec : Prop :=
  ∀ n, P17860944936235086601.a n = A360715 (n + 1)

end A360715

/-! ## A360715.P835352042600386534

`∑[ceil(A086972(n)/2)]`
-/

namespace A360715.P835352042600386534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086972 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360715.P835352042600386534

namespace A360715

/-- `∑[ceil(A086972(n)/2)]` -/
def P835352042600386534.Spec : Prop :=
  ∀ n, P835352042600386534.a n = A360715 (n + 1)

end A360715

/-! ## A360715.P18085336041907171566

`(n+1)*A115098(n)/2`
-/

namespace A360715.P18085336041907171566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A115098 n : ℚ) / 2

end

end A360715.P18085336041907171566

namespace A360715

/-- `(n+1)*A115098(n)/2` -/
def P18085336041907171566.Spec : Prop :=
  ∀ n, P18085336041907171566.a n = (A360715 (n + 1) : ℚ)

end A360715

/-! ## A360715.P1575440100706637001

`∑[∑[A199923(n)]+1]/2`
-/

namespace A360715.P1575440100706637001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199923 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A360715.P1575440100706637001

namespace A360715

/-- `∑[∑[A199923(n)]+1]/2` -/
def P1575440100706637001.Spec : Prop :=
  ∀ n, P1575440100706637001.a n = (A360715 (n + 1) : ℚ)

end A360715

/-! ## A360715.P8106123097701903316

`(A082133(n+1)+n+1)/2`
-/

namespace A360715.P8106123097701903316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082133 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A360715.P8106123097701903316

namespace A360715

/-- `(A082133(n+1)+n+1)/2` -/
def P8106123097701903316.Spec : Prop :=
  ∀ n, P8106123097701903316.a n = (A360715 (n + 1) : ℚ)

end A360715

/-! ## A360715.P2566694867646783836

`A372874(n+1)-A392266(n)`
-/

namespace A360715.P2566694867646783836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372874 (n + 1) - A392266 n

end

end A360715.P2566694867646783836

namespace A360715

/-- `A372874(n+1)-A392266(n)` -/
def P2566694867646783836.Spec : Prop :=
  ∀ n, P2566694867646783836.a n = A360715 (n + 1)

end A360715

/-!
# A360716: Number of unordered pairs of self-avoiding paths whose sets of nodes are disjoint subsets of a set of n points on a circle; one-node paths are not allowed.

The programs for A360716, the canonical program `A360716.P8473662474076605579` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360716 has offset 1).

The definition of A360716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360716.P8473662474076605579

`(n+1)*n*(5^(n-1)-2*3^(n-1)+1)/32`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360716

/-- `(n+1)*n*(5^(n-1)-2*3^(n-1)+1)/32` -/
def P8473662474076605579.Spec : Prop :=
  ∀ n, P8473662474076605579.a n = (A360716 (n + 1) : ℚ)

end A360716

/-! ## A360716.P17274471343880935075

`A337771(A028377(n))`
-/

namespace A360716.P17274471343880935075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337771 (A028377 n).toNat

end

end A360716.P17274471343880935075

namespace A360716

/-- `A337771(A028377(n))` -/
def P17274471343880935075.Spec : Prop :=
  ∀ n, P17274471343880935075.a n = A360716 (n + 1)

end A360716

/-!
# A360717: Number of unordered pairs of self-avoiding paths whose sets of nodes are disjoint subsets of a set of n points on a circle; one-node paths are allowed.

The programs for A360717, the canonical program `A360717.P14716542851634245633` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360717 has offset 1).

The definition of A360717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360717.P14716542851634245633

`(2*3^n+5^(n-1)+9)*n*(n+1)/32`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360717

/-- `(2*3^n+5^(n-1)+9)*n*(n+1)/32` -/
def P14716542851634245633.Spec : Prop :=
  ∀ n, P14716542851634245633.a n = (A360717 (n + 1) : ℚ)

end A360717

/-! ## A360717.P13859623982739648933

`A002265(A046090(n)+A005425(n))`
-/

namespace A360717.P13859623982739648933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A046090 n + A005425 n).toNat

end

end A360717.P13859623982739648933

namespace A360717

/-- `A002265(A046090(n)+A005425(n))` -/
def P13859623982739648933.Spec : Prop :=
  ∀ n, P13859623982739648933.a n = A360717 (n + 1)

end A360717

/-!
# A360718: Number of idempotent Boolean relation matrices on [n] that have no proper power primitive.

The programs for A360718, there is no canonical definition to state claims against.
-/

/-! ## A360718.P1396633959899862003

`A159843(A062970(n))-A112437(3*n+1)`
-/

namespace A360718.P1396633959899862003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (A062970 n).toNat - A112437 (3 * n + 1)

end

end A360718.P1396633959899862003

/-!
# A360719: a(n) is the largest k < A126706(n) such that rad(k) = rad(A126706(n)), where rad(n) = A007947(n).

The programs for A360719, there is no canonical definition to state claims against.
-/

/-! ## A360719.P11157486423585541084

`filter[A362041(n), A143731(#)]`
-/

namespace A360719.P11157486423585541084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A360719.P11157486423585541084

/-! ## A360719.P17811370387073603216

`A285328(A126706(n+1))`
-/

namespace A360719.P17811370387073603216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (A126706 (n + 1)).toNat

end

end A360719.P17811370387073603216

/-! ## A360719.P17781381399631352719

`filter[A285328(n+1), A143731(#)]`
-/

namespace A360719.P17781381399631352719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A360719.P17781381399631352719

/-! ## A360719.P12882890179101853834

`A285328(eq[1, A355447(n+1)]+1)`
-/

namespace A360719.P12882890179101853834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A360719.P12882890179101853834

/-! ## A360719.P14217094666374098003

`A285328(lt[1, A158210(n+1)]+1)`
-/

namespace A360719.P14217094666374098003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A360719.P14217094666374098003

/-! ## A360719.P12611356306622546759

`A285328(lt[1, A264857(n+1)]+1)`
-/

namespace A360719.P12611356306622546759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A360719.P12611356306622546759

/-! ## A360719.P5763423250787151694

`A285328(lt[1, A304779(n+1)]+1)`
-/

namespace A360719.P5763423250787151694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A360719.P5763423250787151694

/-! ## A360719.P5783096127792967365

`A285328(∩[A013929(n+1), A361102(n+1)])`
-/

namespace A360719.P5783096127792967365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A360719.P5783096127792967365

/-! ## A360719.P9231506867086173727

`A285328(∪[A059404(n+1), A067341(n+1)])`
-/

namespace A360719.P9231506867086173727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360719.P9231506867086173727

/-! ## A360719.P3140286209882680878

`A285328(eq[A008683(n+1), A069513(n+1)]+1)`
-/

namespace A360719.P3140286209882680878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285328 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A360719.P3140286209882680878

/-!
# A360720: a(n) is the sum of unitary divisors of n that are powerful (A001694).

The programs for A360720, the canonical program `A360720.P1092030022091777669` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360720 has offset 1).

The definition of A360720 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360720.P5511639488127668512

`A034448(A057521(n+1))`
-/

namespace A360720.P5511639488127668512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A057521 (n + 1)).toNat

end

end A360720.P5511639488127668512

namespace A360720

/-- `A034448(A057521(n+1))` -/
def P5511639488127668512.Spec : Prop :=
  ∀ n, P5511639488127668512.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P1092030022091777669

`A034448(n+1)/A092261(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A360720

/-- `A034448(n+1)/A092261(n+1)` -/
def P1092030022091777669.Spec : Prop :=
  ∀ n, P1092030022091777669.a n = (A360720 (n + 1) : ℚ)

end A360720

/-! ## A360720.P8655183241879538519

`A034448(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A360720.P8655183241879538519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A360720.P8655183241879538519

namespace A360720

/-- `A034448(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))` -/
def P8655183241879538519.Spec : Prop :=
  ∀ n, P8655183241879538519.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P15944030980235004409

`A034448(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A360720.P15944030980235004409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A360720.P15944030980235004409

namespace A360720

/-- `A034448(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P15944030980235004409.Spec : Prop :=
  ∀ n, P15944030980235004409.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P16968294037044475756

`A034448((n+1)/∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A360720.P16968294037044475756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)))).toNat

end

end A360720.P16968294037044475756

namespace A360720

/-- `A034448((n+1)/∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P16968294037044475756.Spec : Prop :=
  ∀ n, P16968294037044475756.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P17252894156657153354

`A034448(∑{d}[n+1, A349379(#)])`
-/

namespace A360720.P17252894156657153354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (∑ d ∈ Nat.divisors (f1 n), A349379 d).toNat

end

end A360720.P17252894156657153354

namespace A360720

/-- `A034448(∑{d}[n+1, A349379(#)])` -/
def P17252894156657153354.Spec : Prop :=
  ∀ n, P17252894156657153354.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P13143007421441948961

`A034448((n+1)/A055231(n+1))`
-/

namespace A360720.P13143007421441948961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A360720.P13143007421441948961

namespace A360720

/-- `A034448((n+1)/A055231(n+1))` -/
def P13143007421441948961.Spec : Prop :=
  ∀ n, P13143007421441948961.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P2067581990834218718

`A369718((n+1)/A055231(n+1))`
-/

namespace A360720.P2067581990834218718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat

end

end A360720.P2067581990834218718

namespace A360720

/-- `A369718((n+1)/A055231(n+1))` -/
def P2067581990834218718.Spec : Prop :=
  ∀ n, P2067581990834218718.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P444772831587351838

`A399733(n+1)/A055231(n+1)`
-/

namespace A360720.P444772831587351838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399733 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A360720.P444772831587351838

namespace A360720

/-- `A399733(n+1)/A055231(n+1)` -/
def P444772831587351838.Spec : Prop :=
  ∀ n, P444772831587351838.a n = (A360720 (n + 1) : ℚ)

end A360720

/-! ## A360720.P15399068538728007802

`A369718(n+1)/A091306(n+1)`
-/

namespace A360720.P15399068538728007802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369718 (n + 1) : ℚ) / (A091306 (n + 1) : ℚ)

end

end A360720.P15399068538728007802

namespace A360720

/-- `A369718(n+1)/A091306(n+1)` -/
def P15399068538728007802.Spec : Prop :=
  ∀ n, P15399068538728007802.a n = (A360720 (n + 1) : ℚ)

end A360720

/-! ## A360720.P3132549260795790607

`A191414(n+1)/A392089(n+1)`
-/

namespace A360720.P3132549260795790607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191414 (n + 1) : ℚ) / (A392089 (n + 1) : ℚ)

end

end A360720.P3132549260795790607

namespace A360720

/-- `A191414(n+1)/A392089(n+1)` -/
def P3132549260795790607.Spec : Prop :=
  ∀ n, P3132549260795790607.a n = (A360720 (n + 1) : ℚ)

end A360720

/-! ## A360720.P11010834311871760904

`A034448(gcd(n²+n, A183104(n+1)))`
-/

namespace A360720.P11010834311871760904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (Int.gcd (n ^ 2 + n : ℤ) (A183104 (n + 1)))

end

end A360720.P11010834311871760904

namespace A360720

/-- `A034448(gcd(n²+n, A183104(n+1)))` -/
def P11010834311871760904.Spec : Prop :=
  ∀ n, P11010834311871760904.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P12965586843305184036

`A348733(A057521(n+1))*A348735(n+1)`
-/

namespace A360720.P12965586843305184036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (A057521 (n + 1)).toNat * A348735 (n + 1)

end

end A360720.P12965586843305184036

namespace A360720

/-- `A348733(A057521(n+1))*A348735(n+1)` -/
def P12965586843305184036.Spec : Prop :=
  ∀ n, P12965586843305184036.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P4254440870776822477

`A192066(n+1)*A385047(n+1)/A092261(n+1)`
-/

namespace A360720.P4254440870776822477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192066 (n + 1) * A385047 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ)

end

end A360720.P4254440870776822477

namespace A360720

/-- `A192066(n+1)*A385047(n+1)/A092261(n+1)` -/
def P4254440870776822477.Spec : Prop :=
  ∀ n, P4254440870776822477.a n = (A360720 (n + 1) : ℚ)

end A360720

/-! ## A360720.P13867099070831324425

`A358346(n+1)/A092261(n+1)*A358347(n+1)`
-/

namespace A360720.P13867099070831324425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358346 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ) * (A358347 (n + 1) : ℚ)

end

end A360720.P13867099070831324425

namespace A360720

/-- `A358346(n+1)/A092261(n+1)*A358347(n+1)` -/
def P13867099070831324425.Spec : Prop :=
  ∀ n, P13867099070831324425.a n = (A360720 (n + 1) : ℚ)

end A360720

/-! ## A360720.P16276624895636384875

`A385045(n+1)/A092261(n+1)*A385046(n+1)`
-/

namespace A360720.P16276624895636384875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385045 (n + 1) : ℚ) / (A092261 (n + 1) : ℚ) * (A385046 (n + 1) : ℚ)

end

end A360720.P16276624895636384875

namespace A360720

/-- `A385045(n+1)/A092261(n+1)*A385046(n+1)` -/
def P16276624895636384875.Spec : Prop :=
  ∀ n, P16276624895636384875.a n = (A360720 (n + 1) : ℚ)

end A360720

/-! ## A360720.P15166259282551074595

`A305461(A057521(n+1)²)`
-/

namespace A360720.P15166259282551074595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305461 (A057521 (n + 1) ^ 2).toNat

end

end A360720.P15166259282551074595

namespace A360720

/-- `A305461(A057521(n+1)²)` -/
def P15166259282551074595.Spec : Prop :=
  ∀ n, P15166259282551074595.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P7764982377154416549

`A360162(A057521(n+1)²)`
-/

namespace A360720.P7764982377154416549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 (A057521 (n + 1) ^ 2).toNat

end

end A360720.P7764982377154416549

namespace A360720

/-- `A360162(A057521(n+1)²)` -/
def P7764982377154416549.Spec : Prop :=
  ∀ n, P7764982377154416549.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P6878067900628203282

`A365404(A057521(n+1)²)`
-/

namespace A360720.P6878067900628203282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365404 (A057521 (n + 1) ^ 2).toNat

end

end A360720.P6878067900628203282

namespace A360720

/-- `A365404(A057521(n+1)²)` -/
def P6878067900628203282.Spec : Prop :=
  ∀ n, P6878067900628203282.a n = A360720 (n + 1)

end A360720

/-! ## A360720.P12078610936495568417

`A360162((n+1)*A057521(n+1))`
-/

namespace A360720.P12078610936495568417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360162 ((n + 1 : ℤ) * A057521 (n + 1)).toNat

end

end A360720.P12078610936495568417

namespace A360720

/-- `A360162((n+1)*A057521(n+1))` -/
def P12078610936495568417.Spec : Prop :=
  ∀ n, P12078610936495568417.a n = A360720 (n + 1)

end A360720

/-!
# A360721: a(n) is the number of infinitary divisors of n that are powerful (A001694).

The programs for A360721, the canonical program `A360721.P14900398492844089108` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360721 has offset 1).

The definition of A360721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360721.P13592774456369076690

`∏{e}[(n+1)²*∏{p}[n+1, #], A066272(#)]`
-/

namespace A360721.P13592774456369076690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A066272 (Nat.factorization (f1 n) p)

end

end A360721.P13592774456369076690

namespace A360721

/-- `∏{e}[(n+1)²*∏{p}[n+1, #], A066272(#)]` -/
def P13592774456369076690.Spec : Prop :=
  ∀ n, P13592774456369076690.a n = A360721 (n + 1)

end A360721

/-! ## A360721.P14900398492844089108

`A095683((n+1)*A053165(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A360721

/-- `A095683((n+1)*A053165(n+1))` -/
def P14900398492844089108.Spec : Prop :=
  ∀ n, P14900398492844089108.a n = A360721 (n + 1)

theorem P14900398492844089108.correct : P14900398492844089108.Spec := by
  intro n
  simp only [A360721, Nat.add_sub_cancel]

end A360721

/-! ## A360721.P695554439985636399

`∏{e}[(A253885(n)+1)², A066272(#+1)]`
-/

namespace A360721.P695554439985636399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A066272 (Nat.factorization (f1 n).natAbs p + 1)

end

end A360721.P695554439985636399

namespace A360721

/-- `∏{e}[(A253885(n)+1)², A066272(#+1)]` -/
def P695554439985636399.Spec : Prop :=
  ∀ n, P695554439985636399.a n = A360721 (n + 1)

end A360721

/-! ## A360721.P1561571935290318864

`A286619(A368251(n+1)+A335462(n+1))`
-/

namespace A360721.P1561571935290318864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A368251 (n + 1) + A335462 (n + 1)).toNat

end

end A360721.P1561571935290318864

namespace A360721

/-- `A286619(A368251(n+1)+A335462(n+1))` -/
def P1561571935290318864.Spec : Prop :=
  ∀ n, P1561571935290318864.a n = A360721 (n + 1)

end A360721

/-! ## A360721.P18387493586537301925

`floor(log2(A267695(∏{e}[n+1, 3*#-2])))`
-/

namespace A360721.P18387493586537301925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A267695 (∏ p ∈ Nat.primeFactors (f1 n), ((3 * Nat.factorization (f1 n) p : ℤ) - 2)).toNat).toNat

end

end A360721.P18387493586537301925

namespace A360721

/-- `floor(log2(A267695(∏{e}[n+1, 3*#-2])))` -/
def P18387493586537301925.Spec : Prop :=
  ∀ n, (P18387493586537301925.a n : ℤ) = A360721 (n + 1)

end A360721

/-! ## A360721.P5830416265031330297

`∏{e}[A330105(n+1), A322591(#)]`
-/

namespace A360721.P5830416265031330297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A322591 (Nat.factorization (f1 n).natAbs p)

end

end A360721.P5830416265031330297

namespace A360721

/-- `∏{e}[A330105(n+1), A322591(#)]` -/
def P5830416265031330297.Spec : Prop :=
  ∀ n, P5830416265031330297.a n = A360721 (n + 1)

end A360721

/-! ## A360721.P634230187904797232

`∏{e}[((n+1)²/∏{p}[n+1, #])², A323023(#)]`
-/

namespace A360721.P634230187904797232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A323023 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A360721.P634230187904797232

namespace A360721

/-- `∏{e}[((n+1)²/∏{p}[n+1, #])², A323023(#)]` -/
def P634230187904797232.Spec : Prop :=
  ∀ n, P634230187904797232.a n = A360721 (n + 1)

end A360721

/-! ## A360721.P18419598174627089951

`A304689(A037291(n+1))`
-/

namespace A360721.P18419598174627089951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304689 (A037291 (n + 1)).toNat

end

end A360721.P18419598174627089951

namespace A360721

/-- `A304689(A037291(n+1))` -/
def P18419598174627089951.Spec : Prop :=
  ∀ n, P18419598174627089951.a n = A360721 (n + 1)

end A360721

/-! ## A360721.P2453696027627052878

`A353840(A069739(n+1))%9`
-/

namespace A360721.P2453696027627052878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353840 (A069739 (n + 1)).toNat) 9

end

end A360721.P2453696027627052878

namespace A360721

/-- `A353840(A069739(n+1))%9` -/
def P2453696027627052878.Spec : Prop :=
  ∀ n, P2453696027627052878.a n = A360721 (n + 1)

end A360721

/-! ## A360721.P16151053504134618789

`A356069(A107742(A356955(A000688(n+1))))`
-/

namespace A360721.P16151053504134618789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356069 (A107742 (A356955 (A000688 (n + 1)).toNat).toNat).toNat

end

end A360721.P16151053504134618789

namespace A360721

/-- `A356069(A107742(A356955(A000688(n+1))))` -/
def P16151053504134618789.Spec : Prop :=
  ∀ n, P16151053504134618789.a n = A360721 (n + 1)

end A360721

/-!
# A360722: a(n) is the sum of infinitary divisors of n that are powerful (A001694).

The programs for A360722, there is no canonical definition to state claims against.
-/

/-! ## A360722.P8291337807359173826

`A286875(n+1)+A133299(A348948(2*(n+1)))`
-/

namespace A360722.P8291337807359173826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (n + 1) + A133299 (A348948 (2 * (n + 1))).toNat

end

end A360722.P8291337807359173826

/-!
# A360723: Numbers that have at least one exponent in their canonical prime factorization that is neither 2 nor of the form 2^k-1, k>=1.

The programs for A360723, the canonical program `A360723.P6263523856395818707` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360723 has offset 1).

The definition of A360723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1437 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360723.P6263523856395818707

`lt[3, A080400(A329601(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360723

/-- `lt[3, A080400(A329601(n+1))]+1` -/
def P6263523856395818707.Spec : Prop :=
  ∀ n, (P6263523856395818707.a n : ℤ) = A360723 (n + 1)

theorem P6263523856395818707.correct : P6263523856395818707.Spec := by
  intro n
  simp only [A360723, Nat.add_sub_cancel]

end A360723

/-! ## A360723.P4544096784728673061

`lt[A037445(n+1), A286324(n+1)]+1`
-/

namespace A360723.P4544096784728673061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360723.P4544096784728673061

namespace A360723

/-- `lt[A037445(n+1), A286324(n+1)]+1` -/
def P4544096784728673061.Spec : Prop :=
  ∀ n, (P4544096784728673061.a n : ℤ) = A360723 (n + 1)

end A360723

/-! ## A360723.P15530257040500758241

`∩[A162643(n+1), A345193(n+1)]`
-/

namespace A360723.P15530257040500758241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360723.P15530257040500758241

namespace A360723

/-- `∩[A162643(n+1), A345193(n+1)]` -/
def P15530257040500758241.Spec : Prop :=
  ∀ n, (P15530257040500758241.a n : ℤ) = A360723 (n + 1)

end A360723

/-! ## A360723.P7705460766795372995

`∩[A336592(n+1), A345193(n+1)]`
-/

namespace A360723.P7705460766795372995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360723.P7705460766795372995

namespace A360723

/-- `∩[A336592(n+1), A345193(n+1)]` -/
def P7705460766795372995.Spec : Prop :=
  ∀ n, (P7705460766795372995.a n : ℤ) = A360723 (n + 1)

end A360723

/-!
# A360724: Hajnal's recurrence: a(2n) = a(n) + 3*a(n-1); a(2n+1) = 3*a(n) + a(n-1), with initial values a(0) = 0, a(1) = 1.

The programs for A360724, the canonical program `A360724.P5922808255912750807` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360724 has offset 0).

The definition of A360724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360724.P5922808255912750807

`∑[A060973(n+1)-A053646(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A360724

/-- `∑[A060973(n+1)-A053646(n+1)]` -/
def P5922808255912750807.Spec : Prop :=
  ∀ n, P5922808255912750807.a n = A360724 n

theorem P5922808255912750807.correct : P5922808255912750807.Spec := by
  intro n
  simp only [A360724]

end A360724

/-! ## A360724.P7926800721349392933

`∑[(A006165(n+1)*A008486(n))%(n+1)]`
-/

namespace A360724.P7926800721349392933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006165 (n + 1) * A008486 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360724.P7926800721349392933

namespace A360724

/-- `∑[(A006165(n+1)*A008486(n))%(n+1)]` -/
def P7926800721349392933.Spec : Prop :=
  ∀ n, P7926800721349392933.a n = A360724 n

end A360724

/-! ## A360724.P5468617755178326239

`∑[A060973(2*(n+1))-A006165(n+1)]`
-/

namespace A360724.P5468617755178326239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (2 * (n + 1)) - A006165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360724.P5468617755178326239

namespace A360724

/-- `∑[A060973(2*(n+1))-A006165(n+1)]` -/
def P5468617755178326239.Spec : Prop :=
  ∀ n, P5468617755178326239.a n = A360724 n

end A360724

/-! ## A360724.P518250775819836908

`∑[A060973(n+1)-(A008486(n+1)-(A080637(2*n+1)+1))]`
-/

namespace A360724.P518250775819836908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (n + 1) - (A008486 (n + 1) - (A080637 (2 * n + 1) + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360724.P518250775819836908

namespace A360724

/-- `∑[A060973(n+1)-(A008486(n+1)-(A080637(2*n+1)+1))]` -/
def P518250775819836908.Spec : Prop :=
  ∀ n, P518250775819836908.a n = A360724 n

end A360724

/-! ## A360724.P606397635039858388

`∑[A080639(3*n+1)%Δ[n²]]`
-/

namespace A360724.P606397635039858388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080639 (3 * n + 1)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360724.P606397635039858388

namespace A360724

/-- `∑[A080639(3*n+1)%Δ[n²]]` -/
def P606397635039858388.Spec : Prop :=
  ∀ n, P606397635039858388.a n = A360724 n

end A360724

/-!
# A360725: Number of ways to tile an n X n square using oblongs with distinct height x width dimensions.

The programs for A360725, there is no canonical definition to state claims against.
-/

/-! ## A360725.P7109399383670707217

`A099423(∑[n²+3])`
-/

namespace A360725.P7109399383670707217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360725.P7109399383670707217

/-!
# A360726: Expansion of Sum_{k>0} (k * x * (1 + x^k))^k.

The programs for A360726, the canonical program `A360726.P8439420912200849469` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360726 has offset 1).

The definition of A360726 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360726.P8439420912200849469

`∑{d}[n+1, #^#*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360726

/-- `∑{d}[n+1, #^#*C(#, (n+1)/#-1)]` -/
def P8439420912200849469.Spec : Prop :=
  ∀ n, (P8439420912200849469.a n : ℤ) = A360726 (n + 1)

theorem P8439420912200849469.correct : P8439420912200849469.Spec := by
  intro n
  simp only [A360726, Nat.add_sub_cancel]

end A360726

/-!
# A360727: Expansion of Sum_{k>=0} (k * x * (1 + x^2))^k.

The programs for A360727, the canonical program `A360727.P11635076362007085017` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360727 has offset 0).

The definition of A360727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360727.P11635076362007085017

`∑{#}[floor(n/3), (n-2*#)^(n-2*#)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360727

/-- `∑{#}[floor(n/3), (n-2*#)^(n-2*#)*C(n-2*#, #)]` -/
def P11635076362007085017.Spec : Prop :=
  ∀ n, P11635076362007085017.a n = (A360727 n : ℚ)

end A360727

/-! ## A360727.P14003620093309443351

`A048103(A120485(n))+A004523(n)`
-/

namespace A360727.P14003620093309443351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (A120485 n).toNat + A004523 n

end

end A360727.P14003620093309443351

namespace A360727

/-- `A048103(A120485(n))+A004523(n)` -/
def P14003620093309443351.Spec : Prop :=
  ∀ n, P14003620093309443351.a n = A360727 n

end A360727

/-!
# A360728: Expansion of Sum_{k>=0} (k * x * (1 + x^3))^k.

The programs for A360728, the canonical program `A360728.P12149202123706521912` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360728 has offset 0).

The definition of A360728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360728.P12149202123706521912

`∑{#}[floor(n/4), (n-3*#)^(n-3*#)*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360728

/-- `∑{#}[floor(n/4), (n-3*#)^(n-3*#)*C(n-3*#, #)]` -/
def P12149202123706521912.Spec : Prop :=
  ∀ n, P12149202123706521912.a n = (A360728 n : ℚ)

end A360728

/-! ## A360728.P3573863457710750790

`A353014(n)-A246270(A040027(n))`
-/

namespace A360728.P3573863457710750790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353014 n - A246270 (A040027 n).toNat

end

end A360728.P3573863457710750790

namespace A360728

/-- `A353014(n)-A246270(A040027(n))` -/
def P3573863457710750790.Spec : Prop :=
  ∀ n, P3573863457710750790.a n = A360728 n

end A360728

/-! ## A360728.P5498851623209930504

`A353014(n)-A102675(A326277(n))`
-/

namespace A360728.P5498851623209930504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353014 n - A102675 (A326277 n).toNat

end

end A360728.P5498851623209930504

namespace A360728

/-- `A353014(n)-A102675(A326277(n))` -/
def P5498851623209930504.Spec : Prop :=
  ∀ n, P5498851623209930504.a n = A360728 n

end A360728

/-! ## A360728.P16300761854726907252

`A353014(n)-A014094(A061664(n+2))`
-/

namespace A360728.P16300761854726907252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353014 n - A014094 (A061664 (n + 2)).toNat

end

end A360728.P16300761854726907252

namespace A360728

/-- `A353014(n)-A014094(A061664(n+2))` -/
def P16300761854726907252.Spec : Prop :=
  ∀ n, P16300761854726907252.a n = A360728 n

end A360728

/-!
# A360729: a(n) is the number of prime factors of the n-th powerful number (counted with repetition).

The programs for A360729, there is no canonical definition to state claims against.
-/

/-! ## A360729.P15299206921417539883

`A001222(A001694(n+1))`
-/

namespace A360729.P15299206921417539883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001694 (n + 1)).toNat

end

end A360729.P15299206921417539883

/-! ## A360729.P11939455489900664944

`∑{e}[A306458(n+1), #+1]`
-/

namespace A360729.P11939455489900664944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A360729.P11939455489900664944

/-! ## A360729.P13292850913103570861

`∑{e}[A001694(n+1), #]`
-/

namespace A360729.P13292850913103570861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A360729.P13292850913103570861

/-! ## A360729.P17204442748450660951

`∑{e}[col(2*A374291(n+1)), #]`
-/

namespace A360729.P17204442748450660951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (2 * A374291 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A360729.P17204442748450660951

/-! ## A360729.P11653950055954665248

`∑{e}[A076446(n)+a(n-1), #]` with `a(0)=1`
-/

namespace A360729.P11653950055954665248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A076446 n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A360729.P11653950055954665248

/-! ## A360729.P3693754504244297245

`∑{e}[∪[(n+1)², A320966(n+1)], #]`
-/

namespace A360729.P3693754504244297245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A360729.P3693754504244297245

/-! ## A360729.P14504339536534537786

`A001222(A084371(n+1))+A001222(A306458(n+1))`
-/

namespace A360729.P14504339536534537786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084371 (n + 1)).toNat + A001222 (A306458 (n + 1)).toNat

end

end A360729.P14504339536534537786

/-! ## A360729.P12857246447762140388

`A001222(A224866(n+1)-1)`
-/

namespace A360729.P12857246447762140388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A224866 (n + 1) - 1).toNat

end

end A360729.P12857246447762140388

/-! ## A360729.P5350212868366712728

`∑{d}[A001694(n+1), A069513(#)]`
-/

namespace A360729.P5350212868366712728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A360729.P5350212868366712728

/-! ## A360729.P1353481754905000887

`∑{d}[A224866(n+1)-1, A069513(#)]`
-/

namespace A360729.P1353481754905000887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A360729.P1353481754905000887

/-! ## A360729.P6219048656549325761

`A001222(∪[(n+1)², A320966(n+1)])`
-/

namespace A360729.P6219048656549325761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360729.P6219048656549325761

/-! ## A360729.P14494569680387932918

`A001222(A084371(n+1)*A306458(n+1))`
-/

namespace A360729.P14494569680387932918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084371 (n + 1) * A306458 (n + 1)).toNat

end

end A360729.P14494569680387932918

/-! ## A360729.P3153040352944711120

`A001222(∪[A001597(n+1), A052486(n+1)])`
-/

namespace A360729.P3153040352944711120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360729.P3153040352944711120

/-! ## A360729.P10809420286588969192

`A001222(∪[A001597(n+1), A216426(n+1)])`
-/

namespace A360729.P10809420286588969192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216426 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360729.P10809420286588969192

/-! ## A360729.P10621908956789847300

`A001222(∪[A001597(n+1), A216427(n+1)])`
-/

namespace A360729.P10621908956789847300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216427 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360729.P10621908956789847300

/-! ## A360729.P13604520643680537497

`A001222(∪[A320966(n+1), A001597(n+1)])`
-/

namespace A360729.P13604520643680537497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A360729.P13604520643680537497

/-! ## A360729.P3696687404951787682

`A001222(A224866(n+1)+A001478(n+1)+n)`
-/

namespace A360729.P3696687404951787682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A224866 (n + 1) + A001478 (n + 1) + (n : ℤ)).toNat

end

end A360729.P3696687404951787682

/-! ## A360729.P4897274085312889455

`A080256(A306458(n+1))`
-/

namespace A360729.P4897274085312889455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080256 (A306458 (n + 1)).toNat

end

end A360729.P4897274085312889455

/-! ## A360729.P8235312175628949008

`∑{e}[record[A057521(n+1)], #]`
-/

namespace A360729.P8235312175628949008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A360729.P8235312175628949008

/-! ## A360729.P10421575829117318716

`A001222(record[A057521(n+1)])`
-/

namespace A360729.P10421575829117318716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A360729.P10421575829117318716

/-!
# A360730: Expansion of Sum_{k>=0} (k * x * (1 + k*x^2))^k.

The programs for A360730, the canonical program `A360730.P8525031096470197050` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360730 has offset 0).

The definition of A360730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360730.P8525031096470197050

`∑{#}[floor(n/3), (n-2*#)^(n-#)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360730

/-- `∑{#}[floor(n/3), (n-2*#)^(n-#)*C(n-2*#, #)]` -/
def P8525031096470197050.Spec : Prop :=
  ∀ n, P8525031096470197050.a n = (A360730 n : ℚ)

end A360730

/-! ## A360730.P7998155188664600121

`A076062(A352082(n)+A333939(n))`
-/

namespace A360730.P7998155188664600121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076062 (A352082 n + A333939 n).toNat

end

end A360730.P7998155188664600121

namespace A360730

/-- `A076062(A352082(n)+A333939(n))` -/
def P7998155188664600121.Spec : Prop :=
  ∀ n, P7998155188664600121.a n = A360730 n

end A360730

/-!
# A360731: Expansion of Sum_{k>=0} (k * x * (1 + k*x^3))^k.

The programs for A360731, the canonical program `A360731.P18357051464299020462` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360731 has offset 0).

The definition of A360731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360731.P18357051464299020462

`∑{#}[floor(n/4), (n-3*#)^(n-2*#)*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360731

/-- `∑{#}[floor(n/4), (n-3*#)^(n-2*#)*C(n-3*#, #)]` -/
def P18357051464299020462.Spec : Prop :=
  ∀ n, P18357051464299020462.a n = (A360731 n : ℚ)

end A360731

/-! ## A360731.P16019996880166224424

`xor(n^n, A087565(a(n-1)))` with `a(0)=1`
-/

namespace A360731.P16019996880166224424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (n ^ n : ℤ) (A087565 (a (n - 1)).toNat)

end

end A360731.P16019996880166224424

namespace A360731

/-- `xor(n^n, A087565(a(n-1)))` -/
def P16019996880166224424.Spec : Prop :=
  ∀ n, P16019996880166224424.a n = A360731 n

end A360731

/-!
# A360732: Expansion of Sum_{k>0} (k * x * (1 + (k * x)^k))^k.

The programs for A360732, the canonical program `A360732.P6195651524359148214` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360732 has offset 1).

The definition of A360732 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360732.P6195651524359148214

`∑{d}[n+1, #^(n+1)*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360732

/-- `∑{d}[n+1, #^(n+1)*C(#, (n+1)/#-1)]` -/
def P6195651524359148214.Spec : Prop :=
  ∀ n, (P6195651524359148214.a n : ℤ) = A360732 (n + 1)

theorem P6195651524359148214.correct : P6195651524359148214.Spec := by
  intro n
  simp only [A360732, Nat.add_sub_cancel]

end A360732

/-!
# A360733: Expansion of Sum_{k>0} (x * (1 + (k * x)^k))^k.

The programs for A360733, the canonical program `A360733.P9737413141792969055` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360733 has offset 1).

The definition of A360733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360733.P9737413141792969055

`∑{d}[n+1, #^(n+1-#)*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360733

/-- `∑{d}[n+1, #^(n+1-#)*C(#, (n+1)/#-1)]` -/
def P9737413141792969055.Spec : Prop :=
  ∀ n, P9737413141792969055.a n = (A360733 (n + 1) : ℚ)

end A360733

/-!
# A360734: The number of regions into which the plane is divided by a hypotrochoid with parameters R = d = prime(n+1) and r = prime(n).

The programs for A360734, the canonical program `A360734.P2200939531909286745` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360734 has offset 1).

The definition of A360734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360734.P2200939531909286745

`A000040(n+2)*(A000040(n+2)-A000040(n+1)-1)+2`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A360734

/-- `A000040(n+2)*(A000040(n+2)-A000040(n+1)-1)+2` -/
def P2200939531909286745.Spec : Prop :=
  ∀ n, P2200939531909286745.a n = A360734 (n + 1)

theorem P2200939531909286745.correct : P2200939531909286745.Spec := by
  intro n
  simp only [A360734, Nat.add_sub_cancel]

end A360734

/-! ## A360734.P15387752647103458674

`A048852(n+1)-∑[A001223(n+1)]`
-/

namespace A360734.P15387752647103458674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048852 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360734.P15387752647103458674

namespace A360734

/-- `A048852(n+1)-∑[A001223(n+1)]` -/
def P15387752647103458674.Spec : Prop :=
  ∀ n, P15387752647103458674.a n = A360734 (n + 1)

end A360734

/-! ## A360734.P10496701500562311752

`A045344(n+1)*A046933(n+1)+2`
-/

namespace A360734.P10496701500562311752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) * A046933 (n + 1) + 2

end

end A360734.P10496701500562311752

namespace A360734

/-- `A045344(n+1)*A046933(n+1)+2` -/
def P10496701500562311752.Spec : Prop :=
  ∀ n, P10496701500562311752.a n = A360734 (n + 1)

end A360734

/-! ## A360734.P12008581176925639323

`A046933(n+1)*A065091(n+1)+2`
-/

namespace A360734.P12008581176925639323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) * A065091 (n + 1) + 2

end

end A360734.P12008581176925639323

namespace A360734

/-- `A046933(n+1)*A065091(n+1)+2` -/
def P12008581176925639323.Spec : Prop :=
  ∀ n, P12008581176925639323.a n = A360734 (n + 1)

theorem P12008581176925639323.correct : P12008581176925639323.Spec := by
  intro n
  simp only [A360734, Nat.add_sub_cancel, A360734.P12008581176925639323.a, A360734.P2200939531909286745.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360734

/-! ## A360734.P10894997898193121356

`A000040(n+2)*A046933(n+1)+2`
-/

namespace A360734.P10894997898193121356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A046933 (n + 1) + 2

end

end A360734.P10894997898193121356

namespace A360734

/-- `A000040(n+2)*A046933(n+1)+2` -/
def P10894997898193121356.Spec : Prop :=
  ∀ n, P10894997898193121356.a n = A360734 (n + 1)

end A360734

/-! ## A360734.P3824532846007112934

`A001223(n+1)*A006093(n+2)-A040976(n+1)`
-/

namespace A360734.P3824532846007112934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A006093 (n + 2) - A040976 (n + 1)

end

end A360734.P3824532846007112934

namespace A360734

/-- `A001223(n+1)*A006093(n+2)-A040976(n+1)` -/
def P3824532846007112934.Spec : Prop :=
  ∀ n, P3824532846007112934.a n = A360734 (n + 1)

theorem P3824532846007112934.correct : P3824532846007112934.Spec := by
  intro n
  simp only [A360734, Nat.add_sub_cancel, A360734.P3824532846007112934.a, A360734.P2200939531909286745.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360734

/-! ## A360734.P2874905219813359618

`A006093(n+2)*A075526(n+1)-A040976(n+1)`
-/

namespace A360734.P2874905219813359618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) * A075526 (n + 1) - A040976 (n + 1)

end

end A360734.P2874905219813359618

namespace A360734

/-- `A006093(n+2)*A075526(n+1)-A040976(n+1)` -/
def P2874905219813359618.Spec : Prop :=
  ∀ n, P2874905219813359618.a n = A360734 (n + 1)

end A360734

/-! ## A360734.P15613440699289926114

`A000040(n+2)*A001223(n+1)-A040976(n+2)`
-/

namespace A360734.P15613440699289926114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A001223 (n + 1) - A040976 (n + 2)

end

end A360734.P15613440699289926114

namespace A360734

/-- `A000040(n+2)*A001223(n+1)-A040976(n+2)` -/
def P15613440699289926114.Spec : Prop :=
  ∀ n, P15613440699289926114.a n = A360734 (n + 1)

theorem P15613440699289926114.correct : P15613440699289926114.Spec := by
  intro n
  simp only [A360734, Nat.add_sub_cancel, A360734.P15613440699289926114.a, A360734.P2200939531909286745.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360734

/-! ## A360734.P9429437700942773066

`(p?[2*n+1]-(p?[xor(1, n)+1]+1))*p?[2*n+1]+2`
-/

namespace A360734.P9429437700942773066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1 : ℤ)) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) + 2

end

end A360734.P9429437700942773066

namespace A360734

/-- `(p?[2*n+1]-(p?[xor(1, n)+1]+1))*p?[2*n+1]+2` -/
def P9429437700942773066.Spec : Prop :=
  ∀ n, P9429437700942773066.a n = A360734 (n + 1)

end A360734

/-!
# A360735: Even integers d such that the longest possible arithmetic progression (AP) of primes with common difference d has only two elements.

The programs for A360735, there is no canonical definition to state claims against.
-/

/-! ## A360735.P6994429655973538931

`2*A399582(n+1)`
-/

namespace A360735.P6994429655973538931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A399582 (n + 1)

end

end A360735.P6994429655973538931

/-! ## A360735.P2591403123440228823

`A004277(A399582(n+1))`
-/

namespace A360735.P2591403123440228823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A399582 (n + 1)).toNat

end

end A360735.P2591403123440228823

/-! ## A360735.P5435622013592082284

`∩[A047235(n+1), comp[A206037(n+1)]]`
-/

namespace A360735.P5435622013592082284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206037 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A360735.P5435622013592082284

/-! ## A360735.P16225678687109424054

`filter[A359408(n+1), A040774(#)]`
-/

namespace A360735.P16225678687109424054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040774 (f1 j).toNat = 1) n)

end

end A360735.P16225678687109424054

/-! ## A360735.P10157918109889187369

`filter[A359408(n+1), A059841(#)]`
-/

namespace A360735.P10157918109889187369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A360735.P10157918109889187369

/-!
# A360738: a(n) = A084740(n) - 1.

The programs for A360738, there is no canonical definition to state claims against.
-/

/-! ## A360738.P7725582238777364250

`A084740(A028310(n)+1)-1`
-/

namespace A360738.P7725582238777364250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084740 (A028310 n + 1).toNat - 1

end

end A360738.P7725582238777364250

/-!
# A360739: Semiprimes of the form k^2 + 2.

The programs for A360739, there is no canonical definition to state claims against.
-/

/-! ## A360739.P5625737366821189103

`A242330(n+1)²+2`
-/

namespace A360739.P5625737366821189103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242330 (n + 1) ^ 2 + 2

end

end A360739.P5625737366821189103

/-! ## A360739.P12643249426490765339

`A000005(A000040(n+1))+A242330(n+1)*A242330(n+1)`
-/

namespace A360739.P12643249426490765339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000040 (n + 1)).toNat + A242330 (n + 1) * A242330 (n + 1)

end

end A360739.P12643249426490765339

/-! ## A360739.P9519920992280944178

`A010000(A242330(n+1))`
-/

namespace A360739.P9519920992280944178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (A242330 (n + 1)).toNat

end

end A360739.P9519920992280944178

/-! ## A360739.P13526504947593569431

`A059100(A242330(n+1)%A001248(n+1))`
-/

namespace A360739.P13526504947593569431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 (Int.tmod (A242330 (n + 1)) (A001248 (n + 1))).toNat

end

end A360739.P13526504947593569431

/-! ## A360739.P16941509901784708109

`A117950(A242330(n+1))+A033999(2*n+1)`
-/

namespace A360739.P16941509901784708109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (A242330 (n + 1)).toNat + A033999 (2 * n + 1)

end

end A360739.P16941509901784708109

/-! ## A360739.P15910257692821156522

`eq[2, A001222(n²+2)]²+2`
-/

namespace A360739.P15910257692821156522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 2

end

end A360739.P15910257692821156522

/-! ## A360739.P9387531589368501938

`or(2, eq[4, A001222(or(2, n²))²]²)`
-/

namespace A360739.P9387531589368501938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.lor 2 (n ^ 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2)

end

end A360739.P9387531589368501938

/-! ## A360739.P12171620552897107794

`∩[A001358(n+1), A010000(n)]`
-/

namespace A360739.P12171620552897107794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360739.P12171620552897107794

/-! ## A360739.P11759889052119329340

`∩[A001358(n+1), A059100(n)]`
-/

namespace A360739.P11759889052119329340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059100 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360739.P11759889052119329340

/-! ## A360739.P1223374810439227306

`∩[A001358(n+1), A160842(n)]`
-/

namespace A360739.P1223374810439227306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160842 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360739.P1223374810439227306

/-!
# A360740: Semiprimes of the form k^2 + 3.

The programs for A360740, there is no canonical definition to state claims against.
-/

/-! ## A360740.P13627933323484806540

`A242331(n+1)²+3`
-/

namespace A360740.P13627933323484806540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242331 (n + 1) ^ 2 + 3

end

end A360740.P13627933323484806540

/-! ## A360740.P8257569364645935537

`A117950(A242331(n+1))`
-/

namespace A360740.P8257569364645935537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (A242331 (n + 1)).toNat

end

end A360740.P8257569364645935537

/-! ## A360740.P16649187674880428387

`∩[A230834(n+1), A117950(n)]`
-/

namespace A360740.P16649187674880428387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360740.P16649187674880428387

/-! ## A360740.P17538555767571901158

`eq[2, A001222(n²+3)]²+3`
-/

namespace A360740.P17538555767571901158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 3

end

end A360740.P17538555767571901158

/-! ## A360740.P8236532384404941727

`A117950(eq[2, A001222(n*(n+2)+4)]+1)`
-/

namespace A360740.P8236532384404941727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (n + 2) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A360740.P8236532384404941727

/-! ## A360740.P10291566048670242768

`A027688(eq[2, A001222(n*(n+2)+4)]+1)-A242331(n+1)`
-/

namespace A360740.P10291566048670242768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (n + 2) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A242331 (n + 1)

end

end A360740.P10291566048670242768

/-! ## A360740.P12476176790720581798

`∩[A001358(n+1), A117950(n)]`
-/

namespace A360740.P12476176790720581798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360740.P12476176790720581798

/-! ## A360740.P10123702892254167123

`filter[A117950(n), A064911(#)]`
-/

namespace A360740.P10123702892254167123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A360740.P10123702892254167123

/-! ## A360740.P14679048477550601839

`filter[A330715(2*(n+1)), A064911(#)]`
-/

namespace A360740.P14679048477550601839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330715 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A360740.P14679048477550601839

/-!
# A360741: Semiprimes of the form k^2 + 4.

The programs for A360741, there is no canonical definition to state claims against.
-/

/-! ## A360741.P5977854845162958814

`A242332(n+1)²+4`
-/

namespace A360741.P5977854845162958814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242332 (n + 1) ^ 2 + 4

end

end A360741.P5977854845162958814

/-! ## A360741.P9291354118333668683

`A087475(A242332(n+1))`
-/

namespace A360741.P9291354118333668683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (A242332 (n + 1)).toNat

end

end A360741.P9291354118333668683

/-! ## A360741.P2325923955643054103

`eq[2, A001222(n²+4)]²+4`
-/

namespace A360741.P2325923955643054103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 + 4

end

end A360741.P2325923955643054103

/-! ## A360741.P10785970309130176773

`∩[A001358(n+1), A087475(n)]`
-/

namespace A360741.P10785970309130176773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360741.P10785970309130176773

/-! ## A360741.P7171260042824268

`filter[A087475(n), A064911(#)]`
-/

namespace A360741.P7171260042824268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A360741.P7171260042824268

/-! ## A360741.P3523985668573656170

`filter[A245388(n+1), A064911(#)]`
-/

namespace A360741.P3523985668573656170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A360741.P3523985668573656170

/-!
# A360742: Number T(n,k) of sets of nonempty integer partitions with a total of k parts and total sum of n; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A360742, there is no canonical definition to state claims against.
-/

/-! ## A360742.P13923312200949526599

`A343489(n)+C(A244081(2*(n+2)), n*(n+5)*((n+1)²-3*(n+1)+4)/2)`
-/

namespace A360742.P13923312200949526599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343489 n + (Nat.choose (A244081 (2 * (n + 2))).toNat (SequenceMachineLib.roundAway (((n * (n + 5) : ℤ) * (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 4) : ℚ) / 2)).toNat : ℤ)

end

end A360742.P13923312200949526599

/-! ## A360742.P11086753926840628618

`A343489(n)+A059841(A233862(n+1))`
-/

namespace A360742.P11086753926840628618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343489 n + A059841 (A233862 (n + 1)).toNat

end

end A360742.P11086753926840628618

/-! ## A360742.P9342120806516145137

`A343489(n)+A010815(A000043(n+4))`
-/

namespace A360742.P9342120806516145137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343489 n + A010815 (A000043 (n + 4)).toNat

end

end A360742.P9342120806516145137

/-! ## A360742.P8729059265020107541

`A343489(n)+A205988(A276086(3*n))`
-/

namespace A360742.P8729059265020107541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343489 n + A205988 (A276086 (3 * n)).toNat

end

end A360742.P8729059265020107541

/-! ## A360742.P15254769483587441091

`A343489(n)+A008683(A308912(2*(n+2)))`
-/

namespace A360742.P15254769483587441091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343489 n + A008683 (A308912 (2 * (n + 2))).toNat

end

end A360742.P15254769483587441091

/-!
# A360743: Number of idempotent binary relation matrices E on [n] such that E contains an identity matrix of order n-1 and (E - I_n)^2 = 0.

The programs for A360743, the canonical program `A360743.P12655162656128733723` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360743 has offset 0).

The definition of A360743 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360743.P12655162656128733723

`(n+1)*A001831(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A360743

/-- `(n+1)*A001831(n)` -/
def P12655162656128733723.Spec : Prop :=
  ∀ n, P12655162656128733723.a n = A360743 n

theorem P12655162656128733723.correct : P12655162656128733723.Spec := by
  intro n
  simp only [A360743]

end A360743

/-! ## A360743.P742002641216729770

`∑{#}[n, C(n, #)*(2^#-1)^(n-#)]*(n+1)`
-/

namespace A360743.P742002641216729770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * ((2 ^ k : ℤ) - 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)) * (n + 1 : ℚ)

end

end A360743.P742002641216729770

namespace A360743

/-- `∑{#}[n, C(n, #)*(2^#-1)^(n-#)]*(n+1)` -/
def P742002641216729770.Spec : Prop :=
  ∀ n, P742002641216729770.a n = (A360743 n : ℚ)

end A360743

/-! ## A360743.P5580961503958175047

`A001831(n)*A008619(2*n)`
-/

namespace A360743.P5580961503958175047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n * A008619 (2 * n)

end

end A360743.P5580961503958175047

namespace A360743

/-- `A001831(n)*A008619(2*n)` -/
def P5580961503958175047.Spec : Prop :=
  ∀ n, P5580961503958175047.a n = A360743 n

end A360743

/-! ## A360743.P8309894393422502978

`A001831(n)*A002024(A000124(n))`
-/

namespace A360743.P8309894393422502978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n * A002024 (A000124 n).toNat

end

end A360743.P8309894393422502978

namespace A360743

/-- `A001831(n)*A002024(A000124(n))` -/
def P8309894393422502978.Spec : Prop :=
  ∀ n, P8309894393422502978.a n = A360743 n

end A360743

/-! ## A360743.P9087194807528608303

`A001831(n)*A208532(A000217(n))`
-/

namespace A360743.P9087194807528608303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001831 n * A208532 (A000217 n).toNat

end

end A360743.P9087194807528608303

namespace A360743

/-- `A001831(n)*A208532(A000217(n))` -/
def P9087194807528608303.Spec : Prop :=
  ∀ n, P9087194807528608303.a n = A360743 n

end A360743

/-!
# A360747: Expansion of Sum_{k>=0} (x * (1 + (k * x)^3))^k.

The programs for A360747, the canonical program `A360747.P393464080624713453` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360747 has offset 0).

The definition of A360747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360747.P393464080624713453

`∑{#}[floor(n/4), (n-3*#)^(3*#)*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360747

/-- `∑{#}[floor(n/4), (n-3*#)^(3*#)*C(n-3*#, #)]` -/
def P393464080624713453.Spec : Prop :=
  ∀ n, P393464080624713453.a n = A360747 n

theorem P393464080624713453.correct : P393464080624713453.Spec := by
  intro n
  simp only [A360747]

end A360747

/-! ## A360747.P1989453282164825580

`A318046(A000602(n)²²)`
-/

namespace A360747.P1989453282164825580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318046 ((A000602 n ^ 2) ^ 2).toNat

end

end A360747.P1989453282164825580

namespace A360747

/-- `A318046(A000602(n)²²)` -/
def P1989453282164825580.Spec : Prop :=
  ∀ n, P1989453282164825580.a n = A360747 n

end A360747

/-! ## A360747.P3399425136022804664

`A111378(A121432(n))²+1`
-/

namespace A360747.P3399425136022804664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111378 (A121432 n).toNat ^ 2 + 1

end

end A360747.P3399425136022804664

namespace A360747

/-- `A111378(A121432(n))²+1` -/
def P3399425136022804664.Spec : Prop :=
  ∀ n, P3399425136022804664.a n = A360747 n

end A360747

/-! ## A360747.P17860381171105782399

`A056239(A231085(n))²+1`
-/

namespace A360747.P17860381171105782399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A231085 n).toNat ^ 2 + 1

end

end A360747.P17860381171105782399

namespace A360747

/-- `A056239(A231085(n))²+1` -/
def P17860381171105782399.Spec : Prop :=
  ∀ n, P17860381171105782399.a n = A360747 n

end A360747

/-!
# A360748: Expansion of Sum_{k>=0} (x * (1 + k*x^2))^k.

The programs for A360748, the canonical program `A360748.P15476450110416876083` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360748 has offset 0).

The definition of A360748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360748.P15476450110416876083

`∑{#}[floor(n/3), (n-2*#)^#*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360748

/-- `∑{#}[floor(n/3), (n-2*#)^#*C(n-2*#, #)]` -/
def P15476450110416876083.Spec : Prop :=
  ∀ n, P15476450110416876083.a n = A360748 n

theorem P15476450110416876083.correct : P15476450110416876083.Spec := by
  intro n
  simp only [A360748]

end A360748

/-! ## A360748.P7511156672671868675

`A302597(A400313(n))`
-/

namespace A360748.P7511156672671868675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302597 (A400313 n).toNat

end

end A360748.P7511156672671868675

namespace A360748

/-- `A302597(A400313(n))` -/
def P7511156672671868675.Spec : Prop :=
  ∀ n, P7511156672671868675.a n = A360748 n

end A360748

/-! ## A360748.P11540973060515837693

`A302597(A005251(n+1))`
-/

namespace A360748.P11540973060515837693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302597 (A005251 (n + 1)).toNat

end

end A360748.P11540973060515837693

namespace A360748

/-- `A302597(A005251(n+1))` -/
def P11540973060515837693.Spec : Prop :=
  ∀ n, P11540973060515837693.a n = A360748 n

end A360748

/-! ## A360748.P17131486030661461008

`A371587(A134527(n+1))`
-/

namespace A360748.P17131486030661461008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A134527 (n + 1)).toNat

end

end A360748.P17131486030661461008

namespace A360748

/-- `A371587(A134527(n+1))` -/
def P17131486030661461008.Spec : Prop :=
  ∀ n, P17131486030661461008.a n = A360748 n

end A360748

/-! ## A360748.P14930464142925379004

`A023193(A162352(n)+A148161(n))`
-/

namespace A360748.P14930464142925379004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A162352 n + A148161 n).toNat

end

end A360748.P14930464142925379004

namespace A360748

/-- `A023193(A162352(n)+A148161(n))` -/
def P14930464142925379004.Spec : Prop :=
  ∀ n, P14930464142925379004.a n = A360748 n

end A360748

/-!
# A360749: Expansion of Sum_{k>=0} (x * (1 + k*x^3))^k.

The programs for A360749, the canonical program `A360749.P13124021089415001008` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360749 has offset 0).

The definition of A360749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360749.P13124021089415001008

`∑{#}[floor(n/4), (n-3*#)^#*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360749

/-- `∑{#}[floor(n/4), (n-3*#)^#*C(n-3*#, #)]` -/
def P13124021089415001008.Spec : Prop :=
  ∀ n, P13124021089415001008.a n = A360749 n

theorem P13124021089415001008.correct : P13124021089415001008.Spec := by
  intro n
  simp only [A360749]

end A360749

/-!
# A360751: a(n) is the least perfect square average of two consecutive primes with 2*n gap between them, or -1 if no such number exists.

The programs for A360751, there is no canonical definition to state claims against.
-/

/-! ## A360751.P2102535616531440511

`or(A069495(n+1), A291137(A000051(n+2)))`
-/

namespace A360751.P2102535616531440511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069495 (n + 1)) (A291137 (A000051 (n + 2)).toNat)

end

end A360751.P2102535616531440511

/-!
# A360752: Expansion of Sum_{k>0} (x * (1 + (2 * x)^k))^k.

The programs for A360752, the canonical program `A360752.P11093585858373728450` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360752 has offset 1).

The definition of A360752 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360752.P11093585858373728450

`∑{d}[n+1, 2^(n+1-#)*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360752

/-- `∑{d}[n+1, 2^(n+1-#)*C(#, (n+1)/#-1)]` -/
def P11093585858373728450.Spec : Prop :=
  ∀ n, P11093585858373728450.a n = (A360752 (n + 1) : ℚ)

end A360752

/-!
# A360753: Matrix inverse of A360657.

The programs for A360753, there is no canonical definition to state claims against.
-/

/-! ## A360753.P3297151111532084945

`A087810(A131352(n)+A028310(2*n))`
-/

namespace A360753.P3297151111532084945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087810 (A131352 n + A028310 (2 * n)).toNat

end

end A360753.P3297151111532084945

/-! ## A360753.P13771159542252643470

`A360999(A174410(n))-A137512(A208910(n+2))`
-/

namespace A360753.P13771159542252643470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360999 (A174410 n).toNat - A137512 (A208910 (n + 2)).toNat

end

end A360753.P13771159542252643470

/-! ## A360753.P713323289653063157

`A087960(A135541(n))*A357705(n*A099608(n))`
-/

namespace A360753.P713323289653063157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A135541 n).toNat * A357705 ((n : ℤ) * A099608 n).toNat

end

end A360753.P713323289653063157

/-! ## A360753.P1576167488850076456

`A360999(A174410(n))-A231351(A215083(n+1)+1)`
-/

namespace A360753.P1576167488850076456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360999 (A174410 n).toNat - A231351 (A215083 (n + 1) + 1).toNat

end

end A360753.P1576167488850076456

/-! ## A360753.P14340214405992819699

`A087960(A180662(3*n))*A357705(n*A099608(n))`
-/

namespace A360753.P14340214405992819699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A180662 (3 * n)).toNat * A357705 ((n : ℤ) * A099608 n).toNat

end

end A360753.P14340214405992819699

/-!
# A360754: Expansion of Sum_{k>0} (k * x * (1 + (2 * x)^k))^k.

The programs for A360754, the canonical program `A360754.P10391643657159440886` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360754 has offset 1).

The definition of A360754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360754.P10391643657159440886

`∑{d}[n+1, 2^(n+1-#)*#^#*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360754

/-- `∑{d}[n+1, 2^(n+1-#)*#^#*C(#, (n+1)/#-1)]` -/
def P10391643657159440886.Spec : Prop :=
  ∀ n, P10391643657159440886.a n = (A360754 (n + 1) : ℚ)

end A360754

/-!
# A360755: Expansion of (1/2) * Sum_{k>0} (2 * x * (1 + x^k))^k.

The programs for A360755, the canonical program `A360755.P7580546439754096331` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360755 has offset 1).

The definition of A360755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360755.P7580546439754096331

`∑{d}[n+1, 2^(#-1)*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360755

/-- `∑{d}[n+1, 2^(#-1)*C(#, (n+1)/#-1)]` -/
def P7580546439754096331.Spec : Prop :=
  ∀ n, P7580546439754096331.a n = (A360755 (n + 1) : ℚ)

end A360755

/-!
# A360756: Expansion of Sum_{k>0} (x * (1 + 2 * x^k))^k.

The programs for A360756, the canonical program `A360756.P7855562882336844665` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360756 has offset 1).

The definition of A360756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360756.P7855562882336844665

`∑{d}[n+1, 2^((n+1)/#-1)*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360756

/-- `∑{d}[n+1, 2^((n+1)/#-1)*C(#, (n+1)/#-1)]` -/
def P7855562882336844665.Spec : Prop :=
  ∀ n, P7855562882336844665.a n = (A360756 (n + 1) : ℝ)

end A360756

/-!
# A360757: Numbers k for which the arithmetic derivative of k is a Sophie Germain prime (A005384).

The programs for A360757, there is no canonical definition to state claims against.
-/

/-! ## A360757.P11919623330004585211

`lt[0, A156660(A003415(n))]`
-/

namespace A360757.P11919623330004585211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A360757.P11919623330004585211

/-!
# A360758: Numbers k for which k' - 1 and k' + 1 are twin primes, where the prime denotes the arithmetic derivative.

The programs for A360758, the canonical program `A360758.P7102341119995455638` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360758 has offset 1).

The definition of A360758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360758.P7102341119995455638

`eq[2, A096501(A003415(n)+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360758

/-- `eq[2, A096501(A003415(n)+1)]` -/
def P7102341119995455638.Spec : Prop :=
  ∀ n, (P7102341119995455638.a n : ℤ) = A360758 (n + 1)

theorem P7102341119995455638.correct : P7102341119995455638.Spec := by
  intro n
  simp only [A360758, Nat.add_sub_cancel]

end A360758

/-! ## A360758.P7279196813125992378

`eq[1, A325142(A003415(n))]`
-/

namespace A360758.P7279196813125992378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P7279196813125992378

namespace A360758

/-- `eq[1, A325142(A003415(n))]` -/
def P7279196813125992378.Spec : Prop :=
  ∀ n, (P7279196813125992378.a n : ℤ) = A360758 (n + 1)

end A360758

/-! ## A360758.P17905519841344782769

`eq[1, A325142(A168036(n)+n)]`
-/

namespace A360758.P17905519841344782769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A168036 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P17905519841344782769

namespace A360758

/-- `eq[1, A325142(A168036(n)+n)]` -/
def P17905519841344782769.Spec : Prop :=
  ∀ n, (P17905519841344782769.a n : ℤ) = A360758 (n + 1)

end A360758

/-! ## A360758.P4223583948555476091

`eq[1, A325142(A005843(n)-(n-A168036(n)))]`
-/

namespace A360758.P4223583948555476091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A005843 n - ((n : ℤ) - A168036 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360758.P4223583948555476091

namespace A360758

/-- `eq[1, A325142(A005843(n)-(n-A168036(n)))]` -/
def P4223583948555476091.Spec : Prop :=
  ∀ n, (P4223583948555476091.a n : ℤ) = A360758 (n + 1)

end A360758

/-!
# A360759: a(n) = Sum_{d|n} d^(d+n/d) * binomial(d,n/d).

The programs for A360759, the canonical program `A360759.P14883182895364344824` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360759 has offset 1).

The definition of A360759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360759.P14883182895364344824

`∑{d}[n+1, #^(#+(n+1)/#)*C(#, (n+1)/#)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360759

/-- `∑{d}[n+1, #^(#+(n+1)/#)*C(#, (n+1)/#)]` -/
def P14883182895364344824.Spec : Prop :=
  ∀ n, P14883182895364344824.a n = (A360759 (n + 1) : ℝ)

end A360759

/-!
# A360760: a(n) = n^16 + n^15 + n^2 + 1.

The programs for A360760, the canonical program `A360760.P7109491905445105773` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360760 has offset 0).

The definition of A360760 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^16+n^15+n²+1` (program `A360760.P7109491905445105773`, by `A360760.P7109491905445105773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360760.P7109491905445105773

`n^16+n^15+n²+1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360760

/-- `n^16+n^15+n²+1` -/
def P7109491905445105773.Spec : Prop :=
  ∀ n, (P7109491905445105773.a n : ℤ) = A360760 n

theorem P7109491905445105773.correct : P7109491905445105773.Spec := by
  intro n
  simp only [A360760]

end A360760

/-!
# A360763: Number T(n,k) of multisets of nonempty strict integer partitions with a total of k parts and total sum of n; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A360763, there is no canonical definition to state claims against.
-/

/-! ## A360763.P4151305552848441574

`A069010(A269948(n))`
-/

namespace A360763.P4151305552848441574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A269948 n).toNat

end

end A360763.P4151305552848441574

/-! ## A360763.P9135778057406618639

`A335474(A048993(n))`
-/

namespace A360763.P9135778057406618639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A048993 n).toNat

end

end A360763.P9135778057406618639

/-! ## A360763.P12826723799359054049

`A335474(A151511(n))`
-/

namespace A360763.P12826723799359054049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335474 (A151511 n).toNat

end

end A360763.P12826723799359054049

/-! ## A360763.P7121622569233768436

`A056924(2^A308654(n))`
-/

namespace A360763.P7121622569233768436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A308654 n : ℤ))).toNat

end

end A360763.P7121622569233768436

/-! ## A360763.P1886978674306064136

`A358333(lcm(2, A048993(n)))`
-/

namespace A360763.P1886978674306064136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358333 (Int.lcm 2 (A048993 n))

end

end A360763.P1886978674306064136

/-!
# A360764: Number T(n,k) of sets of nonempty strict integer partitions with a total of k parts and total sum of n; triangle T(n,k), n>=0, 0<=k<=max(i:T(n,i)>0), read by rows.

The programs for A360764, there is no canonical definition to state claims against.
-/

/-! ## A360764.P2262232213855745706

`A293136(n)+A025469(A261797(3*n+2))`
-/

namespace A360764.P2262232213855745706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293136 n + A025469 (A261797 (3 * n + 2)).toNat

end

end A360764.P2262232213855745706

/-! ## A360764.P1425007993187753088

`A358773(A309040(n+1))+A293136(n)`
-/

namespace A360764.P1425007993187753088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (A309040 (n + 1)).toNat + A293136 n

end

end A360764.P1425007993187753088

/-! ## A360764.P10087391272134212401

`A243081(2*n+3)%A194437(A014664(n+5))`
-/

namespace A360764.P10087391272134212401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243081 (2 * n + 3)) (A194437 (A014664 (n + 5)).toNat)

end

end A360764.P10087391272134212401

/-! ## A360764.P1727471244125590840

`A051176(A318757(2*(n+2))%A046410(n+1))`
-/

namespace A360764.P1727471244125590840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (Int.tmod (A318757 (2 * (n + 2))) (A046410 (n + 1))).toNat

end

end A360764.P1727471244125590840

/-! ## A360764.P7142216766252286650

`A293136(n)*A330098(A195012(n+1))`
-/

namespace A360764.P7142216766252286650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293136 n * A330098 (A195012 (n + 1)).toNat

end

end A360764.P7142216766252286650

/-!
# A360765: Numbers k that are neither prime powers nor squarefree, such that A007947(k) * A053669(k) < k.

The programs for A360765, there is no canonical definition to state claims against.
-/

/-! ## A360765.P15744579093105717339

`∪[A361098(n+1), A364997(n+1)]`
-/

namespace A360765.P15744579093105717339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P15744579093105717339

/-! ## A360765.P11718570388287657929

`filter[A393869(n+1), A355447(#)]`
-/

namespace A360765.P11718570388287657929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A360765.P11718570388287657929

/-! ## A360765.P7710891427938843278

`∩[A126706(n+1), A393869(n+1)]`
-/

namespace A360765.P7710891427938843278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P7710891427938843278

/-! ## A360765.P9430991182286556630

`∩[A389812(n+1), A393869(n+1)]`
-/

namespace A360765.P9430991182286556630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P9430991182286556630

/-! ## A360765.P8184594950288263903

`∩[A393869(n+1), A396265(n+1)]`
-/

namespace A360765.P8184594950288263903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P8184594950288263903

/-! ## A360765.P4781154865845257884

`∩[A024619(n+1), A393869(n+1)]`
-/

namespace A360765.P4781154865845257884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P4781154865845257884

/-! ## A360765.P9532682746221743109

`∩[A361102(n+1), A393869(n+1)]`
-/

namespace A360765.P9532682746221743109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P9532682746221743109

/-! ## A360765.P8299172054989407642

`∩[A387335(n+1), A393869(n+1)]`
-/

namespace A360765.P8299172054989407642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P8299172054989407642

/-! ## A360765.P6892096072727327199

`∩[A085971(n+1), A393869(n+1)]`
-/

namespace A360765.P6892096072727327199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P6892096072727327199

/-! ## A360765.P18027495062239116390

`filter[A393869(n+1), A143731(#)]`
-/

namespace A360765.P18027495062239116390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A360765.P18027495062239116390

/-! ## A360765.P11564044711575918581

`∩[A102467(n+1), A393869(n+1)]`
-/

namespace A360765.P11564044711575918581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360765.P11564044711575918581

/-!
# A360766: a(0) = 0; a(n) = ( (n + sqrt(n))^n - (n - sqrt(n))^n )/(2 * sqrt(n)).

The programs for A360766, the canonical program `A360766.P18405888281633849260` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360766 has offset 0).

The definition of A360766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360766.P18405888281633849260

`∑{#}[floor((n-1)/2), n^(n-1-#)*C(n, 2*#+1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360766

/-- `∑{#}[floor((n-1)/2), n^(n-1-#)*C(n, 2*#+1)]` -/
def P18405888281633849260.Spec : Prop :=
  ∀ n, P18405888281633849260.a n = (A360766 n : ℚ)

end A360766

/-! ## A360766.P13852767253866655533

`A361290(∑[4*n])`
-/

namespace A360766.P13852767253866655533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361290 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360766.P13852767253866655533

namespace A360766

/-- `A361290(∑[4*n])` -/
def P13852767253866655533.Spec : Prop :=
  ∀ n, P13852767253866655533.a n = A360766 n

end A360766

/-!
# A360767: Numbers k that are neither prime power nor squarefree, such that k/rad(k) < q, where rad(k) = A007947(k) and prime q = A119288(k).

The programs for A360767, there is no canonical definition to state claims against.
-/

/-! ## A360767.P9794001044604395115

`∪[A364997(n+1), A364999(n+1)]`
-/

namespace A360767.P9794001044604395115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360767.P9794001044604395115

/-! ## A360767.P1416802889017806757

`∪[A364997(n+1), A366825(n+1)]`
-/

namespace A360767.P1416802889017806757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360767.P1416802889017806757

/-! ## A360767.P3741632912373940170

`∪[A366825(n+1), A369150(n+1)]`
-/

namespace A360767.P3741632912373940170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360767.P3741632912373940170

/-! ## A360767.P16339275716499050412

`lt[A355432(n+1), A355447(n+1)]+1`
-/

namespace A360767.P16339275716499050412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360767.P16339275716499050412

/-! ## A360767.P10133236615143417977

`∩[A165363(n+1), A364996(n+1)]`
-/

namespace A360767.P10133236615143417977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360767.P10133236615143417977

/-!
# A360768: Numbers k that are neither prime powers nor squarefree, such that k/rad(k) >= q, where rad(k) = A007947(k) and prime q = A119288(k).

The programs for A360768, there is no canonical definition to state claims against.
-/

/-! ## A360768.P8505270806040668780

`A065642(A362844(n+1))`
-/

namespace A360768.P8505270806040668780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065642 (A362844 (n + 1)).toNat

end

end A360768.P8505270806040668780

/-! ## A360768.P14637834311189443310

`∪[A361098(n+1), A364998(n+1)]`
-/

namespace A360768.P14637834311189443310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A360768.P14637834311189443310

/-! ## A360768.P12732983163922818980

`lt[C(2, n), A355432(n+1)]+1`
-/

namespace A360768.P12732983163922818980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360768.P12732983163922818980

/-! ## A360768.P3118699147357875734

`lt[A010051(n+1), A355432(n+1)]+1`
-/

namespace A360768.P3118699147357875734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360768.P3118699147357875734

/-! ## A360768.P5148802802725359365

`lt[A355443(n+1), A355432(n+1)]+1`
-/

namespace A360768.P5148802802725359365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360768.P5148802802725359365

/-! ## A360768.P5740576594428851484

`lt[A355444(n+1), A355432(n+1)]+1`
-/

namespace A360768.P5740576594428851484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360768.P5740576594428851484

/-!
# A360769: Odd numbers that are neither prime powers nor squarefree.

The programs for A360769, the canonical program `A360769.P2553119699871238566` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360769 has offset 1).

The definition of A360769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360769.P10621541274489418497

`filter[2*n+1, A355447(#)]`
-/

namespace A360769.P10621541274489418497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j) = 1) n)

end

end A360769.P10621541274489418497

namespace A360769

/-- `filter[2*n+1, A355447(#)]` -/
def P10621541274489418497.Spec : Prop :=
  ∀ n, (P10621541274489418497.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P2553119699871238566

`filter[A053850(n+1), A354108(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A360769

/-- `filter[A053850(n+1), A354108(#)]` -/
def P2553119699871238566.Spec : Prop :=
  ∀ n, P2553119699871238566.a n = A360769 (n + 1)

theorem P2553119699871238566.correct : P2553119699871238566.Spec := by
  intro n
  simp only [A360769, Nat.add_sub_cancel]

end A360769

/-! ## A360769.P15110443123980479415

`∩[2*n+1, A360765(n+1)]`
-/

namespace A360769.P15110443123980479415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P15110443123980479415

namespace A360769

/-- `∩[2*n+1, A360765(n+1)]` -/
def P15110443123980479415.Spec : Prop :=
  ∀ n, (P15110443123980479415.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P1642646752746499729

`filter[A360765(n+1), A353569(#)]`
-/

namespace A360769.P1642646752746499729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A360769.P1642646752746499729

namespace A360769

/-- `filter[A360765(n+1), A353569(#)]` -/
def P1642646752746499729.Spec : Prop :=
  ∀ n, P1642646752746499729.a n = A360769 (n + 1)

end A360769

/-! ## A360769.P7655361001859622995

`∩[2*n+1, A367455(n+1)]`
-/

namespace A360769.P7655361001859622995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P7655361001859622995

namespace A360769

/-- `∩[2*n+1, A367455(n+1)]` -/
def P7655361001859622995.Spec : Prop :=
  ∀ n, (P7655361001859622995.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P14224098164617174560

`filter[A367455(n+1), A093719(#)]`
-/

namespace A360769.P14224098164617174560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A360769.P14224098164617174560

namespace A360769

/-- `filter[A367455(n+1), A093719(#)]` -/
def P14224098164617174560.Spec : Prop :=
  ∀ n, P14224098164617174560.a n = A360769 (n + 1)

end A360769

/-! ## A360769.P1807967326095761634

`filter[A367455(n+1), A353569(#)]`
-/

namespace A360769.P1807967326095761634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A360769.P1807967326095761634

namespace A360769

/-- `filter[A367455(n+1), A353569(#)]` -/
def P1807967326095761634.Spec : Prop :=
  ∀ n, P1807967326095761634.a n = A360769 (n + 1)

end A360769

/-! ## A360769.P11851836371368907291

`∩[2*n+1, A368089(n+1)]`
-/

namespace A360769.P11851836371368907291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P11851836371368907291

namespace A360769

/-- `∩[2*n+1, A368089(n+1)]` -/
def P11851836371368907291.Spec : Prop :=
  ∀ n, (P11851836371368907291.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P1375239278354552853

`∩[2*n+1, A367268(n+1)]`
-/

namespace A360769.P1375239278354552853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P1375239278354552853

namespace A360769

/-- `∩[2*n+1, A367268(n+1)]` -/
def P1375239278354552853.Spec : Prop :=
  ∀ n, (P1375239278354552853.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P16695930987210415391

`filter[A061346(n+1), A087049(#)]`
-/

namespace A360769.P16695930987210415391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A360769.P16695930987210415391

namespace A360769

/-- `filter[A061346(n+1), A087049(#)]` -/
def P16695930987210415391.Spec : Prop :=
  ∀ n, P16695930987210415391.a n = A360769 (n + 1)

end A360769

/-! ## A360769.P15185673305169215965

`filter[A061346(n+1), A353569(#)]`
-/

namespace A360769.P15185673305169215965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353569 (f1 j).toNat = 1) n)

end

end A360769.P15185673305169215965

namespace A360769

/-- `filter[A061346(n+1), A353569(#)]` -/
def P15185673305169215965.Spec : Prop :=
  ∀ n, P15185673305169215965.a n = A360769 (n + 1)

end A360769

/-! ## A360769.P1067530089478249712

`filter[A061346(n+1), A353626(#)]`
-/

namespace A360769.P1067530089478249712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A360769.P1067530089478249712

namespace A360769

/-- `filter[A061346(n+1), A353626(#)]` -/
def P1067530089478249712.Spec : Prop :=
  ∀ n, P1067530089478249712.a n = A360769 (n + 1)

end A360769

/-! ## A360769.P14629202934767982962

`filter[A061346(n+1), A359467(#)]`
-/

namespace A360769.P14629202934767982962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359467 (f1 j).toNat = 1) n)

end

end A360769.P14629202934767982962

namespace A360769

/-- `filter[A061346(n+1), A359467(#)]` -/
def P14629202934767982962.Spec : Prop :=
  ∀ n, P14629202934767982962.a n = A360769 (n + 1)

end A360769

/-! ## A360769.P6831848267443383289

`∩[A013929(n+1), A061346(n+1)]`
-/

namespace A360769.P6831848267443383289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P6831848267443383289

namespace A360769

/-- `∩[A013929(n+1), A061346(n+1)]` -/
def P6831848267443383289.Spec : Prop :=
  ∀ n, (P6831848267443383289.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P14607463496011805622

`∩[A038838(n+1), A061346(n+1)]`
-/

namespace A360769.P14607463496011805622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P14607463496011805622

namespace A360769

/-- `∩[A038838(n+1), A061346(n+1)]` -/
def P14607463496011805622.Spec : Prop :=
  ∀ n, (P14607463496011805622.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P9078397989593502886

`∩[A046790(n+1), A061346(n+1)]`
-/

namespace A360769.P9078397989593502886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P9078397989593502886

namespace A360769

/-- `∩[A046790(n+1), A061346(n+1)]` -/
def P9078397989593502886.Spec : Prop :=
  ∀ n, (P9078397989593502886.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P4373504835303214885

`∩[A053850(n+1), A061346(n+1)]`
-/

namespace A360769.P4373504835303214885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P4373504835303214885

namespace A360769

/-- `∩[A053850(n+1), A061346(n+1)]` -/
def P4373504835303214885.Spec : Prop :=
  ∀ n, (P4373504835303214885.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P8957222767067308387

`∩[A061346(n+1), A072903(n+1)]`
-/

namespace A360769.P8957222767067308387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P8957222767067308387

namespace A360769

/-- `∩[A061346(n+1), A072903(n+1)]` -/
def P8957222767067308387.Spec : Prop :=
  ∀ n, (P8957222767067308387.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P3599801596229331251

`∩[A061346(n+1), A082377(n+1)]`
-/

namespace A360769.P3599801596229331251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P3599801596229331251

namespace A360769

/-- `∩[A061346(n+1), A082377(n+1)]` -/
def P3599801596229331251.Spec : Prop :=
  ∀ n, (P3599801596229331251.a n : ℤ) = A360769 (n + 1)

end A360769

/-! ## A360769.P1272672533763254813

`∩[A061346(n+1), A143720(n+1)]`
-/

namespace A360769.P1272672533763254813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360769.P1272672533763254813

namespace A360769

/-- `∩[A061346(n+1), A143720(n+1)]` -/
def P1272672533763254813.Spec : Prop :=
  ∀ n, (P1272672533763254813.a n : ℤ) = A360769 (n + 1)

end A360769

/-!
# A360770: Expansion of Sum_{k>0} (x * (k + x^k))^k.

The programs for A360770, the canonical program `A360770.P3047966203637725631` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360770 has offset 1).

The definition of A360770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360770.P3047966203637725631

`∑{d}[n+1, #^(#-(n+1)/#+1)*C(#, (n+1)/#-1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360770

/-- `∑{d}[n+1, #^(#-(n+1)/#+1)*C(#, (n+1)/#-1)]` -/
def P3047966203637725631.Spec : Prop :=
  ∀ n, P3047966203637725631.a n = (A360770 (n + 1) : ℝ)

end A360770

/-! ## A360770.P844249312506460085

`A062796(n+1)-A115878(A000262(n))`
-/

namespace A360770.P844249312506460085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1) - A115878 (A000262 n).toNat

end

end A360770.P844249312506460085

namespace A360770

/-- `A062796(n+1)-A115878(A000262(n))` -/
def P844249312506460085.Spec : Prop :=
  ∀ n, P844249312506460085.a n = A360770 (n + 1)

end A360770

/-! ## A360770.P15781573704875992142

`A062796(n+1)-A065339(A052241(n))`
-/

namespace A360770.P15781573704875992142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062796 (n + 1) - A065339 (A052241 n).toNat

end

end A360770.P15781573704875992142

namespace A360770

/-- `A062796(n+1)-A065339(A052241(n))` -/
def P15781573704875992142.Spec : Prop :=
  ∀ n, P15781573704875992142.a n = A360770 (n + 1)

end A360770

/-!
# A360771: Expansion of Sum_{k>=0} (x * (2 + x^k))^k.

The programs for A360771, there is no canonical definition to state claims against.
-/

/-! ## A360771.P13414668835379045868

`A135304(A085613(n+2))`
-/

namespace A360771.P13414668835379045868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135304 (A085613 (n + 2)).toNat

end

end A360771.P13414668835379045868

/-! ## A360771.P8853923793401195206

`A091053(A062504(n+1))-1`
-/

namespace A360771.P8853923793401195206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091053 (A062504 (n + 1)).toNat - 1

end

end A360771.P8853923793401195206

/-! ## A360771.P998401815684167211

`A091053(A010785(n+2))-1`
-/

namespace A360771.P998401815684167211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091053 (A010785 (n + 2)).toNat - 1

end

end A360771.P998401815684167211

/-! ## A360771.P10129354708971215175

`A325799(A166752(n))+A000079(n)`
-/

namespace A360771.P10129354708971215175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325799 (A166752 n).toNat + A000079 n

end

end A360771.P10129354708971215175

/-!
# A360772: List of distinct numbers that are powers of odd-indexed Fibonacci numbers or even powers of nonzero even-indexed Fibonacci numbers.

The programs for A360772, there is no canonical definition to state claims against.
-/

/-! ## A360772.P8597215416203290144

`record[and(A051907(n+1), A151703(n))]`
-/

namespace A360772.P8597215416203290144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051907 (n + 1)) (A151703 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360772.P8597215416203290144

/-! ## A360772.P16260718016542923160

`lt[A296188(n+1), A040955(n)]+1`
-/

namespace A360772.P16260718016542923160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040955 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A360772.P16260718016542923160

/-! ## A360772.P10630980819498347040

`A025049(n)+A007814(A131135(n))`
-/

namespace A360772.P10630980819498347040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025049 n + A007814 (A131135 n).toNat

end

end A360772.P10630980819498347040

/-! ## A360772.P2587081735577548578

`A304465(A000207(n+3))+A000041(n)`
-/

namespace A360772.P2587081735577548578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A000207 (n + 3)).toNat + A000041 n

end

end A360772.P2587081735577548578

/-!
# A360774: Expansion of Sum_{k>=0} (x * (k + x))^k.

The programs for A360774, the canonical program `A360774.P9777645628579286219` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360774 has offset 0).

The definition of A360774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360774.P9777645628579286219

`∑{#}[floor(n/2), (n-#)^(n-2*#)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360774

/-- `∑{#}[floor(n/2), (n-#)^(n-2*#)*C(n-#, #)]` -/
def P9777645628579286219.Spec : Prop :=
  ∀ n, P9777645628579286219.a n = (A360774 n : ℚ)

end A360774

/-! ## A360774.P9383612367981769088

`or(A263677(A128695(n)), A302583(n))`
-/

namespace A360774.P9383612367981769088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A263677 (A128695 n).toNat) (A302583 n)

end

end A360774.P9383612367981769088

namespace A360774

/-- `or(A263677(A128695(n)), A302583(n))` -/
def P9383612367981769088.Spec : Prop :=
  ∀ n, P9383612367981769088.a n = A360774 n

end A360774

/-!
# A360775: Expansion of Sum_{k>=0} (x * (k + x^2))^k.

The programs for A360775, the canonical program `A360775.P9163914920092368260` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360775 has offset 0).

The definition of A360775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360775.P9163914920092368260

`∑{#}[floor(n/3), (n-2*#)^(n-3*#)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360775

/-- `∑{#}[floor(n/3), (n-2*#)^(n-3*#)*C(n-2*#, #)]` -/
def P9163914920092368260.Spec : Prop :=
  ∀ n, P9163914920092368260.a n = (A360775 n : ℚ)

end A360775

/-! ## A360775.P17312574244517401475

`A316669(∑[n^n-a(n-1)])` with `a(0)=1`
-/

namespace A360775.P17312574244517401475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n ^ n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A360775.P17312574244517401475

namespace A360775

/-- `A316669(∑[n^n-a(n-1)])` -/
def P17312574244517401475.Spec : Prop :=
  ∀ n, P17312574244517401475.a n = A360775 n

end A360775

/-!
# A360776: Expansion of Sum_{k>=0} (x * (k + x^3))^k.

The programs for A360776, the canonical program `A360776.P14792236231037904155` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360776 has offset 0).

The definition of A360776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360776.P14792236231037904155

`∑{#}[floor(n/4), (n-3*#)^(n-4*#)*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360776

/-- `∑{#}[floor(n/4), (n-3*#)^(n-4*#)*C(n-3*#, #)]` -/
def P14792236231037904155.Spec : Prop :=
  ∀ n, P14792236231037904155.a n = (A360776 n : ℚ)

end A360776

/-! ## A360776.P14259462061693123718

`A051761(A006720(n))+A000312(n)`
-/

namespace A360776.P14259462061693123718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051761 (A006720 n).toNat + A000312 n

end

end A360776.P14259462061693123718

namespace A360776

/-- `A051761(A006720(n))+A000312(n)` -/
def P14259462061693123718.Spec : Prop :=
  ∀ n, P14259462061693123718.a n = A360776 n

end A360776

/-! ## A360776.P2179030926666309110

`A051761(A051786(n))+A000312(n)`
-/

namespace A360776.P2179030926666309110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051761 (A051786 n).toNat + A000312 n

end

end A360776.P2179030926666309110

namespace A360776

/-- `A051761(A051786(n))+A000312(n)` -/
def P2179030926666309110.Spec : Prop :=
  ∀ n, P2179030926666309110.a n = A360776 n

end A360776

/-!
# A360779: Refactorable numbers gaps: differences between consecutive refactorable numbers.

The programs for A360779, the canonical program `A360779.P10771138546409897050` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360779 has offset 1).

The definition of A360779 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360779.P10771138546409897050

`A033950(n+2)-A033950(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A360779

/-- `A033950(n+2)-A033950(n+1)` -/
def P10771138546409897050.Spec : Prop :=
  ∀ n, P10771138546409897050.a n = A360779 (n + 1)

theorem P10771138546409897050.correct : P10771138546409897050.Spec := by
  intro n
  simp only [A360779, Nat.add_sub_cancel]

end A360779

/-! ## A360779.P16061935755063793311

`Δ[A033950(1+n)]`
-/

namespace A360779.P16061935755063793311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360779.P16061935755063793311

namespace A360779

/-- `Δ[A033950(1+n)]` -/
def P16061935755063793311.Spec : Prop :=
  ∀ n, P16061935755063793311.a n = A360779 (n + 1)

theorem P16061935755063793311.correct : P16061935755063793311.Spec := by
  intro n
  simp only [A360779, Nat.add_sub_cancel, A360779.P16061935755063793311.f1, A360779.P16061935755063793311.a, A360779.P10771138546409897050.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A360779

/-! ## A360779.P17392825869498846828

`Δ[A036762(n+1)*A039819(n+1)]`
-/

namespace A360779.P17392825869498846828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (n + 1) * A039819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360779.P17392825869498846828

namespace A360779

/-- `Δ[A036762(n+1)*A039819(n+1)]` -/
def P17392825869498846828.Spec : Prop :=
  ∀ n, P17392825869498846828.a n = A360779 (n + 1)

end A360779

/-! ## A360779.P9351652697524951589

`Δ[record[A122377(n+1)]]`
-/

namespace A360779.P9351652697524951589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A360779.P9351652697524951589

namespace A360779

/-- `Δ[record[A122377(n+1)]]` -/
def P9351652697524951589.Spec : Prop :=
  ∀ n, P9351652697524951589.a n = A360779 (n + 1)

end A360779

/-! ## A360779.P1575942728618344928

`runs[A208251(n+1)]`
-/

namespace A360779.P1575942728618344928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A360779.P1575942728618344928

namespace A360779

/-- `runs[A208251(n+1)]` -/
def P1575942728618344928.Spec : Prop :=
  ∀ n, (P1575942728618344928.a n : ℤ) = A360779 (n + 1)

end A360779

/-! ## A360779.P17070836757072346977

`runs[A209291(n+1)]`
-/

namespace A360779.P17070836757072346977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A360779.P17070836757072346977

namespace A360779

/-- `runs[A209291(n+1)]` -/
def P17070836757072346977.Spec : Prop :=
  ∀ n, (P17070836757072346977.a n : ℤ) = A360779 (n + 1)

end A360779

/-!
# A360780: Least refactorable number > n.

The programs for A360780, there is no canonical definition to state claims against.
-/

/-! ## A360780.P11532952824963067231

`A360778(n+1)+1+n`
-/

namespace A360780.P11532952824963067231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360778 (n + 1) + 1 + (n : ℤ)

end

end A360780.P11532952824963067231

/-! ## A360780.P1027034733031531162

`A033950(∑[char[A033950(n+1)]]+1)`
-/

namespace A360780.P1027034733031531162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A360780.P1027034733031531162

/-! ## A360780.P8005387387248829960

`A033950(comp[A033950(n+1)+n]+1-n)`
-/

namespace A360780.P8005387387248829960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 - n)

end

end A360780.P8005387387248829960

/-! ## A360780.P428059506561962924

`A033950(A368625(n+1)+A208251(n+1))`
-/

namespace A360780.P428059506561962924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (A368625 (n + 1) + A208251 (n + 1)).toNat

end

end A360780.P428059506561962924

/-!
# A360782: Expansion of Sum_{k>=0} x^k / (1 - k*x^2)^(k+1).

The programs for A360782, the canonical program `A360782.P17893753886442895457` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360782 has offset 0).

The definition of A360782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360782.P17893753886442895457

`∑{#}[floor(n/2), (n-2*#)^#*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360782

/-- `∑{#}[floor(n/2), (n-2*#)^#*C(n-#, #)]` -/
def P17893753886442895457.Spec : Prop :=
  ∀ n, P17893753886442895457.a n = A360782 n

theorem P17893753886442895457.correct : P17893753886442895457.Spec := by
  intro n
  simp only [A360782]

end A360782

/-! ## A360782.P15849655657350321806

`A256555(A165538(n))`
-/

namespace A360782.P15849655657350321806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256555 (A165538 n).toNat

end

end A360782.P15849655657350321806

namespace A360782

/-- `A256555(A165538(n))` -/
def P15849655657350321806.Spec : Prop :=
  ∀ n, P15849655657350321806.a n = A360782 n

end A360782

/-! ## A360782.P16490323809021159044

`A003056(A397101(n²))`
-/

namespace A360782.P16490323809021159044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A397101 (n ^ 2)).toNat

end

end A360782.P16490323809021159044

namespace A360782

/-- `A003056(A397101(n²))` -/
def P16490323809021159044.Spec : Prop :=
  ∀ n, P16490323809021159044.a n = A360782 n

end A360782

/-! ## A360782.P11535983672664608315

`A050296(A210528(ceil(2^(n-1))²))`
-/

namespace A360782.P11535983672664608315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A210528 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2).toNat).toNat

end

end A360782.P11535983672664608315

namespace A360782

/-- `A050296(A210528(ceil(2^(n-1))²))` -/
def P11535983672664608315.Spec : Prop :=
  ∀ n, P11535983672664608315.a n = A360782 n

end A360782

/-!
# A360783: Expansion of Sum_{k>=0} x^k / (1 - k*x^3)^(k+1).

The programs for A360783, the canonical program `A360783.P14863174319554655008` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360783 has offset 0).

The definition of A360783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360783.P14863174319554655008

`∑{#}[floor(n/3), (n-3*#)^#*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360783

/-- `∑{#}[floor(n/3), (n-3*#)^#*C(n-2*#, #)]` -/
def P14863174319554655008.Spec : Prop :=
  ∀ n, P14863174319554655008.a n = A360783 n

theorem P14863174319554655008.correct : P14863174319554655008.Spec := by
  intro n
  simp only [A360783]

end A360783

/-! ## A360783.P3420263323648168134

`A366319(A346733(n))`
-/

namespace A360783.P3420263323648168134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366319 (A346733 n).toNat

end

end A360783.P3420263323648168134

namespace A360783

/-- `A366319(A346733(n))` -/
def P3420263323648168134.Spec : Prop :=
  ∀ n, P3420263323648168134.a n = A360783 n

end A360783

/-! ## A360783.P9971652030422701136

`A377436(A344491(n))`
-/

namespace A360783.P9971652030422701136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377436 (A344491 n).toNat

end

end A360783.P9971652030422701136

namespace A360783

/-- `A377436(A344491(n))` -/
def P9971652030422701136.Spec : Prop :=
  ∀ n, P9971652030422701136.a n = A360783 n

end A360783

/-! ## A360783.P16644021344747018184

`A377436(round(sqrt(A000111(n))))`
-/

namespace A360783.P16644021344747018184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377436 (SequenceMachineLib.roundAway (Real.sqrt (A000111 n : ℝ))).toNat

end

end A360783.P16644021344747018184

namespace A360783

/-- `A377436(round(sqrt(A000111(n))))` -/
def P16644021344747018184.Spec : Prop :=
  ∀ n, P16644021344747018184.a n = A360783 n

end A360783

/-! ## A360783.P3697573006648382597

`A196158(n+1-A057682(n))`
-/

namespace A360783.P3697573006648382597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196158 ((n + 1 : ℤ) - A057682 n).toNat

end

end A360783.P3697573006648382597

namespace A360783

/-- `A196158(n+1-A057682(n))` -/
def P3697573006648382597.Spec : Prop :=
  ∀ n, P3697573006648382597.a n = A360783 n

end A360783

/-!
# A360784: Number of multisets of nonempty strict integer partitions with a total of n parts and total sum of 2n.

The programs for A360784, there is no canonical definition to state claims against.
-/

/-! ## A360784.P5855283534863549473

`A360763(C(2*n+1, 2)+n)`
-/

namespace A360784.P5855283534863549473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (Nat.choose (2 * n + 1) 2 + n)

end

end A360784.P5855283534863549473

/-! ## A360784.P12413817314231753183

`A360763(∑[4*n])`
-/

namespace A360784.P12413817314231753183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A360784.P12413817314231753183

/-! ## A360784.P11172502506730264318

`lcm((-1)^n, A360763(A046092(n)))`
-/

namespace A360784.P11172502506730264318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A360763 (A046092 n).toNat)

end

end A360784.P11172502506730264318

/-! ## A360784.P14464821014830822102

`A360763(A046092(n))+A035457(2*n+1)`
-/

namespace A360784.P14464821014830822102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A046092 n).toNat + A035457 (2 * n + 1)

end

end A360784.P14464821014830822102

/-! ## A360784.P16215434288709095491

`(A010892(3*n+2)+1)^n*A360763(A046092(n))`
-/

namespace A360784.P16215434288709095491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010892 (3 * n + 2) + 1) ^ n * A360763 (A046092 n).toNat

end

end A360784.P16215434288709095491

/-! ## A360784.P967275339728762626

`A100995(A081634(n+1))^n*A360763(A046092(n))`
-/

namespace A360784.P967275339728762626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A081634 (n + 1)).toNat ^ n * A360763 (A046092 n).toNat

end

end A360784.P967275339728762626

/-! ## A360784.P7978836728272810564

`A228570(A204909(n+1))^n*A360763(A046092(n))`
-/

namespace A360784.P7978836728272810564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228570 (A204909 (n + 1)).toNat ^ n * A360763 (A046092 n).toNat

end

end A360784.P7978836728272810564

/-! ## A360784.P7877628059723260901

`A228570(A349258(3*n+4))^n*A360763(A046092(n))`
-/

namespace A360784.P7877628059723260901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228570 (A349258 (3 * n + 4)).toNat ^ n * A360763 (A046092 n).toNat

end

end A360784.P7877628059723260901

/-! ## A360784.P5515917300560974600

`A103447(A295554(n+1))^n*A360763(A046092(n))`
-/

namespace A360784.P5515917300560974600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103447 (A295554 (n + 1)).toNat ^ n * A360763 (A046092 n).toNat

end

end A360784.P5515917300560974600

/-!
# A360785: Number of multisets of nonempty strict integer partitions with a total of 2n parts and total sum of 3n.

The programs for A360785, there is no canonical definition to state claims against.
-/

/-! ## A360785.P12360019745891520383

`A360763(C(3*n+1, 2)+2*n)`
-/

namespace A360785.P12360019745891520383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (Nat.choose (3 * n + 1) 2 + 2 * n)

end

end A360785.P12360019745891520383

/-! ## A360785.P17641933142946821874

`∑{#}[n, A089259(#)*A089259(n-#)]`
-/

namespace A360785.P17641933142946821874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A089259 k * A089259 (n - k)

end

end A360785.P17641933142946821874

/-! ## A360785.P17596823397594530751

`A360763(A062728(n))`
-/

namespace A360785.P17596823397594530751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A062728 n).toNat

end

end A360785.P17596823397594530751

/-! ## A360785.P14598345058941273199

`A360763(A022267(n+1))`
-/

namespace A360785.P14598345058941273199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A022267 (n + 1)).toNat

end

end A360785.P14598345058941273199

/-! ## A360785.P10862489584896725714

`A360763(A062708(n+1))`
-/

namespace A360785.P10862489584896725714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A062708 (n + 1)).toNat

end

end A360785.P10862489584896725714

/-! ## A360785.P2971138452539703098

`A360763(A064226(n)-1)`
-/

namespace A360785.P2971138452539703098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A064226 n - 1).toNat

end

end A360785.P2971138452539703098

/-! ## A360785.P13014176875222635874

`A360763(A081267(n)-1)`
-/

namespace A360785.P13014176875222635874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A081267 n - 1).toNat

end

end A360785.P13014176875222635874

/-! ## A360785.P7214988222078945052

`A360763(A064226(n+1))`
-/

namespace A360785.P7214988222078945052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A064226 (n + 1)).toNat

end

end A360785.P7214988222078945052

/-! ## A360785.P17518548358850296141

`A360763(A081267(n+1))`
-/

namespace A360785.P17518548358850296141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A081267 (n + 1)).toNat

end

end A360785.P17518548358850296141

/-! ## A360785.P2290364758317794944

`A360763(A139277(n))`
-/

namespace A360785.P2290364758317794944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360763 (A139277 n).toNat

end

end A360785.P2290364758317794944

/-!
# A360786: Number of ways to place two dimers on an n-cube.

The programs for A360786, the canonical program `A360786.P1135666866067254998` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360786 has offset 1).

The definition of A360786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360786.P1135666866067254998

`2^(n-2)*(n+1)*((2^(n+1)-4)*(n+1)+2)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360786

/-- `2^(n-2)*(n+1)*((2^(n+1)-4)*(n+1)+2)` -/
def P1135666866067254998.Spec : Prop :=
  ∀ n, P1135666866067254998.a n = (A360786 (n + 1) : ℚ)

end A360786

/-! ## A360786.P10295209354762560827

`C(A001787(n+1)-n, 2)-∑[n]`
-/

namespace A360786.P10295209354762560827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001787 (n + 1) - (n : ℤ)).toNat 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A360786.P10295209354762560827

namespace A360786

/-- `C(A001787(n+1)-n, 2)-∑[n]` -/
def P10295209354762560827.Spec : Prop :=
  ∀ n, P10295209354762560827.a n = A360786 (n + 1)

end A360786

/-! ## A360786.P11562987658082693282

`A000217((n+1)*(2^n-1))-∑[n]`
-/

namespace A360786.P11562987658082693282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1 : ℤ) * ((2 ^ n : ℤ) - 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A360786.P11562987658082693282

namespace A360786

/-- `A000217((n+1)*(2^n-1))-∑[n]` -/
def P11562987658082693282.Spec : Prop :=
  ∀ n, P11562987658082693282.a n = A360786 (n + 1)

end A360786

/-! ## A360786.P17045346044879829714

`A000124((n+1)*(2^n-1))-A000124(n)`
-/

namespace A360786.P17045346044879829714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 ((n + 1 : ℤ) * ((2 ^ n : ℤ) - 1)).toNat - A000124 n

end

end A360786.P17045346044879829714

namespace A360786

/-- `A000124((n+1)*(2^n-1))-A000124(n)` -/
def P17045346044879829714.Spec : Prop :=
  ∀ n, P17045346044879829714.a n = A360786 (n + 1)

end A360786

/-! ## A360786.P14731578324837175795

`A133263(A058877(n+1))-A133263(n)`
-/

namespace A360786.P14731578324837175795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A058877 (n + 1)).toNat - A133263 n

end

end A360786.P14731578324837175795

namespace A360786

/-- `A133263(A058877(n+1))-A133263(n)` -/
def P14731578324837175795.Spec : Prop :=
  ∀ n, P14731578324837175795.a n = A360786 (n + 1)

end A360786

/-!
# A360787: Expansion of Sum_{k>=0} x^k / (1 - (k*x)^2)^(k+1).

The programs for A360787, the canonical program `A360787.P4825984225911829581` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360787 has offset 0).

The definition of A360787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360787.P4825984225911829581

`∑{#}[floor(n/2), (n-2*#)^(2*#)*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360787

/-- `∑{#}[floor(n/2), (n-2*#)^(2*#)*C(n-#, #)]` -/
def P4825984225911829581.Spec : Prop :=
  ∀ n, P4825984225911829581.a n = A360787 n

theorem P4825984225911829581.correct : P4825984225911829581.Spec := by
  intro n
  simp only [A360787]

end A360787

/-! ## A360787.P5542153286160174465

`A329159(A094373(n))-n`
-/

namespace A360787.P5542153286160174465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329159 (A094373 n).toNat - (n : ℤ)

end

end A360787.P5542153286160174465

namespace A360787

/-- `A329159(A094373(n))-n` -/
def P5542153286160174465.Spec : Prop :=
  ∀ n, P5542153286160174465.a n = A360787 n

end A360787

/-! ## A360787.P2579689471829526451

`A329159(∑[A023421(n+2)])-n`
-/

namespace A360787.P2579689471829526451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023421 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329159 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A360787.P2579689471829526451

namespace A360787

/-- `A329159(∑[A023421(n+2)])-n` -/
def P2579689471829526451.Spec : Prop :=
  ∀ n, P2579689471829526451.a n = A360787 n

end A360787

/-!
# A360788: Expansion of Sum_{k>=0} x^k / (1 - (k*x)^3)^(k+1).

The programs for A360788, the canonical program `A360788.P5896502650205681562` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360788 has offset 0).

The definition of A360788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360788.P5896502650205681562

`∑{#}[floor(n/3), (n-3*#)^(3*#)*C(n-2*#, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360788

/-- `∑{#}[floor(n/3), (n-3*#)^(3*#)*C(n-2*#, #)]` -/
def P5896502650205681562.Spec : Prop :=
  ∀ n, P5896502650205681562.a n = A360788 n

theorem P5896502650205681562.correct : P5896502650205681562.Spec := by
  intro n
  simp only [A360788]

end A360788

/-! ## A360788.P2687799052199742989

`A290649(C(n+3, 7))`
-/

namespace A360788.P2687799052199742989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290649 (Nat.choose (n + 3) 7)

end

end A360788.P2687799052199742989

namespace A360788

/-- `A290649(C(n+3, 7))` -/
def P2687799052199742989.Spec : Prop :=
  ∀ n, P2687799052199742989.a n = A360788 n

end A360788

/-! ## A360788.P13233298550722622032

`A124389(abs(1-(-2)^n)-n*(-1)^n)`
-/

namespace A360788.P13233298550722622032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124389 (|1 - (-2) ^ n| - (n : ℤ) * (-1) ^ n).toNat

end

end A360788.P13233298550722622032

namespace A360788

/-- `A124389(abs(1-(-2)^n)-n*(-1)^n)` -/
def P13233298550722622032.Spec : Prop :=
  ∀ n, P13233298550722622032.a n = A360788 n

end A360788

/-!
# A360789: Least prime p such that p mod primepi(p) = n.

The programs for A360789, there is no canonical definition to state claims against.
-/

/-! ## A360789.P12415142872443993205

`A000040(A073325(n))`
-/

namespace A360789.P12415142872443993205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A073325 n).toNat

end

end A360789.P12415142872443993205

/-!
# A360790: Squared length of diagonal of right trapezoid with three consecutive prime length sides.

The programs for A360790, the canonical program `A360790.P1191159988977339540` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360790 has offset 1).

The definition of A360790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360790.P1191159988977339540

`A001248(n+1)+A076821(n+2)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A360790

/-- `A001248(n+1)+A076821(n+2)` -/
def P1191159988977339540.Spec : Prop :=
  ∀ n, P1191159988977339540.a n = A360790 (n + 1)

theorem P1191159988977339540.correct : P1191159988977339540.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel]

end A360790

/-! ## A360790.P8253993452598990640

`A000040(n+1)²+(A000040(n+3)-A000040(n+2))²`
-/

namespace A360790.P8253993452598990640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + (A000040 (n + 3) - A000040 (n + 2)) ^ 2

end

end A360790.P8253993452598990640

namespace A360790

/-- `A000040(n+1)²+(A000040(n+3)-A000040(n+2))²` -/
def P8253993452598990640.Spec : Prop :=
  ∀ n, P8253993452598990640.a n = A360790 (n + 1)

theorem P8253993452598990640.correct : P8253993452598990640.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P8253993452598990640.a, A360790.P1191159988977339540.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A076821, A076821.P15340504469380767190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P8669276054838472569

`A001248(n+1)+A001223(n+2)²`
-/

namespace A360790.P8669276054838472569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A001223 (n + 2) ^ 2

end

end A360790.P8669276054838472569

namespace A360790

/-- `A001248(n+1)+A001223(n+2)²` -/
def P8669276054838472569.Spec : Prop :=
  ∀ n, P8669276054838472569.a n = A360790 (n + 1)

end A360790

/-! ## A360790.P1765113079583951001

`A001223(n+2)²+Δ[A007504(n)]²`
-/

namespace A360790.P1765113079583951001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) ^ 2 + (f1 (n + 1) - f1 n) ^ 2

end

end A360790.P1765113079583951001

namespace A360790

/-- `A001223(n+2)²+Δ[A007504(n)]²` -/
def P1765113079583951001.Spec : Prop :=
  ∀ n, P1765113079583951001.a n = A360790 (n + 1)

end A360790

/-! ## A360790.P15079624319713431114

`(A006093(n+1)+1)²+A001223(n+2)²`
-/

namespace A360790.P15079624319713431114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) ^ 2 + A001223 (n + 2) ^ 2

end

end A360790.P15079624319713431114

namespace A360790

/-- `(A006093(n+1)+1)²+A001223(n+2)²` -/
def P15079624319713431114.Spec : Prop :=
  ∀ n, P15079624319713431114.a n = A360790 (n + 1)

theorem P15079624319713431114.correct : P15079624319713431114.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P15079624319713431114.a, A360790.P1191159988977339540.a, A001223, A001223.P5034056745985311719.a, A001248, A001248.P16278241061688229202.a, A006093, A006093.P2906174024863549003.a, A076821, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P16041365545632988462

`(A008864(n+1)-1)²+A001223(n+2)²`
-/

namespace A360790.P16041365545632988462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) ^ 2 + A001223 (n + 2) ^ 2

end

end A360790.P16041365545632988462

namespace A360790

/-- `(A008864(n+1)-1)²+A001223(n+2)²` -/
def P16041365545632988462.Spec : Prop :=
  ∀ n, P16041365545632988462.a n = A360790 (n + 1)

theorem P16041365545632988462.correct : P16041365545632988462.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P16041365545632988462.a, A360790.P1191159988977339540.a, A001223, A001223.P5034056745985311719.a, A001248, A001248.P16278241061688229202.a, A008864, A008864.P9177617808325052279.a, A076821, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P16936957671777415554

`(A001748(n+1)/3)²+A001223(n+2)²`
-/

namespace A360790.P16936957671777415554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ 2 + (A001223 (n + 2) ^ 2 : ℚ)

end

end A360790.P16936957671777415554

namespace A360790

/-- `(A001748(n+1)/3)²+A001223(n+2)²` -/
def P16936957671777415554.Spec : Prop :=
  ∀ n, P16936957671777415554.a n = (A360790 (n + 1) : ℚ)

theorem P16936957671777415554.correct : P16936957671777415554.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P16936957671777415554.a, A360790.P1191159988977339540.a, A001223, A001223.P5034056745985311719.a, A001248, A001248.P16278241061688229202.a, A001748, A001748.P16019639290970068825.a, A076821, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P17374407067963134879

`A133529(n+1)-A069486(n+2)`
-/

namespace A360790.P17374407067963134879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) - A069486 (n + 2)

end

end A360790.P17374407067963134879

namespace A360790

/-- `A133529(n+1)-A069486(n+2)` -/
def P17374407067963134879.Spec : Prop :=
  ∀ n, P17374407067963134879.a n = A360790 (n + 1)

theorem P17374407067963134879.correct : P17374407067963134879.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P17374407067963134879.a, A360790.P1191159988977339540.a, A001248, A001248.P16278241061688229202.a, A069486, A069486.P4196932283638993766.a, A076821, A076821.P15340504469380767190.a, A133529, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P3675986223182596508

`A001248(n+1)+Δ[A065091(n+1)]²`
-/

namespace A360790.P3675986223182596508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A360790.P3675986223182596508

namespace A360790

/-- `A001248(n+1)+Δ[A065091(n+1)]²` -/
def P3675986223182596508.Spec : Prop :=
  ∀ n, P3675986223182596508.a n = A360790 (n + 1)

theorem P3675986223182596508.correct : P3675986223182596508.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P3675986223182596508.f1, A360790.P3675986223182596508.a, A360790.P1191159988977339540.a, A001248, A001248.P16278241061688229202.a, A065091, A065091.P6971844946592549357.a, A076821, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P11694899436896587775

`Δ[A074741(n+1)]+A000040(n+1)²`
-/

namespace A360790.P11694899436896587775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000040 (n + 1) ^ 2

end

end A360790.P11694899436896587775

namespace A360790

/-- `Δ[A074741(n+1)]+A000040(n+1)²` -/
def P11694899436896587775.Spec : Prop :=
  ∀ n, P11694899436896587775.a n = A360790 (n + 1)

end A360790

/-! ## A360790.P9303429410086029678

`A076821(n+2)+A000040(n+1)*A000040(n+1)`
-/

namespace A360790.P9303429410086029678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076821 (n + 2) + A000040 (n + 1) * A000040 (n + 1)

end

end A360790.P9303429410086029678

namespace A360790

/-- `A076821(n+2)+A000040(n+1)*A000040(n+1)` -/
def P9303429410086029678.Spec : Prop :=
  ∀ n, P9303429410086029678.a n = A360790 (n + 1)

theorem P9303429410086029678.correct : P9303429410086029678.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P9303429410086029678.a, A360790.P1191159988977339540.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A076821, A076821.P15340504469380767190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P3027108757039225867

`A001248(n+1)+A054541(n+3)²`
-/

namespace A360790.P3027108757039225867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + A054541 (n + 3) ^ 2

end

end A360790.P3027108757039225867

namespace A360790

/-- `A001248(n+1)+A054541(n+3)²` -/
def P3027108757039225867.Spec : Prop :=
  ∀ n, P3027108757039225867.a n = A360790 (n + 1)

end A360790

/-! ## A360790.P3710321074351821727

`A001248(n+1)+Δ[A000040(n+2)]²`
-/

namespace A360790.P3710321074351821727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A360790.P3710321074351821727

namespace A360790

/-- `A001248(n+1)+Δ[A000040(n+2)]²` -/
def P3710321074351821727.Spec : Prop :=
  ∀ n, P3710321074351821727.a n = A360790 (n + 1)

theorem P3710321074351821727.correct : P3710321074351821727.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P3710321074351821727.f1, A360790.P3710321074351821727.a, A360790.P1191159988977339540.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A076821, A076821.P15340504469380767190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P18443762736696245440

`A001248(n+1)+Δ[A040976(n+2)]²`
-/

namespace A360790.P18443762736696245440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A360790.P18443762736696245440

namespace A360790

/-- `A001248(n+1)+Δ[A040976(n+2)]²` -/
def P18443762736696245440.Spec : Prop :=
  ∀ n, P18443762736696245440.a n = A360790 (n + 1)

theorem P18443762736696245440.correct : P18443762736696245440.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P18443762736696245440.f1, A360790.P18443762736696245440.a, A360790.P1191159988977339540.a, A001248, A001248.P16278241061688229202.a, A040976, A040976.P11599754272797435513.a, A076821, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P11087284226355793900

`Δ[A006093(n+2)]²+p?[A259153(n)]²`
-/

namespace A360790.P11087284226355793900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

end

end A360790.P11087284226355793900

namespace A360790

/-- `Δ[A006093(n+2)]²+p?[A259153(n)]²` -/
def P11087284226355793900.Spec : Prop :=
  ∀ n, P11087284226355793900.a n = A360790 (n + 1)

end A360790

/-! ## A360790.P15024706565339999981

`A000040(n+1)²+Δ[A000040(n+2)]²`
-/

namespace A360790.P15024706565339999981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + (f1 (n + 1) - f1 n) ^ 2

end

end A360790.P15024706565339999981

namespace A360790

/-- `A000040(n+1)²+Δ[A000040(n+2)]²` -/
def P15024706565339999981.Spec : Prop :=
  ∀ n, P15024706565339999981.a n = A360790 (n + 1)

theorem P15024706565339999981.correct : P15024706565339999981.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P15024706565339999981.f1, A360790.P15024706565339999981.a, A360790.P1191159988977339540.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A076821, A076821.P15340504469380767190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P17200538839200174519

`(A040976(n+1)+2)²+Δ[A006093(n+2)]²`
-/

namespace A360790.P17200538839200174519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2 + (f1 (n + 1) - f1 n) ^ 2

end

end A360790.P17200538839200174519

namespace A360790

/-- `(A040976(n+1)+2)²+Δ[A006093(n+2)]²` -/
def P17200538839200174519.Spec : Prop :=
  ∀ n, P17200538839200174519.a n = A360790 (n + 1)

theorem P17200538839200174519.correct : P17200538839200174519.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P17200538839200174519.f1, A360790.P17200538839200174519.a, A360790.P1191159988977339540.a, A001248, A001248.P16278241061688229202.a, A006093, A006093.P2906174024863549003.a, A040976, A040976.P11599754272797435513.a, A076821, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P14728454248188320350

`(A001748(n+1)/3)²+Δ[A006093(n+2)]²`
-/

namespace A360790.P14728454248188320350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ 2 + ((f1 (n + 1) - f1 n) ^ 2 : ℚ)

end

end A360790.P14728454248188320350

namespace A360790

/-- `(A001748(n+1)/3)²+Δ[A006093(n+2)]²` -/
def P14728454248188320350.Spec : Prop :=
  ∀ n, P14728454248188320350.a n = (A360790 (n + 1) : ℚ)

theorem P14728454248188320350.correct : P14728454248188320350.Spec := by
  intro n
  simp only [A360790, Nat.add_sub_cancel, A360790.P14728454248188320350.f1, A360790.P14728454248188320350.a, A360790.P1191159988977339540.a, A001248, A001248.P16278241061688229202.a, A001748, A001748.P16019639290970068825.a, A006093, A006093.P2906174024863549003.a, A076821, A076821.P15340504469380767190.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A360790

/-! ## A360790.P4003638170036845661

`p?[A018252(n+1)-7]²+A001223(n+2)²`
-/

namespace A360790.P4003638170036845661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + A001223 (n + 2) ^ 2

end

end A360790.P4003638170036845661

namespace A360790

/-- `p?[A018252(n+1)-7]²+A001223(n+2)²` -/
def P4003638170036845661.Spec : Prop :=
  ∀ n, P4003638170036845661.a n = A360790 (n + 1)

end A360790

/-! ## A360790.P2747659039832704068

`p?[A018252(n+1)-7]²+A054541(n+3)²`
-/

namespace A360790.P2747659039832704068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + A054541 (n + 3) ^ 2

end

end A360790.P2747659039832704068

namespace A360790

/-- `p?[A018252(n+1)-7]²+A054541(n+3)²` -/
def P2747659039832704068.Spec : Prop :=
  ∀ n, P2747659039832704068.a n = A360790 (n + 1)

end A360790

/-!
# A360792: Integer portion of area of inscribed circle in a regular polygon having n sides of unit length.

The programs for A360792, the canonical program `A360792.P5136335204588232441` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360792 has offset 3).

The definition of A360792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360792.P5136335204588232441

`floor(π/(2*tan(π/(n+3)))²)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360792

/-- `floor(π/(2*tan(π/(n+3)))²)` -/
def P5136335204588232441.Spec : Prop :=
  ∀ n, P5136335204588232441.a n = A360792 (n + 3)

theorem P5136335204588232441.correct : P5136335204588232441.Spec := by
  intro n
  simp only [A360792, Nat.add_sub_cancel]

end A360792

/-! ## A360792.P5200591122451701845

`floor(π/4*cot(π/(n+3))²)`
-/

namespace A360792.P5200591122451701845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi / 4 * Real.cot (Real.pi / (n + 3 : ℝ)) ^ 2⌋

end

end A360792.P5200591122451701845

namespace A360792

/-- `floor(π/4*cot(π/(n+3))²)` -/
def P5200591122451701845.Spec : Prop :=
  ∀ n, P5200591122451701845.a n = A360792 (n + 3)

end A360792

/-! ## A360792.P10142572343947203146

`floor(lt[A171307(3*n+2), n+5]/2)`
-/

namespace A360792.P10142572343947203146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171307 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2⌋

end

end A360792.P10142572343947203146

namespace A360792

/-- `floor(lt[A171307(3*n+2), n+5]/2)` -/
def P10142572343947203146.Spec : Prop :=
  ∀ n, P10142572343947203146.a n = A360792 (n + 3)

end A360792

/-! ## A360792.P17131381074270168233

`floor(floor(A002024(A070735(n+1))/2)/2)`
-/

namespace A360792.P17131381074270168233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A002024 (A070735 (n + 1)).toNat : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A360792.P17131381074270168233

namespace A360792

/-- `floor(floor(A002024(A070735(n+1))/2)/2)` -/
def P17131381074270168233.Spec : Prop :=
  ∀ n, P17131381074270168233.a n = A360792 (n + 3)

end A360792

/-! ## A360792.P5293846667495867395

`floor(∑[n+2]%A008451(A000931(2*(n+1)))/6)`
-/

namespace A360792.P5293846667495867395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A008451 (A000931 (2 * (n + 1))).toNat) : ℚ) / 6⌋

end

end A360792.P5293846667495867395

namespace A360792

/-- `floor(∑[n+2]%A008451(A000931(2*(n+1)))/6)` -/
def P5293846667495867395.Spec : Prop :=
  ∀ n, P5293846667495867395.a n = A360792 (n + 3)

end A360792

/-!
# A360793: Numbers of the form m*p^3, where m > 1 is squarefree and prime p does not divide m.

The programs for A360793, the canonical program `A360793.P3059048481711579706` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360793 has offset 1).

The definition of A360793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360793.P13097381606962372687

`∩[A195086(n+1), A390128(n+1)]`
-/

namespace A360793.P13097381606962372687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P13097381606962372687

namespace A360793

/-- `∩[A195086(n+1), A390128(n+1)]` -/
def P13097381606962372687.Spec : Prop :=
  ∀ n, (P13097381606962372687.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P18274934290400565776

`∩[A048109(n+1), A362594(n+1)]`
-/

namespace A360793.P18274934290400565776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P18274934290400565776

namespace A360793

/-- `∩[A048109(n+1), A362594(n+1)]` -/
def P18274934290400565776.Spec : Prop :=
  ∀ n, (P18274934290400565776.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P2360119069022738411

`∩[A195086(n+1), A362594(n+1)]`
-/

namespace A360793.P2360119069022738411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P2360119069022738411

namespace A360793

/-- `∩[A195086(n+1), A362594(n+1)]` -/
def P2360119069022738411.Spec : Prop :=
  ∀ n, (P2360119069022738411.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P310243992445231908

`record[A052410(A048109(n+2))]`
-/

namespace A360793.P310243992445231908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A048109 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360793.P310243992445231908

namespace A360793

/-- `record[A052410(A048109(n+2))]` -/
def P310243992445231908.Spec : Prop :=
  ∀ n, P310243992445231908.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P11600139348844489227

`filter[A048109(n+1), A355447(#)]`
-/

namespace A360793.P11600139348844489227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A360793.P11600139348844489227

namespace A360793

/-- `filter[A048109(n+1), A355447(#)]` -/
def P11600139348844489227.Spec : Prop :=
  ∀ n, P11600139348844489227.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P17377760255849926166

`filter[A362594(n+1), A359472(#)]`
-/

namespace A360793.P17377760255849926166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A360793.P17377760255849926166

namespace A360793

/-- `filter[A362594(n+1), A359472(#)]` -/
def P17377760255849926166.Spec : Prop :=
  ∀ n, P17377760255849926166.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P11213626755153528408

`filter[A390128(n+1), A359466(#)]`
-/

namespace A360793.P11213626755153528408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A360793.P11213626755153528408

namespace A360793

/-- `filter[A390128(n+1), A359466(#)]` -/
def P11213626755153528408.Spec : Prop :=
  ∀ n, P11213626755153528408.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P16320004371891308711

`filter[A390128(n+1), A359472(#)]`
-/

namespace A360793.P16320004371891308711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A360793.P16320004371891308711

namespace A360793

/-- `filter[A390128(n+1), A359472(#)]` -/
def P16320004371891308711.Spec : Prop :=
  ∀ n, P16320004371891308711.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P3059048481711579706

`filter[A391497(n+1), A359466(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A360793

/-- `filter[A391497(n+1), A359466(#)]` -/
def P3059048481711579706.Spec : Prop :=
  ∀ n, P3059048481711579706.a n = A360793 (n + 1)

theorem P3059048481711579706.correct : P3059048481711579706.Spec := by
  intro n
  simp only [A360793, Nat.add_sub_cancel]

end A360793

/-! ## A360793.P3569953728835313974

`filter[A391497(n+1), A359472(#)]`
-/

namespace A360793.P3569953728835313974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A360793.P3569953728835313974

namespace A360793

/-- `filter[A391497(n+1), A359472(#)]` -/
def P3569953728835313974.Spec : Prop :=
  ∀ n, P3569953728835313974.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P5274004822312166341

`filter[A048109(n+1), A389905(#)]`
-/

namespace A360793.P5274004822312166341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A360793.P5274004822312166341

namespace A360793

/-- `filter[A048109(n+1), A389905(#)]` -/
def P5274004822312166341.Spec : Prop :=
  ∀ n, P5274004822312166341.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P13776701831552156945

`filter[A391319(n+1), A359472(#)]`
-/

namespace A360793.P13776701831552156945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A360793.P13776701831552156945

namespace A360793

/-- `filter[A391319(n+1), A359472(#)]` -/
def P13776701831552156945.Spec : Prop :=
  ∀ n, P13776701831552156945.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P8950437875477149669

`∩[A391319(n+1), A048109(n+1)]`
-/

namespace A360793.P8950437875477149669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P8950437875477149669

namespace A360793

/-- `∩[A391319(n+1), A048109(n+1)]` -/
def P8950437875477149669.Spec : Prop :=
  ∀ n, (P8950437875477149669.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P6896303633357596898

`∩[A195086(n+1), A391319(n+1)]`
-/

namespace A360793.P6896303633357596898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P6896303633357596898

namespace A360793

/-- `∩[A195086(n+1), A391319(n+1)]` -/
def P6896303633357596898.Spec : Prop :=
  ∀ n, (P6896303633357596898.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P1003804840520057080

`filter[A391415(n+1), A359472(#)]`
-/

namespace A360793.P1003804840520057080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A360793.P1003804840520057080

namespace A360793

/-- `filter[A391415(n+1), A359472(#)]` -/
def P1003804840520057080.Spec : Prop :=
  ∀ n, P1003804840520057080.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P1476030731020861817

`∩[A391415(n+1), A048109(n+1)]`
-/

namespace A360793.P1476030731020861817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P1476030731020861817

namespace A360793

/-- `∩[A391415(n+1), A048109(n+1)]` -/
def P1476030731020861817.Spec : Prop :=
  ∀ n, (P1476030731020861817.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P14446882682159181240

`filter[A362148(n+1), A359472(#)]`
-/

namespace A360793.P14446882682159181240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A360793.P14446882682159181240

namespace A360793

/-- `filter[A362148(n+1), A359472(#)]` -/
def P14446882682159181240.Spec : Prop :=
  ∀ n, P14446882682159181240.a n = A360793 (n + 1)

end A360793

/-! ## A360793.P7485520290783997184

`∩[A048109(n+1), A362148(n+1)]`
-/

namespace A360793.P7485520290783997184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P7485520290783997184

namespace A360793

/-- `∩[A048109(n+1), A362148(n+1)]` -/
def P7485520290783997184.Spec : Prop :=
  ∀ n, (P7485520290783997184.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P9645013522808376131

`∩[A195086(n+1), A362148(n+1)]`
-/

namespace A360793.P9645013522808376131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360793.P9645013522808376131

namespace A360793

/-- `∩[A195086(n+1), A362148(n+1)]` -/
def P9645013522808376131.Spec : Prop :=
  ∀ n, (P9645013522808376131.a n : ℤ) = A360793 (n + 1)

end A360793

/-! ## A360793.P17677720571732204922

`filter[A074451(n+1), A359472(#)]`
-/

namespace A360793.P17677720571732204922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359472 (f1 j).toNat = 1) n)

end

end A360793.P17677720571732204922

namespace A360793

/-- `filter[A074451(n+1), A359472(#)]` -/
def P17677720571732204922.Spec : Prop :=
  ∀ n, P17677720571732204922.a n = A360793 (n + 1)

end A360793

/-!
# A360794: Expansion of Sum_{k>0} x^k / (1 - k * x^k)^(k+1).

The programs for A360794, the canonical program `A360794.P18096722821173869921` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360794 has offset 1).

The definition of A360794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360794.P18096722821173869921

`∑{d}[n+1, #^((n+1)/#-1)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360794

/-- `∑{d}[n+1, #^((n+1)/#-1)*C(#+(n+1)/#-1, #)]` -/
def P18096722821173869921.Spec : Prop :=
  ∀ n, P18096722821173869921.a n = (A360794 (n + 1) : ℝ)

end A360794

/-! ## A360794.P658065329064348074

`A102681(A154638(n))+A056045(n+1)`
-/

namespace A360794.P658065329064348074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 (A154638 n).toNat + A056045 (n + 1)

end

end A360794.P658065329064348074

namespace A360794

/-- `A102681(A154638(n))+A056045(n+1)` -/
def P658065329064348074.Spec : Prop :=
  ∀ n, P658065329064348074.a n = A360794 (n + 1)

end A360794

/-! ## A360794.P11795632015969497455

`A362634(A000111(n))+A056045(n+1)`
-/

namespace A360794.P11795632015969497455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362634 (A000111 n).toNat + A056045 (n + 1)

end

end A360794.P11795632015969497455

namespace A360794

/-- `A362634(A000111(n))+A056045(n+1)` -/
def P11795632015969497455.Spec : Prop :=
  ∀ n, P11795632015969497455.a n = A360794 (n + 1)

end A360794

/-! ## A360794.P11528218154322542931

`A088950(A333679(n))+A056045(n+1)`
-/

namespace A360794.P11528218154322542931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088950 (A333679 n).toNat + A056045 (n + 1)

end

end A360794.P11528218154322542931

namespace A360794

/-- `A088950(A333679(n))+A056045(n+1)` -/
def P11528218154322542931.Spec : Prop :=
  ∀ n, P11528218154322542931.a n = A360794 (n + 1)

end A360794

/-!
# A360795: Expansion of Sum_{k>0} x^k / (1 - (k * x)^k)^(k+1).

The programs for A360795, the canonical program `A360795.P14831212572129106688` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360795 has offset 1).

The definition of A360795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360795.P14831212572129106688

`∑{d}[n+1, #^(n+1-#)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360795

/-- `∑{d}[n+1, #^(n+1-#)*C(#+(n+1)/#-1, #)]` -/
def P14831212572129106688.Spec : Prop :=
  ∀ n, P14831212572129106688.a n = (A360795 (n + 1) : ℚ)

end A360795

/-! ## A360795.P5470553820112756084

`xor(A093347(n+1), A289813(A005809(n)))`
-/

namespace A360795.P5470553820112756084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A093347 (n + 1)) (A289813 (A005809 n).toNat)

end

end A360795.P5470553820112756084

namespace A360795

/-- `xor(A093347(n+1), A289813(A005809(n)))` -/
def P5470553820112756084.Spec : Prop :=
  ∀ n, P5470553820112756084.a n = A360795 (n + 1)

end A360795

/-!
# A360796: a(n) > n is the smallest integer such that there exist integers n < c <= d < a(n) satisfying n^2 + a(n)^2 = c^2 + d^2.

The programs for A360796, there is no canonical definition to state claims against.
-/

/-! ## A360796.P14888098848434520729

`n+4+A052060(A063655(2*(n+2)))`
-/

namespace A360796.P14888098848434520729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) + A052060 (A063655 (2 * (n + 2))).toNat

end

end A360796.P14888098848434520729

/-!
# A360797: Expansion of Sum_{k>0} x^k / (1 - 2 * x^k)^(k+1).

The programs for A360797, the canonical program `A360797.P3294285085552947133` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360797 has offset 1).

The definition of A360797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360797.P3294285085552947133

`∑{d}[n+1, 2^((n+1)/#-1)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360797

/-- `∑{d}[n+1, 2^((n+1)/#-1)*C(#+(n+1)/#-1, #)]` -/
def P3294285085552947133.Spec : Prop :=
  ∀ n, P3294285085552947133.a n = (A360797 (n + 1) : ℝ)

end A360797

/-! ## A360797.P2955067806675579913

`A338695(n+1)+A053188(A339684(n+1))`
-/

namespace A360797.P2955067806675579913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338695 (n + 1) + A053188 (A339684 (n + 1)).toNat

end

end A360797.P2955067806675579913

namespace A360797

/-- `A338695(n+1)+A053188(A339684(n+1))` -/
def P2955067806675579913.Spec : Prop :=
  ∀ n, P2955067806675579913.a n = A360797 (n + 1)

end A360797

/-!
# A360798: Expansion of Sum_{k>0} x^k / (1 - (2 * x)^k)^(k+1).

The programs for A360798, the canonical program `A360798.P7662780439419679491` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360798 has offset 1).

The definition of A360798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360798.P7662780439419679491

`∑{d}[n+1, 2^(n+1-#)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A360798

/-- `∑{d}[n+1, 2^(n+1-#)*C(#+(n+1)/#-1, #)]` -/
def P7662780439419679491.Spec : Prop :=
  ∀ n, P7662780439419679491.a n = (A360798 (n + 1) : ℚ)

end A360798

/-! ## A360798.P10856573508718154468

`A052899(A115891(n+1))%A245823(3*n+4)`
-/

namespace A360798.P10856573508718154468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052899 (A115891 (n + 1)).toNat) (A245823 (3 * n + 4))

end

end A360798.P10856573508718154468

namespace A360798

/-- `A052899(A115891(n+1))%A245823(3*n+4)` -/
def P10856573508718154468.Spec : Prop :=
  ∀ n, P10856573508718154468.a n = A360798 (n + 1)

end A360798

/-!
# A360799: Numbers m with m mod 3 = q, q != 2, such that the number of ones in its base-2 representation is even if q=0 and odd if q=1.

The programs for A360799, there is no canonical definition to state claims against.
-/

/-! ## A360799.P18148307114798025861

`record[A285779(3*n)]`
-/

namespace A360799.P18148307114798025861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285779 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360799.P18148307114798025861

/-! ## A360799.P13926867820663312753

`lt[A000695(n)%5, 2]`
-/

namespace A360799.P13926867820663312753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000695 n) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A360799.P13926867820663312753

/-! ## A360799.P5058622308885376240

`eq[1, or(1, A065359(n))]`
-/

namespace A360799.P5058622308885376240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065359 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360799.P5058622308885376240

/-! ## A360799.P165934295371402668

`eq[n%3, A010060(n)]`
-/

namespace A360799.P165934295371402668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360799.P165934295371402668

/-! ## A360799.P7489004413853888959

`floor(A039004(n+1)/2)`
-/

namespace A360799.P7489004413853888959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039004 (n + 1) : ℚ) / 2⌋

end

end A360799.P7489004413853888959

/-! ## A360799.P14289365327832696475

`lt[A001969(n+1)%3, 1]`
-/

namespace A360799.P14289365327832696475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001969 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A360799.P14289365327832696475

/-! ## A360799.P10596937751996680429

`eq[(n+1)%3, A001285(n)]`
-/

namespace A360799.P10596937751996680429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A360799.P10596937751996680429

/-! ## A360799.P16189370954555532839

`lt[(A092246(n+1)-1)%3, 1]`
-/

namespace A360799.P16189370954555532839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092246 (n + 1) - 1) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A360799.P16189370954555532839

/-! ## A360799.P4633656759638940611

`lt[(A010059(n)+n-1)%3, 1]`
-/

namespace A360799.P4633656759638940611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010059 n + ((n : ℤ) - 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A360799.P4633656759638940611

/-! ## A360799.P8972236926409827489

`eq[-a(and(n, n-1)), A010892(2*(n+2))]` with `a(0)=-1`
-/

namespace A360799.P8972236926409827489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  -f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360799.P8972236926409827489

